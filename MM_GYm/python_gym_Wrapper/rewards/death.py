"""Penalty for player deaths."""

from __future__ import annotations

from typing import Any, Dict

from .base import RewardComponent
from .stats import RewardStats


class DeathComponent(RewardComponent):
    name = "death"

    def __init__(self, weight: float):
        self.weight = weight
        self._total = 0

    def calculate(self, stats: RewardStats) -> float:
        deaths = max(0, int(stats.events.get("player_deaths", 0) or 0))
        self._total += deaths
        return -self.weight * deaths

    def reset(self) -> None:
        self._total = 0

    def totals(self) -> Dict[str, Any]:
        return {"deaths": self._total}
