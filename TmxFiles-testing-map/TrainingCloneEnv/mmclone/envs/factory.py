"""Factory helpers to instantiate Gymnasium-compatible MiniMilitiaEnv with CloneBridge."""

from typing import Optional
from python_gym_Wrapper.config import MiniMilitiaConfig
from python_gym_Wrapper.minimilitia_env import MiniMilitiaEnv
from ..bridge.clone_bridge import CloneBridge
from ..config.clone import CloneConfig
from ..config.world import AssetTier


def make_clone_env(
    config: Optional[MiniMilitiaConfig] = None,
    clone_config: Optional[CloneConfig] = None,
    map_name: str = "survival_new",
    tier: int = 128,
    seed: Optional[int] = None,
    render_mode: Optional[str] = None,
    player_half_w: Optional[float] = None,
    player_half_h: Optional[float] = None,
) -> MiniMilitiaEnv:
    """Creates a Gymnasium-compliant MiniMilitiaEnv backed by the in-process CloneWorld."""
    if clone_config is not None:
        cfg = clone_config
    else:
        cfg = CloneConfig()
        if config is not None:
            cfg.gym = config
        cfg.map.map_name = map_name
        cfg.map.tier = AssetTier(tier)

    if player_half_w is not None:
        cfg.player_half_w = float(player_half_w)
    if player_half_h is not None:
        cfg.player_half_h = float(player_half_h)

    bridge = CloneBridge(cfg, seed=seed)
    env = MiniMilitiaEnv(cfg.gym, bridge=bridge, render_mode=render_mode)
    return env
