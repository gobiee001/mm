"""Root CloneConfig container embedding MiniMilitiaConfig and clone sub-configs."""

from dataclasses import dataclass, field
from python_gym_Wrapper.config import MiniMilitiaConfig
from .space import SpaceConfig
from .survival import SpawnConfig
from .world import MapConfig, AssetTier
from .enemies import AggressionProfile, PROFILES


@dataclass
class CloneConfig:
    gym: MiniMilitiaConfig = field(default_factory=MiniMilitiaConfig)
    space: SpaceConfig = field(default_factory=SpaceConfig)
    spawn: SpawnConfig = field(default_factory=SpawnConfig)
    map: MapConfig = field(default_factory=MapConfig)
    aggression: AggressionProfile = field(default_factory=lambda: PROFILES["normal"])
    player_half_w: float = 12.0
    player_half_h: float = 21.0
    hawk_half_w: float = 16.0
    hawk_half_h: float = 16.0
    humanoid_half_w: float = 12.0
    humanoid_half_h: float = 21.0
    worm_half_w: float = 15.0
    worm_half_h: float = 10.0

    def __post_init__(self) -> None:
        self._load_from_json()

    def _load_from_json(self) -> None:
        import json
        from pathlib import Path
        from .bodies import PLAYER_PHYSICS, HAWK_PHYSICS, HUMANOID_PHYSICS, WORM_PHYSICS

        candidates = [
            Path.cwd() / "config.json",
            Path(__file__).resolve().parent.parent.parent / "config.json",
            Path(__file__).resolve().parent.parent.parent.parent / "TmxFiles-testing-map" / "sd" / "scripts" / "config.json",
            Path(__file__).resolve().parent.parent.parent.parent / "TmxFiles-testing-map" / "TrainingCloneEnv" / "config.json",
        ]
        for p in candidates:
            if p.is_file():
                try:
                    with open(p, "r", encoding="utf-8") as f:
                        data = json.load(f)
                    if "player_width" in data:
                        self.player_half_w = float(data["player_width"]) / 2.0
                        PLAYER_PHYSICS.half_w = self.player_half_w
                    if "player_height" in data:
                        self.player_half_h = float(data["player_height"]) / 2.0
                        PLAYER_PHYSICS.half_h = self.player_half_h
                    if "hawk_width" in data:
                        self.hawk_half_w = float(data["hawk_width"]) / 2.0
                        HAWK_PHYSICS.half_w = self.hawk_half_w
                    if "hawk_height" in data:
                        self.hawk_half_h = float(data["hawk_height"]) / 2.0
                        HAWK_PHYSICS.half_h = self.hawk_half_h
                    if "humanoid_width" in data:
                        self.humanoid_half_w = float(data["humanoid_width"]) / 2.0
                        HUMANOID_PHYSICS.half_w = self.humanoid_half_w
                    if "humanoid_height" in data:
                        self.humanoid_half_h = float(data["humanoid_height"]) / 2.0
                        HUMANOID_PHYSICS.half_h = self.humanoid_half_h
                    if "worm_width" in data:
                        self.worm_half_w = float(data["worm_width"]) / 2.0
                        WORM_PHYSICS.half_w = self.worm_half_w
                    if "worm_height" in data:
                        self.worm_half_h = float(data["worm_height"]) / 2.0
                        WORM_PHYSICS.half_h = self.worm_half_h

                    raw_phys = data.get("physics", {})
                    if raw_phys:
                        for bp in (PLAYER_PHYSICS, HAWK_PHYSICS, HUMANOID_PHYSICS, WORM_PHYSICS):
                            if "mass" in raw_phys:
                                bp.mass = float(raw_phys["mass"])
                                bp.inv_mass = 1.0 / bp.mass
                            if "gravity_airborne" in raw_phys:
                                bp.gravity_airborne = tuple(float(v) for v in raw_phys["gravity_airborne"])
                            if "gravity_grounded" in raw_phys:
                                bp.gravity_grounded = tuple(float(v) for v in raw_phys["gravity_grounded"])
                            if "max_speed_x" in raw_phys:
                                bp.max_speed_x = float(raw_phys["max_speed_x"])
                            if "max_speed_flight" in raw_phys:
                                bp.max_speed_flight = float(raw_phys["max_speed_flight"])
                            if "jump_impulse" in raw_phys:
                                bp.jump_impulse = float(raw_phys["jump_impulse"])
                            if "flight_accel_mult" in raw_phys:
                                bp.flight_accel_mult = float(raw_phys["flight_accel_mult"])
                            if "ground_accel_mult" in raw_phys:
                                bp.ground_accel_mult = float(raw_phys["ground_accel_mult"])
                            if "power_drain_rate" in raw_phys:
                                bp.power_drain_rate = float(raw_phys["power_drain_rate"])
                            if "power_regen_rate" in raw_phys:
                                bp.power_regen_rate = float(raw_phys["power_regen_rate"])

                    if "default_map" in data:
                        self.map.map_name = str(data["default_map"])
                    if "collider_inset_pixels" in data:
                        self.map.collider_inset_pixels = int(data["collider_inset_pixels"])
                    if "collision_alpha_threshold" in data:
                        self.map.collision_alpha_threshold = int(data["collision_alpha_threshold"])

                    # Check map-specific borders
                    active_map = self.map.map_name.replace(".tmx", "")
                    map_cfg = data.get("maps", {}).get(active_map, {})
                    borders = map_cfg.get("borders", data.get("borders", {}))
                    if borders:
                        if "left" in borders:
                            self.map.border_left = float(borders["left"])
                        if "right" in borders:
                            self.map.border_right = float(borders["right"])
                        if "bottom" in borders:
                            self.map.border_bottom = float(borders["bottom"])
                        if "top" in borders:
                            self.map.border_top = float(borders["top"])
                    break
                except Exception:
                    pass
