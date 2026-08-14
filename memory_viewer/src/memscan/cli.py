# Interactive Command Line REPL for memscan

import sys
import shlex
import logging
from typing import List, Optional
from src.memscan.scanner import FridaScanner
from src.memscan.session import SessionManager
from src.memscan.formatters import print_table, format_hex_dump, format_size
from src.memscan.types import TYPES

logger = logging.getLogger("MemScanCLI")

class MemScanCLI:
    def __init__(self):
        self.scanner = FridaScanner()
        self.session_mgr = SessionManager()
        self.running = True

    def print_progress(self, index: int, total: int, count: int) -> None:
        percent = int((index / total) * 100) if total > 0 else 100
        bar_len = 20
        filled_len = int(bar_len * percent // 100)
        bar = "█" * filled_len + "-" * (bar_len - filled_len)
        sys.stdout.write(f"\rScanning [{bar}] {percent}% | Matches: {count}")
        sys.stdout.flush()

    def run(self, attach_target: Optional[str] = None) -> None:
        print("==================================================")
        print("          Antigravity Frida Memory Scanner        ")
        print("==================================================")
        
        # Attach initially if argument provided
        if attach_target:
            try:
                # check if int
                try:
                    pid = int(attach_target)
                    self.scanner.attach(pid)
                except ValueError:
                    self.scanner.attach(attach_target)
                self.session_mgr.start_session(
                    self.scanner.pid, 
                    self.scanner.process_name, 
                    self.scanner.arch, 
                    self.scanner.pointer_size
                )
                print(f"Connected to process: {self.scanner.process_name} (PID: {self.scanner.pid})")
                print(f"Architecture: {self.scanner.arch} | Pointer size: {self.scanner.pointer_size}")
            except Exception as e:
                print(f"Error attaching to {attach_target}: {e}")
                
        # Main REPL loop
        while self.running:
            try:
                prompt = "memscan> "
                if self.scanner.session:
                    prompt = f"memscan ({self.scanner.process_name})> "
                
                cmd_line = input(prompt)
                if not cmd_line.strip():
                    continue
                    
                self.execute_command(cmd_line)
            except KeyboardInterrupt:
                print("\nUse 'quit' or 'exit' to exit. If a scan is running, Ctrl+C cancels the scan.")
            except Exception as e:
                print(f"Error: {e}")

    def execute_command(self, cmd_line: str) -> None:
        try:
            parts = shlex.split(cmd_line)
        except ValueError as e:
            print(f"Error parsing command line: {e}")
            return
            
        cmd = parts[0].lower()
        args = parts[1:]
        
        if cmd in ("quit", "exit"):
            self.running = False
            self.scanner.detach()
            print("Goodbye.")
            
        elif cmd == "help":
            self.show_help()
            
        elif cmd == "info":
            self.show_info()
            
        elif cmd == "ranges":
            self.show_ranges(args)
            
        elif cmd == "scan":
            self.handle_scan(args)
            
        elif cmd == "next":
            self.handle_next(args)
            
        elif cmd == "results":
            self.show_results(args)
            
        elif cmd == "read":
            self.handle_read(args)
            
        elif cmd == "dump":
            self.handle_dump(args)
            
        elif cmd == "write":
            self.handle_write(args)
            
        elif cmd == "cancel":
            self.scanner.cancel_scan()
            print("Cancellation signal sent.")
            
        elif cmd == "clear":
            self.scanner.clear_candidates()
            if self.session_mgr.session:
                self.session_mgr.session.candidate_count = 0
            print("Candidates cleared.")
            
        else:
            print(f"Unknown command: '{cmd}'. Type 'help' for a list of available commands.")

    def show_help(self) -> None:
        print("Available Commands:")
        print("  info                                  Display target process architecture information")
        print("  ranges [protection]                   List memory ranges (default protection: r--)")
        print("  scan <type> <value|unknown>           Start a first scan (e.g. scan int32 100)")
        print("  next <mode> [value]                   Filter candidates from previous scan")
        print("                                        Modes: exact, not_equal, greater, less, greater_equal,")
        print("                                               less_equal, changed, unchanged, increased, decreased")
        print("  results [limit]                       Display scan candidate matches (default limit 20)")
        print("  read <address> <type>                 Read and display memory at address")
        print("  dump <address> <size>                 Display a hex/ASCII dump of memory range")
        print("  write <address> <type> <value>        Write value to memory address (prompts confirmation)")
        print("  cancel                                Interrupt current active scan")
        print("  clear                                 Reset current scan results")
        print("  quit, exit                            Exit memory scanner")

    def show_info(self) -> None:
        if not self.scanner.session:
            print("Not attached to any process.")
            return
        print(f"Process:      {self.scanner.process_name}")
        print(f"PID:          {self.scanner.pid}")
        print(f"Architecture: {self.scanner.arch}")
        print(f"Pointer Size: {self.scanner.pointer_size}")
        print(f"Active Scan:  {self.session_mgr.session.data_type if self.session_mgr.session else 'None'}")
        print(f"Candidates:   {self.scanner.get_candidate_count()}")

    def show_ranges(self, args: List[str]) -> None:
        if not self.scanner.session:
            print("Not attached to any process.")
            return
        prot = args[0] if args else "r--"
        try:
            ranges = self.scanner.get_ranges(prot)
            print(f"Memory Ranges with protection '{prot}':")
            headers = ["Base Address", "Size", "Size (bytes)", "Protection"]
            rows = []
            for r in ranges[:50]: # limit display size
                rows.append([
                    r["base"],
                    format_size(r["size"]),
                    str(r["size"]),
                    r["protection"]
                ])
            print_table(headers, rows)
            if len(ranges) > 50:
                print(f"... and {len(ranges) - 50} more ranges.")
        except Exception as e:
            print(f"Error enumerating ranges: {e}")

    def handle_scan(self, args: List[str]) -> None:
        if not self.scanner.session:
            print("Not attached to any process.")
            return
        if len(args) < 2:
            print("Usage: scan <type> <value|unknown>")
            print(f"Supported Types: {', '.join(TYPES.keys())}")
            return
            
        data_type = args[0].lower()
        value_str = args[1]
        
        if data_type not in TYPES:
            print(f"Unsupported data type: '{data_type}'")
            return
            
        print("Scanning...")
        try:
            # Handle Ctrl+C cancel during scanning
            count = 0
            def prog_cb(idx, tot, cnt):
                self.print_progress(idx, tot, cnt)
                
            try:
                count = self.scanner.first_scan(
                    data_type, 
                    value_str, 
                    options={"protection": "r--", "writableOnly": True},
                    progress_callback=prog_cb
                )
                print() # newline after progress bar
            except KeyboardInterrupt:
                print("\nInterrupt received. Cancelling scan...")
                self.scanner.cancel_scan()
                # Yield to let callback print completion count
                count = self.scanner.get_candidate_count()
                
            self.session_mgr.update_scan(data_type, count)
            print(f"Found {count} results.")
        except Exception as e:
            print(f"\nScan failed: {e}")

    def handle_next(self, args: List[str]) -> None:
        if not self.scanner.session:
            print("Not attached to any process.")
            return
        if not self.session_mgr.session or not self.session_mgr.session.data_type:
            print("No active scan session. Run a first scan first.")
            return
        if not args:
            print("Usage: next <mode> [value]")
            print("Modes: exact, not_equal, greater, less, greater_equal, less_equal, changed, unchanged, increased, decreased")
            return
            
        op = args[0].lower()
        val = args[1] if len(args) > 1 else None
        
        print("Filtering...")
        try:
            count = 0
            def prog_cb(idx, tot, cnt):
                self.print_progress(idx, tot, cnt)
                
            try:
                count = self.scanner.next_scan(
                    op, 
                    val, 
                    options={},
                    progress_callback=prog_cb
                )
                print()
            except KeyboardInterrupt:
                print("\nInterrupt received. Cancelling scan...")
                self.scanner.cancel_scan()
                count = self.scanner.get_candidate_count()
                
            self.session_mgr.update_scan(self.session_mgr.session.data_type, count)
            print(f"Found {count} results.")
        except Exception as e:
            print(f"\nNext scan failed: {e}")

    def show_results(self, args: List[str]) -> None:
        if not self.scanner.session:
            print("Not attached to any process.")
            return
        
        count = self.scanner.get_candidate_count()
        if count == 0:
            print("No candidates found.")
            return
            
        limit = 20
        if args:
            if args[0].lower() == "--all":
                limit = count
            else:
                try:
                    limit = int(args[0])
                except ValueError:
                    print("Invalid limit. Usage: results [limit]")
                    return
                    
        print(f"Displaying {min(limit, count)} of {count} candidates:")
        try:
            candidates = self.scanner.get_candidates_batch(0, limit)
            headers = ["#", "Address", "Value", "Previous Value", "Location"]
            rows = []
            for idx, c in enumerate(candidates):
                loc = f"{c['module']}+{c['moduleOffset']}" if c['module'] != "anonymous" else "anonymous"
                rows.append([
                    str(idx),
                    c["address"],
                    c["value"],
                    c["prevValue"],
                    loc
                ])
            print_table(headers, rows)
        except Exception as e:
            print(f"Failed to fetch results: {e}")

    def handle_read(self, args: List[str]) -> None:
        if not self.scanner.session:
            print("Not attached to any process.")
            return
        if len(args) < 2:
            print("Usage: read <address> <type>")
            return
            
        try:
            addr_str = args[0]
            addr = int(addr_str, 16) if addr_str.lower().startswith("0x") else int(addr_str, 10)
            data_type = args[1].lower()
            
            if data_type not in TYPES:
                print(f"Unsupported data type: '{data_type}'")
                return
                
            t = TYPES[data_type]
            size = t.size if t.size > 0 else 128 # default string size limit
            
            data = self.scanner.read_memory(addr, size)
            
            # Format value depending on datatype
            # Let's read it via structural unpack or type parser
            # In python, unpack byte values
            if data_type.startswith("int") or data_type.startswith("uint") or data_type in ("float", "double", "char"):
                import struct
                val = struct.unpack(t.fmt, data[:t.size])[0]
                hex_rep = " ".join(f"{b:02X}" for b in data[:t.size])
            elif data_type == "string":
                # find null terminator
                null_idx = data.find(b'\x00')
                clean_data = data[:null_idx] if null_idx != -1 else data
                val = clean_data.decode('utf-8', errors='replace')
                hex_rep = " ".join(f"{b:02X}" for b in clean_data)
            elif data_type == "utf16":
                # find null terminator \x00\x00 aligned
                # search for double null byte
                clean_len = len(data)
                for i in range(0, len(data) - 1, 2):
                    if data[i] == 0 and data[i+1] == 0:
                        clean_len = i
                        break
                clean_data = data[:clean_len]
                val = clean_data.decode('utf-16le', errors='replace')
                hex_rep = " ".join(f"{b:02X}" for b in clean_data)
            else:
                val = data
                hex_rep = " ".join(f"{b:02X}" for b in data)
                
            print(f"Address:  {hex(addr)}")
            print(f"Type:     {data_type}")
            print(f"Value:    {val}")
            print(f"Hex:      {hex_rep}")
        except Exception as e:
            print(f"Read failed: {e}")

    def handle_dump(self, args: List[str]) -> None:
        if not self.scanner.session:
            print("Not attached to any process.")
            return
        if len(args) < 2:
            print("Usage: dump <address> <size>")
            return
            
        try:
            addr_str = args[0]
            addr = int(addr_str, 16) if addr_str.lower().startswith("0x") else int(addr_str, 10)
            size = int(args[1])
            
            data = self.scanner.read_memory(addr, size)
            lines = format_hex_dump(addr, data)
            for line in lines:
                print(line)
        except Exception as e:
            print(f"Dump failed: {e}")

    def handle_write(self, args: List[str]) -> None:
        if not self.scanner.session:
            print("Not attached to any process.")
            return
        if len(args) < 3:
            print("Usage: write <address> <type> <value>")
            return
            
        try:
            addr_str = args[0]
            addr = int(addr_str, 16) if addr_str.lower().startswith("0x") else int(addr_str, 10)
            data_type = args[1].lower()
            val_str = args[2]
            
            if data_type not in TYPES:
                print(f"Unsupported data type: '{data_type}'")
                return
                
            # Verify and prompt confirmation
            confirm = input(f"Write '{val_str}' of type '{data_type}' to address {hex(addr)}? Are you sure? [y/N]: ")
            if confirm.strip().lower() != 'y':
                print("Write cancelled.")
                return
                
            self.scanner.write_memory(addr, data_type, val_str)
            print("Write successful.")
        except Exception as e:
            print(f"Write failed: {e}")
