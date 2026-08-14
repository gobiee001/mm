// Memory scanning engine for Frida Agent

let candidates = [];
let cancellationPending = false;
let currentDataType = null;

function setCancelFlag(val) {
    cancellationPending = val;
}

function clearCandidates() {
    candidates = [];
    currentDataType = null;
}

function getCandidateCount() {
    return candidates.length;
}

// Get candidate results (limit to avoid sending huge arrays)
function getCandidatesBatch(start, limit) {
    let end = Math.min(start + limit, candidates.length);
    let result = [];
    
    for (let i = start; i < end; i++) {
        let addr = candidates[i].address;
        let prevVal = candidates[i].prevValue;
        
        let typeHandler = DataTypes[currentDataType];
        let currVal = null;
        try {
            currVal = typeHandler.read(addr, candidates[i].length);
        } catch (e) {
            // Memory might have become unmapped
            currVal = "Unmapped";
        }
        
        // Resolve module offset
        let resolved = resolveAddress(addr.toString());
        
        result.push({
            address: addr.toString(),
            value: currVal !== null ? currVal.toString() : "null",
            prevValue: prevVal !== null ? prevVal.toString() : "null",
            module: resolved.module,
            moduleOffset: resolved.offset
        });
    }
    return result;
}

// Perform first scan
function firstScan(dataType, valueType, valuePattern, options) {
    cancellationPending = false;
    currentDataType = dataType;
    candidates = [];
    
    let typeHandler = DataTypes[dataType];
    if (!typeHandler) {
        throw new Error("Unsupported data type: " + dataType);
    }
    
    let size = typeHandler.size;
    let alignment = (options && options.unaligned) ? 1 : typeHandler.alignment;
    let protection = (options && options.protection) ? options.protection : 'r--';
    
    // Find all matching ranges
    let ranges = getRanges(protection);
    let totalRanges = ranges.length;
    
    send({
        type: 'scan_start',
        totalRanges: totalRanges
    });
    
    if (valueType === 'pattern') {
        // Value search using Memory.scanSync
        for (let i = 0; i < totalRanges; i++) {
            if (cancellationPending) {
                send({ type: 'scan_cancelled', count: candidates.length });
                return candidates.length;
            }
            
            let r = ranges[i];
            try {
                let matches = Memory.scanSync(ptr(r.base), r.size, valuePattern);
                for (let j = 0; j < matches.length; j++) {
                    let addr = matches[j].address;
                    // Check alignment
                    if (addr.toUInt32() % alignment === 0) {
                        let val = typeHandler.read(addr, valuePattern.split(' ').length);
                        candidates.push({
                            address: addr,
                            prevValue: val,
                            length: valuePattern.split(' ').length
                        });
                    }
                }
            } catch (e) {
                // Ignore range scan errors (e.g. unmapped pages during scan)
            }
            
            // Send progress update
            send({
                type: 'scan_progress',
                index: i + 1,
                total: totalRanges,
                count: candidates.length
            });
        }
    } else if (valueType === 'unknown') {
        // Unknown initial value search: sample the memory ranges
        // Only scan writable ranges by default for performance to prevent massive memory usage
        let scanRanges = ranges;
        if (options && options.writableOnly !== false) {
            scanRanges = ranges.filter(function(r) {
                return r.protection.indexOf('w') !== -1;
            });
        }
        totalRanges = scanRanges.length;
        
        for (let i = 0; i < totalRanges; i++) {
            if (cancellationPending) {
                send({ type: 'scan_cancelled', count: candidates.length });
                return candidates.length;
            }
            
            let r = scanRanges[i];
            let start = ptr(r.base);
            let end = start.add(r.size);
            
            // Loop through the range
            for (let addr = start; addr.compare(end.sub(size)) <= 0; addr = addr.add(alignment)) {
                // Periodically check cancellation in inner loop
                if (addr.toUInt32() % (alignment * 10000) === 0) {
                    if (cancellationPending) {
                        send({ type: 'scan_cancelled', count: candidates.length });
                        return candidates.length;
                    }
                }
                
                try {
                    let val = typeHandler.read(addr);
                    candidates.push({
                        address: addr,
                        prevValue: val,
                        length: size
                    });
                } catch (e) {
                    // Skip inaccessible address
                }
            }
            
            send({
                type: 'scan_progress',
                index: i + 1,
                total: totalRanges,
                count: candidates.length
            });
        }
    }
    
    send({
        type: 'scan_complete',
        count: candidates.length
    });
    return candidates.length;
}

// Perform next scan
function nextScan(operation, compareValueStr, options) {
    cancellationPending = false;
    let typeHandler = DataTypes[currentDataType];
    if (!typeHandler) {
        throw new Error("No active scan session. Run first scan first.");
    }
    
    let compareValue = null;
    if (compareValueStr !== null && compareValueStr !== undefined) {
        compareValue = typeHandler.parseVal(compareValueStr);
    }
    
    let epsilon = (options && options.epsilon) ? parseFloat(options.epsilon) : 0.0001;
    let newCandidates = [];
    let total = candidates.length;
    
    send({
        type: 'scan_start',
        totalRanges: 1
    });
    
    // Batch processing size
    let batchSize = 10000;
    
    for (let i = 0; i < total; i++) {
        // Periodically check cancellation
        if (i > 0 && i % batchSize === 0) {
            if (cancellationPending) {
                send({ type: 'scan_cancelled', count: newCandidates.length });
                return newCandidates.length;
            }
            send({
                type: 'scan_progress',
                index: i,
                total: total,
                count: newCandidates.length
            });
        }
        
        let c = candidates[i];
        try {
            let currVal = typeHandler.read(c.address, c.length);
            if (typeHandler.compare(currVal, c.prevValue, operation, compareValue, epsilon)) {
                newCandidates.push({
                    address: c.address,
                    prevValue: currVal,
                    length: c.length
                });
            }
        } catch (e) {
            // Memory became unmapped/inaccessible, filter out
        }
    }
    
    candidates = newCandidates;
    send({
        type: 'scan_complete',
        count: candidates.length
    });
    return candidates.length;
}

// Export to global scope
global.firstScan = firstScan;
global.nextScan = nextScan;
global.clearCandidates = clearCandidates;
global.getCandidateCount = getCandidateCount;
global.getCandidatesBatch = getCandidatesBatch;
global.setCancelFlag = setCancelFlag;
