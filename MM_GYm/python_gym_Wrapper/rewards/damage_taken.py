"""Penalty for damage taken by the player."""

from __future__ import annotations

from typing import Any, Dict

from .base import RewardComponent
from .stats import RewardStats


class DamageTakenComponent(RewardComponent):
    name = "damage_taken"

    def __init__(self, weight: float, player_max_hp: float):
        self.weight = weight
        self.player_max_hp = player_max_hp
        self._total = 0.0

    def calculate(self, stats: RewardStats) -> float:
        taken = max(0.0, float(stats.events.get("damage_taken", 0) or 0))
        self._total += taken
        return -self.weight * (taken / self.player_max_hp)

    def reset(self) -> None:
        self._total = 0.0

    def totals(self) -> Dict[str, Any]:
        return {"damage_taken": self._total}
