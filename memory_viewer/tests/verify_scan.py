# End-to-end scan verification script

import sys
import time
from src.memscan.scanner import FridaScanner

def main():
    if len(sys.argv) < 2:
        print("Usage: python verify_scan.py <PID>")
        sys.exit(1)
        
    pid = int(sys.argv[1])
    print(f"Initializing FridaScanner and attaching to PID {pid}...")
    
    scanner = FridaScanner()
    scanner.set_device()
    
    try:
        scanner.attach(pid)
        print("Successfully attached!")
        
        # 1. Start first scan for int32 value 123456
        print("\n[Step 1] Running first scan for int32 '123456'...")
        def progress(idx, tot, count):
            print(f"Progress: {idx}/{tot} - Matches found: {count}")
            
        count = scanner.first_scan("int32", "123456", progress_callback=progress)
        print(f"First scan finished. Candidates found: {count}")
        
        if count == 0:
            print("ERROR: No candidates found for 123456!")
            sys.exit(1)
            
        # Get first 5 candidates
        candidates = scanner.get_candidates_batch(0, 5)
        print("\nTop Candidates:")
        for idx, c in enumerate(candidates):
            print(f"  {idx}: Address: {c['address']}, Value: {c['value']}, Location: {c['module']}+{c['moduleOffset']}")
            
        # Select target address
        target_addr_str = candidates[0]["address"]
        target_addr = int(target_addr_str, 16)
        
        # 2. Read memory at target address
        print(f"\n[Step 2] Reading memory at {target_addr_str}...")
        data = scanner.read_memory(target_addr, 4)
        import struct
        val = struct.unpack("<i", data)[0]
        print(f"Read value: {val}")
        
        # 3. Write new value 888888
        print(f"\n[Step 3] Writing new value '888888' to {target_addr_str}...")
        scanner.write_memory(target_addr, "int32", "888888")
        
        # 4. Verify value changed in target memory
        print("\n[Step 4] Reading memory again to verify write...")
        data = scanner.read_memory(target_addr, 4)
        val = struct.unpack("<i", data)[0]
        print(f"Read value after write: {val}")
        
        if val == 888888:
            print("\nSUCCESS: Memory Scanner integrated and verified successfully!")
        else:
            print(f"\nERROR: Value write check failed! Expected 888888 but got {val}")
            sys.exit(1)
            
    except Exception as e:
        print(f"Exception during verification: {e}")
        sys.exit(1)
    finally:
        scanner.detach()

if __name__ == "__main__":
    main()
