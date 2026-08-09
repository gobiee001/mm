{
    // Wrap in block scope to allow reloading without redeclaration errors
    let moduleName = "libcocos2dcpp.so";
    let moduleBase = Module.findBaseAddress(moduleName);
    const module = Process.getModuleByName("libcocos2dcpp.so");
    if (moduleBase === null) {
        console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
    } else {
        console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

        const addr = Module.findExportByName(
            "libcocos2dcpp.so",
            "_ZN21SoldierHostController10updateStepEf6cpVectS0_f"
        );

        const getPowerAddr = Module.findExportByName(
            "libcocos2dcpp.so",
            "_ZN21SoldierHostController8getPowerEv"
        );

        const getPowerFunc = new NativeFunction(
            getPowerAddr,
            'float',
            ['pointer']
        );

        const setPowerAddr = Module.findExportByName(
            "libcocos2dcpp.so",
            "_ZN21SoldierHostController8setPowerEf"
        );

        const setPowerFunc = new NativeFunction(
            setPowerAddr,
            'void',
            ['pointer', 'float']
        );

        // Hook Local Player update loop
        console.log('hostSoldierUpdate: ' + addr);

        let hostSoldier = 0;
        Interceptor.attach(addr, {
            onEnter: function (args) {
                hostSoldier = args[0];
                
                // Set power/jetpack to 1.0 (max)
                setPowerFunc(hostSoldier, 10.0);
                
                const power = getPowerFunc(hostSoldier);
                console.log(" SoldierHostController: " + args[0] + "  Power: " + power);
            }
        });

        console.log("[*] Hooks successfully applied!");
    }
}
