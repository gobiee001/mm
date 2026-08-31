# Mini Militia — Gymnasium Environment

A `gymnasium.Env` over a live Mini Militia process, driven by Frida.

```
Agent ──env.step(a)──▶ FridaBridge ──rpc.step(a)──▶ JS agent
                                                      │ applies action
                                                      │ holds it N physics ticks
                                                      │ accumulates events
Agent ◀── obs, reward, term, trunc, info ◀── one payload ┘
```

One `env.step()` is **one** blocking RPC round-trip. The JS side resolves the
promise from inside the `PhysicsManager::updateStep` hook after `frame_skip`
ticks, so Python never polls and never counts messages.

---

## Quick start

Windows — `run_gym_demo.bat` finds the venv, forwards the ADB port (skipped
under `--mock`), and passes every flag straight through:

```
run_gym_demo.bat --mock
run_gym_demo.bat --episodes 2 --steps 200
run_gym_demo.bat --probe-timescale --game-speed 2.0
```

Or directly:

```bash
# No game required — toy physics, real encoder and reward engine
python -m python_gym_Wrapper.demo --mock

# Live game via the Frida gadget
python -m python_gym_Wrapper.demo --episodes 2 --steps 200
```

```python
from python_gym_Wrapper import MiniMilitiaEnv, MiniMilitiaConfig

cfg = MiniMilitiaConfig()
cfg.env.frame_skip = 10
cfg.env.max_episode_steps = 1000
cfg.reward.w_kill = 2.0

env = MiniMilitiaEnv(cfg)
obs, info = env.reset()
for _ in range(1000):
    obs, reward, terminated, truncated, info = env.step(env.action_space.sample())
    if terminated or truncated:
        obs, info = env.reset()
env.close()
```

---

## Action space

`Box(-1, 1, (5,), float32)` — `[move_x, move_y, aim_x, aim_y, shoot]`.

Values are used **directly**; the JS layer clamps to `[-1, 1]` and does not
remap. `shoot` fires above `ActionSpaceConfig.shoot_threshold` (default `0.0`).

> The legacy `Actions/aim_move_shoot-Copy.js` applied `mapRange()`, which mapped
> `[0,1] → [-1,1]`. Passing a `[-1,1]` Box through it clamped every negative
> component to exactly `-1.0` and mapped `0 → -1`, collapsing half the action
> space onto one extreme. `tests/js_harness.js` asserts this cannot regress.

## Observation space

Flat `float32` vector, `ObservationConfig.flat_size` long (58 by default):

| Block | Features |
|---|---|
| Player | `x, y, vx, vy` (+ `hp, power`) (+ `ammo, reloading`) |
| Enemy slot × `max_enemies` | `present, dx, dy, vx, vy, hp, dist` (+ 3-way type one-hot) |

Enemy slots are **nearest-first**, so slot *k* always means "k-th closest
enemy", and each carries a `present` mask. Coordinates are **player-relative**
by default — absolute map coordinates would need per-map bounds that nothing in
the instrumentation reports.

`env.observation_labels()` returns a name for every index.

---

## Reward

All weights are **positive magnitudes**; the formula applies the signs:

```
r = w_damage · (damage / enemy_max_hp)
  + w_kill   · kills
  − w_damage_taken · (taken / player_max_hp)
  − w_death  · deaths
  − shot_cost
  − w_idle   · (idle_ticks / ticks)
  − w_not_shooting · (no_shoot_ticks / ticks)
  − w_time
```

Every term comes from an **event hook on the function that performs the
action**, not from diffing sampled state:

| Term | Source symbol |
|---|---|
| damage dealt | `Hawk/Humanoid/WormDrone::addDamage(int, string, int)` |
| kills | `EnemyManager::awardPoints`, falling back to `onEnemyDestroyed` |
| shots | `SoldierHostController::weaponDidFire(Item*)` |
| damage taken | `SoldierHostController::addDamage(float, string, int, bool)` |
| deaths | `SoldierHostController::killPlayer` |

Damage is clamped to the target's remaining HP at hook entry, so overkill
cannot be farmed.

<details>
<summary>Why events instead of state diffs</summary>

* **Enemy ids are not stable.** `CCDictElement::getIntKey` returns 0 on some
  builds, and the collector falls back to a raw heap pointer. The allocator
  reuses freed drone memory, so a fresh drone can carry a dead one's id —
  turning a kill into a large *negative* HP delta.
* **Disappearance ≠ kill.** Despawns, stage transitions and a truncated
  dictionary walk all look identical to a kill at `+w_kill` each.
* **Ammo diffing cannot work at all** while `infinite_reload_ammo` is on: that
  clamp rewrites the clip to 99 every tick, so `prev_ammo − cur_ammo` is
  identically zero.

</details>

### Scale

A full drone's worth of damage is worth ≈ `w_damage` (1.0); a kill ≈ `w_kill`
(2.0). Per-tick penalties are divided by the tick count, so **changing
`frame_skip` does not rescale the reward function**. Set
`RewardConfig.clip = None` to disable the final clip.

---

## Episode contract

`reset()` performs a **real** soft reset: `SoldierHostController::killPlayer`
and `EnemyManager::killAllEnemies` are invoked *on the game thread* (queued and
executed inside the next physics tick, never from an RPC callback), then
`reset_settle_ticks` ticks elapse before the first observation.

| Flag | Cause |
|---|---|
| `terminated` | player death (needs `infinite_health=False`), or `StageLayer::onEndedGame` |
| `truncated` | `max_episode_steps`, or 3 consecutive tick stalls |

An arbitrary cut always reports `truncated`, never `terminated`, so a
bootstrapping learner still bootstraps the final state's value.

`EnvConfig` rejects `infinite_health=True` together with
`terminate_on_death=True` — HP is clamped to 100 every tick, so the episode
could never end.

---

## Synchronisation, honestly

This is **soft** synchronisation. The game thread is never halted, so it keeps
running between the resolve and the next `step()`. True lockstep would need to
block the game thread inside the interceptor, which deadlocks against `recv`
under the V8 JS lock.

What you get instead: every payload reports the ticks it actually observed, and
`info["tick_slip"]` is the difference from `frame_skip`. Drift is visible rather
than silently folded into the reward. A JS watchdog (`step_timeout_ms`) resolves
a stalled step with `timed_out=True` so a paused game never hangs training.

### `hard_sync` — an alternative that doesn't deadlock

The paragraph above says true lockstep would deadlock, and that's still correct
for the naive version: *blocking the interceptor thread itself* while waiting
for a signal would indeed jam against `recv`'s V8 lock. `hard_sync` (default
`False`) gets frame-exact stepping a different way, without ever blocking
anything: it replaces `CCScheduler::update` (the one function every scheduled
game update fans out from) so that by default it does nothing at all, and only
lets exactly `frame_skip` real updates through once `step()`/`reset()` asks for
them - using the same non-blocking promise/tick-counting mechanism described
above, just paired with a game that can no longer run on its own between calls.
`tick_slip` becomes always `0`.

Trade-off: this is a hot-path native-function replacement (called on every
render callback), a materially bigger blast radius than any other hook in this
project. See `js/gym_sync.js`. `game_speed` has no effect while `hard_sync` is
on (see below).

### `game_speed` — measure before you trust it

`game_speed` writes `CCScheduler`'s timescale. Two regimes are possible and they
differ a lot:

* **dt inflates** → physics integrate differently per speed, so the transition
  function depends on `game_speed` and a policy trained at 2.0× will not
  transfer to 1.0×.
* **engine substeps at fixed dt** → more ticks per second, `frame_skip` is a
  constant slice of game time, and speed is a free throughput win.

Resolve it empirically before committing to a speed. Run once per setting —
the timescale hook is installed at script load:

```bash
python -m python_gym_Wrapper.demo --probe-timescale --game-speed 1.0
python -m python_gym_Wrapper.demo --probe-timescale --game-speed 2.0
```

Default is `game_speed = 1.0` until this is settled. Moot while `hard_sync` is
on - see above.

---

## Layout

```
python_gym_Wrapper/
├── config.py            EnvConfig / RewardConfig / ObservationConfig / ActionSpaceConfig
├── frida_bridge.py      JS bundling, config injection, RPC transport
├── mock_bridge.py       in-process double — same payload shape, toy physics
├── minimilitia_env.py   the gymnasium.Env
├── reward.py            RewardCalculator, breakdown, episode totals
├── utils.py             ObservationEncoder + vector helpers
├── demo.py              verification harness and timescale probe
├── run_gym_demo.bat     Windows launcher (venv + adb forward + flag passthrough)
├── run_gym_tests.bat    Windows test runner (no game needed)
├── js/
│   ├── gym_symbols.js   one symbol-table walk, cached, with a found/missing report
│   ├── gym_sync.js      hard_sync: freeze/single-step CCScheduler::update
│   ├── gym_config.js    defaults, shallow-merged under __PY_CONFIG__
│   ├── gym_runtime.js   weapon equip, timescale, headless, audio, VSync
│   ├── gym_actions.js   action injection
│   ├── gym_observer.js  event counters + per-tick sampling
│   └── gym_agent.js     rpc.exports and the frame-skip promise
└── tests/
```

Frida has no module loader, so `bundle_js()` concatenates `js/` in declared
dependency order and injects `__PY_CONFIG__`. Nothing is string-patched — the
dataclasses are the single source of truth.

---

## Diagnostics

Silent zeros are worse than crashes for an RL dataset, so every failed native
read increments a counter instead of vanishing into a bare `catch`:

```python
env.bridge.stats()["diag"]     # dict_err, enemy_hp_err, dt_fallback, synth_id_count, ...
env.instrumentation_info       # tick source, capabilities, unresolved symbols
```

`demo.py` prints the capability table at startup, and the env logs a warning
when a reward signal's hook did not resolve — so a term stuck at zero is
visible rather than mysterious.

Cached instance pointers are dropped when their owning update loop stops
running for 60 ticks, so a freed `EnemyManager` is never dereferenced after a
stage change.

---

## Tests

```
run_gym_tests.bat
```

or, from the `MM_GYm` directory:

```bash
python -m unittest discover -s python_gym_Wrapper -p "test_*.py"
```

103 tests, no game required:

* **`test_config`** — validation, JS-config injection
* **`test_utils`** — encoder layout, padding, translation invariance, bounds
* **`test_reward`** — signs, scale, frame-skip invariance, robustness
* **`test_env`** — `gymnasium.utils.env_checker.check_env`, reset/step contract, episode flags
* **`test_bundle`** — bundling, no surviving `import`/`export`, symbol coverage
* **`test_js_agent`** — runs the real bundle under stubbed Frida globals in Node
  (38 checks: frame skip, event hooks, overkill clamp, action mapping, reset,
  watchdog). Skipped if Node is absent.

---

## Not yet verified on-device

Everything above is covered by tests that run without the game. These need a
live session:

1. **Symbol resolution against the shipped `libcocos2dcpp.so`.** Names were
   taken from `Archive/frida_scripts/libcocos2dcpp_dump.txt`; `demo.py` prints
   any that fail to resolve.
2. **`Enemy::addDamage` argument order.** Assumed `args[1] = damage:int` under
   the ARM32 softfp ABI. If damage reads as garbage, that's the first thing to
   check.
3. **The `game_speed` regime** — see the probe above.
4. **Whether `killPlayer` + `killAllEnemies` is a sufficient reset** for the
   stage you train on, or whether spawn timers also need resetting
   (`SurvivalStage::resetSpawnTime` is available).
