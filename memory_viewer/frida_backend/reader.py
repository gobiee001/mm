import frida
from typing import List, Dict, Tuple, Optional
import os
import logging

logger = logging.getLogger("FridaMemoryReader")

class FridaMemoryReader:
    def __init__(self):
        self.device_manager = frida.get_device_manager()
        self.device: Optional[frida.Device] = None
        self.session: Optional[frida.Session] = None
        self.script: Optional[frida.Script] = None
        
        self.pid: Optional[int] = None
        self.process_name: Optional[str] = None
        self.remote_host: Optional[str] = None
        
        # Callback to notify GUI when detached
        self.on_detached_callback = None

    def set_device(self, remote_host: Optional[str] = None) -> None:
        """
        Sets the target device to either Local or a Remote Host.
        :param remote_host: e.g. "127.0.0.1:27042" or None for Local Device.
        """
        self.detach()
        self.remote_host = remote_host
        try:
            if remote_host:
                logger.info(f"Connecting to remote Frida host: {remote_host}")
                # Add remote device to manager
                self.device = self.device_manager.add_remote_device(remote_host)
            else:
                logger.info("Connecting to local Frida device")
                self.device = frida.get_local_device()
        except Exception as e:
            self.device = None
            raise RuntimeError(f"Failed to set device: {e}")

    def get_processes(self) -> List[Dict]:
        """Returns a list of dicts with 'pid' and 'name' keys from the selected device."""
        if not self.device:
            raise RuntimeError("No Frida device configured. Set device first.")
        try:
            processes = self.device.enumerate_processes()
            return [{"pid": p.pid, "name": p.name} for p in processes]
        except Exception as e:
            logger.error(f"Error enumerating processes: {e}")
            raise RuntimeError(f"Failed to enumerate processes: {e}")

    def attach(self, pid_or_name) -> None:
        """
        Attaches to a process on the current device using pid (int) or name (str).
        """
        if not self.device:
            raise RuntimeError("No Frida device configured. Set device first.")
            
        self.detach() # Clean up any existing session
        
        try:
            logger.info(f"Attaching to process {pid_or_name}...")
            if isinstance(pid_or_name, int):
                self.session = self.device.attach(pid_or_name)
                self.pid = pid_or_name
                # Try to resolve process name
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
                # Try to resolve PID
                try:
                    for p in self.device.enumerate_processes():
                        if p.name == pid_or_name:
                            self.pid = p.pid
                            break
                except Exception:
                    self.pid = 0
                    
            self.session.on('detached', self._on_detached)
            self._load_script()
            logger.info(f"Successfully attached and loaded script in {self.process_name} (PID: {self.pid})")
        except frida.ProcessNotFoundError:
            self.detach()
            raise ValueError(f"Process '{pid_or_name}' not found.")
        except Exception as e:
            self.detach()
            raise RuntimeError(f"Failed to attach to '{pid_or_name}': {e}")

    def _load_script(self):
        script_dir = os.path.dirname(os.path.abspath(__file__))
        agent_path = os.path.join(script_dir, "agent.js")
        if not os.path.exists(agent_path):
            raise FileNotFoundError(f"Frida agent JS script not found at {agent_path}")
            
        with open(agent_path, "r", encoding="utf-8") as f:
            source = f.read()
            
        self.script = self.session.create_script(source)
        self.script.load()

    def _on_detached(self, reason, crash):
        logger.warning(f"Session detached: reason={reason}, crash={crash}")
        self.script = None
        self.session = None
        # Preserve pid/name for reference in the callback, but reset after
        callback_pid = self.pid
        callback_name = self.process_name
        self.pid = None
        self.process_name = None
        if self.on_detached_callback:
            self.on_detached_callback(callback_name or str(callback_pid), reason)

    def detach(self):
        if self.session:
            try:
                self.session.detach()
            except Exception:
                pass
        self.session = None
        self.script = None
        self.pid = None
        self.process_name = None

    def enumerate_modules(self) -> List[Dict]:
        if not self.script:
            raise RuntimeError("Not attached to any process.")
        try:
            return self.script.exports_sync.getmodules()
        except Exception as e:
            raise RuntimeError(f"Failed to enumerate modules: {e}")

    def read_memory(self, address: int, size: int) -> bytes:
        if not self.script:
            raise RuntimeError("Not attached to any process.")
        try:
            addr_str = hex(address)
            res = self.script.exports_sync.readmemory(addr_str, size)
            return bytes(res)
        except Exception as e:
            # Propagate clean error message
            err_msg = str(e)
            if "Cannot read memory" in err_msg:
                raise ValueError(err_msg)
            raise RuntimeError(f"Failed to read memory at {hex(address)}: {e}")

    def get_region_info(self, address: int) -> Optional[Dict]:
        if not self.script:
            raise RuntimeError("Not attached to any process.")
        try:
            addr_str = hex(address)
            return self.script.exports_sync.getregioninfo(addr_str)
        except Exception as e:
            logger.debug(f"Failed to get region info at {hex(address)}: {e}")
            return None

    def search_memory(self, module_name: str, pattern: str, is_hex: bool) -> List[int]:
        if not self.script:
            raise RuntimeError("Not attached to any process.")
        try:
            addrs = self.script.exports_sync.searchmemory(module_name, pattern, is_hex)
            return [int(a, 16) for a in addrs]
        except Exception as e:
            raise RuntimeError(f"Search failed: {e}")
