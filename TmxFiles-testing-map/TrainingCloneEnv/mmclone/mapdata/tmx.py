"""TMX map parsing using standard library xml.etree, base64, and gzip."""

import base64
import gzip
from pathlib import Path
from typing import Dict, List, Optional, Tuple
import xml.etree.ElementTree as ET
import numpy as np

from .objects import MapObjects


def parse_tmx_layer_data(data_elem: ET.Element, width: int, height: int) -> np.ndarray:
    encoding = data_elem.attrib.get("encoding")
    compression = data_elem.attrib.get("compression")
    raw_text = (data_elem.text or "").strip()

    if encoding == "base64":
        raw_bytes = base64.b64decode(raw_text)
        if compression == "gzip":
            raw_bytes = gzip.decompress(raw_bytes)
        elif compression == "zlib":
            import zlib
            raw_bytes = zlib.decompress(raw_bytes)
        elif compression is not None:
            raise ValueError(f"Unsupported compression: {compression}")
        return np.frombuffer(raw_bytes, dtype=np.uint32).reshape((height, width))
    raise ValueError(f"Unsupported layer encoding: {encoding}")


def parse_tmx(tmx_path: Path) -> Tuple[int, int, int, int, np.ndarray, MapObjects, str]:
    tree = ET.parse(tmx_path)
    root = tree.getroot()

    map_w = int(root.attrib["width"])
    map_h = int(root.attrib["height"])
    tile_w = int(root.attrib["tilewidth"])
    tile_h = int(root.attrib["tileheight"])

    tileset_elem = root.find("tileset")
    tsx_source = tileset_elem.attrib.get("source", "") if tileset_elem is not None else ""

    tile_gids = np.zeros((map_h, map_w), dtype=np.uint32)
    for layer in root.findall("layer"):
        if layer.attrib.get("name") == "tile":
            data_elem = layer.find("data")
            if data_elem is not None:
                tile_gids = parse_tmx_layer_data(data_elem, map_w, map_h)
            break

    objects = MapObjects()
    for objgroup in root.findall("objectgroup"):
        for obj in objgroup.findall("object"):
            name = obj.attrib.get("name", "")
            x = float(obj.attrib.get("x", 0.0))
            y = float(obj.attrib.get("y", 0.0))
            if name.startswith("sp_p_"):
                objects.player_spawns.append((x, y))
            elif name.startswith("wp_p_"):
                weapons: List[str] = []
                props = obj.find("properties")
                if props is not None:
                    for p in props.findall("property"):
                        if p.attrib.get("name") == "weapon":
                            val = p.attrib.get("value", "")
                            weapons = [w.strip() for w in val.split(",") if w.strip()]
                objects.weapon_spawns.append((x, y, weapons))

    # Sort player spawns by x for consistency
    objects.player_spawns.sort(key=lambda p: p[0])

    return map_w, map_h, tile_w, tile_h, tile_gids, objects, tsx_source
