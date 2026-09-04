"""Provenance tracking for simulation constants."""

from enum import Enum
from typing import Any, Dict


class Provenance(Enum):
    EXTRACTED = "extracted"   # Recovered from libcocos2dcpp.so or TMX binaries
    DERIVED = "derived"       # Calculated from extracted constants
    MEASURED = "measured"     # Calibrated against on-device traces
    GUESSED = "guessed"       # Plausible placeholder requiring calibration
    TUNING = "tuning"         # Reinforcement learning / simulator knob with no game counterpart


PROVENANCE_REGISTRY: Dict[str, Provenance] = {}


def register_provenance(path: str, prov: Provenance) -> None:
    PROVENANCE_REGISTRY[path] = prov
