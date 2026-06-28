{
    // 1. Wrap in block scope to allow reloading without redeclaration errors
    let moduleName = "libcocos2dcpp.so";
    let moduleBase = Module.findBaseAddress(moduleName);
    const module = Process.getModuleByName("libcocos2dcpp.so");
    if (moduleBase === null) {
        console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
    } else {
        console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);


        const hostSoldierUpdateMethodaddr = Module.findExportByName(
            "libcocos2dcpp.so",
            "_ZN21SoldierHostController10updateStepEf6cpVectS0_f"
        );

        const getBodyPosAddr = Module.findExportByName(
            "libcocos2dcpp.so",
            "_ZN17SoldierController15getBodyPositionEv"
        );

        const getBodyPos = new NativeFunction(getBodyPosAddr, 'pointer', ['pointer', 'pointer']);
        const resultVector = Memory.alloc(16);



        let hostSoldierPointer = 0
        let count = 0
        Interceptor.attach(hostSoldierUpdateMethodaddr, {
            onEnter: function (args) {
                count = count + 1
                hostSoldierPointer = args[0]


                if (count % 20 == 0) {
                    // listener.detach();
                    const hp = getBodyPos(resultVector, hostSoldierPointer);
                    console.log(" SoldierHostController: " + args[0] + "  " + hostSoldierPointer)

                    var xAddress = hostSoldierPointer.add(0x2c);
                    var xValue = xAddress.readFloat();

                    var yAddress = hostSoldierPointer.add(0x28);
                    var yValue = yAddress.readFloat();


                    console.log(xValue)
                    console.log(yValue)
                    // console.log(zValue)

                    
                    // 4. Read the values (X, Y, Z, W)
                    // const x = resultVector.readFloat();
                    // const y = resultVector.add(4).readFloat();
                    // const z = resultVector.add(8).readFloat();
                    // const w = resultVector.add(12).readFloat();
                    // console.log("Position:" );
                    // console.log(x)
                    // console.log(y)
                    // console.log(z)
                    // console.log(w)
                }
            }
        });






        console.log("[*] Hooks successfully applied!");
    }
}