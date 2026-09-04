"""Pytest configuration ensuring mmclone and MM_GYm are on sys.path."""

from pathlib import Path
import sys

clone_root = Path(__file__).resolve().parent.parent
if str(clone_root) not in sys.path:
    sys.path.insert(0, str(clone_root))

from mmclone import _bootstrap
