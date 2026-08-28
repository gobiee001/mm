"""Utilities for locating and loading trained models."""

from __future__ import annotations

import os
import re
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

import numpy as np


def parse_reward_from_filename(filename: str) -> float:
    """Extract the float reward value embedded in a model filename.

    Examples:
        'best_r+1.2340_step000048640.zip' -> 1.2340
        'best_r-21.3492_step000014400.zip' -> -21.3492
        'final_step000016384_r-11.3323.zip' -> -11.3323
        'ckpt_step000000512_r-2.0001.zip' -> -2.0001
    """
    m = re.search(r"_r([+-]?\d+(?:\.\d+)?)(?:_|\.zip)", filename)
    if m:
        try:
            return float(m.group(1))
        except ValueError:
            pass
    return float("-inf")


def parse_step_from_filename(filename: str) -> int:
    """Extract step count integer from model filename."""
    m = re.search(r"step(\d+)", filename)
    if m:
        try:
            return int(m.group(1))
        except ValueError:
            pass
    return 0


def get_default_models_dir() -> Path:
    """Return the default models directory path."""
    return Path(__file__).resolve().parent.parent / "models"


def find_latest_best_model(models_dir: Optional[Path | str] = None) -> Optional[Path]:
    """Find the best model from the latest training run.

    Search strategy:
    1. Scan all `run_YYYYMMDD_HHMMSS` directories in `models/`, ordered newest first.
    2. In each run directory:
       a. Check `best/` subfolder -> return model with highest numerical reward.
       b. Check `final_*.zip`, `stopped_*.zip`, `interrupted_*.zip` in the run root.
       c. Check `checkpoints/` -> return latest checkpoint with highest reward / step.
    3. If newest run has no models, continue to previous runs in reverse chronological order.

    Returns:
        Path to the best model .zip file, or None if no models exist.
    """
    base_dir = Path(models_dir) if models_dir else get_default_models_dir()
    if not base_dir.is_dir():
        return None

    run_dirs = sorted(
        [d for d in base_dir.iterdir() if d.is_dir() and d.name.startswith("run_")],
        key=lambda p: p.name,
        reverse=True,
    )

    for r_dir in run_dirs:
        # 1. Check best/
        best_dir = r_dir / "best"
        if best_dir.is_dir():
            best_files = list(best_dir.glob("*.zip"))
            if best_files:
                best_files.sort(key=lambda p: (parse_reward_from_filename(p.name), parse_step_from_filename(p.name)), reverse=True)
                return best_files[0]

        # 2. Check root of run dir for final/stopped/interrupted models
        root_models = [f for f in r_dir.glob("*.zip") if not f.name.startswith("run_config")]
        if root_models:
            root_models.sort(key=lambda p: (parse_reward_from_filename(p.name), parse_step_from_filename(p.name)), reverse=True)
            return root_models[0]

        # 3. Check checkpoints/
        ckpt_dir = r_dir / "checkpoints"
        if ckpt_dir.is_dir():
            ckpt_files = list(ckpt_dir.glob("*.zip"))
            if ckpt_files:
                ckpt_files.sort(key=lambda p: (parse_step_from_filename(p.name), parse_reward_from_filename(p.name)), reverse=True)
                return ckpt_files[0]

    return None


def list_available_models(models_dir: Optional[Path | str] = None) -> List[Dict[str, Any]]:
    """List all available models found across all training runs."""
    base_dir = Path(models_dir) if models_dir else get_default_models_dir()
    if not base_dir.is_dir():
        return []

    models: List[Dict[str, Any]] = []
    run_dirs = sorted(
        [d for d in base_dir.iterdir() if d.is_dir() and d.name.startswith("run_")],
        key=lambda p: p.name,
        reverse=True,
    )

    for r_dir in run_dirs:
        for p in r_dir.rglob("*.zip"):
            kind = "best" if "best" in p.parts else ("checkpoint" if "checkpoints" in p.parts else "final")
            models.append({
                "run": r_dir.name,
                "path": p,
                "filename": p.name,
                "kind": kind,
                "reward": parse_reward_from_filename(p.name),
                "step": parse_step_from_filename(p.name),
            })

    return models
