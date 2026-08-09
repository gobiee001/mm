{
    // Wrap in block scope to allow reloading without redeclaration errors
    const moduleName = "libcocos2dcpp.so";
    const targetSymbol = "_ZN14SoldierManager13respawnPlayerEPN7cocos2d8CCObjectE";
    const targetOffset = 0x4db845; // Calculated from dump offset 0xceba0845 (base 0xce6c5000)

    console.log("[*] Checking for " + moduleName + "...");
    const moduleBase = Module.findBaseAddress(moduleName);

    if (moduleBase === null) {
        console.log("[-] " + moduleName + " is not loaded yet. Please wait until the game loads, then reload the script.");
    } else {
        console.log("[+] " + moduleName + " found at base address: " + moduleBase);

        let targetFuncAddr = null;

        // Try 1: Find export by name
        targetFuncAddr = Module.findExportByName(moduleName, targetSymbol);

        // Try 2: Find symbol by name (if symbol table is present)
        if (targetFuncAddr === null) {
            console.log("[*] Export not found. Searching symbols...");
            try {
                const module = Process.getModuleByName(moduleName);
                const symbol = module.enumerateSymbols().find(s => s.name === targetSymbol);
                if (symbol) {
                    targetFuncAddr = symbol.address;
                }
            } catch (e) {
                console.log("[!] Symbol search error: " + e.message);
            }
        }

        // Try 3: Offset fallback
        if (targetFuncAddr === null) {
            console.log("[*] Symbol not found. Falling back to offset: 0x" + targetOffset.toString(16));
            targetFuncAddr = moduleBase.add(targetOffset);
        }

        if (targetFuncAddr === null) {
            console.log("[-] Failed to resolve address for: " + targetSymbol);
        } else {
            console.log("[+] Target address resolved: " + targetFuncAddr);

            Interceptor.attach(targetFuncAddr, {
                onEnter: function (args) {
                    console.log("triggered");
                }
            });
            console.log("[*] Hook successfully applied to " + targetSymbol);
        }
    }
}
