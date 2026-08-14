# Frida Memory Scanner --- Implementation Plan

## 1. Project Goal

Build a Cheat-Engine-style memory value scanner using:

-   Usie existing python version
-   Frida Python bindings
-   Frida JavaScript agent
-   CLI interface
-   Frida RPC for Python ↔ target-process communication

The application is intended for authorized testing and reverse
engineering of applications I control.

The scanner must support:

-   Strings
-   UTF-16 strings
-   Signed/unsigned integers
-   Float and double
-   Characters
-   First scan
-   Next scan
-   Changed/unchanged
-   Increased/decreased
-   Unknown initial values
-   Memory ranges
-   Module + offset identification
-   Memory reading
-   Hex dumps
-   Controlled memory writing
-   Scan cancellation
-   Progress reporting

------------------------------------------------------------------------

## 2. Architecture

Use this architecture:

``` text
Python CLI
    |
    | Frida RPC
    v
Frida JavaScript Agent
    |
    +-- Range Manager
    +-- Pattern Generator
    +-- Initial Scanner
    +-- Candidate Scanner
    +-- Memory Reader/Writer
    +-- Module Resolver
```

Important rule:

> Memory scanning and candidate filtering must happen inside the Frida
> JavaScript agent. Do not transfer entire memory regions to Python.

Python should handle:

-   CLI
-   User input
-   Session state
-   Result presentation
-   Process selection
-   Formatting

Frida JS should handle:

-   Memory enumeration
-   Memory scanning
-   Candidate reads
-   Candidate filtering
-   Typed memory access
-   Module/range lookup
-   Memory writes

------------------------------------------------------------------------

## 3. Project Structure

Create:

``` text
frida-memory-scanner/
├── pyproject.toml
├── README.md
├── src/
│   └── memscan/
│       ├── __init__.py
│       ├── cli.py
│       ├── session.py
│       ├── scanner.py
│       ├── types.py
│       ├── models.py
│       ├── formatters.py
│       └── errors.py
├── agent/
│   ├── agent.js
│   ├── memory.js
│   ├── ranges.js
│   ├── scanner.js
│   └── types.js
└── tests/
    ├── test_types.py
    ├── test_patterns.py
    └── test_comparisons.py
```

Keep Python and Frida responsibilities separated.

------------------------------------------------------------------------

# 4. Supported Data Types

Implement these types:

``` text
int8
uint8

int16
uint16

int32
uint32

int64
uint64

float
double

char
string
utf16
```

Create a common type abstraction.

Every type should provide:

``` text
encode(value)
read(address)
size
compare(current, previous, operation, value)
```

The scanner itself should not contain separate scanning implementations
for each datatype.

------------------------------------------------------------------------

# 5. Integer Types

Support:

-   `int8`
-   `uint8`
-   `int16`
-   `uint16`
-   `int32`
-   `uint32`
-   `int64`
-   `uint64`

Initially use little-endian encoding.

Make endianness configurable internally so it can be extended later.

Example:

``` text
int32 100
-> 64 00 00 00
```

Do not convert 64-bit values to JavaScript `Number`.

Use Frida `Int64` / `UInt64` or strings when transferring 64-bit values.

------------------------------------------------------------------------

# 6. Floating Point

Support:

-   `float` --- IEEE-754 32-bit
-   `double` --- IEEE-754 64-bit

Use `DataView` or equivalent binary conversion to generate scan
patterns.

For candidate reads use:

``` javascript
address.readFloat()
address.readDouble()
```

Add optional approximate float comparison:

``` text
scan float 100.5
next exact 101.5

next approx 101.5 0.01
```

------------------------------------------------------------------------

# 7. Character Support

Support:

``` text
scan char A
scan char 65
```

Display:

``` text
address
hex
decimal
ASCII character
```

Example:

``` text
0x71234510    41    65    'A'
```

------------------------------------------------------------------------

# 8. String Support

Support:

``` text
scan string "PLAYER"
scan utf16 "PLAYER"
```

UTF-8 strings should be converted to their byte representation.

UTF-16 strings should be converted to the corresponding UTF-16 byte
sequence.

Store string length with candidates.

Use:

``` javascript
address.readUtf8String(...)
address.readUtf16String(...)
```

when filtering string candidates.

------------------------------------------------------------------------

# 9. Memory Range Manager

Use:

``` javascript
Process.enumerateRanges(...)
```

Support filtering by:

-   readable
-   writable
-   executable
-   `r--`
-   `rw-`
-   `r-x`
-   all readable ranges

Default:

``` text
readable memory
```

Do not scan inaccessible ranges.

Handle ranges disappearing or changing during scanning without crashing.

Each range should expose:

``` text
base
size
protection
module/file information
```

------------------------------------------------------------------------

# 10. First Scan

CLI syntax:

``` text
scan <type> <value>
```

Examples:

``` text
scan int32 100
scan uint16 500
scan float 10.5
scan double 123.456
scan char A
scan string "PLAYER"
scan utf16 "PLAYER"
```

Flow:

``` text
Python
  |
  | scan(type, value, configuration)
  v
Frida JS
  |
  +-- enumerate ranges
  +-- generate binary pattern
  +-- scan memory
  +-- collect matches
  v
Python
  |
  +-- display results
  +-- save ScanSession
```

Return only matches, never entire memory ranges.

------------------------------------------------------------------------

# 11. Scan Session

Create a `ScanSession` containing:

``` text
process
pid
architecture
pointer_size
data_type
initial_value
candidate addresses
previous values
scan configuration
selected ranges
```

Each candidate should contain:

``` text
address
type
value
previous_value
region
protection
module
module_offset
```

Example:

``` text
{
    address: 0x71234510,
    type: "int32",
    value: 100,
    previous_value: 90,
    protection: "rw-",
    module: "libgame.so",
    module_offset: 0x123510
}
```

------------------------------------------------------------------------

# 12. Next Scan

Do not rescan the entire process for a normal `next` operation.

First scan:

``` text
Memory
  |
  +-- 10,000 candidates
```

Next scan:

``` text
10,000 candidates
  |
  +-- read candidates
  +-- compare
  +-- 500 survivors
```

Next scan:

``` text
500 candidates
  |
  +-- read
  +-- compare
  +-- 37 survivors
```

Candidate filtering must happen inside Frida.

------------------------------------------------------------------------

# 13. Comparison Modes

Implement:

``` text
exact
not_equal

greater
less
greater_equal
less_equal

changed
unchanged

increased
decreased

increased_by
decreased_by
```

Examples:

``` text
next exact 120
next changed
next unchanged
next increased
next decreased
next increased_by 10
next decreased_by 10
```

Comparison logic must be type-aware.

------------------------------------------------------------------------

# 14. Unknown Initial Value

Support:

``` text
scan int32 unknown
scan float unknown
scan double unknown
```

This should create candidates without requiring an initial exact value.

Then allow:

``` text
next changed
next unchanged
next increased
next decreased
```

Do not transfer all process memory to Python.

------------------------------------------------------------------------

# 15. Alignment

Support optional alignment.

Defaults:

``` text
int8   -> 1
int16  -> 2
int32  -> 4
int64  -> 8
float  -> 4
double -> 8
```

Allow:

``` text
--unaligned
```

to search every byte offset.

------------------------------------------------------------------------

# 16. Module Resolution

Use:

``` javascript
Process.enumerateModules()
```

For every result determine whether the address belongs to a loaded
module.

Display:

``` text
Address       Value    Module                Offset
---------------------------------------------------------
0x71234510    100      libgame.so            +0x123510
0x72345620    100      libc.so               +0x45620
0x74001230    100      anonymous             -
```

Calculate module offset as:

``` text
address - module.base
```

This must use native pointer arithmetic, not floating-point arithmetic.

------------------------------------------------------------------------

# 17. Result Management

Implement:

``` text
results
results 20
results --all
```

Display:

``` text
#    Address          Value    Type     Location
--------------------------------------------------------------
0    0x71234510       120      int32    libgame.so+0x123510
1    0x71236720       120      int32    libgame.so+0x125720
2    0x73451200       120      int32    anonymous
```

Do not print millions of results by default.

------------------------------------------------------------------------

# 18. Read Command

Implement:

``` text
read <address> <type>
```

Examples:

``` text
read 0x71234510 int32
read 0x71234510 float
read 0x71234510 string
```

Output:

``` text
Address:  0x71234510
Type:     int32
Value:    120
Hex:      78 00 00 00
```

------------------------------------------------------------------------

# 19. Memory Dump

Implement:

``` text
dump <address> <size>
```

Example:

``` text
dump 0x71234510 128
```

Output:

``` text
Address          Hex                                      ASCII
-----------------------------------------------------------------------
0x71234510       78 00 00 00 20 41 00 00 ...             x... A...
```

------------------------------------------------------------------------

# 20. Memory Write

Implement controlled memory writing for authorized testing.

Syntax:

``` text
write <address> <type> <value>
```

Examples:

``` text
write 0x71234510 int32 500
write 0x71234520 float 10.5
write 0x71234530 char A
```

Require confirmation before writes:

``` text
Are you sure? [y/N]
```

The write implementation must verify the target address is
readable/writable as appropriate and report failures cleanly.

------------------------------------------------------------------------

# 21. Performance Requirements

The implementation must:

-   Never copy entire process memory to Python for a normal scan.
-   Perform initial scanning inside Frida.
-   Perform next-scan filtering inside Frida.
-   Avoid one RPC call per candidate.
-   Process large candidate lists in batches.
-   Avoid unnecessary JS object allocations.
-   Catch invalid/unmapped memory.
-   Support progress reporting.
-   Support cancellation.

Preferred flow:

``` text
Python
  |
  | one RPC
  v
Frida
  |
  +-- process candidates in batches
  +-- read values
  +-- compare
  +-- return survivors
  v
Python
```

------------------------------------------------------------------------

# 22. Progress Reporting

Long scans should report:

``` text
Scanning [████████████------] 65%
Matches: 12842
```

Expose progress information through the Frida message channel or a
controlled RPC mechanism.

Do not flood Python with messages for every match.

Use periodic progress updates.

------------------------------------------------------------------------

# 23. Scan Cancellation

Implement:

``` text
cancel
```

and make:

``` text
Ctrl+C
```

cancel the current scan instead of immediately killing the application.

The JavaScript scanner should periodically check a cancellation flag.

------------------------------------------------------------------------

# 24. Process Management

Implement:

``` bash
memscan --list
```

Output:

``` text
PID       Name
---------------------------
1234      target
2345      another
```

Attach using:

``` bash
memscan --attach 1234
```

or:

``` bash
memscan --attach target
```

After attaching:

``` text
Connected to process.
Architecture: arm64
Pointer size: 8
```

------------------------------------------------------------------------

# 25. Architecture Awareness

At startup determine:

``` text
process name
PID
architecture
pointer size
```

Support at minimum:

``` text
arm
arm64
x86
x86_64
```

Never assume a 32-bit address space.

Use Frida `NativePointer` / `ptr()` for native addresses.

------------------------------------------------------------------------

# 26. CLI Commands

Implement this initial command set:

``` text
help
info
ranges
scan
next
results
read
dump
write
cancel
clear
quit
```

Example session:

``` text
memscan> info

Process: target
PID: 1234
Architecture: arm64
Pointer size: 8

memscan> scan int32 100

Scanning...
Found 1842 results.

memscan> next exact 120

Found 37 results.

memscan> results 20

#    Address          Value
-----------------------------
0    0x71234510       120
1    0x71236720       120
...

memscan> read 0x71234510 int32

Address: 0x71234510
Value:   120
```

------------------------------------------------------------------------

# 27. Testing Target

Create a small native test application containing known variables:

``` cpp
int32_t testInt = 123456;
float testFloat = 123.456f;
double testDouble = 987.654;
char testChar = 'X';
const char *testString = "FRIDA_TEST_STRING";
```

The test application should periodically modify the values.

Use this application to test the scanner.

Test:

``` text
int32
uint16
float
double
char
string
utf16
exact next scan
changed
unchanged
increased
decreased
unknown initial value
read
dump
write
```

Do not depend on a real application for automated tests.

------------------------------------------------------------------------

# 28. Unit Tests

Create Python tests for:

### Type encoding

``` text
int8
uint8
int16
uint16
int32
uint32
int64
uint64
float
double
char
UTF-8
UTF-16
```

### Comparison logic

Test:

``` text
exact
not_equal
greater
less
greater_equal
less_equal
changed
unchanged
increased
decreased
increased_by
decreased_by
```

### Address parsing

Test:

``` text
0x12345678
12345678
```

### Result formatting

Test module offsets and anonymous regions.

------------------------------------------------------------------------

# 29. Error Handling

Handle gracefully:

``` text
process terminated
process restarted
invalid address
unmapped memory
permission failure
invalid scan type
invalid value
invalid range
Frida connection failure
```

One invalid memory page must not terminate the entire scan.

------------------------------------------------------------------------

# 30. Logging

Support:

``` text
--verbose
--debug
```

Normal:

``` text
Attached.
Scanning...
Found 1234 results.
```

Debug:

``` text
[DEBUG] Enumerated 143 ranges
[DEBUG] Scanning range 0x70000000 size=0x200000
[DEBUG] Pattern: 64 00 00 00
[DEBUG] Matches: 132
```

------------------------------------------------------------------------

# 31. Implementation Order

Implement strictly in this order.

## Phase 1 --- Frida Connection

-   [ ] Project setup
-   [ ] Install Frida dependencies
-   [ ] Process listing
-   [ ] Attach by PID
-   [ ] Attach by name
-   [ ] Load JS agent
-   [ ] Detect architecture
-   [ ] Basic error handling

## Phase 2 --- Memory Ranges

-   [ ] Enumerate ranges
-   [ ] Range filtering
-   [ ] Protection filtering
-   [ ] Module information
-   [ ] Address-to-module resolution

## Phase 3 --- int32 Scanner

Build only `int32` first.

-   [ ] Encode int32
-   [ ] Scan memory
-   [ ] Return addresses
-   [ ] Store candidates
-   [ ] Display results
-   [ ] Read candidate values
-   [ ] Implement exact next scan

Do not proceed until this is stable.

## Phase 4 --- Generic Numeric Scanner

Add:

-   [ ] int8
-   [ ] uint8
-   [ ] int16
-   [ ] uint16
-   [ ] uint32
-   [ ] int64
-   [ ] uint64
-   [ ] float
-   [ ] double

Generalize the type abstraction rather than duplicating scanner code.

## Phase 5 --- Character/String Scanner

Add:

-   [ ] char
-   [ ] UTF-8 string
-   [ ] UTF-16 string

## Phase 6 --- Comparisons

Add:

-   [ ] exact
-   [ ] not_equal
-   [ ] greater
-   [ ] less
-   [ ] greater_equal
-   [ ] less_equal
-   [ ] changed
-   [ ] unchanged
-   [ ] increased
-   [ ] decreased
-   [ ] increased_by
-   [ ] decreased_by

## Phase 7 --- Unknown Values

Add:

-   [ ] unknown initial scan
-   [ ] changed filtering
-   [ ] unchanged filtering
-   [ ] increased filtering
-   [ ] decreased filtering

## Phase 8 --- Performance

Add:

-   [ ] batch candidate filtering
-   [ ] progress reporting
-   [ ] cancellation
-   [ ] reduced JS allocations
-   [ ] scan benchmarks

## Phase 9 --- Memory Tools

Add:

-   [ ] read
-   [ ] dump
-   [ ] write
-   [ ] result details
-   [ ] module + offset display

## Phase 10 --- Advanced Features

Only after all previous phases are stable:

-   [ ] AOB/signature scanning
-   [ ] wildcard byte patterns
-   [ ] saved addresses
-   [ ] watch list
-   [ ] automatic value refresh
-   [ ] pointer scanning
-   [ ] pointer chains
-   [ ] memory editor
-   [ ] structure viewer

------------------------------------------------------------------------

# 32. Critical Design Rules

1.  **Do not implement everything in one Python file.**
2.  Keep Python CLI logic separate from Frida JS memory logic.
3.  Keep datatype handling generic.
4.  Never transfer entire memory ranges to Python unless explicitly
    implementing a specialized mode.
5.  Never perform one Frida RPC call per candidate.
6.  Filter candidate addresses inside the Frida agent.
7.  Use native pointer types for addresses.
8.  Treat 64-bit integers separately from JavaScript `Number`.
9.  Handle invalid memory safely.
10. Build and validate `int32` first before generalizing.
11. Write automated tests using a dedicated native test target.
12. Add advanced pointer/AOB functionality only after the value scanner
    is stable.

------------------------------------------------------------------------

# 33. Definition of Done

The first release is complete when this workflow works reliably:

``` text
Start scanner
    ↓
List processes
    ↓
Attach
    ↓
Show architecture
    ↓
Enumerate memory ranges
    ↓
scan int32 123456
    ↓
Find test variable
    ↓
Change variable in test application
    ↓
next exact <new value>
    ↓
Candidate count decreases
    ↓
Display address
    ↓
Display module + offset
    ↓
read address int32
    ↓
dump address
    ↓
write address int32 <value>
    ↓
Verify value
```

Then repeat the same workflow for:

``` text
uint16
float
double
char
string
utf16
```

The implementation should prioritize correctness and a clean scanner
architecture over adding advanced features early.
