"""Example custom component: potential-based aim-alignment shaping."""

from __future__ import annotations

from typing import Any, Dict, Optional

from ..utils import aim_error_degrees, safe_float
from .base import RewardComponent
from .stats import RewardStats


class AimAlignmentComponent(RewardComponent):
    """Rewards *improving* alignment between the commanded aim and the
    direction to the nearest enemy each step (closeness_now -
    closeness_prev), not absolute alignment. Potential-based shaping like
    this keeps the signal well-behaved for credit assignment -- rewarding the
    raw alignment every step would pay out identically whether or not the
    current action actually improved it. Not part of
    :func:`~.defaults.default_components`; append it yourself to opt in."""

    name = "aim_align"

    def __init__(self, weight: float):
        self.weight = weight
        self._prev_closeness: Optional[float] = None
        self._episode_total = 0.0

    def calculate(self, stats: RewardStats) -> float:
        p = stats.raw_obs.get("player") or {}
        enemies = stats.raw_obs.get("enemies") or []
        if not p.get("valid") or not enemies:
            self._prev_closeness = None  # no target -- don't jump on the next reading
            return 0.0

        e0 = enemies[0]  # nearest-first sorted
        err = aim_error_degrees(
            (float(stats.action[2]), float(stats.action[3])),
            safe_float(p.get("x")), safe_float(p.get("y")),
            safe_float(e0.get("x")), safe_float(e0.get("y")))
        closeness = 1.0 - (max(0.0, min(180.0, err)) / 180.0)

        delta = 0.0
        if self._prev_closeness is not None:
            delta = self.weight * (closeness - self._prev_closeness)
        self._prev_closeness = closeness
        self._episode_total += delta
        return delta

    def reset(self) -> None:
        self._prev_closeness = None
        self._episode_total = 0.0

    def totals(self) -> Dict[str, Any]:
        return {"aim_align_reward": self._episode_total}
