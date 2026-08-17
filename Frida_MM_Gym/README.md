# Frida_MM_Gym

Modular actuation + observation for `com.appsomniacs.da2` (Dead Ahead 2) via
frida-gadget. Built from the proven hooks in `../Frida_finalScripts/`, restructured
into something reusable.

Three independently toggleable concerns:

1. **Actuation** — force player HP / boost / ammo / loadout every frame.
2. **Observation** — snapshot the player and every enemy once per *N* frames and
   push it to Python.
3. **Environment** — six controls: fast-forward, FPS unlock, FPS monitor, stop
   rendering, block audio, block Sarge.

## Quick start

```bash
adb forward tcp:27042 tcp:27042
```

Then, with the gadget APK running and the game past the main screen:

```bash
python run_gym.py --console
```

Or via the launcher, which does the `adb forward` and Python resolution for you:

```bash
run_gym.bat --console
```

Record a dataset for training:

```bash
run_gym.bat --interval 1 --out obs.jsonl --headless --block-sarge --fast-forward 3.0
```

## Library use

```python
from mm_gym import GymSession, GymConfig, JsonlSink, MultiSink, QueueSink

cfg = GymConfig(obs_interval_frames=10)
cfg.env.block_sarge.enabled = True
cfg.env.block_audio.enabled = True
cfg.actuators.loadout.weapon_type = 5      # UZI

queue = QueueSink()
with GymSession(cfg, sink=MultiSink(queue, JsonlSink("obs.jsonl"))) as gym:
    gym.wait_ready()
    for obs in gym.observations(timeout=5.0):
        print(obs["player"]["pos"], len(obs["enemies"]))
```

## Layout

```
agent/                  Frida-side JS (ES modules, bundled by mm_gym/bundler.py)
  core/                 symbols, config, ccdict, ccnode, cpvect, weapon, emit
  actuators/            health, power, ammo, loadout  + index.js registry
  env/                  the six environment controls  + index.js registry
  entities/             player, enemy_types descriptors, enemies sweep
  hooks/                player_tick, enemy_tick (the frame driver)
  main.js               entry point
mm_gym/                 Python package
  bundler.py            ES-module bundler (dedup + per-module scoping)
  config.py session.py sinks.py schema.py
tests/                  offline test suite; no device required
run_gym.py  run_gym.bat  config.json
```

## How it works

### The frame driver

`EnemyManager::updateStep(float)` is the latch point. Every *N*-th call it builds
the entire observation synchronously — the enemy sweep plus the player state
latched by `SoldierHostController::updateStep` earlier in the same frame — and
pushes it with `send()`.

This is deliberate, not incidental. The enemy `CCDictionary` objects are mutated
by the game thread as drones spawn and die, so walking them anywhere other than
inside this tick is a use-after-free. Consequently the agent contains:

- **no `setInterval` / `setTimeout`**
- **no background JS thread**
- **no RPC export that reads game memory**

The offline test asserts the first of these directly.

### Extending it

Three registries, each a one-file-plus-one-line change:

| Add a… | New file in | Register in |
|---|---|---|
| player actuator | `agent/actuators/` | `agent/actuators/index.js` |
| environment control | `agent/env/` | `agent/env/index.js` |
| enemy type | — (just a descriptor) | `agent/entities/enemy_types.js` |

Actuator contract: `{ name, enabled(cfg), init(ctx) -> {ok, detail},
onPlayerTick(ctx, playerPtr, dt)?, onNewSpawn(ctx, playerPtr)? }`.

Env contract: `{ name, enabled(cfg), install(ctx) -> {ok, detail} }`.

Enemy types are **data** — Hawk/Humanoid/Worm are three descriptor objects, not
three code paths as in the original `Enemies/*.js` scripts.

### Why a custom bundler

`session.create_script()` cannot handle `import`, so the module tree is flattened
first. The inliner in `Frida_finalScripts/run_hook.py` has two defects that both
break a real module tree:

1. **No dedup** — a file imported by two modules is inlined twice, producing
   duplicate top-level declarations.
2. **No scoping** — even deduped, concatenating modules collides their top-level
   names. `getHP` is declared by both `actuators/health.js` and
   `entities/player.js`; `isReady` by both `core/ccdict.js` and `core/ccnode.js`.
   The result is a hard `SyntaxError: Identifier 'getHP' has already been
   declared` at load.

`mm_gym/bundler.py` emits each module exactly once, wrapped in its own IIFE, with
imports rewired to read off the already-built module objects. Pure Python — no
node/npm needed at runtime (Node is only used by the optional test suite).

## Configuration

`config.json` holds the defaults; CLI flags override it; `GymConfig` is the
programmatic equivalent. Python injects the resolved config as a
`var GYM_CONFIG = {...}` prelude ahead of the bundle, so the agent has it
synchronously at load and needs no handshake.

### Actuators (all **on** by default)

| Key | Default | Effect |
|---|---|---|
| `health.value` | `100` | `setHP(100)` every player frame |
| `power.value` | `100.0` | `setPower(100.0)` every player frame |
| `ammo.refill_reserve_every_frame` | `true` | reserve topped to `getAmmoCapacity()` |
| `ammo.refill_clip_on_reload_end` | `true` | clip filled on the reload falling edge |
| `loadout.weapon_type` | `5` (UZI) | equipped once per spawn |
| `loadout.strip_other_slots` | `true` | removes secondary / dual / side |

### Environment (all **off** by default)

| Key | CLI | Hook |
|---|---|---|
| `fast_forward` | `--fast-forward 3.0` | `CCScheduler::update`, writes `this+0x14` |
| `fps_unlock` | `--fps-unlock` | `eglSwapBuffers` → `eglSwapInterval(dpy, 0)` |
| `fps_monitor` | `--fps-monitor` | `CCDisplayLinkDirector::mainLoop`, emits `{type:"fps"}` |
| `stop_rendering` | `--stop-rendering` | `CCDirector::drawScene`, writes `+0x74`/`+0x38`/`+0x51` |
| `block_audio` | `--block-audio` | replaces 3 `CocosDenshion::SimpleAudioEngine` fns |
| `block_sarge` | `--block-sarge` | replaces `SurvivalStage::updateSarge` with a silent no-op |

`--headless` is shorthand for `--stop-rendering --block-audio --fps-unlock`.

Four corrections were made while porting these from `Frida_finalScripts/core/`:

- **FPS split.** `core/fpsMonitor.js` and `core/unified_fps_unlocker.js` are the
  same script and bundled VSYNC unlocking with FPS counting, so neither could be
  used alone. They are now `fps_unlock` and `fps_monitor`.
- **`stop_rendering` separated.** Its `this+0x51 = 1` write is the debug-stats
  overlay flag (the same byte `enable_debug_mode.js` sets), not part of stopping
  rendering. It now sits behind `stop_rendering.show_stats`, defaulting to `true`
  so behavior matches the original exactly.
- **`block_audio` signatures.** The original declared `[]` for all three
  `NativeCallback` argument lists. Real signatures are now declared.
- **`block_sarge` silenced.** The original logged on every call (~60 lines/sec).

## Observation schema

```json
{
  "type": "obs", "seq": 42, "frame": 2520, "t": 12345.678, "dt": 0.01667,
  "player": {
    "present": true, "ptr": "0x...", "hp": 100, "power": 100.0,
    "alive": true, "dead": false,
    "pos": {"x": 0.0, "y": 0.0},
    "screen": {"x": 0.0, "y": 0.0},
    "vel": {"x": 0.0, "y": 0.0},
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
  "diag": {"vec_abi": "struct", "vel_source": "native", "dropped": 0,
           "time_scale": 1.0, "fps": 59.8, "spawns": 1,
           "env": ["block_sarge", "block_audio"]}
}
```

- `weapon.clip` is **ammo in the gun**; `weapon.ammo` is the reserve.
- `pos` is map space (`CCNode::getPosition`); `screen` is viewport space
  (`CCNode::convertToWorldSpace`).
- `dist` is map-space Euclidean distance to the player.
- `enemies[].fire_angle` is **always `null` for worms** — `WormDrone` has no
  `getFireAngle` in this binary.

Secondary message when `fps_monitor` is on:
`{"type": "fps", "fps": 59.8, "frames": 60, "window_ms": 1002, "t": ...}`.
Startup emits a `{"type": "ready", ...}` event carrying the resolved config and
per-actuator / per-env status, which Python surfaces via `session.ready_info`.

## The cpVect return ABI

`cpVect` is `struct { float x, y; }` — 8 bytes, two floats. On ARM32 that can be
returned three ways, and the old scripts *assumed* sret without ever executing a
call (every `getBodyVelocity` call site in `Enemies/*.js` was commented out). So
the agent probes instead of guessing.

`core/cpvect.js` builds three candidate wrappers and, on the first player frame,
picks between them using `CCNode::getPosition` as a ground-truth oracle:

| Mode | Declaration |
|---|---|
| `struct` | `['float','float']` return — libffi applies the platform ABI |
| `sret` | hidden out-pointer as arg0, `this` as arg1 (the old assumption) |
| `packed` | `uint64` return, `x` in the low word, `y` in the high word |

Candidates are accepted on *plausibility* (finite, in range) and then ranked by
closeness to the oracle — body and node coordinates can legitimately differ by a
fixed offset or scale, so an exact match is not required.

If none qualify, the mode becomes `finite_diff` and velocity is derived from
successive positions using the `dt` from `updateStep`. That path needs no ABI
knowledge, so it always works.

The outcome is always visible as `diag.vec_abi` / `diag.vel_source`, and can be
pinned with `--vec-abi sret` to skip the probe.

## Ammo and reload

Two independent mechanisms, so "infinite ammo" and "reload still happens" don't
fight each other:

1. Every frame, top the **reserve** back up to `getAmmoCapacity()`. It never
   depletes, so when the clip empties the game triggers its own reload naturally
   and it always succeeds. Animation and delay are untouched.
2. Detect the `isReloading()` **true → false** edge and set the clip to
   `getClipCapacity()`, guaranteeing a full magazine.

`Weapon::reloadWeapon()` is deliberately **not** hooked. It only *initiates* the
reload (it starts a timer); refilling there would leave the clip full while the
timer still runs, and risks short-circuiting the animation.

## Testing

The offline suite needs no device, no game, and no adb:

```bash
python tests/run_smoke.py
```

Three stages:

1. Bundle the agent; assert the module graph is deduped, acyclic, `main.js` last,
   and no `import`/`export` survives.
2. `node --check` the bundle — catches syntax and duplicate-declaration errors
   here instead of as a load failure on-device.
3. Execute the real bundle against a mocked Frida API and a fake game
   (`tests/mock_frida.js`), asserting actuator effects, the ABI probe decision,
   the reload edge, the enemy sweep including the humanoid `+0x1ac` hop, all six
   env toggles, graceful degradation when symbols are missing, and survival of
   entity churn mid-sweep.

Stages 2 and 3 are skipped with a warning if Node isn't on `PATH`; stage 1 still
runs. Inspect the generated bundle with:

```bash
python run_gym.py --dump-bundle bundle.js
```

## On-device verification

The offline suite proves the logic; these steps prove the offsets and symbols
against the real binary. Run 1–10 with all env toggles **off**.

1. **Symbols.** `--no-emit` with all actuators off. Every symbol must resolve;
   any `FAILED` row in the startup table is a hard stop.
2. **cpVect ABI.** `--interval 60 --console`. Check `diag.vec_abi`. Stand still →
   `vel` ≈ 0; move → magnitude rises, sign matches direction. Keep
   `fast_forward` off so `dt` is unscaled.
3. **Health.** Walk into fire; `hp` stays 100 and you don't die.
4. **Boost.** Hold the jetpack; `power` reads 100.0 and thrust never cuts out.
5. **Ammo + reload.** `--interval 1`. Fire the clip dry. The reload animation
   must play *on the device*; `is_reloading` goes true then false;
   `clip` returns to `clip_capacity` on the falling edge; `ammo` never drops
   below `ammo_capacity`.
6. **UZI only.** `weapon.type == 5` on spawn and after each respawn. The startup
   log reports whether secondary/dual/side came back null. Die and respawn to
   confirm re-application.
7. **Enemies.** With drones alive, every entry has non-null `pos`, `vel`,
   `body_angle`, and `fire_angle` (null only for worms). `counts` matches the
   on-screen drone count.
8. **Player.** Cross-check `aim_angle` against on-screen aim while rotating.
9. **Interval.** `--interval` 1, 10, 60 — `frame` deltas match and `seq` is
   gap-free (the CLI reports `seq_gaps` on exit).
10. **Stability.** 10 minutes at `--interval 1` through several deaths.
    `seq_gaps` and `sink_dropped` stay 0.

Then each env toggle individually:

11. `--stop-rendering` — screen goes static. **Verify `player.screen` and
    `enemies[].screen` are still finite and still change as things move.** If
    they go stale, use `--no-screen-coords`; map-space `pos` is unaffected.
12. `--block-audio` — no SFX or music, and no crash on weapon fire (the replaced
    `playEffect` is called constantly).
13. `--block-sarge` — Sarge never acts, and no per-frame log spam.
14. `--fps-unlock --fps-monitor` — reported FPS rises above the refresh ceiling.
15. `--fps-monitor` alone — `fps` events arrive ~1/sec, confirming the split
    from step 14 really separated the two concerns.
16. `--fast-forward 3.0` — game runs ~3×, `diag.time_scale` is 3.0, and `vel` is
    still sane (this is the case most likely to distort finite-diff velocity).
17. **Combined.** `--headless --block-sarge --fast-forward 3.0 --interval 1` for
    10 minutes — the intended training configuration.

## Known limitations

- **No enemy `getType()` exists.** The binary contains exactly three drone
  classes; type is derived from which `EnemyManager` dictionary the pointer came
  from.
- **`WormDrone` has no `getFireAngle`.** `fire_angle` is always `null` for worms.
- **Hardcoded struct offsets**, valid for this APK build only: `EnemyManager`
  `+0x14`/`+0x18`/`+0x1c`, `HumanoidDrone+0x1ac`, `CCDictionary+0x14` /
  `CCDictElement+0x110`, `CCScheduler+0x14`, `CCDirector+0x74`/`+0x38`/`+0x51`.
  Each is centralized in one module, but none will survive a game update.
- **`stop_rendering`'s effect on screen coordinates is unverified** — see step 11.
- **`aim_angle` units are unverified.** `SoldierHostController::getFireAngle`
  returns a float; enemy fire angles were logged as radians in the old scripts
  while `Joypad` angles were degrees. The raw value is emitted as-is.
- **`Weapon+0x1ee`** (the raw offset the old `player_ammo.js` used) is superseded
  by `Weapon::getClip()`. It remains in `core/weapon.js` as `readClipRaw()` for
  cross-checking only.
