# Custom exception classes for memscan

class MemScanError(Exception):
    """Base class for all memory scanner errors."""
    pass

class ProcessNotFoundError(MemScanError):
    """Raised when the target process cannot be found."""
    pass

class FridaConnectionError(MemScanError):
    """Raised when connecting or interacting with Frida fails."""
    pass

class MemoryReadError(MemScanError):
    """Raised when reading target memory fails."""
    pass

class MemoryWriteError(MemScanError):
    """Raised when writing target memory fails."""
    pass

class InvalidScanTypeError(MemScanError):
    """Raised when an invalid data type is specified for scanning."""
    pass

class InvalidScanValueError(MemScanError):
    """Raised when an invalid scan value is supplied."""
    pass
