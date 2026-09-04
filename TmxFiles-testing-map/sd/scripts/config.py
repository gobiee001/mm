"""Configuration settings for SD Map Scripts and Visualizers.

Values can be modified directly here or in the adjacent 'config.json' file.
"""

import json
from pathlib import Path

_CONFIG_DIR = Path(__file__).resolve().parent
_CONFIG_JSON = _CONFIG_DIR / "config.json"

# --- Default Map & Collider Settings ---
DEFAULT_MAP: str = "survival_new"
COLLIDER_INSET_PIXELS: int = 6
COLLISION_ALPHA_THRESHOLD: int = 50
SHOW_COLLIDERS: bool = True

# --- Character Dimensions (Base SD Pixels) ---
PLAYER_WIDTH: int = 24
PLAYER_HEIGHT: int = 42

HAWK_WIDTH: int = 32
HAWK_HEIGHT: int = 32

HUMANOID_WIDTH: int = 24
HUMANOID_HEIGHT: int = 42

WORM_WIDTH: int = 30
WORM_HEIGHT: int = 20

# --- Colors for visual overlay ---
COLLIDER_FILL_COLOR = (0, 100, 255, 110)
COLLIDER_LINE_COLOR = (0, 220, 255)
COLLIDER_LINE_WIDTH = 1

# Load overrides from config.json if it exists
if _CONFIG_JSON.is_file():
    try:
        with open(_CONFIG_JSON, "r", encoding="utf-8") as f:
            _data = json.load(f)
            DEFAULT_MAP = str(_data.get("default_map", DEFAULT_MAP))
            COLLIDER_INSET_PIXELS = int(_data.get("collider_inset_pixels", COLLIDER_INSET_PIXELS))
            COLLISION_ALPHA_THRESHOLD = int(_data.get("collision_alpha_threshold", COLLISION_ALPHA_THRESHOLD))
            SHOW_COLLIDERS = bool(_data.get("show_colliders", SHOW_COLLIDERS))
            PLAYER_WIDTH = int(_data.get("player_width", PLAYER_WIDTH))
            PLAYER_HEIGHT = int(_data.get("player_height", PLAYER_HEIGHT))
            HAWK_WIDTH = int(_data.get("hawk_width", HAWK_WIDTH))
            HAWK_HEIGHT = int(_data.get("hawk_height", HAWK_HEIGHT))
            HUMANOID_WIDTH = int(_data.get("humanoid_width", HUMANOID_WIDTH))
            HUMANOID_HEIGHT = int(_data.get("humanoid_height", HUMANOID_HEIGHT))
            WORM_WIDTH = int(_data.get("worm_width", WORM_WIDTH))
            WORM_HEIGHT = int(_data.get("worm_height", WORM_HEIGHT))
    except Exception as _e:
        print(f"[config] Warning: Failed to parse {_CONFIG_JSON}: {_e}")


def get_map_borders(map_name: str) -> dict:
    """Returns {'left': x, 'right': x, 'bottom': y, 'top': y} for the named map if configured."""
    clean_name = map_name.replace(".tmx", "")
    if _CONFIG_JSON.is_file():
        try:
            with open(_CONFIG_JSON, "r", encoding="utf-8") as f:
                d = json.load(f)
            map_cfg = d.get("maps", {}).get(clean_name, {})
            if "borders" in map_cfg:
                return map_cfg["borders"]
            if "borders" in d:
                return d["borders"]
        except Exception:
            pass
    return {}
