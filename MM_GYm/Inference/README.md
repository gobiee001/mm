# Mini Militia — Inference Engine

Dedicated runtime for executing and observing trained Stable-Baselines3 PPO models on Mini Militia.

---

## Quick Start

### 1. Ready-to-Run Batch Launchers (`Inference/batFiles/`)

* **[`run_inference.bat`](batFiles/run_inference.bat)** — Runs inference on your primary phone/emulator using the latest best model from `models/` with game rendering visible.
* **[`run_inference_continuous.bat`](batFiles/run_continuous.bat)** — Runs endless continuous play.
* **[`run_inference_all_devices.bat`](batFiles/run_all_devices.bat)** — Runs inference across all connected ADB devices.
* **[`run_mock_inference.bat`](batFiles/run_mock.bat)** — Runs inference in the in-process mock simulator (no device or game needed).

---

## Command-Line Usage

From repository root (`MM_GYm/`):

```bash
# Auto-detect latest best model and play 5 episodes:
python -m Inference.infer

# Continuous autonomous play:
python -m Inference.infer --continuous

# Explicit model path:
python -m Inference.infer --model models/run_20260828_173351/best/best_r-21.3492_step000014400.zip

# List all discovered models across training runs:
python -m Inference.infer --list-models

# Play in mock simulator with live HUD:
python -m Inference.infer --mock --episodes 3
```

---

## Live Console Telemetry (HUD)

While running, the inference engine outputs real-time step statistics:
```
[Ep 01 | Step 0142] Move: (+0.45, -0.12) | Aim: (+0.92, +0.38) | FIRE [!] | HP:  85 | Rew: +0.25 (Total:  +14.5) | 59.8 FPS
```
