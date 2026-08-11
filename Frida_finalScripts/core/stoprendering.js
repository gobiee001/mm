let moduleName = "libcocos2dcpp.so";
let moduleBase = Module.findBaseAddress(moduleName);

if (moduleBase === null) {
    console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
} else {
    console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

    const drawScene = Module.findExportByName(
        moduleName,
        "_ZN7cocos2d10CCDirector9drawSceneEv"
    );

    if (drawScene === null) {
        console.log("[-] CCDirector::drawScene not found");
    } else {
        console.log("[+] CCDirector::drawScene @ " + drawScene);

        Interceptor.attach(drawScene, {
            onEnter(args) {
                const director = args[0]; // CCDirector* 'this' pointer

                // Make *(int *)(this + 0xa0) = 0
                director.add(0x74).writeS32(0);
                director.add(0x38).writeS32(0);

                // Make this[0x51] = 1 (offset 0x51)
                director.add(0x51).writeU8(1);
            }
        });
        console.log("[+] Successfully attached interceptor to CCDirector::drawScene");
    }
}
