"""Bootstrap helper to locate MM_GYm and add it to sys.path.

Avoids hardcoded paths. Checks $MM_GYM_ROOT first, then walks up from this file's
directory looking for a directory containing python_gym_Wrapper/__init__.py.
"""

import os
import sys
from pathlib import Path


def bootstrap_mm_gym() -> Path:
    env_root = os.environ.get("MM_GYM_ROOT")
    if env_root:
        p = Path(env_root).resolve()
        if (p / "python_gym_Wrapper" / "__init__.py").is_file():
            if str(p) not in sys.path:
                sys.path.insert(0, str(p))
            return p
        raise FileNotFoundError(f"MM_GYM_ROOT set to {env_root}, but python_gym_Wrapper not found there")

    # Walk up from current directory
    curr = Path(__file__).resolve().parent
    for p in [curr] + list(curr.parents):
        candidate = p / "MM_GYm"
        if (candidate / "python_gym_Wrapper" / "__init__.py").is_file():
            if str(candidate) not in sys.path:
                sys.path.insert(0, str(candidate))
            return candidate
        if (p / "python_gym_Wrapper" / "__init__.py").is_file():
            if str(p) not in sys.path:
                sys.path.insert(0, str(p))
            return p

    raise FileNotFoundError("Could not locate MM_GYm directory with python_gym_Wrapper")


# Run on import
BOOTSTRAPPED_PATH = bootstrap_mm_gym()
