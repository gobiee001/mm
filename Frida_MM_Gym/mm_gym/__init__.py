"""mm_gym -- Frida-backed actuation and observation for com.appsomniacs.da2.

Two concerns, independently toggleable:

* **Actuation** -- force player HP / boost / ammo / loadout every frame.
* **Observation** -- snapshot the player and every enemy once per N frames and
  push it to Python.

Plus six environment controls (fast-forward, FPS unlock, FPS monitor, stop
rendering, block audio, block Sarge).

Quick start::

    from mm_gym import GymSession, GymConfig

    cfg = GymConfig(obs_interval_frames=10)
    cfg.env.block_sarge.enabled = True

    with GymSession(cfg) as gym:
        gym.wait_ready()
        for obs in gym.observations(timeout=5.0):
            print(obs["player"]["pos"], len(obs["enemies"]))

Requires ``adb forward tcp:27042 tcp:27042`` and the gadget APK running.
"""

from .bundler import BundleError, bundle, bundle_with_order, make_prelude
from .config import (
    ActuatorConfig,
    AmmoConfig,
    EnvConfig,
    FastForwardConfig,
    FpsMonitorConfig,
    GymConfig,
    HealthConfig,
    LoadoutConfig,
    PowerConfig,
    StopRenderingConfig,
    ToggleConfig,
)
from .schema import ITEM_TYPES, UZI, ENEMY_TYPES, validate, weapon_name
from .session import AGENT_ENTRY, GymSession
from .sinks import ConsoleSink, JsonlSink, MultiSink, QueueSink, Sink

__all__ = [
    "GymSession",
    "GymConfig",
    "AGENT_ENTRY",
    "ActuatorConfig",
    "AmmoConfig",
    "EnvConfig",
    "FastForwardConfig",
    "FpsMonitorConfig",
    "HealthConfig",
    "LoadoutConfig",
    "PowerConfig",
    "StopRenderingConfig",
    "ToggleConfig",
    "Sink",
    "QueueSink",
    "JsonlSink",
    "ConsoleSink",
    "MultiSink",
    "bundle",
    "bundle_with_order",
    "make_prelude",
    "BundleError",
    "validate",
    "weapon_name",
    "ITEM_TYPES",
    "ENEMY_TYPES",
    "UZI",
]
