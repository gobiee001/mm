{
    // Wrap in block scope to allow reloading without redeclaration errors
    const moduleName = "libcocos2dcpp.so";
    const moduleBase = Module.findBaseAddress(moduleName);

    if (moduleBase === null) {
        console.log("[-] " + moduleName + " is not loaded yet. Please wait until the game loads, then reload the script.");
    } else {
        console.log("[+] " + moduleName + " found at base address: " + moduleBase);

        // Resolve gravityFactor address:
        // 1. Export symbol lookup ("gravityFactor")
        // 2. Symbol table lookup
        // 3. Fallback relative offset: 0x00b2e428 (Ghidra 0x00b3e428 with 0x10000 base)
        let gravityFactorAddr = Module.findExportByName(moduleName, "gravityFactor");

        if (!gravityFactorAddr) {
            try {
                const mod = Process.getModuleByName(moduleName);
                const sym = mod.enumerateSymbols().find(s => s.name === "gravityFactor");
                if (sym) {
                    gravityFactorAddr = sym.address;
                }
            } catch (e) {
                console.log("[-] Error enumerating symbols: " + e.message);
            }
        }

        if (!gravityFactorAddr) {
            const FALLBACK_OFFSET = 0xb2e428;
            gravityFactorAddr = moduleBase.add(FALLBACK_OFFSET);
            console.log("[*] Using fallback offset 0x" + FALLBACK_OFFSET.toString(16) + " -> " + gravityFactorAddr);
        } else {
            console.log("[+] gravityFactor address resolved: " + gravityFactorAddr);
        }

        // Helper to fetch current gravity factor value
        function fetchGravityFactor() {
            try {
                const floatVal = gravityFactorAddr.readFloat();
                const rawHex = "0x" + (gravityFactorAddr.readU32() >>> 0).toString(16).toUpperCase().padStart(8, '0');
                return {
                    address: gravityFactorAddr,
                    floatValue: floatVal,
                    rawHex: rawHex
                };
            } catch (e) {
                console.log("[-] Failed to read gravityFactor: " + e.message);
                return null;
            }
        }

        // Helper to set gravity factor value
        function setGravityFactor(newValue) {
            try {
                gravityFactorAddr.writeFloat(newValue);
                console.log(`[+] Modified gravityFactor to: ${newValue}`);
            } catch (e) {
                console.log("[-] Failed to write gravityFactor: " + e.message);
            }
        }

        // Read and display initial value
        const initial = fetchGravityFactor();
        if (initial) {
            console.log("==========================================");
            console.log(`[+] Address    : ${initial.address}`);
            console.log(`[+] Raw Hex    : ${initial.rawHex}`);
            console.log(`[+] Float Value: ${initial.floatValue.toFixed(4)}`);
            console.log("==========================================");
        }

        // Monitor for changes periodically (e.g. map change, custom map settings)
        let lastValue = initial ? initial.floatValue : null;
        const intervalId = setInterval(() => {
            const current = fetchGravityFactor();
            if (current && Math.abs(current.floatValue - lastValue) > 0.0001) {
                console.log(`[*] [CHANGE DETECTED] gravityFactor: ${lastValue.toFixed(4)} -> ${current.floatValue.toFixed(4)} (${current.rawHex})`);
                lastValue = current.floatValue;
            }
        }, 500);

        // Export RPC functions for external control (Python / Frida CLI)
        rpc.exports = {
            getGravityFactor: function () {
                const info = fetchGravityFactor();
                return info ? info.floatValue : null;
            },
            getGravityDetails: function () {
                return fetchGravityFactor();
            },
            setGravityFactor: function (val) {
                setGravityFactor(parseFloat(val));
                return fetchGravityFactor();
            }
        };

        // Also expose helpers on global object for interactive console usage
        globalThis.fetchGravityFactor = fetchGravityFactor;
        globalThis.setGravityFactor = setGravityFactor;

        console.log("[*] gravityFactor watcher running (polls every 500ms for updates).");
    }
}
