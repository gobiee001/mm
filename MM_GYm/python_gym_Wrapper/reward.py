"""Reward computation for the Mini Militia environment.

The heavy lifting happens in JS: damage, kills, shots and deaths are counted by
Interceptor hooks on the functions that actually perform them, and arrive here
as exact per-step deltas. This module only applies weights, so reward shaping
can be retuned from Python without touching the instrumentation.

Why events rather than state diffs
----------------------------------
The original design derived every reward term by diffing sampled state:

* **Damage** from ``prev_hp - cur_hp`` keyed by enemy id. Ids fall back to a
  raw heap pointer when ``CCDictElement::getIntKey`` returns 0, and the
  allocator reuses freed drone memory, so a fresh drone can carry a dead one's
  id -- turning a kill into a large *negative* damage reading.
* **Kills** from an id disappearing. Despawns, stage transitions and a
  truncated dictionary walk all look identical to a kill.
* **Wasted ammo** from ``prev_ammo - cur_ammo``, which is identically zero
  whenever ``infinite_reload_ammo`` is on, because that clamp rewrites the clip
  to 99 every tick.

``Enemy::addDamage``, ``EnemyManager::awardPoints`` and
``SoldierHostController::weaponDidFire`` have none of those failure modes.

Sign convention
---------------
Weights are positive magnitudes; the formula subtracts penalties::

    r = w_damage * dmg_frac
      + w_kill   * kills
      - w_damage_taken * taken_frac
      - w_death  * deaths
      - shot_cost
      - idle_cost
      - not_shooting_cost
      - w_time
"""

from __future__ import annotations

from dataclasses import dataclass, field
from typing import Any, Dict, Optional

from .config import RewardConfig


@dataclass
class RewardBreakdown:
    """Per-component reward, surfaced in ``info['reward']``."""

    damage: float = 0.0
    kill: float = 0.0
    damage_taken: float = 0.0
    death: float = 0.0
    shot_cost: float = 0.0
    idle: float = 0.0
    not_shooting: float = 0.0
    time: float = 0.0
    total: float = 0.0
    clipped: bool = False

    def as_dict(self) -> Dict[str, float]:
        return {
            "damage": self.damage,
            "kill": self.kill,
            "damage_taken": -self.damage_taken,
            "death": -self.death,
            "shot_cost": -self.shot_cost,
            "idle": -self.idle,
            "not_shooting": -self.not_shooting,
            "time": -self.time,
            "total": self.total,
            "clipped": self.clipped,
        }


@dataclass
class EpisodeTotals:
    """Running per-episode aggregates, surfaced in ``info['episode_totals']``."""

    reward: float = 0.0
    damage_dealt: float = 0.0
    damage_taken: float = 0.0
    kills: int = 0
    shots: int = 0
    deaths: int = 0
    idle_ticks: int = 0
    no_shoot_ticks: int = 0
    steps: int = 0
    ticks: int = 0

    def as_dict(self) -> Dict[str, Any]:
        return {
            "reward": self.reward,
            "damage_dealt": self.damage_dealt,
            "damage_taken": self.damage_taken,
            "kills": self.kills,
            "shots": self.shots,
            "deaths": self.deaths,
            "idle_ticks": self.idle_ticks,
            "no_shoot_ticks": self.no_shoot_ticks,
            "steps": self.steps,
            "ticks": self.ticks,
            "accuracy": (self.damage_dealt / self.shots) if self.shots else 0.0,
        }


class RewardCalculator:
    """Turns one step's event deltas into a scalar reward."""

    def __init__(self, cfg: RewardConfig, frame_skip: int,
                 kill_source: str = "kills_credited"):
        if frame_skip < 1:
            raise ValueError("frame_skip must be >= 1")
        self.cfg = cfg
        self.frame_skip = frame_skip
        self.kill_source = kill_source
        self.totals = EpisodeTotals()

    def reset(self) -> None:
        """Clear per-episode state. Called from ``env.reset()``.

        There is deliberately no cross-step state to clear beyond the totals:
        every term is computed from the current step's deltas, so a respawn or
        an id collision cannot leak a stale baseline into the next episode.
        """
        self.totals = EpisodeTotals()

    def compute(self, events: Dict[str, Any],
                acc: Dict[str, Any]) -> RewardBreakdown:
        c = self.cfg
        b = RewardBreakdown()

        dmg = max(0.0, float(events.get("damage_dealt", 0) or 0))
        taken = max(0.0, float(events.get("damage_taken", 0) or 0))
        deaths = max(0, int(events.get("player_deaths", 0) or 0))
        shots = max(0, int(events.get("shots_fired", 0) or 0))

        kills = int(events.get(self.kill_source, 0) or 0)
        if kills <= 0 and self.kill_source != "enemies_destroyed":
            # awardPoints may not fire on every build; fall back to the
            # destruction notification rather than silently scoring zero.
            kills = int(events.get("enemies_destroyed", 0) or 0)
        kills = max(0, kills)

        ticks = max(1, int(acc.get("ticks", self.frame_skip) or self.frame_skip))
        idle_ticks = max(0, int(acc.get("idle_ticks", 0) or 0))

        if "no_shoot_ticks" in acc:
            no_shoot_ticks = max(0, int(acc.get("no_shoot_ticks", 0) or 0))
        else:
            engaged_ticks = max(0, int(acc.get("engaged_ticks", 0) or 0))
            if shots <= 0 and engaged_ticks > 0:
                no_shoot_ticks = engaged_ticks
            else:
                no_shoot_ticks = 0

        b.damage = c.w_damage * (dmg / c.enemy_max_hp)
        b.kill = c.w_kill * kills
        b.damage_taken = c.w_damage_taken * (taken / c.player_max_hp)
        b.death = c.w_death * deaths

        if c.shot_cost_mode == "unrewarded":
            b.shot_cost = c.w_shot_cost * shots if dmg <= 0.0 else 0.0
        else:
            b.shot_cost = c.w_shot_cost * shots

        # Penalties that accrue per tick are divided by the tick count, so
        # changing frame_skip does not rescale the reward function.
        idle_divisor = float(ticks) if c.normalize_penalties_by_frame_skip else 1.0
        b.idle = c.w_idle * (idle_ticks / idle_divisor)
        b.not_shooting = c.w_not_shooting * (no_shoot_ticks / idle_divisor)
        b.time = c.w_time

        b.total = (b.damage + b.kill
                   - b.damage_taken - b.death - b.shot_cost - b.idle - b.not_shooting - b.time)

        if c.clip is not None:
            clamped = max(-c.clip, min(c.clip, b.total))
            b.clipped = clamped != b.total
            b.total = clamped

        t = self.totals
        t.reward += b.total
        t.damage_dealt += dmg
        t.damage_taken += taken
        t.kills += kills
        t.shots += shots
        t.deaths += deaths
        t.idle_ticks += idle_ticks
        t.no_shoot_ticks += no_shoot_ticks
        t.steps += 1
        t.ticks += ticks
        return b
