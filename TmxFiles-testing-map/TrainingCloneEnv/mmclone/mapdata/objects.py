"""Map objects definition."""

from dataclasses import dataclass, field
from typing import List, Tuple


@dataclass
class MapObjects:
    player_spawns: List[Tuple[float, float]] = field(default_factory=list)
    weapon_spawns: List[Tuple[float, float, List[str]]] = field(default_factory=list)
