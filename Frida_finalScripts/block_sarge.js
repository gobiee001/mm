{
    // Wrap in block scope to allow reloading without redeclaration errors
    let moduleName = "libcocos2dcpp.so";
    let moduleBase = Module.findBaseAddress(moduleName);
    if (moduleBase === null) {
        console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
    } else {
        console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

        const updateSargeAddr = Module.findExportByName(
            "libcocos2dcpp.so",
            "_ZN13SurvivalStage11updateSargeEf"
        );

        if (updateSargeAddr === null) {
            console.log("[-] _ZN13SurvivalStage11updateSargeEf not found!");
        } else {
            console.log("[+] _ZN13SurvivalStage11updateSargeEf found at: " + updateSargeAddr);

            // Replace SurvivalStage::updateSarge(float) with a no-op implementation
            Interceptor.replace(updateSargeAddr, new NativeCallback(function (self, dt) {
                console.log("[+] updateSarge called and blocked (stubbed/no-op).");
            }, 'void', ['pointer', 'float']));

            console.log("[*] Hook to block Sarge applied successfully!");
        }
    }
}
