#include "evt.h"

extern EvtScript nancy_talk;

EVT_BEGIN(nancy_init_check_new) {
    CALL(evt_npc_change_interrupt, PTR("me"), 6, 0)
    LOOP(0)
        CALL(evt_mario_get_pos, 0, LVarA, LVarB, LVarC)
        SET(LVar3, 0)
        IF_INT_GT(LVarA, -580)
            IF_INT_LT(LVarA, -400)
                IF_INT_GT(LVarB, -10)
                    IF_INT_LT(LVarB, 5)
                        IF_INT_GT(LVarC, 0)
                            IF_INT_LT(LVarC, 180)
                                SET(LVar3, 1)
                            END_IF
                        END_IF
                    END_IF
                END_IF
            END_IF
        END_IF
        WAIT_FRAMES(1)
        IF_INT_EQ(LVar3, 1)
            BREAK_LOOP
        END_IF
    END_LOOP
    CALL(evt_mario_key_onoff, 0)
    CALL(evt_mario_normalize)
    // Play the contact lens squish
    CALL(evt_mario_get_pos, 0, LVar0, LVar1, LVar2)
    CALL(evt_snd_sfxon_3d, PTR("SFX_STG0_LENS_BREAK1"), LVar0, LVar1, LVar2, 0)
    CALL(evt_msg_toge, 2, LVar0, LVar1, LVar2)
    CALL(evt_msg_print, 0, PTR("gor_01_004"), 0, 0)
    // She runs to block the door
    CALL(evt_npc_flag_onoff, 1, PTR("me"), 0x40000020)
    CALL(evt_npc_set_ry, PTR("me"), 270)
    CALL(evt_npc_move_position, PTR("me"), -573, 56, 0, FLOAT(180.000), 0)
    CALL(evt_npc_flag_onoff, 0, PTR("me"), 0x40000020)
    CALL(evt_npc_set_ry, PTR("me"), 90)
    // Finish up
    CALL(evt_npc_restart_regular_event, PTR("me"))
    CALL(evt_npc_change_interrupt, PTR("me"), 6, PTR(nancy_talk))
    CALL(evt_mario_key_onoff, 1)
    SET(0xF8406023, 1)
    RETURN
    END
};
