from dataclasses import dataclass

@dataclass
class MemoryRegion:
    address: int
    base: int
    size: int
    protection: str
