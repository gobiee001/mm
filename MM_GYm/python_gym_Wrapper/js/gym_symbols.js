/**
 * Mini Militia Gym - Symbol Resolution Layer
 *
 * Resolves mangled symbols from libcocos2dcpp.so exactly once at startup and
 * caches them in a Map. The legacy scripts called enumerateSymbols() once per
 * symbol (~40 full symbol-table walks); this walks it a single time.
 *
 * Every resolution is recorded so the Python side can see precisely which
 * symbols were found and which were missing, instead of silently degrading.
 */

'use strict';

export const MODULE_NAME = "libcocos2dcpp.so";

let _moduleObj = null;
let _symbolMap = null;
const _resolved = {};   // name -> "export" | "symtab" | null

export function initSymbols() {
    try {
        _moduleObj = Process.getModuleByName(MODULE_NAME);
    } catch (e) {
        _moduleObj = null;
    }
}

function buildSymbolMap() {
    _symbolMap = new Map();
    if (_moduleObj === null) return;
    try {
        const syms = _moduleObj.enumerateSymbols();
        for (let i = 0; i < syms.length; i++) {
            const s = syms[i];
            if (!_symbolMap.has(s.name)) _symbolMap.set(s.name, s.address);
        }
    } catch (e) {
        console.log("[gym] enumerateSymbols failed: " + e.message);
    }
}

/** Resolve a mangled symbol to an address, or null. Records the outcome. */
export function resolveExport(name) {
    let addr = null;
    try {
        addr = Module.findExportByName(MODULE_NAME, name);
    } catch (e) {
        addr = null;
    }
    if (addr !== null) {
        _resolved[name] = "export";
        return addr;
    }

    if (_symbolMap === null) buildSymbolMap();
    if (_symbolMap.has(name)) {
        _resolved[name] = "symtab";
        return _symbolMap.get(name);
    }

    _resolved[name] = null;
    return null;
}

/** Resolve the first symbol in `names` that exists. Used for build variants. */
export function resolveAny(names) {
    for (let i = 0; i < names.length; i++) {
        const a = resolveExport(names[i]);
        if (a !== null) return { name: names[i], address: a };
    }
    return { name: null, address: null };
}

/** Build a NativeFunction, or null when the symbol is missing. */
export function nativeFn(name, retType, argTypes) {
    const addr = resolveExport(name);
    if (addr === null) return null;
    try {
        return new NativeFunction(addr, retType, argTypes);
    } catch (e) {
        console.log("[gym] NativeFunction failed for " + name + ": " + e.message);
        return null;
    }
}

/** Attach an interceptor, returning true on success. Never throws. */
export function attach(name, callbacks) {
    const addr = resolveExport(name);
    if (addr === null) return false;
    try {
        Interceptor.attach(addr, callbacks);
        return true;
    } catch (e) {
        console.log("[gym] attach failed for " + name + ": " + e.message);
        return false;
    }
}

/** { found: [...], missing: [...] } - surfaced to Python for diagnostics. */
export function getSymbolReport() {
    const found = [];
    const missing = [];
    for (const k in _resolved) {
        if (_resolved[k] === null) missing.push(k);
        else found.push(k);
    }
    return { found: found, missing: missing };
}
