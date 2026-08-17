// Symbol resolution for libcocos2dcpp.so.
//
// Ported from Frida_finalScripts/weapon.js:27-42 -- export lookup first, then a
// full symbol-table scan, because some mangled names in this binary are present
// as symbols but not as dynamic exports.

const MODULE_NAME = "libcocos2dcpp.so";

let _symbolCache = null;

function moduleBase() {
    return Module.findBaseAddress(MODULE_NAME);
}

// Lazily build a name -> address map from the symbol table. Doing this once is
// far cheaper than calling enumerateSymbols() per miss (there are ~39k symbols).
function symbolTable() {
    if (_symbolCache !== null) return _symbolCache;
    _symbolCache = {};
    try {
        const mod = Process.getModuleByName(MODULE_NAME);
        const syms = mod.enumerateSymbols();
        for (let i = 0; i < syms.length; i++) {
            const s = syms[i];
            if (s.address !== null && !s.address.isNull()) {
                _symbolCache[s.name] = s.address;
            }
        }
    } catch (e) {
        console.log("[-] symbols: enumerateSymbols failed: " + e.message);
    }
    return _symbolCache;
}

export function resolve(name, lib) {
    const target = lib || MODULE_NAME;
    let addr = Module.findExportByName(target, name);
    if (addr !== null && !addr.isNull()) return addr;

    // Symbol-table fallback only applies to the game lib we indexed.
    if (target === MODULE_NAME) {
        const found = symbolTable()[name];
        if (found !== undefined) return found;
    }
    return null;
}

// Resolve + wrap in one step. Returns null (never throws) when the symbol is
// absent, so every call site can degrade gracefully instead of aborting load.
export function nf(name, retType, argTypes, lib) {
    const addr = resolve(name, lib);
    if (addr === null) return null;
    try {
        return new NativeFunction(addr, retType, argTypes);
    } catch (e) {
        console.log("[-] symbols: NativeFunction failed for " + name + ": " + e.message);
        return null;
    }
}

// Resolve a batch of { key: [name, ret, args] } specs. Returns
// { fns: {key: NativeFunction|null}, missing: [key...] } so callers can report
// one consolidated line instead of a wall of per-symbol logs.
export function nfBatch(spec, lib) {
    const fns = {};
    const missing = [];
    const keys = Object.keys(spec);
    for (let i = 0; i < keys.length; i++) {
        const k = keys[i];
        const s = spec[k];
        const fn = nf(s[0], s[1], s[2], lib);
        fns[k] = fn;
        if (fn === null) missing.push(k);
    }
    return { fns: fns, missing: missing };
}

export { MODULE_NAME, moduleBase };
