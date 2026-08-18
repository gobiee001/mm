#!/usr/bin/env python3
"""
Mini Militia RL Environment - Frame Observation Runner & Verification Harness
Connects to Frida, captures SurvivalStage::updateStep observations, and prints to console every 2 seconds.
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
    parser.add_argument("--interval", type=float, default=2.0,
                        help="Console print interval in seconds (default: 2.0s)")
    parser.add_argument("--mode", choices=["pretty", "json"], default="pretty",
                        help="Observation output format (default: pretty)")
    parser.add_argument("--limit", type=int, default=0,
                        help="Stop after N observations printed (0 for unlimited)")
    return parser.parse_args()

class ThrottledObservationMonitor:
    def __init__(self, interval=2.0, mode="pretty", limit=0):
        self.interval = interval
        self.mode = mode
        self.limit = limit
        
        self.total_frames_received = 0
        self.printed_count = 0
        self.start_time = None
        self.last_print_time = 0.0
        self.last_observation = None

    def on_message(self, message, data):
        if message['type'] == 'send':
            payload = message['payload']

            # If payload is a dictionary, it is a structured observation snapshot
            if isinstance(payload, dict) and "player" in payload:
                self.total_frames_received += 1
                now = time.time()
                
                if self.start_time is None:
                    self.start_time = now

                self.last_observation = payload

                # Print first frame immediately, then every `interval` seconds (e.g. 2.0s)
                if self.printed_count == 0 or (now - self.last_print_time) >= self.interval:
                    self.last_print_time = now
                    self.printed_count += 1
                    self._print_observation(payload, now)

                    if self.limit > 0 and self.printed_count >= self.limit:
                        print(f"\n[+] Reached observation print limit ({self.limit}). Exiting...")
                        sys.exit(0)
            else:
                # String diagnostic message from console.log
                print(payload)

        elif message['type'] == 'error':
            print(f"[-] JS Error: {message.get('description', message)}", file=sys.stderr)

    def _print_observation(self, payload, current_time):
        elapsed = current_time - self.start_time
        fps = (self.total_frames_received / elapsed) if elapsed > 0 else 0.0

        frame = payload.get("frame", self.total_frames_received)
        dt = payload.get("dt", 0.0)
        stage = payload.get("stage", "SurvivalStage")
        p = payload.get("player", {})
        enemies = payload.get("enemies", [])
        
        if self.mode == "pretty":
            pos = p.get('position', {})
            vel = p.get('velocity', {})
            print(f"================================================================================")
            print(f"[OBS PRINT #{self.printed_count} | Total Ticks: {self.total_frames_received} | Stage: {stage} | Rate: {fps:.1f} FPS | dt={dt:.4f}]")
            print(f"PLAYER:")
            print(f"  MapPos   = ({pos.get('x', 0):.2f}, {pos.get('y', 0):.2f})")
            print(f"  Velocity = ({vel.get('x', 0):.2f}, {vel.get('y', 0):.2f})")
            print(f"  Reloading= {p.get('reloading', False)}")
            print(f"  AmmoInMag= {p.get('ammo_in_mag', 0)}")
            print(f"ENEMIES ({len(enemies)} active):")
            if len(enemies) == 0:
                print("  (None)")
            for idx, e in enumerate(enemies):
                e_pos = e.get('position', {})
                e_vel = e.get('velocity', {})
                t_name = {0: "Hawk", 1: "Humanoid", 2: "Worm"}.get(e.get('type', -1), f"Type {e.get('type')}")
                print(f"  [{idx}] id={e.get('id')} ({t_name}) | "
                      f"MapPos=({e_pos.get('x', 0):.2f}, {e_pos.get('y', 0):.2f}) | "
                      f"Vel=({e_vel.get('x', 0):.2f}, {e_vel.get('y', 0):.2f}) | "
                      f"Aim={e.get('aim_angle', 0):.2f} rad")
            print(f"================================================================================\n")
        elif self.mode == "json":
            print(json.dumps(payload))

def main():
    args = parse_args()
    
    if not os.path.exists(args.script):
        print(f"[-] Script not found: {args.script}")
        sys.exit(1)

    with open(args.script, "r", encoding="utf-8") as f:
        script_code = f.read()

    # Configure JS to send structured payload objects directly to Python
    script_code = script_code.replace("output_mode: 'pretty'", "output_mode: 'send'")
    script_code = script_code.replace("output_mode: 'json'", "output_mode: 'send'")

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

        print(f"[+] Attached to process successfully!")
        print(f"[*] Printing frame observations to console every {args.interval} seconds...\n")
        
        script = session.create_script(script_code)
        
        monitor = ThrottledObservationMonitor(interval=args.interval, mode=args.mode, limit=args.limit)
        script.on('message', monitor.on_message)
        
        print("[*] Loading observation hook...")
        script.load()
        print("[+] Hook running. Start or unpause a match to stream physics/frame ticks...\n")

        while True:
            time.sleep(0.5)

    except KeyboardInterrupt:
        print("\n[*] Detaching and shutting down...")
    except Exception as e:
        print(f"[-] Error: {e}", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    main()
