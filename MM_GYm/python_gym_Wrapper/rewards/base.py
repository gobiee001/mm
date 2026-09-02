"""The RewardComponent interface every reward term implements."""

from __future__ import annotations

from abc import ABC, abstractmethod
from typing import Any, Dict

from .stats import RewardStats


class RewardComponent(ABC):
    """One pluggable, independently-testable term in the reward."""

    name: str = "component"

    @abstractmethod
    def calculate(self, stats: RewardStats) -> float:
        """Return this term's own signed contribution (bonus positive,
        penalty negative) -- already weighted, nothing further is applied."""

    def reset(self) -> None:
        """Clear cross-step/episode state. Called once per env.reset(). A
        no-op by default -- most terms are stateless functions of the current
        step's ``events``/``acc``."""

    def totals(self) -> Dict[str, Any]:
        """Optional per-episode running totals, merged flatly into
        ``info['episode_totals']``. Default: nothing reported."""
        return {}
