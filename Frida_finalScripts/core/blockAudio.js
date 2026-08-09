'use strict';

const libName = "libcocos2dcpp.so";

const symbols = [
    "_ZN13CocosDenshion17SimpleAudioEngine10playEffectEPKcbfff",
    "_ZN13CocosDenshion17SimpleAudioEngine10playEffectEPKcibfff",
    "_ZN13CocosDenshion17SimpleAudioEngine19playBackgroundMusicEPKcb"
];

for (const name of symbols) {
    const addr = Module.findExportByName(libName, name);

    if (addr === null) {
        console.log("[!] Not found:", name);
        continue;
    }

    console.log("[+] Hooking", name, "at", addr);

    Interceptor.replace(
        addr,
        new NativeCallback(function () {
            // playEffect returns an effect ID (unsigned int)
            if (name.indexOf("playEffect") !== -1)
                return 0;

            // playBackgroundMusic is void
        }, name.indexOf("playEffect") !== -1 ? "uint" : "void", [])
    );
}

console.log("[+] Audio disabled.");