"""Configuration objects mirroring ``agent/core/config.js`` defaults.

Kept as dataclasses so callers get attribute access and IDE completion, and
``to_dict()`` produces exactly the JSON shape the agent's ``deepMerge`` expects.
"""

from __future__ import annotations

import json
from dataclasses import dataclass, field, asdict
from pathlib import Path
from typing import Any


@dataclass
class HealthConfig:
    enabled: bool = True
    value: int = 100


@dataclass
class PowerConfig:
    enabled: bool = True
    value: float = 100.0


@dataclass
class AmmoConfig:
    enabled: bool = True
    refill_reserve_every_frame: bool = True
    refill_clip_on_reload_end: bool = True


@dataclass
class LoadoutConfig:
    enabled: bool = True
    #: ItemType. 5 = UZI. See agent/actuators/loadout.js for the full table.
    weapon_type: int = 5
    strip_other_slots: bool = True


@dataclass
class ActuatorConfig:
    health: HealthConfig = field(default_factory=HealthConfig)
    power: PowerConfig = field(default_factory=PowerConfig)
    ammo: AmmoConfig = field(default_factory=AmmoConfig)
    loadout: LoadoutConfig = field(default_factory=LoadoutConfig)


@dataclass
class FastForwardConfig:
    enabled: bool = False
    time_scale: float = 3.0


@dataclass
class ToggleConfig:
    enabled: bool = False


@dataclass
class FpsMonitorConfig:
    enabled: bool = False
    report_interval_ms: int = 1000


@dataclass
class StopRenderingConfig:
    enabled: bool = False
    #: The CCDirector+0x51 write is the debug-stats overlay, not part of
    #: stopping rendering. True keeps parity with the original
    #: Frida_finalScripts/core/stoprendering.js.
    show_stats: bool = True


@dataclass
class EnvConfig:
    fast_forward: FastForwardConfig = field(default_factory=FastForwardConfig)
    fps_unlock: ToggleConfig = field(default_factory=ToggleConfig)
    fps_monitor: FpsMonitorConfig = field(default_factory=FpsMonitorConfig)
    stop_rendering: StopRenderingConfig = field(default_factory=StopRenderingConfig)
    block_audio: ToggleConfig = field(default_factory=ToggleConfig)
    block_sarge: ToggleConfig = field(default_factory=ToggleConfig)


@dataclass
class GymConfig:
    #: Emit an observation every N calls of EnemyManager::updateStep.
    obs_interval_frames: int = 10
    emit: bool = True
    include_screen_coords: bool = True
    include_enemy_hp: bool = True
    #: "auto" probes the cpVect return ABI at runtime. Override with one of
    #: "struct", "sret", "packed", "finite_diff" to pin it.
    vec_abi: str = "auto"
    log_level: str = "info"

    actuators: ActuatorConfig = field(default_factory=ActuatorConfig)
    env: EnvConfig = field(default_factory=EnvConfig)

    # -- connection ---------------------------------------------------------
    #: frida-gadget endpoint. Requires `adb forward tcp:27042 tcp:27042`.
    device_address: str = "127.0.0.1:27042"
    #: The gadget always presents itself under this name.
    process_name: str = "Gadget"

    def to_dict(self) -> dict[str, Any]:
        """JSON shape for the agent. Connection fields are Python-side only."""
        d = asdict(self)
        d.pop("device_address", None)
        d.pop("process_name", None)
        return d

    # -- construction helpers ----------------------------------------------

    @classmethod
    def from_dict(cls, data: dict[str, Any]) -> "GymConfig":
        cfg = cls()
        cfg.apply(data)
        return cfg

    @classmethod
    def from_json_file(cls, path: str | Path) -> "GymConfig":
        with open(path, "r", encoding="utf-8") as fh:
            return cls.from_dict(json.load(fh))

    def apply(self, data: dict[str, Any]) -> "GymConfig":
        """Deep-merge a plain dict over this config, in place."""
        _merge_into(self, data)
        return self


def _merge_into(target: Any, data: dict[str, Any]) -> None:
    for key, value in data.items():
        if not hasattr(target, key):
            raise ValueError(f"unknown config key: {key}")
        current = getattr(target, key)
        if isinstance(value, dict) and hasattr(current, "__dataclass_fields__"):
            _merge_into(current, value)
        else:
            setattr(target, key, value)
