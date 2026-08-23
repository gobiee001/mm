{
    let moduleName = "libcocos2dcpp.so";
    let moduleBase = Module.findBaseAddress(moduleName);

    if (moduleBase === null) {
        console.log("[-] libcocos2dcpp.so is not loaded yet.");
    } else {
        console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

        // The mangled name for SoldierHostController::updateStep
        let hostSoldierUpdateMethodaddr = Module.findExportByName(
            moduleName,
            "_ZN21SoldierHostController10updateStepEf6cpVectS0_f"
        );

        let setHealthPointer = Module.findExportByName(
            moduleName,
            // "_ZN21SoldierHostController5setHPEi"
            "_ZN21SoldierHostController8setPowerEf"
        );

        const setHealth = new NativeFunction(setHealthPointer, 'void', ['pointer', 'int']);

        //_ZN21SoldierHostController5setHPEi


        if (hostSoldierUpdateMethodaddr === null) {
            console.log("[-] Function address not found. Check the mangled name.");
        } else {
            console.log("[+] Function found at: " + hostSoldierUpdateMethodaddr);

            Interceptor.attach(hostSoldierUpdateMethodaddr, {
                onEnter: function (args) {
                    // args is 'this'
                    var thisPtr = args[0];
                    // Or however you get the pointer
                    let newHp = 200;

                    // Call the function
                    setHealth(thisPtr, newHp);

                    console.log(`Called setHP on ${thisPtr} with HP: ${newHp}`);

                   
                }
            });
            console.log("[*] Hook applied successfully!");
        }
    }
}