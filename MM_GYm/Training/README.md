# PPO Training — Mini Militia

Stable-Baselines3 PPO training for the Gymnasium environment in
[`../python_gym_Wrapper/`](../python_gym_Wrapper/).

Everything runs from **`MM_GYm/`**, so that both `Training` and
`python_gym_Wrapper` resolve as top-level packages — the same convention
`run_gym_demo.bat` uses. `run_training.bat` handles that (and the adb port
forward) for you.

---

## Quick start

### Ready-to-Run Batch Launchers (in [`Training/batFiles/`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/Training/batFiles)):

* **[`batFiles/run_all_devices_headless.bat`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/Training/batFiles/run_all_devices_headless.bat)** — Runs parallel PPO training across all connected ADB devices in headless mode (30,000,000 steps).
* **[`batFiles/run_all_devices_render.bat`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/Training/batFiles/run_all_devices_render.bat)** — Runs parallel training across all devices with game rendering visible on screen.
* **[`batFiles/resume_latest_best.bat`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/Training/batFiles/resume_latest_best.bat)** — Automatically picks up the latest best model from `models/` and resumes training across all devices.
* **[`batFiles/stop_training.bat`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/Training/batFiles/stop_training.bat)** — Cleanly stops the current active training run after the current step and saves the final model.
* **[`batFiles/evaluate_latest_best.bat`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/Training/batFiles/evaluate_latest_best.bat)** — Evaluates the latest best-performing checkpoint against the scripted baseline.
* **[`batFiles/run_training.bat`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/Training/batFiles/run_training.bat)** — Core flexible batch runner accepting custom CLI arguments.



---

### Command-Line Usage:

Exercise the whole stack with no device and no game attached:

```bash
run_training.bat --mock --total-timesteps 8192
```

Train across all attached ADB devices in parallel:

```bash
run_training.bat --all-devices --headless --total-timesteps 30000000
```



Stop a long run cleanly at any time by creating the `STOP` file the startup
banner names — preferable to Ctrl-C, which on a live phone can land inside a
blocking Frida RPC:

```bash
type nul > MM_GYm\models\run_20260823_193000\STOP
```

Evaluate a saved model against the scripted baseline:

```bash
python -m Training.evaluate --model models/run_.../best/best_r+1.2340_step000048640.zip --episodes 5 --compare-baseline
```

---

## What lands where

`MM_GYm/logs/` — **contents deleted at the start of every run** (`--no-wipe-logs`
opts out), so the log directory always describes exactly one run.

```
MM_GYm/logs/
  events.out.tfevents.*     TensorBoard scalars (only if tensorboard is installed)
  progress.csv              every metric, always written
  log.txt                   human-readable dump
  monitor.csv               one row per episode, from the Monitor wrapper
```

`MM_GYm/models/run_<timestamp>[_<name>]/` — a **new folder per run**, never wiped.

```
MM_GYm/models/run_20260823_193000/
  run_config.json                             CLI args + env config + git HEAD
  checkpoints/
    ckpt_step000012800_r+0.4173.zip           timed; newest 20 kept
  best/
    best_r+3.4127_step000048640.zip           top 5 by reward
  final_step000200000_r+2.9981.zip            or stopped_ / interrupted_ / failed_
  STOP                                        only if you created it
```

* **Reward is in every filename**, as `r+0.4173` / `r-1.2500` — signed, fixed
  width, no character Windows forbids. Before the first episode finishes there is
  no return to report and the token reads `rNA`.
* **Checkpoints lead with the step**, because they are a timeline. **Best models
  lead with the reward**, because they are a ranking. A plain directory listing
  then sorts each folder the way you want to read it.
* **`final_` / `stopped_` / `interrupted_` / `failed_` sit at the run root**,
  outside both pruning windows, so the model a run actually ended on is never
  garbage-collected.

### The two model families

| | Trigger | Retention | Ranked by |
|---|---|---|---|
| `checkpoints/` | every `--save-interval-minutes` (default 5) of **wall clock** | newest `--keep-checkpoints` (default 20) | not ranked — a timeline |
| `best/` | an episode ends and the score beats the worst kept | top `--top-k` (default 5) | mean return over the last `--best-window` (default 20) episodes |

The interval is wall-clock rather than step-based because throughput swings with
whatever the game is doing, so a step-based interval would space saves unevenly
in real time.

**Best models are ranked on a rolling mean, not a single episode.** This reward is
event-dominated — `w_kill=2.0` per kill against `w_shot_cost=0.01` per shot — and
enemy spawn positions are random, so one favourable spawn can move an episode
return by +2.0 with no change in policy quality. Ranking on single episodes fills
`best/` with those flukes. The single-episode peak is still reported in the
end-of-run summary and logged as a scalar; it just doesn't trigger a save.

Two guards keep the five slots from collapsing onto one moment of training:
`--best-min-episodes` (default 5) stops a half-full window setting a high-water
mark no later policy can beat, and a cooldown of one PPO rollout spaces the saves
out.

---

## Metrics

Beyond SB3's own `rollout/` and `train/` series, the environment's `info` dict is
forwarded into the logger:

| Series | What it tells you |
|---|---|
| `reward/damage`, `reward/kill`, `reward/damage_taken`, `reward/death`, `reward/shot_cost`, `reward/idle`, `reward/time` | which term is actually driving the reward. They sum to `reward/total`. |
| `reward/clip_rate` | fraction of steps hitting the ±10 reward clamp. Non-zero means the reward scale is wrong and PPO is seeing a flattened signal. |
| `game/kills`, `game/damage_dealt`, `game/damage_taken`, `game/shots`, `game/accuracy`, `game/deaths`, `game/idle_ticks`, `game/ticks` | per-episode combat totals — the actual task performance. |
| **`env/tick_slip_abs`** | **the data-quality canary.** See below. |
| `env/timed_out_rate` | the JS watchdog firing. Rising means the game is paused or at a menu, and every transition after that is meaningless. |
| `env/player_hp`, `env/enemy_count`, `env/min_enemy_distance`, `env/dt_mean` | state sanity. |
| `env/crashes_total` | cumulative native crashes the environment recovered from. |
| `episode/end_*` | fraction of recent episodes ending each way. Under the default config this should be ~1.0 for `end_max_episode_steps`. |

**On `env/tick_slip_abs`:** the environment uses *soft* synchronisation by
default — the game thread keeps running between steps — and tick slip is the gap
between the physics ticks actually observed and `--frame-skip`. Persistently
non-zero slip means the transitions being learned from are not the ones the
reward describes, which no amount of hyperparameter tuning will fix. `--hard-sync`
is the remedy. Watch the *absolute* series: the signed mean can cancel to nearly
zero while the game drifts badly in both directions.

### TensorBoard

TensorBoard is optional. The trainer probes for it at startup and adds the
TensorBoard writer only if it is importable; `progress.csv` is written either way,
so no metric is ever lost. Once installed it is picked up automatically, with no
code change.

```bash
tensorboard --logdir MM_GYm\logs
```

`tensorboard` is listed in [`../../python/requirements.txt`](../../python/requirements.txt)
but is **not installed** in `python/.venv-frida-16` — install it through your
internal artifact registry.

### Two reward windows, on purpose

The reward in a filename is the mean over `--best-window` episodes (default 20).
SB3's `rollout/ep_rew_mean` is the mean over `stats_window_size` episodes
(default 100). Early in a run, when the policy is improving quickly, these differ
substantially — the filename is the more responsive number. That is intended, not
a bug.

---

## Defaults worth knowing about

Full reasoning for every value lives in [`hyperparams.py`](hyperparams.py). The
ones that depart from Stable-Baselines3' defaults:

| | Default here | SB3 default | Why |
|---|---|---|---|
| `n_steps` | 512 | 2048 | At ~5 env steps/s, 2048 means 5–10 minutes per gradient update. |
| `max_episode_steps` | 300 | 1000 (env's) | 1000 steps is >3 min per episode, so the 20-episode window would take over an hour to fill. |
| `log_std_init` | **-1.0** | 0.0 | The most consequential one. SB3's default gives σ=1.0 on a ±1 action box, and samples are hard-clipped into it — so a large share of actions in every dimension are clipped, aim jitters violently, and the gradient is taken w.r.t. an action never applied. exp(-1)≈0.37 keeps most samples in-box. |
| `ent_coef` | 0.005 | 0.0 | With no entropy bonus the Gaussian over this 5-D action space collapses early and the agent stops probing aim/shoot combinations. |
| `net_arch` | 128,128 | 64,64 | Five nearest-enemy slots have to be compared against each other; 64 is thin. |
| `device` | `cpu` | `auto` | CPU is genuinely faster for a network this small. |

Deliberately **not** used:

* **`VecNormalize`** — observations arrive already normalised and clipped to
  [-10,10] by `ObservationEncoder`, and reward is already clipped to [-10,10] on a
  scale where a typical step lands in [-1,1]. Adding it would layer moving
  statistics that must be saved and restored *alongside* every checkpoint, and
  `PPO.load()` alone would silently restore a model into mismatched
  normalisation. Leaving it out is what makes each of the 25+ saved files
  independently loadable.
* **`TimeLimit`** — `MiniMilitiaEnv` truncates internally at `max_episode_steps`
  and correctly reports `truncated` rather than `terminated`, so a bootstrapping
  learner already handles the cut. A wrapper would add a second, competing limit.
* **Multiple environments across multiple devices** — You can run N parallel
  environments using `--num-envs N` or `--hosts host1 host2 ...` (backed by
  `SubprocVecEnv`), provided each environment connects to its own independent
  game process / device port (or mock instance). Two environments must not
  connect to the *same* game process, because the JS instrumentation maintains
  a single global step counter per game process.

### Episodes end by truncation unless you ask otherwise

The default config is god mode: `infinite_health=True`, `terminate_on_death=False`.
The −5 death penalty therefore never fires and every episode is a flat
`max_episode_steps` truncation, so the agent optimises damage and kills but never
learns survival. `--terminate-on-death` flips **both** toggles together (they are
mutually exclusive and the env rejects the invalid pair), giving real terminations
and variable-length episodes. Worth turning on once damage-seeking behaviour has
emerged.

---

## Resuming

```bash
run_training.bat --resume models/run_.../final_step000200000_r+2.9981.zip --total-timesteps 50000
```

Three behaviours to be aware of:

* **`--total-timesteps` means "this many *more* steps"** on a resume — SB3 adds it
  to the restored `num_timesteps`.
* **PPO hyperparameter flags are ignored.** `PPO.load` rebuilds the model from the
  archive's own hyperparameters; overriding them mid-run would silently change the
  optimisation problem with no record in the original run's config. Environment,
  saving, and logging flags still apply.
* **A resume gets its own new `models/run_*/` folder, and still wipes `logs/`.**
  Pass `--no-wipe-logs` to keep the previous run's curves for comparison.

---

## Flags

`--help` is authoritative and shows live defaults. The commonly used ones:

**Environment & Devices** — `--num-envs`, `--hosts`, `--host`, `--vec-env-type {auto,subproc,dummy}`,
`--mock`, `--device {gadget,usb,remote,local}`, `--process`, `--frame-skip`,
`--max-episode-steps`, `--game-speed`, `--hard-sync`, `--headless` / `--render-game`,
`--weapon`, `--max-enemies`, `--terminate-on-death`, `--verbose-env`


**PPO** — `--total-timesteps`, `--n-steps`, `--batch-size`, `--n-epochs`,
`--learning-rate`, `--lr-schedule {constant,linear}`, `--gamma`, `--gae-lambda`,
`--clip-range`, `--ent-coef`, `--vf-coef`, `--max-grad-norm`, `--target-kl`,
`--log-std-init`, `--net-arch`, `--use-sde`, `--torch-device`, `--seed`

**Saving and logging** — `--save-interval-minutes`, `--keep-checkpoints`,
`--top-k`, `--best-window`, `--best-min-episodes`, `--best-min-improvement`,
`--run-name`, `--no-wipe-logs`, `--log-interval`

**Resume** — `--resume PATH`

Note `--device` is the *Frida* connection kind; the torch device is
`--torch-device`. The collision is easy to trip over.

---

## Reading the dashboard

* `rollout/ep_rew_mean` should trend up. It updates only when episodes complete,
  and with `n_steps=512` against 300-step episodes not every rollout contains a
  boundary.
* `train/*` scalars land **one dump behind** `rollout/*` — SB3 dumps the logger
  before running `train()`. Not a misalignment bug.
* `train/std` falling means the policy is committing. Falling to near zero early
  means exploration collapsed; raise `--ent-coef`.
* `train/clip_fraction` sustained above ~0.3, or `train/approx_kl` above ~0.03,
  means updates are too aggressive — lower `--clip-range` or set `--target-kl 0.03`.
* `train/explained_variance` climbing off zero means the value function is
  learning. Stuck at zero is the one case where reward normalisation is worth
  reconsidering.
* Compare against the scripted baseline regularly. A trained policy *below*
  `aim_at_nearest` points at the reward, the action mapping, or a missing
  instrumentation hook — not at needing more timesteps.

---

## Verifying a change

No game or device needed:

```bash
python -m Training.train_ppo --mock --total-timesteps 6144 --n-steps 256 --max-episode-steps 60 --save-interval-minutes 0.05 --keep-checkpoints 3 --top-k 2 --best-min-episodes 3
```

Then confirm `logs/` was repopulated, `checkpoints/` holds exactly 3 files,
`best/` at most 2, and a `final_*.zip` plus `run_config.json` sit at the run root.

The environment's own suite (103 tests, no game needed) should still pass:

```bash
python -m unittest discover -s python_gym_Wrapper -p "test_*.py"
```

On the live game, run `run_gym_demo.bat --episodes 1 --steps 200 --headless`
**first** and check its INSTRUMENTATION block — never debug the trainer and the
instrumentation at the same time. Every reward hook should read `OK`; a missing
damage or kill hook means that reward term stays at zero for the whole run and
the agent will dutifully optimise the truncated reward function without
complaint.
