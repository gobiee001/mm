"""Map baking and caching pipeline."""

import hashlib
import json
import os
from pathlib import Path
from typing import Optional
import numpy as np

from .geometry import MapGeometry
from .objects import MapObjects
from .tileset import load_tileset_masks
from .tmx import parse_tmx


def get_map_digest(tmx_path: Path, tsx_path: Path, alpha_threshold: int, inset_pixels: int = 6) -> str:
    h = hashlib.sha1()
    h.update(str(tmx_path.resolve()).encode("utf-8"))
    h.update(str(tmx_path.stat().st_mtime_ns).encode("utf-8"))
    h.update(str(tmx_path.stat().st_size).encode("utf-8"))
    if tsx_path.is_file():
        h.update(str(tsx_path.resolve()).encode("utf-8"))
        h.update(str(tsx_path.stat().st_mtime_ns).encode("utf-8"))
    h.update(str(alpha_threshold).encode("utf-8"))
    h.update(f"v4_inset_{inset_pixels}".encode("utf-8"))
    return h.hexdigest()[:16]


def bake_or_load_map(
    map_name: str,
    map_dir: Path,
    cache_dir: Optional[Path] = None,
    alpha_threshold: int = 50,
    inset_pixels: int = 6,
) -> MapGeometry:
    """Bakes or loads cached collision geometry for a named map."""
    if not map_name.endswith(".tmx"):
        tmx_path = map_dir / f"{map_name}.tmx"
    else:
        tmx_path = map_dir / map_name

    if not tmx_path.is_file():
        raise FileNotFoundError(f"TMX map not found at {tmx_path}")

    if cache_dir is None:
        cache_dir = map_dir.parent / "TrainingCloneEnv" / "cache"
    cache_dir.mkdir(parents=True, exist_ok=True)

    # Fast parse to get TSX path
    map_w, map_h, tile_w, tile_h, tile_gids, objects, tsx_source = parse_tmx(tmx_path)
    tsx_path = (tmx_path.parent / tsx_source).resolve()

    digest = get_map_digest(tmx_path, tsx_path, alpha_threshold, inset_pixels=inset_pixels)
    cache_file = cache_dir / f"{tmx_path.stem}_{digest}.npz"

    if cache_file.is_file():
        # Load from cache
        data = np.load(cache_file, allow_pickle=True)
        grid_w = int(data["grid_w"])
        grid_h = int(data["grid_h"])
        occ = data["occ"].tobytes()
        top_solid = data["top_solid"]
        player_spawns = [tuple(p) for p in data["player_spawns"]]
        weapon_spawns = [tuple(w) for w in data["weapon_spawns"].tolist()]
        tile_state = data["tile_state"].tobytes() if "tile_state" in data else None
        return MapGeometry(
            grid_w=grid_w,
            grid_h=grid_h,
            occ=occ,
            top_solid=top_solid,
            player_spawns=player_spawns,
            weapon_spawns=weapon_spawns,
            tile_state=tile_state,
            map_w_tiles=map_w,
            map_h_tiles=map_h,
        )

    # Cold bake: load tileset masks and compose
    gid_masks, tw, th = load_tileset_masks(
        tsx_path, alpha_threshold=alpha_threshold, inset_pixels=inset_pixels
    )

    grid_w = map_w * tw
    grid_h = map_h * th
    occ_array = np.zeros((grid_h, grid_w), dtype=np.uint8)
    tile_state_arr = np.zeros((map_h, map_w), dtype=np.uint8)

    gid_state_map = {}
    for gid, mask in gid_masks.items():
        cnt = int(mask.sum())
        if cnt == 0:
            gid_state_map[gid] = 0  # EMPTY
        elif cnt == tw * th:
            gid_state_map[gid] = 2  # FULL
        else:
            gid_state_map[gid] = 1  # PARTIAL

    for r in range(map_h):
        for c in range(map_w):
            gid = int(tile_gids[r, c])
            if gid > 0 and gid in gid_masks:
                mask = gid_masks[gid]
                occ_array[r * th : (r + 1) * th, c * tw : (c + 1) * tw] = mask
                tile_state_arr[r, c] = gid_state_map.get(gid, 0)

    # Compute top_solid heightfield
    top_solid = np.full(grid_w, grid_h, dtype=np.int32)
    is_solid = occ_array != 0
    has_solid = is_solid.any(axis=0)
    first_solid_idx = np.where(has_solid, is_solid.argmax(axis=0), grid_h)
    top_solid = first_solid_idx.astype(np.int32)

    occ_bytes = occ_array.tobytes()
    tile_state_bytes = tile_state_arr.tobytes()

    player_spawns_arr = np.array(objects.player_spawns, dtype=np.float32) if objects.player_spawns else np.empty((0, 2), dtype=np.float32)
    weapon_spawns_obj = np.array(objects.weapon_spawns, dtype=object)

    np.savez_compressed(
        cache_file,
        grid_w=grid_w,
        grid_h=grid_h,
        occ=occ_array,
        top_solid=top_solid,
        player_spawns=player_spawns_arr,
        weapon_spawns=weapon_spawns_obj,
        tile_state=tile_state_arr,
    )

    return MapGeometry(
        grid_w=grid_w,
        grid_h=grid_h,
        occ=occ_bytes,
        top_solid=top_solid,
        player_spawns=objects.player_spawns,
        weapon_spawns=objects.weapon_spawns,
        tile_state=tile_state_bytes,
        map_w_tiles=map_w,
        map_h_tiles=map_h,
    )
