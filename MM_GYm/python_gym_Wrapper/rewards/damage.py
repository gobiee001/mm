"""Reward for damage dealt to enemies."""

from __future__ import annotations

from typing import Any, Dict

from .base import RewardComponent
from .stats import RewardStats


class DamageComponent(RewardComponent):
    name = "damage"

    def __init__(self, weight: float, enemy_max_hp: float):
        self.weight = weight
        self.enemy_max_hp = enemy_max_hp
        self._total = 0.0

    def calculate(self, stats: RewardStats) -> float:
        dmg = max(0.0, float(stats.events.get("damage_dealt", 0) or 0))
        self._total += dmg
        return self.weight * (dmg / self.enemy_max_hp)

    def reset(self) -> None:
        self._total = 0.0

    def totals(self) -> Dict[str, Any]:
        return {"damage_dealt": self._total}
