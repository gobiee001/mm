"""PPO training stack for the Mini Militia Gymnasium environment.

Layout
------
:mod:`Training.hyperparams`
    PPO and environment defaults, each documented with the reasoning behind it.
:mod:`Training.run_manager`
    Filesystem layout: log wiping, per-run model folders, checkpoint filenames.
:mod:`Training.callbacks`
    Timed rolling checkpoints, top-K best models, and game-metric logging.
:mod:`Training.train_ppo`
    Command-line entrypoint. Run from ``MM_GYm/`` as ``python -m Training.train_ppo``.
:mod:`Training.evaluate`
    Play a saved model, optionally against the scripted baseline.

``train_ppo`` and ``evaluate`` are deliberately *not* imported here -- they are
entrypoints with their own argument parsing, and importing them as a side effect
of touching this package would be a surprise.
"""

from __future__ import annotations

from . import hyperparams
from .callbacks import (
    EpisodeReturnTracker,
    MiniMilitiaMetricsCallback,
    StopFileCallback,
    TimedCheckpointCallback,
    TopKBestModelCallback,
    mean_recent_return,
)
from .run_manager import (
    LOGS_DIR,
    MM_GYM_DIR,
    MODELS_DIR,
    RunPaths,
    best_filename,
    checkpoint_filename,
    final_filename,
    format_reward,
)

__version__ = "1.0.0"

__all__ = [
    "hyperparams",
    "EpisodeReturnTracker",
    "MiniMilitiaMetricsCallback",
    "StopFileCallback",
    "TimedCheckpointCallback",
    "TopKBestModelCallback",
    "mean_recent_return",
    "RunPaths",
    "MM_GYM_DIR",
    "LOGS_DIR",
    "MODELS_DIR",
    "best_filename",
    "checkpoint_filename",
    "final_filename",
    "format_reward",
    "__version__",
]
