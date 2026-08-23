"""Gymnasium environment for Mini Militia driven by Frida instrumentation."""

from __future__ import annotations

from typing import Any, Dict, List, Optional, Tuple

import gymnasium as gym
import numpy as np
from gymnasium import spaces

from .config import MiniMilitiaConfig
from .frida_bridge import BridgeError, BridgeTimeout, FridaBridge, is_process_crash
from .reward import RewardBreakdown, RewardCalculator
from .utils import ObservationEncoder


class MiniMilitiaEnv(gym.Env):
    """A ``gymnasium.Env`` over a live Mini Militia process.

    Action space
    ------------
    ``Box(-1, 1, (5,))`` -- ``[move_x, move_y, aim_x, aim_y, shoot]``.
    Values are used directly: the JS layer clamps to [-1, 1] and does **not**
    remap. (The legacy action script mapped [0,1] onto [-1,1], so passing a
    [-1,1] Box through it collapsed every negative component onto -1.0.)
    ``shoot`` fires when it exceeds ``ActionSpaceConfig.shoot_threshold``.

    Observation space
    -----------------
    Flat ``float32`` vector: player features followed by ``max_enemies`` slots
    ordered nearest-first, each with a ``present`` mask. See
    :meth:`observation_labels`.

    Episode contract
    ----------------
    ``reset()`` performs a real soft reset -- ``killPlayer()`` and/or
    ``killAllEnemies()`` are invoked on the game thread, then
    ``reset_settle_ticks`` physics ticks elapse before the first observation.

    ``terminated`` is True when the player dies (requires
    ``infinite_health=False``) or the stage reports game over. ``truncated`` is
    True at ``max_episode_steps`` or after a persistent tick stall. Nothing
    reports ``terminated`` for a merely arbitrary cut, so a bootstrapping
    learner handles episode boundaries correctly.

    Synchronisation
    ---------------
    Each ``step()`` is one blocking RPC: the action is applied, then the JS side
    resolves after ``frame_skip`` physics ticks. This is *soft* synchronisation
    -- the game thread is never halted, so it keeps running between the resolve
    and the next call. ``info['tick_slip']`` reports the difference between the
    ticks actually observed and ``frame_skip`` so drift is visible rather than
    silently folded into the reward.
    """

    metadata = {"render_modes": ["ansi"], "render_fps": 60}

    def __init__(self, config: Optional[MiniMilitiaConfig] = None,
                 bridge: Optional[Any] = None,
                 render_mode: Optional[str] = None,
                 auto_connect: bool = True):
        super().__init__()

        if render_mode is not None and render_mode not in self.metadata["render_modes"]:
            raise ValueError(f"unsupported render_mode: {render_mode}")

        self.cfg = config or MiniMilitiaConfig()
        self.render_mode = render_mode
        self._auto_connect = auto_connect

        self._encoder = ObservationEncoder(self.cfg.obs)
        self._reward = RewardCalculator(self.cfg.reward, self.cfg.env.frame_skip)

        a = self.cfg.action
        self.action_space = spaces.Box(
            low=a.low, high=a.high, shape=(a.dim,), dtype=np.float32)

        lo, hi = self._encoder.bounds()
        self.observation_space = spaces.Box(
            low=lo, high=hi, shape=(self._encoder.size,), dtype=np.float32)

        self._bridge = bridge
        self._owns_bridge = bridge is None
        self._connected = bridge is not None
        self._info: Dict[str, Any] = {}

        self._steps = 0
        self._episodes = 0
        self._stalls = 0
        self._crashes = 0
        self._last_raw: Dict[str, Any] = {}
        self._last_payload: Dict[str, Any] = {}

    # -- connection --------------------------------------------------------
    def connect(self) -> Dict[str, Any]:
        """Attach to the target. Called automatically by the first ``reset()``."""
        if self._connected and self._info:
            return self._info
        if self._bridge is None:
            self._bridge = FridaBridge(self.cfg, on_log=self._log)
        # An injected bridge may already be live (MockBridge, or a shared
        # session); ask it to describe itself rather than reconnecting.
        self._info = (self._bridge.info() if self._connected
                      else self._bridge.connect())
        self._connected = True

        caps = self._info.get("capabilities", {}) or {}
        if not caps.get("damage_hook", True):
            self._log("[warn] Enemy::addDamage not hooked -- damage reward will "
                      "stay at zero.")
        if not caps.get("kill_hook", True):
            self._log("[warn] no kill hook resolved -- kill reward will stay at zero.")
        if not caps.get("shot_hook", True):
            self._log("[warn] weaponDidFire not hooked -- shot cost will stay at zero.")
        if self.cfg.env.terminate_on_death and not caps.get("player_hp", True):
            self._log("[warn] player HP unavailable -- episodes cannot terminate "
                      "on death and will only truncate.")
        return self._info

    def _log(self, msg: str) -> None:
        if self.cfg.env.verbose:
            print(msg)

    @property
    def bridge(self) -> Any:
        return self._bridge

    @property
    def instrumentation_info(self) -> Dict[str, Any]:
        return dict(self._info)

    def observation_labels(self) -> List[str]:
        return self._encoder.labels()

    # -- gym API -----------------------------------------------------------
    def reset(self, *, seed: Optional[int] = None,
              options: Optional[Dict[str, Any]] = None
              ) -> Tuple[np.ndarray, Dict[str, Any]]:
        super().reset(seed=seed)

        if not self._connected:
            if not self._auto_connect:
                raise BridgeError("env is not connected; call connect() first")
            self.connect()

        # A live game process is not reproducible, so FridaBridge exposes no
        # seed(). MockBridge does, which is what makes rollouts repeatable in
        # tests. Seed before the reset so respawn placement uses it.
        if seed is not None:
            bridge_seed = getattr(self._bridge, "seed", None)
            if callable(bridge_seed):
                bridge_seed(seed)

        opts = options or {}
        e = self.cfg.env
        reset_kwargs = dict(
            kill_player=bool(opts.get("kill_player", e.reset_kill_player)),
            clear_enemies=bool(opts.get("clear_enemies", e.reset_clear_enemies)),
            settle_ticks=int(opts.get("settle_ticks", e.reset_settle_ticks)),
        )
        try:
            payload = self._bridge.reset(**reset_kwargs)
        except BridgeError as exc:
            if not (e.auto_recover and is_process_crash(exc)):
                raise
            self._crashes += 1
            self._log(f"[recover] game crashed during reset() ({exc}); "
                      "relaunching and re-attaching, then retrying reset()...")
            self._info = self._bridge.reconnect()
            payload = self._bridge.reset(**reset_kwargs)

        self._reward.reset()
        self._steps = 0
        self._stalls = 0
        self._episodes += 1
        self._last_payload = payload
        self._last_raw = payload.get("obs", {}) or {}

        obs = self._encoder.encode_copy(self._last_raw)
        info = {
            "episode": self._episodes,
            "tick_source": getattr(self._bridge, "tick_source", None),
            "reset_ticks": (payload.get("acc") or {}).get("ticks", 0),
            "timed_out": bool(payload.get("timed_out")),
            "enemy_count": self._last_raw.get("enemy_count", 0),
            "has_player": bool(payload.get("has_player", True)),
        }
        return obs, info

    def step(self, action: Any) -> Tuple[np.ndarray, float, bool, bool, Dict[str, Any]]:
        if not self._connected:
            raise BridgeError("env is not connected; call reset() first")

        vec = np.asarray(action, dtype=np.float32).reshape(-1)
        if vec.size != self.cfg.action.dim:
            raise ValueError(
                f"action must have {self.cfg.action.dim} elements, got {vec.size}")
        vec = np.clip(vec, self.cfg.action.low, self.cfg.action.high)

        e = self.cfg.env
        try:
            payload = self._bridge.step([float(v) for v in vec])
        except BridgeError as exc:
            if not (e.auto_recover and is_process_crash(exc)):
                raise
            self._crashes += 1
            self._steps += 1
            self._log(f"[recover] game crashed mid-step ({exc}); "
                      "relaunching and re-attaching...")
            self._info = self._bridge.reconnect()
            # The episode ends here -- truncated, not terminated, since this
            # was an arbitrary cut, not a real in-game death. The caller's
            # next reset() runs against the freshly relaunched app.
            obs = self._encoder.encode_copy(self._last_raw)
            breakdown = RewardBreakdown()
            info = {
                "reward": breakdown.as_dict(),
                "episode_totals": self._reward.totals.as_dict(),
                "events": {},
                "ticks": 0,
                "tick_slip": -self.cfg.env.frame_skip,
                "dt_mean": 0.0,
                "min_enemy_distance": -1.0,
                "idle_ticks": 0,
                "engaged_ticks": 0,
                "enemy_count": self._last_raw.get("enemy_count", 0),
                "player_hp": (self._last_raw.get("player") or {}).get("hp", 0),
                "timed_out": False,
                "steps": self._steps,
                "crashed": True,
                "end_reason": "game_crashed_recovered",
            }
            return obs, 0.0, False, True, info

        self._steps += 1
        self._last_payload = payload

        raw = payload.get("obs", {}) or {}
        events = payload.get("events", {}) or {}
        acc = payload.get("acc", {}) or {}
        self._last_raw = raw

        breakdown = self._reward.compute(events, acc)
        obs = self._encoder.encode_copy(raw)

        ticks = int(acc.get("ticks", 0) or 0)
        slip = ticks - self.cfg.env.frame_skip
        timed_out = bool(payload.get("timed_out"))
        self._stalls = self._stalls + 1 if timed_out else 0

        terminated, truncated, reason = self._episode_flags(events, timed_out)

        info: Dict[str, Any] = {
            "reward": breakdown.as_dict(),
            "episode_totals": self._reward.totals.as_dict(),
            "events": events,
            "ticks": ticks,
            "tick_slip": slip,
            "dt_mean": acc.get("dt_mean", 0.0),
            "min_enemy_distance": acc.get("min_dist", -1.0),
            "idle_ticks": acc.get("idle_ticks", 0),
            "engaged_ticks": acc.get("engaged_ticks", 0),
            "enemy_count": raw.get("enemy_count", 0),
            "player_hp": (raw.get("player") or {}).get("hp", 0),
            "timed_out": timed_out,
            "steps": self._steps,
        }
        if reason:
            info["end_reason"] = reason
        if slip != 0:
            info["tick_slip_warning"] = (
                f"observed {ticks} ticks, expected {self.cfg.env.frame_skip}")

        return obs, float(breakdown.total), terminated, truncated, info

    def _episode_flags(self, events: Dict[str, Any],
                       timed_out: bool) -> Tuple[bool, bool, Optional[str]]:
        e = self.cfg.env
        terminated = False
        reason: Optional[str] = None

        if e.terminate_on_death and int(events.get("player_deaths", 0) or 0) > 0:
            terminated, reason = True, "player_death"
        elif int(events.get("game_ended", 0) or 0) > 0:
            terminated, reason = True, "game_ended"

        truncated = False
        if not terminated:
            if self._steps >= e.max_episode_steps:
                truncated, reason = True, "max_episode_steps"
            elif timed_out and self._stalls >= 3:
                truncated, reason = True, "tick_stall"

        return terminated, truncated, reason

    def render(self) -> Optional[str]:
        if self.render_mode != "ansi":
            return None

        p = (self._last_raw.get("player") or {})
        enemies = self._last_raw.get("enemies") or []
        acc = self._last_payload.get("acc") or {}
        lines = [
            f"step {self._steps}  ticks={acc.get('ticks', 0)}  "
            f"dt={acc.get('dt_mean', 0.0):.5f}",
            f"player  pos=({p.get('x', 0.0):8.1f},{p.get('y', 0.0):8.1f})  "
            f"vel=({p.get('vx', 0.0):7.1f},{p.get('vy', 0.0):7.1f})  "
            f"hp={p.get('hp', 0):5.1f}  ammo={p.get('ammo', 0)}"
            f"{'  RELOADING' if p.get('reloading') else ''}",
            f"enemies {len(enemies)} shown / {self._last_raw.get('enemy_count', 0)} active",
        ]
        names = {0: "Hawk", 1: "Humanoid", 2: "Worm"}
        for i, e in enumerate(enemies):
            lines.append(
                f"  [{i}] {names.get(e.get('type'), '?'):9s} hp={e.get('hp', 0):5.1f} "
                f"pos=({e.get('x', 0.0):8.1f},{e.get('y', 0.0):8.1f}) "
                f"d={e.get('dist', 0.0):7.1f}")
        return "\n".join(lines)

    def close(self) -> None:
        if self._bridge is not None and self._owns_bridge:
            self._bridge.close()
        self._connected = False


__all__ = ["MiniMilitiaEnv", "BridgeError", "BridgeTimeout"]
