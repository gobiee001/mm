// cocos2d::CCDictionary iteration.
//
// Ported verbatim in behaviour from Frida_finalScripts/core/IterOverCCDic.js,
// which is verified working against this build.
//
// Layout notes (hardcoded offsets, valid for this APK build):
//   CCDictionary + 0x14  -> first CCDictElement*
//   CCDictElement + 0x110 -> next CCDictElement* (uthash hh.next)

import { nf } from "./symbols.js";

const dictCount = nf("_ZN7cocos2d12CCDictionary5countEv", "int", ["pointer"]);
const elemObject = nf("_ZNK7cocos2d13CCDictElement9getObjectEv", "pointer", ["pointer"]);

const DICT_FIRST_ELEM = 0x14;
const ELEM_NEXT = 0x110;

// Guard against a corrupt/mutating hash chain walking forever.
const MAX_ELEMS = 4096;

export function isReady() {
    return dictCount !== null && elemObject !== null;
}

export function count(dictPtr) {
    if (dictCount === null || dictPtr === null || dictPtr.isNull()) return 0;
    try {
        return dictCount(dictPtr);
    } catch (e) {
        return 0;
    }
}

// Collect every object pointer held by the dictionary.
//
// MUST be called on the game thread from inside a hook. The dictionary is
// mutated when entities spawn/die, so walking it from Frida's JS thread at an
// arbitrary moment is a use-after-free.
export function getDictionaryObjects(dictPtr) {
    if (elemObject === null || dictPtr === null) return [];
    dictPtr = ptr(dictPtr);
    if (dictPtr.isNull()) return [];

    const objects = [];
    try {
        if (count(dictPtr) === 0) return objects;

        let elem = dictPtr.add(DICT_FIRST_ELEM).readPointer();
        let guard = 0;

        while (!elem.isNull() && guard++ < MAX_ELEMS) {
            try {
                const obj = elemObject(elem);
                if (obj !== null && !obj.isNull()) objects.push(obj);
            } catch (e) {
                break;
            }
            elem = elem.add(ELEM_NEXT).readPointer();
        }
    } catch (e) {
        // Return whatever we gathered; a partial sweep beats killing the frame.
    }
    return objects;
}
