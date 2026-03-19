.include "macros.inc"
.file "hei_03.o"

# 0x00000EB0..0x00000FE0 | size: 0x130
.rodata
.balign 8

# .rodata:0x0 | 0xEB0 | size: 0x7
.obj str_w_bero_hei_00006d90, local
	.string "w_bero"
.endobj str_w_bero_hei_00006d90

# .rodata:0x7 | 0xEB7 | size: 0x1
.obj gap_03_00000EB7_rodata, global
.hidden gap_03_00000EB7_rodata
	.byte 0x00
.endobj gap_03_00000EB7_rodata

# .rodata:0x8 | 0xEB8 | size: 0x7
.obj str_hei_02_hei_00006d98, local
	.string "hei_02"
.endobj str_hei_02_hei_00006d98

# .rodata:0xF | 0xEBF | size: 0x1
.obj gap_03_00000EBF_rodata, global
.hidden gap_03_00000EBF_rodata
	.byte 0x00
.endobj gap_03_00000EBF_rodata

# .rodata:0x10 | 0xEC0 | size: 0x7
.obj str_e_bero_hei_00006da0, local
	.string "e_bero"
.endobj str_e_bero_hei_00006da0

# .rodata:0x17 | 0xEC7 | size: 0x1
.obj gap_03_00000EC7_rodata, global
.hidden gap_03_00000EC7_rodata
	.byte 0x00
.endobj gap_03_00000EC7_rodata

# .rodata:0x18 | 0xEC8 | size: 0x7
.obj str_hei_04_hei_00006da8, local
	.string "hei_04"
.endobj str_hei_04_hei_00006da8

# .rodata:0x1F | 0xECF | size: 0x1
.obj gap_03_00000ECF_rodata, global
.hidden gap_03_00000ECF_rodata
	.byte 0x00
.endobj gap_03_00000ECF_rodata

# .rodata:0x20 | 0xED0 | size: 0xC
.obj str_シンノスケ1_hei_00006db0, local
	.4byte 0x83568393
	.4byte 0x836D8358
	.4byte 0x83503100
.endobj str_シンノスケ1_hei_00006db0

# .rodata:0x2C | 0xEDC | size: 0xC
.obj str_シンノスケ2_hei_00006dbc, local
	.4byte 0x83568393
	.4byte 0x836D8358
	.4byte 0x83503200
.endobj str_シンノスケ2_hei_00006dbc

# .rodata:0x38 | 0xEE8 | size: 0x10
.obj str_SFX_STG1_QUAKE3_hei_00006dc8, local
	.string "SFX_STG1_QUAKE3"
.endobj str_SFX_STG1_QUAKE3_hei_00006dc8

# .rodata:0x48 | 0xEF8 | size: 0x4
.obj str_MON_hei_00006dd8, local
	.string "MON"
.endobj str_MON_hei_00006dd8

# .rodata:0x4C | 0xEFC | size: 0x12
.obj str_SFX_STG1_GRID_UP2_hei_00006ddc, local
	.string "SFX_STG1_GRID_UP2"
.endobj str_SFX_STG1_GRID_UP2_hei_00006ddc

# .rodata:0x5E | 0xF0E | size: 0x2
.obj gap_03_00000F0E_rodata, global
.hidden gap_03_00000F0E_rodata
	.2byte 0x0000
.endobj gap_03_00000F0E_rodata

# .rodata:0x60 | 0xF10 | size: 0x12
.obj str_SFX_STG1_GRID_UP1_hei_00006df0, local
	.string "SFX_STG1_GRID_UP1"
.endobj str_SFX_STG1_GRID_UP1_hei_00006df0

# .rodata:0x72 | 0xF22 | size: 0x2
.obj gap_03_00000F22_rodata, global
.hidden gap_03_00000F22_rodata
	.2byte 0x0000
.endobj gap_03_00000F22_rodata

# .rodata:0x74 | 0xF24 | size: 0x8
.obj str_anm_mon_hei_00006e04, local
	.string "anm_mon"
.endobj str_anm_mon_hei_00006e04

# .rodata:0x7C | 0xF2C | size: 0x6
.obj str_a_mon_hei_00006e0c, local
	.string "a_mon"
.endobj str_a_mon_hei_00006e0c

# .rodata:0x82 | 0xF32 | size: 0x2
.obj gap_03_00000F32_rodata, global
.hidden gap_03_00000F32_rodata
	.2byte 0x0000
.endobj gap_03_00000F32_rodata

# .rodata:0x84 | 0xF34 | size: 0x19
.obj str_SFX_STG1_SINNOSUKE_J_hei_00006e14, local
	.string "SFX_STG1_SINNOSUKE_JUMP1"
.endobj str_SFX_STG1_SINNOSUKE_J_hei_00006e14

# .rodata:0x9D | 0xF4D | size: 0x3
.obj gap_03_00000F4D_rodata, global
.hidden gap_03_00000F4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000F4D_rodata

# .rodata:0xA0 | 0xF50 | size: 0x1C
.obj str_SFX_STG1_SINNOSUKE_L_hei_00006e30, local
	.string "SFX_STG1_SINNOSUKE_LANDING1"
.endobj str_SFX_STG1_SINNOSUKE_L_hei_00006e30

# .rodata:0xBC | 0xF6C | size: 0x10
.obj str_SFX_STG1_QUAKE5_hei_00006e4c, local
	.string "SFX_STG1_QUAKE5"
.endobj str_SFX_STG1_QUAKE5_hei_00006e4c

# .rodata:0xCC | 0xF7C | size: 0xC
.obj str_stg1_hei_15_hei_00006e5c, local
	.string "stg1_hei_15"
.endobj str_stg1_hei_15_hei_00006e5c

# .rodata:0xD8 | 0xF88 | size: 0x6
.obj str_party_hei_00006e68, local
	.string "party"
.endobj str_party_hei_00006e68

# .rodata:0xDE | 0xF8E | size: 0x2
.obj gap_03_00000F8E_rodata, global
.hidden gap_03_00000F8E_rodata
	.2byte 0x0000
.endobj gap_03_00000F8E_rodata

# .rodata:0xE0 | 0xF90 | size: 0xE
.obj str_BGM_STG1_HEI1_hei_00006e70, local
	.string "BGM_STG1_HEI1"
.endobj str_BGM_STG1_HEI1_hei_00006e70

# .rodata:0xEE | 0xF9E | size: 0x2
.obj gap_03_00000F9E_rodata, global
.hidden gap_03_00000F9E_rodata
	.2byte 0x0000
.endobj gap_03_00000F9E_rodata

# .rodata:0xF0 | 0xFA0 | size: 0xE
.obj str_ENV_STG1_HEI4_hei_00006e80, local
	.string "ENV_STG1_HEI4"
.endobj str_ENV_STG1_HEI4_hei_00006e80

# .rodata:0xFE | 0xFAE | size: 0x2
.obj gap_03_00000FAE_rodata, global
.hidden gap_03_00000FAE_rodata
	.2byte 0x0000
.endobj gap_03_00000FAE_rodata

# .rodata:0x100 | 0xFB0 | size: 0xB
.obj str_anm_hokori_hei_00006e90, local
	.string "anm_hokori"
.endobj str_anm_hokori_hei_00006e90

# .rodata:0x10B | 0xFBB | size: 0x1
.obj gap_03_00000FBB_rodata, global
.hidden gap_03_00000FBB_rodata
	.byte 0x00
.endobj gap_03_00000FBB_rodata

# .rodata:0x10C | 0xFBC | size: 0x8
.obj str_SIN_Z_1_hei_00006e9c, local
	.string "SIN_Z_1"
.endobj str_SIN_Z_1_hei_00006e9c

# .rodata:0x114 | 0xFC4 | size: 0xB
.obj str_a_hasira_1_hei_00006ea4, local
	.string "a_hasira_1"
.endobj str_a_hasira_1_hei_00006ea4

# .rodata:0x11F | 0xFCF | size: 0x1
.obj gap_03_00000FCF_rodata, global
.hidden gap_03_00000FCF_rodata
	.byte 0x00
.endobj gap_03_00000FCF_rodata

# .rodata:0x120 | 0xFD0 | size: 0xB
.obj str_a_hasira_2_hei_00006eb0, local
	.string "a_hasira_2"
.endobj str_a_hasira_2_hei_00006eb0

# .rodata:0x12B | 0xFDB | size: 0x5
.obj gap_03_00000FDB_rodata, global
.hidden gap_03_00000FDB_rodata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_03_00000FDB_rodata

# 0x000059C0..0x00006400 | size: 0xA40
.data
.balign 8

# .data:0x0 | 0x59C0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x59C8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x59CC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x59D0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x59D4 | size: 0x4
.obj gap_04_000059D4_data, global
.hidden gap_04_000059D4_data
	.4byte 0x00000000
.endobj gap_04_000059D4_data

# .data:0x18 | 0x59D8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x59E0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x59E4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x59E8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x59F0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x59F4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x59F8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x59FC | size: 0x4
.obj gap_04_000059FC_data, global
.hidden gap_04_000059FC_data
	.4byte 0x00000000
.endobj gap_04_000059FC_data

# .data:0x40 | 0x5A00 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x5A08 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x5A0C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x5A10 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_hei_00006d90
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_hei_02_hei_00006d98
	.4byte str_e_bero_hei_00006da0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_hei_00006da0
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_hei_04_hei_00006da8
	.4byte str_w_bero_hei_00006d90
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_entry_data

# .data:0x104 | 0x5AC4 | size: 0x28
.obj dead_evt1, local
	.4byte 0x00020032
	.4byte 0xF840627C
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF840627D
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte enemy_common_dead_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_evt1

# .data:0x12C | 0x5AEC | size: 0x28
.obj dead_evt2, local
	.4byte 0x00020032
	.4byte 0xF840627D
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF840627C
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte enemy_common_dead_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_evt2

# .data:0x154 | 0x5B14 | size: 0x114
.obj npcEnt, local
	.4byte str_シンノスケ1_hei_00006db0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte kuriboo_init_event
	.4byte kuriboo_move_event
	.4byte 0x00000000
	.4byte dead_evt1
	.4byte kuriboo_find_event
	.4byte kuriboo_lost_event
	.4byte kuriboo_return_event
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x447A0000
	.4byte 0x43B40000
	.4byte 0x447A0000
	.4byte 0x43B40000
	.4byte 0x00000008
	.4byte str_シンノスケ2_hei_00006dbc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte kuriboo_init_event
	.4byte kuriboo_move_event
	.4byte 0x00000000
	.4byte dead_evt2
	.4byte kuriboo_find_event
	.4byte kuriboo_lost_event
	.4byte kuriboo_return_event
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x447A0000
	.4byte 0x43B40000
	.4byte 0x447A0000
	.4byte 0x43B40000
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npcEnt

# .data:0x268 | 0x5C28 | size: 0x180
.obj door_open, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A80
	.4byte 0x00001770
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG1_QUAKE3_hei_00006dc8
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF70
	.4byte 0x0000003D
	.4byte 0x000000E2
	.4byte 0x00000114
	.4byte 0x0000004A
	.4byte 0xFFFFFFD5
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_MON_hei_00006dd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000008
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_GRID_UP2_hei_00006ddc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000008C
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x00000118
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_GRID_UP1_hei_00006df0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_mon_hei_00006e04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_anm_mon_hei_00006e04
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_mon_hei_00006e0c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000001D
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_open

# .data:0x3E8 | 0x5DA8 | size: 0x9C
.obj shake_evt, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shake_evt

# .data:0x484 | 0x5E44 | size: 0xE0
.obj hashira_evt_sub, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_SINNOSUKE_J_hei_00006e14
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x00000020
	.4byte 0x00020036
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x000002BC
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_SINNOSUKE_L_hei_00006e30
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hashira_evt_sub

# .data:0x564 | 0x5F24 | size: 0x210
.obj hashira_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_QUAKE5_hei_00006e4c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8E
	.4byte 0x0002005D
	.4byte shake_evt
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte evt_cam3d_evt_set_at
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000032
	.4byte 0x00000258
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x0002005D
	.4byte hashira_evt_sub
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840627D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001005C
	.4byte hashira_evt_sub
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF840627C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001005C
	.4byte hashira_evt_sub
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0002006A
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0003005B
	.4byte evt_npc_set_link
	.4byte str_シンノスケ1_hei_00006db0
	.4byte str_シンノスケ2_hei_00006dbc
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_del_case_evt
	.4byte 0x00000000
	.4byte 0xFD050F81
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_del_case_evt
	.4byte 0x00000000
	.4byte 0xFD050F80
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_del_case_evt
	.4byte 0x00000000
	.4byte 0xFD050F8A
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hashira_evt

# .data:0x774 | 0x6134 | size: 0x38
.obj mon_msg, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_15_hei_00006e5c
	.4byte 0x00000000
	.4byte str_party_hei_00006e68
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mon_msg

# .data:0x7AC | 0x616C | size: 0x294
.obj hei_03_init_evt_11_data_616C, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG1_HEI1_hei_00006e70
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00001800
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_HEI4_hei_00006e80
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_hokori_hei_00006e90
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000001D
	.4byte 0x00020018
	.4byte 0xF840627C
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_シンノスケ1_hei_00006db0
	.4byte str_SIN_Z_1_hei_00006e9c
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シンノスケ1_hei_00006db0
	.4byte 0xFFFFFF89
	.4byte 0x00000041
	.4byte 0xFFFFFFB3
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シンノスケ1_hei_00006db0
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_シンノスケ1_hei_00006db0
	.4byte 0x00008000
	.4byte 0x00020033
	.4byte 0xFE363C80
	.4byte str_シンノスケ1_hei_00006db0
	.4byte 0x00020033
	.4byte 0xFE363C81
	.4byte str_シンノスケ2_hei_00006dbc
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_hasira_1_hei_00006ea4
	.4byte 0x00000000
	.4byte hashira_evt
	.4byte 0xFD050F80
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF840627D
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_シンノスケ2_hei_00006dbc
	.4byte str_SIN_Z_1_hei_00006e9c
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シンノスケ2_hei_00006dbc
	.4byte 0x00000078
	.4byte 0x0000003F
	.4byte 0xFFFFFFB3
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シンノスケ2_hei_00006dbc
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_シンノスケ2_hei_00006dbc
	.4byte 0x00008000
	.4byte 0x00020033
	.4byte 0xFE363C80
	.4byte str_シンノスケ2_hei_00006dbc
	.4byte 0x00020033
	.4byte 0xFE363C81
	.4byte str_シンノスケ1_hei_00006db0
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_hasira_2_hei_00006eb0
	.4byte 0x00000000
	.4byte hashira_evt
	.4byte 0xFD050F81
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840627C
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF840627D
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte door_open
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_mon_hei_00006e0c
	.4byte 0x00000000
	.4byte mon_msg
	.4byte 0xFD050F8A
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_mon_hei_00006e0c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_mon_hei_00006e04
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hei_03_init_evt_11_data_616C
