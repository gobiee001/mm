"""Penalty for shots fired (ammo-spray discouragement)."""

from __future__ import annotations

from typing import Any, Dict

from .base import RewardComponent
from .stats import RewardStats


class ShotCostComponent(RewardComponent):
    name = "shot_cost"

    def __init__(self, weight: float, mode: str = "flat"):
        self.weight = weight
        self.mode = mode
        self._total = 0

    def calculate(self, stats: RewardStats) -> float:
        shots = max(0, int(stats.events.get("shots_fired", 0) or 0))
        self._total += shots
        dmg = max(0.0, float(stats.events.get("damage_dealt", 0) or 0))
        if self.mode == "unrewarded":
            cost = self.weight * shots if dmg <= 0.0 else 0.0
        else:
            cost = self.weight * shots
        return -cost

    def reset(self) -> None:
        self._total = 0

    def totals(self) -> Dict[str, Any]:
        return {"shots": self._total}
