"""Tileset loading and alpha mask extraction."""

from pathlib import Path
from typing import Dict, Tuple
import xml.etree.ElementTree as ET
import numpy as np
import pygame


def erode_mask(mask: np.ndarray, pixels: int = 2) -> np.ndarray:
    """Erodes a 2D boolean mask by N pixels on all 4 borders."""
    res = mask.copy()
    for _ in range(pixels):
        e = res.copy()
        e[1:, :] &= res[:-1, :]
        e[:-1, :] &= res[1:, :]
        e[:, 1:] &= res[:, :-1]
        e[:, :-1] &= res[:, 1:]
        res = e
    return res


def load_tileset_masks(
    tsx_path: Path,
    alpha_threshold: int = 50,
    inset_pixels: int = 6,
) -> Tuple[Dict[int, np.ndarray], int, int]:
    """Extracts binary collision masks for all tile GIDs in a TSX tileset."""
    tree = ET.parse(tsx_path)
    root = tree.getroot()

    tile_w = int(root.attrib.get("tilewidth", 64))
    tile_h = int(root.attrib.get("tileheight", 64))
    spacing = int(root.attrib.get("spacing", 0))
    margin = int(root.attrib.get("margin", 0))

    img_elem = root.find("image")
    if img_elem is None:
        raise ValueError(f"No <image> element found in {tsx_path}")

    img_rel_path = img_elem.attrib["source"]
    img_path = (tsx_path.parent / img_rel_path).resolve()
    if not img_path.is_file():
        raise FileNotFoundError(f"Tileset image not found at {img_path}")

    # Load image using pygame
    if not pygame.get_init():
        pygame.init()

    image_surf = pygame.image.load(str(img_path))
    img_w, img_h = image_surf.get_size()

    cols = (img_w - 2 * margin + spacing) // (tile_w + spacing)
    rows = (img_h - 2 * margin + spacing) // (tile_h + spacing)

    gid_masks: Dict[int, np.ndarray] = {}
    gid = 1

    for row in range(rows):
        for col in range(cols):
            x = margin + col * (tile_w + spacing)
            y = margin + row * (tile_h + spacing)

            sub = image_surf.subsurface(pygame.Rect(x, y, tile_w, tile_h))
            alpha = pygame.surfarray.pixels_alpha(sub)  # (w, h)
            # Transpose to (h, w) and erode by inset_pixels
            bool_mask = alpha.T > alpha_threshold
            if inset_pixels > 0:
                bool_mask = erode_mask(bool_mask, pixels=inset_pixels)
            mask = bool_mask.astype(np.uint8)
            gid_masks[gid] = mask
            gid += 1

    return gid_masks, tile_w, tile_h
