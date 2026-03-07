#include "evt.h"
//#include "math.h"


extern char evt_eff_fukidashi[]; //unknown type
extern char const zero_aaa_00000728; //unknown type

extern EvtScript evt_door_open_quick;
extern EvtScript door_open_se;

void mapdraw(void);
API_CALLABLE(evt_mario_get_pos);
API_CALLABLE(evt_npc_wait_pera);
API_CALLABLE(evt_fade_set_spot_pos);
API_CALLABLE(evt_fade_entry);
API_CALLABLE(evt_bero_get_info);
API_CALLABLE(evt_bero_info_run);
API_CALLABLE(evt_npc_setup);
API_CALLABLE(evt_door_entry);
API_CALLABLE(evt_bero_get_entername);
API_CALLABLE(evt_mario_kill_party);
API_CALLABLE(evt_map_set_blend);
API_CALLABLE(evt_fade_in);
API_CALLABLE(evt_mario_balloon_bikkuri);
API_CALLABLE(evt_sub_mail_vibration);
API_CALLABLE(evt_key_get_buttontrg);
API_CALLABLE(evt_mario_balloon_off);
API_CALLABLE(evt_sub_rumble_onoff);
API_CALLABLE(evt_mario_jump_pos);
API_CALLABLE(evt_npc_jump_position_nohit);
API_CALLABLE(evt_snd_envoff_f);
API_CALLABLE(evt_sub_tree_access_entry);
API_CALLABLE(evt_sub_kusa_access_entry);
API_CALLABLE(evt_mapobj_rotate);
API_CALLABLE(evt_snd_bgmoff);
API_CALLABLE(evt_snd_envoff);
API_CALLABLE(evt_snd_env_lpf);
API_CALLABLE(evt_snd_bgmon);
API_CALLABLE(evt_snd_envon);
API_CALLABLE(evt_snd_bgm_scope);
API_CALLABLE(evt_cam_letter_box_onoff);
API_CALLABLE(evt_cam_letter_box_camid);
API_CALLABLE(evt_npc_status_onoff);
API_CALLABLE(evt_party_stop);
API_CALLABLE(evt_mario_key_onoff);
API_CALLABLE(evt_mario_set_pos);
API_CALLABLE(evt_party_set_pos);
API_CALLABLE(evt_cam3d_evt_set);
API_CALLABLE(evt_seq_wait);
API_CALLABLE(evt_sub_intpl_msec_init);
API_CALLABLE(evt_sub_intpl_msec_get_value);
API_CALLABLE(evt_mapobj_trans);
API_CALLABLE(evt_npc_set_position);
API_CALLABLE(evt_npc_get_position);
API_CALLABLE(evt_snd_sfxon_3d);
API_CALLABLE(evt_npc_glide_position);
API_CALLABLE(evt_npc_reverse_ry);
API_CALLABLE(evt_mapobj_get_position);
API_CALLABLE(evt_msg_print);
API_CALLABLE(evt_npc_set_ry);
API_CALLABLE(evt_mapobj_flag_onoff);
API_CALLABLE(evt_npc_move_position);
API_CALLABLE(evt_npc_flag_onoff);
API_CALLABLE(evt_npc_set_anim);
API_CALLABLE(evt_bg_set_color);
API_CALLABLE(evt_npc_set_autotalkpose);
API_CALLABLE(evt_mario_mov_pos2);
API_CALLABLE(evt_mario_adjust_dir);
API_CALLABLE(evt_fade_set_mapchange_type);
API_CALLABLE(evt_bero_mapchange);
API_CALLABLE(evt_mario_set_dir);
API_CALLABLE(evt_fade_end_wait);
API_CALLABLE(evt_item_entry);
API_CALLABLE(evt_item_set_scale);
API_CALLABLE(evt_item_delete);
API_CALLABLE(evt_mario_set_pose);
API_CALLABLE(evt_snd_bgmoff_f);
API_CALLABLE(evt_npc_entry);
API_CALLABLE(evt_npc_set_tribe);
API_CALLABLE(evt_map_blend_set_flag);

// String declarations
char const str_sjis_aaa_00000468[] = "パレッタ";
char const str_sjis_aaa_00000474[] = "ルイージ";
char const str_S_ie_door_aaa_00000480[] = "S_ie_door";
char const str_S_ie_kaiten2_aaa_0000048c[] = "S_ie_kaiten2";
char const str_S_ie_kaiten1_aaa_0000049c[] = "S_ie_kaiten1";
char const str_A_ie_door_aaa_000004ac[] = "A_ie_door";
char const str_A_ie_door_u_aaa_000004b8[] = "A_ie_door_u";
char const str_S_ie_soto_aaa_000004c4[] = "S_ie_soto";
char const str_A_ie_soto_aaa_000004d0[] = "A_ie_soto";
char const str_S_naka_aaa_000004dc[] = "S_naka";
char const str_A_naka1_aaa_000004e4[] = "A_naka1";
char const str_BGM_EVT_MARIO_HOUSE1_aaa_000004ec[] = "BGM_EVT_MARIO_HOUSE1";
char const str_ENV_OPN_AAA1_aaa_00000504[] = "ENV_OPN_AAA1";
char const str_sai_ki2_aaa_00000514[] = "sai_ki2";
char const str_sai_ki1_aaa_0000051c[] = "sai_ki1";
char const str_SFX_EVT_OPN_PARETTA__aaa_00000524[] = "SFX_EVT_OPN_PARETTA_MOVE1";
char const str_S_posuto_aaa_00000540[] = "S_posuto";
char const str_SFX_EVT_POST_SHAKE1_aaa_0000054c[] = "SFX_EVT_POST_SHAKE1";
char const str_pro_00_aaa_00000560[] = "pro_00";
char const str_SFX_DOOR_OPEN1_aaa_00000568[] = "SFX_DOOR_OPEN1";
char const str_SFX_DOOR_SHUT1_aaa_00000578[] = "SFX_DOOR_SHUT1";
char const str_L_5_aaa_00000588[] = "L_5";
char const str_L_11_aaa_0000058c[] = "L_11";
char const str_L_6_aaa_00000594[] = "L_6";
char const str_S_aaa_00_aaa_00000598[] = "S_aaa_00";
char const str_L_7_aaa_000005a4[] = "L_7";
char const str_pro_01_aaa_000005a8[] = "pro_01";
char const str_pro_02_aaa_000005b0[] = "pro_02";
char const str_L_8_aaa_000005b8[] = "L_8";
char const str_L_9_aaa_000005bc[] = "L_9";
char const str_pro_03_aaa_000005c0[] = "pro_03";
char const str_gor_10_aaa_000005c8[] = "gor_10";
const float vec3_aaa_000005d0[] = {0.0f, 0.0f, 0.0f};
const float vec3_aaa_000005dc[] = {1.0f, 1.0f, 1.0f};
const int dat_aaa_000005e8 = -256;
char const str_pro_05_aaa_000005ec[] = "pro_05";
char const str_I_1_aaa_000005f4[] = "I_1";
char const str_map_aaa_000005f8[] = "map";
char const str_S_1_aaa_000005fc[] = "S_1";
char const str_M_L_3_aaa_00000600[] = "M_L_3";
char const str_muj_20_aaa_00000608[] = "muj_20";
char const str_prologue_aaa_00000610[] = "prologue";
char const str_ENV_END_AAA1_aaa_0000061c[] = "ENV_END_AAA1";
char const str_M_S_5_aaa_0000062c[] = "M_S_5";
char const str_S_2_aaa_00000634[] = "S_2";
char const str_ep_31_aaa_00000638[] = "ep_31";
char const str_T_2_aaa_00000640[] = "T_2";
char const str_ep_32_aaa_00000644[] = "ep_32";
char const str_SFX_VOICE_MARIO_HAND_aaa_0000064c[] = "SFX_VOICE_MARIO_HAND_UP1_2";
char const str_M_N_11_aaa_00000668[] = "M_N_11";
char const str_ep_33_aaa_00000670[] = "ep_33";
char const str_SFX_VOICE_MARIO_FIND_aaa_00000678[] = "SFX_VOICE_MARIO_FIND1_2";
char const str_BGM_FF_MAIL_RECEPTIO_aaa_00000690[] = "BGM_FF_MAIL_RECEPTION3";
char const str_SFX_MAIL_RECEPTION1_aaa_000006a8[] = "SFX_MAIL_RECEPTION1";
char const str_ep_34_aaa_000006bc[] = "ep_34";
char const str_SFX_VOICE_MARIO_FLD__aaa_000006c4[] = "SFX_VOICE_MARIO_FLD_JUMP3";
char const str_SFX_MARIO_LANDING3_aaa_000006e0[] = "SFX_MARIO_LANDING3";
char const str_M_N_9_aaa_000006f4[] = "M_N_9";
char const str_SFX_MAIL_RECEPTION2_aaa_000006fc[] = "SFX_MAIL_RECEPTION2";
char const str_M_N_10_aaa_00000710[] = "M_N_10";
char const str_ep_35_aaa_00000718[] = "ep_35";
char const str_gor_02_aaa_00000720[] = "gor_02";
char const zero_aaa_00000728 = 0;
char const str_sjis_aaa_0000072c[] = "ピーチ姫";
char const str_c_peach_aaa_00000738[] = "c_peach";
char const str_sjis_aaa_00000740[] = "ピーチ姫（普通）";
char const str_sjis_aaa_00000754[] = "キノじい";
char const str_c_kino_ji_aaa_00000760[] = "c_kino_ji";
char const str_ep_47_aaa_0000076c[] = "ep_47";
char const str_BGM_EVT_MARIO_HOUSE2_aaa_00000774[] = "BGM_EVT_MARIO_HOUSE2";
char const str_M_S_1_aaa_0000078c[] = "M_S_1";
char const str_ep_48_aaa_00000794[] = "ep_48";
char const str_SFX_VOICE_MARIO_NOD1_aaa_0000079c[] = "SFX_VOICE_MARIO_NOD1_4";
char const str_M_N_2_aaa_000007b4[] = "M_N_2";
char const str_SFX_EVT_EPILOGUE_KIN_aaa_000007bc[] = "SFX_EVT_EPILOGUE_KINOJII_KNOCK1";
char const str_ep_49_aaa_000007dc[] = "ep_49";
char const str_ep_50_aaa_000007e4[] = "ep_50";
char const str_ep_51_aaa_000007ec[] = "ep_51";
char const str_ep_52_aaa_000007f4[] = "ep_52";
char const str_P_S_5_aaa_000007fc[] = "P_S_5";
char const str_P_T_5_aaa_00000804[] = "P_T_5";
char const str_ep_53_aaa_0000080c[] = "ep_53";
char const str_P_S_7_aaa_00000814[] = "P_S_7";
char const str_P_T_13_aaa_0000081c[] = "P_T_13";
char const str_ep_54_aaa_00000824[] = "ep_54";
char const str_SFX_VOICE_MARIO_SURP_aaa_0000082c[] = "SFX_VOICE_MARIO_SURPRISED2";
char const str_M_N_5B_aaa_00000848[] = "M_N_5B";
char const str_M_I_G_aaa_00000850[] = "M_I_G";
char const str_BGM_ENDING4_aaa_00000858[] = "BGM_ENDING4";
char const str_M_I_N_aaa_00000864[] = "M_I_N";
char const str_end_00_aaa_0000086c[] = "end_00";
char const str_A_ki_1_aaa_00000874[] = "A_ki_1";
char const str_S_ki_1_aaa_0000087c[] = "S_ki_1";
char const str_S_ha_1_aaa_00000884[] = "S_ha_1";
char const str_A_kusa_01_aaa_0000088c[] = "A_kusa_01";
char const str_S_kusa_01_aaa_00000898[] = "S_kusa_01";
char const str_A_kusa_02_aaa_000008a4[] = "A_kusa_02";
char const str_S_kusa_02_aaa_000008b0[] = "S_kusa_02";
char const str_A_kusa_03_aaa_000008bc[] = "A_kusa_03";
char const str_S_kusa_03_aaa_000008c8[] = "S_kusa_03";
char const str_A_kusa_04_aaa_000008d4[] = "A_kusa_04";
char const str_S_kusa_04_aaa_000008e0[] = "S_kusa_04";
char const str_A_kusa_05_aaa_000008ec[] = "A_kusa_05";
char const str_S_kusa_05_aaa_000008f8[] = "S_kusa_05";
char const str_A_kusa_06_aaa_00000904[] = "A_kusa_06";
char const str_S_kusa_06_aaa_00000910[] = "S_kusa_06";
char const str_A_kusa_07_aaa_0000091c[] = "A_kusa_07";
char const str_S_kusa_07_aaa_00000928[] = "S_kusa_07";
char const str_A_kusa_08_aaa_00000934[] = "A_kusa_08";
char const str_S_kusa_08_aaa_00000940[] = "S_kusa_08";
char const str_A_kusa_09_aaa_0000094c[] = "A_kusa_09";
char const str_S_kusa_09_aaa_00000958[] = "S_kusa_09";
char const str_A_kusa_10_aaa_00000964[] = "A_kusa_10";
char const str_S_kusa_10_aaa_00000970[] = "S_kusa_10";
char const str_dokan_1_aaa_0000097c[] = "dokan_1";
char const str_prologue2_aaa_00000984[] = "prologue2";
char const str_epilogue2_aaa_00000990[] = "epilogue2";
char const str_PCTs_mariost_tpl_aaa_0000099c[] = "%s/mariost.tpl";
float const float_1000_aaa_000009ac = 1000.0f;

char wp[4];

typedef struct NpcEntry {
   char const* name;       // 0x00 - NPC name string
   long        flags;      // 0x04 - e.g. 0x40000600
   long        unk_08;
   long        unk_0C;
   long        unk_10;
   long        unk_14;
   long        unk_18;
   long        unk_1C;
   long        unk_20;
   long        unk_24;
   long        unk_28;
   long        unk_2C;
   long        unk_30;
   long        unk_34;
   long        unk_38;
   long        unk_3C;
   long        unk_40;
   long        unk_44;
   long        unk_48;
   long        unk_4C;
   long        unk_50;
   long        unk_54;
   long        unk_58;  // 0x58 - last field, total size = 0x5C
} NpcEntry;

NpcEntry npcEnt[] = {
   { str_sjis_aaa_00000468, 0x40000600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
   { str_sjis_aaa_00000474, 0x40000600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
   //always ends with a blank entry?
   { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
};

EVT_BEGIN(evt_door) {
   MULF(LVar0, FLOAT(-0.555))
   MULF(LVar0, FLOAT(-1.000))
   CALL(evt_mapobj_rotate, 1, (Bytecode)(void*)str_S_ie_door_aaa_00000480, 0, LVar0, 0)
   RETURN
   END
};

EVT_BEGIN(evt_door2) {
   MULF(LVar0, FLOAT(-0.500))
   CALL(evt_mapobj_rotate, 1, (Bytecode)(void*)str_S_ie_door_aaa_00000480, 0, 0, LVar0)
   RETURN
   END
};

EVT_BEGIN(evt_wall) {
   MULF(LVar0, FLOAT(0.750))
   CALL(evt_mapobj_rotate, 1, (Bytecode)(void*)str_S_ie_kaiten2_aaa_0000048c, LVar0, 0, 0)
   MULF(LVar0, FLOAT(-1.000))
   CALL(evt_mapobj_rotate, 1, (Bytecode)(void*)str_S_ie_kaiten1_aaa_0000049c, LVar0, 0, 0)
   RETURN
   END
};

//char const* ie_npc = str_sjis_aaa_00000474;

EVT_BEGIN(door_1_open) {
   CALL(evt_snd_bgmoff, 0x00004800)
   CALL(evt_snd_envoff, 0x00004800)
   CALL(evt_snd_env_lpf, 0, 800)
   RETURN
   END
};

EVT_BEGIN(door_1_close) {
   CALL(evt_snd_bgmon, 160, 0)
   CALL(evt_snd_envon, 160, 0)
   CALL(evt_snd_env_lpf, 0, 0)
   RETURN
   END
};

typedef struct Door {
   long unk_00;
   long unk_04;
   long unk_08;
   char const* unk_0C;
   char const* unk_10;
   char const* unk_14;
   char const* unk_18;
   char const* unk_1C;
   char const* unk_20;
   char const* unk_24;
   void* event1;
   long unk_2C;
   void* event2;
   char const* unk_38;
   long unk_3C;
   long unk_40;
   void* doorOpen;
   void* doorClose;
} Door;

Door door_1 = {
   0x00000000,
   0x00000003,
   0x00000004,
   str_S_ie_door_aaa_00000480,
   str_A_ie_door_aaa_000004ac,
   str_A_ie_door_u_aaa_000004b8,
   str_S_ie_soto_aaa_000004c4,
   str_A_ie_soto_aaa_000004d0,
   str_S_naka_aaa_000004dc,
   str_A_naka1_aaa_000004e4,
   (void*)evt_door,
   0x00000000,
   (void*)evt_wall,
   str_sjis_aaa_00000474,
   0x00000000,
   0x00000000,
   (void*)door_1_open,
   (void*)door_1_close,
};

EVT_BEGIN(evt_prologue) {
   BEGIN_THREAD
      WAIT_MS(1500)
      CALL(evt_snd_bgmon, 512, (Bytecode)(void*)str_BGM_EVT_MARIO_HOUSE1_aaa_000004ec)
   END_THREAD
   CALL(evt_snd_envon, 272, (Bytecode)(void*)str_ENV_OPN_AAA1_aaa_00000504)
   CALL(evt_snd_bgm_scope, 0, 1)
   CALL(evt_cam_letter_box_onoff, 1, 1)
   CALL(evt_cam_letter_box_camid, 6)
   CALL(evt_npc_status_onoff, 1, (Bytecode)(void*)str_sjis_aaa_00000474, 2)
   CALL(evt_npc_status_onoff, 1, (Bytecode)(void*)str_sjis_aaa_00000468, 2)
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
         CALL(evt_mapobj_trans, 1, (Bytecode)(void*)str_sai_ki2_aaa_00000514, LVar0, 0, 0)
         MULF(LVar0, FLOAT(-1.000))
         CALL(evt_mapobj_trans, 1, (Bytecode)(void*)str_sai_ki1_aaa_0000051c, LVar0, 0, 0)
         WAIT_FRAMES(1)
         IF_INT_EQ(LVar1, 0)
            BREAK_LOOP
         END_IF
      END_LOOP
   END_THREAD
   CALL(evt_cam3d_evt_set, 145, 122, 717, 145, 108, -180, 5000, 11)
   WAIT_MS(4000)
   CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_00000468, 500, 500, 0)
   SET(LFlag1, 0)
   BEGIN_THREAD
      WAIT_MS(3000)
      LOOP(14)
         CALL(evt_npc_get_position, (Bytecode)(void*)str_sjis_aaa_00000468, LVar0, LVar1, LVar2)
         CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_EVT_OPN_PARETTA__aaa_00000524, LVar0, LVar1, -100, 0)
         WAIT_MS(200)
      END_LOOP
      LOOP(0)
         CALL(evt_npc_get_position, (Bytecode)(void*)str_sjis_aaa_00000468, LVar0, LVar1, LVar2)
         CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_EVT_OPN_PARETTA__aaa_00000524, LVar0, LVar1, -100, 0)
         WAIT_MS(400)
         IF_INT_EQ(LFlag1, 1)
            BREAK_LOOP
         END_IF
      END_LOOP
      LOOP(17)
         CALL(evt_npc_get_position, (Bytecode)(void*)str_sjis_aaa_00000468, LVar0, LVar1, LVar2)
         CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_EVT_OPN_PARETTA__aaa_00000524, LVar0, LVar1, -100, 0)
         WAIT_MS(200)
      END_LOOP
   END_THREAD
   CALL(evt_npc_glide_position, (Bytecode)(void*)str_sjis_aaa_00000468, 210, 25, -30, 0, FLOAT(80.000), FLOAT(-30.000), 11, 0)
   CALL(evt_npc_reverse_ry, (Bytecode)(void*)str_sjis_aaa_00000468)
   WAIT_MS(500)
   CALL(evt_mapobj_get_position, (Bytecode)(void*)str_S_posuto_aaa_00000540, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_EVT_POST_SHAKE1_aaa_0000054c, LVar0, LVar1, LVar2, 0)
   LOOP(3)
      CALL(evt_mapobj_trans, 1, (Bytecode)(void*)str_S_posuto_aaa_00000540, 2, 0, 0)
      WAIT_FRAMES(2)
      CALL(evt_mapobj_trans, 1, (Bytecode)(void*)str_S_posuto_aaa_00000540, 0, 0, 0)
      WAIT_FRAMES(2)
   END_LOOP
   CALL(evt_npc_reverse_ry, (Bytecode)(void*)str_sjis_aaa_00000468)
   WAIT_MS(500)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_pro_00_aaa_00000560, 0, (Bytecode)(void*)str_sjis_aaa_00000468)
   SET(LFlag1, 1)
   CALL(evt_npc_glide_position, (Bytecode)(void*)str_sjis_aaa_00000468, 0, 300, -100, 0, FLOAT(80.000), FLOAT(-30.000), 11, 0)
   CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_00000474, 20, 30, -150)
   CALL(evt_npc_set_ry, (Bytecode)(void*)str_sjis_aaa_00000474, 90)
   CALL(evt_mapobj_flag_onoff, 1, 0, (Bytecode)(void*)str_S_naka_aaa_000004dc, 1)
   CALL(evt_mapobj_get_position, (Bytecode)(void*)str_S_ie_door_aaa_00000480, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_DOOR_OPEN1_aaa_00000568, LVar0, LVar1, LVar2, 0)
   CALL(evt_sub_intpl_msec_init, 11, 0, 180, 500)
   LOOP(0)
      CALL(evt_sub_intpl_msec_get_value)
      SCRIPT_SYNC(evt_door)
      IF_INT_EQ(LVar1, 0)
         BREAK_LOOP
      END_IF
   END_LOOP
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000474, 63, -110, 0, FLOAT(80.000), 1)
   CALL(evt_mapobj_get_position, (Bytecode)(void*)str_S_ie_door_aaa_00000480, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_DOOR_SHUT1_aaa_00000578, LVar0, LVar1, LVar2, 0)
   BEGIN_THREAD
      CALL(evt_sub_intpl_msec_init, 11, 180, 0, 500)
      LOOP(0)
         CALL(evt_sub_intpl_msec_get_value)
         SCRIPT_SYNC(evt_door)
         IF_INT_EQ(LVar1, 0)
            BREAK_LOOP
         END_IF
      END_LOOP
   END_THREAD
   CALL(evt_npc_flag_onoff, 1, (Bytecode)(void*)str_sjis_aaa_00000474, 0x00020010)
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000474, 195, 0, 0, FLOAT(80.000), 1)
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000474, 225, -75, 0, FLOAT(80.000), 1)
   WAIT_MS(500)
   CALL(evt_mapobj_get_position, (Bytecode)(void*)str_S_posuto_aaa_00000540, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_EVT_POST_SHAKE1_aaa_0000054c, LVar0, LVar1, LVar2, 0)
   LOOP(3)
      CALL(evt_mapobj_trans, 1, (Bytecode)(void*)str_S_posuto_aaa_00000540, 2, 0, 0)
      WAIT_FRAMES(2)
      CALL(evt_mapobj_trans, 1, (Bytecode)(void*)str_S_posuto_aaa_00000540, 0, 0, 0)
      WAIT_FRAMES(2)
   END_LOOP
   WAIT_MS(340)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_L_5_aaa_00000588)
   WAIT_MS(500)
   CALL(evt_npc_flag_onoff, 0, (Bytecode)(void*)str_sjis_aaa_00000474, 1024)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_L_11_aaa_0000058c)
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000474, 195, 0, 0, FLOAT(80.000), 1)
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000474, 63, -110, 0, FLOAT(80.000), 1)
   CALL(evt_npc_flag_onoff, 0, (Bytecode)(void*)str_sjis_aaa_00000474, 0x00020010)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_L_5_aaa_00000588)
   CALL(evt_mapobj_get_position, (Bytecode)(void*)str_S_ie_door_aaa_00000480, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_DOOR_OPEN1_aaa_00000568, LVar0, LVar1, LVar2, 0)
   CALL(evt_sub_intpl_msec_init, 11, 0, 180, 500)
   LOOP(0)
      CALL(evt_sub_intpl_msec_get_value)
      SCRIPT_SYNC(evt_door)
      IF_INT_EQ(LVar1, 0)
         BREAK_LOOP
      END_IF
   END_LOOP
   BEGIN_THREAD
      CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_L_6_aaa_00000594)
      CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000474, 25, -155, 0, FLOAT(80.000), 1)
      CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_L_5_aaa_00000588)
   END_THREAD
   WAIT_MS(500)
   CALL(evt_cam3d_evt_set, -345, 154, 96, -32, 75, -217, 0, 11)
   WAIT_FRAMES(1)
   CALL(evt_mapobj_flag_onoff, 1, 1, (Bytecode)(void*)str_S_aaa_00_aaa_00000598, 1)
   CALL(evt_mapobj_flag_onoff, 1, 0, (Bytecode)(void*)str_S_naka_aaa_000004dc, 1)
   CALL(evt_mapobj_flag_onoff, 1, 0, (Bytecode)(void*)str_S_ie_door_aaa_00000480, 1)
   CALL(evt_bg_set_color, 0, 0, 0, 255)
   WAIT_FRAMES(1)
   CALL(evt_snd_bgmoff, 0x00004800)
   CALL(evt_snd_envoff, 0x00004800)
   CALL(evt_snd_env_lpf, 0, 800)
   CALL(evt_mapobj_get_position, (Bytecode)(void*)str_S_ie_door_aaa_00000480, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_DOOR_SHUT1_aaa_00000578, LVar0, LVar1, LVar2, 0)
   BEGIN_THREAD
      CALL(evt_sub_intpl_msec_init, 11, 180, 0, 500)
      LOOP(0)
         CALL(evt_sub_intpl_msec_get_value)
         SCRIPT_SYNC(evt_door)
         IF_INT_EQ(LVar1, 0)
            BREAK_LOOP
         END_IF
      END_LOOP
   END_THREAD
   WAIT_MS(500)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_L_5_aaa_00000588)
   CALL(evt_npc_set_autotalkpose, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_L_5_aaa_00000588, (Bytecode)(void*)str_L_7_aaa_000005a4)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_pro_01_aaa_000005a8, 0, (Bytecode)(void*)str_sjis_aaa_00000474)
   CALL(evt_cam3d_evt_set, -376, 154, 65, -63, 75, -247, 2000, 11)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_L_6_aaa_00000594)
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000474, 23, -156, 0, FLOAT(80.000), 1)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_L_5_aaa_00000588)
   BEGIN_THREAD
      CALL(evt_mario_set_pos, -155, 30, -320)
      CALL(evt_mario_mov_pos2, -125, -290, FLOAT(80.000))
      CALL(evt_mario_mov_pos2, -85, -310, FLOAT(80.000))
      CALL(evt_mario_adjust_dir)
   END_THREAD
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_L_6_aaa_00000594)
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000474, -52, -275, 0, FLOAT(80.000), 1)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_L_5_aaa_00000588)
   WAIT_MS(500)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_pro_02_aaa_000005b0, 0, (Bytecode)(void*)str_sjis_aaa_00000474)
   WAIT_MS(300)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_L_8_aaa_000005b8)
   CALL(evt_npc_set_autotalkpose, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_L_8_aaa_000005b8, (Bytecode)(void*)str_L_9_aaa_000005bc)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_pro_03_aaa_000005c0, 0, (Bytecode)(void*)str_sjis_aaa_00000474)
   WAIT_MS(300)
   CALL(evt_cam_letter_box_camid, 10)
   CALL(evt_fade_set_mapchange_type, 1, 17, 800, 16, 800)
   CALL(evt_bero_mapchange, (Bytecode)(void*)str_gor_10_aaa_000005c8, 0)
   RETURN
   END
};

EVT_BEGIN(evt_prologue2) {
   CALL(evt_snd_envoff, 513)
   CALL(evt_snd_envon, 288, 0)
   CALL(evt_mapobj_flag_onoff, 1, 1, (Bytecode)(void*)str_S_aaa_00_aaa_00000598, 1)
   CALL(evt_mapobj_flag_onoff, 1, 0, (Bytecode)(void*)str_S_naka_aaa_000004dc, 1)
   CALL(evt_mapobj_flag_onoff, 1, 0, (Bytecode)(void*)str_S_ie_door_aaa_00000480, 1)
   CALL(evt_bg_set_color, 0, 0, 0, 255)
   CALL(evt_mario_key_onoff, 0)
   CALL(evt_mario_set_pos, -85, 30, -310)
   CALL(evt_mario_set_dir, 90, 0, 0)
   CALL(evt_party_stop, 0)
   CALL(evt_npc_flag_onoff, 0, (Bytecode)(void*)str_sjis_aaa_00000474, 1024)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_L_8_aaa_000005b8)
   CALL(evt_npc_set_autotalkpose, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_L_8_aaa_000005b8, (Bytecode)(void*)str_L_9_aaa_000005bc)
   CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_00000474, -52, 30, -275)
   CALL(evt_npc_set_ry, (Bytecode)(void*)str_sjis_aaa_00000474, 270)
   CALL(evt_npc_flag_onoff, 1, (Bytecode)(void*)str_sjis_aaa_00000474, 0x00008000)
   CALL(evt_cam3d_evt_set, -376, 154, 65, -63, 75, -247, 0, 11)
   CALL(evt_seq_wait, 2)
   CALL(evt_mario_set_dir, 90, 0, 0)
   CALL(evt_fade_end_wait)
   CALL(evt_cam_letter_box_camid, 8)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_pro_05_aaa_000005ec, 0, (Bytecode)(void*)str_sjis_aaa_00000474)
   WAIT_MS(300)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_I_1_aaa_000005f4)
   CALL(evt_npc_get_position, (Bytecode)(void*)str_sjis_aaa_00000474, LVar0, LVar1, LVar2)
   ADD(LVar0, -25)
   ADD(LVar1, 15)
   ADD(LVar2, -3)
   CALL(evt_item_entry, (Bytecode)(void*)str_map_aaa_000005f8, 96, LVar0, LVar1, LVar2, 17, -1, 0)
   CALL(evt_item_set_scale, (Bytecode)(void*)str_map_aaa_000005f8, FLOAT(0.550))
   WAIT_MS(1000)
   CALL(evt_item_delete, (Bytecode)(void*)str_map_aaa_000005f8)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_S_1_aaa_000005fc)
   CALL(evt_mario_set_pose, (Bytecode)(void*)str_M_L_3_aaa_00000600)
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
   CALL(evt_bero_mapchange, (Bytecode)(void*)str_muj_20_aaa_00000608, (Bytecode)(void*)str_prologue_aaa_00000610)
   RETURN
   END
};

EVT_BEGIN(epilogue_evt) {
   CALL(evt_snd_bgmoff, 512)
   CALL(evt_snd_envon, 272, (Bytecode)(void*)str_ENV_END_AAA1_aaa_0000061c)
   CALL(evt_mario_key_onoff, 0)
   CALL(evt_mario_set_pos, -126, 40, -224)
   CALL(evt_mario_set_dir, 90, 0, 0)
   CALL(evt_mario_adjust_dir)
   CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_00000474, -44, 40, -163)
   CALL(evt_npc_set_ry, (Bytecode)(void*)str_sjis_aaa_00000474, 270)
   CALL(evt_seq_wait, 2)
   CALL(evt_map_set_blend, 0, 0, 0, 0, 255)
   CALL(evt_mario_set_pose, (Bytecode)(void*)str_M_S_5_aaa_0000062c)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_S_2_aaa_00000634)
   WAIT_MS(3000)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_ep_31_aaa_00000638, 0, 0)
   WAIT_MS(500)
   CALL(evt_fade_entry, 10, 1, 0, 0, 0)
   WAIT_FRAMES(1)
   SET(LVar0, (Bytecode)(void*)&door_1)
   SCRIPT_SYNC(evt_door_open_quick)
   CALL(evt_cam3d_evt_set, -360, 154, 80, -46, 81, -232, 0, 11)
   CALL(evt_fade_in, 1000)
   CALL(evt_snd_envoff, 0x00004800)
   CALL(evt_snd_env_lpf, 0, 800)
   WAIT_MS(500)
   CALL(evt_npc_set_autotalkpose, (Bytecode)(void*)str_sjis_aaa_00000474, (Bytecode)(void*)str_S_2_aaa_00000634, (Bytecode)(void*)str_T_2_aaa_00000640)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_ep_32_aaa_00000644, 0, (Bytecode)(void*)str_sjis_aaa_00000474)
   CALL(evt_mario_get_pos, 0, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_VOICE_MARIO_HAND_aaa_0000064c, LVar0, LVar1, LVar2, 0)
   CALL(evt_mario_set_pose, (Bytecode)(void*)str_M_N_11_aaa_00000668)
   WAIT_MS(500)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_ep_33_aaa_00000670, 0, (Bytecode)(void*)str_sjis_aaa_00000474)
   WAIT_MS(1000)
   CALL(evt_mario_get_pos, 0, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_VOICE_MARIO_FIND_aaa_00000678, LVar0, LVar1, LVar2, 0)
   CALL(evt_mario_balloon_bikkuri)
   CALL(evt_snd_bgmoff, 1024)
   CALL(evt_snd_bgmon, 1, (Bytecode)(void*)str_BGM_FF_MAIL_RECEPTIO_aaa_00000690)
   SCRIPT_ASYNC_TID((Bytecode)(void*)&evt_sub_mail_vibration, LVarA)
   WAIT_MS(500)
   LOOP(0)
      CALL(evt_key_get_buttontrg, 0, LVar0)
      IF_INT_EQ(LVar0, 256)
         BREAK_LOOP
      END_IF
      WAIT_FRAMES(1)
   END_LOOP
   CALL(evt_mario_balloon_off)
   CALL(evt_snd_bgmoff, 513)
   CALL(evt_snd_bgmon, 288, 0)
   CALL(evt_mario_get_pos, 0, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_MAIL_RECEPTION1_aaa_000006a8, LVar0, LVar1, LVar2, 0)
   STOP_TID(LVarA)
   WAIT_FRAMES(1)
   CALL(evt_sub_rumble_onoff, 1, 0)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_ep_34_aaa_000006bc, 0, (Bytecode)(void*)str_sjis_aaa_00000474)
   CALL(evt_mario_get_pos, 0, LVar0, LVar1, LVar2)
   CALL(evt_mario_set_dir, 90, 0, 0)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_VOICE_MARIO_FLD__aaa_000006c4, LVar0, LVar1, LVar2, 0)
   CALL(evt_mario_jump_pos, -128, 30, -196, 400, 1, 20)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_MARIO_LANDING3_aaa_000006e0, LVar0, LVar1, LVar2, 0)
   CALL(evt_mario_set_dir, 90, 0, 0)
   CALL(evt_cam3d_evt_set, -307, 117, 9, -58, 58, -244, 1200, 11)
   CALL(evt_npc_flag_onoff, 1, (Bytecode)(void*)str_sjis_aaa_00000474, 32)
   CALL(evt_npc_jump_position_nohit, (Bytecode)(void*)str_sjis_aaa_00000474, -68, 30, -149, 400, 20)
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000474, -107, -166, 800, 0, 0)
   CALL(evt_mario_set_pose, (Bytecode)(void*)str_M_N_9_aaa_000006f4)
   WAIT_MS(500)
   CALL(evt_mario_get_pos, 0, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_MAIL_RECEPTION2_aaa_000006fc, LVar0, LVar1, LVar2, 0)
   CALL(evt_mario_set_pose, (Bytecode)(void*)str_M_N_10_aaa_00000710)
   WAIT_MS(500)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_ep_35_aaa_00000718, 0, 0)
   CALL(evt_snd_bgmoff_f, 512, 3000)
   CALL(evt_snd_envoff_f, 512, 3000)
   CALL(evt_fade_set_mapchange_type, 1, 10, 900, 9, 900)
   CALL(evt_bero_mapchange, (Bytecode)(void*)str_gor_02_aaa_00000720, zero_aaa_00000728)
   RETURN
   END
};

EVT_BEGIN(epilogue_npc_entry) {
   CALL(evt_npc_entry, (Bytecode)(void*)str_sjis_aaa_0000072c, (Bytecode)(void*)str_c_peach_aaa_00000738)
   CALL(evt_npc_set_tribe, (Bytecode)(void*)str_sjis_aaa_0000072c, (Bytecode)(void*)str_sjis_aaa_00000740)
   CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_0000072c, 0, -1000, 0)
   CALL(evt_npc_set_ry, (Bytecode)(void*)str_sjis_aaa_0000072c, 270)
   CALL(evt_npc_flag_onoff, 1, (Bytecode)(void*)str_sjis_aaa_0000072c, 0x40000620)
   CALL(evt_map_blend_set_flag, 1, (Bytecode)(void*)str_sjis_aaa_0000072c, 2048)
   CALL(evt_map_blend_set_flag, 1, (Bytecode)(void*)str_sjis_aaa_0000072c, 4096)
   CALL(evt_npc_entry, (Bytecode)(void*)str_sjis_aaa_00000754, (Bytecode)(void*)str_c_kino_ji_aaa_00000760)
   CALL(evt_npc_set_tribe, (Bytecode)(void*)str_sjis_aaa_00000754, (Bytecode)(void*)str_sjis_aaa_00000754)
   CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_00000754, 0, -1000, 0)
   CALL(evt_npc_set_ry, (Bytecode)(void*)str_sjis_aaa_00000754, 270)
   CALL(evt_npc_flag_onoff, 1, (Bytecode)(void*)str_sjis_aaa_00000754, 0x40000620)
   CALL(evt_map_blend_set_flag, 1, (Bytecode)(void*)str_sjis_aaa_00000754, 2048)
   CALL(evt_map_blend_set_flag, 1, (Bytecode)(void*)str_sjis_aaa_00000754, 4096)
   RETURN
   END
};

EVT_BEGIN(epilogue_evt2) {
   CALL(evt_snd_envon, 272, (Bytecode)(void*)str_ENV_END_AAA1_aaa_0000061c)
   CALL(evt_snd_envoff, 0x00004800)
   CALL(evt_snd_env_lpf, 0, 800)
   CALL(evt_mario_key_onoff, 0)
   CALL(evt_mario_set_pos, -128, 30, -196)
   CALL(evt_mario_set_dir, 90, 0, 0)
   CALL(evt_mario_adjust_dir)
   CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_00000474, -107, 30, -166)
   CALL(evt_npc_set_ry, (Bytecode)(void*)str_sjis_aaa_00000474, 270)
   CALL(evt_npc_flag_onoff, 1, (Bytecode)(void*)str_sjis_aaa_00000474, 0x00008000)
   CALL(evt_seq_wait, 2)
   CALL(evt_mario_set_pose, (Bytecode)(void*)str_M_N_10_aaa_00000710)
   SET(LVar0, (Bytecode)(void*)&door_1)
   SCRIPT_SYNC(evt_door_open_quick)
   CALL(evt_cam3d_evt_set, -307, 117, 9, -58, 58, -244, 0, 11)
   WAIT_FRAMES(1)
   CALL(evt_fade_end_wait)
   WAIT_MS(500)
   CALL(evt_npc_flag_onoff, 0, (Bytecode)(void*)str_sjis_aaa_00000474, 0x00008000)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_ep_47_aaa_0000076c, 0, 0)
   CALL(evt_snd_bgmon, 512, (Bytecode)(void*)str_BGM_EVT_MARIO_HOUSE2_aaa_00000774)
   CALL(evt_snd_bgm_scope, 0, 1)
   CALL(evt_cam3d_evt_set, -375, 154, 66, -62, 81, -248, 800, 11)
   WAIT_MS(800)
   CALL(evt_mario_set_pose, (Bytecode)(void*)str_M_S_1_aaa_0000078c)
   CALL(evt_mario_set_dir, 90, 0, 0)
   WAIT_MS(1000)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_ep_48_aaa_00000794, 0, (Bytecode)(void*)str_sjis_aaa_00000474)
   CALL(evt_mario_get_pos, 0, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_VOICE_MARIO_NOD1_aaa_0000079c, LVar0, LVar1, LVar2, 0)
   CALL(evt_mario_set_pose, (Bytecode)(void*)str_M_N_2_aaa_000007b4)
   WAIT_MS(200)
   CALL(evt_mario_set_pose, (Bytecode)(void*)str_M_S_1_aaa_0000078c)
   CALL(evt_mapobj_get_position, (Bytecode)(void*)str_S_ie_door_aaa_00000480, LVar0, LVar1, LVar2)
   ADD(LVar1, 40)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_EVT_EPILOGUE_KIN_aaa_000007bc, LVar0, LVar1, LVar2, 0)
   WAIT_FRAMES(20)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_EVT_EPILOGUE_KIN_aaa_000007bc, LVar0, LVar1, LVar2, 0)
   WAIT_MS(1000)
   CALL(evt_eff_fukidashi, 1, zero_aaa_00000728, (Bytecode)(void*)str_sjis_aaa_00000474, 0, 0, 0, 0, 0, 0, 0, 36)
   WAIT_MS(800)
   CALL(evt_npc_set_ry, (Bytecode)(void*)str_sjis_aaa_00000474, 90)
   WAIT_FRAMES(1)
   CALL(evt_npc_wait_pera, (Bytecode)(void*)str_sjis_aaa_00000474)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_ep_49_aaa_000007dc, 0, (Bytecode)(void*)str_sjis_aaa_00000474)
   CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_00000754, 60, 30, -110)
   CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_0000072c, 78, 30, -89)
   CALL(evt_cam3d_evt_set, -345, 154, 96, -31, 81, -217, 600, 11)
   WAIT_MS(900)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_ep_50_aaa_000007e4, 0, (Bytecode)(void*)str_sjis_aaa_00000754)
   SET(LVar0, (Bytecode)(void*)&door_1)
   SCRIPT_ASYNC((Bytecode)(void*)&door_open_se)
   CALL(evt_sub_intpl_msec_init, 5, 0, 180, 500)
   LOOP(0)
      CALL(evt_sub_intpl_msec_get_value)
      SCRIPT_SYNC(evt_door)
      IF_INT_EQ(LVar1, 0)
         BREAK_LOOP
      END_IF
   END_LOOP
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000754, 10, -205, 0, 60, 0)
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_0000072c, 10, -160, 0, 60, 0)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_ep_51_aaa_000007ec, 0, (Bytecode)(void*)str_sjis_aaa_0000072c)
   WAIT_MS(500)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_ep_52_aaa_000007f4, 0, (Bytecode)(void*)str_sjis_aaa_00000754)
   CALL(evt_cam3d_evt_set, -259, 137, 44, -15, 76, -200, 800, 11)
   WAIT_MS(800)
   CALL(evt_npc_set_autotalkpose, (Bytecode)(void*)str_sjis_aaa_0000072c, (Bytecode)(void*)str_P_S_5_aaa_000007fc, (Bytecode)(void*)str_P_T_5_aaa_00000804)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_ep_53_aaa_0000080c, 0, (Bytecode)(void*)str_sjis_aaa_0000072c)
   CALL(evt_npc_set_anim, (Bytecode)(void*)str_sjis_aaa_0000072c, (Bytecode)(void*)str_P_S_7_aaa_00000814)
   CALL(evt_cam3d_evt_set, -406, 179, 126, -47, 90, -232, 800, 11)
   WAIT_MS(800)
   CALL(evt_npc_set_autotalkpose, (Bytecode)(void*)str_sjis_aaa_0000072c, (Bytecode)(void*)str_P_S_7_aaa_00000814, (Bytecode)(void*)str_P_T_13_aaa_0000081c)
   CALL(evt_msg_print, 0, (Bytecode)(void*)str_ep_54_aaa_00000824, 0, (Bytecode)(void*)str_sjis_aaa_0000072c)
   CALL(evt_mario_get_pos, 0, LVar0, LVar1, LVar2)
   CALL(evt_snd_sfxon_3d, (Bytecode)(void*)str_SFX_VOICE_MARIO_SURP_aaa_0000082c, LVar0, LVar1, LVar2, 0)
   CALL(evt_mario_set_pose, (Bytecode)(void*)str_M_N_5B_aaa_00000848)
   WAIT_MS(550)
   BEGIN_THREAD
      LOOP(0)
         CALL(evt_npc_reverse_ry, (Bytecode)(void*)str_sjis_aaa_00000474)
         WAIT_FRAMES(1)
         CALL(evt_npc_wait_pera, (Bytecode)(void*)str_sjis_aaa_00000474)
         WAIT_MS(300)
      END_LOOP
   END_THREAD
   CALL(evt_mario_set_pose, (Bytecode)(void*)str_M_I_G_aaa_00000850)
   WAIT_MS(200)
   CALL(evt_npc_set_ry, (Bytecode)(void*)str_sjis_aaa_0000072c, 90)
   WAIT_FRAMES(1)
   CALL(evt_npc_wait_pera, (Bytecode)(void*)str_sjis_aaa_0000072c)
   SET(LFlag0, 1)
   BEGIN_THREAD
      WAIT_MS(300)
      CALL(evt_npc_set_ry, (Bytecode)(void*)str_sjis_aaa_00000754, 90)
      WAIT_FRAMES(1)
      CALL(evt_npc_wait_pera, (Bytecode)(void*)str_sjis_aaa_00000754)
      CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000754, 20, -145, 0, 80, 0)
      CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_00000754, 78, -89, 0, 80, 0)
      CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_00000754, 0, -1000, 0)
      SET(LFlag0, 0)
   END_THREAD
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_0000072c, 20, -145, 0, 60, 0)
   CALL(evt_npc_move_position, (Bytecode)(void*)str_sjis_aaa_0000072c, 78, -89, 0, 60, 0)
   CALL(evt_npc_set_position, (Bytecode)(void*)str_sjis_aaa_0000072c, 0, -1000, 0)
   WAIT_UNTIL(LFlag0)
   CALL(evt_snd_bgmon, 512, (Bytecode)(void*)str_BGM_ENDING4_aaa_00000858)
   CALL(evt_cam3d_evt_set, -260, 90, -62, -68, 42, -253, 800, 11)
   WAIT_MS(800)
   CALL(evt_mario_set_pose, (Bytecode)(void*)str_M_I_N_aaa_00000864)
   WAIT_MS(1000)
   CALL(evt_mario_get_pos, 0, LVar0, LVar1, LVar2)
   ADD(LVar1, 30)
   CALL(evt_fade_set_spot_pos, LVar0, LVar1, LVar2)
   CALL(evt_fade_entry, 4, 3000, 0, 0, 0)
   CALL(evt_fade_end_wait)
   WAIT_MS(3000)
   SET(GSW(0), 403)
   CALL(evt_fade_set_mapchange_type, 1, 10, 1, 9, 300)
   CALL(evt_bero_mapchange, (Bytecode)(void*)str_end_00_aaa_0000086c, zero_aaa_00000728)
   RETURN
   END
};

typedef struct Unk {
   s32 unk_00;
   char const* unk_04;
   char const* unk_08;
   char const* unk_0C;
   s32 unk_10;
   s32 unk_14;
   s32 unk_18;
   s32 unk_1C;
   s32 unk_20;
   s32 unk_24;
   s32 unk_28;
   s32 unk_2C;
} Unk;

Unk ki_data = {
   6,
   str_A_ki_1_aaa_00000874,
   str_S_ki_1_aaa_0000087c,
   str_S_ha_1_aaa_00000884,
   0,
   0,
   7,
   0,
   0,
   0,
   0,
   0
};

const char* kusa_data[] = {
	0x00000000,
	str_A_kusa_01_aaa_0000088c,
	str_S_kusa_01_aaa_00000898,
	0x00000000,
	0x00000000,
	str_A_kusa_02_aaa_000008a4,
	str_S_kusa_02_aaa_000008b0,
	0x00000000,
	0x00000000,
	str_A_kusa_03_aaa_000008bc,
	str_S_kusa_03_aaa_000008c8,
	0x00000000,
	0x00000000,
	str_A_kusa_04_aaa_000008d4,
	str_S_kusa_04_aaa_000008e0,
	0x00000000,
	0x00000000,
	str_A_kusa_05_aaa_000008ec,
	str_S_kusa_05_aaa_000008f8,
	0x00000000,
	0x00000000,
	str_A_kusa_06_aaa_00000904,
	str_S_kusa_06_aaa_00000910,
	0x00000000,
	0x00000000,
	str_A_kusa_07_aaa_0000091c,
	str_S_kusa_07_aaa_00000928,
	0x00000000,
	0x00000000,
	str_A_kusa_08_aaa_00000934,
	str_S_kusa_08_aaa_00000940,
	0x00000000,
	0x00000000,
	str_A_kusa_09_aaa_0000094c,
	str_S_kusa_09_aaa_00000958,
	0x00000000,
	0x00000000,
	str_A_kusa_10_aaa_00000964,
	str_S_kusa_10_aaa_00000970,
	0x00000000,
	(const char*)0x00000004,
	0x00000000,
	0x00000000,
	0x00000000
};

long bero_entry_data[] = {
	(long)(void*)str_dokan_1_aaa_0000097c,
	0x00020000,
	0x00000009,
	0x000186A0,
	0x00000000,
	0x00000000,
	0xFFFFFFFF,
	0x00000000,
	0x00000006,
	0x00000000,
	0x00000000,
	(long)(void*)str_dokan_1_aaa_0000097c,
	0x00010001,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000
};

EVT_BEGIN(aaa_00_init_evt_1_data_20CC) {
   SET(LVar0, (Bytecode)(void*)&bero_entry_data)
   CALL(evt_bero_get_info)
   SCRIPT_SYNC(evt_bero_info_run)
   CALL(evt_npc_setup, (Bytecode)(void*)&npcEnt)
   SET(LVar0, (Bytecode)(void*)&door_1)
   SCRIPT_SYNC(evt_door_entry)
   CALL(evt_mapobj_flag_onoff, 1, 0, (Bytecode)(void*)str_sai_ki1_aaa_0000051c, 2)
   CALL(evt_mapobj_flag_onoff, 1, 0, (Bytecode)(void*)str_sai_ki2_aaa_00000514, 2)
   CALL(evt_bero_get_entername, LVar0)
   IF_STR_EQ(LVar0, (Bytecode)(void*)str_prologue_aaa_00000610)
      SCRIPT_ASYNC((Bytecode)(void*)&evt_prologue)
      WAIT_FRAMES(1)
      RETURN
   END_IF
   IF_STR_EQ(LVar0, (Bytecode)(void*)str_prologue2_aaa_00000984)
      SCRIPT_ASYNC((Bytecode)(void*)&evt_prologue2)
      WAIT_FRAMES(1)
      RETURN
   END_IF
   IF_INT_EQ(GSW(0), 402)
      CALL(evt_mario_kill_party, 0)
      CALL(evt_bero_get_entername, LVar0)
      IF_STR_EQ(LVar0, (Bytecode)(void*)str_epilogue2_aaa_00000990)
         SCRIPT_SYNC((Bytecode)(void*)&epilogue_npc_entry)
         SCRIPT_ASYNC((Bytecode)(void*)&epilogue_evt2)
      ELSE
         SCRIPT_ASYNC((Bytecode)(void*)&epilogue_evt)
      END_IF
   END_IF
   SET(LVar0, (Bytecode)(void*)&ki_data)
   SCRIPT_SYNC(evt_sub_tree_access_entry)
   SET(LVar0, (Bytecode)(void*)&kusa_data)
   SCRIPT_SYNC(evt_sub_kusa_access_entry)
   RETURN
   END
};

