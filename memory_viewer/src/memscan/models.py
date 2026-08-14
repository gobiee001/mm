# Data models for Frida Memory Scanner

from dataclasses import dataclass
from typing import Optional, List, Dict, Any

@dataclass
class MemoryRange:
    base: int
    size: int
    protection: str
    module: Optional[str] = None
    module_offset: Optional[int] = None

@dataclass
class ScanCandidate:
    address: int
    value: Any
    prev_value: Any
    module: str
    module_offset: str

@dataclass
class ScanSession:
    pid: int
    process_name: str
    arch: str
    pointer_size: int
    data_type: Optional[str] = None
    candidate_count: int = 0
