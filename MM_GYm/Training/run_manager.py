"""Filesystem layout for a training run: log wiping, run folders, model filenames.

Every path decision in the training stack lives here so that ``train_ppo.py`` and
the callbacks never build paths by hand. The layout produced is::

    MM_GYm/
      logs/                                       <- wiped at the start of each run
        PPO_1/                                    <- TensorBoard event files (if installed)
        progress.csv                              <- SB3 CSV writer
        monitor.csv                               <- Monitor wrapper, per-episode rows
      models/
        run_20260823_193000/                      <- one folder per run
          run_config.json                         <- args + resolved hyperparams + git HEAD
          checkpoints/
            ckpt_step000012800_r+0.4173.zip       <- timed, rolling: newest N kept
          best/
            best_r+3.4127_step000048640.zip       <- top-K by rolling-mean return
          final_step000200000_r+2.9981.zip        <- or interrupted_… / failed_…

Two filename conventions, chosen so that a plain directory listing sorts the way
you would want to read each folder:

* Checkpoints lead with the zero-padded step, because they are a *timeline*.
* Best models lead with the signed reward, because they are a *ranking*.

The reward token is ``f"r{value:+.4f}"`` -- signed, fixed width, and free of any
character Windows forbids in a filename. Before the first episode completes there
is no return to report yet, and the token becomes ``rNA``.
"""

from __future__ import annotations

import json
import os
import shutil
import subprocess
from dataclasses import dataclass
from datetime import datetime
from pathlib import Path
from typing import Any, Dict, Optional

# --- Anchor every path to MM_GYm/, two levels up from this file ---------------
# Training/run_manager.py -> Training/ -> MM_GYm/
MM_GYM_DIR: Path = Path(__file__).resolve().parent.parent
LOGS_DIR: Path = MM_GYM_DIR / "logs"
MODELS_DIR: Path = MM_GYM_DIR / "models"

# Zero-padding for the step counter in filenames. Nine digits covers a billion
# timesteps, which is far beyond anything this environment's throughput allows,
# and keeps lexical ordering identical to chronological ordering.
_STEP_DIGITS = 9


# =============================================================================
# Filename formatting
# =============================================================================

def format_reward(reward: Optional[float]) -> str:
    """Format a reward into a filesystem-safe filename token.

    Args:
        reward: Mean episode return, or None when no episode has finished yet.

    Returns:
        ``"r+0.4173"``, ``"r-1.2500"``, or ``"rNA"`` when ``reward`` is None.
    """
    if reward is None:
        return "rNA"
    return f"r{reward:+.4f}"


def checkpoint_filename(step: int, reward: Optional[float], prefix: str = "ckpt") -> str:
    """Build a rolling-checkpoint filename: step first, so listings read as a timeline."""
    return f"{prefix}_step{step:0{_STEP_DIGITS}d}_{format_reward(reward)}.zip"


def best_filename(step: int, reward: Optional[float], prefix: str = "best") -> str:
    """Build a best-model filename: reward first, so listings read as a ranking."""
    return f"{prefix}_{format_reward(reward)}_step{step:0{_STEP_DIGITS}d}.zip"


def final_filename(status: str, step: int, reward: Optional[float]) -> str:
    """Build the end-of-run filename.

    Args:
        status: How the run ended -- ``"final"``, ``"interrupted"``, or ``"failed"``.
        step: Total timesteps completed.
        reward: Mean episode return over the recent window, if known.
    """
    return f"{status}_step{step:0{_STEP_DIGITS}d}_{format_reward(reward)}.zip"


# =============================================================================
# Directory helpers
# =============================================================================

def wipe_directory(target: Path, expected_name: str) -> int:
    """Delete the *contents* of a directory, leaving the directory itself in place.

    Guarded deliberately: this is the one function in the training stack that
    deletes files the user did not name, so it refuses to run unless the resolved
    directory has the basename we expect and sits inside ``MM_GYm/``. Getting a
    path wrong here would be expensive, and a cheap assertion removes the class
    of accident entirely.

    On Windows a running TensorBoard holds open handles on the event files it is
    serving, so deletion can fail with ``PermissionError``. That is a nuisance,
    not a reason to abort a training run, so such failures are counted and
    reported rather than raised.

    Args:
        target: Directory whose children should be removed.
        expected_name: Basename ``target`` must have, e.g. ``"logs"``.

    Returns:
        Number of entries that could not be deleted.

    Raises:
        ValueError: If ``target`` is not the expected directory, or lies outside
            ``MM_GYm/``.
    """
    resolved = target.resolve()

    if resolved.name != expected_name:
        raise ValueError(
            f"refusing to wipe {resolved}: expected a directory named "
            f"{expected_name!r}, got {resolved.name!r}"
        )
    if MM_GYM_DIR not in resolved.parents:
        raise ValueError(f"refusing to wipe {resolved}: outside {MM_GYM_DIR}")

    resolved.mkdir(parents=True, exist_ok=True)

    failures = 0
    for entry in resolved.iterdir():
        try:
            # is_dir() follows symlinks, so check for a link first and unlink it
            # rather than recursing into whatever it points at.
            if entry.is_symlink() or entry.is_file():
                entry.unlink()
            elif entry.is_dir():
                shutil.rmtree(entry)
        except OSError as exc:
            failures += 1
            print(f"[warn] could not delete {entry.name}: {exc}")

    if failures:
        print(f"[warn] {failures} entry/entries in {resolved.name}/ are locked "
              f"(a running TensorBoard holds its event files open on Windows); "
              f"continuing anyway.")
    return failures


def git_head() -> Optional[str]:
    """Return the current git commit hash, or None if unavailable.

    Recorded in ``run_config.json`` so a checkpoint can be traced back to the code
    that produced it. Failure is entirely expected (no git on PATH, not a
    repository, a detached worktree) and is never fatal.
    """
    try:
        out = subprocess.run(
            ["git", "rev-parse", "HEAD"],
            cwd=str(MM_GYM_DIR),
            capture_output=True,
            text=True,
            timeout=5,
            check=False,
        )
    except (OSError, subprocess.SubprocessError):
        return None
    return out.stdout.strip() or None


# =============================================================================
# RunPaths
# =============================================================================

@dataclass(frozen=True)
class RunPaths:
    """Resolved paths for one training run.

    Construct with :meth:`create`, which also performs the side effects (wiping
    the log directory, creating the run folders). The instance itself is frozen
    and carries no behaviour beyond formatting the paths it owns.
    """

    run_name: str
    """Folder name for this run, e.g. ``"run_20260823_193000"``."""

    logs_dir: Path
    """Shared log directory (``MM_GYm/logs``). Wiped at the start of each run, so
    SB3's TensorBoard subdirectory counter restarts cleanly at ``PPO_1``."""

    run_dir: Path
    """This run's model folder (``MM_GYm/models/<run_name>``)."""

    checkpoints_dir: Path
    """Timed rolling checkpoints."""

    best_dir: Path
    """Top-K best-reward models."""

    @classmethod
    def create(cls, run_name: Optional[str] = None,
               wipe_logs: bool = True) -> "RunPaths":
        """Create the run directories and (optionally) clear the log directory.

        Args:
            run_name: Suffix appended to the timestamped folder name, for
                labelling an experiment. None gives a bare timestamp.
            wipe_logs: Delete the contents of ``MM_GYm/logs`` first. True matches
                the project convention that the log directory always describes
                exactly one run.

        Returns:
            A populated, frozen :class:`RunPaths`.
        """
        stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        # Sanitise the label: a run name reaches the filesystem, so strip
        # anything that is not clearly safe in a path component.
        if run_name:
            safe = "".join(c if (c.isalnum() or c in "-_") else "_"
                           for c in run_name).strip("_")
            folder = f"run_{stamp}_{safe}" if safe else f"run_{stamp}"
        else:
            folder = f"run_{stamp}"

        if wipe_logs:
            wipe_directory(LOGS_DIR, expected_name="logs")
        LOGS_DIR.mkdir(parents=True, exist_ok=True)

        run_dir = MODELS_DIR / folder
        checkpoints_dir = run_dir / "checkpoints"
        best_dir = run_dir / "best"
        for directory in (run_dir, checkpoints_dir, best_dir):
            directory.mkdir(parents=True, exist_ok=True)

        return cls(
            run_name=folder,
            logs_dir=LOGS_DIR,
            run_dir=run_dir,
            checkpoints_dir=checkpoints_dir,
            best_dir=best_dir,
        )

    # -- derived paths ----------------------------------------------------
    @property
    def monitor_csv(self) -> Path:
        """Path for the ``Monitor`` wrapper's per-episode CSV.

        Lives in the log directory rather than the run folder, so all of the
        run's *metrics* sit together and the run folder holds only models.
        """
        return self.logs_dir / "monitor.csv"

    def monitor_csv_for(self, env_idx: int = 0, total_envs: int = 1) -> Path:
        """Path for environment ``env_idx``'s ``Monitor`` CSV.

        When running a single environment, writes to ``monitor.csv`` for full
        backwards compatibility. When running multiple parallel environments,
        writes to ``monitor_0.csv``, ``monitor_1.csv``, etc.
        """
        if total_envs <= 1:
            return self.logs_dir / "monitor.csv"
        return self.logs_dir / f"monitor_{env_idx}.csv"


    @property
    def config_json(self) -> Path:
        """Path for the run's reproducibility record."""
        return self.run_dir / "run_config.json"

    @property
    def stop_file(self) -> Path:
        """Sentinel whose existence asks training to finish cleanly.

        Creating this file is the preferred way to end a long run: on a live phone
        Ctrl-C can land inside a blocking Frida RPC, whereas the stop file lets
        the learn loop break at a step boundary with every teardown path intact.
        """
        return self.run_dir / "STOP"

    def write_run_config(self, payload: Dict[str, Any]) -> None:
        """Write ``run_config.json``, stamping in the git commit and timestamp.

        Args:
            payload: Everything worth recording -- CLI args, resolved PPO kwargs,
                the environment config. Values that are not JSON-serialisable are
                coerced with ``str`` rather than raising, since this file is a
                convenience record and must never break a training run.
        """
        record = {
            "run_name": self.run_name,
            "created": datetime.now().isoformat(timespec="seconds"),
            "git_head": git_head(),
            "cwd": os.getcwd(),
            **payload,
        }
        self.config_json.write_text(
            json.dumps(record, indent=2, sort_keys=True, default=str),
            encoding="utf-8",
        )
