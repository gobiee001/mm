// Silence all audio.
//
// Ported from Frida_finalScripts/core/blockAudio.js with the argument
// signatures corrected. The original declared [] for all three NativeCallbacks;
// that happens to work because the stubs ignore their arguments, but declaring
// the real signatures keeps libffi's frame layout honest.
//
//   SimpleAudioEngine::playEffect(const char*, bool, float, float, float)  -> uint
//   SimpleAudioEngine::playEffect(const char*, int, bool, float, float, float) -> uint
//   SimpleAudioEngine::playBackgroundMusic(const char*, bool)              -> void
//
// Note playEffect returns an effect ID; returning 0 is the "no handle" answer.

import { resolve } from "../core/symbols.js";
import { logInfo } from "../core/config.js";

const TARGETS = [
    {
        symbol: "_ZN13CocosDenshion17SimpleAudioEngine10playEffectEPKcbfff",
        ret: "uint",
        // this, path, loop, pitch, pan, gain
        args: ["pointer", "pointer", "bool", "float", "float", "float"],
        stub: function () { return 0; }
    },
    {
        symbol: "_ZN13CocosDenshion17SimpleAudioEngine10playEffectEPKcibfff",
        ret: "uint",
        // this, path, nId, loop, pitch, pan, gain
        args: ["pointer", "pointer", "int", "bool", "float", "float", "float"],
        stub: function () { return 0; }
    },
    {
        symbol: "_ZN13CocosDenshion17SimpleAudioEngine19playBackgroundMusicEPKcb",
        ret: "void",
        // this, path, loop
        args: ["pointer", "pointer", "bool"],
        stub: function () { }
    }
];

export const blockAudio = {
    name: "block_audio",

    enabled: function (cfg) {
        return cfg.env.block_audio.enabled;
    },

    install: function (ctx) {
        // Keep the callbacks alive for the process lifetime -- if they were
        // collected the replaced functions would jump into freed memory.
        this._callbacks = [];

        let replaced = 0;
        const missing = [];

        for (let i = 0; i < TARGETS.length; i++) {
            const t = TARGETS[i];
            const addr = resolve(t.symbol);
            if (addr === null) {
                missing.push(t.symbol);
                continue;
            }
            try {
                const cb = new NativeCallback(t.stub, t.ret, t.args);
                this._callbacks.push(cb);
                Interceptor.replace(addr, cb);
                replaced++;
            } catch (e) {
                missing.push(t.symbol + " (" + e.message + ")");
            }
        }

        if (replaced === 0) {
            return { ok: false, detail: "no audio symbols replaced" };
        }

        logInfo("[+] env block_audio: replaced " + replaced + "/" + TARGETS.length
            + (missing.length ? " (missing: " + missing.length + ")" : ""));
        return { ok: true, detail: replaced + "/" + TARGETS.length + " stubbed" };
    }
};
