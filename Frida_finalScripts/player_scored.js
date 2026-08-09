{
    // Wrap in block scope to allow reloading without redeclaration errors
    let moduleName = "libcocos2dcpp.so";
    let moduleBase = Module.findBaseAddress(moduleName);
    if (moduleBase === null) {
        console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
    } else {
        console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

        const playerScoredAddr = Module.findExportByName(
            "libcocos2dcpp.so",
            "_ZN13SurvivalStage12playerScoredEPN7cocos2d8CCObjectE"
        );

        if (playerScoredAddr === null) {
            console.log("[-] _ZN13SurvivalStage12playerScoredEPN7cocos2d8CCObjectE not found!");
        } else {
            console.log("[+] _ZN13SurvivalStage12playerScoredEPN7cocos2d8CCObjectE found at: " + playerScoredAddr);

            Interceptor.attach(playerScoredAddr, {
                onEnter: function (args) {
                    const selfPtr = args[0];
                    const param1Ptr = args[1];
                    console.log("[+] SurvivalStage::playerScored called! (scored)");
                    console.log("    this (SurvivalStage*): " + selfPtr + " | param_1 (CCObject*): " + param1Ptr);
                }
            });

            console.log("[*] Hook applied successfully!");
        }
    }
}
