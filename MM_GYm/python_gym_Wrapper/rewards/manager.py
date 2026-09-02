"""RewardManager: iterates RewardComponents and sums their contributions."""

from __future__ import annotations

from typing import Any, Dict, List, Optional, Tuple

from .base import RewardComponent
from .breakdown import RewardBreakdown
from .stats import RewardStats


class RewardManager:
    """Iterates registered :class:`RewardComponent`\\ s, sums their
    contributions, clips the total, and merges each component's optional
    episode totals."""

    def __init__(self, components: List[RewardComponent], frame_skip: int,
                 clip: Optional[float] = None):
        if frame_skip < 1:
            raise ValueError("frame_skip must be >= 1")
        self.components = components
        self.frame_skip = frame_skip
        self.clip = clip
        self._episode_reward = 0.0
        self._steps = 0
        self._ticks = 0

    def reset(self) -> None:
        """Clear per-episode state. Called from ``env.reset()``."""
        for c in self.components:
            c.reset()
        self._episode_reward = 0.0
        self._steps = 0
        self._ticks = 0

    def compute(self, events: Dict[str, Any], acc: Dict[str, Any],
                raw_obs: Dict[str, Any], action: Tuple[float, ...]
                ) -> RewardBreakdown:
        stats = RewardStats(events=events, acc=acc, raw_obs=raw_obs,
                             action=action, frame_skip=self.frame_skip)
        parts = {c.name: float(c.calculate(stats)) for c in self.components}
        total = sum(parts.values())

        clipped = False
        if self.clip is not None:
            clamped = max(-self.clip, min(self.clip, total))
            clipped = clamped != total
            total = clamped

        self._episode_reward += total
        self._steps += 1
        self._ticks += max(1, int(acc.get("ticks", self.frame_skip) or self.frame_skip))
        return RewardBreakdown(parts=parts, total=total, clipped=clipped)

    def episode_totals(self) -> Dict[str, Any]:
        merged: Dict[str, Any] = {
            "reward": self._episode_reward,
            "steps": self._steps,
            "ticks": self._ticks,
        }
        for c in self.components:
            merged.update(c.totals())
        merged["accuracy"] = (
            merged.get("damage_dealt", 0.0) / merged["shots"] if merged.get("shots") else 0.0
        )
        return merged
