#include "evt.h"

//fake function definitons for script
void evt_snd_sfx_pos(void);
void evt_snd_sfxoff(void);
void evt_party_move_pos2(void);
void evt_party_set_dir(void);
void evt_msg_print_party(void);
void evt_eff_fukidashi(void);
void evt_mario_dispflag_onoff(void);
void evt_mario_jump_pos(void);
void evt_pouch_get_coin(void);
void evt_pouch_set_coin(void);
void evt_StatusClose(void);
void evt_cam3d_evt_off(void);
void evt_party_run(void);
void evt_StatusClose_gor_02(void);
void evt_StatusOpen_gor_02(void);

extern EvtScript cam_yurasu_event;
extern EvtScript mario_kirimomi_event;

EVT_BEGIN(steel_coin_new) {
    CALL(evt_mapobj_flag_onoff, 1, 0, PTR("S_kmn"), 2)
    CALL(evt_npc_set_ry, PTR("盗賊"), 270)
    CALL(evt_npc_set_position, PTR("盗賊"), -300, 0, 0)
    CALL(evt_npc_flag_onoff, 1, PTR("盗賊"), 1024)
    CALL(evt_npc_flag_onoff, 1, PTR("盗賊"), 0x40000020)
    CALL(evt_party_stop, 0)
    BEGIN_THREAD
        CALL(evt_party_set_dir, 0, 90, 0)
        CALL(evt_party_set_pos, 0, -640, 0, 0)
        CALL(evt_party_move_pos2, 0, -565, 0, FLOAT(150.000))
        CALL(evt_party_stop, 0)
    END_THREAD
    BEGIN_THREAD
        CALL(evt_mario_set_dir, 90, 0, 0)
        CALL(evt_mario_set_pos, -600, 0, 0)
        CALL(evt_mario_mov_pos2, -525, 0, FLOAT(150.000))
    END_THREAD
    SET(LFlag0, 1)
    BEGIN_THREAD
        CALL(evt_npc_move_position, PTR("盗賊"), -620, 0, 0, FLOAT(300.000), 0)
        CALL(evt_npc_set_position, PTR("盗賊"), 0, -1000, 0)
        SET(LFlag0, 0)
    END_THREAD
    BEGIN_THREAD
        CALL(evt_npc_get_position, PTR("盗賊"), LVar0, LVar1, LVar2)
        CALL(evt_snd_sfxon_3d, PTR("SFX_STG0_BORODO_RUN1"), LVar0, LVar1, LVar2, LVarA)
        LOOP(0)
            CALL(evt_npc_get_position, PTR("盗賊"), LVar0, LVar1, LVar2)
            CALL(evt_snd_sfx_pos, LVarA, LVar0, LVar1, LVar2)
            IF_INT_EQ(LFlag0, 0)
                BREAK_LOOP
            END_IF
            WAIT_FRAMES(1)
        END_LOOP
        CALL(evt_snd_sfxoff, LVarA)
    END_THREAD
    BEGIN_THREAD
        LOOP(0)
            CALL(evt_npc_get_position, PTR("盗賊"), LVar0, LVar1, LVar2)
            CALL(evt_mario_get_pos, 0, LVarA, LVarB, LVarC)
            SUB(LVar0, 20)
            IF_INT_LT_OR_EQ(LVar0, LVarA)
                BREAK_LOOP
            END_IF
            WAIT_FRAMES(1)
        END_LOOP
        CALL(evt_snd_sfxon_3d, PTR("SFX_STG0_BORODO_STEAL1"), LVar0, LVar1, LVar2, 0)
        SCRIPT_ASYNC(cam_yurasu_event)
        SCRIPT_ASYNC(mario_kirimomi_event)
        // mac_0_062 and LFlag1 removed — no dialogue pause here
    END_THREAD
    WAIT_UNTIL(LFlag0)  // just wait for bandit to finish running
    CALL(evt_mario_set_dir, 270, 200, 0)
    BEGIN_THREAD
        CALL(evt_party_move_pos2, 0, -550, 0, FLOAT(120.000))
        CALL(evt_party_set_dir, 0, 270, 200)
    END_THREAD
    // Skipped: evt_cam3d_evt_set and WAIT_MS(1000)
    CALL(evt_cam3d_evt_set, -450, 103, 330, -525, 43, -6, 500, 11)
    CALL(evt_msg_print_party, PTR("mac_0_063"))
    CALL(evt_pouch_get_coin, LVar0)
    IF_INT_EQ(LVar0, 0)
        GOTO(100)
    END_IF
    WAIT_MS(500)
    CALL(evt_party_set_dir, 0, 90, -1)
    CALL(evt_mario_set_dir, 270, 200, 0)
    WAIT_MS(500)
    CALL(evt_eff_fukidashi, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60)
    WAIT_MS(1000)
    CALL(evt_msg_print_party, PTR("mac_0_064"))
    CALL(evt_mario_set_pose, PTR("M_I_N"))
    BEGIN_THREAD
        CALL(evt_mario_get_pos, 0, LVar0, LVar1, LVar2)
        CALL(evt_snd_sfxon_3d, PTR("SFX_VOICE_MARIO_SURPRISED2_3"), LVar0, LVar1, LVar2, 0)
    END_THREAD
    CALL(evt_mario_get_pos, 0, LVar0, LVar1, LVar2)
    CALL(evt_mario_dispflag_onoff, 1, 2)
    CALL(evt_mario_jump_pos, LVar0, LVar1, LVar2, 200, 1, -1000)
    CALL(evt_mario_dispflag_onoff, 0, 2)
    CALL(evt_StatusOpen_gor_02)
    WAIT_MS(400)
    CALL(evt_pouch_get_coin, LVar0)
    SET(LVar1, LVar0)
    DIV(LVar1, 2)
    SUB(LVar0, LVar1)
    CALL(evt_pouch_set_coin, LVar0)
    SET(LVar2, LVar1)
    ANDI_RAW(LVar2, 255)
    SET(GSW(2), LVar2)
    SET(LVar2, LVar1)
    ANDI_RAW(LVar2, 0x0000FF00)
    DIV(LVar2, 256)
    SET(GSW(3), LVar2)
    DBG_REPORT(PTR("盗まれた金額の下位と上位"))
    DBG_EXPR_TO_STRING(GSW(2))
    DBG_EXPR_TO_STRING(GSW(3))
    WAIT_MS(2000)
    CALL(evt_StatusClose_gor_02)
    CALL(evt_party_set_dir, 0, 270, -1)
    WAIT_MS(500)
    CALL(evt_msg_print_party, PTR("mac_0_065"))
    LABEL(100)
    CALL(evt_cam3d_evt_off, 500, 11)
    CALL(evt_party_set_dir, 0, 90, -1)
    CALL(evt_party_run, 0)
    CALL(evt_mario_key_onoff, 1)
    SET(GSW(0), 8)
    RETURN
    END
};
