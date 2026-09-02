"""Optional flat per-step cost to discourage stalling."""

from __future__ import annotations

from .base import RewardComponent
from .stats import RewardStats


class TimeComponent(RewardComponent):
    name = "time"

    def __init__(self, weight: float):
        self.weight = weight

    def calculate(self, stats: RewardStats) -> float:
        return -self.weight
