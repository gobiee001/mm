const lib = "libcocos2dcpp.so";

const dictCount = new NativeFunction(
    Module.findExportByName(lib, "_ZN7cocos2d12CCDictionary5countEv"),
    "int",
    ["pointer"]
);

const getObject = new NativeFunction(
    Module.findExportByName(lib, "_ZNK7cocos2d13CCDictElement9getObjectEv"),
    "pointer",
    ["pointer"]
);

function getDictionaryObjects(dictPtr) {
    dictPtr = ptr(dictPtr);

    if (dictPtr.isNull())
        return [];

    const count = dictCount(dictPtr);
    if (count === 0)
        return [];

    const objects = [];

    // First CCDictElement
    let elem = dictPtr.add(0x14).readPointer();

    while (!elem.isNull()) {
        objects.push(getObject(elem));

        // Next CCDictElement
        elem = elem.add(0x110).readPointer();
    }

    return objects;
}