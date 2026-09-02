"""Reward computation for the Mini Militia environment.

The heavy lifting happens in JS: damage, kills, shots and deaths are counted by
Interceptor hooks on the functions that actually perform them, and arrive here
as exact per-step deltas. This package only applies weights, so reward shaping
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

Pluggable components
---------------------
Reward is a sum of independent :class:`RewardComponent` terms, run by
:class:`RewardManager`. Each component receives one shared :class:`RewardStats`
snapshot per step and returns its own already-weighted, already-signed
contribution (bonus positive, penalty negative) -- there is no central
"subtract this one" special-casing. :func:`default_components` builds the
stock set (the same eight terms the environment always had, one per file in
this package); append your own ``RewardComponent`` to that list, or build an
entirely different one, and pass it to ``RewardManager``/``MiniMilitiaEnv``.
:class:`AimAlignmentComponent` is a worked example of a custom, stateful
component.

Layout
------
``stats.py``           RewardStats -- the per-step snapshot every component reads
``base.py``             RewardComponent -- the interface
``breakdown.py``        RewardBreakdown -- per-step result surfaced in info['reward']
``manager.py``          RewardManager -- runs the components, sums, clips, totals
``defaults.py``         default_components() -- the stock list
``damage.py``           DamageComponent
``kill.py``             KillComponent
``damage_taken.py``     DamageTakenComponent
``death.py``            DeathComponent
``shot_cost.py``        ShotCostComponent
``idle.py``             IdleComponent
``not_shooting.py``     NotShootingComponent
``time_cost.py``        TimeComponent
``aim_alignment.py``    AimAlignmentComponent -- worked custom-component example
"""

from __future__ import annotations

from .aim_alignment import AimAlignmentComponent
from .base import RewardComponent
from .breakdown import RewardBreakdown
from .damage import DamageComponent
from .damage_taken import DamageTakenComponent
from .death import DeathComponent
from .defaults import default_components
from .idle import IdleComponent
from .kill import KillComponent
from .manager import RewardManager
from .not_shooting import NotShootingComponent
from .shot_cost import ShotCostComponent
from .stats import RewardStats
from .time_cost import TimeComponent

__all__ = [
    "RewardStats",
    "RewardComponent",
    "RewardBreakdown",
    "RewardManager",
    "default_components",
    "DamageComponent",
    "KillComponent",
    "DamageTakenComponent",
    "DeathComponent",
    "ShotCostComponent",
    "IdleComponent",
    "NotShootingComponent",
    "TimeComponent",
    "AimAlignmentComponent",
]
