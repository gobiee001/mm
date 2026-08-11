let moduleName = "libcocos2dcpp.so";
let moduleBase = Module.findBaseAddress(moduleName);

if (moduleBase === null) {
    console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
} else {
    console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

    const schedulerUpdate = Module.findExportByName(
        moduleName,
        "_ZN7cocos2d11CCScheduler6updateEf"
    );

    if (schedulerUpdate === null) {
        console.log("[-] CCScheduler::update not found");
    } else {
        console.log("[+] CCScheduler::update @ " + schedulerUpdate);

        Interceptor.attach(schedulerUpdate, {
            onEnter(args) {
                const scheduler = args[0]; // 'this' pointer

                // Edit *(float *)(this + 0x14) value to 3.0f (hex representation: 0x40400000)
                scheduler.add(0x14).writeFloat(3.0);

                // Alternatively: scheduler.add(0x14).writeU32(0x40400000);
            }
        });
        console.log("[+] Successfully attached interceptor to CCScheduler::update");
    }
}
