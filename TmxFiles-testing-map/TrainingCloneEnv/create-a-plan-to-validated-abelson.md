# TrainingCloneEnv — a fast, faithful Mini Militia clone for RL pretraining

## Context

PPO training currently runs against the live Android game through Frida. Every `env.step()` is a
blocking RPC covering `frame_skip` physics ticks, which caps throughput at **3–10 env-steps/s**
— documented in [hyperparams.py:8-18](MM_GYm/Training/hyperparams.py:8). A 200k-step run is ~11
hours, so reward iteration is measured in days.

The existing fast fallback, [mock_bridge.py](MM_GYm/python_gym_Wrapper/mock_bridge.py), is
explicitly "a contract double, not a game model": a flat open arena, no terrain, no gravity, no
jetpack, enemies that beeline at constant speed. Nothing learned there transfers.

We now have two things that make a real clone viable:

1. **19 TMX maps** (`TmxFiles-testing-map/sd/*.tmx`) with genuine level geometry, and a working
   collision prototype in [play_map_polygon.py](TmxFiles-testing-map/sd/scripts/play_map_polygon.py).
2. **Real constants recovered from `libcocos2dcpp.so`** — Chipmunk 5.x physics parameters, the
   three enemy types and their HP, the AI state machine, the survival spawn cadence, and the
   complete weapon table.

The goal: an in-process simulator that emits the **identical observation/reward contract** as the
live bridge, runs at 1,500+ env-steps/s single-process, pretrains a policy across the real map
geometry, and hands it to the existing on-device fine-tuning path.

### Decisions locked with the user

| Decision | Choice |
|---|---|
| Physics | Hand-written scalar integrator mirroring `cpBodyUpdateVelocity`. **No pymunk.** All Chipmunk params live in config. |
| Location | `C:\Users\gsathinedi\Downloads\Ladhak\mm\mm\TmxFiles-testing-map\TrainingCloneEnv` (currently empty). |
| Coordinate scale | Asset tier is a **required runtime knob with no committed default**; a minimal device probe pins it before long runs. |
| Scope | Trainable MVP first. The debug renderer ships last (it is a stated requirement, so it stays in scope — just built after the env trains). |

**Why not pymunk**, recorded so it isn't re-litigated: pymunk ships Chipmunk 7, not the game's 5.x
(different solver); the game applies gravity **per body**, which under pymunk means a Python
`velocity_func` callback per body per tick (~370 callbacks/env-step); estimated 300–900 steps/s
versus 1,900–5,600 measured for the scalar approach. And fidelity here is bottlenecked by *unknown
parameters* (player hitbox, max speed, jetpack drain), not by solver quality — a better solver fed
guessed inputs is not more faithful.

---

## Ground truth the build depends on

### Contract to reproduce exactly

Reuse, do not duplicate. [MiniMilitiaEnv](MM_GYm/python_gym_Wrapper/minimilitia_env.py:58) already
accepts an **injected bridge** and calls `info()` instead of `connect()` when one is present
([minimilitia_env.py:106](MM_GYm/python_gym_Wrapper/minimilitia_env.py:106)) — that seam is the
whole integration. Drive the real `MiniMilitiaEnv`, the real
[ObservationEncoder](MM_GYm/python_gym_Wrapper/utils.py:106), and the real
[RewardManager](MM_GYm/python_gym_Wrapper/rewards/manager.py). Observations and reward are then
identical to the live env by construction.

`mock_bridge.py:212-264` is the canonical surface: `connect`, `info`, `close`, `seed`, `ping`,
`stats`, `peek`, `set_config`, `step`, `reset`, `force_spawn`, `errors`, `tick_source`, plus
`reconnect` for the crash-recovery path.

Payload: `{"ok","kind","obs","events","acc","timed_out","total_ticks","has_player"}`.

Contract details that are load-bearing and easy to get wrong:

- `acc["ticks"]` **must equal `frame_skip` exactly** — `test_env.py` asserts `tick_slip == 0`.
- `min_dist` uses a **`-1.0` sentinel** when no enemy is alive (not `inf`, not `0`).
- `idle_ticks` and `no_shoot_ticks` accrue **only while engaged** (`min_dist <= engagement_radius`,
  default 1000).
- `damage_dealt` is **clamped to the enemy's pre-hit HP** (overkill discarded); `damage_raw` is not.
  `DamageComponent` depends on that asymmetry.
- Enemies are **nearest-first**, capped at `max_enemies` (5), scanned to `max_enemy_scan` (32).
- `info()["capabilities"]` must report **all eight flags True**, or `connect()` warns and rewards
  silently degrade.
- Action `[move_x, move_y, aim_x, aim_y, shoot]` in `[-1,1]`, no remapping. `shoot` fires when
  `> shoot_threshold` (0.0). `move_deadzone` (0.1) **only gates `isMoving()`** for the idle counter
  — it never modifies applied movement. `aim_deadzone` (0.01) is a **latch**: below it, hold the
  last angle.

### Extracted game constants (from `libcocos2dcpp.so`)

**Physics — Chipmunk 5.x, `CP_USE_DOUBLES`.** `cpSpaceNew()`, `iterations = 2`,
**`space.gravity = (0,0)`**, `damping` never set (default 1.0). Gravity is applied **per body per
frame**: player `(0,-300)` airborne / `(0,-50)` grounded, worm `(0,-200)`, hawk `(·,-500)`. Masses
200. Hawk shape circle r=40, friction 0.8, elasticity 0.1. `Stage::updateStep(dt)` →
`PhysicsManager::updateStep(dt)` → `cpSpaceStep(space, dt)`, dt = 1/60.

**Enemies — exactly three: 0 = Hawk, 1 = Humanoid, 2 = Worm.** Confirmed twice (the
`SurvivalStage::spawnEnemy` branch order, and the `EnemyManager` dict offsets 0x14/0x18/0x1c). HP:
Hawk **50**, Worm **75**, Humanoid **~100 (not statically recoverable — measure)**. All carry the
UZI. "Sarge" is an announcer, not an enemy.

**AI states.** `lookForTarget()` writes an int: visible → **3 (chase/attack)**, else → **2
(search/patrol)**; `updateStep` also tests **4** (body not isolated). Aggro constants: worm vision
**700**, arrival radius **160**, `Enemy::init` range **500**, survival target distance **500**, LOS
via `cpSpaceSegmentQueryFirst`. Hawk thrust 120, search point x = `|rand*2500|+250`,
y = `|rand*100|+800`. Worm thrust 50/120, jump impulse 250. Humanoid move factor 0.76, hovers only
when grounded.

**Survival.** Spawn interval **8.0 s**; spawn x = `|rand*2500|+250`, y = **1800**; type roll
`rand*2.99`; per-type live cap of **2 suspected but unconfirmed**. Player respawn **9.0 s**.

**UZI** (the default `spawn_weapon_type=5`): fire delay 0.1 s, reload 1.5 s, spread 6°, recoil 10°,
clip 40, ammo cap 400, damage **7**, range **500**, bullet speed **1300**. Everything is a
**projectile**, never hitscan.

### Map facts

All 19 maps: `tilewidth = tileheight = 64`, two tile layers — `tilebg` (decor) then **`tile` (the
collision layer)**; data is base64 + **gzip** (not zlib). Tilesets are 992×992 with
`spacing=2 margin=2` → 15×15 = 225 GIDs, and contain **zero per-tile collision data** — solidity
comes only from texture alpha (the project's convention is `alpha > 50`, from
[play_map_polygon.py:68](TmxFiles-testing-map/sd/scripts/play_map_polygon.py:68)). Of the 225 GIDs,
**148 are partially transparent** — which is why per-tile 64×64 AABBs (what
[play_map.py](TmxFiles-testing-map/sd/scripts/play_map.py) does) is wrong for two thirds of tiles.

Objects are zero-size points in Tiled **Y-DOWN** coords: `sp_p_NN` player spawns, `wp_p_NN` weapon
pickups with a comma-separated `weapon` pool. **No enemy-spawn objects exist in any map** —
survival spawns are computed. `training_new.tmx` has no `<objectgroup>` at all.

---

## Architecture

```
TrainingCloneEnv/
├── README.md
├── requirements-clone.txt        # optional extras only; see dependency note
├── conftest.py                   # puts the MM_GYm sys.path root in place for pytest
├── cache/                        # baked .npz artifacts (gitignored)
│
├── mmclone/
│   ├── __init__.py               # make_clone_env, CloneBridge, CloneConfig
│   ├── _bootstrap.py             # locates MM_GYm (walk-up + $MM_GYM_ROOT), no hardcoded path
│   │
│   ├── config/
│   │   ├── provenance.py         # Provenance enum + PROVENANCE registry keyed by dotted path
│   │   ├── space.py              # SpaceConfig  (Chipmunk cpSpace params)
│   │   ├── bodies.py             # BodyPhysics per actor kind
│   │   ├── weapons.py            # WeaponSpec + the extracted weapon table
│   │   ├── enemies.py            # EnemyKindConfig, AIConfig, AggressionProfile, PROFILES
│   │   ├── survival.py           # SpawnConfig (caps, cadence, band)
│   │   ├── world.py              # AssetTier, WorldFrame, MapConfig
│   │   └── clone.py              # CloneConfig root (embeds MiniMilitiaConfig verbatim)
│   │
│   ├── mapdata/
│   │   ├── tmx.py                # etree + base64 + gzip -> (h,w) uint32 GID array
│   │   ├── tileset.py            # .tsx parse + per-GID 64x64 alpha masks
│   │   ├── bake.py               # bake_map() -> .npz, keyed by content digest
│   │   ├── geometry.py           # MapGeometry: occupancy, probes, raycast, heightfield
│   │   └── objects.py            # sp_p_* / wp_p_* tables
│   │
│   ├── sim/
│   │   ├── frame.py              # WorldFrame transforms: tmx <-> grid <-> world
│   │   ├── body.py               # Body (__slots__)
│   │   ├── integrator.py         # cpBodyUpdateVelocity / UpdatePosition analogues
│   │   ├── collide.py            # axis-separated swept AABB vs pixel mask
│   │   ├── player.py             # SoldierHostController analogue
│   │   ├── enemy.py              # Hawk / Humanoid / Worm locomotion
│   │   ├── ai.py                 # EnemyState FSM, perception, LOS
│   │   ├── weapons.py            # fire gate, clip, reload, spread
│   │   ├── projectiles.py        # preallocated SoA pool
│   │   ├── events.py / accum.py  # -> payload["events"] / payload["acc"]
│   │   ├── spawner.py            # SurvivalSpawner
│   │   └── world.py              # CloneWorld.tick() / run() / snapshot()
│   │
│   ├── bridge/clone_bridge.py    # CloneBridge — full FridaBridge surface
│   ├── envs/factory.py           # make_clone_env, CloneEnvFactory, make_clone_vec_env
│   └── render/pygame_debug.py    # optional, lazily imported, never on the hot path
│
├── tools/
│   ├── bake_maps.py              # CLI: bake all 19 maps
│   ├── bench.py                  # throughput + cProfile
│   └── probe_tier.py             # minimal device probe to pin the asset tier
│
└── tests/                        # incl. test_env_contract.py re-running MM_GYm's suite
```

**Responsibility rule:** `mapdata/` is pure, cached, runs once. `sim/` is the only hot path and
must not allocate. `bridge/` is the only place that builds dicts. `render/` is never imported by the
default path (assert it via `sys.modules` in a test).

### Import plumbing

`MM_GYm/` has no `__init__.py` — it is a sys.path root, `python_gym_Wrapper` is the package.
`_bootstrap.py` resolves it by `$MM_GYM_ROOT`, then a walk-up search for
`*/MM_GYm/python_gym_Wrapper/__init__.py`. **Do not hardcode `../../MM_GYm`** — the repo is checked
out at two locations. Mirror the sys.path dance already in
[train_ppo.py:78-80](MM_GYm/Training/train_ppo.py:78).

### Dependency note (org policy)

The design adds **zero new runtime dependencies**: numpy and gymnasium are already pinned in
`python/requirements.txt`. The bake step uses pygame if importable (already pinned in
`TmxFiles-testing-map/sd/scripts/requirements.txt`) and otherwise a ~60-line stdlib zlib PNG
decoder — either way the output is a cached `.npz` and the **training path needs only numpy**.
Anything in `requirements-clone.txt` stays commented out with an explicit note that it must be
mirrored to the internal artifact registry and lockfile-pinned before install.

---

## Key design points

### Collision geometry — three tiers, all baked

```python
@dataclass
class MapGeometry:
    grid_w: int; grid_h: int      # asset-resolution pixels (64 px/tile)
    occ: bytes                    # len == grid_w*grid_h, row 0 == TOP; O(1) index, no numpy
    tile_state: np.ndarray        # (h,w) uint8: 0 EMPTY, 1 PARTIAL, 2 FULL  -- broadphase
    top_solid: np.ndarray         # (grid_w,) heightfield -- AI navigation aid ONLY, not collision
    objects: MapObjects
    digest: str
```

`occ` as a flat `bytes` is the single most important performance choice: `occ[gy*grid_w+gx]` is an
O(1) index with no numpy dispatch. The numpy-slice equivalent benchmarks at ~58k queries/s, which
at ~470 probes per env-step would cap the whole env at ~120 steps/s.

Bake: per-unique-GID 64×64 alpha masks → fancy-index compose to the full map. Cold ~95–420 ms once
per (map, tileset, threshold); warm `.npz` load ~5–10 ms. Cache key = sha1 over paths, sizes,
mtimes, params, and a `CACHE_VERSION`. Note `top_solid` is **not** collision truth — the maps have
caves and overhangs.

### Physics — mirror Chipmunk's integration exactly

```python
# Chipmunk 5: v = v*damping + (gravity + f*m_inv)*dt  -- damping does NOT damp the accel term
def update_velocity(b, gx, gy, dt, damping=1.0):
    b.vx = b.vx * damping + (gx + b.fx * b.inv_mass) * dt
    b.vy = b.vy * damping + (gy + b.fy * b.inv_mass) * dt

def update_position(b, dt):
    b.x += b.vx * dt
    b.y += b.vy * dt
```

Per-body `gy` from config (player −300 / −50 grounded, worm −200, hawk −500), `damping = 1.0`,
forces zeroed at end of tick (`cpBodyResetForces`), one step per `updateStep`. Keep the backend
behind a `PhysicsBackend` Protocol so a pymunk reference can be bolted on later for fidelity A/B
only — never in the training path.

### Coordinate frame — tier is a required knob

Three spaces: TMX objects (top-left, **Y-down**, 64 px/tile) → baked grid (top-left, Y-down, 64
px/tile) → **world, which is what observations report** (bottom-left, **Y-up** cocos, tier px/tile).

```python
class AssetTier(IntEnum): SD = 64; HD = 128; HDR = 256

@dataclass(frozen=True)
class WorldFrame:
    asset_px_per_tile: int   # 64 -- what our TMX files are
    tier_px_per_tile: int    # REQUIRED, no default
    grid_w: int; grid_h: int
    @property
    def scale(self): return self.tier_px_per_tile / self.asset_px_per_tile
```

Keep the occupancy grid at **asset resolution** and scale on lookup — upscaling to HD would be a
6656×2304 grid (15 MB) to gain 1-world-px precision against a ~48×84 px hitbox.

`CloneConfig` **must not ship a default tier**; construction raises if it is unset. `tools/probe_tier.py`
pins it: drive a real `FridaBridge`, `force_spawn()` ×50, log `peek()` player x/y, and compare
against `sp_p_00` mapped through each candidate tier. Evidence currently favors HD — the extracted
survival spawn `y = 1800` only fits a 2304-px-tall world (52×18 @128), not SD's 1152 — but that
stays a hypothesis until the probe confirms it. Pass criterion: clone and device agree on resting
`(x, y)` to within `2 * scale` world px.

### Enemy AI — states 2/3/4 pinned to the binary, extended above them

```python
class EnemyState(IntEnum):
    DEAD = 0
    SPAWN = 1          # descending from the spawn band, passive grace window
    PATROL = 2         # == binary state 2: getSearchPoint() -> updateMoveTo()   [EXTRACTED]
    CHASE = 3          # == binary state 3: updateMoveTo(target) + updateAim()   [EXTRACTED]
    ATTACK = 4         # == binary state 4 (candidate): hold in range and fire
    HOVER = 5          # arrived (<160 px), station-keep                          [EXTRACTED radius]
    INVESTIGATE = 6    # no LOS but last-known-position valid
    STRAFE = 7         # in range with LOS: orbit perpendicular while firing
    REPOSITION = 8     # target close but LOS blocked -> move to regain LOS
    RETREAT = 9        # low HP -> withdraw and break LOS
```

Values 2/3/4 deliberately match the binary's own ints so Frida traces cross-check directly.
`AIConfig.enabled_states: frozenset` gates the richer half, and every state declares a
`FALLBACK[state]` so disabling `STRAFE` degrades to `ATTACK`, not to a crash. The preset
`BINARY_FAITHFUL = {DEAD, SPAWN, PATROL, CHASE, ATTACK}` reproduces the game exactly and is the
regression baseline.

Difficulty lives in an `AggressionProfile` dataclass — vision scale, de-aggro hysteresis, target
memory, reaction delay, standoff distance, strafe period, and the gunnery dials (`aim_smooth`,
`aim_lead`, `aim_bias_deg`, `fire_cone_deg`, `fire_prob`, burst length/gap), plus
`retreat_hp_frac`. Presets: `dummy`, `passive`, `easy`, `normal`, `hard`, `binary_faithful`, with
`env.set_difficulty(p)` interpolating between two of them at the next `reset()` (never mid-episode
— that makes returns non-stationary within an episode). Drive it from an SB3 callback, mirroring
the pattern in [callbacks.py](MM_GYm/Training/callbacks.py).

**`fire_prob` and `max_concurrent_attackers` are not optional.** From the extracted numbers: UZI is
7 damage at 0.1 s = **70 DPS per enemy**, and 6° spread at 400 px is only ±21 px against a ~30×46
body. Six perfectly-tracking enemies kill a 100 HP player in **0.24 s**, which gives the agent a
reward signal with no learnable structure. The physically-correct primary miss source is the
extracted `aim_smooth = 0.95` (τ ≈ 0.33 s); `fire_prob` and a cap of 2 simultaneous attackers are
the safety valves on top. Calibrate against real survival-mode player TTK before trusting them.

Perception: per-type vision radius, LOS via a **sampled DDA raycast against the occupancy grid**
(never per-step polygon queries), aggro/de-aggro hysteresis, last-known-position memory. The game
re-runs `lookForTarget()` once per spawn-round tick, not every frame — expose
`retarget_interval_ticks` (default 1 = faithful) as the main throughput lever, since LOS rays are
the most expensive per-tick operation.

### Spawn director — per-type caps are a first-class knob

```python
@dataclass
class SpawnConfig:
    max_alive_per_type: tuple[int, int, int] = (2, 2, 2)   # Hawk, Humanoid, Worm -- user requirement
    max_alive_total: int = 6
    interval_s: float = 8.0                                # [EXTRACTED]
    type_weights: tuple[float, float, float] = (1/3, 1/3, 1/3)   # [EXTRACTED: rand*2.99]
    mode: Literal["band", "sp_points", "band_ground_snap"] = "band_ground_snap"
    band_x_frac: tuple[float, float] = (0.05, 0.95)
    band_y_frac: float = 0.90
    exact_repro: bool = False        # True -> use the raw 250/2500/1800 literals verbatim
    ground_snap: bool = True         # Worm/Humanoid snap to floor under the sampled x
    clearance_px: float = 48.0
```

The extracted `1800 / 2500 / 250` literals are tier- **and map-specific** (they describe the hd
survival map); the sd maps here run 30×20 to 82×14 to 41×66, so the band is generalized to
fractions of the loaded map, with `exact_repro` to fall back to the literals. Timer resets **on the
spawn attempt, not on success** — that is what produces the game's "trickle that stalls when you
stop killing".

Player respawn maps onto the *existing* config flags so clone and live env stay interchangeable:
`terminate_on_death=True` → `terminated` with `end_reason="player_death"`; otherwise a 9.0 s dead
window where `dead_ticks` accrues and enemies fall back to `PATROL`; `infinite_health=True` →
death never occurs; `fix_spawn_time=True` → 0 s. `reset(options=...)` maps `clear_enemies`,
`force_spawn`, and `settle_ticks` straight through. Add `options["prespawn"] = 1` by default so
episodes don't open with 8 empty seconds (480 wasted ticks per episode is a real sample-efficiency
tax).

### Projectiles

Preallocated struct-of-arrays pool, no per-bullet Python objects, scalar advance-and-test loop
(measured faster than the numpy version at this entity count). UZI derived tick forms:
`fire_delay_ticks = 6`, `reload_ticks = 90`, `ttl_ticks = 23` (range 500 / speed 1300 = 0.385 s).
Steady state is ~4 live bullets per shooter, ~28 for player + 6 enemies.

Damage resolution must replicate
[gym_observer.js](MM_GYm/python_gym_Wrapper/js/gym_observer.js) exactly: clamp `damage_dealt`
against **pre-hit** HP, leave `damage_raw` unclamped, and split `kills_credited` from
`enemies_destroyed`.

### Config provenance

Every numeric constant carries a provenance tag — `EXTRACTED` (read from the binary), `DERIVED`,
`MEASURED` (fit from a device trace), `GUESSED` (placeholder, must be calibrated), `TUNING` (ours,
no game counterpart). Provenance lives in a module-level sidecar dict keyed by dotted path so the
hot path reads plain floats. A test walks the dataclass tree and fails if any numeric leaf lacks an
entry. This is the guard against exactly what happened in
[play_map_polygon.py:168-173](TmxFiles-testing-map/sd/scripts/play_map_polygon.py:168) — five
arbitrary pygame constants (gravity 0.26, accel 0.5, max_speed 5.5, jetpack −0.65, hitbox 24×42)
with no relationship to the game. `bench.py` prints the report so the GUESSED count is visible.

### Debug rendering

Strictly optional, lazily imported `pygame` view following the gym `render_mode` convention
(`None` / `"human"` / `"rgb_array"`), a port of the camera/zoom/HUD in
[play_map.py](TmxFiles-testing-map/sd/scripts/play_map.py). Draws terrain, player, enemies
**labeled with their current AI state**, projectiles, aggro radii and LOS rays. Headless via
`SDL_VIDEODRIVER=dummy`. A test asserts `import mmclone` does not pull pygame into `sys.modules`.

---

## Build order

| Phase | Deliverable | Done when |
|---|---|---|
| **0. Contract lock** | `_bootstrap`, package skeleton, `CloneBridge` that internally **delegates to `MockBridge`**, `make_clone_env` | `MM_GYm/python_gym_Wrapper/tests/test_env.py` passes with `CloneBridge` substituted. Plumbing proven before any physics exists. |
| **1. Map pipeline** | `tmx.py`, `tileset.py`, `bake.py`, `geometry.py`, `objects.py`, `tools/bake_maps.py` | All 19 maps bake; golden test pins `survival_new` at shape (1152, 3328) and GID solidity counts (37 full / 40 empty / 148 partial); warm load ≤ 20 ms |
| **2. Frame + integrator + collision** | `frame.py`, `body.py`, `integrator.py`, `collide.py` | Free-fall matches the closed form for semi-implicit Euler; resting on ground is jitter-free over 10k ticks; wall stop lands on the exact expected grid column; no tunneling at 1300 px/s |
| **3. Player + weapons + projectiles** | `player.py`, `weapons.py`, `projectiles.py` | Fire cadence exactly 6 ticks, reload 90, TTL 23, damage 7; aim-latch and `move_deadzone` semantics match the JS contract; overkill clamp matches a hand-built `(hp_before, dmg)` table |
| **4. Enemies + AI + spawner** | `enemy.py`, `ai.py`, `spawner.py` — `BINARY_FAITHFUL` states first | Hawk holds altitude and reaches search points; Worm jumps walls; Humanoid hovers only when grounded; per-type caps hold under a 10-minute soak; 8.0 s cadence exact; spawns never land inside terrain across **all 19 maps** (parametrized test) |
| **5. Rich states + aggression** | `HOVER, INVESTIGATE, STRAFE, REPOSITION, RETREAT`, `enabled_states` gating, `AggressionSchedule`, `env.set_difficulty()` | FSM never enters a disabled state (property test over random profiles); `dummy` never fires; `hard` measurably shortens player TTK |
| **6. Bridge guts** | Swap the `MockBridge` delegate for `CloneWorld`; `events.py`, `accum.py`, payload builders | Phase-0 suite still green with real physics; `tick_slip == 0`; `min_dist` sentinel, engaged-gating and damage clamping all verified |
| **7. Tier probe + bench** | `tools/probe_tier.py`, `tools/bench.py`, `test_throughput.py` | Tier pinned from a real device to within `2 * scale` world px; ≥1,500 steps/s single-process |
| **8. Debug renderer** | `render/pygame_debug.py` | Runs headless; `import mmclone` does not import pygame |

Phases 0–4 give a trainable survival env. Phase 0 is what de-risks everything: it proves the
contract before a single line of physics exists.

---

## Verification

**Contract parity (the primary gate).** Re-run the existing suite against `CloneBridge`:

```bash
cd "C:/Users/gsathinedi/Downloads/Ladhak/mm/mm/TrainingCloneEnv" && python -m pytest tests/test_env_contract.py -v
```

This re-uses [test_env.py](MM_GYm/python_gym_Wrapper/tests/test_env.py) — `check_env`, the
`tick_slip == 0` assertions across `frame_skip ∈ {1,5,13,20}`, truncation/termination reasons,
action clipping, and reward/total agreement — with the bridge swapped. Green means observations,
episode contract and reward are indistinguishable from the live path.

**Map pipeline golden test.** `survival_new.tmx` must compose to shape (1152, 3328) with solid
fraction 0.272 ± 1e-3 and GID counts (37 full, 40 empty, 148 partial). One cheap test pins the
whole parse → decompress → alpha → compose chain.

**Throughput.**

```bash
cd "C:/Users/gsathinedi/Downloads/Ladhak/mm/mm/TrainingCloneEnv" && python tools/bench.py --map survival --enemies 6 --frame-skip 10 --steps 20000 --warmup 2000 --profile
```

Gates: ≥1,500 env-steps/s single-process with a realistic bullet load, ≥10,000 aggregate across 8
`SubprocVecEnv` workers, cold bake ≤500 ms, warm load ≤20 ms. `test_throughput.py` asserts a
conservative 800 steps/s floor so a regression fails without being flaky on a loaded machine.
Against the live game's 3–10 steps/s that is a 150–500× single-process speedup.

**Tier calibration against a real device.** With a device attached and the gadget loaded:

```bash
cd "C:/Users/gsathinedi/Downloads/Ladhak/mm/mm/TrainingCloneEnv" && python tools/probe_tier.py --host 127.0.0.1:27042 --samples 50
```

Records `peek()` player x/y after 50 forced spawns and reports which tier maps `sp_p_00` onto the
observed position. Must agree to within `2 * scale` world px before any long pretraining run.

**End-to-end training smoke test.** Confirm the clone drives the real trainer:

```bash
cd "C:/Users/gsathinedi/Documents/Projects/mm/MM_GYm" && python -m Training.train_ppo --clone --total-timesteps 20000 --num-envs 4
```

`CloneEnvFactory` deliberately mirrors
[SingleEnvFactory](MM_GYm/Training/train_ppo.py:374), so this is a `--clone` flag and one branch in
`make_env` — not a parallel trainer. Watch that reported steps/s jumps from ~5 to 4-figure, and
that `ep_rew_mean` moves.

**Determinism.** Two seeded rollouts with identical action sequences must be bit-identical.

---

## Parameters that stay UNKNOWN until calibrated

These are all `GUESSED` in config and the env is trainable with every one of them at its
placeholder. But **sim-to-real transfer quality is bounded by this table, not by solver fidelity** —
which is the core reason pymunk isn't worth buying.

| Parameter | Placeholder | How to pin it |
|---|---|---|
| Asset tier / world scale | none (required knob) | `probe_tier.py`; HD is the current hypothesis |
| Player hitbox half-extents | 24×42 (prototype's arbitrary guess) | Wall-stop x and resting y against known tile boundaries, 4 approach directions |
| Player max speed | ambiguous among {125, 220, 75, 14} | Hold `move_x=1` on flat ground 120 ticks, read the plateau |
| Terminal velocity | unset | Free-fall 300 ticks from map top, read the plateau |
| Jetpack thrust / `power` drain / regen | **not recovered at all** | Hold `move_y=1` from rest, log `power` per tick to 0, then release and log to 100 |
| Humanoid max HP | 100 | `hp = 7 × damage_events` to `enemies_destroyed`. **10-minute measurement — do it before the first long run.** |
| AI state 4 semantics | modeled as ATTACK | Log per-tick enemy `(x,y,vx,vy,aim,hp)`; likely flee-on-damage (`WormDrone::sawDamage` exists) |
| Per-type live cap | 2 | Clear enemies, idle 120 s, count each dict |
| Which radius gates aggro (700 vs 500 vs 500) | all three modeled separately | Sweep player distance in 50 px steps, find the flip point per type |
| `spawn_y = 1800` semantics | literal world y | It is **geometrically inconsistent** — 39.9% of that band is solid at HD, so there is likely a retry/clamp. Histogram 200 first-sightings |
| Collision alpha threshold | 50 (project convention) | Sweep 1–200 against a partial GID, minimize wall-x error |
| `fire_prob` / `max_concurrent_attackers` | 0.35 / 2 (pure invention) | Measure real survival-mode player TTK |

## Known issue found during research (out of scope, worth fixing separately)

`RewardConfig.enemy_max_hp = 100.0` ([config.py:216](MM_GYm/python_gym_Wrapper/config.py:216)) is a
single scalar, but the three enemies have HP 50 / ~100 / 75. `DamageComponent` divides by it, so
Hawk damage is currently worth **half** what it should be relative to a Humanoid.

Do **not** fix this by changing the observation — the live bridge emits absolute HP, so the clone
must too or every pretrained checkpoint hits a distribution shift on transfer. The clean fix is to
expose `ENEMY_MAX_HP = (50.0, 100.0, 75.0)` from the clone, surface it as
`info["enemy_max_hp_by_type"]`, and add a **new, opt-in** per-type reward component. Changing
`enemy_max_hp` in place would silently rescale `w_damage` by 2× for Hawks and invalidate every
existing run's reward curve.
