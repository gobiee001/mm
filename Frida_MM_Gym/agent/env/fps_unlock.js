// VSYNC / frame-rate cap removal.
//
// Split out of Frida_finalScripts/core/unified_fps_unlocker.js (and its
// byte-identical twin core/fpsMonitor.js), which bundled VSYNC unlocking and
// FPS counting into one script so you could not enable either alone. This file
// is the unlock half; env/fps_monitor.js is the measurement half.
//
// Pure native: hooks libEGL.so directly and issues eglSwapInterval(dpy, 0) once,
// on the first eglSwapBuffers. No Java/JNI, which matters on 32-bit ARM where
// JNI calls from a Frida hook can overflow the ART stack.

import { resolve } from "../core/symbols.js";
import { logInfo } from "../core/config.js";

export const fpsUnlock = {
    name: "fps_unlock",

    enabled: function (cfg) {
        return cfg.env.fps_unlock.enabled;
    },

    install: function (ctx) {
        const swapIntervalAddr = resolve("eglSwapInterval", "libEGL.so");
        const swapBuffersAddr = resolve("eglSwapBuffers", "libEGL.so");

        if (swapIntervalAddr === null || swapBuffersAddr === null) {
            return { ok: false, detail: "libEGL.so eglSwapInterval/eglSwapBuffers unresolved" };
        }

        const eglSwapInterval = new NativeFunction(swapIntervalAddr, "int", ["pointer", "int"]);
        let applied = false;

        Interceptor.attach(swapBuffersAddr, {
            onEnter: function (args) {
                if (applied) return;
                applied = true;
                try {
                    const res = eglSwapInterval(args[0], 0);
                    logInfo("[+] env fps_unlock: eglSwapInterval(dpy, 0) returned " + res);
                } catch (e) {
                    logInfo("[-] env fps_unlock: eglSwapInterval failed: " + e.message);
                }
            }
        });

        logInfo("[+] env fps_unlock: armed (applies on first eglSwapBuffers)");
        return { ok: true, detail: "vsync off on first swap" };
    }
};
