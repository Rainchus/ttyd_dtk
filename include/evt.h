#ifndef _EVT_H_
#define _EVT_H_

typedef long Bytecode;
typedef Bytecode EvtScript[];

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

#define ARRAY_COUNT(arr) (sizeof(arr) / sizeof(arr[0]))

#define EVT_CMD(opcode, argv...) \
    (((sizeof((Bytecode[]){argv})/sizeof(Bytecode)) << 16) | opcode), \
    ##argv

#define END                             EVT_CMD(EVT_OPC_END_SCRIPT),
#define RETURN                          EVT_CMD(EVT_OPC_END_EVT),
#define JUMP(EVT_SOURCE)                EVT_CMD(EVT_OPC_GOTO, EVT_SOURCE),

#define LABEL(LABEL_ID)                 EVT_CMD(EVT_OPC_LBL, LABEL_ID),
#define GOTO(LABEL_ID)                  EVT_CMD(EVT_OPC_GOTO, LABEL_ID),

#define LOOP(LOOP_COUNT)                EVT_CMD(EVT_OPC_DO, LOOP_COUNT),
#define END_LOOP                        EVT_CMD(EVT_OPC_WHILE),
#define BREAK_LOOP                      EVT_CMD(EVT_OPC_DO_BREAK),
#define CONTINUE_LOOP                   EVT_CMD(EVT_OPC_DO_CONTINUE),

#define WAIT_FRAMES(FRAMES)             EVT_CMD(EVT_OPC_WAIT_FRM, FRAMES),
#define WAIT_MS(MILLISECONDS)           EVT_CMD(EVT_OPC_WAIT_MSEC, MILLISECONDS),

// //stall thread until expression is false
#define WAIT_UNTIL(expr)                EVT_CMD(EVT_OPC_HALT, expr),

#define IF_STR_EQ(var1, var2)           EVT_CMD(EVT_OPC_IF_STR_EQUAL, var1, var2,),
#define IF_STR_NE(var1, var2)           EVT_CMD(EVT_OPC_IF_STR_NOT_EQUAL, var1, var2),
#define IF_STR_LT(var1, var2)           EVT_CMD(EVT_OPC_IF_STR_SMALL, var1, var2),
#define IF_STR_GT(var1, var2)           EVT_CMD(EVT_OPC_IF_STR_LARGE, var1, var2),
#define IF_STR_LT_OR_EQ(var1, var2)     EVT_CMD(EVT_OPC_IF_STR_SMALL_EQUAL, var1, var2),
#define IF_STR_GT_OR_EQ(var1, var2)     EVT_CMD(EVT_OPC_IF_STR_LARGE_EQUAL, var1, var2),

#define IF_FLOAT_EQ(var1, var2)         EVT_CMD(EVT_OPC_IFF_EQUAL, var1, var2),
#define IF_FLOAT_NE(var1, var2)         EVT_CMD(EVT_OPC_IFF_NOT_EQUAL, var1, var2),
#define IF_FLOAT_LT(var1, var2)         EVT_CMD(EVT_OPC_IFF_SMALL, var1, var2),
#define IF_FLOAT_GT(var1, var2)         EVT_CMD(EVT_OPC_IFF_LARGE, var1, var2),
#define IF_FLOAT_LT_OR_EQ(var1, var2)   EVT_CMD(EVT_OPC_IFF_SMALL_EQUAL, var1, var2),
#define IF_FLOAT_GT_OR_EQ(var1, var2)   EVT_CMD(EVT_OPC_IFF_LARGE_EQUAL, var1, var2),

#define IF_INT_EQ(var1, var2)           EVT_CMD(EVT_OPC_IF_EQUAL, var1, var2),
#define IF_INT_NE(var1, var2)           EVT_CMD(EVT_OPC_IF_NOT_EQUAL, var1, var2),
#define IF_INT_LT(var1, var2)           EVT_CMD(EVT_OPC_IF_SMALL, var1, var2),
#define IF_INT_GT(var1, var2)           EVT_CMD(EVT_OPC_IF_LARGE, var1, var2),
#define IF_INT_LT_OR_EQ(var1, var2)     EVT_CMD(EVT_OPC_IF_SMALL_EQUAL, var1, var2),
#define IF_INT_GT_OR_EQ(var1, var2)     EVT_CMD(EVT_OPC_IF_LARGE_EQUAL, var1, var2),

#define IF_BITS_SET(var1, var2)         EVT_CMD(EVT_OPC_IF_FLAG, var1, var2),
#define IF_BITS_CLEAR(var1, var2)       EVT_CMD(EVT_OPC_IF_NOT_FLAG, var1, var2),

#define ELSE                            EVT_CMD(EVT_OPC_ELSE),
#define END_IF                          EVT_CMD(EVT_OPC_END_IF),
#define SWITCH(expr)                    EVT_CMD(EVT_OPC_SWITCH, expr),
#define SWITCH_R(expr)                  EVT_CMD(EVT_OPC_SWITCHR, expr),
#define CASE_INT_EQ(expr)               EVT_CMD(EVT_OPC_CASE_EQUAL, expr),
#define CASE_INT_NE(expr)               EVT_CMD(EVT_OPC_CASE_NOT_EQUAL, expr),
#define CASE_INT_LT(expr)               EVT_CMD(EVT_OPC_CASE_SMALL, expr),
#define CASE_INT_GT(expr)               EVT_CMD(EVT_OPC_CASE_LARGE, expr),
#define CASE_INT_LT_OR_EQ(expr)         EVT_CMD(EVT_OPC_CASE_SMALL_EQUAL, expr),
#define CASE_INT_GT_OR_EQ(expr)         EVT_CMD(EVT_OPC_CASE_LARGE_EQUAL, expr),
#define CASE_DEFAULT                    EVT_CMD(EVT_OPC_CASE_ETC),
#define CASE_OR_EQ(val)                 EVT_CMD(EVT_OPC_CASE_OR, val),
#define CASE_AND_EQ(val)                EVT_CMD(EVT_OPC_CASE_AND, val),
#define CASE_FLAG(val)                  EVT_CMD(EVT_OPC_CASE_FLAG, val),
#define CASE_END                        EVT_CMD(EVT_OPC_CASE_END)
#define CASE_BETWEEN(LOWER, UPPER)      EVT_CMD(EVT_OPC_CASE_BETWEEN, LOWER, UPPER),
#define BREAK_SWITCH                    EVT_CMD(EVT_OPC_SWITCH_BREAK)
#define END_SWITCH                      EVT_CMD(EVT_OPC_END_SWITCH)

#define SET(expr1, expr2)               EVT_CMD(2, EVT_OPC_SET, expr1, expr2),
#define SET_RAW(expr1, expr2)           EVT_CMD(2, EVT_OPC_SETI, expr1, expr2),
#define SET_FLOAT(expr1, expr2)         EVT_CMD(2, EVT_OPC_SETF, expr1, expr2),

// //int expressions
#define ADD(expr1, expr2)               EVT_CMD(EVT_OPC_ADD, expr1, expr2),
#define SUB(expr1, expr2)               EVT_CMD(EVT_OPC_SUB, expr1, expr2),
#define MUL(expr1, expr2)               EVT_CMD(EVT_OPC_MUL, expr1, expr2),
#define DIV(expr1, expr2)               EVT_CMD(EVT_OPC_DIV, expr1, expr2),
#define MOD(expr1, expr2)               EVT_CMD(EVT_OPC_MOD, expr1, expr2),

// //float expressions
#define ADDF(expr1, expr2)              EVT_CMD(EVT_OPC_ADDF, expr1, expr2),
#define SUBF(expr1, expr2)              EVT_CMD(EVT_OPC_SUBF, expr1, expr2),
#define MULF(expr1, expr2)              EVT_CMD(EVT_OPC_MULF, expr1, expr2),
#define DIVF(expr1, expr2)              EVT_CMD(EVT_OPC_DIVF, expr1, expr2),


#define MO_SET_BASE_INT(ptr)            EVT_CMD(EVT_OPC_SET_READ, ptr),
#define MO_READ_INT(expr)               EVT_CMD(EVT_OPC_READ, expr),
#define MO_READ_INT2(expr)              EVT_CMD(EVT_OPC_READ2, expr),
#define MO_READ_INT3(expr)              EVT_CMD(EVT_OPC_READ3, expr),
#define MO_READ_INT4(expr)              EVT_CMD(EVT_OPC_READ4, expr), 
#define MO_READ_INT_INDEXED(expr1, expr2)   EVT_CMD(EVT_OPC_READ_N, expr, expr2),

#define MO_SET_BASE_FLOAT(ptr)            EVT_CMD(EVT_OPC_SET_READF, ptr),
#define MO_READ_FLOAT(expr)               EVT_CMD(EVT_OPC_READF, expr),
#define MO_READ_FLOAT2(expr)              EVT_CMD(EVT_OPC_READF2, expr),
#define MO_READ_FLOAT3(expr)              EVT_CMD(EVT_OPC_READF3, expr),
#define MO_READ_FLOAT4(expr)              EVT_CMD(EVT_OPC_READF4, expr),
#define MO_READ_FLOAT_INDEXED(expr1, expr2)   EVT_CMD(EVT_OPC_READF_N, expr, expr2),

// //User Work and User Flag base
#define SET_UW_BASE(expr)                   EVT_CMD(EVT_OPC_SET_USER_WRK, expr),
#define SET_UF_BASE(expr)                   EVT_CMD(EVT_OPC_SET_USER_FLG, expr),

#define SET_ALLOC_UW(val, expr)             EVT_CMD(EVT_OPC_ALLOC_USER_WRK, expr),

// //bitwise operations
#define ANDI(expr, val)                     EVT_CMD(EVT_OPC_AND, expr, val),
#define ANDI_RAW(expr, rawVal)              EVT_CMD(EVT_OPC_ANDI, expr, rawVal),
#define ORI(expr, val)                       EVT_CMD(EVT_OPC_OR, expr, val),
#define ORI_RAW(expr, rawVal)                EVT_CMD(EVT_OPC_ORI, expr, rawVal),

//time conversion opcodes
//(ms to frame count)
#define CVT_MS_F(expr, ms)                  EVT_CMD(EVT_OPC_SET_FRAME_FROM_MSEC, expr, ms),
//(frame count to ms)
#define CVT_F_MS(expr, frameCount)          EVT_CMD(EVT_OPC_SET_MSEC_FROM_FRAME, expr, frameCount),

// //ptr stuff
#define STORE_INT(val, expr)                EVT_CMD(EVT_OPC_SET_RAM, val, expr),
#define STORE_FLOAT(val, expr)              EVT_CMD(EVT_OPC_SET_RAMF, val, expr),
#define GET_INT(val, expr)                  EVT_CMD(EVT_OPC_GET_RAM, val, expr),
#define GET_FLOAT(val, expr)                EVT_CMD(EVT_OPC_GET_RAMF, val, expr),

#define STORE_INT_IND(expr1, expr2)         EVT_CMD(EVT_OPC_SETR, expr1, expr2),
#define STORE_FLOAT_IND(expr1, expr2)       EVT_CMD(EVT_OPC_SETRF, expr1, expr2),

#define LOAD_INT_IND(expr1, expr2)          EVT_CMD(EVT_OPC_GETR, expr1, expr2),
#define LOAD_FLOAT_IND(expr1, expr2)        EVT_CMD(EVT_OPC_GETRF, expr1, expr2),

#define CALL(FUNC, ARGS...)         EVT_CMD(EVT_OPC_USER_FUNC, (Bytecode) FUNC, ##ARGS),
#define SCRIPT_ASYNC(script)            EVT_CMD(EVT_OPC_RUN_EVT, script),
#define SCRIPT_ASYNC_TID(script, expr)  EVT_CMD(EVT_OPC_RUN_EVT_ID, script, expr),
#define SCRIPT_SYNC(script)             EVT_CMD(EVT_OPC_RUN_CHILD_EVT, script),
#define STOP_TID(script)                EVT_CMD(EVT_OPC_DELETE_EVT, script),
#define JUMP(ptr)                       EVT_CMD(EVT_OPC_RESTART_EVT, ptr),
#define SET_THREAD_PRIORITY(priority)   EVT_CMD(EVT_OPC_SET_PRI, priority),
#define SET_SPD(timeScale)              EVT_CMD(EVT_OPC_SET_SPD, timeScale),
#define SET_MASK(mask)                  EVT_CMD(EVT_OPC_SET_TYPE, timeScale),

#define SUSPEND_TYPES(types)            EVT_CMD(EVT_OPC_STOP_ALL, types),
#define RESUME_TYPES(types)             EVT_CMD(EVT_OPC_START_ALL, types),
#define SUSPEND_TYPES_OTHER(types)      EVT_CMD(EVT_OPC_STOP_OTHER, types), 
#define RESUME_TYPES_OTHER(types)       EVT_CMD(EVT_OPC_START_OTHER, types), 
#define SUSPEND_TID(expr)               EVT_CMD(EVT_OPC_STOP_ID, expr),
#define RESUME_TID(expr)                EVT_CMD(EVT_OPC_START_ID, expr),
#define CHECK_THREAD_RUNNING(expr, ret) EVT_CMD(EVT_OPC_CHK_EVT, expr, ret,),

#define BEGIN_THREAD                    EVT_CMD(EVT_OPC_INLINE_EVT),
#define BEGIN_THREAD_TID(expr),         EVT_CMD(EVT_OPC_INLINE_EVT_ID, expr),
#define END_THREAD                      EVT_CMD(EVT_OPC_END_INLINE),
#define BEGIN_CHILD_THREAD              EVT_CMD(EVT_OPC_BROTHER_EVT),
#define BEGIN_CHILD_THREAD_TID(expr)    EVT_CMD(EVT_OPC_BROTHER_EVT_ID, expr),
#define END_CHILD_THREAD                EVT_CMD(EVT_OPC_END_BROTHER),

// Data types
#define EVTDAT_ADDR_MAX -290000000
#define EVTDAT_FLOAT_MAX -220000000
#define EVTDAT_UF_MAX -200000000
#define EVTDAT_UW_MAX -180000000
#define EVTDAT_GSW_MAX -160000000
#define EVTDAT_LSW_MAX -140000000
#define EVTDAT_GSWF_MAX -120000000
#define EVTDAT_LSWF_MAX -100000000
#define EVTDAT_GF_MAX -80000000
#define EVTDAT_LF_MAX -60000000
#define EVTDAT_GW_MAX -40000000
#define EVTDAT_LW_MAX -20000000

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
#define EVT_HELPER_FLOAT_BASE -230000000
#define EVT_HELPER_POINTER_BASE -270000000

#define EVTDAT_ADDR_BASE 270000000
#define EVTDAT_FLOAT_BASE 230000000
#define EVTDAT_UF_BASE 210000000
#define EVTDAT_UW_BASE 190000000
#define EVTDAT_GSW_BASE 170000000
#define EVTDAT_LSW_BASE 150000000
#define EVTDAT_GSWF_BASE 130000000
#define EVTDAT_LSWF_BASE 110000000
#define EVTDAT_GF_BASE 90000000
#define EVTDAT_LF_BASE 70000000
#define EVTDAT_GW_BASE 50000000
#define EVTDAT_LW_BASE 30000000


#define UF(id) ((id) - EVTDAT_UF_BASE)
#define UW(id) ((id) - EVTDAT_UW_BASE)
#define GSW(id) ((id) - EVTDAT_GSW_BASE)
#define LSW(id) ((id) - EVTDAT_LSW_BASE)
#define GSWF(id) ((id) - EVTDAT_GSWF_BASE)
#define LSWF(id) ((id) - EVTDAT_LSWF_BASE)
#define GF(id) ((id) - EVTDAT_GF_BASE)
#define LF(id) ((id) - EVTDAT_LF_BASE)
#define GW(id) ((id) - EVTDAT_GW_BASE)
#define LW(id) ((id) - EVTDAT_LW_BASE)
#define FLOAT(value) (((long) ((value) * 1024.f)) - EVTDAT_FLOAT_BASE)

#define EVT_LOCAL_VAR_OFFSET      30000000
#define LocalVar(INDEX) ((INDEX) - EVT_LOCAL_VAR_OFFSET)

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

#endif //_EVT_H_