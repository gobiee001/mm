"""Penalty for holding fire while engaged with an enemy (anti-pacifism)."""

from __future__ import annotations

from typing import Any, Dict

from .base import RewardComponent
from .stats import RewardStats


class NotShootingComponent(RewardComponent):
    """Penalizes not shooting while engaged, which must cost more than
    shooting and missing (see ShotCostComponent) or the agent learns to hold
    fire entirely."""

    name = "not_shooting"

    def __init__(self, weight: float, normalize_by_frame_skip: bool = True):
        self.weight = weight
        self.normalize_by_frame_skip = normalize_by_frame_skip
        self._total = 0

    def calculate(self, stats: RewardStats) -> float:
        acc = stats.acc
        if "no_shoot_ticks" in acc:
            no_shoot_ticks = max(0, int(acc.get("no_shoot_ticks", 0) or 0))
        else:
            # Older JS bundles without the dedicated counter: approximate
            # from engaged_ticks when the step fired no shots at all.
            shots = max(0, int(stats.events.get("shots_fired", 0) or 0))
            engaged_ticks = max(0, int(acc.get("engaged_ticks", 0) or 0))
            no_shoot_ticks = engaged_ticks if shots <= 0 and engaged_ticks > 0 else 0

        self._total += no_shoot_ticks
        ticks = max(1, int(acc.get("ticks", stats.frame_skip) or stats.frame_skip))
        divisor = float(ticks) if self.normalize_by_frame_skip else 1.0
        return -self.weight * (no_shoot_ticks / divisor)

    def reset(self) -> None:
        self._total = 0

    def totals(self) -> Dict[str, Any]:
        return {"no_shoot_ticks": self._total}
