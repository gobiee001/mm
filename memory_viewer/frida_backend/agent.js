rpc.exports = {
    getmodules: function() {
        try {
            return Process.enumerateModules().map(function(m) {
                return {
                    name: m.name,
                    base: m.base.toString(),
                    size: m.size,
                    path: m.path
                };
            });
        } catch (e) {
            throw new Error("Failed to enumerate modules: " + e.message);
        }
    },
    
    readmemory: function(addressStr, size) {
        try {
            var addr = ptr(addressStr);
            var buf = Memory.readByteArray(addr, size);
            if (buf === null) {
                throw new Error("Memory address is not readable / unmapped");
            }
            return buf;
        } catch (e) {
            throw new Error("Cannot read memory at address " + addressStr + ": " + e.message);
        }
    },
    
    getregioninfo: function(addressStr) {
        try {
            var addr = ptr(addressStr);
            var range = Process.findRangeByAddress(addr);
            if (range === null) {
                return null;
            }
            return {
                base: range.base.toString(),
                size: range.size,
                protection: range.protection
            };
        } catch (e) {
            return null;
        }
    },

    searchmemory: function(moduleName, pattern, isHex) {
        try {
            var module = Process.findModuleByName(moduleName);
            if (!module) {
                throw new Error("Module not found: " + moduleName);
            }
            var query = pattern;
            if (!isHex) {
                // Convert ASCII to space-separated hex bytes
                var hexStr = "";
                for (var i = 0; i < pattern.length; i++) {
                    var h = pattern.charCodeAt(i).toString(16).toUpperCase();
                    hexStr += (h.length === 1 ? "0" + h : h) + " ";
                }
                query = hexStr.trim();
            }
            
            // Scan module's memory region
            var results = Memory.scanSync(module.base, module.size, query);
            return results.map(function(r) {
                return r.address.toString();
            });
        } catch (e) {
            throw new Error(e.message);
        }
    }
};
