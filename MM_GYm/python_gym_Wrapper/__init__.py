"""Gymnasium environment for Mini Militia, driven by Frida instrumentation.

Quick start::

    from python_gym_Wrapper import MiniMilitiaEnv, MiniMilitiaConfig

    cfg = MiniMilitiaConfig()
    cfg.env.frame_skip = 10
    cfg.env.game_speed = 1.0

    env = MiniMilitiaEnv(cfg)
    obs, info = env.reset()
    obs, reward, terminated, truncated, info = env.step(env.action_space.sample())
    env.close()

Run without the game attached (payload-shape double, toy physics)::

    from python_gym_Wrapper import MiniMilitiaEnv, MiniMilitiaConfig, MockBridge

    cfg = MiniMilitiaConfig()
    env = MiniMilitiaEnv(cfg, bridge=MockBridge(cfg))
"""

from .config import (
    ActionSpaceConfig,
    EnvConfig,
    MiniMilitiaConfig,
    ObservationConfig,
    RewardConfig,
    WEAPON_TYPES,
)
from .frida_bridge import BridgeError, BridgeTimeout, FridaBridge, bundle_js
from .minimilitia_env import MiniMilitiaEnv
from .mock_bridge import MockBridge
from .rewards import (
    AimAlignmentComponent,
    DamageComponent,
    DamageTakenComponent,
    DeathComponent,
    IdleComponent,
    KillComponent,
    NotShootingComponent,
    RewardBreakdown,
    RewardComponent,
    RewardManager,
    RewardStats,
    ShotCostComponent,
    TimeComponent,
    default_components,
)
from .utils import ObservationEncoder

__version__ = "1.0.0"

ENV_ID = "MiniMilitia-v0"

__all__ = [
    "MiniMilitiaEnv",
    "MiniMilitiaConfig",
    "EnvConfig",
    "RewardConfig",
    "ObservationConfig",
    "ActionSpaceConfig",
    "WEAPON_TYPES",
    "FridaBridge",
    "MockBridge",
    "BridgeError",
    "BridgeTimeout",
    "bundle_js",
    "RewardManager",
    "RewardComponent",
    "RewardStats",
    "RewardBreakdown",
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
    "ObservationEncoder",
    "ENV_ID",
    "register",
]


def register() -> None:
    """Register ``MiniMilitia-v0`` with gymnasium. Safe to call repeatedly."""
    from gymnasium.envs.registration import register as _register, registry

    if ENV_ID in registry:
        return
    _register(id=ENV_ID, entry_point="python_gym_Wrapper.minimilitia_env:MiniMilitiaEnv")
