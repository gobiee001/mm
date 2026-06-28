{
    // 1. Wrap in block scope to allow reloading without redeclaration errors
    let moduleName = "libcocos2dcpp.so";
    let moduleBase = Module.findBaseAddress(moduleName);
    const module = Process.getModuleByName("libcocos2dcpp.so");
    if (moduleBase === null) {
        console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
    } else {
        console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

        // Correct positive offsets calculated from Base 0xce6c5000
        // let getBodyPositionAddr = moduleBase.add(0x4d1c8d); // 0xceb96c8d - 0xce6c5000
        // let getHPAddr           = moduleBase.add(0x4d1bd5); // 0xceb96bd5 - 0xce6c5000
        // let getPrimaryWeaponAddr = moduleBase.add(0x4d1789); // 0xceb96789 - 0xce6c5000
        // let getAmmoAddr         = moduleBase.add(0x518109); // 0xcebdd109 - 0xce6c5000
        // let getClipAddr         = moduleBase.add(0x518165); // 0xcebdd165 - 0xce6c5000
        // let updateStepAddr      = moduleBase.add(0x4cbf71); // 0xceb90f71 - 0xce6c5000
        // let getEnemyPosAddr     = moduleBase.add(0x43c261); // 0xceb01261 - 0xce6c5000

        // let hostSoldier =moduleBase.add(0xe2f78a00);  //00 D2 9A BC

        // // Define NativeFunctions
        // let getBodyPosition = new NativeFunction(getBodyPositionAddr, 'void', ['pointer', 'pointer']);
        // let getHP           = new NativeFunction(getHPAddr, 'float', ['pointer']);
        // let getPrimaryWeapon = new NativeFunction(getPrimaryWeaponAddr, 'pointer', ['pointer']);
        // let getAmmo         = new NativeFunction(getAmmoAddr, 'int', ['pointer']);
        // let getClip         = new NativeFunction(getClipAddr, 'int', ['pointer']);

        const hostSoldierUpdate = module.enumerateSymbols().find(s =>s.name === "_ZN21SoldierHostController10updateStepEf6cpVectS0_f");
        const addr = Module.findExportByName(
            "libcocos2dcpp.so",
            "_ZN21SoldierHostController10updateStepEf6cpVectS0_f"
        );

        const hpAddr = Module.findExportByName(
                    "libcocos2dcpp.so",
                    "_ZN21SoldierHostController5getHPEv"
                );

        const getHPFunc = new NativeFunction(
    hpAddr,
    'int',
    ['pointer']
);
        // Hook Local Player update loop
       console.log( 'hostSoldierUpdate' + addr );
        

       let hostSoldier = 0
        Interceptor.attach(addr, {
            onEnter: function (args) {
                // 
                hostSoldier = args[0]
                
                // listener.detach();
                const hp = getHPFunc(hostSoldier);
                console.log(" SoldierHostController: "+args[0] +"  "+ hp)
            }
        });



        //  Interceptor.attach(updateStepAddr, {
        //     onEnter: function (args) {
        //         let controllerInstance = args[0];
        //         if (hostSoldier.isNull()) return;

                

        //         // 3. Get Ammo
        //         let weaponPtr = getPrimaryWeapon(hostSoldier);
        //         let ammo = 0;
        //         let clip = 0;
        //         if (!weaponPtr.isNull()) {
        //             ammo = getAmmo(weaponPtr);
        //             clip = getClip(weaponPtr);
        //         }

        //         console.log(` Ammo: ${clip}/${ammo} Player= ${hostSoldier}`);
        //     }
        // });

        console.log("[*] Hooks successfully applied!");
    }
}