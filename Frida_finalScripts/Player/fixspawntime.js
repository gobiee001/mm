{
    // Wrap in block scope to allow reloading without redeclaration errors
    let moduleName = "libcocos2dcpp.so";
    let moduleBase = Module.findBaseAddress(moduleName);
    if (moduleBase === null) {
        console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
    } else {
        console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

        // Hook SoldierManager::getRespawnTime()
        const targetSymbol = "_ZN14SoldierManager14getRespawnTimeEv";
        let targetFuncAddr = Module.findExportByName(moduleName, targetSymbol);

        if (targetFuncAddr === null) {
            console.log("[*] Export for getRespawnTime not found. Searching symbols...");
            try {
                const module = Process.getModuleByName(moduleName);
                const symbol = module.enumerateSymbols().find(s => s.name === targetSymbol);
                if (symbol) {
                    targetFuncAddr = symbol.address;
                }
            } catch (e) {
                console.log("[!] Symbol search error for getRespawnTime: " + e.message);
            }
        }

        if (targetFuncAddr === null) {
            console.log("[-] Failed to resolve address for: " + targetSymbol);
        } else {
            console.log("[+] Target address for getRespawnTime resolved: " + targetFuncAddr);

            Interceptor.attach(targetFuncAddr, {
                onEnter: function (args) {
                    const selfPtr = args[0];
                    console.log("[+] SoldierManager::getRespawnTime called! (this: " + selfPtr + ")");
                    
                    if (!selfPtr.isNull()) {
                        selfPtr.add(0x1c).writeFloat(0.0);
                        console.log("[+] Directly modified respawn time offset 0x1c to 0.0 (float)");
                    }
                }
            });

            console.log("[*] Hook to getRespawnTime successfully applied!");
        }
    }
}
