#include "evt.h"

// String declarations
const char str_sjis_aaa_00000458[] = "パレッタ";
const char str_sjis_aaa_00000464[] = "ルイージ";
const char str_S_ie_door_aaa_00000470[] = "S_ie_door";
const char str_S_ie_kaiten2_aaa_0000047c[] = "S_ie_kaiten2";
const char str_S_ie_kaiten1_aaa_0000048c[] = "S_ie_kaiten1";
const char str_A_ie_door_aaa_0000049c[] = "A_ie_door";
const char str_A_ie_door_u_aaa_000004a8[] = "A_ie_door_u";
const char str_S_ie_soto_aaa_000004b4[] = "S_ie_soto";
const char str_A_ie_soto_aaa_000004c0[] = "A_ie_soto";
const char str_S_naka_aaa_000004cc[] = "S_naka";
const char str_A_naka1_aaa_000004d4[] = "A_naka1";
const char str_BGM_EVT_MARIO_HOUSE1_aaa_000004dc[] = "BGM_EVT_MARIO_HOUSE1";
const char str_ENV_OPN_AAA1_aaa_000004f4[] = "ENV_OPN_AAA1";
const char str_sai_ki2_aaa_00000504[] = "sai_ki2";
const char str_sai_ki1_aaa_0000050c[] = "sai_ki1";
const char str_SFX_EVT_OPN_PARETTA__aaa_00000514[] = "SFX_EVT_OPN_PARETTA_MOVE1";
const char str_S_posuto_aaa_00000530[] = "S_posuto";
const char str_SFX_EVT_POST_SHAKE1_aaa_0000053c[] = "SFX_EVT_POST_SHAKE1";
const char str_pro_00_aaa_00000550[] = "pro_00";
const char str_SFX_DOOR_OPEN1_aaa_00000558[] = "SFX_DOOR_OPEN1";
const char str_SFX_DOOR_SHUT1_aaa_00000568[] = "SFX_DOOR_SHUT1";
const char str_L_5_aaa_00000578[] = "L_5";
const char str_L_11_aaa_0000057c[] = "L_11";
const char str_L_6_aaa_00000584[] = "L_6";
const char str_S_aaa_00_aaa_00000588[] = "S_aaa_00";
const char str_L_7_aaa_00000594[] = "L_7";
const char str_pro_01_aaa_00000598[] = "pro_01";
const char str_pro_02_aaa_000005a0[] = "pro_02";
const char str_L_8_aaa_000005a8[] = "L_8";
const char str_L_9_aaa_000005ac[] = "L_9";
const char str_pro_03_aaa_000005b0[] = "pro_03";
const char str_gor_10_aaa_000005b8[] = "gor_10";
const char str_pro_05_aaa_000005dc[] = "pro_05";
const char str_I_1_aaa_000005e4[] = "I_1";
const char str_map_aaa_000005e8[] = "map";
const char str_S_1_aaa_000005ec[] = "S_1";
const char str_M_L_3_aaa_000005f0[] = "M_L_3";
const char str_muj_20_aaa_000005f8[] = "muj_20";
const char str_prologue_aaa_00000600[] = "prologue";
const char str_EVT_END_AAA1_aaa_0000060c[] = "ENV_END_AAA1";
const char str_M_S_5_aaa_0000061c[] = "M_S_5";
const char str_S_2_aaa_00000624[] = "S_2";
const char str_ep_31_aaa_00000628[] = "ep_31";
const char str_T_2_aaa_00000630[] = "T_2";
const char str_ep_32_aaa_00000634[] = "ep_32";
const char str_SFX_VOICE_MARIO_HAND_aaa_0000063c[] = "SFX_VOICE_MARIO_HAND_UP1_2";
const char str_M_N_11_aaa_00000658[] = "M_N_11";
const char str_ep_33_aaa_00000660[] = "ep_33";
const char str_SFX_VOICE_MARIO_FIND_aaa_00000668[] = "SFX_VOICE_MARIO_FIND1_2";
const char str_BGM_FF_MAIL_RECEPTIO_aaa_00000680[] = "BGM_FF_MAIL_RECEPTION3";
const char str_SFX_MAIL_RECEPTION1_aaa_00000698[] = "SFX_MAIL_RECEPTION1";
const char str_ep_34_aaa_000006ac[] = "ep_34";
const char str_SFX_VOICE_MARIO_FLD__aaa_000006b4[] = "SFX_VOICE_MARIO_FLD_JUMP3";
const char str_SFX_MARIO_LANDING3_aaa_000006d0[] = "SFX_MARIO_LANDING3";
const char str_M_N_9_aaa_000006e4[] = "M_N_9";
const char str_SFX_MAIL_RECEPTION2_aaa_000006ec[] = "SFX_MAIL_RECEPTION2";
const char str_M_N_10_aaa_00000700[] = "M_N_10";
const char str_ep_35_aaa_00000708[] = "ep_35";
const char str_gor_02_aaa_00000710[] = "gor_02";
const char str_sjis_aaa_0000071c[] = "ピーチ姫";
const char str_c_peach_aaa_00000728[] = "c_peach";
const char str_sjis_aaa_00000730[] = "ピーチ姫（普通）";
const char str_sjis_aaa_00000744[] = "キノじい";
const char str_c_kino_ji_aaa_00000750[] = "c_kino_ji";
const char str_ep_47_aaa_0000075c[] = "ep_47";
const char str_BGM_EVT_MARIO_HOUSE2_aaa_00000764[] = "BGM_EVT_MARIO_HOUSE2";
const char str_M_S_1_aaa_0000077c[] = "M_S_1";
const char str_ep_48_aaa_00000784[] = "ep_48";
const char str_SFX_VOICE_MARIO_NOD1_aaa_0000078c[] = "SFX_VOICE_MARIO_NOD1_4";
const char str_M_N_2_aaa_000007a4[] = "M_N_2";
const char str_SFX_EVT_EPILOGUE_KIN_aaa_000007ac[] = "SFX_EVT_EPILOGUE_KINOJII_KNOCK1";
const char str_ep_49_aaa_000007cc[] = "ep_49";
const char str_ep_50_aaa_000007d4[] = "ep_50";
const char str_ep_51_aaa_000007dc[] = "ep_51";
const char str_ep_52_aaa_000007e4[] = "ep_52";
const char str_P_S_5_aaa_000007ec[] = "P_S_5";
const char str_P_T_5_aaa_000007f4[] = "P_T_5";
const char str_ep_53_aaa_000007fc[] = "ep_53";
const char str_P_S_7_aaa_00000804[] = "P_S_7";
const char str_P_T_13_aaa_0000080c[] = "P_T_13";
const char str_ep_54_aaa_00000814[] = "ep_54";
const char str_SFX_VOICE_MARIO_SURP_aaa_0000081c[] = "SFX_VOICE_MARIO_SURPRISED2";
const char str_M_N_5B_aaa_00000838[] = "M_N_5B";
const char str_M_I_G_aaa_00000840[] = "M_I_G";
const char str_BGM_ENDING4_aaa_00000848[] = "BGM_ENDING4";
const char str_M_I_N_aaa_00000854[] = "M_I_N";
const char str_end_00_aaa_0000085c[] = "end_00";
const char str_A_ki_1_aaa_00000864[] = "A_ki_1";
const char str_S_ki_1_aaa_0000086c[] = "S_ki_1";
const char str_S_ha_1_aaa_00000874[] = "S_ha_1";
const char str_A_kusa_01_aaa_0000087c[] = "A_kusa_01";
const char str_S_kusa_01_aaa_00000888[] = "S_kusa_01";
const char str_A_kusa_02_aaa_00000894[] = "A_kusa_02";
const char str_S_kusa_02_aaa_000008a0[] = "S_kusa_02";
const char str_A_kusa_03_aaa_000008ac[] = "A_kusa_03";
const char str_S_kusa_03_aaa_000008b8[] = "S_kusa_03";
const char str_A_kusa_04_aaa_000008c4[] = "A_kusa_04";
const char str_S_kusa_04_aaa_000008d0[] = "S_kusa_04";
const char str_A_kusa_05_aaa_000008dc[] = "A_kusa_05";
const char str_S_kusa_05_aaa_000008e8[] = "S_kusa_05";
const char str_A_kusa_06_aaa_000008f4[] = "A_kusa_06";
const char str_S_kusa_06_aaa_00000900[] = "S_kusa_06";
const char str_A_kusa_07_aaa_0000090c[] = "A_kusa_07";
const char str_S_kusa_07_aaa_00000918[] = "S_kusa_07";
const char str_A_kusa_08_aaa_00000924[] = "A_kusa_08";
const char str_S_kusa_08_aaa_00000930[] = "S_kusa_08";
const char str_A_kusa_09_aaa_0000093c[] = "A_kusa_09";
const char str_S_kusa_09_aaa_00000948[] = "S_kusa_09";
const char str_A_kusa_10_aaa_00000954[] = "A_kusa_10";
const char str_S_kusa_10_aaa_00000960[] = "S_kusa_10";
const char str_dokan_1_aaa_0000096c[] = "dokan_1";
const char str_prologue2_aaa_00000974[] = "prologue2";
const char str_epilogue2_aaa_00000980[] = "epilogue2";
const char str_PCTs_mariost_tpl_aaa_0000098c[] = "%s/mariost.tpl";

// Forward declarations
extern void evt_bero_mapchange(void);
extern void evt_bg_set_color(void);
extern void evt_cam3d_evt_set(void);
extern void evt_cam_letter_box_camid(void);
extern void evt_cam_letter_box_onoff(void);
extern void evt_fade_end_wait(void);
extern void evt_fade_set_mapchange_type(void);
extern void evt_item_delete(void);
extern void evt_item_entry(void);
extern void evt_item_set_scale(void);
extern void evt_map_blend_set_flag(void);
extern void evt_mapobj_flag_onoff(void);
extern void evt_mapobj_get_position(void);
extern void evt_mapobj_rotate(void);
extern void evt_mapobj_trans(void);
extern void evt_mario_adjust_dir(void);
extern void evt_mario_key_onoff(void);
extern void evt_mario_mov_pos2(void);
extern void evt_mario_set_dir(void);
extern void evt_mario_set_pos(void);
extern void evt_mario_set_pose(void);
extern void evt_msg_print(void);
extern void evt_npc_entry(void);
extern void evt_npc_flag_onoff(void);
extern void evt_npc_get_position(void);
extern void evt_npc_glide_position(void);
extern void evt_npc_move_position(void);
extern void evt_npc_reverse_ry(void);
extern void evt_npc_set_anim(void);
extern void evt_npc_set_autotalkpose(void);
extern void evt_npc_set_position(void);
extern void evt_npc_set_ry(void);
extern void evt_npc_set_tribe(void);
extern void evt_npc_status_onoff(void);
extern void evt_party_set_pos(void);
extern void evt_party_stop(void);
extern void evt_seq_wait(void);
extern void evt_snd_bgm_scope(void);
extern void evt_snd_bgmoff(void);
extern void evt_snd_bgmoff_f(void);
extern void evt_snd_bgmon(void);
extern void evt_snd_env_lpf(void);
extern void evt_snd_envoff(void);
extern void evt_snd_envon(void);
extern void evt_snd_sfxon_3d(void);
extern void evt_sub_intpl_msec_get_value(void);
extern void evt_sub_intpl_msec_init(void);
extern void mapdraw(void);

EvtScript evt_door = {
   MULF(LVar0, FLOAT(-0.555))
   MULF(LVar0, FLOAT(-1.000))
   CALL(evt_mapobj_rotate, 1, (Bytecode)(void*)str_S_ie_door_aaa_00000470, 0, LVar0, 0)
   RETURN
   END
};

EvtScript evt_door2 = {
   MULF(LVar0, FLOAT(-0.500))
   CALL(evt_mapobj_rotate, 1, (Bytecode)(void*)str_S_ie_door_aaa_00000470, 0, 0, LVar0)
   RETURN
   END
};

EvtScript evt_wall = {
   MULF(LVar0, FLOAT(0.750))
   CALL(evt_mapobj_rotate, 1, (Bytecode)(void*)str_S_ie_kaiten2_aaa_0000047c, LVar0, 0, 0)
   MULF(LVar0, FLOAT(-1.000))
   CALL(evt_mapobj_rotate, 1, (Bytecode)(void*)str_S_ie_kaiten1_aaa_0000048c, LVar0, 0, 0)
   RETURN
   END
};

EvtScript door_1_open = {
   CALL(evt_snd_bgmoff, 0x00004800)
   CALL(evt_snd_envoff, 0x00004800)
   CALL(evt_snd_env_lpf, 0, 800)
   RETURN
   END
};

EvtScript door_1_close = {
   CALL(evt_snd_bgmon, 160, 0)
   CALL(evt_snd_envon, 160, 0)
   CALL(evt_snd_env_lpf, 0, 0)
   RETURN
   END
};

EvtScript evt_prologue = {
   BEGIN_THREAD
      WAIT_MS(1500)
      CALL(evt_snd_bgmon, 512, (Bytecode)(void*)str_BGM_EVT_MARIO_HOUSE1_aaa_000004dc)
   END_THREAD
   CALL(evt_snd_envon, 272, (Bytecode)(void*)str_ENV_OPN_AAA1_aaa_000004f4)
   CALL(evt_snd_bgm_scope, 0, 1)
   CALL(evt_cam_letter_box_onoff, 1, 1)
   CALL(evt_cam_letter_box_camid, 6)
   CALL(evt_npc_status_onoff, 1, (Bytecode)(void*)str_sjis_aaa_00000464, 2)
   CALL(evt_npc_status_onoff, 1, (Bytecode)(void*)str_sjis_aaa_00000458, 2)
   CALL(evt_party_stop, 0)
   CALL(evt_mario_key_onoff, 0)
   CALL(evt_mario_set_pos, -150, 30, -330)
   CALL(evt_party_set_pos, 0, -150, 30, -330)
   CALL(evt_cam3d_evt_set, 145, 122, 884, 145, 108, -180, 0, 11)
   CALL(evt_seq_wait, 2)
   CALL(evt_mario_set_pos, -150, 30, -330)
   CALL(evt_party_set_pos, 0, -150, 30, -330)
   BEGIN_THREAD
      CALL(evt_sub_intpl_msec_init, 11, 0, 1500, 4000)
      LOOP(0)
         CALL(evt_sub_intpl_msec_get_value)
         DIVF(LVar0, FLOAT(10.000))
         CALL(evt_mapobj_trans, 1, (Bytecode)(void*)str_sai_ki2_aaa_00000504, LVar0, 0, 0)
         MULF(LVar0, FLOAT(-1.000))
         CALL(evt_mapobj_trans, 1, (Bytecode)(void*)str_sai_ki1_aaa_0000050c, LVar0, 0, 0)
         WAIT_FRAMES(1)
         IF_INT_EQ(LVar1, 0)
            BREAK_LOOP
         END_IF
      END_LOOP
   END_THREAD
   CALL(evt_cam3d_evt_set, 145, 122, 717, 145, 108, -180, 5000, 11)
   WAIT_MS(4000)
   CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_00000458, 500, 500, 0)
   SET(LFlag1, 0)
   BEGIN_THREAD
      WAIT_MS(3000)
      LOOP(14)
         CALL(evt_npc_get_position, (Bytecode)(void*)str_sjis_aaa_00000458, LVar0, LVar1, LVar2)
         CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_EVT_OPN_PARETTA__aaa_00000514, LVar0, LVar1, -100, 0)
         WAIT_MS(200)
      END_LOOP
      LOOP(0)
         CALL(evt_npc_get_position, (Bytecode)(void*)str_sjis_aaa_00000458, LVar0, LVar1, LVar2)
         CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_EVT_OPN_PARETTA__aaa_00000514, LVar0, LVar1, -100, 0)
         WAIT_MS(400)
         IF_INT_EQ(LFlag1, 1)
            BREAK_LOOP
         END_IF
      END_LOOP
      LOOP(17)
         CALL(evt_npc_get_position, (Bytecode)(void*)str_sjis_aaa_00000458, LVar0, LVar1, LVar2)
         CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_EVT_OPN_PARETTA__aaa_00000514, LVar0, LVar1, -100, 0)
         WAIT_MS(200)
      END_LOOP
   END_THREAD
   CALL(evt_npc_glide_position, (Bytecode)(void*)str_sjis_aaa_00000458, 210, 25, -30, 0, FLOAT(80.000), FLOAT(-30.000), 11, 0)
   CALL(evt_npc_reverse_ry, (Bytecode)(void*)str_sjis_aaa_00000458)
   WAIT_MS(500)
   CALL(evt_mapobj_get_position, (Bytecode)(void*)str_S_posuto_aaa_00000530, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_EVT_POST_SHAKE1_aaa_0000053c, LVar0, LVar1, LVar2, 0)
   LOOP(3)
      CALL(evt_mapobj_trans, 1, (Bytecode)(void*)str_S_posuto_aaa_00000530, 2, 0, 0)
      WAIT_FRAMES(2)
      CALL(evt_mapobj_trans, 1, (Bytecode)(void*)str_S_posuto_aaa_00000530, 0, 0, 0)
      WAIT_FRAMES(2)
   END_LOOP
   CALL(evt_npc_reverse_ry, (Bytecode)(void*)str_sjis_aaa_00000458)
   WAIT_MS(500)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_pro_00_aaa_00000550, 0, (Bytecode)(void*)str_sjis_aaa_00000458)
   SET(LFlag1, 1)
   CALL(evt_npc_glide_position, (Bytecode)(void*)str_sjis_aaa_00000458, 0, 300, -100, 0, FLOAT(80.000), FLOAT(-30.000), 11, 0)
   CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_00000464, 20, 30, -150)
   CALL(evt_npc_set_ry, (Bytecode)(void*)str_sjis_aaa_00000464, 90)
   CALL(evt_mapobj_flag_onoff, 1, 0, (Bytecode)(void*)str_S_naka_aaa_000004cc, 1)
   CALL(evt_mapobj_get_position, (Bytecode)(void*)str_S_ie_door_aaa_00000470, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_DOOR_OPEN1_aaa_00000558, LVar0, LVar1, LVar2, 0)
   CALL(evt_sub_intpl_msec_init, 11, 0, 180, 500)
   LOOP(0)
      CALL(evt_sub_intpl_msec_get_value)
      SCRIPT_SYNC((Bytecode)evt_door)
      IF_INT_EQ(LVar1, 0)
         BREAK_LOOP
      END_IF
   END_LOOP
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000464, 63, -110, 0, FLOAT(80.000), 1)
   CALL(evt_mapobj_get_position, (Bytecode)(void*)str_S_ie_door_aaa_00000470, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_DOOR_SHUT1_aaa_00000568, LVar0, LVar1, LVar2, 0)
   BEGIN_THREAD
      CALL(evt_sub_intpl_msec_init, 11, 180, 0, 500)
      LOOP(0)
         CALL(evt_sub_intpl_msec_get_value)
         SCRIPT_SYNC((Bytecode)evt_door)
         IF_INT_EQ(LVar1, 0)
            BREAK_LOOP
         END_IF
      END_LOOP
   END_THREAD
   CALL(evt_npc_flag_onoff, 1, (Bytecode)(void*)str_sjis_aaa_00000464, 0x00020010)
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000464, 195, 0, 0, FLOAT(80.000), 1)
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000464, 225, -75, 0, FLOAT(80.000), 1)
   WAIT_MS(500)
   CALL(evt_mapobj_get_position, (Bytecode)(void*)str_S_posuto_aaa_00000530, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_EVT_POST_SHAKE1_aaa_0000053c, LVar0, LVar1, LVar2, 0)
   LOOP(3)
      CALL(evt_mapobj_trans, 1, (Bytecode)(void*)str_S_posuto_aaa_00000530, 2, 0, 0)
      WAIT_FRAMES(2)
      CALL(evt_mapobj_trans, 1, (Bytecode)(void*)str_S_posuto_aaa_00000530, 0, 0, 0)
      WAIT_FRAMES(2)
   END_LOOP
   WAIT_MS(340)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_L_5_aaa_00000578)
   WAIT_MS(500)
   CALL(evt_npc_flag_onoff, 0, (Bytecode)(void*)str_sjis_aaa_00000464, 1024)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_L_11_aaa_0000057c)
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000464, 195, 0, 0, FLOAT(80.000), 1)
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000464, 63, -110, 0, FLOAT(80.000), 1)
   CALL(evt_npc_flag_onoff, 0, (Bytecode)(void*)str_sjis_aaa_00000464, 0x00020010)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_L_5_aaa_00000578)
   CALL(evt_mapobj_get_position, (Bytecode)(void*)str_S_ie_door_aaa_00000470, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_DOOR_OPEN1_aaa_00000558, LVar0, LVar1, LVar2, 0)
   CALL(evt_sub_intpl_msec_init, 11, 0, 180, 500)
   LOOP(0)
      CALL(evt_sub_intpl_msec_get_value)
      SCRIPT_SYNC((Bytecode)evt_door)
      IF_INT_EQ(LVar1, 0)
         BREAK_LOOP
      END_IF
   END_LOOP
   BEGIN_THREAD
      CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_L_6_aaa_00000584)
      CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000464, 25, -155, 0, FLOAT(80.000), 1)
      CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_L_5_aaa_00000578)
   END_THREAD
   WAIT_MS(500)
   CALL(evt_cam3d_evt_set, -345, 154, 96, -32, 75, -217, 0, 11)
   WAIT_FRAMES(1)
   CALL(evt_mapobj_flag_onoff, 1, 1, (Bytecode)(void*)str_S_aaa_00_aaa_00000588, 1)
   CALL(evt_mapobj_flag_onoff, 1, 0, (Bytecode)(void*)str_S_naka_aaa_000004cc, 1)
   CALL(evt_mapobj_flag_onoff, 1, 0, (Bytecode)(void*)str_S_ie_door_aaa_00000470, 1)
   CALL(evt_bg_set_color, 0, 0, 0, 255)
   WAIT_FRAMES(1)
   CALL(evt_snd_bgmoff, 0x00004800)
   CALL(evt_snd_envoff, 0x00004800)
   CALL(evt_snd_env_lpf, 0, 800)
   CALL(evt_mapobj_get_position, (Bytecode)(void*)str_S_ie_door_aaa_00000470, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_DOOR_SHUT1_aaa_00000568, LVar0, LVar1, LVar2, 0)
   BEGIN_THREAD
      CALL(evt_sub_intpl_msec_init, 11, 180, 0, 500)
      LOOP(0)
         CALL(evt_sub_intpl_msec_get_value)
         SCRIPT_SYNC((Bytecode)evt_door)
         IF_INT_EQ(LVar1, 0)
            BREAK_LOOP
         END_IF
      END_LOOP
   END_THREAD
   WAIT_MS(500)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_L_5_aaa_00000578)
   CALL(evt_npc_set_autotalkpose, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_L_5_aaa_00000578, (Bytecode)(void*)str_L_7_aaa_00000594)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_pro_01_aaa_00000598, 0, (Bytecode)(void*)str_sjis_aaa_00000464)
   CALL(evt_cam3d_evt_set, -376, 154, 65, -63, 75, -247, 2000, 11)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_L_6_aaa_00000584)
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000464, 23, -156, 0, FLOAT(80.000), 1)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_L_5_aaa_00000578)
   BEGIN_THREAD
      CALL(evt_mario_set_pos, -155, 30, -320)
      CALL(evt_mario_mov_pos2, -125, -290, FLOAT(80.000))
      CALL(evt_mario_mov_pos2, -85, -310, FLOAT(80.000))
      CALL(evt_mario_adjust_dir)
   END_THREAD
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_L_6_aaa_00000584)
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000464, -52, -275, 0, FLOAT(80.000), 1)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_L_5_aaa_00000578)
   WAIT_MS(500)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_pro_02_aaa_000005a0, 0, (Bytecode)(void*)str_sjis_aaa_00000464)
   WAIT_MS(300)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_L_8_aaa_000005a8)
   CALL(evt_npc_set_autotalkpose, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_L_8_aaa_000005a8, (Bytecode)(void*)str_L_9_aaa_000005ac)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_pro_03_aaa_000005b0, 0, (Bytecode)(void*)str_sjis_aaa_00000464)
   WAIT_MS(300)
   CALL(evt_cam_letter_box_camid, 10)
   CALL(evt_fade_set_mapchange_type, 1, 17, 800, 16, 800)
   CALL(evt_bero_mapchange, (Bytecode)(void*)str_gor_10_aaa_000005b8, 0)
   RETURN
   END
};

EvtScript evt_prologue2 = {
   CALL(evt_snd_envoff, 513)
   CALL(evt_snd_envon, 288, 0)
   CALL(evt_mapobj_flag_onoff, 1, 1, (Bytecode)(void*)str_S_aaa_00_aaa_00000588, 1)
   CALL(evt_mapobj_flag_onoff, 1, 0, (Bytecode)(void*)str_S_naka_aaa_000004cc, 1)
   CALL(evt_mapobj_flag_onoff, 1, 0, (Bytecode)(void*)str_S_ie_door_aaa_00000470, 1)
   CALL(evt_bg_set_color, 0, 0, 0, 255)
   CALL(evt_mario_key_onoff, 0)
   CALL(evt_mario_set_pos, -85, 30, -310)
   CALL(evt_mario_set_dir, 90, 0, 0)
   CALL(evt_mario_adjust_dir)
   CALL(evt_party_stop, 0)
   CALL(evt_npc_flag_onoff, 0, (Bytecode)(void*)str_sjis_aaa_00000464, 1024)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_L_8_aaa_000005a8)
   CALL(evt_npc_set_autotalkpose, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_L_8_aaa_000005a8, (Bytecode)(void*)str_L_9_aaa_000005ac)
   CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_00000464, -52, 30, -275)
   CALL(evt_npc_set_ry, (Bytecode)(void*)str_sjis_aaa_00000464, 270)
   CALL(evt_npc_flag_onoff, 1, (Bytecode)(void*)str_sjis_aaa_00000464, 0x00008000)
   CALL(evt_cam3d_evt_set, -376, 154, 65, -63, 75, -247, 0, 11)
   CALL(evt_seq_wait, 2)
   CALL(evt_fade_end_wait)
   CALL(evt_cam_letter_box_camid, 8)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_pro_05_aaa_000005dc, 0, (Bytecode)(void*)str_sjis_aaa_00000464)
   WAIT_MS(300)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_I_1_aaa_000005e4)
   CALL(evt_npc_get_position, (Bytecode)(void*)str_sjis_aaa_00000464, LVar0, LVar1, LVar2)
   ADD(LVar0, -25)
   ADD(LVar1, 15)
   ADD(LVar2, -3)
   CALL(evt_item_entry, (Bytecode)(void*)str_map_aaa_000005e8, 96, LVar0, LVar1, LVar2, 17, -1, 0)
   CALL(evt_item_set_scale, (Bytecode)(void*)str_map_aaa_000005e8, FLOAT(0.550))
   WAIT_MS(1000)
   CALL(evt_item_delete, (Bytecode)(void*)str_map_aaa_000005e8)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000464, (Bytecode)(void*)str_S_1_aaa_000005ec)
   CALL(evt_mario_set_pose, (Bytecode)(void*)str_M_L_3_aaa_000005f0)
   WAIT_MS(1500)
   SET(LFlag0, 0)
   BEGIN_THREAD
      CALL(mapdraw)
   END_THREAD
   LOOP(0)
      IF_INT_EQ(LFlag0, 1)
         BREAK_LOOP
      END_IF
      WAIT_FRAMES(1)
   END_LOOP
   WAIT_MS(1000)
   CALL(evt_snd_bgmoff_f, 512, 2000)
   CALL(evt_snd_envoff, 512)
   CALL(evt_fade_set_mapchange_type, 1, 49, 0, 50, 0)
   SET(GSW(0), 2)
   CALL(evt_bero_mapchange, (Bytecode)(void*)str_muj_20_aaa_000005f8, (Bytecode)(void*)str_prologue_aaa_00000600)
   RETURN
   END
};

EvtScript epilogue_npc_entry = {
   CALL(evt_npc_entry, (Bytecode)(void*)str_sjis_aaa_0000071c, (Bytecode)(void*)str_c_peach_aaa_00000728)
   CALL(evt_npc_set_tribe, (Bytecode)(void*)str_sjis_aaa_0000071c, (Bytecode)(void*)str_sjis_aaa_00000730)
   CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_0000071c, 0, -1000, 0)
   CALL(evt_npc_set_ry, (Bytecode)(void*)str_sjis_aaa_0000071c, 270)
   CALL(evt_npc_flag_onoff, 1, (Bytecode)(void*)str_sjis_aaa_0000071c, 0x40000620)
   CALL(evt_map_blend_set_flag, 1, (Bytecode)(void*)str_sjis_aaa_0000071c, 2048)
   CALL(evt_map_blend_set_flag, 1, (Bytecode)(void*)str_sjis_aaa_0000071c, 4096)
   CALL(evt_npc_entry, (Bytecode)(void*)str_sjis_aaa_00000744, (Bytecode)(void*)str_c_kino_ji_aaa_00000750)
   CALL(evt_npc_set_tribe, (Bytecode)(void*)str_sjis_aaa_00000744, (Bytecode)(void*)str_sjis_aaa_00000744)
   CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_00000744, 0, -1000, 0)
   CALL(evt_npc_set_ry, (Bytecode)(void*)str_sjis_aaa_00000744, 270)
   CALL(evt_npc_flag_onoff, 1, (Bytecode)(void*)str_sjis_aaa_00000744, 0x40000620)
   CALL(evt_map_blend_set_flag, 1, (Bytecode)(void*)str_sjis_aaa_00000744, 2048)
   CALL(evt_map_blend_set_flag, 1, (Bytecode)(void*)str_sjis_aaa_00000744, 4096)
   RETURN
   END
};

