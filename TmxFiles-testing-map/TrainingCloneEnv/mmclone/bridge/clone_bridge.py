"""CloneBridge satisfying the complete FridaBridge RPC surface in-process."""

from typing import Any, Dict, List, Optional
import numpy as np

from ..config.clone import CloneConfig
from ..mapdata.bake import bake_or_load_map
from ..sim.world import CloneWorld


class CloneBridge:
    def __init__(
        self,
        config: Optional[CloneConfig] = None,
        seed: Optional[int] = None,
    ) -> None:
        self.cfg = config or CloneConfig()
        if seed is not None:
            self.seed(seed)

        geom = bake_or_load_map(
            map_name=self.cfg.map.map_name,
            map_dir=self.cfg.map.map_dir,
            alpha_threshold=self.cfg.map.collision_alpha_threshold,
            inset_pixels=self.cfg.map.collider_inset_pixels,
        )
        self.world = CloneWorld(self.cfg, geom)
        self._closed = False
        self._viewer = None
        # Wall-clock playback rate for the debug viewer. 1.0 = realtime; raise it to
        # fast-forward, lower it for slow motion. Only affects rendering.
        self.render_speed = 1.0

    @property
    def tick_source(self) -> str:
        return "clone"

    @property
    def render_fps(self) -> float:
        """Frames per second that makes one render() per env.step() run at realtime.

        Each env.step() advances frame_skip ticks of dt seconds, so a viewer pacing
        itself at any other rate plays the world back at the wrong speed. At the
        default frame_skip=10 this is 6 fps -- correct, but choppy; drop frame_skip
        to 1 for a smooth 60 fps view (see tools/demo.py --frame-skip).
        """
        sim_seconds_per_step = self.cfg.gym.env.frame_skip * self.cfg.space.dt
        if sim_seconds_per_step <= 0.0:
            return 0.0
        return self.render_speed / sim_seconds_per_step

    def seed(self, seed: int) -> None:
        import random
        random.seed(seed)
        np.random.seed(seed)

    def connect(self, wait_ready_s: float = 30.0) -> Dict[str, Any]:
        return self.info()

    def render(self, mode: str = "human") -> Any:
        if self._viewer is None:
            from ..render.pygame_debug import PygameDebugViewer
            self._viewer = PygameDebugViewer(
                self.world, render_mode=mode, target_fps=self.render_fps
            )
        return self._viewer.render()

    def close(self) -> None:
        if self._viewer is not None:
            self._viewer.close()
            self._viewer = None
        self._closed = True

    def ping(self) -> Dict[str, Any]:
        return {
            "ok": True,
            "ready": True,
            "module": "clone",
            "tick_source": self.tick_source,
            "total_ticks": self.world.total_ticks,
        }

    def info(self) -> Dict[str, Any]:
        return {
            "ok": True,
            "config": self.cfg.gym.to_js(),
            "tick_source": self.tick_source,
            "capabilities": {
                "damage_hook": True,
                "kill_hook": True,
                "shot_hook": True,
                "reset_kill_player": True,
                "reset_kill_enemies": True,
                "reset_force_spawn": True,
                "player_hp": True,
                "enemy_hp": True,
            },
            "action_hooks": {"player": True, "fire": True},
            "symbols_found": 8,
            "symbols_missing": [],
            "diag": {},
        }

    def stats(self) -> Dict[str, Any]:
        return {
            "ok": True,
            "diag": {},
            "total_ticks": self.world.total_ticks,
            "render_frames": 0,
            "counters": None,
        }

    def peek(self) -> Dict[str, Any]:
        return {
            "ok": True,
            "obs": self.world._observation(),
            "counters": {},
            "total_ticks": self.world.total_ticks,
            "has_player": self.world.player.body.hp > 0.0 or self.world.player.infinite_health,
        }

    def set_config(self, patch: Dict[str, Any]) -> Dict[str, Any]:
        return {"ok": True, "config": patch}

    def step(self, action: List[float]) -> Dict[str, Any]:
        return self.world.step(list(action), self.cfg.gym.env.frame_skip, kind="step")

    def reset(
        self,
        kill_player: bool,
        clear_enemies: bool,
        settle_ticks: int,
        force_spawn: bool = True,
    ) -> Dict[str, Any]:
        return self.world.reset(
            kill_player=kill_player,
            clear_enemies=clear_enemies,
            settle_ticks=settle_ticks,
            force_spawn=force_spawn,
        )

    def force_spawn(self) -> Dict[str, Any]:
        return self.world.force_spawn()

    @property
    def errors(self) -> List[str]:
        return []
