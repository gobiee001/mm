# Frida Memory Reader backend (delegating to memscan FridaScanner)

import logging
from typing import List, Dict, Optional, Any
from src.memscan.scanner import FridaScanner

logger = logging.getLogger("FridaMemoryReader")

class FridaMemoryReader(FridaScanner):
    def __init__(self):
        super().__init__()

    def get_processes(self) -> List[Dict[str, Any]]:
        """Returns a list of dicts with 'pid' and 'name' keys from the selected device."""
        return self.list_processes()

    def enumerate_modules(self) -> List[Dict[str, Any]]:
        """Wrapper for backward compatibility with GUI."""
        return self.get_modules()

    def get_region_info(self, address: int) -> Optional[Dict[str, Any]]:
        """Returns range info for base, size, protection at address."""
        info = self.script.exports_sync.getregioninfo(hex(address))
        if info:
            return {
                "base": info["base"],
                "size": info["size"],
                "protection": info["protection"]
            }
        return None

    def search_memory(self, module_name: str, pattern: str, is_hex: bool) -> List[int]:
        """Wrapper for legacy module memory scanning in GUI."""
        if not self.script:
            raise RuntimeError("Not attached to any process.")
        try:
            addrs = self.script.exports_sync.searchmemory(module_name, pattern, is_hex)
            return [int(a, 16) for a in addrs]
        except Exception as e:
            raise RuntimeError(f"Search failed: {e}")
