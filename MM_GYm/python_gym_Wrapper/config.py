"""Configuration dataclasses for the Mini Militia Gymnasium environment.

Every runtime knob lives here. Nothing is string-patched into the JS bundle:
``MiniMilitiaConfig.to_js()`` produces the object that is injected as
``__PY_CONFIG__``, so these dataclasses are the single source of truth.

Reward weights are stored as POSITIVE magnitudes. The signs live in the reward
formula (see :mod:`reward`). Storing negative weights *and* subtracting them --
as the original design did -- double-negates, which turns the wasted-ammo and
idle penalties into bonuses.
"""

from __future__ import annotations

import os
from dataclasses import dataclass, field, asdict
from typing import Any, Dict, Literal, Optional

_HERE = os.path.dirname(os.path.abspath(__file__))
DEFAULT_JS_DIR = os.path.join(_HERE, "js")

DeviceKind = Literal["gadget", "usb", "remote", "local"]

# ItemType ids accepted by WeaponFactory::createWeaponFromAmmoType.
WEAPON_TYPES: Dict[str, int] = {
    "machete": 1, "deagle": 3, "magnum": 4, "uzi": 5, "mp5": 6, "ak47": 7,
    "m16": 8, "shotgun": 9, "m93ba": 10, "smaw": 11, "m14": 16, "phasr": 17,
    "flamethrower": 19, "saw": 24, "tavor": 26, "minigun": 27, "tec9": 28,
    "rg6": 29, "xm8": 31,
}


@dataclass
class EnvConfig:
    """Connection, stepping, and game-modifier settings."""

    # --- Frida connection -------------------------------------------------
    device: DeviceKind = "gadget"
    host: str = "127.0.0.1:27042"
    process: str = "Gadget"
    adb_serial: Optional[str] = None
    """Specific ADB device serial (e.g. 'emulator-5554' or '192.168.1.5:5555')."""
    js_dir: str = DEFAULT_JS_DIR
    runtime: str = "v8"

    # --- Stepping ---------------------------------------------------------
    frame_skip: int = 10
    """Physics ticks the action is held for, per env.step()."""

    hard_sync: bool = True
    """Freeze CCScheduler::update and release exactly frame_skip real frames
    per step()/reset(), instead of letting the game run freely between steps.
    game_speed has no effect while this is True (see README)."""

    step_timeout_ms: int = 5000
    """JS-side watchdog. If the game stalls (menu, pause) the step resolves
    anyway with ``timed_out=True`` instead of blocking Python forever."""

    rpc_timeout_s: float = 30.0
    """Python-side backstop, must exceed step_timeout_ms."""

    auto_recover: bool = True
    """If the game process itself dies (e.g. a native crash under sustained
    instrumentation) and an RPC comes back as "script has been destroyed",
    relaunch the app and re-attach automatically instead of raising out of
    step()/reset()."""

    recover_wait_s: float = 8.0
    """Seconds to wait after relaunching the app (via adb) before re-attaching
    Frida, so the gadget's script server has time to come back up."""

    sample_every_tick: bool = True
    """Sample enemy positions on every tick. Needed for the idle-proximity
    test; disable for a modest speedup if the idle penalty is off."""

    # --- Episode contract -------------------------------------------------
    max_episode_steps: int = 3000
    """Episodes are truncated here. Truncation (not termination) is what gets
    reported, so a bootstrapping learner handles the cut correctly."""

    terminate_on_death: bool = False
    """End the episode when player HP reaches 0. Requires infinite_health=False."""

    reset_kill_player: bool = False
    """On reset(), call SoldierHostController::killPlayer to force a respawn."""

    reset_clear_enemies: bool = True
    """On reset(), call EnemyManager::killAllEnemies to clear the field."""

    reset_force_spawn: bool = True
    """On reset(), call SoldierManager::spawnPlayer to force player spawning."""

    reset_settle_ticks: int = 30
    """Physics ticks to let elapse after a reset before the first observation,
    so the respawn has completed."""

    # --- Game modifiers ---------------------------------------------------
    always_spawn_with_weapon: bool = True
    spawn_weapon_type: int = WEAPON_TYPES["uzi"]
    infinite_health: bool = True
    infinite_boost: bool = True
    infinite_reload_ammo: bool = True
    reload_ammo_reserve: int = 999
    disable_sarge: bool = True
    fix_spawn_time: bool = False
    """Zero SoldierManager::getRespawnTime() so the player respawns instantly.
    OFF by default: instant respawn removes a real signal (death cost/recovery time)."""

    disable_rendering: bool = False
    disable_sound: bool = True
    game_speed: float = 1.0
    """Writes CCScheduler's timescale. No effect while hard_sync=True (the
    fixed dt used there is not scaled by this)."""

    unlock_fps: bool = True
    show_fps: bool = True

    verbose: bool = False

    # --- Startup & Menu Navigation ----------------------------------------
    auto_navigate_menu: bool = True
    """If True, automatically launch the app and click through the menus via ADB
    using aspect-ratio-aware viewport coordinates on connect() and reconnect()."""

    game_aspect: float = 2.0
    """Mini Militia game viewport aspect ratio (width / height). Default 2.0 (2:1)."""

    startup_wait_s: float = 22.0
    """Seconds to wait after launching the app via ADB before dismissing splash."""

    splash_wait_s: float = 10.0
    """Seconds to wait after dismissing splash before tapping first menu button."""

    menu_step_wait_s: float = 2.0
    """Seconds to wait between subsequent menu button taps."""

    splash_tap_coords: tuple[int, int] = (1, 2)
    """Absolute (x, y) coordinates to tap to dismiss the splash screen."""

    button1_normalized: tuple[float, float] = (0.50, 0.65)
    """Normalized (x_ratio, y_ratio) coordinates for the first menu button."""

    button2_normalized: tuple[float, float] = (0.50, 0.46)
    """Normalized (x_ratio, y_ratio) coordinates for the second menu button."""

    def __post_init__(self) -> None:
        if self.frame_skip < 1:
            raise ValueError(f"frame_skip must be >= 1, got {self.frame_skip}")
        if self.max_episode_steps < 1:
            raise ValueError("max_episode_steps must be >= 1")
        if self.reset_settle_ticks < 1:
            raise ValueError("reset_settle_ticks must be >= 1")
        if self.rpc_timeout_s * 1000 <= self.step_timeout_ms:
            raise ValueError(
                "rpc_timeout_s must exceed step_timeout_ms so the JS watchdog "
                "fires before the Python backstop"
            )
        if self.terminate_on_death and self.infinite_health:
            raise ValueError(
                "terminate_on_death=True is meaningless with infinite_health=True: "
                "HP is clamped to 100 every tick so the episode can never end. "
                "Set one of them False."
            )
        if self.game_speed <= 0:
            raise ValueError("game_speed must be > 0")


@dataclass
class RewardConfig:
    """Reward weights, all POSITIVE magnitudes. Signs live in the formula.

    Scales are chosen so a typical step lands roughly in [-1, 1]: damage is
    normalised by ``enemy_max_hp`` and the kill bonus is single-digit rather
    than the 50 the original plan used against a 0.5 idle penalty.
    """

    w_damage: float = 10.0
    """Applied to (damage_dealt / enemy_max_hp). One full drone's worth of
    damage is therefore worth ~1.0."""

    w_kill: float = 15.0
    w_damage_taken: float = 1
    """Applied to (damage_taken / player_max_hp)."""

    w_death: float = 5.0

    w_shot_cost: float = 0.005
    """Per-shot cost. Gives mild anti-spray pressure outside combat without
    penalising shooting when fighting enemies."""

    shot_cost_mode: Literal["flat", "unrewarded"] = "unrewarded"
    """``flat`` charges every shot. ``unrewarded`` charges only when the step
    dealt no damage at all -- closer to the original intent, still stateless."""

    w_idle: float = 0.2
    """Per idle tick (neither moving nor shooting when engaged), divided by
    frame_skip so changing frame_skip does not silently rescale the reward
    function."""

    w_not_shooting: float = 0.5
    """Penalty per engaged tick when enemies are within engagement radius but
    the agent is NOT shooting, divided by frame_skip. Discourages pacifist
    behavior and ensures shooting (even if missing) is significantly preferred
    over holding fire."""

    w_time: float = 0.0
    """Optional flat per-step cost to discourage stalling."""

    enemy_max_hp: float = 100.0
    player_max_hp: float = 100.0

    normalize_penalties_by_frame_skip: bool = True
    clip: Optional[float] = 10.0
    """Final per-step clip. None disables."""

    def __post_init__(self) -> None:
        negatives = {
            k: v for k, v in asdict(self).items()
            if k.startswith("w_") and isinstance(v, (int, float)) and v < 0
        }
        if negatives:
            raise ValueError(
                f"Reward weights are magnitudes and must be >= 0; got {negatives}. "
                "Penalties are subtracted by the formula, so a negative weight "
                "here would flip the penalty into a bonus."
            )
        if self.enemy_max_hp <= 0 or self.player_max_hp <= 0:
            raise ValueError("max HP values must be > 0")


@dataclass
class ObservationConfig:
    """Observation shaping.

    Enemy features default to player-relative coordinates. Absolute map
    coordinates would need per-map bounds that nothing in the instrumentation
    reports; relative offsets are bounded in practice and far more sample
    efficient.
    """

    max_enemies: int = 5
    max_enemy_scan: int = 32
    relative_enemy_coords: bool = True
    normalize: bool = True

    pos_scale: float = 1000.0
    vel_scale: float = 500.0
    hp_scale: float = 100.0
    ammo_scale: float = 100.0
    dist_scale: float = 2000.0

    include_player_hp: bool = True
    include_ammo: bool = True
    include_enemy_type_onehot: bool = True

    engagement_radius: float = 1000.0
    """Enemy within this range counts as "engaged" for the idle penalty."""

    n_enemy_types: int = 3

    def __post_init__(self) -> None:
        if self.max_enemies < 1:
            raise ValueError("max_enemies must be >= 1")
        if self.max_enemy_scan < self.max_enemies:
            raise ValueError("max_enemy_scan must be >= max_enemies")
        for name in ("pos_scale", "vel_scale", "hp_scale", "ammo_scale", "dist_scale"):
            if getattr(self, name) <= 0:
                raise ValueError(f"{name} must be > 0")

    @property
    def player_features(self) -> int:
        # x, y, vx, vy  (+hp, +power)  (+ammo, reloading)
        n = 4
        if self.include_player_hp:
            n += 2
        if self.include_ammo:
            n += 2
        return n

    @property
    def enemy_features(self) -> int:
        # present, dx, dy, vx, vy, hp, dist  (+ type one-hot)
        n = 7
        if self.include_enemy_type_onehot:
            n += self.n_enemy_types
        return n

    @property
    def flat_size(self) -> int:
        return self.player_features + self.max_enemies * self.enemy_features


@dataclass
class ActionSpaceConfig:
    """Continuous action space: [move_x, move_y, aim_x, aim_y, shoot]."""

    low: float = -1.0
    high: float = 1.0
    dim: int = 5

    move_deadzone: float = 0.1
    aim_deadzone: float = 0.01
    shoot_threshold: float = 0.0
    joystick_radius: float = 60.0

    NAMES = ("move_x", "move_y", "aim_x", "aim_y", "shoot")

    def __post_init__(self) -> None:
        if self.dim != 5:
            raise ValueError("dim is fixed at 5: [move_x, move_y, aim_x, aim_y, shoot]")
        if self.low >= self.high:
            raise ValueError("low must be < high")


@dataclass
class MiniMilitiaConfig:
    """Top-level container passed to :class:`MiniMilitiaEnv`."""

    env: EnvConfig = field(default_factory=EnvConfig)
    reward: RewardConfig = field(default_factory=RewardConfig)
    obs: ObservationConfig = field(default_factory=ObservationConfig)
    action: ActionSpaceConfig = field(default_factory=ActionSpaceConfig)

    def to_js(self) -> Dict[str, Any]:
        """Build the ``__PY_CONFIG__`` object injected into the JS bundle."""
        e, o, a = self.env, self.obs, self.action
        return {
            "frame_skip": e.frame_skip,
            "hard_sync": e.hard_sync,
            "step_timeout_ms": e.step_timeout_ms,
            "sample_every_tick": e.sample_every_tick,
            "always_spawn_with_weapon": e.always_spawn_with_weapon,
            "spawn_weapon_type": e.spawn_weapon_type,
            "infinite_health": e.infinite_health,
            "infinite_boost": e.infinite_boost,
            "infinite_reload_ammo": e.infinite_reload_ammo,
            "reload_ammo_reserve": e.reload_ammo_reserve,
            "disable_sarge": e.disable_sarge,
            "fix_spawn_time": e.fix_spawn_time,
            "disable_rendering": e.disable_rendering,
            "disable_sound": e.disable_sound,
            "game_speed": e.game_speed,
            "unlock_fps": e.unlock_fps,
            "show_fps": e.show_fps,
            "verbose": e.verbose,
            "max_enemies": o.max_enemies,
            "max_enemy_scan": o.max_enemy_scan,
            "engagement_radius": o.engagement_radius,
            "move_deadzone": a.move_deadzone,
            "aim_deadzone": a.aim_deadzone,
            "shoot_threshold": a.shoot_threshold,
            "joystick_radius": a.joystick_radius,
        }
