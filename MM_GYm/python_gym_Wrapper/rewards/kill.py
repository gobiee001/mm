"""Reward for enemy kills."""

from __future__ import annotations

from typing import Any, Dict

from .base import RewardComponent
from .stats import RewardStats


class KillComponent(RewardComponent):
    name = "kill"

    def __init__(self, weight: float, kill_source: str = "kills_credited"):
        self.weight = weight
        self.kill_source = kill_source
        self._total = 0

    def calculate(self, stats: RewardStats) -> float:
        kills = int(stats.events.get(self.kill_source, 0) or 0)
        if kills <= 0 and self.kill_source != "enemies_destroyed":
            # awardPoints may not fire on every build; fall back to the
            # destruction notification rather than silently scoring zero.
            kills = int(stats.events.get("enemies_destroyed", 0) or 0)
        kills = max(0, kills)
        self._total += kills
        return self.weight * kills

    def reset(self) -> None:
        self._total = 0

    def totals(self) -> Dict[str, Any]:
        return {"kills": self._total}
