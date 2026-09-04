"""Enemy configurations, AI states, and aggression profiles."""

from dataclasses import dataclass
from enum import IntEnum
from typing import Dict, FrozenSet
from .provenance import Provenance, register_provenance


class EnemyState(IntEnum):
    DEAD = 0
    SPAWN = 1
    PATROL = 2         # Binary state 2: getSearchPoint() -> updateMoveTo()
    CHASE = 3          # Binary state 3: updateMoveTo(target) + updateAim()
    ATTACK = 4         # Binary state 4: hold in range and fire
    HOVER = 5
    INVESTIGATE = 6
    STRAFE = 7
    REPOSITION = 8
    RETREAT = 9


FALLBACK_STATE: Dict[EnemyState, EnemyState] = {
    EnemyState.HOVER: EnemyState.ATTACK,
    EnemyState.INVESTIGATE: EnemyState.PATROL,
    EnemyState.STRAFE: EnemyState.ATTACK,
    EnemyState.REPOSITION: EnemyState.CHASE,
    EnemyState.RETREAT: EnemyState.PATROL,
}

BINARY_FAITHFUL_STATES = frozenset({
    EnemyState.DEAD,
    EnemyState.SPAWN,
    EnemyState.PATROL,
    EnemyState.CHASE,
    EnemyState.ATTACK,
})


@dataclass
class AggressionProfile:
    name: str
    vision_radius: float = 700.0          # [EXTRACTED worm vision 700]
    arrival_radius: float = 160.0         # [EXTRACTED arrival 160]
    standoff_dist: float = 300.0
    aim_smooth: float = 0.95              # Extracted smoothing factor (tau ~ 0.33s)
    fire_prob: float = 0.35               # Probability of firing per cycle
    max_concurrent_attackers: int = 2
    fire_cone_deg: float = 20.0
    retarget_interval_ticks: int = 15     # Checks LOS every N ticks for high throughput


PROFILES: Dict[str, AggressionProfile] = {
    "dummy": AggressionProfile(name="dummy", vision_radius=0.0, fire_prob=0.0, max_concurrent_attackers=0),
    "passive": AggressionProfile(name="passive", vision_radius=500.0, fire_prob=0.0, max_concurrent_attackers=0),
    "easy": AggressionProfile(name="easy", vision_radius=500.0, fire_prob=0.15, max_concurrent_attackers=1),
    "normal": AggressionProfile(name="normal", vision_radius=700.0, fire_prob=0.35, max_concurrent_attackers=2),
    "hard": AggressionProfile(name="hard", vision_radius=900.0, fire_prob=0.60, max_concurrent_attackers=3),
    "binary_faithful": AggressionProfile(name="binary_faithful", vision_radius=700.0, fire_prob=0.35, max_concurrent_attackers=2),
}

register_provenance("ai.vision_radius", Provenance.EXTRACTED)
register_provenance("ai.arrival_radius", Provenance.EXTRACTED)
register_provenance("ai.aim_smooth", Provenance.EXTRACTED)
register_provenance("ai.fire_prob", Provenance.TUNING)
register_provenance("ai.max_concurrent_attackers", Provenance.TUNING)
