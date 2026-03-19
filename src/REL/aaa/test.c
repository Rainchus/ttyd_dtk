#include "evt.h"

extern void mapdraw(void);
int testFunction(void) {
    short* temp = (short*)0x817FFFFE;
    *temp = 0xBEEF;
    return 1;
}

// String declarations
extern const char str_sjis_aaa_00000468[];
extern const char str_sjis_aaa_00000474[];
extern const char str_S_ie_door_aaa_00000480[];
extern const char str_S_ie_kaiten2_aaa_0000048c[];
extern const char str_S_ie_kaiten1_aaa_0000049c[];
extern const char str_A_ie_door_aaa_000004ac[];
extern const char str_A_ie_door_u_aaa_000004b8[];
extern const char str_S_ie_soto_aaa_000004c4[];
extern const char str_A_ie_soto_aaa_000004d0[];
extern const char str_S_naka_aaa_000004dc[];
extern const char str_A_naka1_aaa_000004e4[];
extern const char str_BGM_EVT_MARIO_HOUSE1_aaa_000004ec[];
extern const char str_ENV_OPN_AAA1_aaa_00000504[];
extern const char str_sai_ki2_aaa_00000514[];
extern const char str_sai_ki1_aaa_0000051c[];
extern const char str_SFX_EVT_OPN_PARETTA__aaa_00000524[];
extern const char str_S_posuto_aaa_00000540[];
extern const char str_SFX_EVT_POST_SHAKE1_aaa_0000054c[];
extern const char str_pro_00_aaa_00000560[];
extern const char str_SFX_DOOR_OPEN1_aaa_00000568[];
extern const char str_SFX_DOOR_SHUT1_aaa_00000578[];
extern const char str_L_5_aaa_00000588[];
extern const char str_L_11_aaa_0000058c[];
extern const char str_L_6_aaa_00000594[];
extern const char str_S_aaa_00_aaa_00000598[];
extern const char str_L_7_aaa_000005a4[];
extern const char str_pro_01_aaa_000005a8[];
extern const char str_pro_02_aaa_000005b0[];
extern const char str_L_8_aaa_000005b8[];
extern const char str_L_9_aaa_000005bc[];
extern const char str_pro_03_aaa_000005c0[];
extern const char str_gor_10_aaa_000005c8[];
extern const char str_pro_05_aaa_000005ec[];
extern const char str_I_1_aaa_000005f4[];
extern const char str_map_aaa_000005f8[];
extern const char str_S_1_aaa_000005fc[];
extern const char str_M_L_3_aaa_00000600[];
extern const char str_muj_20_aaa_00000608[];
extern const char str_prologue_aaa_00000610[];
extern const char str_ENV_END_AAA1_aaa_0000061c[];
extern const char str_M_S_5_aaa_0000062c[];
extern const char str_S_2_aaa_00000634[];
extern const char str_ep_31_aaa_00000638[];
extern const char str_T_2_aaa_00000640[];
extern const char str_ep_32_aaa_00000644[];
extern const char str_SFX_VOICE_MARIO_HAND_aaa_0000064c[];
extern const char str_M_N_11_aaa_00000668[];
extern const char str_ep_33_aaa_00000670[];
extern const char str_SFX_VOICE_MARIO_FIND_aaa_00000678[];
extern const char str_BGM_FF_MAIL_RECEPTIO_aaa_00000690[];
extern const char str_SFX_MAIL_RECEPTION1_aaa_000006a8[];
extern const char str_ep_34_aaa_000006bc[];
extern const char str_SFX_VOICE_MARIO_FLD__aaa_000006c4[];
extern const char str_SFX_MARIO_LANDING3_aaa_000006e0[];
extern const char str_M_N_9_aaa_000006f4[];
extern const char str_SFX_MAIL_RECEPTION2_aaa_000006fc[];
extern const char str_M_N_10_aaa_00000710[];
extern const char str_ep_35_aaa_00000718[];
extern const char str_gor_02_aaa_00000720[];
extern const char str_sjis_aaa_0000072c[];
extern const char str_c_peach_aaa_00000738[];
extern const char str_sjis_aaa_00000740[];
extern const char str_sjis_aaa_00000754[];
extern const char str_c_kino_ji_aaa_00000760[];
extern const char str_ep_47_aaa_0000076c[];
extern const char str_BGM_EVT_MARIO_HOUSE2_aaa_00000774[];
extern const char str_M_S_1_aaa_0000078c[];
extern const char str_ep_48_aaa_00000794[];
extern const char str_SFX_VOICE_MARIO_NOD1_aaa_0000079c[];
extern const char str_M_N_2_aaa_000007b4[];
extern const char str_SFX_EVT_EPILOGUE_KIN_aaa_000007bc[];
extern const char str_ep_49_aaa_000007dc[];
extern const char str_ep_50_aaa_000007e4[];
extern const char str_ep_51_aaa_000007ec[];
extern const char str_ep_52_aaa_000007f4[];
extern const char str_P_S_5_aaa_000007fc[];
extern const char str_P_T_5_aaa_00000804[];
extern const char str_ep_53_aaa_0000080c[];
extern const char str_P_S_7_aaa_00000814[];
extern const char str_P_T_13_aaa_0000081c[];
extern const char str_ep_54_aaa_00000824[];
extern const char str_SFX_VOICE_MARIO_SURP_aaa_0000082c[];
extern const char str_M_N_5B_aaa_00000848[];
extern const char str_M_I_G_aaa_00000850[];
extern const char str_BGM_ENDING4_aaa_00000858[];
extern const char str_M_I_N_aaa_00000864[];
extern const char str_end_00_aaa_0000086c[];
extern const char str_A_ki_1_aaa_00000874[];
extern const char str_S_ki_1_aaa_0000087c[];
extern const char str_S_ha_1_aaa_00000884[];
extern const char str_A_kusa_01_aaa_0000088c[];
extern const char str_S_kusa_01_aaa_00000898[];
extern const char str_A_kusa_02_aaa_000008a4[];
extern const char str_S_kusa_02_aaa_000008b0[];
extern const char str_A_kusa_03_aaa_000008bc[];
extern const char str_S_kusa_03_aaa_000008c8[];
extern const char str_A_kusa_04_aaa_000008d4[];
extern const char str_S_kusa_04_aaa_000008e0[];
extern const char str_A_kusa_05_aaa_000008ec[];
extern const char str_S_kusa_05_aaa_000008f8[];
extern const char str_A_kusa_06_aaa_00000904[];
extern const char str_S_kusa_06_aaa_00000910[];
extern const char str_A_kusa_07_aaa_0000091c[];
extern const char str_S_kusa_07_aaa_00000928[];
extern const char str_A_kusa_08_aaa_00000934[];
extern const char str_S_kusa_08_aaa_00000940[];
extern const char str_A_kusa_09_aaa_0000094c[];
extern const char str_S_kusa_09_aaa_00000958[];
extern const char str_A_kusa_10_aaa_00000964[];
extern const char str_S_kusa_10_aaa_00000970[];
extern const char str_dokan_1_aaa_0000097c[];
extern const char str_prologue2_aaa_00000984[];
extern const char str_epilogue2_aaa_00000990[];
extern const char str_PCTs_mariost_tpl_aaa_0000099c[];

API_CALLABLE(evt_door);
API_CALLABLE(evt_party_run);
API_CALLABLE(evt_mario_set_party_pos);

#define SJIS_LUIGI PTR("ルイージ")
#define SJIS_PARAKARRY PTR("パレッタ")

#define SET_STORY(val) SET(GSW(0), val)

EVT_BEGIN(evt_prologue_new) {
    BEGIN_THREAD
        WAIT_MS(1500)
        CALL(evt_snd_bgmon, 512, PTR("BGM_EVT_MARIO_HOUSE1"))
    END_THREAD
    CALL(evt_snd_envon, 272, PTR("ENV_OPN_AAA1"))
    CALL(evt_snd_bgm_scope, 0, 1)
    CALL(evt_cam_letter_box_onoff, 1, 1)
    CALL(evt_cam_letter_box_camid, 6)
    CALL(evt_npc_status_onoff, 1, SJIS_LUIGI, 2)
    CALL(evt_npc_status_onoff, 1, SJIS_PARAKARRY, 2)
    CALL(evt_party_stop, 0)
    CALL(evt_mario_key_onoff, 0)
    CALL(evt_mario_set_pos, -150, 30, -330)
    CALL(evt_party_set_pos, 0, -150, 30, -330)
    CALL(evt_cam3d_evt_set, 145, 122, 884, 145, 108, -180, 0, 11)
    CALL(evt_seq_wait, 2)
    CALL(evt_mario_set_pos, -150, 30, -330)
    CALL(evt_party_set_pos, 0, -150, 30, -330)
    // BEGIN_THREAD
    //     CALL(evt_sub_intpl_msec_init, 11, 0, 1500, 4000)
    //     LOOP(0)
    //         CALL(evt_sub_intpl_msec_get_value)
    //         DIVF(LVar0, FLOAT(10.000))
    //         CALL(evt_mapobj_trans, 1, PTR(str_sai_ki2_aaa_00000514), LVar0, 0, 0)
    //         MULF(LVar0, FLOAT(-1.000))
    //         CALL(evt_mapobj_trans, 1, PTR(str_sai_ki1_aaa_0000051c), LVar0, 0, 0)
    //         WAIT_FRAMES(1)
    //         IF_INT_EQ(LVar1, 0)
    //             BREAK_LOOP
    //         END_IF
    //     END_LOOP
    // END_THREAD
    // CALL(evt_cam3d_evt_set, 145, 122, 717, 145, 108, -180, 5000, 11)
    // WAIT_MS(4000)
    // CALL(evt_npc_set_position, PTR(str_sjis_aaa_00000468), 500, 500, 0)
    // SET(LFlag1, 0)
    // BEGIN_THREAD
    //     WAIT_MS(3000)
    //     LOOP(14)
    //         CALL(evt_npc_get_position, PTR(str_sjis_aaa_00000468), LVar0, LVar1, LVar2)
    //         CALL(evt_snd_sfxon_3d, PTR(str_SFX_EVT_OPN_PARETTA__aaa_00000524), LVar0, LVar1, -100, 0)
    //         WAIT_MS(200)
    //     END_LOOP
    //     LOOP(0)
    //         CALL(evt_npc_get_position, PTR(str_sjis_aaa_00000468), LVar0, LVar1, LVar2)
    //         CALL(evt_snd_sfxon_3d, PTR(str_SFX_EVT_OPN_PARETTA__aaa_00000524), LVar0, LVar1, -100, 0)
    //         WAIT_MS(400)
    //         IF_INT_EQ(LFlag1, 1)
    //             BREAK_LOOP
    //         END_IF
    //     END_LOOP
    //     LOOP(17)
    //         CALL(evt_npc_get_position, PTR(str_sjis_aaa_00000468), LVar0, LVar1, LVar2)
    //         CALL(evt_snd_sfxon_3d, PTR(str_SFX_EVT_OPN_PARETTA__aaa_00000524), LVar0, LVar1, -100, 0)
    //         WAIT_MS(200)
    //     END_LOOP
    // END_THREAD
    // CALL(evt_npc_glide_position, PTR(str_sjis_aaa_00000468), 210, 25, -30, 0, FLOAT(80.000), FLOAT(-30.000), 11, 0)
    // CALL(evt_npc_reverse_ry, PTR(str_sjis_aaa_00000468))
    // WAIT_MS(500)
    // CALL(evt_mapobj_get_position, PTR(str_S_posuto_aaa_00000540), LVar0, LVar1, LVar2)
    // CALL(evt_snd_sfxon_3d, PTR(str_SFX_EVT_POST_SHAKE1_aaa_0000054c), LVar0, LVar1, LVar2, 0)
    // LOOP(3)
    //     CALL(evt_mapobj_trans, 1, PTR(str_S_posuto_aaa_00000540), 2, 0, 0)
    //     WAIT_FRAMES(2)
    //     CALL(evt_mapobj_trans, 1, PTR(str_S_posuto_aaa_00000540), 0, 0, 0)
    //     WAIT_FRAMES(2)
    // END_LOOP
    // CALL(evt_npc_reverse_ry, PTR(str_sjis_aaa_00000468))
    // WAIT_MS(500)
    // CALL(evt_msg_print, 0, PTR(str_pro_00_aaa_00000560), 0, PTR(str_sjis_aaa_00000468))
    // SET(LFlag1, 1)
    // CALL(evt_npc_glide_position, PTR(str_sjis_aaa_00000468), 0, 300, -100, 0, FLOAT(80.000), FLOAT(-30.000), 11, 0)
    // CALL(evt_npc_set_position, PTR(str_sjis_aaa_00000474), 20, 30, -150)
    // CALL(evt_npc_set_ry, PTR(str_sjis_aaa_00000474), 90)
    // CALL(evt_mapobj_flag_onoff, 1, 0, PTR(str_S_naka_aaa_000004dc), 1)
    // CALL(evt_mapobj_get_position, PTR(str_S_ie_door_aaa_00000480), LVar0, LVar1, LVar2)
    // CALL(evt_snd_sfxon_3d, PTR(str_SFX_DOOR_OPEN1_aaa_00000568), LVar0, LVar1, LVar2, 0)
    // CALL(evt_sub_intpl_msec_init, 11, 0, 180, 500)
    // LOOP(0)
    //     CALL(evt_sub_intpl_msec_get_value)
    //     SCRIPT_SYNC(evt_door)
    //     IF_INT_EQ(LVar1, 0)
    //         BREAK_LOOP
    //     END_IF
    // END_LOOP
    // CALL(evt_npc_move_position, PTR(str_sjis_aaa_00000474), 63, -110, 0, FLOAT(80.000), 1)
    // CALL(evt_mapobj_get_position, PTR(str_S_ie_door_aaa_00000480), LVar0, LVar1, LVar2)
    // CALL(evt_snd_sfxon_3d, PTR(str_SFX_DOOR_SHUT1_aaa_00000578), LVar0, LVar1, LVar2, 0)
    // BEGIN_THREAD
    //     CALL(evt_sub_intpl_msec_init, 11, 180, 0, 500)
    //     LOOP(0)
    //         CALL(evt_sub_intpl_msec_get_value)
    //         SCRIPT_SYNC(evt_door)
    //         IF_INT_EQ(LVar1, 0)
    //             BREAK_LOOP
    //         END_IF
    //     END_LOOP
    // END_THREAD
    // CALL(evt_npc_flag_onoff, 1, PTR(str_sjis_aaa_00000474), 0x00020010)
    // CALL(evt_npc_move_position, PTR(str_sjis_aaa_00000474), 195, 0, 0, FLOAT(80.000), 1)
    // CALL(evt_npc_move_position, PTR(str_sjis_aaa_00000474), 225, -75, 0, FLOAT(80.000), 1)
    // WAIT_MS(500)
    // CALL(evt_mapobj_get_position, PTR(str_S_posuto_aaa_00000540), LVar0, LVar1, LVar2)
    // CALL(evt_snd_sfxon_3d, PTR(str_SFX_EVT_POST_SHAKE1_aaa_0000054c), LVar0, LVar1, LVar2, 0)
    // LOOP(3)
    //     CALL(evt_mapobj_trans, 1, PTR(str_S_posuto_aaa_00000540), 2, 0, 0)
    //     WAIT_FRAMES(2)
    //     CALL(evt_mapobj_trans, 1, PTR(str_S_posuto_aaa_00000540), 0, 0, 0)
    //     WAIT_FRAMES(2)
    // END_LOOP
    // WAIT_MS(340)
    // CALL(evt_npc_set_anim, PTR(str_sjis_aaa_00000474), PTR(str_L_5_aaa_00000588))
    // WAIT_MS(500)
    // CALL(evt_npc_flag_onoff, 0, PTR(str_sjis_aaa_00000474), 1024)
    // CALL(evt_npc_set_anim, PTR(str_sjis_aaa_00000474), PTR(str_L_11_aaa_0000058c))
    // CALL(evt_npc_move_position, PTR(str_sjis_aaa_00000474), 195, 0, 0, FLOAT(80.000), 1)
    // CALL(evt_npc_move_position, PTR(str_sjis_aaa_00000474), 63, -110, 0, FLOAT(80.000), 1)
    // CALL(evt_npc_flag_onoff, 0, PTR(str_sjis_aaa_00000474), 0x00020010)
    // CALL(evt_npc_set_anim, PTR(str_sjis_aaa_00000474), PTR(str_L_5_aaa_00000588))
    // CALL(evt_mapobj_get_position, PTR(str_S_ie_door_aaa_00000480), LVar0, LVar1, LVar2)
    // CALL(evt_snd_sfxon_3d, PTR(str_SFX_DOOR_OPEN1_aaa_00000568), LVar0, LVar1, LVar2, 0)
    // CALL(evt_sub_intpl_msec_init, 11, 0, 180, 500)
    // LOOP(0)
    //     CALL(evt_sub_intpl_msec_get_value)
    //     SCRIPT_SYNC(evt_door)
    //     IF_INT_EQ(LVar1, 0)
    //         BREAK_LOOP
    //     END_IF
    // END_LOOP
    // BEGIN_THREAD
    //     CALL(evt_npc_set_anim, PTR(str_sjis_aaa_00000474), PTR(str_L_6_aaa_00000594))
    //     CALL(evt_npc_move_position, PTR(str_sjis_aaa_00000474), 25, -155, 0, FLOAT(80.000), 1)
    //     CALL(evt_npc_set_anim, PTR(str_sjis_aaa_00000474), PTR(str_L_5_aaa_00000588))
    // END_THREAD
    // WAIT_MS(500)
    // CALL(evt_cam3d_evt_set, -345, 154, 96, -32, 75, -217, 0, 11)
    // WAIT_FRAMES(1)
    // CALL(evt_mapobj_flag_onoff, 1, 1, PTR(str_S_aaa_00_aaa_00000598), 1)
    // CALL(evt_mapobj_flag_onoff, 1, 0, PTR(str_S_naka_aaa_000004dc), 1)
    // CALL(evt_mapobj_flag_onoff, 1, 0, PTR(str_S_ie_door_aaa_00000480), 1)
    // CALL(evt_bg_set_color, 0, 0, 0, 255)
    // WAIT_FRAMES(1)
    // CALL(evt_snd_bgmoff, 0x00004800)
    // CALL(evt_snd_envoff, 0x00004800)
    // CALL(evt_snd_env_lpf, 0, 800)
    // CALL(evt_mapobj_get_position, PTR(str_S_ie_door_aaa_00000480), LVar0, LVar1, LVar2)
    // CALL(evt_snd_sfxon_3d, PTR(str_SFX_DOOR_SHUT1_aaa_00000578), LVar0, LVar1, LVar2, 0)
    // BEGIN_THREAD
    //     CALL(evt_sub_intpl_msec_init, 11, 180, 0, 500)
    //     LOOP(0)
    //         CALL(evt_sub_intpl_msec_get_value)
    //         SCRIPT_SYNC(evt_door)
    //         IF_INT_EQ(LVar1, 0)
    //             BREAK_LOOP
    //         END_IF
    //     END_LOOP
    // END_THREAD
    // WAIT_MS(500)
    // CALL(evt_npc_set_anim, PTR(str_sjis_aaa_00000474), PTR(str_L_5_aaa_00000588))
    // CALL(evt_npc_set_autotalkpose, PTR(str_sjis_aaa_00000474), PTR(str_L_5_aaa_00000588), PTR(str_L_7_aaa_000005a4))
    // CALL(evt_msg_print, 0, PTR(str_pro_01_aaa_000005a8), 0, PTR(str_sjis_aaa_00000474))
    // CALL(evt_cam3d_evt_set, -376, 154, 65, -63, 75, -247, 2000, 11)
    // CALL(evt_npc_set_anim, PTR(str_sjis_aaa_00000474), PTR(str_L_6_aaa_00000594))
    // CALL(evt_npc_move_position, PTR(str_sjis_aaa_00000474), 23, -156, 0, FLOAT(80.000), 1)
    // CALL(evt_npc_set_anim, PTR(str_sjis_aaa_00000474), PTR(str_L_5_aaa_00000588))
    // BEGIN_THREAD
    //     CALL(evt_mario_set_pos, -155, 30, -320)
    //     CALL(evt_mario_mov_pos2, -125, -290, FLOAT(80.000))
    //     CALL(evt_mario_mov_pos2, -85, -310, FLOAT(80.000))
    //     CALL(evt_mario_adjust_dir)
    // END_THREAD
    // CALL(evt_npc_set_anim, PTR(str_sjis_aaa_00000474), PTR(str_L_6_aaa_00000594))
    // CALL(evt_npc_move_position, PTR(str_sjis_aaa_00000474), -52, -275, 0, FLOAT(80.000), 1)
    // CALL(evt_npc_set_anim, PTR(str_sjis_aaa_00000474), PTR(str_L_5_aaa_00000588))
    // WAIT_MS(500)
    // CALL(evt_msg_print, 0, PTR(str_pro_02_aaa_000005b0), 0, PTR(str_sjis_aaa_00000474))
    // WAIT_MS(300)
    // CALL(evt_npc_set_anim, PTR(str_sjis_aaa_00000474), PTR(str_L_8_aaa_000005b8))
    // CALL(evt_npc_set_autotalkpose, PTR(str_sjis_aaa_00000474), PTR(str_L_8_aaa_000005b8), PTR(str_L_9_aaa_000005bc))
    // CALL(evt_msg_print, 0, PTR(str_pro_03_aaa_000005c0), 0, PTR(str_sjis_aaa_00000474))
    // WAIT_MS(300)
    
    CALL(evt_pouch_party_join, 1) //give goombella in party
    CALL(evt_mario_set_party_pos, 0, 1, 25, 0, 625) //somehow this also makes the partner follow you?
    SET_STORY(7) //set story to after goombella is obtained
    CALL(evt_party_run, 0) //?? idk what this does, do i even need this?
    CALL(evt_cam_letter_box_camid, 10)
    CALL(evt_fade_set_mapchange_type, 1, 17, 800, 16, 800)
    CALL(evt_bero_mapchange, PTR("gor_01"), 0)
    RETURN
    END
};
