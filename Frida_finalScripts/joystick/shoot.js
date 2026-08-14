{
    // Wrap in block scope to allow reloading without redeclaration errors
    const moduleName = "libcocos2dcpp.so";
    const targetSymbol = "_ZN6Joypad4fireEv";

    console.log("[*] Checking for " + moduleName + "...");
    const moduleBase = Module.findBaseAddress(moduleName);

    if (moduleBase === null) {
        console.log("[-] " + moduleName + " is not loaded yet. Please wait until the game loads, then reload the script.");
    } else {
        console.log("[+] " + moduleName + " found at base address: " + moduleBase);

        // Helper to resolve symbol from exports or symbol table
        function resolveSymbol(symbolName) {
            let addr = Module.findExportByName(moduleName, symbolName);
            if (addr !== null) {
                return addr;
            }
            try {
                const mod = Process.getModuleByName(moduleName);
                const sym = mod.enumerateSymbols().find(s => s.name === symbolName);
                if (sym) {
                    return sym.address;
                }
            } catch (e) {
                console.log("[-] Error finding symbol " + symbolName + ": " + e.message);
            }
            return null;
        }

        const targetFuncAddr = resolveSymbol(targetSymbol);

        if (targetFuncAddr === null) {
            console.log("[-] Failed to resolve address for: " + targetSymbol);
        } else {
            console.log("[+] Target address resolved: " + targetFuncAddr);

            let lastJoypad = ptr(0);
            let lastRetVal = -1;
            let lastOffsetVal = -1;
            let frameCount = 0;

            Interceptor.attach(targetFuncAddr, {
                onEnter: function (args) {
                    this.joypad = args[0]; // 'this' pointer to Joypad object
                },
                onLeave: function (retval) {
                    const joypad = this.joypad;
                    if (joypad.isNull()) return;

                    let val_at_12e = -1;
                    try {
                        val_at_12e = joypad.add(0x12e).readU8();
                    } catch (e) {
                        // Ignore read errors
                    }

                    const originalRetVal = retval.toInt32();

                    // Force Joypad::fire to always return 1 (auto-shoot)
                    retval.replace(ptr(1));

                    frameCount++;

                    // Trigger output on state changes or periodically (every 60 frames)
                    if (!joypad.equals(lastJoypad) || originalRetVal !== lastRetVal || val_at_12e !== lastOffsetVal || frameCount % 60 === 0) {
                        console.log(`[Joypad::fire] Joypad: ${joypad} | Offset 0x12e: ${val_at_12e} | Original return: ${originalRetVal} -> Overridden: 1`);
                        
                        lastJoypad = joypad;
                        lastRetVal = originalRetVal;
                        lastOffsetVal = val_at_12e;
                    }
                }
            });
            console.log("[*] Hook successfully applied to " + targetSymbol);
        }
    }
}
