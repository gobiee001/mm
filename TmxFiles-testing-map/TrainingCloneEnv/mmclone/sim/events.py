"""Event and accumulator structures matching the FridaBridge / MockBridge contract."""

from dataclasses import dataclass
from typing import Any, Dict


def new_events_dict() -> Dict[str, Any]:
    return {
        "damage_dealt": 0.0,
        "damage_raw": 0.0,
        "damage_events": 0,
        "enemies_destroyed": 0,
        "kills_credited": 0,
        "points": 0,
        "shots_fired": 0,
        "damage_taken": 0.0,
        "player_deaths": 0,
        "game_ended": 0,
    }


def new_acc_dict(ticks: int, dt: float = 1.0 / 60.0) -> Dict[str, Any]:
    return {
        "ticks": ticks,
        "idle_ticks": 0,
        "no_shoot_ticks": 0,
        "engaged_ticks": 0,
        "enemy_ticks": 0,
        "dead_ticks": 0,
        "min_dist": -1.0,
        "dt_sum": dt * ticks,
        "dt_mean": dt,
        "dt_min": dt,
        "dt_max": dt,
    }
