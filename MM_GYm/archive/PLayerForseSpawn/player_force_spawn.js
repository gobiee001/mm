{
    // Wrap in block scope to allow reloading without redeclaration errors
    const moduleName = "libcocos2dcpp.so";
    const spawnPlayerSymbol = "_ZN14SoldierManager11spawnPlayerEv";
    const updateStepSymbol = "_ZN14SoldierManager10updateStepEf";

    let soldierManagerInstance = null;
    let spawnPlayer = null;
    let hasSpawned = false;

    console.log("[*] Initializing Player Force Spawn Script...");
    console.log("[*] Target module: " + moduleName);

    const moduleBase = Module.findBaseAddress(moduleName);

    if (moduleBase === null) {
        console.log("[-] " + moduleName + " is not loaded yet. Please wait until the game starts.");
    } else {
        console.log("[+] " + moduleName + " found at base address: " + moduleBase);

        function resolveSymbol(symbolName) {
            let addr = Module.findExportByName(moduleName, symbolName);
            if (addr !== null) return addr;

            try {
                const module = Process.getModuleByName(moduleName);
                const symbol = module.enumerateSymbols().find(s => s.name === symbolName);
                if (symbol) return symbol.address;
            } catch (e) {
                console.log("[!] Symbol search error for " + symbolName + ": " + e.message);
            }
            return null;
        }

        // 1. Resolve SoldierManager::spawnPlayer()
        const spawnPlayerAddr = resolveSymbol(spawnPlayerSymbol);
        if (spawnPlayerAddr !== null) {
            console.log("[+] Resolved " + spawnPlayerSymbol + " at " + spawnPlayerAddr);
            try {
                // void __thiscall SoldierManager::spawnPlayer(SoldierManager *this)
                spawnPlayer = new NativeFunction(spawnPlayerAddr, 'void', ['pointer']);
                console.log("[+] NativeFunction for spawnPlayer created successfully.");
            } catch (e) {
                console.log("[-] Failed to create NativeFunction for spawnPlayer: " + e.message);
            }
        } else {
            console.log("[-] Failed to resolve symbol: " + spawnPlayerSymbol);
        }

        // 2. Resolve SoldierManager::updateStep(float)
        const updateStepAddr = resolveSymbol(updateStepSymbol);
        if (updateStepAddr !== null) {
            console.log("[+] Resolved " + updateStepSymbol + " at " + updateStepAddr);

            Interceptor.attach(updateStepAddr, {
                onEnter: function (args) {
                    // void __thiscall SoldierManager::updateStep(SoldierManager *this, float param_1)
                    const selfPtr = args[0];

                    if (selfPtr && !selfPtr.isNull()) {
                        soldierManagerInstance = selfPtr;

                        if (!hasSpawned && spawnPlayer !== null) {
                            hasSpawned = true;
                            console.log("[+] SoldierManager instance captured: " + selfPtr);
                            console.log("[*] Calling _ZN14SoldierManager11spawnPlayerEv(this: " + selfPtr + ")...");
                            try {
                                spawnPlayer(selfPtr);
                                console.log("[+] SoldierManager::spawnPlayer() called successfully!");
                            } catch (err) {
                                console.log("[-] Error executing spawnPlayer: " + err.message);
                            }
                        }
                    }
                }
            });
            console.log("[*] Hook successfully applied to " + updateStepSymbol);
        } else {
            console.log("[-] Failed to resolve symbol: " + updateStepSymbol);
        }

        // Expose RPC methods to allow triggering spawnPlayer externally
        rpc.exports = {
            spawnPlayer: function () {
                if (soldierManagerInstance && !soldierManagerInstance.isNull() && spawnPlayer !== null) {
                    console.log("[*] RPC: Calling SoldierManager::spawnPlayer()...");
                    spawnPlayer(soldierManagerInstance);
                    console.log("[+] RPC: SoldierManager::spawnPlayer() executed.");
                    return true;
                } else {
                    console.log("[-] SoldierManager instance not available yet. Waiting for updateStep...");
                    hasSpawned = false;
                    return false;
                }
            },
            forceSpawn: function () {
                hasSpawned = false;
                if (soldierManagerInstance && !soldierManagerInstance.isNull() && spawnPlayer !== null) {
                    spawnPlayer(soldierManagerInstance);
                    console.log("[+] forceSpawn executed immediately.");
                    return true;
                }
                console.log("[*] forceSpawn armed: will trigger on next SoldierManager::updateStep.");
                return false;
            },
            getInstance: function () {
                return soldierManagerInstance ? soldierManagerInstance.toString() : null;
            }
        };

        // Listen for send({action: "spawn"}) from Python
        recv(function onMessage(message) {
            try {
                if (message.type === 'send' && message.payload && (message.payload.action === 'spawn' || message.payload === 'spawn')) {
                    if (soldierManagerInstance && !soldierManagerInstance.isNull() && spawnPlayer !== null) {
                        console.log("[*] Message trigger: Calling SoldierManager::spawnPlayer()...");
                        spawnPlayer(soldierManagerInstance);
                        console.log("[+] Message trigger: spawnPlayer called.");
                    } else {
                        hasSpawned = false;
                        console.log("[*] Message trigger received: Armed to spawn on next updateStep.");
                    }
                }
            } catch (e) {
                console.log("[-] onMessage error: " + e.message);
            }
            recv(onMessage);
        });
    }
}
