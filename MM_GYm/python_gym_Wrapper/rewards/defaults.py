"""Factory for the stock (built-in) reward component set."""

from __future__ import annotations

from typing import List

from ..config import RewardConfig
from .base import RewardComponent
from .damage import DamageComponent
from .damage_taken import DamageTakenComponent
from .death import DeathComponent
from .idle import IdleComponent
from .kill import KillComponent
from .not_shooting import NotShootingComponent
from .shot_cost import ShotCostComponent
from .time_cost import TimeComponent


def default_components(cfg: RewardConfig) -> List[RewardComponent]:
    """The stock reward, as a list -- same terms, same order, same math as the
    original hardcoded formula. Append your own :class:`RewardComponent` to
    this list (or build an entirely different one) and pass it to
    :class:`~.manager.RewardManager`."""
    return [
        DamageComponent(cfg.w_damage, cfg.enemy_max_hp),
        KillComponent(cfg.w_kill, kill_source="kills_credited"),
        DamageTakenComponent(cfg.w_damage_taken, cfg.player_max_hp),
        DeathComponent(cfg.w_death),
        ShotCostComponent(cfg.w_shot_cost, cfg.shot_cost_mode),
        IdleComponent(cfg.w_idle, cfg.normalize_penalties_by_frame_skip),
        NotShootingComponent(cfg.w_not_shooting, cfg.normalize_penalties_by_frame_skip),
        TimeComponent(cfg.w_time),
    ]
