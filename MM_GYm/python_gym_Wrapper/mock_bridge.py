"""A deterministic in-process stand-in for :class:`FridaBridge`.

Emits exactly the payload shape the JS agent produces, so the encoder, reward
engine and environment can be exercised -- and unit tested -- without the game
running. ``demo.py --mock`` uses it too.

This is a contract double, not a game model: the physics are a toy. Its job is
to keep the Python half honest about payload shape, episode contract and reward
signs.
"""

from __future__ import annotations

import math
import random
from typing import Any, Dict, List, Optional

from .config import MiniMilitiaConfig

ARENA = 1200.0
PLAYER_SPEED = 12.0
ENEMY_SPEED = 4.0
FIRE_RANGE = 700.0
AIM_TOLERANCE_DEG = 25.0
DAMAGE_PER_HIT = 7.0
ENEMY_HP = 100.0
CONTACT_RANGE = 120.0
CONTACT_DPS = 0.4


class MockBridge:
    """Implements the FridaBridge surface against a toy simulation."""

    def __init__(self, cfg: MiniMilitiaConfig, seed: int = 0,
                 n_enemies: int = 4, on_log=None):
        self.cfg = cfg
        self.env = cfg.env
        self.tick_source = "MockPhysics"
        self.missing_symbols: List[str] = []
        self._rng = random.Random(seed)
        self._n_enemies = n_enemies
        self._next_id = 1
        self._total_ticks = 0
        self._closed = False
        self._on_log = on_log or (lambda m: None)
        self._spawn_all()

    def seed(self, seed: int) -> None:
        """Reseed the simulation. ``MiniMilitiaEnv.reset(seed=...)`` calls this
        when the bridge provides it; :class:`FridaBridge` deliberately does not,
        because a live game process is not reproducible."""
        self._rng = random.Random(seed)

    # -- simulation --------------------------------------------------------
    def _spawn_all(self) -> None:
        self.px, self.py = 0.0, 0.0
        self.pvx, self.pvy = 0.0, 0.0
        self.php = 100.0
        self.pammo = 99
        self._next_id = 1
        self.enemies: List[Dict[str, Any]] = []
        for _ in range(self._n_enemies):
            self._spawn_enemy()

    def _spawn_enemy(self) -> None:
        ang = self._rng.uniform(0, 2 * math.pi)
        r = self._rng.uniform(300.0, ARENA)
        self.enemies.append({
            "id": self._next_id,
            "type": self._rng.randrange(3),
            "hp": ENEMY_HP,
            "x": math.cos(ang) * r,
            "y": math.sin(ang) * r,
            "vx": 0.0, "vy": 0.0,
            "aim": 0.0,
        })
        self._next_id += 1

    def _tick(self, action: List[float], ev: Dict[str, Any]) -> Dict[str, Any]:
        mx, my, ax, ay, sh = (list(action) + [0.0] * 5)[:5]
        shooting = sh > self.cfg.action.shoot_threshold
        moving = (abs(mx) > self.cfg.action.move_deadzone or
                  abs(my) > self.cfg.action.move_deadzone)

        self.pvx, self.pvy = mx * PLAYER_SPEED, my * PLAYER_SPEED
        self.px = max(-ARENA, min(ARENA, self.px + self.pvx))
        self.py = max(-ARENA, min(ARENA, self.py + self.pvy))

        for e in self.enemies:
            dx, dy = self.px - e["x"], self.py - e["y"]
            d = math.hypot(dx, dy) or 1.0
            e["vx"], e["vy"] = dx / d * ENEMY_SPEED, dy / d * ENEMY_SPEED
            e["x"] += e["vx"]
            e["y"] += e["vy"]
            e["aim"] = math.degrees(math.atan2(-dy, -dx)) % 360.0
            if d < CONTACT_RANGE:
                self.php -= CONTACT_DPS
                ev["damage_taken"] += CONTACT_DPS

        if shooting:
            ev["shots_fired"] += 1
            self.pammo = max(0, self.pammo - 1)
            target = self._best_target(ax, ay)
            if target is not None:
                hp_before = target["hp"]
                dealt = min(DAMAGE_PER_HIT, hp_before)
                target["hp"] -= DAMAGE_PER_HIT
                ev["damage_raw"] += DAMAGE_PER_HIT
                ev["damage_dealt"] += dealt
                ev["damage_events"] += 1
                if target["hp"] <= 0:
                    self.enemies.remove(target)
                    ev["enemies_destroyed"] += 1
                    ev["kills_credited"] += 1
                    ev["points"] += 10
                    self._spawn_enemy()

        if self.php <= 0:
            ev["player_deaths"] += 1
            self.php = 100.0

        return {"moving": moving, "shooting": shooting}

    def _best_target(self, ax: float, ay: float) -> Optional[Dict[str, Any]]:
        if abs(ax) < 1e-6 and abs(ay) < 1e-6:
            return None
        want = math.degrees(math.atan2(ay, ax))
        best, best_d = None, FIRE_RANGE
        for e in self.enemies:
            dx, dy = e["x"] - self.px, e["y"] - self.py
            d = math.hypot(dx, dy)
            if d > FIRE_RANGE:
                continue
            err = abs((math.degrees(math.atan2(dy, dx)) - want + 180.0) % 360.0 - 180.0)
            if err <= AIM_TOLERANCE_DEG and d < best_d:
                best, best_d = e, d
        return best

    # -- payload -----------------------------------------------------------
    def _sorted_enemies(self) -> List[Dict[str, Any]]:
        out = []
        for e in self.enemies:
            d = math.hypot(e["x"] - self.px, e["y"] - self.py)
            out.append({
                "id": e["id"], "type": e["type"], "hp": e["hp"],
                "x": e["x"], "y": e["y"], "vx": e["vx"], "vy": e["vy"],
                "aim": e["aim"], "dist": d, "synth_id": False,
            })
        out.sort(key=lambda s: s["dist"])
        return out[: self.cfg.obs.max_enemies]

    def _observation(self) -> Dict[str, Any]:
        return {
            "player": {
                "x": self.px, "y": self.py, "vx": self.pvx, "vy": self.pvy,
                "hp": self.php, "power": 10.0,
                "reloading": False, "ammo": self.pammo, "valid": True,
            },
            "enemies": self._sorted_enemies(),
            "enemy_count": len(self.enemies),
        }

    @staticmethod
    def _new_events() -> Dict[str, Any]:
        return {
            "damage_dealt": 0.0, "damage_raw": 0.0, "damage_events": 0,
            "enemies_destroyed": 0, "kills_credited": 0, "points": 0,
            "shots_fired": 0, "damage_taken": 0.0, "player_deaths": 0,
            "game_ended": 0,
        }

    def _run(self, action: List[float], ticks: int, kind: str) -> Dict[str, Any]:
        ev = self._new_events()
        idle = engaged = enemy_ticks = dead = 0
        min_dist = float("inf")
        dt = 1.0 / 60.0

        for _ in range(ticks):
            self._total_ticks += 1
            st = self._tick(action, ev)
            if self.enemies:
                enemy_ticks += 1
                d = min(math.hypot(e["x"] - self.px, e["y"] - self.py)
                        for e in self.enemies)
                min_dist = min(min_dist, d)
                if d <= self.cfg.obs.engagement_radius:
                    engaged += 1
                    if not st["moving"] and not st["shooting"]:
                        idle += 1
            if self.php <= 0:
                dead += 1

        return {
            "ok": True,
            "kind": kind,
            "obs": self._observation(),
            "events": ev,
            "acc": {
                "ticks": ticks, "idle_ticks": idle, "engaged_ticks": engaged,
                "enemy_ticks": enemy_ticks, "dead_ticks": dead,
                "min_dist": -1.0 if min_dist == float("inf") else min_dist,
                "dt_sum": dt * ticks, "dt_mean": dt, "dt_min": dt, "dt_max": dt,
            },
            "timed_out": False,
            "total_ticks": self._total_ticks,
            "has_player": True,
        }

    # -- FridaBridge surface ----------------------------------------------
    def connect(self, wait_ready_s: float = 30.0) -> Dict[str, Any]:
        return self.info()

    def close(self) -> None:
        self._closed = True

    def ping(self) -> Dict[str, Any]:
        return {"ok": True, "ready": True, "module": "mock",
                "tick_source": self.tick_source, "total_ticks": self._total_ticks}

    def info(self) -> Dict[str, Any]:
        return {
            "ok": True,
            "config": self.cfg.to_js(),
            "tick_source": self.tick_source,
            "capabilities": {
                "damage_hook": True, "kill_hook": True, "shot_hook": True,
                "reset_kill_player": True, "reset_kill_enemies": True,
                "player_hp": True, "enemy_hp": True,
            },
            "action_hooks": {"player": True, "fire": True},
            "symbols_found": 0, "symbols_missing": [], "diag": {},
        }

    def stats(self) -> Dict[str, Any]:
        return {"ok": True, "diag": {}, "total_ticks": self._total_ticks,
                "render_frames": 0, "counters": None}

    def peek(self) -> Dict[str, Any]:
        return {"ok": True, "obs": self._observation(), "counters": {},
                "total_ticks": self._total_ticks, "has_player": True}

    def set_config(self, patch: Dict[str, Any]) -> Dict[str, Any]:
        return {"ok": True, "config": patch}

    def step(self, action: List[float]) -> Dict[str, Any]:
        return self._run(list(action), self.env.frame_skip, "step")

    def reset(self, kill_player: bool, clear_enemies: bool,
              settle_ticks: int) -> Dict[str, Any]:
        if clear_enemies or kill_player:
            self._spawn_all()
        return self._run([0.0] * 5, max(1, settle_ticks), "reset")

    @property
    def errors(self) -> List[str]:
        return []
