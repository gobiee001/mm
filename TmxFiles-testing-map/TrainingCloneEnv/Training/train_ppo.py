"""Standalone PPO training against TrainingCloneEnv.

Self-contained trainer for the in-process clone -- no device, no Frida, no ADB.
Runs unthrottled: the debug renderer is never constructed, so nothing paces the
loop and the sim advances as fast as the CPU allows (roughly 200x realtime on
six workers). The realtime multiplier actually achieved is logged every rollout
as ``clone/realtime_x`` so the speedup is visible rather than assumed.

Usage, from the TrainingCloneEnv directory::

    python -m Training.train_ppo                                # 6 envs, 500k steps
    python -m Training.train_ppo --total-timesteps 2000000
    python -m Training.train_ppo --num-envs 1 --vec dummy       # single process, debuggable
    python -m Training.train_ppo --resume runs/run_.../final.zip

Or use ``Training\\run_training.bat``, which finds a working interpreter for you.

Stop a run cleanly at any time by creating a STOP file in the run directory --
the current rollout finishes, the model is saved, and the workers shut down::

    type nul > runs\\run_<timestamp>\\STOP
"""

from __future__ import annotations

import argparse
from collections import deque
from dataclasses import dataclass
from datetime import datetime
from pathlib import Path
import sys
import time
from typing import Deque, List, Optional, Tuple

# TrainingCloneEnv must be importable before `mmclone` resolves. This runs in the
# parent AND in every spawned SubprocVecEnv worker, because Windows re-imports
# this module in the child to unpickle the env factory below.
_CLONE_ROOT = Path(__file__).resolve().parent.parent
if str(_CLONE_ROOT) not in sys.path:
    sys.path.insert(0, str(_CLONE_ROOT))

from stable_baselines3 import PPO                                      # noqa: E402
from stable_baselines3.common.callbacks import BaseCallback, CallbackList  # noqa: E402
from stable_baselines3.common.logger import configure                  # noqa: E402
from stable_baselines3.common.monitor import Monitor                   # noqa: E402
from stable_baselines3.common.vec_env import (                         # noqa: E402
    DummyVecEnv,
    SubprocVecEnv,
    VecEnv,
)

RULE = "=" * 72


# =============================================================================
# Environment construction
# =============================================================================

@dataclass
class CloneEnvFactory:
    """Picklable env builder, one per worker.

    A module-level dataclass rather than a closure on purpose: Windows spawns
    subprocesses, so SubprocVecEnv has to pickle this and re-import it in the
    child. A lambda or local function would not survive that.
    """

    map_name: str
    tier: int
    seed: int
    frame_skip: int
    max_episode_steps: int
    terminate_on_death: bool
    monitor_path: Optional[str] = None

    def __call__(self) -> Monitor:
        # Order matters: importing mmclone is what puts MM_GYm on sys.path, so
        # python_gym_Wrapper is not importable until after this line. A fresh
        # spawned worker has neither, which is why both imports live in here.
        from mmclone.envs.factory import make_clone_env
        from python_gym_Wrapper.config import MiniMilitiaConfig

        cfg = MiniMilitiaConfig()
        e = cfg.env
        e.frame_skip = self.frame_skip
        e.max_episode_steps = self.max_episode_steps
        if self.terminate_on_death:
            # EnvConfig rejects the combination, so both have to move together.
            e.infinite_health = False
            e.terminate_on_death = True
        e.__post_init__()

        # render_mode stays None: constructing the viewer is what would throttle
        # the loop to wall-clock speed, and it pulls in a display besides.
        env = make_clone_env(
            config=cfg,
            map_name=self.map_name,
            tier=self.tier,
            seed=self.seed,
            render_mode=None,
        )
        return Monitor(env, filename=self.monitor_path)


def build_vec_env(a: argparse.Namespace, run_dir: Path) -> VecEnv:
    factories: List[CloneEnvFactory] = [
        CloneEnvFactory(
            map_name=a.map,
            tier=a.tier,
            seed=a.seed + i * 1000,
            frame_skip=a.frame_skip,
            max_episode_steps=a.max_episode_steps,
            terminate_on_death=a.terminate_on_death,
            monitor_path=str(run_dir / f"monitor_{i}"),
        )
        for i in range(a.num_envs)
    ]

    use_subproc = a.vec == "subproc" or (a.vec == "auto" and a.num_envs > 1)
    return SubprocVecEnv(factories) if use_subproc else DummyVecEnv(factories)


# =============================================================================
# Callbacks
# =============================================================================

class ThroughputCallback(BaseCallback):
    """Logs env-steps/s and the realtime multiplier the run is achieving.

    One env step covers ``frame_skip`` ticks of ``dt``, so the multiplier is just
    steps/s x that. It is the number worth watching: the live game manages about
    0.8x realtime, so this is the whole reason the clone exists.
    """

    def __init__(self, sim_seconds_per_step: float) -> None:
        super().__init__()
        self.sim_seconds_per_step = sim_seconds_per_step
        self._t0 = 0.0

    def _on_training_start(self) -> None:
        self._t0 = time.perf_counter()

    def _on_step(self) -> bool:
        return True

    def _on_rollout_end(self) -> None:
        elapsed = time.perf_counter() - self._t0
        if elapsed <= 0.0:
            return
        sps = self.num_timesteps / elapsed
        self.logger.record("clone/env_steps_per_sec", round(sps, 1))
        self.logger.record("clone/realtime_x", round(sps * self.sim_seconds_per_step, 1))


class StopFileCallback(BaseCallback):
    """Ends training when a STOP file appears, so a long run can be cut cleanly."""

    def __init__(self, stop_file: Path) -> None:
        super().__init__()
        self.stop_file = stop_file
        self.triggered = False

    def _on_step(self) -> bool:
        # Checked per rollout, not per step: a stat() on every step would be a
        # syscall in the hot loop for a file that almost never exists.
        return True

    def _on_rollout_end(self) -> None:
        if self.stop_file.exists():
            self.triggered = True
            print(f"\n[*] {self.stop_file.name} found -- stopping after this update")

    def _on_training_end(self) -> None:
        pass

    @property
    def should_stop(self) -> bool:
        return self.triggered


class _StopChecker(BaseCallback):
    """Bridges StopFileCallback's flag into the value SB3 actually reads."""

    def __init__(self, stop_cb: StopFileCallback) -> None:
        super().__init__()
        self.stop_cb = stop_cb

    def _on_step(self) -> bool:
        return not self.stop_cb.should_stop


class SaveCallback(BaseCallback):
    """Timed checkpoints, keeping only the newest few."""

    def __init__(self, save_dir: Path, interval_minutes: float, keep: int) -> None:
        super().__init__()
        self.save_dir = save_dir
        self.interval_s = interval_minutes * 60.0
        self.keep = keep
        self._last = 0.0

    def _on_training_start(self) -> None:
        self.save_dir.mkdir(parents=True, exist_ok=True)
        self._last = time.perf_counter()

    def _on_step(self) -> bool:
        return True

    def _on_rollout_end(self) -> None:
        now = time.perf_counter()
        if now - self._last < self.interval_s:
            return
        self._last = now
        path = self.save_dir / f"ckpt_{self.num_timesteps:09d}.zip"
        self.model.save(path)
        print(f"[ckpt] {path.name}")
        saved = sorted(self.save_dir.glob("ckpt_*.zip"))
        for old in saved[: max(0, len(saved) - self.keep)]:
            old.unlink(missing_ok=True)


class BestModelCallback(BaseCallback):
    """Keeps the K best models, ranked by mean return over a window of episodes.

    Episode returns are read out of Monitor's ``info["episode"]`` rather than from
    ``model.ep_info_buffer``: SB3 refreshes that buffer *after* callbacks run, so
    inside one it is always an episode behind.

    Ranking on a rolling mean rather than a single episode stops one lucky spawn
    from taking a slot ahead of a genuinely better policy.
    """

    def __init__(self, save_dir: Path, k: int, window: int, min_episodes: int,
                 cooldown_steps: int) -> None:
        super().__init__()
        self.save_dir = save_dir
        self.k = k
        self.min_episodes = min_episodes
        self.cooldown_steps = cooldown_steps
        self.returns: Deque[float] = deque(maxlen=window)
        self.episodes = 0
        self.ranking: List[Tuple[float, Path]] = []
        self._last_save_step = -(10 ** 12)

    def _on_training_start(self) -> None:
        self.save_dir.mkdir(parents=True, exist_ok=True)

    def _on_step(self) -> bool:
        for info in self.locals.get("infos", []) or []:
            ep = info.get("episode") if isinstance(info, dict) else None
            if ep is not None:
                self.returns.append(float(ep["r"]))
                self.episodes += 1
        return True

    def _on_rollout_end(self) -> None:
        if self.episodes < self.min_episodes or not self.returns:
            return
        # One rollout of cooldown, so the K slots sample the peak rather than
        # piling up on a single good moment.
        if self.num_timesteps - self._last_save_step < self.cooldown_steps:
            return

        score = sum(self.returns) / len(self.returns)
        if len(self.ranking) >= self.k and score <= self.ranking[-1][0]:
            return

        path = self.save_dir / f"best_r{score:+.4f}_step{self.num_timesteps:09d}.zip"
        self.model.save(path)
        self._last_save_step = self.num_timesteps
        self.ranking.append((score, path))
        self.ranking.sort(key=lambda t: t[0], reverse=True)

        for _, dropped in self.ranking[self.k:]:
            dropped.unlink(missing_ok=True)
        self.ranking = self.ranking[: self.k]
        print(f"[best] {path.name}  (mean over {len(self.returns)} eps, "
              f"{len(self.ranking)}/{self.k} kept)")


# =============================================================================
# CLI
# =============================================================================

def parse_args(argv: Optional[list] = None) -> argparse.Namespace:
    p = argparse.ArgumentParser(
        description="PPO training against the in-process Mini Militia clone",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )

    env = p.add_argument_group("environment")
    env.add_argument("--map", default="survival_new", help="TMX map name")
    env.add_argument("--tier", type=int, default=128, choices=[64, 128, 256],
                     help="asset tier setting the world pixel scale")
    env.add_argument("--num-envs", "-n", type=int, default=6,
                     help="parallel environments (one process each under subproc)")
    env.add_argument("--vec", choices=["auto", "subproc", "dummy"], default="auto",
                     help="subproc scales across cores; dummy is single-process and debuggable")
    env.add_argument("--frame-skip", type=int, default=10,
                     help="physics ticks held per action")
    env.add_argument("--max-episode-steps", type=int, default=1000)
    env.add_argument("--terminate-on-death", action="store_true",
                     help="end the episode on death (also turns infinite_health off)")

    ppo = p.add_argument_group("PPO")
    ppo.add_argument("--total-timesteps", type=int, default=50000000)
    ppo.add_argument("--n-steps", type=int, default=512, help="rollout length per env")
    ppo.add_argument("--batch-size", type=int, default=256)
    ppo.add_argument("--n-epochs", type=int, default=10)
    ppo.add_argument("--learning-rate", type=float, default=3e-4)
    ppo.add_argument("--gamma", type=float, default=0.99)
    ppo.add_argument("--gae-lambda", type=float, default=0.95)
    ppo.add_argument("--clip-range", type=float, default=0.2)
    ppo.add_argument("--ent-coef", type=float, default=0.01,
                     help="non-zero on purpose: the Gaussian collapses early without it")
    ppo.add_argument("--target-kl", type=float, default=0.03)
    ppo.add_argument("--log-std-init", type=float, default=-1.0,
                     help="sigma~=0.37; SB3's 0.0 default clips heavily on a +/-1 action box")
    ppo.add_argument("--net-arch", default="256,256")
    ppo.add_argument("--device", default="cpu",
                     help="cpu beats cuda for a net this small")
    ppo.add_argument("--seed", type=int, default=0)

    io = p.add_argument_group("saving")
    io.add_argument("--out", default=None, help="run directory (default: Training/runs/run_<ts>)")
    io.add_argument("--save-interval-minutes", type=float, default=5.0,
                    help="wall-clock minutes between timed checkpoints")
    io.add_argument("--keep-checkpoints", type=int, default=5,
                    help="rolling timed checkpoints retained (newest wins)")
    io.add_argument("--top-k", type=int, default=20,
                    help="best models retained, ranked by mean episode return")
    io.add_argument("--best-window", type=int, default=20,
                    help="episodes averaged into the ranking score")
    io.add_argument("--best-min-episodes", type=int, default=5,
                    help="episodes that must finish before best-tracking arms")
    io.add_argument("--resume", default=None, metavar="PATH",
                    help="continue from a saved .zip; its hyperparameters win")

    return p.parse_args(argv)


# =============================================================================
# Entrypoint
# =============================================================================

def main(argv: Optional[list] = None) -> int:
    a = parse_args(argv)

    run_dir = (Path(a.out) if a.out
               else _CLONE_ROOT / "Training" / "runs" / f"run_{datetime.now():%Y%m%d_%H%M%S}")
    run_dir.mkdir(parents=True, exist_ok=True)
    stop_file = run_dir / "STOP"

    rollout = a.n_steps * a.num_envs
    if rollout % a.batch_size != 0:
        print(f"[warn] rollout ({a.n_steps} x {a.num_envs} = {rollout}) is not a multiple of "
              f"batch_size={a.batch_size}; the last minibatch of each epoch will be short")

    vec_env = build_vec_env(a, run_dir)

    # dt is fixed by the sim, so one env step is always frame_skip * dt of game time.
    from mmclone.config.space import SpaceConfig
    sim_seconds_per_step = a.frame_skip * SpaceConfig().dt

    print(RULE)
    print("TRAININGCLONEENV -- PPO")
    print(RULE)
    print(f"  map / tier   : {a.map} @ {a.tier} px per tile")
    print(f"  parallel envs: {a.num_envs} ({vec_env.__class__.__name__})")
    print(f"  rendering    : off (unthrottled -- the sim runs as fast as the CPU allows)")
    print(f"  frame skip   : {a.frame_skip} ticks = {sim_seconds_per_step * 1000:.1f} ms game time per step")
    print(f"  rollout      : {rollout} steps per update, batch {a.batch_size}")
    print(f"  budget       : {a.total_timesteps:,} steps")
    print(f"  checkpoints  : every {a.save_interval_minutes:g} min, newest {a.keep_checkpoints} kept")
    print(f"  best models  : top {a.top_k} by mean return over {a.best_window} episodes")
    print(f"  run dir      : {run_dir}")
    print(f"  stop cleanly : type nul > \"{stop_file}\"")
    print(RULE)
    print()

    try:
        if a.resume:
            print(f"[*] resuming from {a.resume}")
            model = PPO.load(a.resume, env=vec_env, device=a.device)
        else:
            widths = [int(w) for w in a.net_arch.split(",") if w.strip()]
            model = PPO(
                "MlpPolicy",
                vec_env,
                learning_rate=a.learning_rate,
                n_steps=a.n_steps,
                batch_size=a.batch_size,
                n_epochs=a.n_epochs,
                gamma=a.gamma,
                gae_lambda=a.gae_lambda,
                clip_range=a.clip_range,
                ent_coef=a.ent_coef,
                target_kl=a.target_kl,
                policy_kwargs={"net_arch": {"pi": widths, "vf": widths},
                               "log_std_init": a.log_std_init},
                device=a.device,
                seed=a.seed,
                verbose=1,
            )
        model.set_logger(configure(folder=str(run_dir), format_strings=["stdout", "csv"]))

        stop_cb = StopFileCallback(stop_file)
        best_cb = BestModelCallback(
            save_dir=run_dir / "best",
            k=a.top_k,
            window=a.best_window,
            min_episodes=a.best_min_episodes,
            cooldown_steps=rollout,
        )
        callbacks = CallbackList([
            ThroughputCallback(sim_seconds_per_step),
            SaveCallback(run_dir / "checkpoints", a.save_interval_minutes, a.keep_checkpoints),
            best_cb,
            stop_cb,
            _StopChecker(stop_cb),
        ])

        status = "final"
        started = time.perf_counter()
        try:
            model.learn(total_timesteps=a.total_timesteps, callback=callbacks,
                        reset_num_timesteps=not a.resume, progress_bar=False)
            if stop_cb.should_stop:
                status = "stopped"
        except KeyboardInterrupt:
            status = "interrupted"
            print("\n[*] interrupted -- saving, do not press Ctrl-C again")

        elapsed = time.perf_counter() - started
        final_path = run_dir / f"{status}_{model.num_timesteps:09d}.zip"
        model.save(final_path)

        sps = model.num_timesteps / max(elapsed, 1e-9)
        print()
        print(RULE)
        print(f"RUN {status.upper()} -- {model.num_timesteps:,} steps in {elapsed / 60.0:.1f} min")
        print(RULE)
        print(f"  throughput : {sps:.0f} env-steps/s across {a.num_envs} envs")
        print(f"  speed      : {sps * sim_seconds_per_step:.0f}x realtime "
              f"({sps * sim_seconds_per_step / 60.0:.1f} game-minutes per wall-second)")
        print(f"  episodes   : {best_cb.episodes}")
        print(f"  model      : {final_path.name}")
        print(f"  metrics    : {run_dir / 'progress.csv'}")
        if best_cb.ranking:
            print(f"  best {len(best_cb.ranking)} of {a.top_k} kept in {run_dir / 'best'}:")
            for rank, (score, path) in enumerate(best_cb.ranking[:5], start=1):
                print(f"    {rank}. {score:+.4f}  {path.name}")
            if len(best_cb.ranking) > 5:
                print(f"    ... and {len(best_cb.ranking) - 5} more")
        elif best_cb.episodes < a.best_min_episodes:
            print(f"  no best models -- only {best_cb.episodes} of the "
                  f"{a.best_min_episodes} episodes needed to arm the tracker finished")
    finally:
        vec_env.close()

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
