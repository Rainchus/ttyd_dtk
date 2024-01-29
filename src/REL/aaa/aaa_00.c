#include "evt.h"

typedef long Bytecode;
typedef Bytecode EvtScript[];

void evt_mapobj_rotate(void);

EvtScript evt_door = {
   MULF(LVar0, FLOAT(-0.555))
   MULF(LVar0, FLOAT(-1.000))
   CALL(evt_mapobj_rotate, 0x00000001, str_S_ie_door_aaa_00000480, 0x00000000, LVar0, 0x00000000)
   RETURN
   END
};

EvtScript evt_door2 = {
   MULF(LVar0, FLOAT(-0.500))
   CALL(evt_mapobj_rotate, 0x00000001, str_S_ie_door_aaa_00000480, 0x00000000, 0x00000000, LVar0)
   RETURN
   END
};

EvtScript evt_wall = {
   MULF(LVar0, FLOAT(0.750))
   CALL(evt_mapobj_rotate, 0x00000001, str_S_ie_kaiten2_aaa_0000048c, LVar0, 0x00000000, 0x00000000)
   MULF(LVar0, FLOAT(-1.000))
   CALL(evt_mapobj_rotate, 0x00000001, str_S_ie_kaiten1_aaa_0000049c, LVar0, 0x00000000, 0x00000000)
   RETURN
   END
};

EvtScript door_1_open = {
   CALL(evt_snd_bgmoff, 0x00004800)
   CALL(evt_snd_envoff, 0x00004800)
   CALL(evt_snd_env_lpf, 0x00000000, 0x00000320)
   RETURN
   END
};

EvtScript door_1_close = {
   CALL(evt_snd_bgmon, 0x000000A0, 0x00000000)
   CALL(evt_snd_envon, 0x000000A0, 0x00000000)
   CALL(evt_snd_env_lpf, 0x00000000, 0x00000000)
   RETURN
   END
};

EvtScript evt_prologue = {
   BEGIN_THREAD
      WAIT_MS(0x000005DC)
      CALL(evt_snd_bgmon, 0x00000200, str_BGM_EVT_MARIO_HOUSE1_aaa_000004ec)
   END_THREAD
   CALL(evt_snd_envon, 0x00000110, str_ENV_OPN_AAA1_aaa_00000504)
   CALL(evt_snd_bgm_scope, 0x00000000, 0x00000001)
   CALL(evt_cam_letter_box_onoff, 0x00000001, 0x00000001)
   CALL(evt_cam_letter_box_camid, 0x00000006)
   CALL(evt_npc_status_onoff, 0x00000001, str_ルイージ_aaa_00000474, 0x00000002)
   CALL(evt_npc_status_onoff, 0x00000001, str_パレッタ_aaa_00000468, 0x00000002)
   CALL(evt_party_stop, 0x00000000)
   CALL(evt_mario_key_onoff, 0x00000000)
   CALL(evt_mario_set_pos, 0xFFFFFF6A, 0x0000001E, 0xFFFFFEB6)
   CALL(evt_party_set_pos, 0x00000000, 0xFFFFFF6A, 0x0000001E, 0xFFFFFEB6)
   CALL(evt_cam3d_evt_set, 0x00000091, 0x0000007A, 0x00000374, 0x00000091, 0x0000006C, 0xFFFFFF4C, 0x00000000, 0x0000000B)
   CALL(evt_seq_wait, 0x00000002)
   CALL(evt_mario_set_pos, 0xFFFFFF6A, 0x0000001E, 0xFFFFFEB6)
   CALL(evt_party_set_pos, 0x00000000, 0xFFFFFF6A, 0x0000001E, 0xFFFFFEB6)
   BEGIN_THREAD
      CALL(evt_sub_intpl_msec_init, 0x0000000B, 0x00000000, 0x000005DC, 0x00000FA0)
      LOOP(0x00000000)
         CALL(evt_sub_intpl_msec_get_value)
         DIVF(LVar0, FLOAT(10.000))
         CALL(evt_mapobj_trans, 0x00000001, str_sai_ki2_aaa_00000514, LVar0, 0x00000000, 0x00000000)
         MULF(LVar0, FLOAT(-1.000))
         CALL(evt_mapobj_trans, 0x00000001, str_sai_ki1_aaa_0000051c, LVar0, 0x00000000, 0x00000000)
         WAIT_FRAMES(0x00000001)
         IF_INT_EQ(LVar1, 0x00000000)
            BREAK_LOOP
         END_IF
      END_LOOP
   END_THREAD
   CALL(evt_cam3d_evt_set, 0x00000091, 0x0000007A, 0x000002CD, 0x00000091, 0x0000006C, 0xFFFFFF4C, 0x00001388, 0x0000000B)
   WAIT_MS(0x00000FA0)
   CALL(evt_npc_set_position, str_パレッタ_aaa_00000468, 0x000001F4, 0x000001F4, 0x00000000)
   SET(LFlag1, 0x00000000)
   BEGIN_THREAD
      WAIT_MS(0x00000BB8)
      LOOP(0x0000000E)
         CALL(evt_npc_get_position, str_パレッタ_aaa_00000468, LVar0, LVar1, LVar2)
         CALL(evt_snd_sfxon_3d, str_SFX_EVT_OPN_PARETTA__aaa_00000524, LVar0, LVar1, 0xFFFFFF9C, 0x00000000)
         WAIT_MS(0x000000C8)
      END_LOOP
      LOOP(0x00000000)
         CALL(evt_npc_get_position, str_パレッタ_aaa_00000468, LVar0, LVar1, LVar2)
         CALL(evt_snd_sfxon_3d, str_SFX_EVT_OPN_PARETTA__aaa_00000524, LVar0, LVar1, 0xFFFFFF9C, 0x00000000)
         WAIT_MS(0x00000190)
         IF_INT_EQ(LFlag1, 0x00000001)
            BREAK_LOOP
         END_IF
      END_LOOP
      LOOP(0x00000011)
         CALL(evt_npc_get_position, str_パレッタ_aaa_00000468, LVar0, LVar1, LVar2)
         CALL(evt_snd_sfxon_3d, str_SFX_EVT_OPN_PARETTA__aaa_00000524, LVar0, LVar1, 0xFFFFFF9C, 0x00000000)
         WAIT_MS(0x000000C8)
      END_LOOP
   END_THREAD
   CALL(evt_npc_glide_position, str_パレッタ_aaa_00000468, 0x000000D2, 0x00000019, 0xFFFFFFE2, 0x00000000, FLOAT(80.000), FLOAT(-30.000), 0x0000000B, 0x00000000)
   CALL(evt_npc_reverse_ry, str_パレッタ_aaa_00000468)
   WAIT_MS(0x000001F4)
   CALL(evt_mapobj_get_position, str_S_posuto_aaa_00000540, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, str_SFX_EVT_POST_SHAKE1_aaa_0000054c, LVar0, LVar1, LVar2, 0x00000000)
   LOOP(0x00000003)
      CALL(evt_mapobj_trans, 0x00000001, str_S_posuto_aaa_00000540, 0x00000002, 0x00000000, 0x00000000)
      WAIT_FRAMES(0x00000002)
      CALL(evt_mapobj_trans, 0x00000001, str_S_posuto_aaa_00000540, 0x00000000, 0x00000000, 0x00000000)
      WAIT_FRAMES(0x00000002)
   END_LOOP
   CALL(evt_npc_reverse_ry, str_パレッタ_aaa_00000468)
   WAIT_MS(0x000001F4)
   CALL(evt_msg_print, 0x00000000, str_pro_00_aaa_00000560, 0x00000000, str_パレッタ_aaa_00000468)
   SET(LFlag1, 0x00000001)
   CALL(evt_npc_glide_position, str_パレッタ_aaa_00000468, 0x00000000, 0x0000012C, 0xFFFFFF9C, 0x00000000, FLOAT(80.000), FLOAT(-30.000), 0x0000000B, 0x00000000)
   CALL(evt_npc_set_position, str_ルイージ_aaa_00000474, 0x00000014, 0x0000001E, 0xFFFFFF6A)
   CALL(evt_npc_set_ry, str_ルイージ_aaa_00000474, 0x0000005A)
   CALL(evt_mapobj_flag_onoff, 0x00000001, 0x00000000, str_S_naka_aaa_000004dc, 0x00000001)
   CALL(evt_mapobj_get_position, str_S_ie_door_aaa_00000480, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, str_SFX_DOOR_OPEN1_aaa_00000568, LVar0, LVar1, LVar2, 0x00000000)
   CALL(evt_sub_intpl_msec_init, 0x0000000B, 0x00000000, 0x000000B4, 0x000001F4)
   LOOP(0x00000000)
      CALL(evt_sub_intpl_msec_get_value)
      SCRIPT_SYNC(evt_door)
      IF_INT_EQ(LVar1, 0x00000000)
         BREAK_LOOP
      END_IF
   END_LOOP
   CALL(evt_npc_move_position, str_ルイージ_aaa_00000474, 0x0000003F, 0xFFFFFF92, 0x00000000, FLOAT(80.000), 0x00000001)
   CALL(evt_mapobj_get_position, str_S_ie_door_aaa_00000480, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, str_SFX_DOOR_SHUT1_aaa_00000578, LVar0, LVar1, LVar2, 0x00000000)
   BEGIN_THREAD
      CALL(evt_sub_intpl_msec_init, 0x0000000B, 0x000000B4, 0x00000000, 0x000001F4)
      LOOP(0x00000000)
         CALL(evt_sub_intpl_msec_get_value)
         SCRIPT_SYNC(evt_door)
         IF_INT_EQ(LVar1, 0x00000000)
            BREAK_LOOP
         END_IF
      END_LOOP
   END_THREAD
   CALL(evt_npc_flag_onoff, 0x00000001, str_ルイージ_aaa_00000474, 0x00020010)
   CALL(evt_npc_move_position, str_ルイージ_aaa_00000474, 0x000000C3, 0x00000000, 0x00000000, FLOAT(80.000), 0x00000001)
   CALL(evt_npc_move_position, str_ルイージ_aaa_00000474, 0x000000E1, 0xFFFFFFB5, 0x00000000, FLOAT(80.000), 0x00000001)
   WAIT_MS(0x000001F4)
   CALL(evt_mapobj_get_position, str_S_posuto_aaa_00000540, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, str_SFX_EVT_POST_SHAKE1_aaa_0000054c, LVar0, LVar1, LVar2, 0x00000000)
   LOOP(0x00000003)
      CALL(evt_mapobj_trans, 0x00000001, str_S_posuto_aaa_00000540, 0x00000002, 0x00000000, 0x00000000)
      WAIT_FRAMES(0x00000002)
      CALL(evt_mapobj_trans, 0x00000001, str_S_posuto_aaa_00000540, 0x00000000, 0x00000000, 0x00000000)
      WAIT_FRAMES(0x00000002)
   END_LOOP
   WAIT_MS(0x00000154)
   CALL(evt_npc_set_anim, str_ルイージ_aaa_00000474, str_L_5_aaa_00000588)
   WAIT_MS(0x000001F4)
   CALL(evt_npc_flag_onoff, 0x00000000, str_ルイージ_aaa_00000474, 0x00000400)
   CALL(evt_npc_set_anim, str_ルイージ_aaa_00000474, str_L_11_aaa_0000058c)
   CALL(evt_npc_move_position, str_ルイージ_aaa_00000474, 0x000000C3, 0x00000000, 0x00000000, FLOAT(80.000), 0x00000001)
   CALL(evt_npc_move_position, str_ルイージ_aaa_00000474, 0x0000003F, 0xFFFFFF92, 0x00000000, FLOAT(80.000), 0x00000001)
   CALL(evt_npc_flag_onoff, 0x00000000, str_ルイージ_aaa_00000474, 0x00020010)
   CALL(evt_npc_set_anim, str_ルイージ_aaa_00000474, str_L_5_aaa_00000588)
   CALL(evt_mapobj_get_position, str_S_ie_door_aaa_00000480, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, str_SFX_DOOR_OPEN1_aaa_00000568, LVar0, LVar1, LVar2, 0x00000000)
   CALL(evt_sub_intpl_msec_init, 0x0000000B, 0x00000000, 0x000000B4, 0x000001F4)
   LOOP(0x00000000)
      CALL(evt_sub_intpl_msec_get_value)
      SCRIPT_SYNC(evt_door)
      IF_INT_EQ(LVar1, 0x00000000)
         BREAK_LOOP
      END_IF
   END_LOOP
   BEGIN_THREAD
      CALL(evt_npc_set_anim, str_ルイージ_aaa_00000474, str_L_6_aaa_00000594)
      CALL(evt_npc_move_position, str_ルイージ_aaa_00000474, 0x00000019, 0xFFFFFF65, 0x00000000, FLOAT(80.000), 0x00000001)
      CALL(evt_npc_set_anim, str_ルイージ_aaa_00000474, str_L_5_aaa_00000588)
   END_THREAD
   WAIT_MS(0x000001F4)
   CALL(evt_cam3d_evt_set, 0xFFFFFEA7, 0x0000009A, 0x00000060, 0xFFFFFFE0, 0x0000004B, 0xFFFFFF27, 0x00000000, 0x0000000B)
   WAIT_FRAMES(0x00000001)
   CALL(evt_mapobj_flag_onoff, 0x00000001, 0x00000001, str_S_aaa_00_aaa_00000598, 0x00000001)
   CALL(evt_mapobj_flag_onoff, 0x00000001, 0x00000000, str_S_naka_aaa_000004dc, 0x00000001)
   CALL(evt_mapobj_flag_onoff, 0x00000001, 0x00000000, str_S_ie_door_aaa_00000480, 0x00000001)
   CALL(evt_bg_set_color, 0x00000000, 0x00000000, 0x00000000, 0x000000FF)
   WAIT_FRAMES(0x00000001)
   CALL(evt_snd_bgmoff, 0x00004800)
   CALL(evt_snd_envoff, 0x00004800)
   CALL(evt_snd_env_lpf, 0x00000000, 0x00000320)
   CALL(evt_mapobj_get_position, str_S_ie_door_aaa_00000480, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, str_SFX_DOOR_SHUT1_aaa_00000578, LVar0, LVar1, LVar2, 0x00000000)
   BEGIN_THREAD
      CALL(evt_sub_intpl_msec_init, 0x0000000B, 0x000000B4, 0x00000000, 0x000001F4)
      LOOP(0x00000000)
         CALL(evt_sub_intpl_msec_get_value)
         SCRIPT_SYNC(evt_door)
         IF_INT_EQ(LVar1, 0x00000000)
            BREAK_LOOP
         END_IF
      END_LOOP
   END_THREAD
   WAIT_MS(0x000001F4)
   CALL(evt_npc_set_anim, str_ルイージ_aaa_00000474, str_L_5_aaa_00000588)
   CALL(evt_npc_set_autotalkpose, str_ルイージ_aaa_00000474, str_L_5_aaa_00000588, str_L_7_aaa_000005a4)
   CALL(evt_msg_print, 0x00000000, str_pro_01_aaa_000005a8, 0x00000000, str_ルイージ_aaa_00000474)
   CALL(evt_cam3d_evt_set, 0xFFFFFE88, 0x0000009A, 0x00000041, 0xFFFFFFC1, 0x0000004B, 0xFFFFFF09, 0x000007D0, 0x0000000B)
   CALL(evt_npc_set_anim, str_ルイージ_aaa_00000474, str_L_6_aaa_00000594)
   CALL(evt_npc_move_position, str_ルイージ_aaa_00000474, 0x00000017, 0xFFFFFF64, 0x00000000, FLOAT(80.000), 0x00000001)
   CALL(evt_npc_set_anim, str_ルイージ_aaa_00000474, str_L_5_aaa_00000588)
   BEGIN_THREAD
      CALL(evt_mario_set_pos, 0xFFFFFF65, 0x0000001E, 0xFFFFFEC0)
      CALL(evt_mario_mov_pos2, 0xFFFFFF83, 0xFFFFFEDE, FLOAT(80.000))
      CALL(evt_mario_mov_pos2, 0xFFFFFFAB, 0xFFFFFECA, FLOAT(80.000))
      CALL(evt_mario_adjust_dir)
   END_THREAD
   CALL(evt_npc_set_anim, str_ルイージ_aaa_00000474, str_L_6_aaa_00000594)
   CALL(evt_npc_move_position, str_ルイージ_aaa_00000474, 0xFFFFFFCC, 0xFFFFFEED, 0x00000000, FLOAT(80.000), 0x00000001)
   CALL(evt_npc_set_anim, str_ルイージ_aaa_00000474, str_L_5_aaa_00000588)
   WAIT_MS(0x000001F4)
   CALL(evt_msg_print, 0x00000000, str_pro_02_aaa_000005b0, 0x00000000, str_ルイージ_aaa_00000474)
   WAIT_MS(0x0000012C)
   CALL(evt_npc_set_anim, str_ルイージ_aaa_00000474, str_L_8_aaa_000005b8)
   CALL(evt_npc_set_autotalkpose, str_ルイージ_aaa_00000474, str_L_8_aaa_000005b8, str_L_9_aaa_000005bc)
   CALL(evt_msg_print, 0x00000000, str_pro_03_aaa_000005c0, 0x00000000, str_ルイージ_aaa_00000474)
   WAIT_MS(0x0000012C)
   CALL(evt_cam_letter_box_camid, 0x0000000A)
   CALL(evt_fade_set_mapchange_type, 0x00000001, 0x00000011, 0x00000320, 0x00000010, 0x00000320)
   CALL(evt_bero_mapchange, str_gor_10_aaa_000005c8, 0x00000000)
   RETURN
   END
};

EvtScript evt_prologue2 = {
   CALL(evt_snd_envoff, 0x00000201)
   CALL(evt_snd_envon, 0x00000120, 0x00000000)
   CALL(evt_mapobj_flag_onoff, 0x00000001, 0x00000001, str_S_aaa_00_aaa_00000598, 0x00000001)
   CALL(evt_mapobj_flag_onoff, 0x00000001, 0x00000000, str_S_naka_aaa_000004dc, 0x00000001)
   CALL(evt_mapobj_flag_onoff, 0x00000001, 0x00000000, str_S_ie_door_aaa_00000480, 0x00000001)
   CALL(evt_bg_set_color, 0x00000000, 0x00000000, 0x00000000, 0x000000FF)
   CALL(evt_mario_key_onoff, 0x00000000)
   CALL(evt_mario_set_pos, 0xFFFFFFAB, 0x0000001E, 0xFFFFFECA)
   CALL(evt_mario_set_dir, 0x0000005A, 0x00000000, 0x00000000)
   CALL(evt_party_stop, 0x00000000)
   CALL(evt_npc_flag_onoff, 0x00000000, str_ルイージ_aaa_00000474, 0x00000400)
   CALL(evt_npc_set_anim, str_ルイージ_aaa_00000474, str_L_8_aaa_000005b8)
   CALL(evt_npc_set_autotalkpose, str_ルイージ_aaa_00000474, str_L_8_aaa_000005b8, str_L_9_aaa_000005bc)
   CALL(evt_npc_set_position, str_ルイージ_aaa_00000474, 0xFFFFFFCC, 0x0000001E, 0xFFFFFEED)
   CALL(evt_npc_set_ry, str_ルイージ_aaa_00000474, 0x0000010E)
   CALL(evt_npc_flag_onoff, 0x00000001, str_ルイージ_aaa_00000474, 0x00008000)
   CALL(evt_cam3d_evt_set, 0xFFFFFE88, 0x0000009A, 0x00000041, 0xFFFFFFC1, 0x0000004B, 0xFFFFFF09, 0x00000000, 0x0000000B)
   CALL(evt_seq_wait, 0x00000002)
   CALL(evt_mario_set_dir, 0x0000005A, 0x00000000, 0x00000000)
   CALL(evt_fade_end_wait)
   CALL(evt_cam_letter_box_camid, 0x00000008)
   CALL(evt_msg_print, 0x00000000, str_pro_05_aaa_000005ec, 0x00000000, str_ルイージ_aaa_00000474)
   WAIT_MS(0x0000012C)
   CALL(evt_npc_set_anim, str_ルイージ_aaa_00000474, str_I_1_aaa_000005f4)
   CALL(evt_npc_get_position, str_ルイージ_aaa_00000474, LVar0, LVar1, LVar2)
   ADD(LVar0, 0xFFFFFFE7)
   ADD(LVar1, 0x0000000F)
   ADD(LVar2, 0xFFFFFFFD)
   CALL(evt_item_entry, str_map_aaa_000005f8, 0x00000060, LVar0, LVar1, LVar2, 0x00000011, 0xFFFFFFFF, 0x00000000)
   CALL(evt_item_set_scale, str_map_aaa_000005f8, FLOAT(0.550))
   WAIT_MS(0x000003E8)
   CALL(evt_item_delete, str_map_aaa_000005f8)
   CALL(evt_npc_set_anim, str_ルイージ_aaa_00000474, str_S_1_aaa_000005fc)
   CALL(evt_mario_set_pose, str_M_L_3_aaa_00000600)
   WAIT_MS(0x000005DC)
   SET(LFlag0, 0x00000000)
   BEGIN_THREAD
      CALL(mapdraw)
   END_THREAD
   LOOP(0x00000000)
      IF_INT_EQ(LFlag0, 0x00000001)
         BREAK_LOOP
      END_IF
      WAIT_FRAMES(0x00000001)
   END_LOOP
   WAIT_MS(0x000003E8)
   CALL(evt_snd_bgmoff_f, 0x00000200, 0x000007D0)
   CALL(evt_snd_envoff, 0x00000200)
   CALL(evt_fade_set_mapchange_type, 0x00000001, 0x00000031, 0x00000000, 0x00000032, 0x00000000)
   SET(GSW(0), 0x00000002)
   CALL(evt_bero_mapchange, str_muj_20_aaa_00000608, str_prologue_aaa_00000610)
   RETURN
   END
};

EvtScript epilogue_evt = {
   CALL(evt_snd_bgmoff, 0x00000200)
   CALL(evt_snd_envon, 0x00000110, str_ENV_END_AAA1_aaa_0000061c)
   CALL(evt_mario_key_onoff, 0x00000000)
   CALL(evt_mario_set_pos, 0xFFFFFF82, 0x00000028, 0xFFFFFF20)
   CALL(evt_mario_set_dir, 0x0000005A, 0x00000000, 0x00000000)
   CALL(evt_mario_adjust_dir)
   CALL(evt_npc_set_position, str_ルイージ_aaa_00000474, 0xFFFFFFD4, 0x00000028, 0xFFFFFF5D)
   CALL(evt_npc_set_ry, str_ルイージ_aaa_00000474, 0x0000010E)
   CALL(evt_seq_wait, 0x00000002)
   CALL(evt_map_set_blend, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000000FF)
   CALL(evt_mario_set_pose, str_M_S_5_aaa_0000062c)
   CALL(evt_npc_set_anim, str_ルイージ_aaa_00000474, str_S_2_aaa_00000634)
   WAIT_MS(0x00000BB8)
   CALL(evt_msg_print, 0x00000000, str_ep_31_aaa_00000638, 0x00000000, 0x00000000)
   WAIT_MS(0x000001F4)
   CALL(evt_fade_entry, 0x0000000A, 0x00000001, 0x00000000, 0x00000000, 0x00000000)
   WAIT_FRAMES(0x00000001)
   SET(LVar0, door_1)
   SCRIPT_SYNC(evt_door_open_quick)
   CALL(evt_cam3d_evt_set, 0xFFFFFE98, 0x0000009A, 0x00000050, 0xFFFFFFD2, 0x00000051, 0xFFFFFF18, 0x00000000, 0x0000000B)
   CALL(evt_fade_in, 0x000003E8)
   CALL(evt_snd_envoff, 0x00004800)
   CALL(evt_snd_env_lpf, 0x00000000, 0x00000320)
   WAIT_MS(0x000001F4)
   CALL(evt_npc_set_autotalkpose, str_ルイージ_aaa_00000474, str_S_2_aaa_00000634, str_T_2_aaa_00000640)
   CALL(evt_msg_print, 0x00000000, str_ep_32_aaa_00000644, 0x00000000, str_ルイージ_aaa_00000474)
   CALL(evt_mario_get_pos, 0x00000000, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, str_SFX_VOICE_MARIO_HAND_aaa_0000064c, LVar0, LVar1, LVar2, 0x00000000)
   CALL(evt_mario_set_pose, str_M_N_11_aaa_00000668)
   WAIT_MS(0x000001F4)
   CALL(evt_msg_print, 0x00000000, str_ep_33_aaa_00000670, 0x00000000, str_ルイージ_aaa_00000474)
   WAIT_MS(0x000003E8)
   CALL(evt_mario_get_pos, 0x00000000, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, str_SFX_VOICE_MARIO_FIND_aaa_00000678, LVar0, LVar1, LVar2, 0x00000000)
   CALL(evt_mario_balloon_bikkuri)
   CALL(evt_snd_bgmoff, 0x00000400)
   CALL(evt_snd_bgmon, 0x00000001, str_BGM_FF_MAIL_RECEPTIO_aaa_00000690)
   SCRIPT_ASYNC_TID(evt_sub_mail_vibration, LVar10)
   WAIT_MS(0x000001F4)
   LOOP(0x00000000)
      CALL(evt_key_get_buttontrg, 0x00000000, LVar0)
      IF_INT_EQ(LVar0, 0x00000100)
         BREAK_LOOP
      END_IF
      WAIT_FRAMES(0x00000001)
   END_LOOP
   CALL(evt_mario_balloon_off)
   CALL(evt_snd_bgmoff, 0x00000201)
   CALL(evt_snd_bgmon, 0x00000120, 0x00000000)
   CALL(evt_mario_get_pos, 0x00000000, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, str_SFX_MAIL_RECEPTION1_aaa_000006a8, LVar0, LVar1, LVar2, 0x00000000)
   STOP_TID(LVar10)
   WAIT_FRAMES(0x00000001)
   CALL(evt_sub_rumble_onoff, 0x00000001, 0x00000000)
   CALL(evt_msg_print, 0x00000000, str_ep_34_aaa_000006bc, 0x00000000, str_ルイージ_aaa_00000474)
   CALL(evt_mario_get_pos, 0x00000000, LVar0, LVar1, LVar2)
   CALL(evt_mario_set_dir, 0x0000005A, 0x00000000, 0x00000000)
   CALL(evt_snd_sfxon_3d, str_SFX_VOICE_MARIO_FLD__aaa_000006c4, LVar0, LVar1, LVar2, 0x00000000)
   CALL(evt_mario_jump_pos, 0xFFFFFF80, 0x0000001E, 0xFFFFFF3C, 0x00000190, 0x00000001, 0x00000014)
   CALL(evt_snd_sfxon_3d, str_SFX_MARIO_LANDING3_aaa_000006e0, LVar0, LVar1, LVar2, 0x00000000)
   CALL(evt_mario_set_dir, 0x0000005A, 0x00000000, 0x00000000)
   CALL(evt_cam3d_evt_set, 0xFFFFFECD, 0x00000075, 0x00000009, 0xFFFFFFC6, 0x0000003A, 0xFFFFFF0C, 0x000004B0, 0x0000000B)
   CALL(evt_npc_flag_onoff, 0x00000001, str_ルイージ_aaa_00000474, 0x00000020)
   CALL(evt_npc_jump_position_nohit, str_ルイージ_aaa_00000474, 0xFFFFFFBC, 0x0000001E, 0xFFFFFF6B, 0x00000190, 0x00000014)
   CALL(evt_npc_move_position, str_ルイージ_aaa_00000474, 0xFFFFFF95, 0xFFFFFF5A, 0x00000320, 0x00000000, 0x00000000)
   CALL(evt_mario_set_pose, str_M_N_9_aaa_000006f4)
   WAIT_MS(0x000001F4)
   CALL(evt_mario_get_pos, 0x00000000, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, str_SFX_MAIL_RECEPTION2_aaa_000006fc, LVar0, LVar1, LVar2, 0x00000000)
   CALL(evt_mario_set_pose, str_M_N_10_aaa_00000710)
   WAIT_MS(0x000001F4)
   CALL(evt_msg_print, 0x00000000, str_ep_35_aaa_00000718, 0x00000000, 0x00000000)
   CALL(evt_snd_bgmoff_f, 0x00000200, 0x00000BB8)
   CALL(evt_snd_envoff_f, 0x00000200, 0x00000BB8)
   CALL(evt_fade_set_mapchange_type, 0x00000001, 0x0000000A, 0x00000384, 0x00000009, 0x00000384)
   CALL(evt_bero_mapchange, str_gor_02_aaa_00000720, zero_aaa_00000728)
   RETURN
   END
};

EvtScript epilogue_npc_entry = {
   CALL(evt_npc_entry, str_ピーチ姫_aaa_0000072c, str_c_peach_aaa_00000738)
   CALL(evt_npc_set_tribe, str_ピーチ姫_aaa_0000072c, str_ピーチ姫（普通）_aaa_00000740)
   CALL(evt_npc_set_position, str_ピーチ姫_aaa_0000072c, 0x00000000, 0xFFFFFC18, 0x00000000)
   CALL(evt_npc_set_ry, str_ピーチ姫_aaa_0000072c, 0x0000010E)
   CALL(evt_npc_flag_onoff, 0x00000001, str_ピーチ姫_aaa_0000072c, 0x40000620)
   CALL(evt_map_blend_set_flag, 0x00000001, str_ピーチ姫_aaa_0000072c, 0x00000800)
   CALL(evt_map_blend_set_flag, 0x00000001, str_ピーチ姫_aaa_0000072c, 0x00001000)
   CALL(evt_npc_entry, str_キノじい_aaa_00000754, str_c_kino_ji_aaa_00000760)
   CALL(evt_npc_set_tribe, str_キノじい_aaa_00000754, str_キノじい_aaa_00000754)
   CALL(evt_npc_set_position, str_キノじい_aaa_00000754, 0x00000000, 0xFFFFFC18, 0x00000000)
   CALL(evt_npc_set_ry, str_キノじい_aaa_00000754, 0x0000010E)
   CALL(evt_npc_flag_onoff, 0x00000001, str_キノじい_aaa_00000754, 0x40000620)
   CALL(evt_map_blend_set_flag, 0x00000001, str_キノじい_aaa_00000754, 0x00000800)
   CALL(evt_map_blend_set_flag, 0x00000001, str_キノじい_aaa_00000754, 0x00001000)
   RETURN
   END
};

EvtScript epilogue_evt2 = {
   CALL(evt_snd_envon, 0x00000110, str_ENV_END_AAA1_aaa_0000061c)
   CALL(evt_snd_envoff, 0x00004800)
   CALL(evt_snd_env_lpf, 0x00000000, 0x00000320)
   CALL(evt_mario_key_onoff, 0x00000000)
   CALL(evt_mario_set_pos, 0xFFFFFF80, 0x0000001E, 0xFFFFFF3C)
   CALL(evt_mario_set_dir, 0x0000005A, 0x00000000, 0x00000000)
   CALL(evt_mario_adjust_dir)
   CALL(evt_npc_set_position, str_ルイージ_aaa_00000474, 0xFFFFFF95, 0x0000001E, 0xFFFFFF5A)
   CALL(evt_npc_set_ry, str_ルイージ_aaa_00000474, 0x0000010E)
   CALL(evt_npc_flag_onoff, 0x00000001, str_ルイージ_aaa_00000474, 0x00008000)
   CALL(evt_seq_wait, 0x00000002)
   CALL(evt_mario_set_pose, str_M_N_10_aaa_00000710)
   SET(LVar0, door_1)
   SCRIPT_SYNC(evt_door_open_quick)
   CALL(evt_cam3d_evt_set, 0xFFFFFECD, 0x00000075, 0x00000009, 0xFFFFFFC6, 0x0000003A, 0xFFFFFF0C, 0x00000000, 0x0000000B)
   WAIT_FRAMES(0x00000001)
   CALL(evt_fade_end_wait)
   WAIT_MS(0x000001F4)
   CALL(evt_npc_flag_onoff, 0x00000000, str_ルイージ_aaa_00000474, 0x00008000)
   CALL(evt_msg_print, 0x00000000, str_ep_47_aaa_0000076c, 0x00000000, 0x00000000)
   CALL(evt_snd_bgmon, 0x00000200, str_BGM_EVT_MARIO_HOUSE2_aaa_00000774)
   CALL(evt_snd_bgm_scope, 0x00000000, 0x00000001)
   CALL(evt_cam3d_evt_set, 0xFFFFFE89, 0x0000009A, 0x00000042, 0xFFFFFFC2, 0x00000051, 0xFFFFFF08, 0x00000320, 0x0000000B)
   WAIT_MS(0x00000320)
   CALL(evt_mario_set_pose, str_M_S_1_aaa_0000078c)
   CALL(evt_mario_set_dir, 0x0000005A, 0x00000000, 0x00000000)
   WAIT_MS(0x000003E8)
   CALL(evt_msg_print, 0x00000000, str_ep_48_aaa_00000794, 0x00000000, str_ルイージ_aaa_00000474)
   CALL(evt_mario_get_pos, 0x00000000, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, str_SFX_VOICE_MARIO_NOD1_aaa_0000079c, LVar0, LVar1, LVar2, 0x00000000)
   CALL(evt_mario_set_pose, str_M_N_2_aaa_000007b4)
   WAIT_MS(0x000000C8)
   CALL(evt_mario_set_pose, str_M_S_1_aaa_0000078c)
   CALL(evt_mapobj_get_position, str_S_ie_door_aaa_00000480, LVar0, LVar1, LVar2)
   ADD(LVar1, 0x00000028)
   CALL(evt_snd_sfxon_3d, str_SFX_EVT_EPILOGUE_KIN_aaa_000007bc, LVar0, LVar1, LVar2, 0x00000000)
   WAIT_FRAMES(0x00000014)
   CALL(evt_snd_sfxon_3d, str_SFX_EVT_EPILOGUE_KIN_aaa_000007bc, LVar0, LVar1, LVar2, 0x00000000)
   WAIT_MS(0x000003E8)
   CALL(evt_eff_fukidashi, 0x00000001, zero_aaa_00000728, str_ルイージ_aaa_00000474, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000024)
   WAIT_MS(0x00000320)
   CALL(evt_npc_set_ry, str_ルイージ_aaa_00000474, 0x0000005A)
   WAIT_FRAMES(0x00000001)
   CALL(evt_npc_wait_pera, str_ルイージ_aaa_00000474)
   CALL(evt_msg_print, 0x00000000, str_ep_49_aaa_000007dc, 0x00000000, str_ルイージ_aaa_00000474)
   CALL(evt_npc_set_position, str_キノじい_aaa_00000754, 0x0000003C, 0x0000001E, 0xFFFFFF92)
   CALL(evt_npc_set_position, str_ピーチ姫_aaa_0000072c, 0x0000004E, 0x0000001E, 0xFFFFFFA7)
   CALL(evt_cam3d_evt_set, 0xFFFFFEA7, 0x0000009A, 0x00000060, 0xFFFFFFE1, 0x00000051, 0xFFFFFF27, 0x00000258, 0x0000000B)
   WAIT_MS(0x00000384)
   CALL(evt_msg_print, 0x00000000, str_ep_50_aaa_000007e4, 0x00000000, str_キノじい_aaa_00000754)
   SET(LVar0, door_1)
   SCRIPT_ASYNC(door_open_se)
   CALL(evt_sub_intpl_msec_init, 0x00000005, 0x00000000, 0x000000B4, 0x000001F4)
   LOOP(0x00000000)
      CALL(evt_sub_intpl_msec_get_value)
      SCRIPT_SYNC(evt_door)
      IF_INT_EQ(LVar1, 0x00000000)
         BREAK_LOOP
      END_IF
   END_LOOP
   CALL(evt_npc_move_position, str_キノじい_aaa_00000754, 0x0000000A, 0xFFFFFF33, 0x00000000, 0x0000003C, 0x00000000)
   CALL(evt_npc_move_position, str_ピーチ姫_aaa_0000072c, 0x0000000A, 0xFFFFFF60, 0x00000000, 0x0000003C, 0x00000000)
   CALL(evt_msg_print, 0x00000000, str_ep_51_aaa_000007ec, 0x00000000, str_ピーチ姫_aaa_0000072c)
   WAIT_MS(0x000001F4)
   CALL(evt_msg_print, 0x00000000, str_ep_52_aaa_000007f4, 0x00000000, str_キノじい_aaa_00000754)
   CALL(evt_cam3d_evt_set, 0xFFFFFEFD, 0x00000089, 0x0000002C, 0xFFFFFFF1, 0x0000004C, 0xFFFFFF38, 0x00000320, 0x0000000B)
   WAIT_MS(0x00000320)
   CALL(evt_npc_set_autotalkpose, str_ピーチ姫_aaa_0000072c, str_P_S_5_aaa_000007fc, str_P_T_5_aaa_00000804)
   CALL(evt_msg_print, 0x00000000, str_ep_53_aaa_0000080c, 0x00000000, str_ピーチ姫_aaa_0000072c)
   CALL(evt_npc_set_anim, str_ピーチ姫_aaa_0000072c, str_P_S_7_aaa_00000814)
   CALL(evt_cam3d_evt_set, 0xFFFFFE6A, 0x000000B3, 0x0000007E, 0xFFFFFFD1, 0x0000005A, 0xFFFFFF18, 0x00000320, 0x0000000B)
   WAIT_MS(0x00000320)
   CALL(evt_npc_set_autotalkpose, str_ピーチ姫_aaa_0000072c, str_P_S_7_aaa_00000814, str_P_T_13_aaa_0000081c)
   CALL(evt_msg_print, 0x00000000, str_ep_54_aaa_00000824, 0x00000000, str_ピーチ姫_aaa_0000072c)
   CALL(evt_mario_get_pos, 0x00000000, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, str_SFX_VOICE_MARIO_SURP_aaa_0000082c, LVar0, LVar1, LVar2, 0x00000000)
   CALL(evt_mario_set_pose, str_M_N_5B_aaa_00000848)
   WAIT_MS(0x00000226)
   BEGIN_THREAD
      LOOP(0x00000000)
         CALL(evt_npc_reverse_ry, str_ルイージ_aaa_00000474)
         WAIT_FRAMES(0x00000001)
         CALL(evt_npc_wait_pera, str_ルイージ_aaa_00000474)
         WAIT_MS(0x0000012C)
      END_LOOP
   END_THREAD
   CALL(evt_mario_set_pose, str_M_I_G_aaa_00000850)
   WAIT_MS(0x000000C8)
   CALL(evt_npc_set_ry, str_ピーチ姫_aaa_0000072c, 0x0000005A)
   WAIT_FRAMES(0x00000001)
   CALL(evt_npc_wait_pera, str_ピーチ姫_aaa_0000072c)
   SET(LFlag0, 0x00000001)
   BEGIN_THREAD
      WAIT_MS(0x0000012C)
      CALL(evt_npc_set_ry, str_キノじい_aaa_00000754, 0x0000005A)
      WAIT_FRAMES(0x00000001)
      CALL(evt_npc_wait_pera, str_キノじい_aaa_00000754)
      CALL(evt_npc_move_position, str_キノじい_aaa_00000754, 0x00000014, 0xFFFFFF6F, 0x00000000, 0x00000050, 0x00000000)
      CALL(evt_npc_move_position, str_キノじい_aaa_00000754, 0x0000004E, 0xFFFFFFA7, 0x00000000, 0x00000050, 0x00000000)
      CALL(evt_npc_set_position, str_キノじい_aaa_00000754, 0x00000000, 0xFFFFFC18, 0x00000000)
      SET(LFlag0, 0x00000000)
   END_THREAD
   CALL(evt_npc_move_position, str_ピーチ姫_aaa_0000072c, 0x00000014, 0xFFFFFF6F, 0x00000000, 0x0000003C, 0x00000000)
   CALL(evt_npc_move_position, str_ピーチ姫_aaa_0000072c, 0x0000004E, 0xFFFFFFA7, 0x00000000, 0x0000003C, 0x00000000)
   CALL(evt_npc_set_position, str_ピーチ姫_aaa_0000072c, 0x00000000, 0xFFFFFC18, 0x00000000)
   WAIT_UNTIL(LFlag0)
   CALL(evt_snd_bgmon, 0x00000200, str_BGM_ENDING4_aaa_00000858)
   CALL(evt_cam3d_evt_set, 0xFFFFFEFC, 0x0000005A, 0xFFFFFFC2, 0xFFFFFFBC, 0x0000002A, 0xFFFFFF03, 0x00000320, 0x0000000B)
   WAIT_MS(0x00000320)
   CALL(evt_mario_set_pose, str_M_I_N_aaa_00000864)
   WAIT_MS(0x000003E8)
   CALL(evt_mario_get_pos, 0x00000000, LVar0, LVar1, LVar2)
   ADD(LVar1, 0x0000001E)
   CALL(evt_fade_set_spot_pos, LVar0, LVar1, LVar2)
   CALL(evt_fade_entry, 0x00000004, 0x00000BB8, 0x00000000, 0x00000000, 0x00000000)
   CALL(evt_fade_end_wait)
   WAIT_MS(0x00000BB8)
   SET(GSW(0), 0x00000193)
   CALL(evt_fade_set_mapchange_type, 0x00000001, 0x0000000A, 0x00000001, 0x00000009, 0x0000012C)
   CALL(evt_bero_mapchange, str_end_00_aaa_0000086c, zero_aaa_00000728)
   RETURN
   END
};

EvtScript aaa_00_init_evt_1_data_20CC = {
   SET(LVar0, bero_entry_data)
   CALL(evt_bero_get_info)
   SCRIPT_SYNC(evt_bero_info_run)
   CALL(evt_npc_setup, npcEnt)
   SET(LVar0, door_1)
   SCRIPT_SYNC(evt_door_entry)
   CALL(evt_mapobj_flag_onoff, 0x00000001, 0x00000000, str_sai_ki1_aaa_0000051c, 0x00000002)
   CALL(evt_mapobj_flag_onoff, 0x00000001, 0x00000000, str_sai_ki2_aaa_00000514, 0x00000002)
   CALL(evt_bero_get_entername, LVar0)
   IF_STR_EQ(LVar0, str_prologue_aaa_00000610)
      SCRIPT_ASYNC(evt_prologue)
      WAIT_FRAMES(0x00000001)
      RETURN
   END_IF
   IF_STR_EQ(LVar0, str_prologue2_aaa_00000984)
      SCRIPT_ASYNC(evt_prologue2)
      WAIT_FRAMES(0x00000001)
      RETURN
   END_IF
   IF_INT_EQ(GSW(0), 0x00000192)
      CALL(evt_mario_kill_party, 0x00000000)
      CALL(evt_bero_get_entername, LVar0)
      IF_STR_EQ(LVar0, str_epilogue2_aaa_00000990)
         SCRIPT_SYNC(epilogue_npc_entry)
         SCRIPT_ASYNC(epilogue_evt2)
      ELSE
         SCRIPT_ASYNC(epilogue_evt)
      END_IF
   END_IF
   SET(LVar0, ki_data)
   SCRIPT_SYNC(evt_sub_tree_access_entry)
   SET(LVar0, kusa_data)
   SCRIPT_SYNC(evt_sub_kusa_access_entry)
   RETURN
   END
};