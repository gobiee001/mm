{
    // 1. Wrap in block scope to allow reloading without redeclaration errors
    let moduleName = "libcocos2dcpp.so";
    let moduleBase = Module.findBaseAddress(moduleName);
    // const module = Process.getModuleByName("libcocos2dcpp.so");
    if (moduleBase === null) {
        console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
    } else {
        console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);


        const enemyManagerUpdateMethodaddr = Module.findExportByName(
            "libcocos2dcpp.so",
            "_ZN12EnemyManager10updateStepEf"
        );

        const getCountDic = Module.findExportByName(
            "libcocos2dcpp.so",
            "_ZN7cocos2d12CCDictionary5countEv"
        );

        const getAllKeysArray = Module.findExportByName(
            "libcocos2dcpp.so",
            "_ZN7cocos2d12CCDictionary7allKeysEv"
        );


        // const getEnemyHawkPosition = Module.findExportByName(
        //     "libcocos2dcpp.so",
        //     "_ZN9HawkDrone15getBodyPositionEv"
        // );

        // const getEnemyHawkVelocity = Module.findExportByName(
        //     "libcocos2dcpp.so",
        //     "_ZN9HawkDrone15getBodyVelocityEv"
        // );







        //hawk


        //humonide

        // worm

        const getBodyPosAddr = Module.findExportByName(
            "libcocos2dcpp.so",
            "_ZN5Enemy15getBodyPositionEv"
        );





        const getDicCountMethod = new NativeFunction(getCountDic, 'uint32', ['pointer']);

        const getBodyPos = new NativeFunction(getBodyPosAddr, 'pointer', ['pointer', 'pointer']);
        const resultVector = Memory.alloc(16);



        let enemyManager = 0
        let count = 0
        Interceptor.attach(enemyManagerUpdateMethodaddr, {
            onEnter: function (args) {
                count = count + 1
                enemyManager = args[0]

                var hawkDicnary = enemyManager.add(0x14).readPointer();

                console.log("hawk count" + getDicCountMethod(hawkDicnary))
                for (let i = 0; i < getDicCountMethod(hawkDicnary); i++) {




                }

                // if (count % 20 == 0) {
                //     // listener.detach();
                //     const hp = getBodyPos(resultVector, hostSoldierPointer);
                //     console.log(" SoldierHostController: " + args[0] + "  " + hostSoldierPointer)

                //     var xAddress = hostSoldierPointer.add(0x2c);
                //     var xValue = xAddress.readFloat();

                //     var yAddress = hostSoldierPointer.add(0x28);
                //     var yValue = yAddress.readFloat();


                //     console.log(xValue)
                //     console.log(yValue)

                // }
            }
        });






        console.log("[*] Hooks successfully applied!");
    }

    function iterateCCDictionary(dictPtr) {
        if (dictPtr.isNull()) {
            console.log("Dictionary is null");
            return;
        }

        // 1. Get the head of the hash table (m_pElements) at offset 0x14
        // This matches: *(CCDictElement **)(peerSoldiers + 0x14)
        var elementsHead = dictPtr.add(0x14).readPointer();

        if (elementsHead.isNull()) {
            console.log("Dictionary is empty");
            return;
        }

        console.log("Starting iteration...");
        var currentElement = elementsHead;
        var count = 0;

        // 2. Traverse the linked list
        // The 'next' pointer in uthash (hh.next) is typically at offset 0x110 
        // relative to the start of the CCDictElement struct in this specific build.
        // Your decompiler showed: local_5c = *(CCDictElement **)(local_5c + 0x110);
        var nextOffset = 0x110;

        while (!currentElement.isNull()) {
            try {
                // 3. Get the Object stored in this element
                // CCDictElement::getObject() usually returns the object at offset 0x8 or 0xC 
                // depending on architecture, but calling the native function is safer.
                // However, we can often read it directly if we know the layout.
                // Standard layout: [hh (hash handle)] [intKey/strKey] [CCObject* m_pObject]
                // In your decompiler, it calls cocos2d::CCDictElement::getObject(local_60).
                // Let's assume standard layout where object pointer is at offset 0x8 (ARM) or 0xC (ARM64 alignment).
                // If unsure, hook the getObject method once to see what it returns relative to 'this'.

                // Attempting direct read (common layout for ARM32):
                // Offset 0x0-0x108+: hash handle (hh)
                // Offset after hh: Key data
                // Object pointer is often at a fixed offset. 
                // Let's use the NativeFunction for safety if you have the address.
                // If not, typical offset for m_pObject in CCDictElement is often 0x8 or 0xC after the key.

                // Safer approach: Call the virtual function if you have the address.
                // If not, let's try reading the pointer directly. 
                // In many Cocos2d-x ARM builds, m_pObject is at offset 0x8 from the element start 
                // IF the hash handle is small, BUT uthash handles are large.

                // Let's rely on the decompiler logic: it calls getObject().
                // If you have the address of CCDictElement::getObject, use it:
                // var obj = getElementObject(currentElement);

                // Alternative: Direct memory access (Trial and error may be needed for exact offset)
                // Based on your decompiler, the element structure is complex.
                // Let's assume you can call the method. If not, here is a generic placeholder:
                var objectPtr = currentElement.add(0x104).readPointer(); // Common offset, verify with debugger

                console.log(`[Element ${count}] Address: ${currentElement} | Object: ${objectPtr}`);

                

                // If you need the key:
                // For int keys: currentElement.add(0x4).readS32()
                // For string keys: currentElement.add(0x4).readPointer().readUtf8String()

            } catch (e) {
                console.log(`Error reading element ${count}: ${e.message}`);
                break;
            }

            // 4. Move to next element: local_5c = *(CCDictElement **)(local_5c + 0x110)
            var nextPtrAddr = currentElement.add(nextOffset);
            currentElement = nextPtrAddr.readPointer();

            count++;
            if (count > 1000) {
                console.log("Breaking infinite loop protection");
                break;
            }
        }
        console.log(`Iteration finished. Total elements: ${count}`);
    }

    // Usage inside your hook:
    // var peerSoldiersPtr = ...; // Get this from EnemyManager or global
    // iterateCCDictionary(peerSoldiersPtr);   
}