"""Penalty for idling (per-tick, frame-skip-invariant by default)."""

from __future__ import annotations

from typing import Any, Dict

from .base import RewardComponent
from .stats import RewardStats


class IdleComponent(RewardComponent):
    name = "idle"

    def __init__(self, weight: float, normalize_by_frame_skip: bool = True):
        self.weight = weight
        self.normalize_by_frame_skip = normalize_by_frame_skip
        self._total = 0

    def calculate(self, stats: RewardStats) -> float:
        ticks = max(1, int(stats.acc.get("ticks", stats.frame_skip) or stats.frame_skip))
        idle_ticks = max(0, int(stats.acc.get("idle_ticks", 0) or 0))
        self._total += idle_ticks
        # Penalties that accrue per tick are divided by the tick count, so
        # changing frame_skip does not rescale the reward function.
        divisor = float(ticks) if self.normalize_by_frame_skip else 1.0
        return -self.weight * (idle_ticks / divisor)

    def reset(self) -> None:
        self._total = 0

    def totals(self) -> Dict[str, Any]:
        return {"idle_ticks": self._total}
