#!/usr/bin/env python3
"""
TTYD EVT Script Decompiler
Converts .s file .obj blocks into C EVT macro source.

Usage:
    python3 evt_decompile.py <file.s> [script_name ...]
    If no names given, decompiles all detected EVT scripts.
"""

import re
import sys

# ---------------------------------------------------------------------------
# Opcode table derived from binary evidence + evt.h enum cross-reference.
# Format: opcode -> (macro_name, expected_argc)
# expected_argc = -1 means variable (first arg is func ptr, rest are params)
# ---------------------------------------------------------------------------
OPCODES = {
    0x01: ("END",                   0),
    0x02: ("RETURN",                0),
    0x03: ("LABEL",                 1),
    0x04: ("GOTO",                  1),
    0x05: ("LOOP",                  1),
    0x06: ("END_LOOP",              0),
    0x07: ("BREAK_LOOP",            0),
    0x08: ("CONTINUE_LOOP",         0),
    0x09: ("WAIT_FRAMES",           1),
    0x0A: ("WAIT_MS",               1),
    0x0B: ("WAIT_UNTIL",            1),
    0x0C: ("IF_STR_EQ",             2),
    0x0D: ("IF_STR_NE",             2),
    0x0E: ("IF_STR_LT",             2),
    0x0F: ("IF_STR_GT",             2),
    0x10: ("IF_STR_LT_OR_EQ",       2),
    0x11: ("IF_STR_GT_OR_EQ",       2),
    0x12: ("IF_FLOAT_EQ",           2),
    0x13: ("IF_FLOAT_NE",           2),
    0x14: ("IF_FLOAT_LT",           2),
    0x15: ("IF_FLOAT_GT",           2),
    0x16: ("IF_FLOAT_LT_OR_EQ",     2),
    0x17: ("IF_FLOAT_GT_OR_EQ",     2),
    0x18: ("IF_INT_EQ",             2),
    0x19: ("IF_INT_NE",             2),
    0x1A: ("IF_INT_LT",             2),
    0x1B: ("IF_INT_GT",             2),
    0x1C: ("IF_INT_LT_OR_EQ",       2),
    0x1D: ("IF_INT_GT_OR_EQ",       2),
    0x1E: ("IF_BITS_SET",           2),
    0x1F: ("IF_BITS_CLEAR",         2),
    0x20: ("ELSE",                  0),
    0x21: ("END_IF",                0),
    0x22: ("SWITCH",                1),
    0x23: ("SWITCH_R",              1),
    0x24: ("CASE_INT_EQ",           1),
    0x25: ("CASE_INT_NE",           1),
    0x26: ("CASE_INT_LT",           1),
    0x27: ("CASE_INT_GT",           1),
    0x28: ("CASE_INT_LT_OR_EQ",     1),
    0x29: ("CASE_INT_GT_OR_EQ",     1),
    0x2A: ("CASE_DEFAULT",          0),
    0x2B: ("CASE_OR_EQ",            1),
    0x2C: ("CASE_AND_EQ",           1),
    0x2D: ("CASE_FLAG",             1),
    0x2E: ("CASE_END",              0),
    0x2F: ("CASE_BETWEEN",          2),
    0x30: ("BREAK_SWITCH",          0),
    0x31: ("END_SWITCH",            0),
    0x32: ("SET",                   2),
    0x33: ("SET_RAW",               2),
    0x34: ("SET_FLOAT",             2),
    0x35: ("ADD",                   2),
    0x36: ("SUB",                   2),
    0x37: ("MUL",                   2),
    0x38: ("DIV",                   2),
    0x39: ("MOD",                   2),
    0x3A: ("ADDF",                  2),
    0x3B: ("SUBF",                  2),
    0x3C: ("MULF",                  2),
    0x3D: ("DIVF",                  2),
    0x3E: ("MO_SET_BASE_INT",       1),
    0x3F: ("MO_READ_INT",           1),
    0x40: ("MO_READ_INT2",          1),
    0x41: ("MO_READ_INT3",          1),
    0x42: ("MO_READ_INT4",          1),
    0x43: ("MO_READ_INT_INDEXED",   2),
    0x44: ("MO_SET_BASE_FLOAT",     1),
    0x45: ("MO_READ_FLOAT",         1),
    0x46: ("MO_READ_FLOAT2",        1),
    0x47: ("MO_READ_FLOAT3",        1),
    0x48: ("MO_READ_FLOAT4",        1),
    0x49: ("MO_READ_FLOAT_INDEXED", 2),
    0x4A: ("SET_UW_BASE",           1),
    0x4B: ("SET_UF_BASE",           1),
    0x4C: ("ALLOC_UW",              1),
    0x4D: ("ANDI",                  2),
    0x4E: ("ANDI_RAW",              2),
    0x4F: ("ORI",                   2),
    0x50: ("ORI_RAW",               2),
    0x51: ("CVT_MS_F",              2),
    0x52: ("CVT_F_MS",              2),
    0x53: ("STORE_INT",             2),
    0x54: ("STORE_FLOAT",           2),
    0x55: ("GET_INT",               2),
    0x56: ("GET_FLOAT",             2),
    0x57: ("STORE_INT_IND",         2),
    0x58: ("STORE_FLOAT_IND",       2),
    0x59: ("LOAD_INT_IND",          2),
    0x5A: ("LOAD_FLOAT_IND",        2),
    0x5B: ("CALL",                 -1),  # variable: func_ptr + N args
    0x5C: ("SCRIPT_ASYNC",          1),
    0x5D: ("SCRIPT_ASYNC_TID",      2),
    0x5E: ("SCRIPT_SYNC",           1),
    0x5F: ("STOP_TID",              1),
    0x60: ("JUMP",                  1),
    0x61: ("SET_THREAD_PRIORITY",   1),
    0x62: ("SET_SPD",               1),
    0x63: ("SET_MASK",              1),
    0x64: ("SUSPEND_TYPES",         1),
    0x65: ("RESUME_TYPES",          1),
    0x66: ("SUSPEND_TYPES_OTHER",   1),
    0x67: ("RESUME_TYPES_OTHER",    1),
    0x68: ("SUSPEND_TID",           1),
    0x69: ("RESUME_TID",            1),
    0x6A: ("CHECK_THREAD_RUNNING",  2),
    0x6B: ("BEGIN_THREAD",          0),
    0x6C: ("BEGIN_THREAD_TID",      1),
    0x6D: ("END_THREAD",            0),
    0x6E: ("BEGIN_CHILD_THREAD",    0),
    0x6F: ("BEGIN_CHILD_THREAD_TID",1),
    0x70: ("END_CHILD_THREAD",      0),
    0x70: ("END_CHILD_THREAD",      0),
    0x71: ("DBG_REPORT",            1),
    0x72: ("DBG_MSG_CLEAR",         0),
    0x73: ("DBG_EXPR_TO_STRING",    2),
    0x74: ("DBG_SET_MODE",          1),
    0x75: ("DBG_REM",               0),
    0x76: ("DBG_BP",                0),
}

# Opcodes that increase indent level for the lines that follow
INDENT_OPEN = {
    0x05,
    0x0C,0x0D,0x0E,0x0F,0x10,0x11,
    0x12,0x13,0x14,0x15,0x16,0x17,
    0x18,0x19,0x1A,0x1B,0x1C,0x1D,
    0x1E,0x1F,
    0x22,0x23,
    0x24,0x25,0x26,0x27,0x28,0x29,
    0x2A,0x2B,0x2C,0x2D,
    0x2F,
    0x6B,0x6C,
    0x6E,0x6F,
}

# Opcodes that decrease indent level before they are emitted
INDENT_CLOSE = {
    0x06,  # END_LOOP
    0x20,  # ELSE (close then re-open)
    0x21,  # END_IF
    0x30,  # BREAK_SWITCH
    0x31,  # END_SWITCH
    0x6D,  # END_THREAD
    0x70,  # END_CHILD_THREAD
}

# ---------------------------------------------------------------------------
# EVT value encoding constants
# ---------------------------------------------------------------------------
EVTDAT_LW_BASE    = 30000000
EVTDAT_GW_BASE    = 50000000
EVTDAT_LF_BASE    = 70000000
EVTDAT_GF_BASE    = 90000000
EVTDAT_LSWF_BASE  = 110000000
EVTDAT_GSWF_BASE  = 130000000
EVTDAT_LSW_BASE   = 150000000
EVTDAT_GSW_BASE   = 170000000
EVTDAT_UW_BASE    = 190000000
EVTDAT_UF_BASE    = 210000000
EVTDAT_FLOAT_BASE = 230000000

LVAR_NAMES  = [f"LVar{i:X}" for i in range(16)]
LFLAG_NAMES = [f"LFlag{i:X}" for i in range(16)]


def signed32(v: int) -> int:
    return v - 0x100000000 if v >= 0x80000000 else v


def format_value(token: str) -> str:
    """Convert a raw .4byte token to its C EVT macro representation."""
    if not (token.startswith("0x") or token.startswith("-") or token.lstrip("-").isdigit()):
        if token.startswith("str_"):
            c_sym = _sym_rename.get(token, sanitize_sym(token))
            return f"PTR({c_sym})"  # was: (Bytecode)(const void*){c_sym}
        return token

    try:
        raw = int(token, 16) if token.startswith("0x") else int(token, 0)
    except ValueError:
        return token

    val = signed32(raw & 0xFFFFFFFF)

    if val < 0:
        abs_val = -val

        # EVT variable ranges are encoded as large negative numbers clustered near
        # their respective bases. Plain negative coordinates are small (e.g. -150).
        # We only decode as a variable type if abs_val is within a sane index window
        # of the base (max ~1000 indices; the game never uses more than ~16 LVars).
        MAX_VAR_IDX = 1024

        # LocalVar / LW (abs_val just below EVTDAT_LW_BASE)
        if EVTDAT_LW_BASE - MAX_VAR_IDX <= abs_val <= EVTDAT_LW_BASE:
            idx = EVTDAT_LW_BASE - abs_val
            return LVAR_NAMES[idx] if idx < 16 else f"LW({idx})"

        # GW
        if EVTDAT_GW_BASE - MAX_VAR_IDX <= abs_val <= EVTDAT_GW_BASE:
            idx = EVTDAT_GW_BASE - abs_val
            return f"GW({idx})"

        # LF / LocalFlag
        if EVTDAT_LF_BASE - MAX_VAR_IDX <= abs_val <= EVTDAT_LF_BASE:
            idx = EVTDAT_LF_BASE - abs_val
            return LFLAG_NAMES[idx] if idx < 16 else f"LF({idx})"

        # GF / LocalFlag - GF(0..15) = LFlag0..LFlagF
        if EVTDAT_GF_BASE - MAX_VAR_IDX <= abs_val <= EVTDAT_GF_BASE:
            idx = EVTDAT_GF_BASE - abs_val
            return LFLAG_NAMES[idx] if idx < 16 else f"GF({idx})"

        # LSWF
        if EVTDAT_LSWF_BASE - MAX_VAR_IDX <= abs_val <= EVTDAT_LSWF_BASE:
            idx = EVTDAT_LSWF_BASE - abs_val
            return f"LSWF({idx})"

        # GSWF
        if EVTDAT_GSWF_BASE - MAX_VAR_IDX <= abs_val <= EVTDAT_GSWF_BASE:
            idx = EVTDAT_GSWF_BASE - abs_val
            return f"GSWF({idx})"

        # LSW
        if EVTDAT_LSW_BASE - MAX_VAR_IDX <= abs_val <= EVTDAT_LSW_BASE:
            idx = EVTDAT_LSW_BASE - abs_val
            return f"LSW({idx})"

        # GSW
        if EVTDAT_GSW_BASE - MAX_VAR_IDX <= abs_val <= EVTDAT_GSW_BASE:
            idx = EVTDAT_GSW_BASE - abs_val
            return f"GSW({idx})"

        # UW
        if EVTDAT_UW_BASE - MAX_VAR_IDX <= abs_val <= EVTDAT_UW_BASE:
            idx = EVTDAT_UW_BASE - abs_val
            return f"UW({idx})"

        # UF
        if EVTDAT_UF_BASE - MAX_VAR_IDX <= abs_val <= EVTDAT_UF_BASE:
            idx = EVTDAT_UF_BASE - abs_val
            return f"UF({idx})"

        # FLOAT: abs_val near FLOAT_BASE (symmetric ±20000*1024 window)
        FLOAT_MIN = EVTDAT_FLOAT_BASE - 20000 * 1024
        FLOAT_MAX = EVTDAT_FLOAT_BASE + 20000 * 1024
        if FLOAT_MIN <= abs_val <= FLOAT_MAX:
            f = (val + EVTDAT_FLOAT_BASE) / 1024.0
            return f"FLOAT({f:.3f})"

    # Plain integer: decimal for small values, hex for large
    if -9999 <= val <= 9999:
        return str(val)
    return f"0x{raw & 0xFFFFFFFF:08X}"


# ---------------------------------------------------------------------------
# Parser
# ---------------------------------------------------------------------------

def parse_obj_blocks(asm_text: str) -> dict:
    objects = {}
    for m in re.finditer(
        r'\.obj\s+(\S+),\s*\S+\n(.*?)\.endobj\s+\1',
        asm_text, re.DOTALL
    ):
        name = m.group(1)
        tokens = re.findall(r'\.4byte\s+(\S+)', m.group(2))
        objects[name] = tokens
    return objects


def looks_like_evt_header(token: str) -> bool:
    if not token.startswith("0x"):
        return False
    try:
        v = int(token, 16)
    except ValueError:
        return False
    # Upper byte of argc must be 0 (real headers never exceed ~20 args)
    if (v >> 24) & 0xFF != 0:
        return False
    opcode = v & 0xFFFF
    argc   = (v >> 16) & 0xFFFF
    return opcode in OPCODES and argc < 32


# Opcodes valid as the very first instruction of a script.
# Excludes mid-script-only opcodes like END_LOOP, ELSE, END_IF, CASE_*, etc.
EVT_VALID_FIRST_OPCODES = {
    0x01, 0x02, 0x03, 0x04, 0x05, 0x09, 0x0A, 0x0B,
    0x0C, 0x0D, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F,
    0x22, 0x23,
    0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x3A, 0x3B, 0x3C, 0x3D,
    0x3E, 0x44, 0x4B, 0x4C, 0x4D,
    0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x60,
    0x61, 0x62, 0x63, 0x64, 0x65, 0x6B, 0x6E,
}

# Terminal opcodes — a valid script must contain at least one
EVT_TERMINAL_OPCODES = {0x01, 0x02}  # END, RETURN


def is_evt_script(tokens: list) -> bool:
    """
    Walk the token stream structurally to verify it's really an EVT script.

    Checks:
      1. First opcode must be in EVT_VALID_FIRST_OPCODES
      2. Walking argc-step through all headers must stay in sync with the
         token stream (no header word appears where a data word is expected)
      3. Script must contain at least one terminal opcode (END or RETURN)
      4. Non-numeric tokens (symbol refs) must only appear in CALL arg slots
    """
    if not tokens:
        return False

    if not looks_like_evt_header(tokens[0]):
        return False

    first_opcode = int(tokens[0], 16) & 0xFFFF
    if first_opcode not in EVT_VALID_FIRST_OPCODES:
        return False

    # Structural walk: step through header + argc data words.
    # Data words are NOT validated as headers - they're arbitrary EVT values.
    # We only validate that each header slot itself looks like a valid header.
    i = 0
    found_terminal = False
    consecutive_bad = 0
    while i < len(tokens):
        tok = tokens[i]

        # Header slot must be a valid EVT header
        if not looks_like_evt_header(tok):
            return False

        header = int(tok, 16)
        opcode = header & 0xFFFF
        argc   = (header >> 16) & 0xFFFF

        if opcode in EVT_TERMINAL_OPCODES:
            found_terminal = True

        # Opcodes that take pointer/symbol arguments
        # CALL (0x5B): func ptr at slot 1, str_ refs at other slots
        # Script-pointer opcodes (0x5D-0x61): take evt script symbol at slot 1
        PTR_OPCODES = {0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x60, 0x6C, 0x6F, 0x71}
        is_call = (opcode == 0x5B)
        is_ptr_opcode = (opcode in PTR_OPCODES)
        for j in range(1, argc + 1):
            if i + j >= len(tokens):
                break
            arg_tok = tokens[i + j]
            is_numeric = arg_tok.startswith("0x") or arg_tok.lstrip("-").isdigit()
            if not is_numeric:
                if not is_ptr_opcode:
                    return False
                # CALL: slot 1 is func ptr (any symbol ok), other slots must be str_
                if is_call and j > 1 and not arg_tok.startswith("str_"):
                    return False
                # Script-ptr opcodes: slot 1 is the script symbol (any symbol ok)

        i += argc + 1

        # Stop walk at terminal
        if opcode in EVT_TERMINAL_OPCODES:
            break

    return found_terminal


# ---------------------------------------------------------------------------
# Decompiler
# ---------------------------------------------------------------------------

def decompile_script(name: str, tokens: list) -> str:
    lines = [f"EVT_BEGIN({name}) {{"]
    indent = 1
    i = 0

    while i < len(tokens):
        token = tokens[i]
        if not looks_like_evt_header(token):
            break

        header = int(token, 16)
        opcode = header & 0xFFFF
        argc   = (header >> 16) & 0xFFFF
        i += 1

        info = OPCODES.get(opcode)
        if info is None:
            lines.append(f"{'   ' * indent}/* unknown opcode 0x{opcode:02X} argc={argc} */")
            i += argc
            continue

        macro_name, _ = info
        args = tokens[i:i + argc]
        i += argc

        # Adjust indent before closing keywords
        if opcode in INDENT_CLOSE:
            indent = max(0, indent - 1)

        # CASE opcodes close the previous case's block before opening a new one
        # (same pattern as ELSE: dedent then re-indent after emitting)
        CASE_OPCODES = {0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2F}
        if opcode in CASE_OPCODES:
            indent = max(0, indent - 1)

        pad = "    " * indent

        # Build the line
        if macro_name == "CALL":
            if args:
                func   = args[0]
                params = [format_value(a) for a in args[1:]]
                if params:
                    line = f"{pad}CALL({func}, {', '.join(params)})"
                else:
                    line = f"{pad}CALL({func})"
            else:
                line = f"{pad}CALL()"
        elif argc == 0:
            line = f"{pad}{macro_name}"
        else:
            fmt = [format_value(a) for a in args]
            line = f"{pad}{macro_name}({', '.join(fmt)})"

        lines.append(line)

        # Adjust indent after opening keywords
        if opcode in INDENT_OPEN:
            indent += 1
        if opcode == 0x20:  # ELSE: already closed above, now re-open
            indent += 1

    lines.append("};\n")
    return "\n".join(lines)


# ---------------------------------------------------------------------------
# String declarations
# ---------------------------------------------------------------------------

def sanitize_sym(sym: str) -> str:
    """Replace non-ASCII runs in a symbol name with 'sjis' so it's a valid C identifier."""
    result = []
    i = 0
    in_nonascii = False
    for ch in sym:
        if ord(ch) > 127:
            if not in_nonascii:
                result.append('sjis')
                in_nonascii = True
        else:
            result.append(ch)
            in_nonascii = False
    return ''.join(result)


# Global mapping: original asm symbol name -> sanitized C identifier
# Populated by extract_string_decls, consumed by format_value.
_sym_rename: dict = {}


def extract_string_decls(asm_text: str) -> list:
    global _sym_rename
    _sym_rename = {}
    decls = []

    # ASCII .string
    for m in re.finditer(
        r'\.obj\s+(str_\S+),\s*\S+\n\s*\.string\s+"([^"]*)"',
        asm_text
    ):
        sym, val = m.group(1), m.group(2)
        c_sym = sanitize_sym(sym)
        _sym_rename[sym] = c_sym
        decls.append((m.start(), f'const char {c_sym}[] = "{val}";'))

    def decode_sjis_sym(sym, raw_bytes):
        """Try to decode bytes as Shift-JIS, emit string literal or byte array fallback."""
        c_sym = sanitize_sym(sym)
        _sym_rename[sym] = c_sym
        # Strip trailing null
        data = bytes(raw_bytes)
        if data.endswith(b'\x00'):
            data = data[:-1]
        try:
            text = data.decode('shift_jis')
            return c_sym, f'const char {c_sym}[] = "{text}";'
        except Exception:
            inits = ', '.join(f'0x{b:02X}' for b in data)
            return c_sym, f'const char {c_sym}[] = {{ {inits}, 0x00 }};  /* could not decode */'

    # Shift-JIS raw bytes — .byte directive form
    for m in re.finditer(
        r'\.obj\s+(str_\S+),\s*\S+\n(?:\s*#[^\n]*\n)?\s*((?:\t\.byte[^\n]+\n)+)',
        asm_text
    ):
        sym = m.group(1)
        byte_vals = [int(b, 16) for b in re.findall(r'0x[0-9A-Fa-f]{2}', m.group(2))]
        c_sym, decl = decode_sjis_sym(sym, byte_vals)
        decls.append((m.start(), decl))

    # Shift-JIS packed — .4byte directive form (each word is 4 big-endian bytes)
    for m in re.finditer(
        r'\.obj\s+(str_\S+),\s*\S+\n(?:\s*#[^\n]*\n)?((?:\t\.4byte\s+0x[0-9A-Fa-f]+\n)+(?:\t\.byte\s+0x00\n)?)',
        asm_text
    ):
        sym = m.group(1)
        # Only process if sym has non-ASCII (SJIS name) or body has high bytes
        raw_bytes = []
        for word_hex in re.findall(r'0x([0-9A-Fa-f]{2,8})', m.group(2)):
            val = int(word_hex, 16)
            # Determine byte width from hex string length (padded to even)
            n_bytes = max(1, (len(word_hex) + 1) // 2)
            for shift in range((n_bytes - 1) * 8, -1, -8):
                b = (val >> shift) & 0xFF
                raw_bytes.append(b)
        # Strip trailing null padding
        while raw_bytes and raw_bytes[-1] == 0:
            raw_bytes.pop()
        raw_bytes.append(0)  # re-add one null terminator
        c_sym, decl = decode_sjis_sym(sym, raw_bytes)
        decls.append((m.start(), decl))

    decls.sort(key=lambda x: x[0])
    return [d for _, d in decls]


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    if len(sys.argv) < 2:
        print("Usage: evt_decompile.py <file.s> [-o output.c] [script_name ...]")
        print("       evt_decompile.py --snippet [file.s]  (reads .obj block from stdin or file)")
        sys.exit(1)

    args = sys.argv[1:]

    # --snippet mode: decompile a single .obj block from stdin or a file argument
    if args[0] == "--snippet":
        if len(args) >= 2:
            with open(args[1], "r", encoding="utf-8") as f:
                snippet = f.read()
        else:
            snippet = sys.stdin.read()
        all_objects = parse_obj_blocks(snippet)
        if not all_objects:
            print("// No .obj blocks found in snippet.", file=sys.stderr)
            sys.exit(1)
        for name, toks in all_objects.items():
            sys.stdout.buffer.write(decompile_script(name, toks).encode("utf-8"))
            sys.stdout.buffer.write(b"\n")
        return

    output_file = None
    if "-o" in args:
        idx = args.index("-o")
        output_file = args[idx + 1]
        args = args[:idx] + args[idx + 2:]

    asm_file   = args[0]
    filter_set = set(args[1:])

    with open(asm_file, "r", encoding="utf-8") as f:
        asm_text = f.read()

    all_objects = parse_obj_blocks(asm_text)
    evt_scripts = {
        name: toks for name, toks in all_objects.items()
        if is_evt_script(toks) and not name.startswith("gap_")
    }

    if filter_set:
        evt_scripts = {k: v for k, v in evt_scripts.items() if k in filter_set}

    if not evt_scripts:
        print("// No EVT scripts found.", file=sys.stderr)
        sys.exit(1)

    # Collect CALL function references for forward declarations
    func_refs = set()
    for toks in evt_scripts.values():
        i = 0
        while i < len(toks):
            if looks_like_evt_header(toks[i]):
                h    = int(toks[i], 16)
                opc  = h & 0xFFFF
                argc = (h >> 16) & 0xFFFF
                i += 1
                if opc == 0x5B and i < len(toks) and not toks[i].startswith("0x"):
                    func_refs.add(toks[i])
                i += argc
            else:
                i += 1

    out = ['#include "evt.h"\n']

    string_decls = extract_string_decls(asm_text)
    if string_decls:
        out.append("// String declarations")
        out.extend(string_decls)
        out.append("")

    if func_refs:
        out.append("// Forward declarations")
        for fn in sorted(func_refs):
            out.append(f"extern void {fn}(void);")
        out.append("")

    for name, toks in evt_scripts.items():
        out.append(decompile_script(name, toks))

    text = "\n".join(out)
    if output_file:
        with open(output_file, "w", encoding="utf-8") as f:
            f.write(text)
            f.write("\n")
        print(f"Written to {output_file}", file=sys.stderr)
    else:
        sys.stdout.buffer.write(text.encode("utf-8"))
        sys.stdout.buffer.write(b"\n")


if __name__ == "__main__":
    main()
