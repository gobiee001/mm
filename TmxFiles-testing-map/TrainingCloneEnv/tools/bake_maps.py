"""CLI tool to bake and cache all 19 maps in TmxFiles-testing-map/sd."""

import argparse
from pathlib import Path
import sys
import time

clone_root = Path(__file__).resolve().parent.parent
if str(clone_root) not in sys.path:
    sys.path.insert(0, str(clone_root))

from mmclone.mapdata.bake import bake_or_load_map


def main() -> None:
    parser = argparse.ArgumentParser(description="Bake and cache all TMX maps.")
    parser.add_argument(
        "--map-dir",
        type=Path,
        default=Path(__file__).resolve().parent.parent.parent / "sd",
        help="Path to directory containing .tmx files",
    )
    parser.add_argument(
        "--alpha-threshold",
        type=int,
        default=50,
        help="Alpha threshold (0-255) for solidity (default 50)",
    )
    args = parser.parse_args()

    tmx_files = sorted(list(args.map_dir.glob("*.tmx")))
    print(f"Found {len(tmx_files)} TMX maps in {args.map_dir}")

    total_t0 = time.perf_counter()
    for i, tmx_path in enumerate(tmx_files, 1):
        t0 = time.perf_counter()
        geom = bake_or_load_map(
            tmx_path.stem,
            map_dir=args.map_dir,
            alpha_threshold=args.alpha_threshold,
        )
        elapsed_ms = (time.perf_counter() - t0) * 1000.0
        print(f"[{i}/{len(tmx_files)}] {tmx_path.stem}: {geom.grid_w}x{geom.grid_h} ({elapsed_ms:.1f} ms, {len(geom.player_spawns)} spawns)")

    total_s = time.perf_counter() - total_t0
    print(f"\nAll {len(tmx_files)} maps baked and cached in {total_s:.2f} s")


if __name__ == "__main__":
    main()
