# Mini Militia RL Environment - Unified Frame Observation Layer

This directory contains the unified, high-performance Frida instrumentation layer designed specifically for Reinforcement Learning observation sampling in Mini Militia.

## Architecture

```
                       Mini Militia Engine
                                │
                                ▼
                SurvivalStage::updateStep(float dt)
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
       (In-Game Map Space)           (In-Game Map Space)
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

## Authoritative Frame Hook

- **Primary Observation Hook**: `_ZN13SurvivalStage10updateStepEf` (`SurvivalStage::updateStep(float dt)`).
- **Sampling Point**: `onEnter`. Exactly **one observation** is sampled per update tick.
- **Coordinate System**: In-game map coordinates sampled directly from `getBodyPosition` / `CCNode::getPosition`.

---

## Observation Schema

```json
{
  "frame": 10023,
  "dt": 0.016667,
  "stage": "SurvivalStage",
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
    "ammo_in_mag": 99
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

Configure these flags directly at the top of [`observation_hook.js`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/observation_hook.js):

| Option | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `always_spawn_with_weapon`| `boolean` | `true` | Auto-equips designated weapon on match start / respawn |
| `spawn_weapon_type` | `int` | `5` | ItemType `5` = **UZI** (`1`: Machete, `3`: Deagle, `4`: Magnum, `5`: Uzi, `6`: MP5, `7`: AK47, `8`: M16, `9`: Shotgun, `11`: SMAW) |
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
Run [`run_observation_hook.bat`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/run_observation_hook.bat) directly.

### 2. Launch via Python CLI
```bash
python run_observation_hook.py --device gadget --interval 2.0
```
