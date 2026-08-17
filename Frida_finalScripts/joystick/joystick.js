{
    // Wrap in block scope to allow reloading without redeclaration errors
    const moduleName = "libcocos2dcpp.so";

    // Set to true to override movement and force the player to move left
    const FORCE_LEFT = true; 

    // Target symbol is the main player update loop which runs continuously
    const targetSymbol = "_ZN21SoldierHostController10updateStepEf6cpVectS0_f";

    console.log("[*] Checking for " + moduleName + "...");
    const moduleBase = Module.findBaseAddress(moduleName);

    if (moduleBase === null) {
        console.log("[-] " + moduleName + " is not loaded yet. Please wait until the game loads, then reload the script.");
    } else {
        console.log("[+] " + moduleName + " found at base address: " + moduleBase);

        // Helper to resolve symbol from exports or symbol table
        function resolveSymbol(symbolName) {
            let addr = Module.findExportByName(moduleName, symbolName);
            if (addr !== null) {
                return addr;
            }
            try {
                const mod = Process.getModuleByName(moduleName);
                const sym = mod.enumerateSymbols().find(s => s.name === symbolName);
                if (sym) {
                    return sym.address;
                }
            } catch (e) {
                console.log("[-] Error finding symbol " + symbolName + ": " + e.message);
            }
            return null;
        }

        const targetFuncAddr = resolveSymbol(targetSymbol);

        if (targetFuncAddr === null) {
            console.log("[-] Failed to resolve address for: " + targetSymbol);
        } else {
            console.log("[+] Target address resolved: " + targetFuncAddr);

            // Helper to convert float to raw IEEE-754 32-bit integer bits
            function floatToIntBits(f) {
                const buf = new ArrayBuffer(4);
                const f32 = new Float32Array(buf);
                const i32 = new Int32Array(buf);
                f32[0] = f;
                return i32[0];
            }

            // Helper to convert raw pointer/integer bits to float
            function rawBitsToFloat(ptrVal) {
                try {
                    const intVal = ptrVal.toInt32();
                    const buf = new ArrayBuffer(4);
                    const i32 = new Int32Array(buf);
                    const f32 = new Float32Array(buf);
                    i32[0] = intVal;
                    return f32[0];
                } catch (e) {
                    return NaN;
                }
            }

            let lastController = ptr(0);
            let frameCount = 0;

            Interceptor.attach(targetFuncAddr, {
                onEnter: function (args) {
                    const controller = args[0]; // SoldierHostController 'this' pointer
                    frameCount++;

                    // Determine if the cpVect parameter is passed by pointer or by value
                    let isPointer = false;
                    let origX = 0;
                    let origY = 0;

                    try {
                        // Check if args[2] is a valid memory address and holds a float in realistic range [-1.5, 1.5]
                        const testX = args[2].readFloat();
                        const testY = args[2].add(4).readFloat();
                        if (testX >= -1.5 && testX <= 1.5 && testY >= -1.5 && testY <= 1.5) {
                            isPointer = true;
                            origX = testX;
                            origY = testY;
                        }
                    } catch (e) {
                        // Not a valid pointer or read error
                    }

                    if (!isPointer) {
                        // Assume passed by value (SoftFP) in r2 and r3 (r0 = this, r1 = dt)
                        origX = rawBitsToFloat(args[2]);
                        origY = rawBitsToFloat(args[3]);
                    }

                    if (FORCE_LEFT) {
                        const forceX = -1.0;
                        const forceY = 0.0;

                        if (isPointer) {
                            // Override by writing to the pointer's memory
                            args[2].writeFloat(forceX);
                            args[2].add(4).writeFloat(forceY);
                        } else {
                            // Override registers for SoftFP ABI (r2 and r3)
                            args[2] = ptr(floatToIntBits(forceX));
                            args[3] = ptr(floatToIntBits(forceY));

                            // Override VFP registers for Hard-Float ABI (s1 and s2)
                            try {
                                const ctx = this.context;
                                if ('s1' in ctx) ctx.s1 = forceX;
                                if ('s2' in ctx) ctx.s2 = forceY;
                            } catch (e) {}
                        }
                    }

                    // Print parameters periodically to monitor status
                    if (frameCount % 60 === 0 || !controller.equals(lastController)) {
                        const currentX = FORCE_LEFT ? -1.0 : origX;
                        const currentY = FORCE_LEFT ? 0.0 : origY;

                        console.log(
                            `[SoldierHostController::updateStep] Player: ${controller} | Passing: ${isPointer ? 'By Pointer' : 'By Value'}\n` +
                            `  Original Input: x: ${origX.toFixed(4)}, y: ${origY.toFixed(4)}\n` +
                            `  Modified Input: x: ${currentX.toFixed(4)}, y: ${currentY.toFixed(4)} (FORCE_LEFT: ${FORCE_LEFT})`
                        );
                        lastController = controller;
                    }
                }
            });
            console.log("[*] Hook successfully applied! Force Left: " + FORCE_LEFT);
        }
    }
}