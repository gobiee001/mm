import { getDictionaryObjects } from "Frida_finalScripts/core/IterOverCCDic.js";

const addr = Module.findExportByName(
    "libcocos2dcpp.so",
    "activeEnemies"
);

console.log(addr);