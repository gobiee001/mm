"""Stable-Baselines3 callbacks for Mini Militia PPO training.

:class:`EpisodeReturnTracker`
    Rolling window of finished-episode returns. Shared by both saving callbacks
    so the reward in a filename and the score used to rank it are the same
    number.

:class:`TimedCheckpointCallback`
    Saves the model on a **wall-clock** interval and keeps only the newest N
    files. Time-based rather than step-based because this environment's
    throughput swings with whatever the game is doing, so a step-based interval
    would space saves unevenly in real time -- and "save every few minutes" is
    the actual requirement.

:class:`TopKBestModelCallback`
    Maintains the K highest-scoring models seen during the run, pruning the
    displaced file on each insertion.

:class:`MiniMilitiaMetricsCallback`
    Forwards the environment's rich ``info`` dict into the SB3 logger. Without
    it, TensorBoard shows generic PPO curves and none of the game-specific
    signal -- kills, damage, accuracy, tick slip -- that tells you whether
    training is actually working.

:class:`StopFileCallback`
    Cooperative shutdown: create a ``STOP`` file in the run directory and
    training finishes cleanly at the next check.

A note on the ranking metric
----------------------------
Both saving callbacks put a reward in the filename, and both take it from
:meth:`EpisodeReturnTracker.rolling_mean` -- the mean return over the last
``window`` episodes, not the single best episode. This environment's reward is
event-dominated (``w_kill=2.0`` per kill against a ``w_shot_cost`` of 0.01 per
shot) and enemy spawn positions are random, so one favourable spawn can move an
episode return by +2.0 with no change in policy quality. Ranking on single
episodes fills the "best" folder with those flukes. A rolling mean costs a little
responsiveness and buys files whose names mean something.

Verified SB3 2.9.0 behaviours this module depends on
----------------------------------------------------
* ``OnPolicyAlgorithm.collect_rollouts`` calls ``callback.on_step()`` at
  ``on_policy_algorithm.py:224`` but ``self._update_info_buffer(infos, dones)``
  only at line 227. So inside ``_on_step`` the model's ``ep_info_buffer`` does
  **not** yet contain the episode that just ended. That is why
  :class:`EpisodeReturnTracker` parses ``self.locals["infos"]`` itself instead of
  reading the model's buffer.
* ``deque(maxlen=N).append()`` silently discards the evicted element, so the
  checkpoint-path window uses an unbounded deque and an explicit prune loop --
  otherwise the path of the file we need to delete is lost and files leak.
* ``model.save()`` only appends ``.zip`` when the path has no suffix, so every
  path built here already ends in ``.zip``.
* Returning ``False`` from ``_on_step`` aborts training cleanly (the learn loop
  breaks, ``_on_training_end`` still runs). Only :class:`StopFileCallback` ever
  does that; the others must always return ``True``.
"""

from __future__ import annotations

import heapq
import time
from collections import deque
from pathlib import Path
from typing import Any, Deque, Dict, Iterable, List, Optional, Tuple

import numpy as np
from stable_baselines3.common.callbacks import BaseCallback

from .run_manager import best_filename, checkpoint_filename

# Numeric components of ``info["reward"]``, as produced by
# ``RewardBreakdown.as_dict()``. Penalties arrive already sign-flipped negative,
# so these can be averaged and displayed as-is and they sum to ``total``.
_REWARD_COMPONENTS: Tuple[str, ...] = (
    "damage", "kill", "damage_taken", "death", "shot_cost", "idle", "not_shooting", "time",
)

# Scalar fields of ``info["episode_totals"]`` worth charting per episode.
_EPISODE_TOTALS: Tuple[str, ...] = (
    "kills", "damage_dealt", "damage_taken", "shots",
    "deaths", "idle_ticks", "no_shoot_ticks", "ticks", "accuracy",
)

# Every value ``info["end_reason"]`` can take, from
# ``MiniMilitiaEnv._episode_flags`` plus the crash-recovery path. Enumerated
# explicitly so a reason that never fires still charts as a flat zero -- which is
# informative -- instead of being absent from the dashboard.
_END_REASONS: Tuple[str, ...] = (
    "max_episode_steps", "player_death", "game_ended",
    "tick_stall", "game_crashed_recovered",
)


def _monitor_episode(info: Any) -> Optional[Dict[str, Any]]:
    """Return ``Monitor``'s episode summary from an info dict, or None.

    ``Monitor`` injects ``info["episode"] = {"r": ..., "l": ..., "t": ...}`` on
    the final step of each episode, which is the cheapest reliable
    episode-boundary signal available inside a callback.

    The ``isinstance`` check is deliberate, not defensive noise:
    ``MiniMilitiaEnv.reset()`` also returns an ``info["episode"]`` key, and there
    it is an **int** episode counter. Today those two never meet -- ``DummyVecEnv``
    routes reset info to ``self.reset_infos``, which SB3 never feeds to callbacks
    -- but reading ``["r"]`` off an int is one refactor away from a TypeError.
    """
    if not isinstance(info, dict):
        return None
    episode = info.get("episode")
    return episode if isinstance(episode, dict) else None


class EpisodeReturnTracker:
    """Rolling window of finished-episode returns, harvested from ``infos``.

    Deliberately does **not** read ``model.ep_info_buffer``: SB3 updates that
    buffer *after* invoking callbacks (see the module docstring), so inside
    ``_on_step`` it is always one episode behind. Since both saving callbacks key
    their filenames off this number, being an episode stale would put a reward in
    a filename that does not describe the model in it.

    Args:
        window: How many trailing episode returns to keep.
    """

    def __init__(self, window: int = 20):
        self.window = max(1, window)
        self._returns: Deque[float] = deque(maxlen=self.window)
        self._episodes = 0
        self._best: Optional[float] = None
        # Guards against double-counting: several callbacks share one tracker and
        # each calls ingest() on the same step, so the first call for a given step
        # does the work and the rest replay its result. That makes CallbackList
        # ordering irrelevant -- and it is why the repeat call returns the
        # remembered count rather than 0: every caller needs to know an episode
        # ended here, not just whichever one happened to run first.
        self._last_step = -1
        self._last_found = 0

    def ingest(self, infos: Iterable[Any], num_timesteps: int) -> int:
        """Harvest any episodes that finished on this step.

        Idempotent per step: calling it repeatedly for the same
        ``num_timesteps`` records the episodes once but reports the same count to
        every caller.

        Args:
            infos: The per-environment info dicts from ``self.locals["infos"]``.
            num_timesteps: The model's step counter, used for idempotence.

        Returns:
            How many episodes finished on this step.
        """
        if num_timesteps == self._last_step:
            return self._last_found
        self._last_step = num_timesteps

        found = 0
        for info in infos or []:
            episode = _monitor_episode(info)
            if episode is None or "r" not in episode:
                continue
            value = float(episode["r"])
            self._returns.append(value)
            self._episodes += 1
            self._best = value if self._best is None else max(self._best, value)
            found += 1

        self._last_found = found
        return found

    def seed_from(self, ep_info_buffer: Any) -> None:
        """Pre-fill the window from a restored ``ep_info_buffer``.

        ``ep_info_buffer`` is not in SB3's excluded save params, so it survives in
        the saved archive and is restored by ``PPO.load()``. Seeding from it means
        the first filename written after a resume carries a real number instead of
        ``rNA``.
        """
        if not ep_info_buffer:
            return
        for episode in list(ep_info_buffer)[-self.window:]:
            if isinstance(episode, dict) and "r" in episode:
                value = float(episode["r"])
                self._returns.append(value)
                self._episodes += 1
                self._best = value if self._best is None else max(self._best, value)

    @property
    def episodes(self) -> int:
        """Total episodes seen, not capped by the window."""
        return self._episodes

    def rolling_mean(self) -> Optional[float]:
        """Mean return over the window, or None if no episode has finished."""
        if not self._returns:
            return None
        return float(np.mean(self._returns))

    def best_single(self) -> Optional[float]:
        """Highest single-episode return seen, or None."""
        return self._best


def mean_recent_return(model: Any, window: int = 20) -> Optional[float]:
    """Mean episode return from ``model.ep_info_buffer``.

    Safe to use *outside* the rollout loop -- notably in the teardown path, where
    the buffer is fully up to date and no tracker may be in scope. Inside a
    callback's ``_on_step`` use :class:`EpisodeReturnTracker` instead, for the
    ordering reason described in the module docstring.

    Returns:
        The mean return, or None if no episode has finished yet.
    """
    buffer = getattr(model, "ep_info_buffer", None)
    if not buffer:
        return None
    returns = [ep["r"] for ep in list(buffer)[-window:]
               if isinstance(ep, dict) and "r" in ep]
    if not returns:
        return None
    return float(np.mean(returns))


class TimedCheckpointCallback(BaseCallback):
    """Save the model every ``interval_minutes`` and keep only the newest ``keep``.

    Args:
        save_dir: Directory to write checkpoints into.
        tracker: Shared return tracker supplying the reward for each filename.
        interval_minutes: Wall-clock minutes between saves.
        keep: How many checkpoints to retain. Older files are deleted as new ones
            land, so the directory holds a bounded, sliding view of the run.
        save_on_training_end: Save once more when training stops, so a run
            shorter than one interval still leaves a checkpoint behind. Note this
            fires on the normal and callback-aborted paths but *not* when an
            exception propagates out of ``learn()`` -- the caller's ``finally``
            owns that case.
        prefix: Filename prefix.
        verbose: 1 prints a line per save and per prune, 0 stays quiet.
    """

    def __init__(self, save_dir: Path, tracker: EpisodeReturnTracker,
                 interval_minutes: float = 5.0, keep: int = 20,
                 save_on_training_end: bool = True,
                 prefix: str = "ckpt", verbose: int = 1):
        super().__init__(verbose)
        if interval_minutes <= 0:
            raise ValueError("interval_minutes must be > 0")
        if keep < 1:
            raise ValueError("keep must be >= 1")

        self.save_dir = Path(save_dir)
        self.tracker = tracker
        self.interval_s = interval_minutes * 60.0
        self.keep = keep
        self.save_on_training_end = save_on_training_end
        self.prefix = prefix

        # Unbounded on purpose -- see the module docstring on deque(maxlen=).
        self._saved: Deque[Path] = deque()
        self._next_at = 0.0

    def _on_training_start(self) -> None:
        self.save_dir.mkdir(parents=True, exist_ok=True)
        # Anchor the timer here, not in __init__: on a live device the model can
        # be constructed a minute or more before learn() actually starts.
        # monotonic(), not time(), so a clock adjustment mid-run cannot trigger a
        # burst of saves or a long silence.
        self._next_at = time.monotonic() + self.interval_s
        if self.verbose:
            print(f"[ckpt] every {self.interval_s / 60.0:.2g} min, keeping the "
                  f"newest {self.keep}, into {self.save_dir}")

    def _on_step(self) -> bool:
        self.tracker.ingest(self.locals.get("infos"), self.num_timesteps)

        # Runs on every environment step, so the common path is one clock read.
        now = time.monotonic()
        if now < self._next_at:
            return True

        # Re-anchor from now rather than adding the interval to the old deadline:
        # a long blocking call (a crash recovery can take ~8 s, a reconnect more)
        # must not queue up a burst of catch-up saves.
        self._next_at = now + self.interval_s
        self._save()
        return True

    def _on_training_end(self) -> None:
        if self.save_on_training_end:
            self._save()

    def _save(self) -> None:
        """Write a checkpoint and prune anything past the ``keep`` window."""
        reward = self.tracker.rolling_mean()
        path = self.save_dir / checkpoint_filename(
            self.num_timesteps, reward, self.prefix)

        # The path already ends in ".zip", which SB3 leaves alone, so what lands
        # on disk is exactly the path recorded here -- which is what makes the
        # prune bookkeeping below exact.
        self.model.save(path)
        self._saved.append(path)

        if self.verbose:
            print(f"[ckpt] step {self.num_timesteps} -> {path.name}")

        while len(self._saved) > self.keep:
            stale = self._saved.popleft()
            try:
                stale.unlink(missing_ok=True)
                if self.verbose:
                    print(f"[ckpt] pruned {stale.name}")
            except OSError as exc:
                # A pruner must never kill a multi-hour run, and on Windows a
                # file can be transiently locked by an indexer or a viewer.
                print(f"[warn] could not prune {stale.name}: {exc}")


class TopKBestModelCallback(BaseCallback):
    """Keep the K best models of the run, ranked by mean recent episode return.

    The tracker is a min-heap of ``(score, sequence, path)``. A min-heap is
    exactly the right structure: ``heap[0]`` is the *worst* of the models
    currently kept, which is both the entry a candidate must beat and the entry to
    evict when it does. The monotonic ``sequence`` counter breaks score ties so
    tuple comparison never falls through to comparing ``Path`` objects.

    Args:
        save_dir: Directory to write best models into.
        tracker: Shared return tracker supplying the ranking score.
        k: How many models to retain.
        min_episodes: Episodes that must complete before the tracker arms. A
            half-full window can read unrepresentatively high and set a
            high-water mark no later policy can beat, wasting all K slots on the
            first minutes of training.
        min_improvement: A candidate must beat the worst kept score by at least
            this margin. A second lever against slot churn; 0.0 disables it.
        cooldown_steps: Minimum timesteps between two best-model saves. Because
            the score is a rolling mean, consecutive episodes near a peak produce
            near-identical scores that each beat the previous worst -- without a
            cooldown all K slots collapse onto a single moment in training
            instead of sampling it. One PPO rollout is a sensible value.
        prefix: Filename prefix.
        verbose: 1 prints a line per save and eviction.
    """

    def __init__(self, save_dir: Path, tracker: EpisodeReturnTracker,
                 k: int = 5, min_episodes: int = 5,
                 min_improvement: float = 0.0, cooldown_steps: int = 0,
                 prefix: str = "best", verbose: int = 1):
        super().__init__(verbose)
        if k < 1:
            raise ValueError("k must be >= 1")

        self.save_dir = Path(save_dir)
        self.tracker = tracker
        self.k = k
        self.min_episodes = max(1, min_episodes)
        self.min_improvement = max(0.0, min_improvement)
        self.cooldown_steps = max(0, cooldown_steps)
        self.prefix = prefix

        self._heap: List[Tuple[float, int, Path]] = []
        self._sequence = 0
        self._last_save_step = -1

    def _on_training_start(self) -> None:
        self.save_dir.mkdir(parents=True, exist_ok=True)
        if self.verbose:
            print(f"[best] top {self.k} by mean return over "
                  f"{self.tracker.window} episodes "
                  f"(arms after {self.min_episodes}), into {self.save_dir}")

    def _on_step(self) -> bool:
        # Evaluate on episode boundaries only. Scoring every step would be both
        # wasteful and meaningless -- the rolling mean cannot change mid-episode.
        finished = self.tracker.ingest(self.locals.get("infos"), self.num_timesteps)
        if finished:
            self._consider()
        return True

    def _consider(self) -> None:
        """Score the current policy and save it if it belongs in the top K."""
        if self.tracker.episodes < self.min_episodes:
            return
        if (self.cooldown_steps
                and self._last_save_step >= 0
                and self.num_timesteps - self._last_save_step < self.cooldown_steps):
            return

        score = self.tracker.rolling_mean()
        if score is None:
            return

        if len(self._heap) >= self.k:
            worst = self._heap[0][0]
            if score <= worst + self.min_improvement:
                return

        self._insert(score)

    def _insert(self, score: float) -> None:
        """Save a new best model, evicting the worst kept one if the heap is full."""
        path = self.save_dir / best_filename(self.num_timesteps, score, self.prefix)
        self.model.save(path)

        self._sequence += 1
        heapq.heappush(self._heap, (score, self._sequence, path))
        self._last_save_step = self.num_timesteps

        if self.verbose:
            print(f"[best] step {self.num_timesteps} -> {path.name} "
                  f"({min(len(self._heap), self.k)}/{self.k} slots filled)")

        while len(self._heap) > self.k:
            _, _, evicted = heapq.heappop(self._heap)
            try:
                evicted.unlink(missing_ok=True)
                if self.verbose:
                    print(f"[best] evicted {evicted.name}")
            except OSError as exc:
                print(f"[warn] could not evict {evicted.name}: {exc}")

    @property
    def ranking(self) -> List[Tuple[float, Path]]:
        """Kept models as ``(score, path)``, best first."""
        return [(score, path)
                for score, _, path in sorted(self._heap, key=lambda e: -e[0])]


class MiniMilitiaMetricsCallback(BaseCallback):
    """Forward the environment's ``info`` dict into the SB3 logger.

    ``MiniMilitiaEnv`` reports far more per step than the scalar reward -- the
    reward broken into components, per-episode combat totals, and the
    instrumentation health signals. None of it reaches TensorBoard unless
    something records it, which is this callback's entire purpose.

    Two aggregation regimes, for a reason:

    * **Per-step scalars** go through ``logger.record_mean``, which maintains an
      incremental mean per key and is cleared on every ``dump``. Recording every
      step therefore yields exactly "mean over this rollout" with no bookkeeping
      here.
    * **Per-episode totals** only exist on a terminal step, so ``record_mean``
      would divide by step count instead of episode count. They are buffered in
      bounded deques and emitted as means from :meth:`_on_rollout_end`, which
      lands them in the logger just before SB3's per-rollout dump.

    The metric worth watching first is ``env/tick_slip_abs``. The environment uses
    *soft* synchronisation by default -- the game thread keeps running between
    steps -- and tick slip is the difference between the physics ticks actually
    observed and ``frame_skip``. Persistently non-zero slip means the transitions
    being learned from are not the ones the reward describes, which no amount of
    hyperparameter tuning will fix; ``--hard-sync`` is the remedy. The signed mean
    is logged too, but it can cancel to nearly zero while the game drifts badly in
    both directions, so the absolute value is the honest one.

    Args:
        episode_window: Episodes retained for the per-episode means.
        verbose: Unused beyond BaseCallback's own bookkeeping.
    """

    def __init__(self, episode_window: int = 20, verbose: int = 0):
        super().__init__(verbose)
        self.episode_window = max(1, episode_window)
        self._episode_stats: Dict[str, Deque[float]] = {}
        self._end_reasons: Deque[str] = deque(maxlen=self.episode_window)
        # Cumulative, not windowed: a crash is rare and permanently interesting.
        self._crashes = 0

    def _push_episode(self, key: str, value: float) -> None:
        bucket = self._episode_stats.get(key)
        if bucket is None:
            bucket = self._episode_stats[key] = deque(maxlen=self.episode_window)
        bucket.append(float(value))

    def _on_step(self) -> bool:
        for info in self.locals.get("infos") or []:
            if not isinstance(info, dict):
                continue

            # --- reward components, already sign-flipped by the environment ---
            breakdown = info.get("reward")
            if isinstance(breakdown, dict):
                for name in _REWARD_COMPONENTS:
                    if name in breakdown:
                        self.logger.record_mean(f"reward/{name}", float(breakdown[name]))
                if "total" in breakdown:
                    self.logger.record_mean("reward/total", float(breakdown["total"]))
                # 'clipped' is a bool. A non-zero clip rate means the reward is
                # saturating the +/-10 clamp and PPO is seeing a flattened
                # signal -- worth its own panel.
                self.logger.record_mean("reward/clip_rate",
                                        1.0 if breakdown.get("clipped") else 0.0)

            # --- instrumentation health -----------------------------------
            if "tick_slip" in info:
                slip = float(info["tick_slip"])
                self.logger.record_mean("env/tick_slip", slip)
                self.logger.record_mean("env/tick_slip_abs", abs(slip))
            if "timed_out" in info:
                # The most important health metric on device: rising means the
                # game is paused or at a menu, and every transition after that
                # point is meaningless.
                self.logger.record_mean("env/timed_out_rate",
                                        1.0 if info["timed_out"] else 0.0)
            for key, metric in (("player_hp", "env/player_hp"),
                                ("enemy_count", "env/enemy_count"),
                                ("dt_mean", "env/dt_mean"),
                                ("idle_ticks", "env/idle_ticks"),
                                ("no_shoot_ticks", "env/no_shoot_ticks"),
                                ("engaged_ticks", "env/engaged_ticks")):
                if key in info:
                    self.logger.record_mean(metric, float(info[key]))
            # -1.0 is the environment's "no enemy in range" sentinel, not a
            # distance; averaging it in would silently bias the series.
            distance = info.get("min_enemy_distance")
            if distance is not None and float(distance) >= 0:
                self.logger.record_mean("env/min_enemy_distance", float(distance))
            if info.get("crashed"):
                self._crashes += 1

            # --- per-episode combat totals, read on the terminal step ------
            if _monitor_episode(info) is not None:
                totals = info.get("episode_totals")
                if isinstance(totals, dict):
                    for name in _EPISODE_TOTALS:
                        if name in totals:
                            self._push_episode(f"game/{name}", totals[name])
                self._end_reasons.append(str(info.get("end_reason", "unknown")))

        return True

    def _on_rollout_end(self) -> None:
        """Emit the per-episode aggregates just before SB3's per-rollout dump."""
        for key, values in self._episode_stats.items():
            if values:
                self.logger.record(key, float(np.mean(values)))

        # End reasons as fractions of the recent episode window: an easy read on
        # whether episodes end the way the config intends. Under the default
        # god-mode config this should be ~1.0 for max_episode_steps and 0.0
        # everywhere else; anything else is worth investigating.
        total = len(self._end_reasons)
        if total:
            for reason in _END_REASONS:
                share = sum(1 for r in self._end_reasons if r == reason) / total
                self.logger.record(f"episode/end_{reason}", share)

        self.logger.record("env/crashes_total", self._crashes)


class StopFileCallback(BaseCallback):
    """Stop training cleanly when a sentinel file appears.

    On a live phone, Ctrl-C can land inside a blocking Frida RPC, which makes the
    shutdown path messier than it needs to be. Returning ``False`` from
    ``_on_step`` instead breaks SB3's learn loop cleanly: ``_on_training_end``
    runs, the final save happens on the normal path, and no exception is raised.

    To use it, create the file the run banner names::

        type nul > MM_GYm\\models\\run_.../STOP

    Args:
        stop_file: Path that triggers the stop when it exists.
        check_every: Steps between existence checks. A stat call per step would
            be wasteful; a few hundred steps is a couple of minutes at most.
        verbose: 1 prints a line when the stop fires.
    """

    def __init__(self, stop_file: Path, check_every: int = 100, verbose: int = 1):
        super().__init__(verbose)
        self.stop_file = Path(stop_file)
        self.check_every = max(1, check_every)
        self.triggered = False
        self._counter = 0

    def _on_step(self) -> bool:
        self._counter += 1
        if self._counter % self.check_every:
            return True
        if self.stop_file.exists():
            self.triggered = True
            if self.verbose:
                print(f"\n[stop] {self.stop_file.name} found -- finishing cleanly")
            return False
        return True
