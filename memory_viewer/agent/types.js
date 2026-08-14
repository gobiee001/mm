// Types module for Frida Memory Scanner

function compareNumbers(curr, prev, op, val) {
    switch (op) {
        case 'exact': return curr === val;
        case 'not_equal': return curr !== val;
        case 'greater': return curr > val;
        case 'less': return curr < val;
        case 'greater_equal': return curr >= val;
        case 'less_equal': return curr <= val;
        case 'changed': return curr !== prev;
        case 'unchanged': return curr === prev;
        case 'increased': return curr > prev;
        case 'decreased': return curr < prev;
        case 'increased_by': return curr === prev + val;
        case 'decreased_by': return curr === prev - val;
        default: return false;
    }
}

function compareFloats(curr, prev, op, val, epsilon) {
    if (epsilon === undefined || epsilon === null) {
        epsilon = 0.0001; // default epsilon
    }
    const absDiff = Math.abs(curr - val);
    switch (op) {
        case 'exact': return absDiff <= epsilon;
        case 'not_equal': return absDiff > epsilon;
        case 'greater': return curr > val + epsilon;
        case 'less': return curr < val - epsilon;
        case 'greater_equal': return curr >= val - epsilon;
        case 'less_equal': return curr <= val + epsilon;
        case 'changed': return Math.abs(curr - prev) > epsilon;
        case 'unchanged': return Math.abs(curr - prev) <= epsilon;
        case 'increased': return curr > prev + epsilon;
        case 'decreased': return curr < prev - epsilon;
        case 'increased_by': return Math.abs((curr - prev) - val) <= epsilon;
        case 'decreased_by': return Math.abs((prev - curr) - val) <= epsilon;
        default: return false;
    }
}

function compareBigInts(curr, prev, op, val) {
    switch (op) {
        case 'exact': return curr === val;
        case 'not_equal': return curr !== val;
        case 'greater': return curr > val;
        case 'less': return curr < val;
        case 'greater_equal': return curr >= val;
        case 'less_equal': return curr <= val;
        case 'changed': return curr !== prev;
        case 'unchanged': return curr === prev;
        case 'increased': return curr > prev;
        case 'decreased': return curr < prev;
        case 'increased_by': return curr === prev + val;
        case 'decreased_by': return curr === prev - val;
        default: return false;
    }
}

const DataTypes = {
    int8: {
        size: 1,
        alignment: 1,
        read: function(addr) { return addr.readS8(); },
        write: function(addr, val) { addr.writeS8(parseInt(val, 10)); },
        parseVal: function(v) { return parseInt(v, 10); },
        compare: function(curr, prev, op, val) { return compareNumbers(curr, prev, op, val); }
    },
    uint8: {
        size: 1,
        alignment: 1,
        read: function(addr) { return addr.readU8(); },
        write: function(addr, val) { addr.writeU8(parseInt(val, 10)); },
        parseVal: function(v) { return parseInt(v, 10); },
        compare: function(curr, prev, op, val) { return compareNumbers(curr, prev, op, val); }
    },
    int16: {
        size: 2,
        alignment: 2,
        read: function(addr) { return addr.readS16(); },
        write: function(addr, val) { addr.writeS16(parseInt(val, 10)); },
        parseVal: function(v) { return parseInt(v, 10); },
        compare: function(curr, prev, op, val) { return compareNumbers(curr, prev, op, val); }
    },
    uint16: {
        size: 2,
        alignment: 2,
        read: function(addr) { return addr.readU16(); },
        write: function(addr, val) { addr.writeU16(parseInt(val, 10)); },
        parseVal: function(v) { return parseInt(v, 10); },
        compare: function(curr, prev, op, val) { return compareNumbers(curr, prev, op, val); }
    },
    int32: {
        size: 4,
        alignment: 4,
        read: function(addr) { return addr.readS32(); },
        write: function(addr, val) { addr.writeS32(parseInt(val, 10)); },
        parseVal: function(v) { return parseInt(v, 10); },
        compare: function(curr, prev, op, val) { return compareNumbers(curr, prev, op, val); }
    },
    uint32: {
        size: 4,
        alignment: 4,
        read: function(addr) { return addr.readU32(); },
        write: function(addr, val) { addr.writeU32(parseInt(val, 10)); },
        parseVal: function(v) { return parseInt(v, 10); },
        compare: function(curr, prev, op, val) { return compareNumbers(curr, prev, op, val); }
    },
    int64: {
        size: 8,
        alignment: 8,
        read: function(addr) { return BigInt(addr.readS64().toString()); },
        write: function(addr, val) { addr.writeS64(int64(val.toString())); },
        parseVal: function(v) { return BigInt(v.toString()); },
        compare: function(curr, prev, op, val) { return compareBigInts(curr, prev, op, val); }
    },
    uint64: {
        size: 8,
        alignment: 8,
        read: function(addr) { return BigInt(addr.readU64().toString()); },
        write: function(addr, val) { addr.writeU64(uint64(val.toString())); },
        parseVal: function(v) { return BigInt(v.toString()); },
        compare: function(curr, prev, op, val) { return compareBigInts(curr, prev, op, val); }
    },
    float: {
        size: 4,
        alignment: 4,
        read: function(addr) { return addr.readFloat(); },
        write: function(addr, val) { addr.writeFloat(parseFloat(val)); },
        parseVal: function(v) { return parseFloat(v); },
        compare: function(curr, prev, op, val, epsilon) { return compareFloats(curr, prev, op, val, epsilon); }
    },
    double: {
        size: 8,
        alignment: 8,
        read: function(addr) { return addr.readDouble(); },
        write: function(addr, val) { addr.writeDouble(parseFloat(val)); },
        parseVal: function(v) { return parseFloat(v); },
        compare: function(curr, prev, op, val, epsilon) { return compareFloats(curr, prev, op, val, epsilon); }
    },
    char: {
        size: 1,
        alignment: 1,
        read: function(addr) { return addr.readU8(); },
        write: function(addr, val) { 
            let code = typeof val === 'string' ? val.charCodeAt(0) : parseInt(val, 10);
            addr.writeU8(code); 
        },
        parseVal: function(v) { 
            if (typeof v === 'string' && v.length === 1) return v.charCodeAt(0);
            return parseInt(v, 10);
        },
        compare: function(curr, prev, op, val) { return compareNumbers(curr, prev, op, val); }
    },
    string: {
        size: -1, // dynamic
        alignment: 1,
        read: function(addr, length) {
            try {
                return addr.readUtf8String(length);
            } catch (e) {
                return null;
            }
        },
        write: function(addr, val) { addr.writeUtf8String(val); },
        parseVal: function(v) { return v.toString(); },
        compare: function(curr, prev, op, val) {
            if (curr === null || curr === undefined) return false;
            switch (op) {
                case 'exact': return curr === val;
                case 'not_equal': return curr !== val;
                case 'changed': return curr !== prev;
                case 'unchanged': return curr === prev;
                default: return false;
            }
        }
    },
    utf16: {
        size: -1, // dynamic
        alignment: 2,
        read: function(addr, length) {
            try {
                return addr.readUtf16String(length);
            } catch (e) {
                return null;
            }
        },
        write: function(addr, val) { addr.writeUtf16String(val); },
        parseVal: function(v) { return v.toString(); },
        compare: function(curr, prev, op, val) {
            if (curr === null || curr === undefined) return false;
            switch (op) {
                case 'exact': return curr === val;
                case 'not_equal': return curr !== val;
                case 'changed': return curr !== prev;
                case 'unchanged': return curr === prev;
                default: return false;
            }
        }
    }
};

// Export to global scope
global.DataTypes = DataTypes;
