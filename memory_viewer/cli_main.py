# Main executable for interactive CLI memory scanner

import sys
import argparse
import logging
from src.memscan.cli import MemScanCLI
from src.memscan.scanner import FridaScanner

def main():
    parser = argparse.ArgumentParser(description="Antigravity Frida Memory Scanner (Cheat-Engine-style CLI)")
    parser.add_argument("--list", action="store_true", help="List all active processes on the selected device")
    parser.add_argument("--attach", type=str, metavar="PID_OR_NAME", help="Attach to a target process by PID or name")
    parser.add_argument("--verbose", action="store_true", help="Enable verbose stdout logging")
    parser.add_argument("--debug", action="store_true", help="Enable verbose debug logging")
    
    args = parser.parse_args()
    
    # Configure logging
    log_level = logging.INFO
    if args.debug:
        log_level = logging.DEBUG
    elif not args.verbose:
        log_level = logging.WARNING
        
    logging.basicConfig(
        level=log_level,
        format='%(asctime)s [%(levelname)s] %(name)s: %(message)s',
        handlers=[logging.StreamHandler(sys.stdout)]
    )

    try:
        # If --list flag is present, list processes and exit
        if args.list:
            scanner = FridaScanner()
            scanner.set_device()
            processes = scanner.list_processes()
            print(f"{'PID':<10} {'Process Name'}")
            print("-" * 40)
            for p in sorted(processes, key=lambda x: x["name"].lower()):
                print(f"{p['pid']:<10} {p['name']}")
            return

        # Start CLI shell
        cli = MemScanCLI()
        cli.run(attach_target=args.attach)
        
    except Exception as e:
        print(f"Error: {e}")
        sys.exit(1)

if __name__ == '__main__':
    main()
