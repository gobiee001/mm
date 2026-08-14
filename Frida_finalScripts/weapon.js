{
    // Wrap in block scope to allow reloading without redeclaration errors
    const moduleName = "libcocos2dcpp.so";

    // Symbols to resolve
    const updateStepSymbol = "_ZN21SoldierHostController10updateStepEf6cpVectS0_f";
    const sharedWeaponFactorySymbol = "_ZN13WeaponFactory19sharedWeaponFactoryEv";
    const createWeaponSymbol = "_ZN13WeaponFactory24createWeaponFromAmmoTypeE8ItemType";
    const addPrimaryWeaponSymbol = "_ZN21SoldierHostController16addPrimaryWeaponEP6Weapon";

    // Weapon/Item Type values for reference:
    // 1: MACHETE, 2: FRAGNADE, 3: DEAGLE, 4: MAGNUM, 5: UZI, 6: MP5, 7: AK47, 8: M16, 9: SHOTGUN, 10: M93BA
    // 11: SMAW, 12: ROCKET, 13: RIOTSHIELD, 14: POWERUP, 15: POWERUP, 16: M14, 17: PHASR, 18: GDEAGLE
    // 19: FLAMETHROWER, 20: GASNADE, 21: EMP, 23: PROXYNADE, 24: SAW, 25: SAWGUN, 26: TAVOR
    // 27: MINIGUN, 28: TEC9, 29: RG6, 30: EMPNADE, 31: XM8, 32: MORTAR, 33: FLAGBLUE, 34: FLAGORANGE
    const TARGET_WEAPON_TYPE = 5; // Change this value to equip a different weapon!

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

        // Resolve addresses
        const updateStepAddr = resolveSymbol(updateStepSymbol);
        const sharedWeaponFactoryAddr = resolveSymbol(sharedWeaponFactorySymbol);
        const createWeaponAddr = resolveSymbol(createWeaponSymbol);
        const addPrimaryWeaponAddr = resolveSymbol(addPrimaryWeaponSymbol);

        if (!updateStepAddr || !sharedWeaponFactoryAddr || !createWeaponAddr || !addPrimaryWeaponAddr) {
            console.log("[-] Failed to resolve one or more required symbols:");
            console.log("    updateStep: " + updateStepAddr);
            console.log("    sharedWeaponFactory: " + sharedWeaponFactoryAddr);
            console.log("    createWeaponFromAmmoType: " + createWeaponAddr);
            console.log("    addPrimaryWeapon: " + addPrimaryWeaponAddr);
        } else {
            console.log("[+] All symbols resolved successfully!");

            // Define NativeFunctions
            const sharedWeaponFactory = new NativeFunction(sharedWeaponFactoryAddr, 'pointer', []);
            const createWeaponFromAmmoType = new NativeFunction(createWeaponAddr, 'pointer', ['pointer', 'int']);
            const addPrimaryWeapon = new NativeFunction(addPrimaryWeaponAddr, 'void', ['pointer', 'pointer']);

            let lastHostSoldier = ptr(0);

            // Hook Local Player update loop
            Interceptor.attach(updateStepAddr, {
                onEnter: function (args) {
                    const hostSoldier = args[0];
                    
                    // Only assign the weapon when a new SoldierHostController instance is encountered (e.g. game start or respawn)
                    if (!hostSoldier.equals(lastHostSoldier)) {
                        console.log("[*] New SoldierHostController instance detected: " + hostSoldier);
                        lastHostSoldier = hostSoldier;

                        try {
                            const factory = sharedWeaponFactory();
                            console.log("[+] Shared WeaponFactory address: " + factory);
                            if (factory !== null && !factory.isNull()) {
                                const weapon = createWeaponFromAmmoType(factory, TARGET_WEAPON_TYPE);
                                console.log("[+] Created Weapon (Type " + TARGET_WEAPON_TYPE + ") address: " + weapon);
                                
                                if (weapon !== null && !weapon.isNull()) {
                                    // Call addPrimaryWeapon(hostSoldier, weapon)
                                    addPrimaryWeapon(hostSoldier, weapon);
                                    console.log("[+] Successfully added weapon (Type " + TARGET_WEAPON_TYPE + ") to local player!");
                                } else {
                                    console.log("[-] createWeaponFromAmmoType returned NULL weapon.");
                                }
                            } else {
                                console.log("[-] sharedWeaponFactory returned NULL.");
                            }
                        } catch (e) {
                            console.log("[!] Error during weapon assignment: " + e.message);
                        }
                    }
                }
            });

            // Optional Hook to monitor addPrimaryWeapon calls
            Interceptor.attach(addPrimaryWeaponAddr, {
                onEnter: function (args) {
                    const soldier = args[0];
                    const weapon = args[1];
                    console.log("[*] SoldierHostController::addPrimaryWeapon called: Controller=" + soldier + ", Weapon=" + weapon);
                }
            });

            console.log("[*] Hook setup complete. Active weapon set to: " + TARGET_WEAPON_TYPE);
        }
    }
}
