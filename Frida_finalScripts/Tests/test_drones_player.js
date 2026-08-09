import { getDictionaryObjects } from "../core/IterOverCCDic.js";

let moduleName = "libcocos2dcpp.so";
let moduleBase = Module.findBaseAddress(moduleName);

if (moduleBase === null) {
    console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
} else {
    console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

    // Resolve C++ exports
    const initEnemiesAddr = Module.findExportByName(
        moduleName,
        "_ZN12EnemyManager11initEnemiesEv"
    );

    const enemyUpdateAddr = Module.findExportByName(
        moduleName,
        "_ZN12EnemyManager10updateStepEf"
    );

    const playerUpdateAddr = Module.findExportByName(
        moduleName,
        "_ZN21SoldierHostController10updateStepEf6cpVectS0_f"
    );

    const updateSargeAddr = Module.findExportByName(
        moduleName,
        "_ZN13SurvivalStage11updateSargeEf"
    );

    if (initEnemiesAddr !== null && enemyUpdateAddr !== null && playerUpdateAddr !== null) {
        console.log("[+] test_drones_player.js: Successfully resolved player and enemy exports.");

        let enemyManagerPtr = ptr(0);
        let playerX = 0.0;
        let playerY = 0.0;
        let hasPlayer = false;

        // Capture EnemyManager pointer
        Interceptor.attach(initEnemiesAddr, {
            onEnter: function (args) {
                enemyManagerPtr = args[0];
            }
        });

        // Hook player update step to track player coordinates
        Interceptor.attach(playerUpdateAddr, {
            onEnter: function (args) {
                const playerPtr = args[0];
                if (!playerPtr.isNull()) {
                    // Y-position is at offset 0x28, X-position is at offset 0x2c
                    playerY = playerPtr.add(0x28).readFloat();
                    playerX = playerPtr.add(0x2c).readFloat();
                    hasPlayer = true;
                }
            }
        });

        // Hook to block Sarge updates if the export exists
        if (updateSargeAddr !== null) {
            console.log("[+] Block Sarge hook applied: stubbing _ZN13SurvivalStage11updateSargeEf");
            Interceptor.replace(updateSargeAddr, new NativeCallback(function (self, dt) {
                // Keep callback silent to prevent flooding the console output
            }, 'void', ['pointer', 'float']));
        } else {
            console.log("[-] Warning: _ZN13SurvivalStage11updateSargeEf export not found.");
        }

        let frameCount = 0;

        // Hook EnemyManager update step to read HawkDrones and log side-by-side
        Interceptor.attach(enemyUpdateAddr, {
            onEnter: function (args) {
                if (enemyManagerPtr.isNull()) {
                    enemyManagerPtr = args[0];
                }

                frameCount++;
                // Log once every 60 frames (~1 second) to prevent console flood
                if (frameCount % 60 === 0) {
                    const dictPtr = enemyManagerPtr.add(0x14).readPointer();
                    if (!dictPtr.isNull()) {
                        const hawks = getDictionaryObjects(dictPtr);
                        
                        const playerPosStr = hasPlayer 
                            ? `(${playerX.toFixed(2)}, ${playerY.toFixed(2)})` 
                            : "Waiting for Player...";

                        console.log(`\n=================== Positions Side-by-Side ===================`);
                        console.log(`[+] Player Position: ${playerPosStr}`);
                        console.log(`[+] Active Hawk Drones Count: ${hawks.length}`);

                        for (let i = 0; i < hawks.length; i++) {
                            const hawkPtr = hawks[i];
                            if (!hawkPtr.isNull()) {
                                const bodyStatePtr = hawkPtr.add(0x1c8).readPointer();
                                let hawkX = 0.0, hawkY = 0.0;
                                if (!bodyStatePtr.isNull()) {
                                    hawkX = bodyStatePtr.add(0x28).readFloat();
                                    hawkY = bodyStatePtr.add(0x2c).readFloat();
                                }
                                console.log(`    -> HawkDrone [${i}]: (${hawkX.toFixed(2)}, ${hawkY.toFixed(2)})`);
                            }
                        }
                        console.log(`==============================================================`);
                    }
                }
            }
        });
    } else {
        console.log("[-] test_drones_player.js: Failed to resolve one or more required exports.");
    }
}
