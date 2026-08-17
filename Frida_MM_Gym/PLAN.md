# Frida_MM_Gym — actuation + observation + env-control package

## Context

`Frida_finalScripts/` is ~24 one-off Frida scripts, each a self-contained block-scoped
experiment that prints to `console.log`. They collectively prove out most of the hooks
needed for an RL-style gym on `com.appsomniacs.da2` (Cocos2d-x C++, ARM32,
`libcocos2dcpp.so`), but they are not composable: no script combines actuation with
observation, no script emits structured data to Python, several have latent bugs, and the
capability that matters most for observations (enemy velocity/angle) is written but
commented out and rests on an unverified struct-return ABI.

`Frida_MM_Gym/` is empty. The goal is one modular, reusable package with three
independently toggleable concerns: **force player state** every frame, **emit a structured
observation** every N frames, and **control the environment** (speed, rendering, audio,
FPS, Sarge).

## Locked decisions

- **Frame driver:** the enemy sweep runs synchronously inside
  `EnemyManager::updateStep(float)`, every N frames.
- **No JS timers, no background JS thread, no RPC export that reads game memory.** The
  enemy `CCDictionary` is only safe to walk on the game thread inside the tick; reading it
  from Frida's JS thread at an arbitrary moment is a use-after-free.
- **Transport:** `send(payload)` push only. Python receives via `script.on('message', …)`.
- **Python sink:** pluggable; default in-memory queue, opt-in JSONL writer.
- **Boost value:** literal `100.0` (not `getMaxPower()`).
- **UZI policy:** set once per spawn — only when a new `SoldierHostController` pointer is
  seen. Do not re-enforce per frame, do not fight mid-game pickups.
- **Connection:** unchanged from today — `adb forward tcp:27042 tcp:27042`, then
  `add_remote_device("127.0.0.1:27042")` + `device.attach("Gadget")`. Frida 16.6.6, attach
  only, never spawn.

## Reuse map — what carries over from Frida_finalScripts

| Existing | Port to | Notes |
|---|---|---|
| `core/IterOverCCDic.js` | `agent/core/ccdict.js` | Verified working. Walk `dict+0x14` → `elem+0x110`. Keep as-is. |
| `Tests/test_drones_player.js:172-192` `getCoords()` | `agent/core/ccnode.js` | Verified working. Pre-allocated buffers + `getPosition` / `convertToWorldSpace`. |
| `weapon.js:27-42` `resolveSymbol()` | `agent/core/symbols.js` | Export lookup with `enumerateSymbols()` fallback. Best symbol resolver in the tree. |
| `weapon.js:64-98` new-pointer detection | `agent/actuators/loadout.js` | `!hostSoldier.equals(lastHostSoldier)` is exactly the once-per-spawn trigger. |
| `Player/getHostSoldierHp.js` | `agent/actuators/health.js` | `setHP(this, 100)` per frame. |
| `Player/getSetPower.js` | `agent/actuators/power.js` | Same shape, value → `100.0`. |
| `Enemies/Enemies.js` dict offsets | `agent/entities/enemy_types.js` | `+0x14` hawk, `+0x18` humanoid, `+0x1c` worm. |
| `core/fastforward.js` | `agent/env/fast_forward.js` | `CCScheduler::update`, write float `this+0x14`. |
| `core/fpsMonitor.js` / `core/unified_fps_unlocker.js` | `agent/env/fps_unlock.js` **+** `agent/env/fps_monitor.js` | **Split — see below.** |
| `core/stoprendering.js` | `agent/env/stop_rendering.js` | `CCDirector::drawScene`, `+0x74`/`+0x38` = 0, `+0x51` = 1. |
| `core/blockAudio.js` | `agent/env/block_audio.js` | 3 CocosDenshion symbols; fix the arg signatures. |
| `block_sarge.js` | `agent/env/block_sarge.js` | Use the **silent** stub from `test_drones_player.js:113-115`. |
| `run_hook.py` gadget attach | `mm_gym/session.py` | Attach logic is fine; the bundler is not (see below). |

**Do not port:** `Player/setGetPower.js` (resolves `setPower(float)` but declares
`['pointer','int']` and passes `200` — passes an int bit pattern into a float parameter).
`joystick/aim_joystick.js` as an aim source (reads `Joypad::getFireAngle`, the input
device, and force-overwrites it to 180°; the real player aim is
`SoldierHostController::getFireAngle`).

## Bundler decision

Write a corrected inliner in `mm_gym/bundler.py` rather than adopting frida-compile/esbuild.
Rationale: the current workflow is pure-Python + `.bat` with a pinned venv; adding an
npm/node toolchain is a real cost for a regex problem. The fix over `run_hook.py`:

- A `seen: set[realpath]` so each module is inlined **exactly once** (the current bug:
  two modules importing `core/ccdict.js` inlines it twice → duplicate top-level `const`
  → script fails to load). With three registries all importing `core/symbols.js`, this
  bug would fire immediately.
- Depth-first post-order emission so a module's dependencies precede it.
- Cycle detection with a clear error rather than infinite recursion.
- Keep the existing `import {…} from "path";` + `export` regex handling, and keep the
  script-dir-then-project-root resolution.

## Layout

```
Frida_MM_Gym/
├── agent/
│   ├── main.js                  entry; reads GYM_CONFIG, installs all three registries
│   ├── core/
│   │   ├── config.js            defaults, merged over injected GYM_CONFIG
│   │   ├── symbols.js           resolveSymbol(), nf() NativeFunction helper
│   │   ├── ccdict.js            getDictionaryObjects()
│   │   ├── ccnode.js            getMapPosition(), getScreenPosition()
│   │   ├── cpvect.js            cpVect return-ABI probe + readers
│   │   └── emit.js              send() wrapper, seq counter, drop counter
│   ├── actuators/               per-frame player state forcing
│   │   ├── index.js             registry
│   │   ├── health.js            setHP(100)
│   │   ├── power.js             setPower(100.0)
│   │   ├── ammo.js              infinite reserve + refill clip on reload end
│   │   └── loadout.js           UZI-only, once per spawn
│   ├── env/                     install-once environment controls
│   │   ├── index.js             registry
│   │   ├── fast_forward.js      time scale
│   │   ├── fps_unlock.js        VSYNC off via eglSwapInterval
│   │   ├── fps_monitor.js       FPS counter → send()
│   │   ├── stop_rendering.js    CCDirector field writes
│   │   ├── block_audio.js       stub CocosDenshion playback
│   │   └── block_sarge.js       no-op SurvivalStage::updateSarge
│   ├── entities/
│   │   ├── player.js            player snapshot builder
│   │   ├── enemy_types.js       descriptor registry (hawk / humanoid / worm)
│   │   └── enemies.js           sweep every descriptor
│   └── hooks/
│       ├── player_tick.js       SoldierHostController::updateStep
│       └── enemy_tick.js        EnemyManager::updateStep — frame driver + emit
├── mm_gym/
│   ├── __init__.py              public API re-exports
│   ├── bundler.py               dedup ES-module inliner
│   ├── config.py                GymConfig dataclass → JSON prelude
│   ├── session.py               GymSession: attach, load, on_message, fan out to sinks
│   ├── sinks.py                 Sink ABC + QueueSink, JsonlSink, ConsoleSink, MultiSink
│   └── schema.py                field-name constants, light validation
├── run_gym.py                   CLI
├── config.json                  defaults
├── run_gym.bat                  4-tier python resolution + adb forward
└── README.md
```

## Extensibility: three registries

**Actuator registry** (`agent/actuators/index.js`) — each actuator is
`{ name, enabled(cfg), init(ctx), onPlayerTick(ctx, playerPtr, dt), onNewSpawn(ctx, playerPtr) }`.
`player_tick.js` iterates the array. Adding an actuator is one new file plus one array entry;
it never touches the hook code.

**Env registry** (`agent/env/index.js`) — each control is
`{ name, enabled(cfg), install(ctx) }`, called once at script load. No per-frame callback:
these install their own hooks (`CCScheduler::update`, `CCDirector::drawScene`,
`eglSwapBuffers`, …) or `Interceptor.replace` a function outright. Each returns a
`{ ok, detail }` so `main.js` can log one consolidated startup table and include the applied
set in the first payload's `diag.env`.

**Enemy descriptor registry** (`agent/entities/enemy_types.js`) — hawk/humanoid/worm become
*data*, not three copy-pasted code paths. Each descriptor:

```js
{
  name: "hawk",
  dictOffset: 0x14,
  symbols: {
    position: "_ZN9HawkDrone15getBodyPositionEv",
    velocity: "_ZN9HawkDrone15getBodyVelocityEv",
    rotation: "_ZN9HawkDrone15getBodyRotationEv",
    fireAngle: "_ZN9HawkDrone12getFireAngleEv",
    hp:       "_ZN9HawkDrone5getHPEv",
  },
  resolveNode: (p) => p,              // hawk/worm ARE CCNodes
}
```

Humanoid overrides `resolveNode: (p) => getAISoldierView(p.add(0x1ac).readPointer())`.
Worm sets `fireAngle: null` — it genuinely has no `getFireAngle` (verified: only
`getBodyRotation`). Adding a 4th enemy type is one descriptor object.

Note the existing `Enemies/HumanoidDrone.js` aliases `getBodyRotation` to
`getFireAngle`; the real `_ZN13HumanoidDrone15getBodyRotationEv` does exist — use it.

## Environment controls — six independent toggles

All six symbols confirmed present in `mm/frida_scripts/libcocos2dcpp_dump.txt`.

| Toggle | Hook | Action |
|---|---|---|
| `fast_forward` | `_ZN7cocos2d11CCScheduler6updateEf` | write `this+0x14` = `time_scale` (float) on every tick |
| `fps_unlock` | `libEGL.so!eglSwapBuffers` (attach) | once: call `libEGL.so!eglSwapInterval(dpy, 0)` |
| `fps_monitor` | `_ZN7cocos2d21CCDisplayLinkDirector8mainLoopEv` | count frames, emit `{type:"fps"}` every ~1 s |
| `stop_rendering` | `_ZN7cocos2d10CCDirector9drawSceneEv` | write `this+0x74`=0 (S32), `this+0x38`=0 (S32), `this+0x51`=1 (U8) |
| `block_audio` | 3× `CocosDenshion::SimpleAudioEngine` | `Interceptor.replace` with a stub |
| `block_sarge` | `_ZN13SurvivalStage11updateSargeEf` | `Interceptor.replace` with a silent no-op |

Four corrections to make while porting:

1. **Split the FPS script.** `core/fpsMonitor.js` and `core/unified_fps_unlocker.js` are
   the same script (identical logic; the latter only adds a doc comment). Both bundle VSYNC
   unlocking *and* FPS counting, so today you cannot enable one without the other. Split
   into `fps_unlock` and `fps_monitor` as separate toggles, and delete the duplicate.
2. **`stop_rendering` conflates two things.** The `this+0x51 = 1` write is the
   display-stats/debug-overlay flag (`enable_debug_mode.js` writes the same byte), not part
   of stopping rendering. Keep it behind a `show_stats` sub-flag defaulting to `true` so
   behavior is byte-identical to the current script, but make it separable.
3. **`block_audio` declares wrong signatures.** All three `NativeCallback`s use `[]` for
   args. It happens to work because the stub never reads them, but declare the real ones:
   `playEffect(this, const char*, bool, float, float, float) → uint`,
   `playEffect(this, const char*, int, bool, float, float, float) → uint`,
   `playBackgroundMusic(this, const char*, bool) → void`.
4. **`block_sarge` logs on every call** (~60/sec). Use the silent stub from
   `test_drones_player.js:113-115`.

### Interactions to respect

- **`fast_forward` changes `dt`.** It scales the scheduler timestep, which changes the `dt`
  seen at `updateStep` — that feeds the finite-difference velocity fallback and shifts the
  wall-clock meaning of `obs_interval_frames`. Always emit the observed `dt` and
  `env.time_scale` in the payload. Validate the cpVect ABI probe (step 2 below) with
  `fast_forward` **off**.
- **`block_sarge` must be installed exactly once.** It uses `Interceptor.replace`, and
  `test_drones_player.js` also stubs the same function inline — never run both.
- **`stop_rendering` may affect screen coordinates.** `convertToWorldSpace` is a transform
  computation, not a draw call, so it should stay valid, but this is unverified — check it
  in step 11.

## Verified symbols

**Player** — `SoldierHostController`:
`10updateStepEf6cpVectS0_f`, `5getHPEv`, `5setHPEi`, `8getPowerEv`, `8setPowerEf`,
`12getFireAngleEv` (aim), `14getSoldierViewEv`, `16addPrimaryWeaponEP6Weapon`,
`19removePrimaryWeaponEv`, `21removeSecondaryWeaponEv`, `16removeDualWeaponEv`,
`16removeSideWeaponEv`.

Inherited `SoldierController`: `15getBodyPositionEv`, `15getBodyVelocityEv`,
`16getPrimaryWeaponEv`, `18getSecondaryWeaponEv`, `13getDualWeaponEv`,
`13getSideWeaponEv`, `6isDeadEv`, `8getAliveEv`.

**Weapon** (all confirmed, all currently unused):
`11isReloadingEv`, `12reloadWeaponEv`, `13getReloadTimeEv`, `7getClipEv`, `7setClipEi`,
`7getAmmoEv`, `7setAmmoEi`, `15getClipCapacityEv`, `15getAmmoCapacityEv`, `7getTypeEv`,
`12isTriggeringEv`.

**WeaponFactory:** `19sharedWeaponFactoryEv`, `24createWeaponFromAmmoTypeE8ItemType`.
UZI = ItemType 5 (a `UZI` C++ class exists, confirming).

**Enemies:** `EnemyManager::11initEnemiesEv`, `10updateStepEf`. Per-type
`15getBodyPositionEv` / `15getBodyVelocityEv` / `15getBodyRotationEv` / `5getHPEv` on all
three; `12getFireAngleEv` on hawk + humanoid only.

**Cocos2d:** `CCNode::11getPositionEPfS1_`, `CCNode::19convertToWorldSpaceERKNS_7CCPointE`
(sret: out, this, in), `CCDictionary::5countEv`, `CCDictElement::9getObjectEv`,
`CCScheduler::6updateEf`, `CCDirector::9drawSceneEv`,
`CCDisplayLinkDirector::8mainLoopEv`.

## cpVect return ABI — the one real unknown

`cpVect` is `struct { float x, y; }`. The return convention for `getBodyPosition()` /
`getBodyVelocity()` is **unverified** — the old scripts assumed sret but every call site
was commented out, so it has never executed. Three candidates: (a) sret hidden out-pointer
as arg0, (b) packed in `r0:r1`, (c) `s0:s1` as a homogeneous float aggregate.
`joystick/joystick.js` already proves ABI ambiguity is real here for the *argument* side.

`agent/core/cpvect.js` resolves this once, at first player tick, with a ground-truth oracle:

1. Read the player's map position via `CCNode::getPosition(getSoldierView(p))` — known-good.
2. Call `SoldierController::getBodyPosition(p)` under each candidate signature inside
   `try/catch`.
3. Pick the first candidate whose `(x, y)` are finite and within a tolerance of the oracle.
   Physics-body and node coordinates may differ by a fixed offset/scale, so accept a
   candidate on *plausibility* (finite, non-zero, magnitude within a sane bound) and rank by
   closeness to the oracle rather than demanding an exact match.
4. Cache the winner. If none qualify, set `vel_source: "finite_diff"` and derive velocity as
   `(pos - prevPos) / dt` using `dt` from `args[1]` of `updateStep` — a guaranteed-working
   fallback that needs no ABI knowledge.
5. Publish the outcome as `diag.vec_abi` and `diag.vel_source` in every payload so the
   choice is visible, and log it once at startup.

Allocate the sret out-buffer at 8 bytes and read exactly 8. The existing `logVector` in
`Enemies.js` reads 16 bytes (x,y,z,w) from an 8-byte struct — do not carry that over.

## Ammo / reload semantics

Operate on `getPrimaryWeapon()`. Two independent mechanisms:

1. **Infinite ammo, reload preserved.** Every player tick, `setAmmo(getAmmoCapacity())`.
   Reserve never depletes, so when the clip empties the game's own reload triggers
   naturally and always succeeds. The reload animation and delay are untouched — this
   alone satisfies "reload should happen, but infinite ammo".
2. **Guarantee a full magazine.** Track `isReloading()` per tick and detect the
   **true → false** edge; on that edge, `setClip(getClipCapacity())`.

**Do not hook `reloadWeapon()` onLeave to refill.** `reloadWeapon()` most likely only
*initiates* the reload (starts a timer); refilling there would let the clip be full while
the reload timer still runs, and risks short-circuiting the animation the user explicitly
wants to keep. Edge-detecting `isReloading()` is both safer and a more faithful reading of
"when reload happens, set ammo to max".

Cache `getClipCapacity()` / `getAmmoCapacity()` per weapon pointer — they are constant per
weapon instance, and calling them 60×/sec is wasted work.

## Observation schema

One `send()` payload per emitted frame:

```json
{
  "type": "obs",
  "seq": 42,
  "frame": 2520,
  "t": 12345.678,
  "dt": 0.01667,
  "player": {
    "present": true, "ptr": "0x...", "hp": 100, "power": 100.0,
    "alive": true, "dead": false,
    "pos":    {"x": 0.0, "y": 0.0},
    "screen": {"x": 0.0, "y": 0.0},
    "vel":    {"x": 0.0, "y": 0.0},
    "aim_angle": 0.0,
    "weapon": {
      "ptr": "0x...", "type": 5,
      "clip": 32, "clip_capacity": 32,
      "ammo": 250, "ammo_capacity": 250,
      "is_reloading": false, "is_triggering": false, "reload_time": 1.5
    }
  },
  "enemies": [
    {"idx": 0, "type": "hawk", "ptr": "0x...", "hp": 30,
     "pos": {"x": 0.0, "y": 0.0}, "screen": {"x": 0.0, "y": 0.0},
     "vel": {"x": 0.0, "y": 0.0},
     "body_angle": 0.0, "fire_angle": 0.0, "dist": 0.0}
  ],
  "counts": {"hawk": 2, "humanoid": 3, "worm": 1},
  "diag": {
    "vec_abi": "sret", "vel_source": "native", "dropped": 0,
    "time_scale": 1.0, "fps": 59.8,
    "env": ["block_sarge", "block_audio"]
  }
}
```

Secondary message from `fps_monitor`: `{"type": "fps", "fps": 59.8, "t": 12345.678}`.

`clip` is "ammo in gun"; `ammo` is reserve. `fire_angle` is `null` for worms.
`body_angle` from `getBodyRotation`, `fire_angle` from `getFireAngle`. `dist` is map-space
Euclidean distance to the player (reuses the `Math.hypot` pattern from
`test_drones_player.js:220`). Every enemy read is wrapped in `try/catch` — a freed pointer
must skip that entity, never kill the sweep.

## Config flow

Python builds a JSON prelude and prepends it before `create_script`:

```js
const GYM_CONFIG = { /* injected */ };
```

`agent/core/config.js` deep-merges it over defaults. This avoids a `recv()` handshake race
at load time and keeps the constraint that JS never asynchronously requests anything.

`config.json`:

```json
{
  "obs_interval_frames": 10,
  "emit": true,
  "include_screen_coords": true,
  "include_enemy_hp": true,
  "vec_abi": "auto",

  "actuators": {
    "health":  {"enabled": true, "value": 100},
    "power":   {"enabled": true, "value": 100.0},
    "ammo":    {"enabled": true, "refill_reserve_every_frame": true,
                "refill_clip_on_reload_end": true},
    "loadout": {"enabled": true, "weapon_type": 5, "strip_other_slots": true}
  },

  "env": {
    "fast_forward":   {"enabled": false, "time_scale": 3.0},
    "fps_unlock":     {"enabled": false},
    "fps_monitor":    {"enabled": false, "report_interval_ms": 1000},
    "stop_rendering": {"enabled": false, "show_stats": true},
    "block_audio":    {"enabled": false},
    "block_sarge":    {"enabled": false}
  }
}
```

All six env toggles default to `false` so the baseline run is an unmodified game.
CLI flags mirror them: `--fast-forward 3.0`, `--fps-unlock`, `--fps-monitor`,
`--stop-rendering`, `--block-audio`, `--block-sarge`, plus `--headless` as a convenience
alias for `stop_rendering + block_audio + fps_unlock`.

## Python API

```python
from mm_gym import GymSession, GymConfig, QueueSink, JsonlSink

cfg = GymConfig(obs_interval_frames=10)
cfg.env.block_sarge = True
cfg.env.block_audio = True

with GymSession(cfg, sink=QueueSink()) as gym:
    for obs in gym.observations(timeout=5.0):   # generator draining the queue
        print(obs["player"]["pos"], len(obs["enemies"]))
```

- `GymSession` — attach, bundle, inject config, load, route `message` events. Context
  manager; `__exit__` unloads and detaches. Separates `type: "obs"` payloads from `fps`,
  log, and error messages so a JS exception surfaces loudly instead of silently stalling
  the stream.
- `Sink` ABC with `handle(obs)` / `close()`. `QueueSink` (thread-safe, bounded with a
  drop-oldest policy so a slow consumer can't grow memory without bound), `JsonlSink`,
  `ConsoleSink`, `MultiSink`.
- `run_gym.py --interval 10 --out obs.jsonl --console --block-sarge --block-audio`.

`run_gym.bat` mirrors the existing template: `adb forward tcp:27042 tcp:27042` with an
`exit /b 1` on failure, then the 4-tier python resolution, forwarding `%*` so env flags
pass through. Fix the two path bugs seen in `joystick/run_shoot.bat` and
`Player/run_fixspawntime.bat` (they reference `%~dp0run_hook.py` from a subdirectory) by
resolving the entry script from the package root.

## Verification

Ordered, on-device. Requires the game running with the gadget APK and `adb forward` active.
Steps 1–10 with all six env toggles **off**.

1. **Symbol resolution.** Load with all actuators disabled and `emit: false`. Startup log
   must list every symbol as resolved. Any `null` is a hard stop.
2. **cpVect ABI.** Enable emit, `obs_interval_frames: 60`. Confirm `diag.vec_abi` is
   reported and `player.pos` tracks `player.screen` sensibly as you move. Stand still →
   `player.vel` ≈ 0; move → magnitude rises and sign matches direction. If
   `diag.vel_source == "finite_diff"`, the native path was rejected — note which candidates
   failed from the startup log. Keep `fast_forward` off here so `dt` is unscaled.
3. **Health (item 1).** Enable `health`. Walk into enemy fire; `player.hp` stays 100 and the
   player does not die.
4. **Boost (item 1).** Enable `power`. Hold the jetpack; `player.power` reads 100.0 each
   frame and thrust never cuts out.
5. **Ammo + reload (item 2).** Enable `ammo`, set `obs_interval_frames: 1`. Fire until the
   clip empties. Expect: reload animation plays (visually confirm on device),
   `weapon.is_reloading` goes true then false across consecutive frames, `weapon.clip`
   returns to `clip_capacity` on the falling edge, and `weapon.ammo` never drops below
   `ammo_capacity`.
6. **UZI only (item 3).** Enable `loadout`. On spawn and after each respawn,
   `weapon.type == 5`. Verify the strip worked by asserting `getSecondaryWeapon()`,
   `getDualWeapon()`, `getSideWeapon()` are null in the startup log. Die and respawn to
   confirm re-application on the new controller pointer.
7. **Enemy observations (item 4).** With drones alive, each entry has non-null `pos`,
   `vel`, `body_angle`, and `fire_angle` (null only for worms). `counts` must match the
   on-screen drone count. Let drones die mid-sweep to confirm the per-entity `try/catch`
   keeps the sweep alive.
8. **Player observations (item 5).** Cross-check `aim_angle` against on-screen aim
   direction while rotating.
9. **Interval.** Set `obs_interval_frames` to 1, 10, 60; confirm `frame` deltas match and
   `seq` is gap-free.
10. **Stability.** Run 10 minutes at `obs_interval_frames: 1` through several deaths and
    respawns. No crash, `diag.dropped` stays 0, JSONL line count matches `seq` range.

Then each env toggle **individually**, confirming observations still flow and
`diag.env` lists it:

11. `--stop-rendering` — screen goes static/black; **verify `player.screen` and
    `enemies[].screen` are still finite and still change as entities move.** If they go
    stale, document that `include_screen_coords` is incompatible with `stop_rendering` and
    have the config warn.
12. `--block-audio` — no SFX, no music, no crash on weapon fire (the replaced
    `playEffect` is called constantly).
13. `--block-sarge` — Sarge never appears/acts. Confirm the stub is silent (no per-frame
    log spam).
14. `--fps-unlock` — with `--fps-monitor` on, reported FPS rises above the display refresh
    ceiling.
15. `--fps-monitor` alone — `{type:"fps"}` messages arrive ~1/sec and `diag.fps` is
    populated. Confirms the split from step 14 actually separated the two concerns.
16. `--fast-forward 3.0` — game visibly runs ~3×. `diag.time_scale` reads 3.0 and `dt`
    reflects the scaling. Re-check `player.vel` is still sane (this is the case most likely
    to distort the finite-difference fallback).
17. **Combined.** `--headless --block-sarge --fast-forward 3.0` with
    `obs_interval_frames: 1` for 10 minutes. This is the intended training configuration —
    no crash, no dropped observations.

## Limitations to state up front

- **No enemy `getType()` exists.** Only three drone classes are present in the binary
  (`HawkDrone`, `HumanoidDrone`, `WormDrone`); type is derived from which `EnemyManager`
  dictionary the pointer came from. This is reliable but offset-dependent.
- **`WormDrone` has no `getFireAngle`.** `enemies[].fire_angle` is `null` for worms;
  `body_angle` is the only angle available.
- **The three dict offsets (`0x14`/`0x18`/`0x1c`), `HumanoidDrone+0x1ac`, the
  `CCDictElement` walk (`+0x14`/`+0x110`), and the `CCScheduler+0x14` /
  `CCDirector+0x74`/`+0x38`/`+0x51` env writes are hardcoded struct offsets** valid for
  this APK build. They are centralized in `enemy_types.js`, `ccdict.js`, and the individual
  `env/*.js` files so a rebuild is a one-file fix, but they will not survive a game update.
- **`Weapon+0x1ee`** (the raw offset `player_ammo.js` uses) is superseded by
  `Weapon::getClip()`. Kept only as a commented fallback.
- **`stop_rendering`'s effect on screen coordinates is unverified** (step 11). Map-space
  `pos` is unaffected either way.
