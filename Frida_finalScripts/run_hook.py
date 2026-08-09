import frida
import sys
import time

def on_message(message, data):
    if message['type'] == 'send':
        print(message['payload'])
    elif message['type'] == 'error':
        print(f"[-] JS Error: {message.get('description', message)}")

def main():
    script_path = "respawn_hook.js"
    if len(sys.argv) > 1:
        script_path = sys.argv[1]

    print(f"[*] Reading script from {script_path}...")
    try:
        with open(script_path, "r", encoding="utf-8") as f:
            script_code = f.read()
    except Exception as e:
        print(f"[-] Failed to read script file: {e}")
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
