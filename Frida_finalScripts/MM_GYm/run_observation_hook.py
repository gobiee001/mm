#!/usr/bin/env python3
"""
Mini Militia RL Environment - Frame Observation Runner & Verification Harness
Connects to Frida and tests the TrainingStage::updateStep frame observation hook.
"""

import sys
import os
import time
import json
import argparse
import frida

def parse_args():
    parser = argparse.ArgumentParser(description="Mini Militia RL Frame Observation Runner")
    parser.add_argument("--device", choices=["gadget", "usb", "remote"], default="gadget",
                        help="Frida connection target (default: gadget 127.0.0.1:27042)")
    parser.add_argument("--host", default="127.0.0.1:27042",
                        help="Host:Port for remote/gadget connection")
    parser.add_argument("--script", default=os.path.join(os.path.dirname(__file__), "observation_hook.js"),
                        help="Path to Frida JS script")
    parser.add_argument("--mode", choices=["pretty", "json", "send"], default="pretty",
                        help="Observation output format")
    parser.add_argument("--limit", type=int, default=0,
                        help="Stop after N observations (0 for unlimited)")
    return parser.parse_args()

class ObservationMonitor:
    def __init__(self, mode="pretty", limit=0):
        self.mode = mode
        self.limit = limit
        self.received_count = 0
        self.start_time = None
        self.last_report_time = None

    def on_message(self, message, data):
        if message['type'] == 'send':
            payload = message['payload']
            self.received_count += 1
            if self.start_time is None:
                self.start_time = time.time()
                self.last_report_time = self.start_time

            if isinstance(payload, dict):
                frame = payload.get("frame", self.received_count)
                dt = payload.get("dt", 0.0)
                p = payload.get("player", {})
                enemies = payload.get("enemies", [])
                
                if self.mode == "pretty":
                    print(f"[OBS #{self.received_count} | FRAME {frame} | dt={dt:.4f}] "
                          f"Player MapPos=({p.get('position',{}).get('x',0):.1f}, {p.get('position',{}).get('y',0):.1f}) "
                          f"Vel=({p.get('velocity',{}).get('x',0):.1f}, {p.get('velocity',{}).get('y',0):.1f}) "
                          f"Ammo={p.get('ammo_in_mag',0)} Reload={p.get('reloading',False)} | "
                          f"Enemies: {len(enemies)}")
                elif self.mode == "json":
                    print(json.dumps(payload))
            else:
                print(payload)

            if self.limit > 0 and self.received_count >= self.limit:
                print(f"[+] Reached observation limit ({self.limit}). Exiting...")
                sys.exit(0)

        elif message['type'] == 'error':
            print(f"[-] JS Error: {message.get('description', message)}", file=sys.stderr)

def main():
    args = parse_args()
    
    if not os.path.exists(args.script):
        print(f"[-] Script not found: {args.script}")
        sys.exit(1)

    with open(args.script, "r", encoding="utf-8") as f:
        script_code = f.read()

    # Apply output mode configuration if configured
    if args.mode != "pretty":
        script_code = script_code.replace("output_mode: 'pretty'", f"output_mode: '{args.mode}'")

    print("[*] Connecting to target device...")
    try:
        if args.device == "gadget":
            device = frida.get_device_manager().add_remote_device(args.host)
            session = device.attach("Gadget")
        elif args.device == "remote":
            device = frida.get_device_manager().add_remote_device(args.host)
            session = device.attach("com.appsomniacs.da2")
        elif args.device == "usb":
            device = frida.get_usb_device()
            session = device.attach("com.appsomniacs.da2")

        print("[+] Attached to process successfully!")
        script = session.create_script(script_code)
        
        monitor = ObservationMonitor(mode=args.mode, limit=args.limit)
        script.on('message', monitor.on_message)
        
        print("[*] Loading observation hook...")
        script.load()
        print("[+] Hook loaded and running. Waiting for TrainingStage::updateStep frames...\n")

        while True:
            time.sleep(1)

    except KeyboardInterrupt:
        print("\n[*] Detaching and shutting down...")
    except Exception as e:
        print(f"[-] Error: {e}", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    main()
