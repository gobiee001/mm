'use strict';

const moduleName = "libcocos2dcpp.so";
const moduleBase = Module.findBaseAddress(moduleName);

if (moduleBase === null) {
    console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
} else {
    console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

    // 1. Dynamic VSYNC unlocker
    const eglSwapIntervalAddr = Module.findExportByName("libEGL.so", "eglSwapInterval");
    const eglSwapBuffersAddr = Module.findExportByName("libEGL.so", "eglSwapBuffers");

    if (eglSwapBuffersAddr && eglSwapIntervalAddr) {
        const eglSwapInterval = new NativeFunction(eglSwapIntervalAddr, 'int', ['pointer', 'int']);
        let applied = false;

        Interceptor.attach(eglSwapBuffersAddr, {
            onEnter(args) {
                if (!applied) {
                    const dpy = args[0];
                    console.log("[*] eglSwapBuffers intercepted. Applying eglSwapInterval(dpy, 0)...");
                    const res = eglSwapInterval(dpy, 0);
                    console.log("[+] eglSwapInterval(dpy, 0) returned: " + res);
                    applied = true;
                }
            }
        });
        console.log("[+] Dynamic VSYNC unlocker initialized.");
    } else {
        console.log("[-] EGL functions not found.");
    }

    // 2. FPS Monitor
    const mainLoop = Module.findExportByName(
        moduleName,
        "_ZN7cocos2d21CCDisplayLinkDirector8mainLoopEv"
    );

    if (mainLoop === null) {
        console.log("[-] CCDisplayLinkDirector::mainLoop not found");
    } else {
        console.log("[+] CCDisplayLinkDirector::mainLoop @ " + mainLoop);

        let frameCount = 0;
        let lastPrintTime = Date.now();

        Interceptor.attach(mainLoop, {
            onEnter(args) {
                frameCount++;
                const now = Date.now();
                const delta = now - lastPrintTime;

                if (delta >= 1000) {
                    const fps = (frameCount * 1000.0) / delta;
                    console.log("FPS: " + fps.toFixed(2) + " (measured over " + (delta / 1000.0).toFixed(2) + "s)");
                    frameCount = 0;
                    lastPrintTime = now;
                }
            }
        });
        console.log("[+] FPS monitor installed (printing every second)");
    }
}
