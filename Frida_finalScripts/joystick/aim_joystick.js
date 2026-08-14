{
    // Wrap in block scope to allow reloading without redeclaration errors
    const moduleName = "libcocos2dcpp.so";

    // Set to true to override aiming and force aiming left (180.0 degrees)
    const FORCE_AIM = true; 
    const FORCED_ANGLE = 180.0; // 180 degrees points directly left

    const targetSymbol = "_ZN6Joypad12getFireAngleEv";

    console.log("[*] Checking for " + moduleName + "...");
    const moduleBase = Module.findBaseAddress(moduleName);

    if (moduleBase === null) {
        console.log("[-] " + moduleName + " is not loaded yet.");
    } else {
        console.log("[+] " + moduleName + " found at base address: " + moduleBase);

        // Helper to resolve symbol
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
            } catch (e) {}
            return null;
        }

        const getFireAngleAddr = resolveSymbol(targetSymbol);
        const padTypeAddr = resolveSymbol("_ZN6Joypad7padTypeEv");

        const getPadType = padTypeAddr ? new NativeFunction(padTypeAddr, 'int', ['pointer']) : null;

        // Helper to convert float to raw IEEE-754 32-bit integer bits
        function floatToIntBits(f) {
            const buf = new ArrayBuffer(4);
            const f32 = new Float32Array(buf);
            const i32 = new Int32Array(buf);
            f32[0] = f;
            return i32[0];
        }

        // Helper to convert raw bits to float
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

        let frameCount = 0;
        let lastJoypad = ptr(0);

        if (getFireAngleAddr) {
            console.log("[+] Hooking getFireAngle at: " + getFireAngleAddr);
            Interceptor.attach(getFireAngleAddr, {
                onEnter: function (args) {
                    this.joypad = args[0];
                },
                onLeave: function (retval) {
                    const joypad = this.joypad;
                    if (joypad.isNull()) return;

                    let padType = -1;
                    if (getPadType) {
                        try {
                            padType = getPadType(joypad);
                        } catch (e) {}
                    }

                    const originalAngle = rawBitsToFloat(retval);

                    if (FORCE_AIM && padType === 0) {
                        retval.replace(ptr(floatToIntBits(FORCED_ANGLE)));
                    }

                    frameCount++;
                    if (frameCount % 10 === 0 || !joypad.equals(lastJoypad)) {
                        const currentAngle = (FORCE_AIM && padType === 0) ? FORCED_ANGLE : originalAngle;
                        console.log(
                            `[getFireAngle] Joypad: ${joypad} | PadType: ${padType}\n` +
                            `  Original Angle: ${originalAngle.toFixed(4)}°\n` +
                            `  Modified Angle: ${currentAngle.toFixed(4)}° (FORCE_AIM: ${FORCE_AIM})`
                        );
                        lastJoypad = joypad;
                    }
                }
            });
            console.log("[*] Hook applied successfully to " + targetSymbol + " | Force Aim Left: " + FORCE_AIM);
        } else {
            console.log("[-] Failed to resolve address for: " + targetSymbol);
        }
    }
}
