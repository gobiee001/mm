# Formatting utilities for memscan outputs

import math
from typing import Dict, Any, List

def format_address(addr: int, pointer_size: int = 8) -> str:
    """Formats address to standard hexadecimal representation based on ptr size."""
    if pointer_size == 8:
        return f"0x{addr:016X}"
    return f"0x{addr:08X}"

def format_size(bytes_count: int) -> str:
    """Formats bytes size into human-readable representation."""
    if bytes_count == 0:
        return "0 B"
    size_name = ("B", "KB", "MB", "GB", "TB")
    i = int(math.floor(math.log(bytes_count, 1024)))
    p = math.pow(1024, i)
    s = round(bytes_count / p, 2)
    return f"{s} {size_name[i]}"

def format_hex_dump(address: int, data: bytes, bytes_per_line: int = 16) -> List[str]:
    """Generates lists of hex dump strings with Address | Hex Bytes | ASCII representation."""
    lines = []
    for i in range(0, len(data), bytes_per_line):
        chunk = data[i:i + bytes_per_line]
        
        # Hex representation
        hex_parts = []
        for b in chunk:
            hex_parts.append(f"{b:02X}")
        hex_str = " ".join(hex_parts)
        # Pad hex representation
        pad_size = bytes_per_line * 3 - 1
        hex_str = hex_str.ljust(pad_size)
        
        # ASCII representation
        ascii_parts = []
        for b in chunk:
            if 32 <= b <= 126:
                ascii_parts.append(chr(b))
            else:
                ascii_parts.append(".")
        ascii_str = "".join(ascii_parts)
        
        addr_str = f"0x{address + i:016X}"
        lines.append(f"{addr_str}    {hex_str}    | {ascii_str}")
        
    return lines

def print_table(headers: List[str], rows: List[List[str]]) -> None:
    """Prints a clean CLI ASCII table."""
    if not rows:
        return
        
    # Calculate widths
    widths = [len(h) for h in headers]
    for row in rows:
        for i, val in enumerate(row):
            widths[i] = max(widths[i], len(str(val)))
            
    # Print headers
    header_str = "    ".join(h.ljust(widths[i]) for i, h in enumerate(headers))
    print(header_str)
    print("-" * (sum(widths) + 4 * (len(headers) - 1)))
    
    # Print rows
    for row in rows:
        row_str = "    ".join(str(val).ljust(widths[i]) for i, val in enumerate(row))
        print(row_str)
