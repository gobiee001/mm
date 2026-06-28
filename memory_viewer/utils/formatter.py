from typing import List

def format_hex_line(address: int, data: bytes) -> str:
    """
    Formats a 16-byte block of memory into Cheat Engine style format:
    0x70123400  48 65 6C 6C 6F 20 57 6F 72 6C 64 00 00 00 00 00  Hello World.....
    """
    hex_parts = [f"{b:02X}" for b in data]
    ascii_parts = [chr(b) if 32 <= b <= 126 else "." for b in data]
    
    # Pad incomplete lines to align formatting
    if len(data) < 16:
        missing = 16 - len(data)
        hex_parts.extend(["  "] * missing)
        ascii_parts.extend([" "] * missing)
        
    hex_str = " ".join(hex_parts)
    ascii_str = "".join(ascii_parts)
    
    return f"0x{address:08X}  {hex_str}  {ascii_str}"

def format_size(size_bytes: int) -> str:
    """Formats a size in bytes to a human-readable string."""
    if size_bytes >= 1024 * 1024 * 1024:
        return f"{size_bytes / (1024 * 1024 * 1024):.2f} GB"
    elif size_bytes >= 1024 * 1024:
        return f"{size_bytes / (1024 * 1024):.2f} MB"
    elif size_bytes >= 1024:
        return f"{size_bytes / 1024:.2f} KB"
    else:
        return f"{size_bytes} Bytes"
