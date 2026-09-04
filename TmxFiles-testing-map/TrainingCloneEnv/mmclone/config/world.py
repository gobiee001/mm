"""World frame, asset tiers, and map configuration."""

from dataclasses import dataclass
from enum import IntEnum
from pathlib import Path
from typing import Optional
from .provenance import Provenance, register_provenance


class AssetTier(IntEnum):
    SD = 64
    HD = 128
    HDR = 256


@dataclass
class MapConfig:
    map_name: str = "survival_new"
    tier: AssetTier = AssetTier.HD
    collision_alpha_threshold: int = 50
    collider_inset_pixels: int = 6
    border_left: Optional[float] = None
    border_right: Optional[float] = None
    border_bottom: Optional[float] = None
    border_top: Optional[float] = None
    map_dir: Optional[Path] = None

    def __post_init__(self) -> None:
        if self.map_dir is None:
            # Default to TmxFiles-testing-map/sd relative to repo
            from .._bootstrap import BOOTSTRAPPED_PATH
            repo_root = BOOTSTRAPPED_PATH.parent
            self.map_dir = repo_root / "TmxFiles-testing-map" / "sd"


register_provenance("world.collision_alpha_threshold", Provenance.MEASURED)
register_provenance("world.collider_inset_pixels", Provenance.TUNING)
