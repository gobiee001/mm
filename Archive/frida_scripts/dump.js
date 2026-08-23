{
    // 1. Wrap in block scope to allow reloading without redeclaration errors
    let moduleName = "libcocos2dcpp.so";
    let moduleBase = Module.findBaseAddress(moduleName);
	

    if (moduleBase === null) {
        console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
    } else {
        console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

        // Correct positive offsets calculated from Base 0xce6c5000
        let getBodyPositionAddr = moduleBase.add(0x4d1c8d); // 0xceb96c8d - 0xce6c5000
        let getHPAddr           = moduleBase.add(0x4d1bd5); // 0xceb96bd5 - 0xce6c5000
        let getPrimaryWeaponAddr = moduleBase.add(0x4d1789); // 0xceb96789 - 0xce6c5000
        let getAmmoAddr         = moduleBase.add(0x518109); // 0xcebdd109 - 0xce6c5000
        let getClipAddr         = moduleBase.add(0x518165); // 0xcebdd165 - 0xce6c5000
        let updateStepAddr      = moduleBase.add(0x4cbf71); // 0xceb90f71 - 0xce6c5000
        let getEnemyPosAddr     = moduleBase.add(0x43c261); // 0xceb01261 - 0xce6c5000

        // Define NativeFunctions
        let getBodyPosition = new NativeFunction(getBodyPositionAddr, 'void', ['pointer', 'pointer']);
        let getHP           = new NativeFunction(getHPAddr, 'float', ['pointer']);
        let getPrimaryWeapon = new NativeFunction(getPrimaryWeaponAddr, 'pointer', ['pointer']);
        let getAmmo         = new NativeFunction(getAmmoAddr, 'int', ['pointer']);
        let getClip         = new NativeFunction(getClipAddr, 'int', ['pointer']);

        // Hook Local Player update loop
        Interceptor.attach(updateStepAddr, {
            onEnter: function (args) {
                let controllerInstance = args[0];
                if (controllerInstance.isNull()) return;

                // 1. Get Health
                let health = getHP(controllerInstance);

                // 2. Get Position (Structure return)
                let positionBuffer = Memory.alloc(16);
                getBodyPosition(positionBuffer, controllerInstance);
                let posX = positionBuffer.readFloat();
                let posY = positionBuffer.add(4).readFloat();

                // 3. Get Ammo
                let weaponPtr = getPrimaryWeapon(controllerInstance);
                let ammo = 0;
                let clip = 0;
                if (!weaponPtr.isNull()) {
                    ammo = getAmmo(weaponPtr);
                    clip = getClip(weaponPtr);
                }

                console.log(`[Player] HP: ${health.toFixed(1)} | Pos: (${posX.toFixed(1)}, ${posY.toFixed(1)}) | Ammo: ${clip}/${ammo}`);
            }
        });

        // Hook Enemy coordinates
        Interceptor.attach(getEnemyPosAddr, {
            onEnter: function (args) {
                let enemyIdPtr = args[1];
                let posX = args[2].readFloat();
                let posY = args[2].add(4).readFloat();

                let enemyId = "Unknown";
                try {
                    let isTiny = (enemyIdPtr.readU8() & 1) === 0;
                    enemyId = isTiny ? enemyIdPtr.add(1).readUtf8String() : enemyIdPtr.add(8).readPointer().readUtf8String();
                } catch (e) {}
	
                console.log(`[Enemy] ID: ${enemyId} | Pos: (${posX.toFixed(1)}, ${posY.toFixed(1)})`);
            }
        });
        
        console.log("[*] Hooks successfully applied!");
    }
}