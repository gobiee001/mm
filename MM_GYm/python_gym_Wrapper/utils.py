"""Observation encoding and vector helpers.

The encoder owns a single preallocated float32 buffer and refills it in place,
so stepping the environment does not allocate a new array per frame.

Enemy slots are filled nearest-first (the JS side already sorts by distance),
so slot *k* consistently means "k-th closest enemy". Feeding an MLP a list
whose ordering follows dictionary iteration order -- as the original collector
returned -- forces the network to learn a permutation invariance it cannot
represent.
"""

from __future__ import annotations

import math
from typing import Any, Dict, List, Tuple

import numpy as np

from .config import ObservationConfig

NORM_BOUND = 10.0
"""Clip bound for normalised observations. Keeps every sample inside the
declared Box, which gymnasium's env_checker verifies."""


def clamp(v: float, lo: float, hi: float) -> float:
    return lo if v < lo else (hi if v > hi else v)


def safe_float(v: Any, default: float = 0.0) -> float:
    """Coerce a value coming off the IPC boundary into a finite float."""
    try:
        f = float(v)
    except (TypeError, ValueError):
        return default
    if math.isnan(f) or math.isinf(f):
        return default
    return f


def distance(ax: float, ay: float, bx: float, by: float) -> float:
    dx, dy = bx - ax, by - ay
    return math.sqrt(dx * dx + dy * dy)


def angle_between(ax: float, ay: float, bx: float, by: float) -> float:
    """Angle in degrees [0, 360) from point A to point B."""
    ang = math.degrees(math.atan2(by - ay, bx - ax))
    return ang + 360.0 if ang < 0 else ang


def unit_vector(dx: float, dy: float) -> Tuple[float, float]:
    mag = math.hypot(dx, dy)
    if mag < 1e-9:
        return 0.0, 0.0
    return dx / mag, dy / mag


def aim_error_degrees(aim: Tuple[float, float], px: float, py: float,
                      tx: float, ty: float) -> float:
    """Absolute angular error in [0, 180] between a commanded aim vector and
    the direction to a target. Useful for reward shaping and diagnostics."""
    if abs(aim[0]) < 1e-9 and abs(aim[1]) < 1e-9:
        return 180.0
    commanded = math.degrees(math.atan2(aim[1], aim[0]))
    desired = math.degrees(math.atan2(ty - py, tx - px))
    diff = abs((commanded - desired + 180.0) % 360.0 - 180.0)
    return diff


class ObservationEncoder:
    """Flattens the JS observation dict into a fixed-size float32 vector."""

    def __init__(self, cfg: ObservationConfig):
        self.cfg = cfg
        self.size = cfg.flat_size
        self._buf = np.zeros(self.size, dtype=np.float32)

    # -- space -------------------------------------------------------------
    def bounds(self) -> Tuple[np.ndarray, np.ndarray]:
        if self.cfg.normalize:
            lo = np.full(self.size, -NORM_BOUND, dtype=np.float32)
            hi = np.full(self.size, NORM_BOUND, dtype=np.float32)
        else:
            lo = np.full(self.size, -np.inf, dtype=np.float32)
            hi = np.full(self.size, np.inf, dtype=np.float32)
        return lo, hi

    def labels(self) -> List[str]:
        """Human-readable name for every index. Used by demo.py and tests."""
        c = self.cfg
        names = ["player_x", "player_y", "player_vx", "player_vy"]
        if c.include_player_hp:
            names += ["player_hp", "player_power"]
        if c.include_ammo:
            names += ["player_ammo", "player_reloading"]
        for i in range(c.max_enemies):
            names += [f"e{i}_present", f"e{i}_dx", f"e{i}_dy",
                      f"e{i}_vx", f"e{i}_vy", f"e{i}_hp", f"e{i}_dist"]
            if c.include_enemy_type_onehot:
                names += [f"e{i}_type{t}" for t in range(c.n_enemy_types)]
        return names

    # -- encoding ----------------------------------------------------------
    def encode(self, raw: Dict[str, Any]) -> np.ndarray:
        c = self.cfg
        buf = self._buf
        buf.fill(0.0)

        norm = c.normalize
        pos_s = c.pos_scale if norm else 1.0
        vel_s = c.vel_scale if norm else 1.0
        hp_s = c.hp_scale if norm else 1.0
        ammo_s = c.ammo_scale if norm else 1.0
        dist_s = c.dist_scale if norm else 1.0

        p = raw.get("player") or {}
        px = safe_float(p.get("x"))
        py = safe_float(p.get("y"))

        i = 0
        buf[i] = px / pos_s; i += 1
        buf[i] = py / pos_s; i += 1
        buf[i] = safe_float(p.get("vx")) / vel_s; i += 1
        buf[i] = safe_float(p.get("vy")) / vel_s; i += 1

        if c.include_player_hp:
            buf[i] = safe_float(p.get("hp")) / hp_s; i += 1
            buf[i] = safe_float(p.get("power")) / (10.0 if norm else 1.0); i += 1
        if c.include_ammo:
            buf[i] = safe_float(p.get("ammo")) / ammo_s; i += 1
            buf[i] = 1.0 if p.get("reloading") else 0.0; i += 1

        enemies = raw.get("enemies") or []
        stride = c.enemy_features
        for slot in range(c.max_enemies):
            base = i + slot * stride
            if slot >= len(enemies):
                continue
            e = enemies[slot]
            ex = safe_float(e.get("x"))
            ey = safe_float(e.get("y"))
            if c.relative_enemy_coords:
                ex, ey = ex - px, ey - py

            buf[base + 0] = 1.0                                    # present mask
            buf[base + 1] = ex / pos_s
            buf[base + 2] = ey / pos_s
            buf[base + 3] = safe_float(e.get("vx")) / vel_s
            buf[base + 4] = safe_float(e.get("vy")) / vel_s
            buf[base + 5] = safe_float(e.get("hp")) / hp_s
            buf[base + 6] = safe_float(e.get("dist")) / dist_s

            if c.include_enemy_type_onehot:
                t = int(safe_float(e.get("type"), -1.0))
                if 0 <= t < c.n_enemy_types:
                    buf[base + 7 + t] = 1.0

        if norm:
            np.clip(buf, -NORM_BOUND, NORM_BOUND, out=buf)
        else:
            np.nan_to_num(buf, copy=False, nan=0.0, posinf=0.0, neginf=0.0)
        return buf

    def encode_copy(self, raw: Dict[str, Any]) -> np.ndarray:
        """Encode into a fresh array. Use when the caller retains the result."""
        return self.encode(raw).copy()
