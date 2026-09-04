"""WorldFrame transforms between TMX coordinates, baked grid, and Cocos2d world coordinates."""

from dataclasses import dataclass
from typing import Optional, Tuple
from ..config.world import AssetTier


@dataclass(frozen=True)
class WorldFrame:
    asset_px_per_tile: int
    tier_px_per_tile: int
    grid_w: int
    grid_h: int
    border_left: Optional[float] = None
    border_right: Optional[float] = None
    border_bottom: Optional[float] = None
    border_top: Optional[float] = None

    @property
    def scale(self) -> float:
        return self.tier_px_per_tile / self.asset_px_per_tile

    @property
    def world_w(self) -> float:
        return self.grid_w * self.scale

    @property
    def world_h(self) -> float:
        return self.grid_h * self.scale

    @property
    def min_x(self) -> float:
        return (self.border_left * self.scale) if self.border_left is not None else 0.0

    @property
    def max_x(self) -> float:
        return (self.border_right * self.scale) if self.border_right is not None else self.world_w

    @property
    def min_y(self) -> float:
        return (self.border_bottom * self.scale) if self.border_bottom is not None else 0.0

    @property
    def max_y(self) -> float:
        return (self.border_top * self.scale) if self.border_top is not None else self.world_h

    def world_to_grid(self, wx: float, wy: float) -> Tuple[int, int]:
        """Converts Cocos world coordinate (bottom-left, Y-up) to baked grid pixel (top-left, Y-down)."""
        gx = int(wx / self.scale)
        gy = int(self.grid_h - (wy / self.scale))
        return gx, gy

    def grid_to_world(self, gx: float, gy: float) -> Tuple[float, float]:
        """Converts baked grid pixel (top-left, Y-down) to Cocos world coordinate (bottom-left, Y-up)."""
        wx = gx * self.scale
        wy = (self.grid_h - gy) * self.scale
        return wx, wy

    def tmx_to_world(self, tx: float, ty: float) -> Tuple[float, float]:
        """Converts TMX object point (top-left, Y-down, asset pixels) to Cocos world coordinate."""
        wx = tx * self.scale
        wy = (self.grid_h - ty) * self.scale
        return wx, wy
