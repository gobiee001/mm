// Memory range manager for Frida Agent

function getRanges(protectionFilter) {
    try {
        let ranges = Process.enumerateRanges({
            protection: protectionFilter || 'r--',
            coalesce: true
        });
        
        return ranges.map(function(r) {
            return {
                base: r.base.toString(),
                size: r.size,
                protection: r.protection
            };
        });
    } catch (e) {
        throw new Error("Failed to enumerate memory ranges: " + e.message);
    }
}

// Check if a range is readable/writable
function isAccessible(addr, size, protectionRequired) {
    try {
        let range = Process.findRangeByAddress(ptr(addr));
        if (!range) return false;
        
        let prot = range.protection;
        for (let i = 0; i < protectionRequired.length; i++) {
            if (prot.indexOf(protectionRequired[i]) === -1) {
                return false;
            }
        }
        return true;
    } catch (e) {
        return false;
    }
}

// Export to global scope
global.getRanges = getRanges;
global.isAccessible = isAccessible;
