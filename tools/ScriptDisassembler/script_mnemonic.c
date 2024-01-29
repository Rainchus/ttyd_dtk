// Data types
#define EVT_HELPER_LW_BASE -30000000
#define EVT_HELPER_GW_BASE -50000000
#define EVT_HELPER_LF_BASE -70000000
#define EVT_HELPER_GF_BASE -90000000
#define EVT_HELPER_LSWF_BASE -110000000
#define EVT_HELPER_GSWF_BASE -130000000
#define EVT_HELPER_LSW_BASE -150000000
#define EVT_HELPER_GSW_BASE -170000000
#define EVT_HELPER_UW_BASE -190000000
#define EVT_HELPER_UF_BASE -210000000
#define EVT_HELPER_FLOAT_BASE -240000000
#define EVT_HELPER_POINTER_BASE -270000000
#define EVT_HELPER_POINTER_BASE_END -300000000

/*
    Opcodes
*/
enum EvtOpcode
{
/* 0x00 */ EVT_OPC_NEXT,
/* 0x01 */ EVT_OPC_END_SCRIPT,
/* 0x02 */ EVT_OPC_END_EVT,
/* 0x03 */ EVT_OPC_LBL,
/* 0x04 */ EVT_OPC_GOTO,
/* 0x05 */ EVT_OPC_DO,
/* 0x06 */ EVT_OPC_WHILE,
/* 0x07 */ EVT_OPC_DO_BREAK,
/* 0x08 */ EVT_OPC_DO_CONTINUE,
/* 0x09 */ EVT_OPC_WAIT_FRM,
/* 0x0A */ EVT_OPC_WAIT_MSEC,
/* 0x0B */ EVT_OPC_HALT,
/* 0x0C */ EVT_OPC_IF_STR_EQUAL,
/* 0x0D */ EVT_OPC_IF_STR_NOT_EQUAL,
/* 0x0E */ EVT_OPC_IF_STR_SMALL,
/* 0x0F */ EVT_OPC_IF_STR_LARGE,
/* 0x10 */ EVT_OPC_IF_STR_SMALL_EQUAL,
/* 0x11 */ EVT_OPC_IF_STR_LARGE_EQUAL,
/* 0x12 */ EVT_OPC_IFF_EQUAL,
/* 0x13 */ EVT_OPC_IFF_NOT_EQUAL,
/* 0x14 */ EVT_OPC_IFF_SMALL,
/* 0x15 */ EVT_OPC_IFF_LARGE,
/* 0x16 */ EVT_OPC_IFF_SMALL_EQUAL,
/* 0x17 */ EVT_OPC_IFF_LARGE_EQUAL,
/* 0x18 */ EVT_OPC_IF_EQUAL,
/* 0x19 */ EVT_OPC_IF_NOT_EQUAL,
/* 0x1A */ EVT_OPC_IF_SMALL,
/* 0x1B */ EVT_OPC_IF_LARGE,
/* 0x1C */ EVT_OPC_IF_SMALL_EQUAL,
/* 0x1D */ EVT_OPC_IF_LARGE_EQUAL,
/* 0x1E */ EVT_OPC_IF_FLAG,
/* 0x1F */ EVT_OPC_IF_NOT_FLAG,
/* 0x20 */ EVT_OPC_ELSE,
/* 0x21 */ EVT_OPC_END_IF,
/* 0x22 */ EVT_OPC_SWITCH,
/* 0x23 */ EVT_OPC_SWITCHI,
/* 0x24 */ EVT_OPC_CASE_EQUAL,
/* 0x25 */ EVT_OPC_CASE_NOT_EQUAL,
/* 0x26 */ EVT_OPC_CASE_SMALL,
/* 0x27 */ EVT_OPC_CASE_LARGE,
/* 0x28 */ EVT_OPC_CASE_SMALL_EQUAL,
/* 0x29 */ EVT_OPC_CASE_LARGE_EQUAL,
/* 0x2A */ EVT_OPC_CASE_ETC,
/* 0x2B */ EVT_OPC_CASE_OR,
/* 0x2C */ EVT_OPC_CASE_AND,
/* 0x2D */ EVT_OPC_CASE_FLAG,
/* 0x2E */ EVT_OPC_CASE_END,
/* 0x2F */ EVT_OPC_CASE_BETWEEN,
/* 0x30 */ EVT_OPC_SWITCH_BREAK,
/* 0x31 */ EVT_OPC_END_SWITCH,
/* 0x32 */ EVT_OPC_SET,
/* 0x33 */ EVT_OPC_SETI,
/* 0x34 */ EVT_OPC_SETF,
/* 0x35 */ EVT_OPC_ADD,
/* 0x36 */ EVT_OPC_SUB,
/* 0x37 */ EVT_OPC_MUL,
/* 0x38 */ EVT_OPC_DIV,
/* 0x39 */ EVT_OPC_MOD,
/* 0x3A */ EVT_OPC_ADDF,
/* 0x3B */ EVT_OPC_SUBF,
/* 0x3C */ EVT_OPC_MULF,
/* 0x3D */ EVT_OPC_DIVF,
/* 0x3E */ EVT_OPC_SET_READ,
/* 0x3F */ EVT_OPC_READ,
/* 0x40 */ EVT_OPC_READ2,
/* 0x41 */ EVT_OPC_READ3,
/* 0x42 */ EVT_OPC_READ4,
/* 0x43 */ EVT_OPC_READ_N,
/* 0x44 */ EVT_OPC_SET_READF,
/* 0x45 */ EVT_OPC_READF,
/* 0x46 */ EVT_OPC_READF2,
/* 0x47 */ EVT_OPC_READF3,
/* 0x48 */ EVT_OPC_READF4,
/* 0x49 */ EVT_OPC_READF_N,
/* 0x4A */ EVT_OPC_CLAMP_INT,
/* 0x4B */ EVT_OPC_SET_USER_WRK,
/* 0x4C */ EVT_OPC_SET_USER_FLG,
/* 0x4D */ EVT_OPC_ALLOC_USER_WRK,
/* 0x4E */ EVT_OPC_AND,
/* 0x4F */ EVT_OPC_ANDI,
/* 0x50 */ EVT_OPC_OR,
/* 0x51 */ EVT_OPC_ORI,
/* 0x52 */ EVT_OPC_SET_FRAME_FROM_MSEC,
/* 0x53 */ EVT_OPC_SET_MSEC_FROM_FRAME,
/* 0x54 */ EVT_OPC_SET_RAM,
/* 0x55 */ EVT_OPC_SET_RAMF,
/* 0x56 */ EVT_OPC_GET_RAM,
/* 0x57 */ EVT_OPC_GET_RAMF,
/* 0x58 */ EVT_OPC_SETR,
/* 0x59 */ EVT_OPC_SETRF,
/* 0x5A */ EVT_OPC_GETR,
/* 0x5B */ EVT_OPC_GETRF,
/* 0x5C */ EVT_OPC_USER_FUNC,
/* 0x5D */ EVT_OPC_RUN_EVT,
/* 0x5E */ EVT_OPC_RUN_EVT_ID,
/* 0x5F */ EVT_OPC_RUN_CHILD_EVT,
/* 0x60 */ EVT_OPC_DELETE_EVT,
/* 0x61 */ EVT_OPC_RESTART_EVT,
/* 0x62 */ EVT_OPC_SET_PRI,
/* 0x63 */ EVT_OPC_SET_SPD,
/* 0x64 */ EVT_OPC_SET_TYPE,
/* 0x65 */ EVT_OPC_STOP_ALL,
/* 0x66 */ EVT_OPC_START_ALL,
/* 0x67 */ EVT_OPC_STOP_OTHER,
/* 0x68 */ EVT_OPC_START_OTHER,
/* 0x69 */ EVT_OPC_STOP_ID,
/* 0x6A */ EVT_OPC_START_ID,
/* 0x6B */ EVT_OPC_CHK_EVT,
/* 0x6C */ EVT_OPC_INLINE_EVT,
/* 0x6D */ EVT_OPC_INLINE_EVT_ID,
/* 0x6E */ EVT_OPC_END_INLINE,
/* 0x6F */ EVT_OPC_BROTHER_EVT,
/* 0x70 */ EVT_OPC_BROTHER_EVT_ID,
/* 0x71 */ EVT_OPC_END_BROTHER,
/* 0x72 */ EVT_OPC_DEBUG_PUT_MSG,
/* 0x73 */ EVT_OPC_DEBUG_MSG_CLEAR,
/* 0x74 */ EVT_OPC_DEBUG_PUT_REG,
/* 0x75 */ EVT_OPC_DEBUG_NAME,
/* 0x76 */ EVT_OPC_DEBUG_REM,
/* 0x77 */ EVT_OPC_DEBUG_BP
};

typedef struct OpcodeIDAndString {
    unsigned short opcode;
    short tabIncrement;
    char mnemonicString[32];
} OpcodeIDAndString;

//if number is 1, increment tab after drawing string
//if number is -1, decrement tab total before drawing string
OpcodeIDAndString mnemonicStrings[] = {
    {0, 0, ""},
    {1, 0, "end"},
    {2, 0, "return"},
    {3, 0, "<label number>:"},
    {4, 0, "goto"},
    {5, 1, "loop"},
    {6, -1, "end_loop"},
    {7, 0, "loop_break"},
    {8, 0, "loop_continue"},
    {9, 0, "wait_frames"},
    {10, 0, "wait_ms"},
    {11, 0, "wait_until"},
    {12, 1, "if_string_eq"},
    {13, 1, "if_string_ne"},
    {14, 1, "if_string_lt"},
    {15, 1, "if_string_gt"},
    {16, 1, "if_string_le"},
    {17, 1, "if_string_ge"},
    {18, 1, "if_float_eq"},
    {19, 1, "if_float_ne"},
    {20, 1, "if_float_lt"},
    {21, 1, "if_float_gt"},
    {22, 1, "if_float_le"},
    {23, 1, "if_float_ge"},
    {24, 1, "if_int_eq"},
    {25, 1, "if_int_ne"},
    {26, 1, "if_int_lt"},
    {27, 1, "if_int_gt"},
    {28, 1, "if_int_le"},
    {29, 1, "if_int_ge"},
    {30, 1, "if_bits_set"},
    {31, 1, "if_bits_clear"},
    {32, -1, "else"},
    {33, -1, "endif"},
    {34, 1, "switchi"},
    {35, 1, "switchr"}, //unused
    {36, 0, "case_int_eq"},
    {37, 0, "case_int_ne"},
    {38, 0, "case_int_lt"},
    {39, 0, "case_int_gt"},
    {40, 0, "case_int_le"},
    {41, 0, "case_int_ge"},
    {42, 0, "case_default"},
    {43, 0, "case_int_eq_any"},
    {44, 0, "case_int_ne_all"},
    {45, 0, "case_bits_set"},
    {46, 0, "end_multi_case"},
    {47, 0, "case_int_range"},
    {48, 0, "switch_break"},
    {49, -1, "end_switch"},
    {50, 0, "setii"},
    {51, 0, "setir"},
    {52, 0, "setff"},
    {53, 0, "addi"},
    {54, 0, "subi"},
    {55, 0, "muli"},
    {56, 0, "divi"},
    {57, 0, "modi"},
    {58, 0, "addf"},
    {59, 0, "subf"},
    {60, 0, "mulf"},
    {61, 0, "divf"},
    {62, 0, "mo_set_base_int"},
    {63, 0, "mo_read_int"},
    {64, 0, "mo_read_int2"},
    {65, 0, "mo_read_int3"},
    {66, 0, "mo_read_int4"},
    {67, 0, "mo_read_int_indexed"},
    {68, 0, "mo_set_base_float"},
    {69, 0, "mo_read_float"},
    {70, 0, "mo_read_float2"},
    {71, 0, "mo_read_float3"},
    {72, 0, "mo_read_float4"},
    {73, 0, "mo_read_float_indexed"},
    {74, 0, "set_uw_base"},
    {75, 0, "set_uf_base"},
    {76, 0, "alloc_uw"},
    {77, 0, "andi"},
    {78, 0, "andr"},
    {79, 0, "ori"},
    {80, 0, "orr"},
    {81, 0, "cvt_ms_f"},
    {82, 0, "cvt_f_ms"},
    {83, 0, "storei"},
    {84, 0, "storef"},
    {85, 0, "loadi"},
    {86, 0, "loadf"},
    {87, 0, "storei_ind"},
    {88, 0, "storef_ind"},
    {89, 0, "loadi_ind"},
    {90, 0, "loadf_ind"},
    {91, 0, "callc"},
    {92, 0, "callsa"},
    {93, 0, "callsa_tid"},
    {94, 0, "callss"},
    {95, 0, "stop_tid"},
    {96, 0, "jump"},
    {97, 0, "set_thread_priority"},
    {98, 0, "set_thread_quantum"},
    {99, 0, "set_thread_type_mask"},
    {100, 0, "suspend_types"},
    {101, 0, "resume_types"},
    {102, 0, "suspend_types_other"},
    {103, 0, "resume_types_other"},
    {104, 0, "suspend_tid"},
    {105, 0, "resume_tid"},
    {106, 0, "check_thread_running"},
    {107, 1, "begin_thread"},
    {108, 1, "begin_thread_tid"},
    {109, -1, "end_thread"},
    {110, 1, "begin_child_thread"},
    {111, 1, "begin_child_thread_tid"},
    {112, -1, "end_child_thread"},
    {113, 0, "debug_put_msg"}, //original name
    {114, 0, "debug_put_reg"}, //original name
    {115, 0, "dbg_expr_to_string"},
    {116, 0, "debug_name"}, //original name
    {117, 0, "debug_rem"}, //original name
    {118, 0, "debug_bp"} //original name
};

OpcodeIDAndString dtk_mnemonic[] = {
    {0, 0, ""},
    {1, 0, "END"},
    {2, 0, "RETURN"},
    {3, 0, "LABEL"},
    {4, 0, "GOTO"},
    {5, 1, "LOOP"},
    {6, -1, "END_LOOP"},
    {7, 0, "BREAK_LOOP"},
    {8, 0, "CONTINUE_LOOP"},
    {9, 0, "WAIT_FRAMES"},
    {10, 0, "WAIT_MS"},
    {11, 0, "WAIT_UNTIL"},
    {12, 1, "IF_STR_EQ"},
    {13, 1, "IF_STR_NE"},
    {14, 1, "IF_STR_LT"},
    {15, 1, "IF_STR_GT"},
    {16, 1, "IF_STR_LT_OR_EQ"},
    {17, 1, "IF_STR_GT_OR_EQ"},
    {18, 1, "IF_FLOAT_EQ"},
    {19, 1, "IF_FLOAT_NE"},
    {20, 1, "IF_FLOAT_LT"},
    {21, 1, "IF_FLOAT_GT"},
    {22, 1, "IF_FLOAT_LT_OR_EQ"},
    {23, 1, "IF_FLOAT_GT_OR_EQ"},
    {24, 1, "IF_INT_EQ"},
    {25, 1, "IF_INT_NE"},
    {26, 1, "IF_INT_LT"},
    {27, 1, "IF_INT_GT"},
    {28, 1, "IF_INT_LT_OR_EQ"},
    {29, 1, "IF_INT_GT_OR_EQ"},
    {30, 1, "IF_BITS_SET"},
    {31, 1, "IF_BITS_CLEAR"},
    {32, -1, "ELSE"},
    {33, -1, "END_IF"},
    {34, 1, "SWITCH"},
    {35, 1, "SWITCH_R"}, //unused
    {36, 1, "CASE_INT_EQ"},
    {37, 1, "CASE_INT_NE"},
    {38, 1, "CASE_INT_LT"},
    {39, 1, "CASE_INT_GT"},
    {40, 1, "CASE_INT_LT_OR_EQ"},
    {41, 1, "CASE_INT_GT_OR_EQ"},
    {42, 1, "CASE_DEFAULT"},
    {43, 1, "CASE_OR_EQ"},
    {44, 1, "CASE_AND_EQ"},
    {45, 1, "CASE_FLAG"},
    {46, 1, "CASE_END"},
    {47, 1, "CASE_BETWEEN"},
    {48, 0, "BREAK_SWITCH"},
    {49, -1, "END_SWITCH"},
    {50, 0, "SET"},
    {51, 0, "SET_RAW"},
    {52, 0, "SET_FLOAT"},
    {53, 0, "ADD"},
    {54, 0, "SUB"},
    {55, 0, "MUL"},
    {56, 0, "DIV"},
    {57, 0, "MOD"},
    {58, 0, "ADDF"},
    {59, 0, "SUBF"},
    {60, 0, "MULF"},
    {61, 0, "DIVF"},
    {62, 0, "MO_SET_BASE_INT"},
    {63, 0, "MO_READ_INT"},
    {64, 0, "MO_READ_INT2"},
    {65, 0, "MO_READ_INT3"},
    {66, 0, "MO_READ_INT4"},
    {67, 0, "MO_READ_INT_INDEXED"},
    {68, 0, "MO_SET_BASE_FLOAT"},
    {69, 0, "MO_READ_FLOAT"},
    {70, 0, "MO_READ_FLOAT2"},
    {71, 0, "MO_READ_FLOAT3"},
    {72, 0, "MO_READ_FLOAT4"},
    {73, 0, "MO_READ_FLOAT_INDEXED"},
    {74, 0, "SET_UW_BASE"},
    {75, 0, "SET_UF_BASE"},
    {76, 0, "SET_ALLOC_UW"},
    {77, 0, "ANDI"},
    {78, 0, "ANDI_RAW"},
    {79, 0, "ORI"},
    {80, 0, "ORI_RAW"},
    {81, 0, "CVT_MS_F"},
    {82, 0, "CVT_F_MS"},
    {83, 0, "STORE_INT"},
    {84, 0, "STORE_FLOAT"},
    {85, 0, "GET_INT"},
    {86, 0, "GET_FLOAT"},
    {87, 0, "STORE_INT_IND"},
    {88, 0, "STORE_FLOAT_IND"},
    {89, 0, "LOAD_INT_IND"},
    {90, 0, "LOAD_FLOAT_IND"},
    {91, 0, "CALL"},
    {92, 0, "SCRIPT_ASYNC"},
    {93, 0, "SCRIPT_ASYNC_TID"},
    {94, 0, "SCRIPT_SYNC"},
    {95, 0, "STOP_TID"},
    {96, 0, "JUMP"},
    {97, 0, "SET_THREAD_PRIORITY"},
    {98, 0, "SET_SPD"},
    {99, 0, "SET_MASK"},
    {100, 0, "SUSPEND_TYPES"},
    {101, 0, "RESUME_TYPES"},
    {102, 0, "SUSPEND_TYPES_OTHER"},
    {103, 0, "RESUME_TYPES_OTHER"},
    {104, 0, "SUSPEND_TID"},
    {105, 0, "RESUME_TID"},
    {106, 0, "CHECK_THREAD_RUNNING"},
    {107, 1, "BEGIN_THREAD"},
    {108, 1, "BEGIN_THREAD_TID"},
    {109, -1, "END_THREAD"},
    {110, 1, "BEGIN_CHILD_THREAD"},
    {111, 1, "BEGIN_CHILD_THREAD_TID"},
    {112, -1, "END_CHILD_THREAD"},
    {113, 0, "debug_put_msg"}, //original name
    {114, 0, "debug_put_reg"}, //original name
    {115, 0, "dbg_expr_to_string"},
    {116, 0, "debug_name"}, //original name
    {117, 0, "debug_rem"}, //original name
    {118, 0, "debug_bp"} //original name
};

/****** EXPRESSIONS ***************************************************************************************************/

/// Expressions in EVT instructions should be one of the following types:
/// - Integer literals (as-is, s32)
/// - Float literals (EVT_FLOAT) - cast to int where a float is not accepted
/// - Pointers, string literals (EVT_PTR)
/// - Variables (LW, GW, LSW, GSW, UW)
/// - Flags (LF, GF, LSWF, GSWF, UF)
/// This is implemented in `evt_get_variable` and `evt_get_float_variable`.

/// Decimal constant.
/// Despite the name, "floats" are actually stored as fixed-point values.

#define EVT_LOCAL_VAR_CUTOFF     -20000000
#define EVT_LOCAL_VAR_OFFSET      30000000
#define EVT_MAP_VAR_CUTOFF       -40000000
#define EVT_MAP_VAR_OFFSET        50000000
#define EVT_LOCAL_FLAG_CUTOFF    -60000000
#define EVT_LOCAL_FLAG_OFFSET     70000000
#define EVT_MAP_FLAG_CUTOFF      -80000000
#define EVT_MAP_FLAG_OFFSET       90000000
#define EVT_AREA_FLAG_CUTOFF    -100000000
#define EVT_AREA_FLAG_OFFSET     110000000
#define EVT_GAME_FLAG_CUTOFF    -120000000
#define EVT_GAME_FLAG_OFFSET     130000000
#define EVT_AREA_BYTE_CUTOFF    -140000000
#define EVT_AREA_BYTE_OFFSET     150000000
#define EVT_GAME_BYTE_CUTOFF    -160000000
#define EVT_GAME_BYTE_OFFSET     170000000
#define EVT_ARRAY_VAR_CUTOFF    -180000000
#define EVT_ARRAY_VAR_OFFSET     190000000
#define EVT_ARRAY_FLAG_CUTOFF   -200000000
#define EVT_ARRAY_FLAG_OFFSET    210000000
#define EVT_FIXED_CUTOFF        -220000000
#define EVT_FIXED_OFFSET         240000000
#define EVT_IGNORE_ARG          -250000000 // used by a couple functions to selectively ignore args
#define EVT_LIMIT               -270000000 // TODO better name

 // This fixes an issue with fixed point numbers not being correct. Potentially a truncation vs round difference.
#define EVT_FLOAT_ROUND(x) ((x) >=0 ? (f64)((x) + 0.9) : (f64)(x))
#define EVT_FLOAT(DOUBLE)  ((Bytecode)EVT_FLOAT_ROUND(((DOUBLE) * 1024.0f)) - EVT_FIXED_OFFSET)

/// Progammatically converts EVT_FLOAT --> f32
#define EVT_FIXED_TO_FLOAT(x) ({f32 var = (x) + EVT_FIXED_OFFSET; var /= 1024.0f; var;})

/// Progammatically converts f32 --> EVT_FLOAT
#define EVT_FLOAT_TO_FIXED(x) (((x) * 1024.0f) + -EVT_FIXED_OFFSET)

/// Address/pointer constant.
#define EVT_PTR(sym) ((Bytecode) &(sym))

/// Local Word. A variable local to the current thread.
/// LWs are copied to any threads created by this one (EVT_EXEC, EVT_EXEC_WAIT, EVT_THREAD, EVT_CHILD_THREAD).
/// Additionally, EVT_EXEC_WAIT copies LWs back from the spawned thread when it completes.
///
/// Range: `0 <= v < 0x10`
#define LocalVar(INDEX) ((INDEX) - EVT_LOCAL_VAR_OFFSET)

/// Global Word. A variable global to all threads.
/// Cleared upon entering a new map.
///
/// Range: `0 <= v < 0x10`
#define MapVar(INDEX) ((INDEX) - EVT_MAP_VAR_OFFSET)

/// Local Flag. A boolean variable local to the current thread.
/// LFs are copied to any threads created by this one (EVT_EXEC, EVT_EXEC_WAIT, EVT_THREAD, EVT_CHILD_THREAD).
/// Additionally, EVT_EXEC_WAIT copies LFs back from the spawned thread when it completes.
///
/// Range: `0 <= v < 0x60`
#define LocalFlag(INDEX) ((INDEX) - EVT_LOCAL_FLAG_OFFSET)

/// Global Flag. A boolean variable global to all threads.
/// Cleared upon entering a new map.
///
/// Range: `0 <= v < 0x60`
#define MapFlag(INDEX) ((INDEX) - EVT_MAP_FLAG_OFFSET)

/// Local Save World Flag. A boolean variable local to the current world area, saved in the savefile.
/// Cleared upon entering a new world area.
///
/// Used to track whether items that respawn, such as coins, Goomnuts, or Koopa Leaves, have been collected.
///
/// Range: `0 <= v < 0x100`
#define AreaFlag(INDEX) ((INDEX) - EVT_AREA_FLAG_OFFSET)

/// Global Save World Flag. A boolean variable saved in the savefile.
///
/// Used to track whether badges, items, etc. have been collected or whether NPCs have been interacted with.
///
/// Range: `0 <= v < 0x800`
#define GameFlag(INDEX) ((INDEX) - EVT_GAME_FLAG_OFFSET)

/// Local Saved **Byte**. A variable local to the current world area, saved in the savefile.
/// Cleared upon a new world area.
///
/// Rarely used. Most common use is for NPCs with dialogue that changes depending on the number of times you have
/// interacted with them in their 'recent memory' (i.e. until you leave the area).
///
/// Range: `0 <= v < 0x10`
#define AreaByte(INDEX) ((INDEX) - EVT_AREA_BYTE_OFFSET)

/// Global Saved **Byte**. A variable saved in the save file.
///
/// Used for almost all savefile state.
#define GameByte(INDEX) ((INDEX) - EVT_GAME_BYTE_OFFSET)

/// User Word. A variable stored within the current thread's array.
/// You can load an array with EVT_USE_ARRAY or temporarily allocate one with EVT_MALLOC_ARRAY, then get/set values with
/// the `ArrayVar(index)` macro.
///
/// Range: `0 <= v`
#define ArrayVar(INDEX) ((INDEX) - EVT_ARRAY_VAR_OFFSET)

/// User Flag. A boolean variable stored within the current thread's flag array.
/// The flag array is distinct from the word array (unlike EVT_USE_BUF and EVT_USE_FBUF).
///
/// Range: `0 <= v`
#define ArrayFlag(INDEX) ((INDEX) - EVT_ARRAY_FLAG_OFFSET)

/// An entity index. Entities are assigned indices in the order they are created with EVT_CALL(MakeEntity, ...).
/// Supported in EVT_BIND_TRIGGER and EVT_BIND_PADLOCK only.
#define EVT_ENTITY_ID_BIT 0x4000
#define EVT_ENTITY_INDEX(entityIndex) ((entityIndex) + EVT_ENTITY_ID_BIT)

// inverse macros for obtaining the index of a variable from its encoded form
#define EVT_INDEX_OF_LOCAL_VAR(v)   ((v) + EVT_LOCAL_VAR_OFFSET)
#define EVT_INDEX_OF_LOCAL_FLAG(v)  ((v) + EVT_LOCAL_FLAG_OFFSET)
#define EVT_INDEX_OF_MAP_VAR(v)     ((v) + EVT_MAP_VAR_OFFSET)
#define EVT_INDEX_OF_MAP_FLAG(v)    ((v) + EVT_MAP_FLAG_OFFSET)
#define EVT_INDEX_OF_AREA_FLAG(v)   ((v) + EVT_AREA_FLAG_OFFSET)
#define EVT_INDEX_OF_AREA_BYTE(v)   ((v) + EVT_AREA_BYTE_OFFSET)
#define EVT_INDEX_OF_GAME_FLAG(v)   ((v) + EVT_GAME_FLAG_OFFSET)
#define EVT_INDEX_OF_GAME_BYTE(v)   ((v) + EVT_GAME_BYTE_OFFSET)
#define EVT_INDEX_OF_ARRAY_FLAG(v)  ((v) + EVT_ARRAY_FLAG_OFFSET)
#define EVT_INDEX_OF_ARRAY_VAR(v)   ((v) + EVT_ARRAY_VAR_OFFSET)

// shorthand names for LocalVar
#define LVar0 LocalVar(0)
#define LVar1 LocalVar(1)
#define LVar2 LocalVar(2)
#define LVar3 LocalVar(3)
#define LVar4 LocalVar(4)
#define LVar5 LocalVar(5)
#define LVar6 LocalVar(6)
#define LVar7 LocalVar(7)
#define LVar8 LocalVar(8)
#define LVar9 LocalVar(9)
#define LVarA LocalVar(10)
#define LVarB LocalVar(11)
#define LVarC LocalVar(12)
#define LVarD LocalVar(13)
#define LVarE LocalVar(14)
#define LVarF LocalVar(15)

// shorthand names for common LocalFlags
// these actually run all the way up to LocalFlag(96), but nothing past 15 is ever used
#define LFlag0 LocalFlag(0)
#define LFlag1 LocalFlag(1)
#define LFlag2 LocalFlag(2)
#define LFlag3 LocalFlag(3)
#define LFlag4 LocalFlag(4)
#define LFlag5 LocalFlag(5)
#define LFlag6 LocalFlag(6)
#define LFlag7 LocalFlag(7)
#define LFlag8 LocalFlag(8)
#define LFlag9 LocalFlag(9)
#define LFlagA LocalFlag(10)
#define LFlagB LocalFlag(11)
#define LFlagC LocalFlag(12)
#define LFlagD LocalFlag(13)
#define LFlagE LocalFlag(14)
#define LFlagF LocalFlag(15)