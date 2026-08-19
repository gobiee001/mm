import frida
import sys
import time
import os
import re

def on_message(message, data):
    if message['type'] == 'send':
        print(message['payload'])
    elif message['type'] == 'error':
        print(f"[-] JS Error: {message.get('description', message)}")

def find_project_root(start_dir):
    current = os.path.abspath(start_dir)
    while True:
        # Stop at the directory that contains the Frida_finalScripts folder or the .git folder
        if os.path.exists(os.path.join(current, "Frida_finalScripts")) or os.path.exists(os.path.join(current, ".git")):
            return current
        parent = os.path.dirname(current)
        if parent == current:
            # Reached root of the drive
            return start_dir
        current = parent

def resolve_imports(script_path):
    if not os.path.exists(script_path):
        return ""
    
    base_dir = os.path.dirname(os.path.abspath(script_path))
    # Dynamically locate the main project root
    project_root = find_project_root(base_dir)

    try:
        with open(script_path, "r", encoding="utf-8") as f:
            code = f.read()
    except Exception as e:
        print(f"[-] Failed to read script {script_path}: {e}")
        return ""

    # Matches: import { ... } from "path"; or import "path";
    pattern = re.compile(r'import\s+(?:{[^}]+}\s+from\s+)?["\']([^"\']+)["\'];?')

    def replace_import(match):
        imp_path = match.group(1)
        # 1. Try relative to the script's directory
        full_path = os.path.abspath(os.path.join(base_dir, imp_path))
        if not os.path.exists(full_path):
            # 2. Try relative to the project root (e.g. C:/Users/.../mm/)
            full_path = os.path.abspath(os.path.join(project_root, imp_path))

        if os.path.exists(full_path):
            print(f"[*] Resolving import: {imp_path} -> {full_path}")
            # Recursively resolve imports and strip 'export '
            imported_code = resolve_imports(full_path)
            # Remove any 'export ' keywords to make it standard JS compatible with all runtimes
            imported_code = re.sub(r'\bexport\s+', '', imported_code)
            return imported_code
        else:
            print(f"[-] Warning: Could not find imported file: {imp_path}")
            return match.group(0)

    return pattern.sub(replace_import, code)

def main():
    script_path = "respawn_hook.js"
    if len(sys.argv) > 1:
        script_path = sys.argv[1]

    print(f"[*] Reading and resolving script from {script_path}...")
    try:
        script_code = resolve_imports(script_path)
        if not script_code:
            raise FileNotFoundError(f"Script {script_path} could not be resolved or is empty.")
    except Exception as e:
        print(f"[-] Failed to load/resolve script: {e}")
        return

    try:
        print("[*] Connecting to remote Frida Gadget on 127.0.0.1:27042...")
        device_manager = frida.get_device_manager()
        device = device_manager.add_remote_device("127.0.0.1:27042")
        
        print("[*] Attaching to Gadget...")
        session = device.attach("Gadget")
        
        print("[*] Creating script...")
        script = session.create_script(script_code)
        script.on('message', on_message)
        
        print("[*] Loading script...")
        script.load()
        
        print("[*] Hook is active. Press Ctrl+C to exit.")
        while True:
            time.sleep(1)
            
    except KeyboardInterrupt:
        print("\n[*] Stopping and detaching...")
    except Exception as e:
        print(f"[-] Error: {e}")

if __name__ == "__main__":
    main()
