#!/usr/bin/env python3
"""PPO training entrypoint for the Mini Militia Gymnasium environment.

Run from ``MM_GYm/`` so that ``python_gym_Wrapper`` resolves as a top-level
package -- the same convention ``run_gym_demo.bat`` uses::

    # Smoke-test the whole stack with no device and no game attached:
    python -m Training.train_ppo --mock --total-timesteps 8192

    # Train against the live game (gadget on tcp:27042, match already running):
    python -m Training.train_ppo --total-timesteps 200000 --headless

    # Continue from a saved checkpoint:
    python -m Training.train_ppo --resume models/run_.../final_step....zip

Or just use ``Training\\run_training.bat``, which handles the adb port forward and
locates the virtualenv for you.

What this script arranges
-------------------------
* ``MM_GYm/logs/`` is cleared at startup so the log directory always describes
  exactly one run (``--no-wipe-logs`` to opt out).
* ``MM_GYm/models/run_<timestamp>/`` is created fresh for every run, holding
  timed rolling checkpoints, top-K best models, and a ``run_config.json``
  reproducibility record.
* ``progress.csv`` is always written, and the TensorBoard writer is added on top
  when the package is importable -- so the run always produces metrics, and
  installing TensorBoard later needs no code change.
* Every exit path -- clean finish, Ctrl-C, or an unrecoverable bridge failure --
  saves a final model and closes the environment.

Design notes worth knowing before changing anything
---------------------------------------------------
**One environment only.** ``n_envs=1`` is not a simplification, it is a hard
constraint: the JS side keeps a single global step accumulator inside the game
process, so two environments stepping the same process interleave and corrupt
each other's observations.

**No ``TimeLimit`` wrapper.** ``MiniMilitiaEnv`` truncates internally at
``cfg.env.max_episode_steps`` and reports ``truncated`` (never a bogus
``terminated``), so a bootstrapping learner already handles the cut correctly.
Adding ``TimeLimit`` on top would only introduce a second, competing limit.

**No ``VecNormalize``.** Observations arrive already normalised and clipped to
[-10, 10] by ``ObservationEncoder``, and reward is already clipped to [-10, 10]
on a scale where a typical step lands in [-1, 1]. Adding VecNormalize would
layer moving statistics that have to be saved and restored *alongside* every
checkpoint -- and ``PPO.load()`` alone would silently restore a model into
mismatched normalisation. Leaving it out is what makes each of the 25+ saved
files independently loadable, which is the entire point of the checkpoint scheme.

**Closing the environment matters.** An orphaned Frida script left loaded in the
game process double-hooks on the next attach, quietly corrupting the event
counters the reward is built from. The ``finally`` block is not decoration.
"""

from __future__ import annotations

import argparse
import importlib.util
import os
import sys
import time
from typing import Any, Dict, Optional, Tuple

# Allow both `python -m Training.train_ppo` (from MM_GYm/) and
# `python Training/train_ppo.py`, mirroring the guard in demo.py. The second form
# needs MM_GYm/ on sys.path before the relative imports below can resolve.
if __package__ in (None, ""):  # pragma: no cover - import-path plumbing
    sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
    __package__ = "Training"

from stable_baselines3 import PPO                                    # noqa: E402
from stable_baselines3.common.callbacks import CallbackList           # noqa: E402
from stable_baselines3.common.logger import configure                 # noqa: E402
from stable_baselines3.common.monitor import Monitor                  # noqa: E402

from python_gym_Wrapper import (                                      # noqa: E402
    BridgeError,
    MiniMilitiaConfig,
    MiniMilitiaEnv,
    MockBridge,
    WEAPON_TYPES,
)

from . import hyperparams as hp                                       # noqa: E402
from .callbacks import (                                              # noqa: E402
    EpisodeReturnTracker,
    MiniMilitiaMetricsCallback,
    StopFileCallback,
    TimedCheckpointCallback,
    TopKBestModelCallback,
    mean_recent_return,
)
from .run_manager import RunPaths, final_filename, format_reward      # noqa: E402

RULE = "=" * 78


# =============================================================================
# CLI
# =============================================================================

def parse_args(argv: Optional[list] = None) -> argparse.Namespace:
    """Define and parse the command line.

    Defaults come from :mod:`Training.hyperparams`, which documents the reasoning
    behind each one.
    """
    p = argparse.ArgumentParser(
        description="Train a PPO agent on the Mini Militia environment",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )

    # -- environment / connection -----------------------------------------
    env_group = p.add_argument_group("environment")
    env_group.add_argument(
        "--mock", action="store_true",
        help="train against the in-process simulator; no device or game needed")
    env_group.add_argument(
        "--device", choices=["gadget", "usb", "remote", "local"], default="gadget",
        help="how to reach the target process")
    env_group.add_argument("--host", default="127.0.0.1:27042",
                           help="host:port for --device gadget/remote")
    env_group.add_argument("--process", default=None,
                           help="override the process name to attach to")
    env_group.add_argument("--frame-skip", type=int, default=hp.FRAME_SKIP,
                           help="physics ticks each action is held for")
    env_group.add_argument("--max-episode-steps", type=int,
                           default=hp.MAX_EPISODE_STEPS,
                           help="steps before the episode truncates")
    env_group.add_argument("--game-speed", type=float, default=hp.GAME_SPEED,
                           help="timescale multiplier (ignored under --hard-sync)")
    env_group.add_argument(
        "--hard-sync", action="store_true",
        help="freeze the scheduler and release exactly frame_skip ticks per step; "
             "eliminates tick slip at the cost of a hot-path native hook")
    env_group.add_argument("--max-enemies", type=int, default=hp.MAX_ENEMIES,
                           help="enemy slots in the observation (changes obs shape)")
    env_group.add_argument("--weapon", default=hp.WEAPON, choices=sorted(WEAPON_TYPES),
                           help="weapon to spawn with")
    env_group.add_argument(
        "--terminate-on-death", action="store_true",
        help="end episodes on death, enabling the death penalty. Flips "
             "infinite_health off at the same time, since the two are mutually "
             "exclusive. Without this the player is immortal and every episode "
             "is a flat max_episode_steps truncation.")
    # Tri-state, like demo.py: None means "use the training default" so that
    # neither flag being passed does not force a value.
    env_group.add_argument("--render-game", dest="render_game", action="store_true",
                           default=None,
                           help="leave the game rendering itself (slower)")
    env_group.add_argument("--headless", dest="render_game", action="store_false",
                           help="turn the game's rendering off for throughput")
    env_group.add_argument("--verbose-env", action="store_true",
                           help="let the environment print its own diagnostics")

    # -- PPO ---------------------------------------------------------------
    ppo = p.add_argument_group("PPO")
    ppo.add_argument("--total-timesteps", type=int, default=hp.TOTAL_TIMESTEPS)
    ppo.add_argument("--n-steps", type=int, default=hp.N_STEPS,
                     help="rollout length between policy updates")
    ppo.add_argument("--batch-size", type=int, default=hp.BATCH_SIZE)
    ppo.add_argument("--n-epochs", type=int, default=hp.N_EPOCHS)
    ppo.add_argument("--learning-rate", type=float, default=hp.LEARNING_RATE)
    ppo.add_argument("--lr-schedule", choices=["constant", "linear"],
                     default="constant",
                     help="linear anneals the learning rate to zero over the run")
    ppo.add_argument("--gamma", type=float, default=hp.GAMMA)
    ppo.add_argument("--gae-lambda", type=float, default=hp.GAE_LAMBDA)
    ppo.add_argument("--clip-range", type=float, default=hp.CLIP_RANGE)
    ppo.add_argument("--ent-coef", type=float, default=hp.ENT_COEF)
    ppo.add_argument("--vf-coef", type=float, default=hp.VF_COEF)
    ppo.add_argument("--max-grad-norm", type=float, default=hp.MAX_GRAD_NORM)
    ppo.add_argument(
        "--target-kl", type=float, default=hp.TARGET_KL,
        help="early-stop the epoch loop once the approximate KL exceeds this. "
             "Worth setting (~0.03) on this environment: a rollout costs minutes "
             "of wall clock, so one destructive update is expensive to undo")
    ppo.add_argument(
        "--log-std-init", type=float, default=hp.LOG_STD_INIT,
        help="initial log std of the Gaussian policy; -1.0 gives sigma~=0.37, "
             "against SB3's 0.0 default of sigma=1.0 which clips heavily on a "
             "+/-1 action box")
    ppo.add_argument("--net-arch", default=",".join(str(w) for w in hp.NET_ARCH["pi"]),
                     help="hidden layer widths, e.g. 128,128")
    ppo.add_argument("--use-sde", action="store_true",
                     help="state-dependent exploration (see hyperparams.py)")
    ppo.add_argument("--torch-device", default=hp.TORCH_DEVICE,
                     help="cpu is faster than cuda for a network this small")
    ppo.add_argument("--seed", type=int, default=0)

    # -- saving / logging --------------------------------------------------
    io = p.add_argument_group("saving and logging")
    io.add_argument("--save-interval-minutes", type=float,
                    default=hp.SAVE_INTERVAL_MINUTES,
                    help="wall-clock minutes between rolling checkpoints")
    io.add_argument("--keep-checkpoints", type=int, default=hp.KEEP_CHECKPOINTS,
                    help="how many rolling checkpoints to retain")
    io.add_argument("--top-k", type=int, default=hp.TOP_K,
                    help="how many best-reward models to retain")
    io.add_argument("--best-window", type=int, default=hp.BEST_WINDOW,
                    help="episodes averaged into the best-model ranking score")
    io.add_argument("--best-min-episodes", type=int, default=hp.BEST_MIN_EPISODES,
                    help="episodes before the best-model tracker arms")
    io.add_argument("--best-min-improvement", type=float, default=0.0,
                    help="margin a candidate must beat the worst kept score by")
    io.add_argument("--run-name", default=None,
                    help="label appended to the timestamped run folder")
    io.add_argument("--no-wipe-logs", action="store_true",
                    help="keep the existing contents of MM_GYm/logs")
    io.add_argument("--log-interval", type=int, default=hp.LOG_INTERVAL,
                    help="rollouts between logger dumps")

    # -- resume ------------------------------------------------------------
    p.add_argument("--resume", default=None, metavar="PATH",
                   help="continue training from a saved .zip. Hyperparameters are "
                        "restored from the file, so PPO flags are ignored; the "
                        "run gets its own fresh models/run_* folder.")

    return p.parse_args(argv)


# =============================================================================
# Environment construction
# =============================================================================

def build_config(a: argparse.Namespace) -> MiniMilitiaConfig:
    """Translate CLI arguments into a :class:`MiniMilitiaConfig`.

    Follows the pattern established in ``demo.build_config``: mutate the
    dataclass fields, then call ``__post_init__()`` by hand to re-run validation.
    Dataclass validation only fires at construction, so without that call an
    invalid combination would sail through and fail much later, deep inside a
    step.
    """
    cfg = MiniMilitiaConfig()
    e = cfg.env

    e.device = a.device
    e.host = a.host
    if a.process:
        e.process = a.process

    e.frame_skip = a.frame_skip
    e.max_episode_steps = a.max_episode_steps
    e.game_speed = a.game_speed
    e.hard_sync = a.hard_sync
    e.spawn_weapon_type = WEAPON_TYPES[a.weapon]
    e.verbose = a.verbose_env

    # Training defaults to the game's own rendering off for the throughput win;
    # --render-game / --headless override in either direction.
    e.disable_rendering = (hp.DISABLE_RENDERING if a.render_game is None
                           else not a.render_game)

    if a.terminate_on_death:
        # These two are mutually exclusive and EnvConfig rejects the combination,
        # so flip both together rather than leaving the user to discover it.
        e.infinite_health = False
        e.terminate_on_death = True

    e.__post_init__()

    cfg.obs.max_enemies = a.max_enemies
    cfg.obs.max_enemy_scan = max(cfg.obs.max_enemy_scan, a.max_enemies)
    cfg.obs.__post_init__()

    return cfg


def make_env(a: argparse.Namespace,
             paths: RunPaths) -> Tuple[Monitor, MiniMilitiaEnv, MiniMilitiaConfig]:
    """Build, connect, and wrap the environment.

    ``Monitor`` is applied explicitly rather than relying on SB3's auto-wrap, for
    two reasons: it guarantees ``model.ep_info_buffer`` populates (which is where
    both saving callbacks read the reward that goes into filenames), and it lets
    the per-episode CSV land in the log directory of our choosing.

    Connecting here rather than lazily on the first ``reset()`` means a missing
    game or an unloaded gadget fails immediately with a useful message, instead
    of surfacing from inside ``learn()`` after the run directory already exists.

    Returns:
        ``(monitored_env, raw_env, config)``. Closing the monitor closes the raw
        environment; the raw handle is returned only for instrumentation reporting.
    """
    cfg = build_config(a)
    # MockBridge is an in-process double with toy physics that exercises the real
    # encoder and reward engine. Note that passing bridge= makes the environment
    # not own it, so env.close() will not close it -- harmless here, since there
    # is no external resource to release.
    bridge = MockBridge(cfg, seed=a.seed) if a.mock else None

    env = MiniMilitiaEnv(cfg, bridge=bridge)
    env.connect()

    monitored = Monitor(env, filename=str(paths.monitor_csv))
    return monitored, env, cfg


def print_environment_report(env: MiniMilitiaEnv, mock: bool) -> None:
    """Print what the instrumentation actually resolved.

    Worth reading before every live run: a missing damage or kill hook means the
    corresponding reward term stays at zero for the whole run, and the agent will
    dutifully optimise the truncated reward function without complaint.
    """
    info = env.instrumentation_info
    caps: Dict[str, Any] = info.get("capabilities", {}) or {}

    print(RULE)
    print("ENVIRONMENT" + ("  (mock -- toy physics, no game attached)" if mock else ""))
    print(RULE)
    print(f"  observation space : {env.observation_space}")
    print(f"  action space      : {env.action_space}  "
          f"[move_x, move_y, aim_x, aim_y, shoot]")
    print(f"  frame skip        : {env.cfg.env.frame_skip} ticks/step"
          f"{'  (hard sync)' if env.cfg.env.hard_sync else '  (soft sync)'}")
    print(f"  episode cap       : {env.cfg.env.max_episode_steps} steps")
    print(f"  terminate on death: {env.cfg.env.terminate_on_death}"
          f"   (infinite_health={env.cfg.env.infinite_health})")
    if not mock:
        print(f"  tick source       : {info.get('tick_source')}")
        print("  reward signals:")
        for label, key in (("damage (Enemy::addDamage)", "damage_hook"),
                           ("kills  (awardPoints)", "kill_hook"),
                           ("shots  (weaponDidFire)", "shot_hook"),
                           ("player HP", "player_hp")):
            print(f"    {'OK     ' if caps.get(key) else 'MISSING'}  {label}")
    print()


# =============================================================================
# Model construction
# =============================================================================

def build_logger(paths: RunPaths, has_tensorboard: bool):
    """Configure the SB3 logger explicitly, rather than via ``tensorboard_log=``.

    Going through PPO's ``tensorboard_log`` argument has two problems, both
    verified against SB3 2.9.0:

    * ``utils.configure_logger`` selects ``["stdout", "tensorboard"]`` and **never
      includes csv**, so the machine-readable log would be silently lost whenever
      TensorBoard *is* installed -- exactly the case where you would want it.
    * It raises ``ImportError`` from inside ``learn()`` when TensorBoard is
      absent, i.e. minutes into setup and possibly after the game has already been
      reset.

    Choosing the format strings here makes the TensorBoard-missing case a
    one-element list decision instead of a crash, and always writes
    ``progress.csv`` so a run stays fully analysable either way. It also drops
    SB3's ``PPO_1``/``PPO_2`` auto-numbering, so the log directory maps one-to-one
    onto the run -- which is what makes the per-run wipe meaningful.

    Args:
        paths: Run paths, supplying the log directory.
        has_tensorboard: Whether the ``tensorboard`` package is importable.

    Returns:
        A configured SB3 ``Logger``.
    """
    formats = ["stdout", "csv", "log"]
    if has_tensorboard:
        formats.append("tensorboard")
    return configure(folder=str(paths.logs_dir), format_strings=formats)


def build_model(a: argparse.Namespace, env: Monitor) -> PPO:
    """Construct a fresh PPO model, or load one for resumption.

    The logger is *not* set here -- the caller applies :func:`build_logger`
    afterwards, unconditionally. That ordering matters: ``_custom_logger`` is in
    SB3's excluded save params, so a resumed model comes back with no custom
    logger and must have one re-applied. Keeping it in one place after both
    branches means the fresh and resumed paths cannot drift apart.

    Args:
        a: Parsed CLI arguments.
        env: The Monitor-wrapped environment.

    Returns:
        A PPO instance.
    """
    if a.resume:
        print(f"[*] resuming from {a.resume}")
        # PPO.load rebuilds the model from the archive's own hyperparameters, so
        # the PPO flags on this invocation are deliberately not applied --
        # overriding them mid-run would silently change the optimisation problem
        # without any record of it in the original run's config.
        return PPO.load(a.resume, env=env, device=a.torch_device)

    learning_rate = (hp.linear_schedule(a.learning_rate)
                     if a.lr_schedule == "linear" else a.learning_rate)

    return PPO(
        hp.POLICY,
        env,
        learning_rate=learning_rate,
        n_steps=a.n_steps,
        batch_size=a.batch_size,
        n_epochs=a.n_epochs,
        gamma=a.gamma,
        gae_lambda=a.gae_lambda,
        clip_range=a.clip_range,
        ent_coef=a.ent_coef,
        vf_coef=a.vf_coef,
        max_grad_norm=a.max_grad_norm,
        target_kl=a.target_kl,
        use_sde=a.use_sde,
        # Must stay >= --best-window so the teardown path's fallback read of
        # ep_info_buffer covers the same window the callbacks used.
        stats_window_size=max(hp.STATS_WINDOW_SIZE, a.best_window),
        policy_kwargs={
            "net_arch": hp.net_arch_from_string(a.net_arch),
            # SB3's default log_std_init=0.0 means sigma=1.0 per dimension on an
            # action space bounded at +/-1, and SB3 hard-clips the Gaussian sample
            # into the box. At sigma=1 a large share of samples in every dimension
            # land outside and get clipped, so early training emits near
            # bang-bang actions, aim jitters wildly, and the gradient is taken
            # with respect to an action that was never actually applied.
            # exp(-1) ~= 0.37 keeps most samples in-box while still exploring.
            "log_std_init": a.log_std_init,
        },
        device=a.torch_device,
        seed=a.seed,
        verbose=1,
    )


def save_final(model: PPO, paths: RunPaths, status: str,
               tracker: EpisodeReturnTracker) -> Optional[str]:
    """Save the end-of-run model at the run root, outside the pruning windows.

    Placed at the run root rather than in ``checkpoints/`` deliberately: the
    rolling window would eventually delete it, and the model a run actually ended
    on is the one you least want garbage-collected. This matters most for
    ``interrupted``: at a handful of steps per second, discarding hours of
    training because someone pressed Ctrl-C would be unacceptable.

    Args:
        model: The trained model.
        paths: Run paths.
        status: ``"final"``, ``"stopped"``, ``"interrupted"``, or ``"failed"``.
        tracker: Shared return tracker, for the filename's reward token. Falls
            back to the model's own buffer if the tracker never saw an episode.

    Returns:
        The filename written, or None if saving failed.
    """
    try:
        reward = tracker.rolling_mean()
        if reward is None:
            reward = mean_recent_return(model, tracker.window)
        path = paths.run_dir / final_filename(status, model.num_timesteps, reward)
        model.save(path)
        print(f"[*] {status} model saved: {path.name}")
        return path.name
    except Exception as exc:  # noqa: BLE001
        # This runs inside a finally block; raising here would mask the original
        # exception that brought us into the teardown path.
        print(f"[warn] could not save the {status} model: {exc}")
        return None


# =============================================================================
# Entrypoint
# =============================================================================

def main(argv: Optional[list] = None) -> int:
    a = parse_args(argv)

    if a.n_steps % a.batch_size != 0:
        print(f"[warn] n_steps={a.n_steps} is not a multiple of "
              f"batch_size={a.batch_size}; the last minibatch of each epoch will "
              f"be short, which biases the gradient slightly.")
    if a.hard_sync and a.game_speed != 1.0:
        print("[warn] --game-speed has no effect under --hard-sync: the fixed dt "
              "released per step is not scaled by the timescale.")

    has_tensorboard = importlib.util.find_spec("tensorboard") is not None
    paths = RunPaths.create(run_name=a.run_name, wipe_logs=not a.no_wipe_logs)

    print(RULE)
    print("MINI MILITIA RL - PPO TRAINING")
    print(RULE)
    print(f"  run          : {paths.run_name}")
    print(f"  models       : {paths.run_dir}")
    print(f"  logs         : {paths.logs_dir}"
          f"{'' if a.no_wipe_logs else '   (contents cleared)'}")
    if has_tensorboard:
        print("  metrics      : TensorBoard + CSV + stdout")
    else:
        print("  metrics      : CSV + stdout")
        print("                 (tensorboard is not installed; install it from "
              "your internal registry\n                 to get the dashboard -- "
              "no code change needed afterwards)")
    print(f"  checkpoints  : every {a.save_interval_minutes:g} min, "
          f"newest {a.keep_checkpoints} kept")
    print(f"  best models  : top {a.top_k} by mean return over "
          f"{a.best_window} episodes")
    eta_hours = a.total_timesteps / hp.EXPECTED_STEPS_PER_SECOND / 3600.0
    print(f"  budget       : {a.total_timesteps:,} steps "
          f"(~{eta_hours:.1f} h at {hp.EXPECTED_STEPS_PER_SECOND:g} steps/s)")
    print()

    # -- environment -------------------------------------------------------
    try:
        env, raw_env, cfg = make_env(a, paths)
    except BridgeError as exc:
        print(f"[-] could not attach to the game: {exc}", file=sys.stderr)
        print("\n    Checklist:", file=sys.stderr)
        print("      * the game is running with the Frida gadget loaded", file=sys.stderr)
        print("      * a match is active, so physics ticks are running", file=sys.stderr)
        print("      * adb forward tcp:27042 tcp:27042 has been run", file=sys.stderr)
        print("\n    Or pass --mock to train against the in-process simulator.",
              file=sys.stderr)
        return 1

    print_environment_report(raw_env, a.mock)

    # -- model -------------------------------------------------------------
    try:
        model = build_model(a, env)
        # Applied unconditionally, and after both the fresh and resumed branches:
        # SB3 excludes the custom-logger flag from saved archives, so a resumed
        # model arrives without one.
        model.set_logger(build_logger(paths, has_tensorboard))
    except Exception:
        env.close()
        raise

    paths.write_run_config({
        "args": vars(a),
        "tensorboard_available": has_tensorboard,
        "observation_shape": list(env.observation_space.shape),
        "action_shape": list(env.action_space.shape),
        "env_config": {
            "env": vars(cfg.env),
            "reward": vars(cfg.reward),
            "obs": vars(cfg.obs),
            "action": vars(cfg.action),
        },
    })

    # -- callbacks ---------------------------------------------------------
    # One tracker shared by both saving callbacks, so the reward written into a
    # filename and the score used to rank it are literally the same number. Its
    # ingest() is idempotent per step, which makes callback ordering irrelevant.
    tracker = EpisodeReturnTracker(window=a.best_window)
    if a.resume:
        # ep_info_buffer survives in the saved archive, so seeding from it means
        # the first post-resume filename carries a real number, not rNA.
        tracker.seed_from(getattr(model, "ep_info_buffer", None))

    checkpoint_cb = TimedCheckpointCallback(
        save_dir=paths.checkpoints_dir,
        tracker=tracker,
        interval_minutes=a.save_interval_minutes,
        keep=a.keep_checkpoints,
    )
    best_cb = TopKBestModelCallback(
        save_dir=paths.best_dir,
        tracker=tracker,
        k=a.top_k,
        min_episodes=a.best_min_episodes,
        min_improvement=a.best_min_improvement,
        # One rollout of cooldown, so the K kept files sample the peak rather
        # than piling onto a single moment of it.
        cooldown_steps=model.n_steps,
    )
    metrics_cb = MiniMilitiaMetricsCallback(episode_window=a.best_window)
    stop_cb = StopFileCallback(stop_file=paths.stop_file)

    print(f"[*] to stop cleanly at any point:  type nul > "
          f"\"{paths.stop_file}\"")
    print()

    # -- train -------------------------------------------------------------
    status = "final"
    started = time.perf_counter()
    try:
        model.learn(
            total_timesteps=a.total_timesteps,
            callback=CallbackList([checkpoint_cb, best_cb, metrics_cb, stop_cb]),
            log_interval=a.log_interval,
            # Resuming continues the step counter and the episode buffer; a fresh
            # run resets both. Note that on a resume --total-timesteps means
            # "this many *more* steps", since SB3 adds it to num_timesteps.
            reset_num_timesteps=not a.resume,
            # tqdm and rich are not installed in this virtualenv, and
            # progress_bar=True would raise ImportError.
            progress_bar=False,
        )
        if stop_cb.triggered:
            status = "stopped"
    except KeyboardInterrupt:
        status = "interrupted"
        print("\n[*] interrupted -- saving the model, do not press Ctrl-C again")
    except BridgeError as exc:
        # BridgeTimeout subclasses BridgeError, so this covers both. The
        # environment already recovers native crashes internally (relaunch via
        # adb, episode reported as truncated with info["crashed"]), so anything
        # reaching here is unrecoverable.
        status = "failed"
        print(f"\n[-] unrecoverable bridge failure: {exc}", file=sys.stderr)
    finally:
        elapsed = time.perf_counter() - started
        save_final(model, paths, status, tracker)
        # Closing releases the Frida session and unloads the injected script. An
        # orphaned script double-hooks on the next attach and quietly corrupts
        # the event counters the reward depends on.
        env.close()

    # -- summary -----------------------------------------------------------
    print()
    print(RULE)
    print(f"RUN {status.upper()}  --  {model.num_timesteps:,} timesteps in "
          f"{elapsed / 60.0:.1f} min "
          f"({model.num_timesteps / max(elapsed, 1e-9):.1f} steps/s)")
    print(RULE)
    print(f"  episodes : {tracker.episodes}")
    best_single = tracker.best_single()
    if best_single is not None:
        print(f"  best single episode : {best_single:+.4f}")
    print(f"  models   : {paths.run_dir}")
    print(f"  logs     : {paths.logs_dir}")

    ranking = best_cb.ranking
    if ranking:
        print(f"  top {len(ranking)} by mean return over {a.best_window} episodes:")
        for rank, (score, path) in enumerate(ranking, start=1):
            print(f"    {rank}. {format_reward(score)}  {path.name}")
    elif tracker.episodes < a.best_min_episodes:
        print(f"  no best models saved -- only {tracker.episodes} of the "
              f"{a.best_min_episodes} episodes needed to arm the tracker completed")
    else:
        print("  no best models saved -- the run ended before a cooldown window "
              "elapsed")

    if has_tensorboard:
        print(f"\n  tensorboard --logdir \"{paths.logs_dir}\"")
    else:
        print(f"\n  metrics: {paths.logs_dir / 'progress.csv'}")

    # A failed bridge is the only outcome worth a non-zero exit: a clean finish,
    # a stop file, and a Ctrl-C are all deliberate endings.
    return 1 if status == "failed" else 0


if __name__ == "__main__":
    raise SystemExit(main())
