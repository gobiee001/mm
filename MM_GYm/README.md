# Mini Militia RL Environment - Unified Frame Observation Layer

This directory contains the unified, high-performance Frida instrumentation layer designed specifically for Reinforcement Learning observation sampling in Mini Militia.

## Architecture

```
                       Mini Militia Engine
                                │
                                ▼
                TrainingStage::updateStep(float dt)
                                │
                                │ (onEnter hook)
                                ▼
                   ┌────────────────────────┐
                   │  Unified Frida Hook    │
                   │  collectObservation()  │
                   └───────────┬────────────┘
                               │
                ┌──────────────┴──────────────┐
                │                             │
                ▼                             ▼
         Player Collector              Enemy Collector
                │                             │
                └──────────────┬──────────────┘
                               ▼
                         Game Snapshot
                               │
            ┌──────────────────┴──────────────────┐
            ▼                                     ▼
     Console Output                        Python Transport
 (Formatted / JSON String)                 (Frida send() msg)
                                                  │
                                                  ▼
                                            Gymnasium Env
```

---

## Key Design Principles

1. **Authoritative Frame Tick**:
   - Primary hook is attached to `_ZN13TrainingStage10updateStepEf` (demangled: `TrainingStage::updateStep(float)`).
   - Sampling occurs strictly in `onEnter`.
   - Exactly **one** observation is generated per `updateStep` invocation.
   - Zero timers (`setInterval`, `setTimeout`, Python polling threads).

2. **Zero-Allocation Fast-Path**:
   - All `NativeFunction` instances and memory conversion buffers are pre-allocated once during script startup.
   - No symbol searches (`enumerateSymbolsSync`), base address lookups, or memory allocations occur inside `onEnter`.

3. **Active Enemy Iteration**:
   - Drones are read directly from `EnemyManager`'s CCDictionaries:
     - **Offset `0x14`**: Hawk Drones (Type `0`)
     - **Offset `0x18`**: Humanoid Drones (Type `1`)
     - **Offset `0x1c`**: Worm Drones (Type `2`)
   - Pointer validity is ensured by reading live objects on each frame tick, avoiding stale pointer dereferencing across spawns/despawns.

---

## Observation Schema

```json
{
  "frame": 10023,
  "dt": 0.016667,
  "player": {
    "position": {
      "x": 100.20,
      "y": 200.40
    },
    "velocity": {
      "x": 5.00,
      "y": 0.00
    },
    "reloading": false,
    "ammo_in_mag": 12
  },
  "enemies": [
    {
      "id": 21,
      "position": {
        "x": 400.20,
        "y": 201.00
      },
      "velocity": {
        "x": -2.00,
        "y": 0.00
      },
      "type": 0,
      "aim_angle": 1.57
    }
  ]
}
```

---

## Runtime Configuration Options

Configure these flags directly at the top of [`observation_hook.js`](file:///C:/Users/sathi/PycharmProjects/mm/Frida_finalScripts/MM_GYm/observation_hook.js):

| Option | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `infinite_reload_ammo` | `boolean` | `true` | Locks clip ammo to 99 and ensures full reserve ammo |
| `disable_sarge` | `boolean` | `true` | Stubs Sarge updates & dialogue chatter |
| `disable_rendering` | `boolean` | `false` | Disables Cocos2d-x scene draw for headless RL training speedup |
| `game_speed` | `float` | `1.0` | Controls Cocos2d-x `CCScheduler` timescale (e.g. `3.0`, `5.0`) |
| `show_fps` | `boolean` | `true` | Calculates FPS & unlocks 60 FPS cap via `eglSwapInterval(0)` |
| `infinite_health` | `boolean` | `true` | Locks player HP to 100 on each tick |
| `infinite_boost` | `boolean` | `true` | Locks player jetpack/power to 10.0 |
| `disable_sound` | `boolean` | `true` | Disables background music and sound effects |
| `output_mode` | `string` | `'pretty'` | `'pretty'` (human readable), `'json'` (compact JSON), or `'send'` (Frida `send()`) |

---

## Usage

### 1. Launch via Batch File
Run [`run_observation_hook.bat`](file:///C:/Users/sathi/PycharmProjects/mm/Frida_finalScripts/MM_GYm/run_observation_hook.bat) directly.

### 2. Launch via Python CLI
```bash
python run_observation_hook.py --device gadget --mode pretty
```

To stream structured JSON for Python consumption:
```bash
python run_observation_hook.py --device gadget --mode send
```
