# Mini Militia RL — Batch Scripts Guide

This directory (`MM_GYm/Training/batFiles/`) contains pre-configured Windows batch scripts (`.bat`) to automate training, resuming, evaluation, stopping, and device management for Mini Militia PPO reinforcement learning.

---

## Quick Reference Summary

| Batch File | Purpose | Default Mode / Settings |
| :--- | :--- | :--- |
| [`run_all_devices_headless.bat`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/Training/batFiles/run_all_devices_headless.bat) | High-throughput multi-device training | Headless (screen rendering disabled), 30M steps, all ADB devices |
| [`run_all_devices_render.bat`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/Training/batFiles/run_all_devices_render.bat) | Visual multi-device training | Screen visible (rendering enabled), all ADB devices |
| [`resume_latest_best.bat`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/Training/batFiles/resume_latest_best.bat) | Resume from highest-reward model | Auto-detects best historical checkpoint, 30M steps, all ADB devices |
| [`evaluate_latest_best.bat`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/Training/batFiles/evaluate_latest_best.bat) | Benchmark model vs scripted baseline | Auto-detects best model, 3 evaluation episodes vs `aim_at_nearest` |
| [`run_mock_parallel.bat`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/Training/batFiles/run_mock_parallel.bat) | Fast smoke-test without game/devices | 4 parallel mock simulator environments, 16,384 steps |
| [`stop_training.bat`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/Training/batFiles/stop_training.bat) | Clean shutdown of active training | Writes `STOP` sentinel to save model cleanly without RPC errors |
| [`run_training.bat`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/Training/batFiles/run_training.bat) | Core flexible execution runner | Configures ADB port forwarding, resolves Python venv, runs PPO |

---

## Detailed Script Descriptions & Usage Options

### 1. `run_all_devices_headless.bat` (Recommended for Full Training)
* **Description**: Automatically detects all connected Android devices / emulators via ADB, configures TCP port forwarding (27042, 27043, etc.), disables in-game graphics rendering for maximum FPS throughput, and runs PPO training for 30 million timesteps.
* **Usage Examples**:
  ```bat
  :: Run with default settings (30M timesteps, headless, all devices):
  run_all_devices_headless.bat

  :: Override timestep budget to 5 million:
  run_all_devices_headless.bat --total-timesteps 5000000

  :: Enable real player deaths and death penalty:
  run_all_devices_headless.bat --terminate-on-death

  :: Label the experiment folder in models/:
  run_all_devices_headless.bat --run-name ppo_experiment_v1
  ```

---

### 2. `run_all_devices_render.bat`
* **Description**: Launches multi-device training with screen rendering visible on the phone/emulator. Ideal for visual validation, debugging bot behavior, or recording gameplay.
* **Usage Examples**:
  ```bat
  :: Run with rendering visible on screen:
  run_all_devices_render.bat

  :: Set a custom episode step limit (e.g. 500 steps per episode):
  run_all_devices_render.bat --max-episode-steps 500
  ```

---

### 3. `resume_latest_best.bat`
* **Description**: Automatically scans `MM_GYm/models/run_*/` in reverse chronological order, locates the model file with the **highest numerical reward** (`best_r+...`), and continues training seamlessly with hyperparameters restored.
* **Usage Examples**:
  ```bat
  :: Auto-resume from highest reward model across all runs:
  resume_latest_best.bat

  :: Resume with a custom step budget:
  resume_latest_best.bat --total-timesteps 10000000

  :: Resume with screen rendering visible:
  resume_latest_best.bat --render-game

  :: Resume from a specific model file path explicitly:
  resume_latest_best.bat models\run_20260828_203351\best\best_r+15.2689_step000015660.zip

  :: Resume in mock simulator mode:
  resume_latest_best.bat --mock --num-envs 4 --total-timesteps 32768
  ```

---

### 4. `evaluate_latest_best.bat`
* **Description**: Automatically finds the latest best model and executes evaluation episodes in deterministic mode, comparing its performance against the scripted `aim_at_nearest` baseline policy.
* **Usage Examples**:
  ```bat
  :: Benchmark latest best model over 3 episodes:
  evaluate_latest_best.bat

  :: Evaluate over 10 episodes:
  evaluate_latest_best.bat --episodes 10

  :: Evaluate an explicit model file:
  evaluate_latest_best.bat models\run_20260828_203351\best\best_r+15.2689_step000015660.zip

  :: Test with step-by-step ANSI terminal state rendering:
  evaluate_latest_best.bat --render
  ```

---

### 5. `run_mock_parallel.bat`
* **Description**: Runs 4 parallel mock simulator environments in-process with synthetic physics. Requires no phones, emulators, Frida gadgets, or game processes. Excellent for verifying the Python stack, reward calculation, and vectorization.
* **Usage Examples**:
  ```bat
  :: Standard mock smoke-test (16,384 timesteps):
  run_mock_parallel.bat

  :: Extended mock benchmark with 8 environments:
  run_mock_parallel.bat --num-envs 8 --total-timesteps 65536
  ```

---

### 6. `stop_training.bat`
* **Description**: Safely stops the currently running training session. It creates a `STOP` sentinel file inside the active `MM_GYm/models/run_<timestamp>/` folder. The trainer detects this at the next step boundary, finishes cleanly, and saves a `stopped_step...zip` model.
* **Why use this instead of Ctrl-C?**: On live Android devices, pressing `Ctrl-C` may interrupt a blocking Frida RPC transmission, leaving hooks orphaned. `stop_training.bat` guarantees a clean teardown.
* **Usage**:
  ```bat
  stop_training.bat
  ```

---

### 7. `run_training.bat` (Core Engine)
* **Description**: The foundational script called by the other launchers. Handles:
  1. Adding Android SDK `platform-tools` (`adb`) to `PATH`.
  2. Auto-forwarding Frida gadget ports (`tcp:27042`, `tcp:27043`, ...).
  3. Locating Python virtual environment (`.venv-frida-16`).
  4. Passing all CLI flags to `python -m Training.train_ppo`.

---

## Full CLI Flags Reference

Any of these flags can be passed to `run_training.bat`, `run_all_devices_headless.bat`, `run_all_devices_render.bat`, or `resume_latest_best.bat`:

### Environment & Connection Flags
| Flag | Type / Choices | Default | Description |
| :--- | :--- | :--- | :--- |
| `--all-devices` | boolean flag | `True` | Auto-detect all attached ADB devices and forward unique ports |
| `--num-envs N` | integer | Auto | Number of parallel worker environments to run |
| `--hosts H1 H2...` | strings | None | Explicit host:port targets (e.g. `127.0.0.1:27042 127.0.0.1:27043`) |
| `--mock` | boolean flag | `False` | Run in-process toy simulator without game / phone attached |
| `--headless` | boolean flag | `True` | Disable game rendering for higher FPS throughput |
| `--render-game` | boolean flag | `False` | Keep game screen rendering visible |
| `--hard-sync` | boolean flag | `False` | Frame-exact stepping hook (eliminates tick slip) |
| `--frame-skip N` | integer | `10` | Physics ticks each action is held for |
| `--max-episode-steps N` | integer | `300` | Episode truncation limit |
| `--max-enemies N` | integer | `5` | Enemy slots in observation vector |
| `--weapon W` | `uzi`, `mp5`, `shotgun`, `m4`, etc. | `uzi` | Weapon to spawn with |
| `--terminate-on-death` | boolean flag | `False` | Ends episode on player death and enables death penalties |

### Training & PPO Flags
| Flag | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `--total-timesteps N` | integer | `200000` (or `30M` in presets) | Total training step budget |
| `--learning-rate F` | float | `0.0003` | Optimizer learning rate |
| `--lr-schedule` | `constant` \| `linear` | `constant` | Learning rate annealing schedule |
| `--n-steps N` | integer | `512` | Rollout length per environment per update |
| `--batch-size N` | integer | `64` | PPO mini-batch size |
| `--n-epochs N` | integer | `10` | Optimization epochs per rollout |
| `--gamma F` | float | `0.99` | Discount factor |
| `--ent-coef F` | float | `0.005` | Entropy coefficient for exploration |
| `--torch-device` | `cpu` \| `cuda` | `cpu` | Device for neural network tensor calculations |

### Model Saving & Resuming Flags
| Flag | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `--save-interval-minutes F` | float | `5.0` | Wall-clock interval between rolling checkpoints |
| `--keep-checkpoints N` | integer | `20` | Maximum rolling checkpoints to retain in `checkpoints/` |
| `--top-k N` | integer | `5` | Number of best-performing models to keep in `best/` |
| `--best-window N` | integer | `20` | Trailing episodes averaged into the ranking score |
| `--resume PATH` | string / path | None | Continue from a `.zip` model (or `latest_best`) |
| `--run-name LABEL` | string | None | Custom tag appended to `models/run_<timestamp>_<label>/` |
| `--no-wipe-logs` | boolean flag | `False` | Retain previous contents of `MM_GYm/logs/` |

---

## Output Directories

* **Models**: `MM_GYm/models/run_<timestamp>/`
  * `best/`: Top-K models ranked by rolling mean reward (e.g. `best_r+15.2689_step000015660.zip`).
  * `checkpoints/`: Rolling timed backups (e.g. `ckpt_step000012800_r+0.4173.zip`).
  * `final_step...zip` / `stopped_step...zip` / `interrupted_step...zip`: Final model on run exit.
  * `run_config.json`: Full reproducibility snapshot (CLI arguments, git HEAD, env config).
* **Logs & Metrics**: `MM_GYm/logs/`
  * `progress.csv`: Tabular metrics recorded on every policy rollout.
  * `monitor.csv`: Per-episode returns, episode lengths, and wall-clock times.
  * TensorBoard event files: View with `tensorboard --logdir MM_GYm/logs`.
