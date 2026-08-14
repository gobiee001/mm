// Main entry point for the Frida Memory Scanner Agent

rpc.exports = {
    getmodules: function() {
        try {
            clearModulesCache(); // Reset cached modules to reflect dynamic loading
            return getModulesList().map(function(m) {
                return {
                    name: m.name,
                    base: m.base.toString(),
                    size: m.size,
                    path: m.path
                };
            });
        } catch (e) {
            throw new Error("Failed to get modules: " + e.message);
        }
    },
    
    getranges: function(protection) {
        try {
            return getRanges(protection);
        } catch (e) {
            throw new Error("Failed to get ranges: " + e.message);
        }
    },
    
    firstscan: function(dataType, valueType, valuePattern, options) {
        try {
            return firstScan(dataType, valueType, valuePattern, options);
        } catch (e) {
            throw new Error("First scan failed: " + e.message);
        }
    },
    
    nextscan: function(operation, compareValueStr, options) {
        try {
            return nextScan(operation, compareValueStr, options);
        } catch (e) {
            throw new Error("Next scan failed: " + e.message);
        }
    },
    
    getcandidatecount: function() {
        try {
            return getCandidateCount();
        } catch (e) {
            throw new Error("Failed to get candidate count: " + e.message);
        }
    },
    
    getcandidatesbatch: function(start, limit) {
        try {
            return getCandidatesBatch(start, limit);
        } catch (e) {
            throw new Error("Failed to get candidate batch: " + e.message);
        }
    },
    
    clearcandidates: function() {
        try {
            clearCandidates();
            return true;
        } catch (e) {
            throw new Error("Failed to clear candidates: " + e.message);
        }
    },
    
    setcancelflag: function(val) {
        try {
            setCancelFlag(val);
            return true;
        } catch (e) {
            throw new Error("Failed to set cancel flag: " + e.message);
        }
    },
    
    readmemory: function(addressStr, size) {
        try {
            let buf = readMemoryRaw(addressStr, size);
            if (buf === null) {
                throw new Error("Memory address is not readable / unmapped");
            }
            return buf;
        } catch (e) {
            throw new Error("Cannot read memory at address " + addressStr + ": " + e.message);
        }
    },
    
    writememory: function(addressStr, bytesArray) {
        try {
            return writeMemoryRaw(addressStr, bytesArray);
        } catch (e) {
            throw new Error("Cannot write memory at address " + addressStr + ": " + e.message);
        }
    },
    
    getregioninfo: function(addressStr) {
        try {
            let range = Process.findRangeByAddress(ptr(addressStr));
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
    
    resolveaddress: function(addressStr) {
        try {
            return resolveAddress(addressStr);
        } catch (e) {
            return {
                module: "error",
                offset: "-",
                path: ""
            };
        }
    },
    
    searchmemory: function(moduleName, pattern, isHex) {
        try {
            return searchMemoryLegacy(moduleName, pattern, isHex);
        } catch (e) {
            throw new Error("Search failed: " + e.message);
        }
    }
};
