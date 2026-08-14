// Memory operations and Module Resolver for Frida Agent

function readMemoryRaw(addressStr, size) {
    try {
        let addr = ptr(addressStr);
        let buf = Memory.readByteArray(addr, size);
        return buf;
    } catch (e) {
        return null;
    }
}

function writeMemoryRaw(addressStr, bytesArray) {
    try {
        let addr = ptr(addressStr);
        // Ensure memory is writable first
        let range = Process.findRangeByAddress(addr);
        if (range && range.protection.indexOf('w') === -1) {
            Memory.protect(range.base, range.size, 'rwx');
        }
        Memory.writeByteArray(addr, bytesArray);
        return true;
    } catch (e) {
        throw new Error("Failed to write memory at " + addressStr + ": " + e.message);
    }
}

// Find modules loaded in the process space
let cachedModules = null;
function getModulesList() {
    if (cachedModules === null) {
        try {
            cachedModules = Process.enumerateModules().map(function(m) {
                return {
                    name: m.name,
                    base: m.base,
                    size: m.size,
                    path: m.path
                };
            });
        } catch (e) {
            cachedModules = [];
        }
    }
    return cachedModules;
}

// Clear module cache (useful if modules are loaded/unloaded)
function clearModulesCache() {
    cachedModules = null;
}

// Resolve address to module and offset using native pointer arithmetic
function resolveAddress(addressStr) {
    let addr = ptr(addressStr);
    let modules = getModulesList();
    
    for (let i = 0; i < modules.length; i++) {
        let m = modules[i];
        let base = m.base;
        let limit = base.add(m.size);
        if (addr.compare(base) >= 0 && addr.compare(limit) < 0) {
            let offset = addr.sub(base);
            return {
                module: m.name,
                offset: "0x" + offset.toString(16),
                path: m.path
            };
        }
    }
    return {
        module: "anonymous",
        offset: "-",
        path: ""
    };
}

// Export to global scope
global.readMemoryRaw = readMemoryRaw;
global.writeMemoryRaw = writeMemoryRaw;
global.resolveAddress = resolveAddress;
global.getModulesList = getModulesList;
global.clearModulesCache = clearModulesCache;

function searchMemoryLegacy(moduleName, pattern, isHex) {
    try {
        let module = Process.findModuleByName(moduleName);
        if (!module) {
            throw new Error("Module not found: " + moduleName);
        }
        let query = pattern;
        if (!isHex) {
            let hexStr = "";
            for (let i = 0; i < pattern.length; i++) {
                let h = pattern.charCodeAt(i).toString(16).toUpperCase();
                hexStr += (h.length === 1 ? "0" + h : h) + " ";
            }
            query = hexStr.trim();
        }
        
        let results = Memory.scanSync(module.base, module.size, query);
        return results.map(function(r) {
            return r.address.toString();
        });
    } catch (e) {
        throw new Error(e.message);
    }
}

global.searchMemoryLegacy = searchMemoryLegacy;

