# Frida Memory Scanner Python wrapper

import os
import logging
import frida
from typing import List, Dict, Any, Optional, Callable, Tuple
from src.memscan.errors import (
    FridaConnectionError, ProcessNotFoundError, 
    MemoryReadError, MemoryWriteError
)
from src.memscan.types import encode_value, get_type

logger = logging.getLogger("MemScanScanner")

class FridaScanner:
    def __init__(self):
        self.device_manager = frida.get_device_manager()
        self.device: Optional[frida.Device] = None
        self.session: Optional[frida.Session] = None
        self.script: Optional[frida.Script] = None
        
        self.pid: Optional[int] = None
        self.process_name: Optional[str] = None
        self.arch: Optional[str] = None
        self.pointer_size: Optional[int] = None
        
        # Callbacks
        self.on_detached_callback: Optional[Callable[[str, str], None]] = None
        self._active_progress_callback: Optional[Callable[[int, int, int], None]] = None
        self._active_complete_callback: Optional[Callable[[int], None]] = None

    def set_device(self, remote_host: Optional[str] = None) -> None:
        try:
            self.detach()
            if remote_host:
                logger.info(f"Connecting to remote host: {remote_host}")
                self.device = self.device_manager.add_remote_device(remote_host)
            else:
                logger.info("Connecting to local device")
                self.device = frida.get_local_device()
        except Exception as e:
            self.device = None
            raise FridaConnectionError(f"Failed to configure device: {e}")

    def list_processes(self) -> List[Dict[str, Any]]:
        if not self.device:
            self.set_device()
        try:
            processes = self.device.enumerate_processes()
            return [{"pid": p.pid, "name": p.name} for p in processes]
        except Exception as e:
            raise FridaConnectionError(f"Failed to enumerate processes: {e}")

    def attach(self, pid_or_name: Any) -> None:
        if not self.device:
            self.set_device()
            
        self.detach()
        try:
            logger.info(f"Attaching to process {pid_or_name}...")
            if isinstance(pid_or_name, int):
                self.session = self.device.attach(pid_or_name)
                self.pid = pid_or_name
                # Resolve process name
                try:
                    for p in self.device.enumerate_processes():
                        if p.pid == pid_or_name:
                            self.process_name = p.name
                            break
                except Exception:
                    self.process_name = str(pid_or_name)
            else:
                self.session = self.device.attach(pid_or_name)
                self.process_name = pid_or_name
                # Resolve PID
                try:
                    for p in self.device.enumerate_processes():
                        if p.name == pid_or_name:
                            self.pid = p.pid
                            break
                except Exception:
                    self.pid = 0
            
            self.session.on('detached', self._on_detached)
            self._load_agent_script()
            
            # Detect architecture and pointer size
            try:
                sys_params = self.device.query_system_parameters()
                self.arch = sys_params.get("arch", "unknown")
                self.pointer_size = 8 if "64" in self.arch else 4
            except Exception:
                self.arch = "unknown"
                self.pointer_size = 8
            
            logger.info(f"Connected. PID: {self.pid}, Arch: {self.arch}, Pointer Size: {self.pointer_size}")
            
        except frida.ProcessNotFoundError:
            self.detach()
            raise ProcessNotFoundError(f"Process '{pid_or_name}' not found.")
        except Exception as e:
            self.detach()
            raise FridaConnectionError(f"Failed to attach: {e}")

    def _load_agent_script(self) -> None:
        try:
            # Load agent JS files in correct dependency order
            script_dir = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
            agent_dir = os.path.join(script_dir, "agent")
            
            js_files = ["types.js", "ranges.js", "memory.js", "scanner.js", "agent.js"]
            source_parts = []
            
            for file_name in js_files:
                path = os.path.join(agent_dir, file_name)
                if not os.path.exists(path):
                    # Fallback to local folder if called differently
                    path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "agent", file_name)
                
                with open(path, "r", encoding="utf-8") as f:
                    source_parts.append(f"// --- {file_name} ---\n" + f.read())
                    
            combined_source = "\n\n".join(source_parts)
            self.script = self.session.create_script(combined_source)
            self.script.on('message', self._on_message)
            self.script.load()
        except Exception as e:
            raise FridaConnectionError(f"Failed to load agent JS script bundle: {e}")

    def _on_message(self, message: Dict, data: Any) -> None:
        if message["type"] == "send":
            payload = message.get("payload", {})
            msg_type = payload.get("type")
            
            if msg_type == "scan_progress" and self._active_progress_callback:
                idx = payload.get("index", 0)
                total = payload.get("total", 1)
                count = payload.get("count", 0)
                self._active_progress_callback(idx, total, count)
            elif msg_type == "scan_complete" and self._active_complete_callback:
                self._active_complete_callback(payload.get("count", 0))
            elif msg_type == "scan_cancelled" and self._active_complete_callback:
                self._active_complete_callback(payload.get("count", 0))
        elif message["type"] == "error":
            logger.error(f"Frida Agent Script Error: {message.get('stack') or message.get('description')}")

    def _on_detached(self, reason: str, crash: Any) -> None:
        logger.warning(f"Frida detached: reason={reason}, crash={crash}")
        self.script = None
        self.session = None
        pid = self.pid
        name = self.process_name
        self.pid = None
        self.process_name = None
        if self.on_detached_callback:
            self.on_detached_callback(name or str(pid), reason)

    def detach(self) -> None:
        if self.session:
            try:
                self.session.detach()
            except Exception:
                pass
        self.session = None
        self.script = None
        self.pid = None
        self.process_name = None
        self.arch = None
        self.pointer_size = None

    def first_scan(
        self, 
        data_type: str, 
        value_str: str, 
        options: Optional[Dict] = None,
        progress_callback: Optional[Callable[[int, int, int], None]] = None
    ) -> int:
        if not self.script:
            raise FridaConnectionError("Not attached to any process.")
        
        self._active_progress_callback = progress_callback
        
        try:
            if value_str.strip().lower() == "unknown":
                value_type = "unknown"
                value_pattern = ""
            else:
                value_type = "pattern"
                # Encode the value to byte pattern hex representation
                _, value_pattern = encode_value(data_type, value_str)
            
            opts = options or {}
            # Perform first scan RPC
            count = self.script.exports_sync.firstscan(data_type, value_type, value_pattern, opts)
            return count
        except Exception as e:
            raise FridaConnectionError(f"First scan failed: {e}")
        finally:
            self._active_progress_callback = None

    def next_scan(
        self, 
        operation: str, 
        value_str: Optional[str], 
        options: Optional[Dict] = None,
        progress_callback: Optional[Callable[[int, int, int], None]] = None
    ) -> int:
        if not self.script:
            raise FridaConnectionError("Not attached to any process.")
            
        self._active_progress_callback = progress_callback
        try:
            opts = options or {}
            # Call next scan RPC
            count = self.script.exports_sync.nextscan(operation, value_str, opts)
            return count
        except Exception as e:
            raise FridaConnectionError(f"Next scan failed: {e}")
        finally:
            self._active_progress_callback = None

    def get_candidate_count(self) -> int:
        if not self.script:
            return 0
        return self.script.exports_sync.getcandidatecount()

    def get_candidates_batch(self, start: int, limit: int) -> List[Dict[str, Any]]:
        if not self.script:
            return []
        try:
            return self.script.exports_sync.getcandidatesbatch(start, limit)
        except Exception as e:
            raise FridaConnectionError(f"Failed to fetch candidates: {e}")

    def clear_candidates(self) -> None:
        if self.script:
            self.script.exports_sync.clearcandidates()

    def cancel_scan(self) -> None:
        if self.script:
            self.script.exports_sync.setcancelflag(True)

    def read_memory(self, address: int, size: int) -> bytes:
        if not self.script:
            raise FridaConnectionError("Not attached to any process.")
        try:
            addr_str = hex(address)
            res = self.script.exports_sync.readmemory(addr_str, size)
            return bytes(res)
        except Exception as e:
            raise MemoryReadError(f"Failed to read memory at {hex(address)}: {e}")

    def write_memory(self, address: int, data_type: str, value: str) -> None:
        if not self.script:
            raise FridaConnectionError("Not attached to any process.")
        try:
            # Encode value using our type mapping
            encoded_bytes, _ = encode_value(data_type, value)
            addr_str = hex(address)
            # Call RPC to write bytes
            self.script.exports_sync.writememory(addr_str, list(encoded_bytes))
        except Exception as e:
            raise MemoryWriteError(f"Failed to write memory at {hex(address)}: {e}")

    def get_region_info(self, address: int) -> Optional[Dict[str, Any]]:
        if not self.script:
            raise FridaConnectionError("Not attached to any process.")
        try:
            return self.script.exports_sync.getregioninfo(hex(address))
        except Exception:
            return None

    def resolve_address(self, address: int) -> Dict[str, Any]:
        if not self.script:
            raise FridaConnectionError("Not attached to any process.")
        try:
            return self.script.exports_sync.resolveaddress(hex(address))
        except Exception:
            return {"module": "anonymous", "offset": "-", "path": ""}

    def get_modules(self) -> List[Dict[str, Any]]:
        if not self.script:
            raise FridaConnectionError("Not attached to any process.")
        try:
            return self.script.exports_sync.getmodules()
        except Exception as e:
            raise FridaConnectionError(f"Failed to enumerate modules: {e}")

    def get_ranges(self, protection: str) -> List[Dict[str, Any]]:
        if not self.script:
            raise FridaConnectionError("Not attached to any process.")
        try:
            return self.script.exports_sync.getranges(protection)
        except Exception as e:
            raise FridaConnectionError(f"Failed to enumerate ranges: {e}")
