"""Per-step data shared with every RewardComponent."""

from __future__ import annotations

from dataclasses import dataclass
from typing import Any, Dict, Tuple


@dataclass
class RewardStats:
    """Everything a :class:`~.base.RewardComponent` might need, built fresh by
    :class:`~.manager.RewardManager` each step. Components read only what they
    need."""

    events: Dict[str, Any]
    """Exact per-step event deltas: damage_dealt, damage_taken, player_deaths,
    shots_fired, kills_credited, enemies_destroyed, ..."""

    acc: Dict[str, Any]
    """Per-step tick accumulator: ticks, idle_ticks, engaged_ticks, min_dist, ..."""

    raw_obs: Dict[str, Any]
    """``payload["obs"]``: ``{"player": {...}, "enemies": [...], ...}``."""

    action: Tuple[float, ...]
    """The clipped 5-vector actually applied this step: (move_x, move_y,
    aim_x, aim_y, shoot)."""

    frame_skip: int
