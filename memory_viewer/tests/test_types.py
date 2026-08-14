# Unit tests for python datatype handling

import pytest
from src.memscan.types import get_type, encode_value, TYPES

def test_integer_types():
    # int8
    t = get_type("int8")
    assert t.size == 1
    assert t.encode(127) == b'\x7f'
    assert t.encode(-128) == b'\x80'
    assert t.parse("100") == 100
    assert t.parse("0x10") == 16

    # uint8
    t = get_type("uint8")
    assert t.size == 1
    assert t.encode(255) == b'\xff'
    assert t.parse("200") == 200

    # int32
    t = get_type("int32")
    assert t.size == 4
    assert t.encode(123456) == b'@\xe2\x01\x00' # little-endian

    # uint32
    t = get_type("uint32")
    assert t.size == 4
    assert t.encode(0xFFFFFFFF) == b'\xff\xff\xff\xff'

    # int64
    t = get_type("int64")
    assert t.size == 8
    assert t.encode(0x1234567890ABCDEF) == b'\xef\xcd\xab\x90\x78\x56\x34\x12'

def test_float_types():
    # float
    t = get_type("float")
    assert t.size == 4
    encoded = t.encode(12.34)
    # verify length
    assert len(encoded) == 4

    # double
    t = get_type("double")
    assert t.size == 8
    assert len(t.encode(123.456)) == 8

def test_char_type():
    t = get_type("char")
    assert t.size == 1
    assert t.encode('A') == b'\x41'
    assert t.encode(65) == b'\x41'
    assert t.parse("B") == 66

def test_string_types():
    # string (utf-8)
    t = get_type("string")
    assert t.size == -1
    assert t.encode("PLAYER") == b"PLAYER"

    # utf16 (utf-16le)
    t = get_type("utf16")
    assert t.size == -1
    assert t.encode("PLAYER") == b"P\x00L\x00A\x00Y\x00E\x00R\x00"

def test_encode_value_hex():
    # int32
    encoded, hex_str = encode_value("int32", 100)
    assert encoded == b'd\x00\x00\x00'
    assert hex_str == "64 00 00 00"

    # char
    encoded, hex_str = encode_value("char", "A")
    assert encoded == b'A'
    assert hex_str == "41"
