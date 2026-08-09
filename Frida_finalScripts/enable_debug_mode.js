let moduleName = "libcocos2dcpp.so";
let moduleBase = Module.findBaseAddress(moduleName);

if (moduleBase === null) {
    console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
} else {
    console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

    const debugModeAddr = Module.findExportByName(
        moduleName,
        "DEBUG_MODE"
    );

    if (debugModeAddr !== null) {
        console.log("[+] DEBUG_MODE export found at address: " + debugModeAddr);

        // Read current value (DEBUG_MODE != '\0' indicates a single byte char/bool flag)
        const initialVal = debugModeAddr.readU8();
        console.log(`[*] Current value of DEBUG_MODE: ${initialVal}`);

        if (initialVal === 0) {
            // Enable debug mode by writing 1 to the memory address
            debugModeAddr.writeU8(1);
            console.log("[+] Successfully modified memory: DEBUG_MODE set to 1 (Enabled)");
            
            // Verify write success by reading it back
            const updatedVal = debugModeAddr.readU8();
            console.log(`[*] Verified value of DEBUG_MODE after update: ${updatedVal}`);
        } else {
            console.log("[*] DEBUG_MODE is already enabled.");
        }
    } else {
        console.log("[-] Failed to find DEBUG_MODE symbol in exports.");
    }

    const drawScene = Module.findExportByName(moduleName, "_ZN7cocos2d10CCDirector9drawSceneEv");

    if (drawScene === null) {
        console.log("[-] drawScene not found");
    } else {
        console.log("[+] drawScene @ " + drawScene);

        Interceptor.attach(drawScene, {
            onEnter(args) {
                const director = args[0];      // this (r0)

                // m_bDisplayStats at offset 0x144
                director.add(0x51).writeU8(1);

                // If the compiler stored it as a 32-bit int instead of bool:
                // director.add(0x144).writeU32(1);
            }
        });
    }
}
