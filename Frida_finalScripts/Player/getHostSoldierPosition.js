{
    // 1. Wrap in block scope to allow reloading without redeclaration errors
    let moduleName = "libcocos2dcpp.so";
    let moduleBase = Module.findBaseAddress(moduleName);

    if (moduleBase === null) {
        console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
    } else {
        console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

        // 1. Resolve SoldierHostController updateStep
        const hostSoldierUpdateMethodaddr = Module.findExportByName(
            moduleName,
            "_ZN21SoldierHostController10updateStepEf6cpVectS0_f"
        );

        // 2. Resolve SoldierHostController getSoldierView
        const getSoldierViewAddr = Module.findExportByName(
            moduleName,
            "_ZN21SoldierHostController14getSoldierViewEv"
        );
        const getSoldierView = getSoldierViewAddr ? new NativeFunction(
            getSoldierViewAddr,
            'pointer',
            ['pointer']
        ) : null;

        // 3. Resolve CCNode standard Position & World Space exports
        const getPositionAddr = Module.findExportByName(
            moduleName,
            "_ZN7cocos2d6CCNode11getPositionEPfS1_"
        );
        const getNodePosition = getPositionAddr ? new NativeFunction(
            getPositionAddr,
            'void',
            ['pointer', 'pointer', 'pointer']
        ) : null;

        const convertToWorldSpaceAddr = Module.findExportByName(
            moduleName,
            "_ZN7cocos2d6CCNode19convertToWorldSpaceERKNS_7CCPointE"
        );
        const convertToWorldSpace = convertToWorldSpaceAddr ? new NativeFunction(
            convertToWorldSpaceAddr,
            'pointer',
            ['pointer', 'pointer', 'pointer']
        ) : null;

        // Pre-allocate reusable buffers
        const zeroPoint = Memory.alloc(8);
        zeroPoint.writeFloat(0.0);
        zeroPoint.add(4).writeFloat(0.0);

        const screenOutPoint = Memory.alloc(8);
        const mapXBuf = Memory.alloc(4);
        const mapYBuf = Memory.alloc(4);

        let count = 0;

        if (hostSoldierUpdateMethodaddr !== null && getNodePosition !== null) {
            Interceptor.attach(hostSoldierUpdateMethodaddr, {
                onEnter: function (args) {
                    count++;
                    const hostSoldierPointer = args[0];

                    // Throttle logging to once every 30 updates (~0.5s)
                    if (count % 30 === 0 && !hostSoldierPointer.isNull() && getSoldierView !== null) {
                        try {
                            const soldierViewPtr = getSoldierView(hostSoldierPointer);
                            if (!soldierViewPtr.isNull()) {
                                // 1. In-game Map Coordinates via CCNode::getPosition
                                getNodePosition(soldierViewPtr, mapXBuf, mapYBuf);
                                const mapX = mapXBuf.readFloat();
                                const mapY = mapYBuf.readFloat();

                                // 2. Screen Coordinates via CCNode::convertToWorldSpace
                                let screenX = null, screenY = null;
                                if (convertToWorldSpace !== null) {
                                    convertToWorldSpace(screenOutPoint, soldierViewPtr, zeroPoint);
                                    screenX = screenOutPoint.readFloat();
                                    screenY = screenOutPoint.add(4).readFloat();
                                }

                                const screenStr = screenX !== null ? `(${screenX.toFixed(2)}, ${screenY.toFixed(2)})` : "N/A";
                                console.log(`[Player] Map: (${mapX.toFixed(2)}, ${mapY.toFixed(2)}) | Screen: ${screenStr} | Controller: ${hostSoldierPointer}`);
                            }
                        } catch (e) {}
                    }
                }
            });
            console.log("[*] SoldierHostController position hook successfully applied!");
        } else {
            console.log("[-] Failed to resolve SoldierHostController updateStep or CCNode exports.");
        }
    }
}