# Data type definitions and encoding for memscan

import struct
from typing import Any, Tuple, Optional

class DataType:
    def __init__(self, name: str, size: int, alignment: int):
        self.name = name
        self.size = size
        self.alignment = alignment

    def encode(self, val: Any) -> bytes:
        raise NotImplementedError()

    def parse(self, val_str: str) -> Any:
        raise NotImplementedError()

class IntegerType(DataType):
    def __init__(self, name: str, size: int, alignment: int, fmt: str, signed: bool):
        super().__init__(name, size, alignment)
        self.fmt = fmt
        self.signed = signed

    def encode(self, val: Any) -> bytes:
        v = self.parse(val)
        return struct.pack(self.fmt, v)

    def parse(self, val_str: str) -> int:
        if isinstance(val_str, (int, float)):
            return int(val_str)
        # Handle hex strings or decimals
        v_str = str(val_str).strip()
        if v_str.lower().startswith("0x"):
            return int(v_str, 16)
        return int(v_str, 10)

class FloatType(DataType):
    def __init__(self, name: str, size: int, alignment: int, fmt: str):
        super().__init__(name, size, alignment)
        self.fmt = fmt

    def encode(self, val: Any) -> bytes:
        v = self.parse(val)
        return struct.pack(self.fmt, v)

    def parse(self, val_str: str) -> float:
        return float(val_str)

class CharType(DataType):
    def __init__(self):
        super().__init__("char", 1, 1)

    def encode(self, val: Any) -> bytes:
        v = self.parse(val)
        return struct.pack("<B", v)

    def parse(self, val_str: str) -> int:
        if isinstance(val_str, int):
            return val_str
        v_str = str(val_str)
        if len(v_str) == 1:
            return ord(v_str)
        if v_str.lower().startswith("0x"):
            return int(v_str, 16)
        return int(v_str, 10)

class StringType(DataType):
    def __init__(self):
        super().__init__("string", -1, 1)

    def encode(self, val: Any) -> bytes:
        return str(val).encode('utf-8')

    def parse(self, val_str: str) -> str:
        return str(val_str)

class UTF16Type(DataType):
    def __init__(self):
        super().__init__("utf16", -1, 2)

    def encode(self, val: Any) -> bytes:
        return str(val).encode('utf-16le')

    def parse(self, val_str: str) -> str:
        return str(val_str)

# Registry of supported data types
TYPES = {
    "int8": IntegerType("int8", 1, 1, "<b", True),
    "uint8": IntegerType("uint8", 1, 1, "<B", False),
    "int16": IntegerType("int16", 2, 2, "<h", True),
    "uint16": IntegerType("uint16", 2, 2, "<H", False),
    "int32": IntegerType("int32", 4, 4, "<i", True),
    "uint32": IntegerType("uint32", 4, 4, "<I", False),
    "int64": IntegerType("int64", 8, 8, "<q", True),
    "uint64": IntegerType("uint64", 8, 8, "<Q", False),
    "float": FloatType("float", 4, 4, "<f"),
    "double": FloatType("double", 8, 8, "<d"),
    "char": CharType(),
    "string": StringType(),
    "utf16": UTF16Type()
}

def get_type(name: str) -> DataType:
    if name not in TYPES:
        raise ValueError(f"Unsupported datatype: {name}")
    return TYPES[name]

def encode_value(type_name: str, value: Any) -> Tuple[bytes, str]:
    """Encodes value to bytes and returns its space-separated hex representation."""
    t = get_type(type_name)
    encoded = t.encode(value)
    hex_str = " ".join(f"{b:02X}" for b in encoded)
    return encoded, hex_str
