"""Per-step reward breakdown, surfaced in info['reward']."""

from __future__ import annotations

from dataclasses import dataclass, field
from typing import Any, Dict


@dataclass
class RewardBreakdown:
    """Per-component reward for this step, surfaced in ``info['reward']``."""

    parts: Dict[str, float] = field(default_factory=dict)
    total: float = 0.0
    clipped: bool = False

    def as_dict(self) -> Dict[str, Any]:
        return {**self.parts, "total": self.total, "clipped": self.clipped}
