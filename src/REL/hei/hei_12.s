.include "macros.inc"
.file "hei_12.o"

# 0x0000290C..0x0000297C | size: 0x70
.text
.balign 4

# .text:0x0 | 0x290C | size: 0x34
.fn npc_dead, local
/* 0000290C 000029D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002910 000029D4  7C 08 02 A6 */	mflr r0
/* 00002914 000029D8  3C 60 00 00 */	lis r3, str_チョロボン_hei_00007cc0@ha
/* 00002918 000029DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000291C 000029E0  38 63 00 00 */	addi r3, r3, str_チョロボン_hei_00007cc0@l
/* 00002920 000029E4  4B FF D6 E1 */	bl npcNameToPtr
/* 00002924 000029E8  38 80 00 00 */	li r4, 0x0
/* 00002928 000029EC  4B FF D6 D9 */	bl npcGroupDead
/* 0000292C 000029F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002930 000029F4  38 60 00 02 */	li r3, 0x2
/* 00002934 000029F8  7C 08 03 A6 */	mtlr r0
/* 00002938 000029FC  38 21 00 10 */	addi r1, r1, 0x10
/* 0000293C 00002A00  4E 80 00 20 */	blr
.endfn npc_dead

# .text:0x34 | 0x2940 | size: 0x3C
.fn npc_set_me, local
/* 00002940 00002A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002944 00002A08  7C 08 02 A6 */	mflr r0
/* 00002948 00002A0C  3C 80 00 00 */	lis r4, str_チョロボン_hei_00007cc0@ha
/* 0000294C 00002A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002950 00002A14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00002954 00002A18  7C 7F 1B 78 */	mr r31, r3
/* 00002958 00002A1C  38 64 00 00 */	addi r3, r4, str_チョロボン_hei_00007cc0@l
/* 0000295C 00002A20  4B FF D6 A5 */	bl npcNameToPtr
/* 00002960 00002A24  90 7F 01 70 */	stw r3, 0x170(r31)
/* 00002964 00002A28  38 60 00 02 */	li r3, 0x2
/* 00002968 00002A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000296C 00002A30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00002970 00002A34  7C 08 03 A6 */	mtlr r0
/* 00002974 00002A38  38 21 00 10 */	addi r1, r1, 0x10
/* 00002978 00002A3C  4E 80 00 20 */	blr
.endfn npc_set_me

# 0x00001DC8..0x00001E68 | size: 0xA0
.rodata
.balign 8

# .rodata:0x0 | 0x1DC8 | size: 0x7
.obj str_w_bero_hei_00007ca8, local
	.string "w_bero"
.endobj str_w_bero_hei_00007ca8

# .rodata:0x7 | 0x1DCF | size: 0x1
.obj gap_03_00001DCF_rodata, global
.hidden gap_03_00001DCF_rodata
	.byte 0x00
.endobj gap_03_00001DCF_rodata

# .rodata:0x8 | 0x1DD0 | size: 0x7
.obj str_hei_11_hei_00007cb0, local
	.string "hei_11"
.endobj str_hei_11_hei_00007cb0

# .rodata:0xF | 0x1DD7 | size: 0x1
.obj gap_03_00001DD7_rodata, global
.hidden gap_03_00001DD7_rodata
	.byte 0x00
.endobj gap_03_00001DD7_rodata

# .rodata:0x10 | 0x1DD8 | size: 0x7
.obj str_e_bero_hei_00007cb8, local
	.string "e_bero"
.endobj str_e_bero_hei_00007cb8

# .rodata:0x17 | 0x1DDF | size: 0x1
.obj gap_03_00001DDF_rodata, global
.hidden gap_03_00001DDF_rodata
	.byte 0x00
.endobj gap_03_00001DDF_rodata

# .rodata:0x18 | 0x1DE0 | size: 0xB
.obj str_チョロボン_hei_00007cc0, local
	.4byte 0x83608387
	.4byte 0x838D837B
	.byte 0x83, 0x93, 0x00
.endobj str_チョロボン_hei_00007cc0

# .rodata:0x23 | 0x1DEB | size: 0x1
.obj gap_03_00001DEB_rodata, global
.hidden gap_03_00001DEB_rodata
	.byte 0x00
.endobj gap_03_00001DEB_rodata

# .rodata:0x24 | 0x1DEC | size: 0x15
.obj str_SFX_STG1_CHORO_FALL1_hei_00007ccc, local
	.string "SFX_STG1_CHORO_FALL1"
.endobj str_SFX_STG1_CHORO_FALL1_hei_00007ccc

# .rodata:0x39 | 0x1E01 | size: 0x3
.obj gap_03_00001E01_rodata, global
.hidden gap_03_00001E01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E01_rodata

# .rodata:0x3C | 0x1E04 | size: 0x1D
.obj str_SFX_VOICE_MARIO_SURP_hei_00007ce4, local
	.string "SFX_VOICE_MARIO_SURPRISED1_2"
.endobj str_SFX_VOICE_MARIO_SURP_hei_00007ce4

# .rodata:0x59 | 0x1E21 | size: 0x3
.obj gap_03_00001E21_rodata, global
.hidden gap_03_00001E21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E21_rodata

# .rodata:0x5C | 0x1E24 | size: 0x6
.obj str_M_N_7_hei_00007d04, local
	.string "M_N_7"
.endobj str_M_N_7_hei_00007d04

# .rodata:0x62 | 0x1E2A | size: 0x2
.obj gap_03_00001E2A_rodata, global
.hidden gap_03_00001E2A_rodata
	.2byte 0x0000
.endobj gap_03_00001E2A_rodata

# .rodata:0x64 | 0x1E2C | size: 0x6
.obj str_M_S_1_hei_00007d0c, local
	.string "M_S_1"
.endobj str_M_S_1_hei_00007d0c

# .rodata:0x6A | 0x1E32 | size: 0x2
.obj gap_03_00001E32_rodata, global
.hidden gap_03_00001E32_rodata
	.2byte 0x0000
.endobj gap_03_00001E32_rodata

# .rodata:0x6C | 0x1E34 | size: 0x11
.obj str_BGM_STG1_TORIDE1_hei_00007d14, local
	.string "BGM_STG1_TORIDE1"
.endobj str_BGM_STG1_TORIDE1_hei_00007d14

# .rodata:0x7D | 0x1E45 | size: 0x3
.obj gap_03_00001E45_rodata, global
.hidden gap_03_00001E45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E45_rodata

# .rodata:0x80 | 0x1E48 | size: 0xE
.obj str_ENV_STG1_HEI3_hei_00007d28, local
	.string "ENV_STG1_HEI3"
.endobj str_ENV_STG1_HEI3_hei_00007d28

# .rodata:0x8E | 0x1E56 | size: 0x2
.obj gap_03_00001E56_rodata, global
.hidden gap_03_00001E56_rodata
	.2byte 0x0000
.endobj gap_03_00001E56_rodata

# .rodata:0x90 | 0x1E58 | size: 0x7
.obj str_sun_st_hei_00007d38, local
	.string "sun_st"
.endobj str_sun_st_hei_00007d38

# .rodata:0x97 | 0x1E5F | size: 0x1
.obj gap_03_00001E5F_rodata, global
.hidden gap_03_00001E5F_rodata
	.byte 0x00
.endobj gap_03_00001E5F_rodata

# .rodata:0x98 | 0x1E60 | size: 0x5
.obj str_mizu_hei_00007d40, local
	.string "mizu"
.endobj str_mizu_hei_00007d40

# .rodata:0x9D | 0x1E65 | size: 0x3
.obj gap_03_00001E65_rodata, global
.hidden gap_03_00001E65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E65_rodata

# 0x0000A670..0x0000AAE0 | size: 0x470
.data
.balign 8

# .data:0x0 | 0xA670 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xA678 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xA67C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xA680 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xA684 | size: 0x4
.obj gap_04_0000A684_data, global
.hidden gap_04_0000A684_data
	.4byte 0x00000000
.endobj gap_04_0000A684_data

# .data:0x18 | 0xA688 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xA690 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xA694 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xA698 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xA6A0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xA6A4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xA6A8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xA6AC | size: 0x4
.obj gap_04_0000A6AC_data, global
.hidden gap_04_0000A6AC_data
	.4byte 0x00000000
.endobj gap_04_0000A6AC_data

# .data:0x40 | 0xA6B0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xA6B8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xA6BC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xA6C0 | size: 0x78
.obj bero_entry_data, local
	.4byte str_w_bero_hei_00007ca8
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_hei_11_hei_00007cb0
	.4byte str_e_bero_hei_00007cb8
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

# .data:0xC8 | 0xA738 | size: 0x220
.obj evt_chorobon, local
	.4byte 0x00020032
	.4byte 0xF840626E
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_wait_movable
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0x00000008
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0x00020030
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_CHORO_FALL1_hei_00007ccc
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_npc_jump_position
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000258
	.4byte 0x00000000
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_hei_00007ce4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_7_hei_00007d04
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0x00000001
	.4byte chorobon_move_event
	.4byte 0x0002005B
	.4byte evt_npc_restart_regular_event
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0002005B
	.4byte evt_npc_get_battle_result
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_npc_check_escape_battle
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte npc_set_me
	.4byte 0x0001005B
	.4byte npc_dead
	.4byte 0x0001005E
	.4byte enemy_common_dead_event
	.4byte 0x00000020
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0x00000008
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0x00000020
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_hei_00007d0c
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_chorobon

# .data:0x2E8 | 0xA958 | size: 0x184
.obj hei_12_init_evt_11_data_A958, global
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
	.4byte str_BGM_STG1_TORIDE1_hei_00007d14
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_HEI3_hei_00007d28
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF840626E
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_restart_regular_event
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0x00000000
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0x00020010
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000007
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_check
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_チョロボン_hei_00007cc0
	.4byte 0x00000017
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF840626E
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_sun_st_hei_00007d38
	.4byte 0x0000003E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte evt_chorobon
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_hei_00007d40
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte hei_test_water_tev_11_text_11F4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_mizu_hei_00007d40
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_mizu_hei_00007d40
	.4byte 0x00000100
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hei_12_init_evt_11_data_A958

# .data:0x46C | 0xAADC | size: 0x4
.obj gap_04_0000AADC_data, global
.hidden gap_04_0000AADC_data
	.4byte 0x00000000
.endobj gap_04_0000AADC_data
