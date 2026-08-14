# Unit tests for scanner search pattern generation

import pytest
from src.memscan.types import encode_value

def test_pattern_generation():
    # int32 pattern
    _, pat = encode_value("int32", 999)
    # 999 = 0x3E7 -> E7 03 00 00
    assert pat == "E7 03 00 00"

    # uint16 pattern
    _, pat = encode_value("uint16", 500)
    # 500 = 0x1F4 -> F4 01
    assert pat == "F4 01"

    # string pattern
    _, pat = encode_value("string", "FRIDA")
    assert pat == "46 52 49 44 41"

    # utf16 pattern
    _, pat = encode_value("utf16", "FRIDA")
    assert pat == "46 00 52 00 49 00 44 00 41 00"
