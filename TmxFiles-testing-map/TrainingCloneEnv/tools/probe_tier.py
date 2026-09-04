"""Device probe tool to calibrate AssetTier scaling against a live device."""

import argparse
from typing import List, Tuple
from python_gym_Wrapper.config import MiniMilitiaConfig
from python_gym_Wrapper.frida_bridge import FridaBridge
from mmclone.config.world import AssetTier
from mmclone.mapdata.bake import bake_or_load_map
from mmclone.sim.frame import WorldFrame


def probe_device(samples: int = 20) -> None:
    cfg = MiniMilitiaConfig()
    bridge = FridaBridge(cfg)

    print("Connecting to Frida device bridge...")
    info = bridge.connect()
    print("Connected! Probing player spawn positions...")

    observed_positions: List[Tuple[float, float]] = []
    for i in range(samples):
        bridge.force_spawn()
        peek_res = bridge.peek()
        p = peek_res.get("obs", {}).get("player", {})
        px = p.get("x", 0.0)
        py = p.get("y", 0.0)
        observed_positions.append((px, py))
        print(f"Sample [{i+1}/{samples}]: x={px:.1f}, y={py:.1f}")

    avg_x = sum(p[0] for p in observed_positions) / len(observed_positions)
    avg_y = sum(p[1] for p in observed_positions) / len(observed_positions)
    print(f"\nAverage observed spawn: ({avg_x:.1f}, {avg_y:.1f})")

    # Load survival_new map to compare sp_p_00
    from mmclone.config.world import MapConfig
    mcfg = MapConfig()
    geom = bake_or_load_map("survival_new", mcfg.map_dir)
    sp_x, sp_y = geom.player_spawns[0]

    print(f"TMX sp_p_00 point: ({sp_x:.1f}, {sp_y:.1f})")
    for tier in (AssetTier.SD, AssetTier.HD, AssetTier.HDR):
        frame = WorldFrame(64, int(tier), geom.grid_w, geom.grid_h)
        wx, wy = frame.tmx_to_world(sp_x, sp_y)
        err = ((wx - avg_x) ** 2 + (wy - avg_y) ** 2) ** 0.5
        print(f"Tier {tier.name} (scale={frame.scale:.1f}): predicted=({wx:.1f}, {wy:.1f}), error={err:.1f} px")


def main() -> None:
    parser = argparse.ArgumentParser(description="Probe device to determine AssetTier.")
    parser.add_argument("--samples", type=int, default=10, help="Samples to record")
    args = parser.parse_args()

    probe_device(samples=args.samples)


if __name__ == "__main__":
    main()
