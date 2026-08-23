{
    // 1. Wrap in block scope to allow reloading without redeclaration errors
    let moduleName = "libcocos2dcpp.so";
    let moduleBase = Module.findBaseAddress(moduleName);
    // const module = Process.getModuleByName("libcocos2dcpp.so");
    if (moduleBase === null) {
        console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
    } else {
        console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);


        const hawkDroneUpdate = Module.findExportByName(
            "libcocos2dcpp.so",
            "_ZN9HawkDrone10updateStepEf"
        );




        //hawk


        //humonide

        // worm


        let enemyManager = 0
        let count = 0
        const setHawkDrones = new Set()
        Interceptor.attach(hawkDroneUpdate, {
            onEnter: function (args) {
                setHawkDrones.add(args[0])
            }
        });

        console.log("[*] Hooks successfully applied for hawk drones!");

        // while (true) {


        //     for (const hawkPointer of setHawkDrones) {
        //         // console.log(value);

        //         var hpAddr = hawkPointer.add(0x28);
        //         var hp = hpAddr.readInt()
        //         console.log(hawkPointer + " " + hp)
        //     }
        // }

        setInterval(() => {
            if (setHawkDrones.size === 0) return;

            // Convert Set to Array for iteration if you need index, 
            // but for...of works directly on Sets efficiently.
            for (const hawkPointer of setHawkDrones) {
                try {
                    // Validate pointer before reading to prevent crashes
                    if (hawkPointer.isNull()) continue;

                    var hpAddr = hawkPointer.add(0x1ac);

                    // Use try-catch for memory reads in case the object is freed
                    var hp = hpAddr.readInt();
                    console.log(`[Drone] ${hawkPointer} HP: ${hp}`);

                    // Example: Infinite HP Cheat
                    // hpAddr.writeInt(9999); 
                } catch (e) {
                    // Console.log("Error reading drone: " + e);
                    // Optional: Remove invalid pointers to keep Set clean
                    // setHawkDrones.delete(hawkPointer);
                }
            }
        }, 200);
    }

    // Usage inside your hook:
    // var peerSoldiersPtr = ...; // Get this from EnemyManager or global
    // iterateCCDictionary(peerSoldiersPtr);   
}