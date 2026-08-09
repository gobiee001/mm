{
    // Wrap in block scope to allow reloading without redeclaration errors
    let moduleName = "libcocos2dcpp.so";
    let moduleBase = Module.findBaseAddress(moduleName);
    if (moduleBase === null) {
        console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
    } else {
        console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

        const addr = Module.findExportByName(
            "libcocos2dcpp.so",
            "_ZN21SoldierHostController10updateStepEf6cpVectS0_f"
        );

        const getPrimaryWeaponAddr = Module.findExportByName(
            "libcocos2dcpp.so",
            "_ZN17SoldierController16getPrimaryWeaponEv"
        );

        const getPrimaryWeapon = new NativeFunction(
            getPrimaryWeaponAddr,
            'pointer',
            ['pointer']
        );

        // Hook Local Player update loop
        console.log('hostSoldierUpdate: ' + addr);

        let hostSoldier = 0;
        Interceptor.attach(addr, {
            onEnter: function (args) {
                hostSoldier = args[0];
                
                // Get primary weapon pointer
                const weaponPtr = getPrimaryWeapon(hostSoldier);
                
                if (weaponPtr !== null && !weaponPtr.isNull()) {
                    // Read ammo count from offset 0x1ee (stored as short / 2 bytes)
                    const ammo = weaponPtr.add(0x1ee).readS16();
                    console.log(" SoldierHostController: " + hostSoldier + " | Weapon: " + weaponPtr + " | Ammo: " + ammo);
                } else {
                    console.log(" SoldierHostController: " + hostSoldier + " | No Primary Weapon");
                }
            }
        });

        console.log("[*] Hooks successfully applied!");
    }
}
