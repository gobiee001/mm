"""MapGeometry providing high-performance collision queries against flat byte occupancy."""

from dataclasses import dataclass, field
import math
from typing import List, Optional, Tuple
import numpy as np


@dataclass
class MapGeometry:
    grid_w: int
    grid_h: int
    occ: bytes
    top_solid: np.ndarray
    player_spawns: List[Tuple[float, float]] = field(default_factory=list)
    weapon_spawns: List[Tuple[float, float, List[str]]] = field(default_factory=list)
    tile_state: Optional[bytes] = None  # (map_h_tiles * map_w_tiles) uint8: 0=EMPTY, 1=PARTIAL, 2=FULL
    map_w_tiles: int = 0
    map_h_tiles: int = 0

    def is_point_solid(self, gx: int, gy: int) -> bool:
        if 0 <= gx < self.grid_w and 0 <= gy < self.grid_h:
            return self.occ[gy * self.grid_w + gx] != 0
        return False

    def is_box_solid(self, x0: int, y0: int, x1: int, y1: int) -> bool:
        """Tests if the axis-aligned integer pixel box overlaps any solid pixel."""
        x0 = max(0, x0)
        y0 = max(0, y0)
        x1 = min(self.grid_w - 1, x1)
        y1 = min(self.grid_h - 1, y1)

        if x0 > x1 or y0 > y1:
            return False

        # Fast tile-state broadphase:
        if self.tile_state is not None:
            tx0 = x0 >> 6
            tx1 = x1 >> 6
            ty0 = y0 >> 6
            ty1 = y1 >> 6
            stride_t = self.map_w_tiles

            has_partial = False
            for ty in range(ty0, ty1 + 1):
                row_t_start = ty * stride_t + tx0
                row_t_end = ty * stride_t + tx1 + 1
                row_tiles = self.tile_state[row_t_start:row_t_end]
                if b"\x02" in row_tiles:  # FULL solid tile
                    return True
                if b"\x01" in row_tiles:  # PARTIAL slope/edge tile
                    has_partial = True

            if not has_partial:
                # Completely empty air
                return False

        # Fallback to precise pixel mask check
        stride = self.grid_w
        for y in range(y0, y1 + 1):
            row_start = y * stride + x0
            row_end = y * stride + x1 + 1
            if b"\x01" in self.occ[row_start:row_end]:
                return True
        return False

    def raycast_dda(
        self,
        x0: float,
        y0: float,
        x1: float,
        y1: float,
        step_px: float = 16.0,
    ) -> Tuple[bool, float, float]:
        """Steps along a segment from (x0, y0) to (x1, y1) checking for solid pixels."""
        dx = x1 - x0
        dy = y1 - y0
        dist = math.hypot(dx, dy)
        if dist <= 1e-6:
            hit = self.is_point_solid(int(x0), int(y0))
            return hit, x0, y0

        steps = max(1, int(dist / step_px))
        inv_steps = 1.0 / steps
        step_x = dx * inv_steps
        step_y = dy * inv_steps

        curr_x = x0
        curr_y = y0

        for _ in range(steps):
            curr_x += step_x
            curr_y += step_y
            gx = int(curr_x)
            gy = int(curr_y)
            if self.is_point_solid(gx, gy):
                return True, curr_x, curr_y

        gx = int(x1)
        gy = int(y1)
        if self.is_point_solid(gx, gy):
            return True, x1, y1

        return False, x1, y1
