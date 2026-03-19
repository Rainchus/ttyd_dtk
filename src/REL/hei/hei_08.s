.include "macros.inc"
.file "hei_08.o"

# 0x00001184..0x000011F4 | size: 0x70
.text
.balign 4

# .text:0x0 | 0x1184 | size: 0x34
.fn npc_dead, local
/* 00001184 00001248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001188 0000124C  7C 08 02 A6 */	mflr r0
/* 0000118C 00001250  3C 60 00 00 */	lis r3, str_チョロボン_hei_00007938@ha
/* 00001190 00001254  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001194 00001258  38 63 00 00 */	addi r3, r3, str_チョロボン_hei_00007938@l
/* 00001198 0000125C  4B FF EE 69 */	bl npcNameToPtr
/* 0000119C 00001260  38 80 00 00 */	li r4, 0x0
/* 000011A0 00001264  4B FF EE 61 */	bl npcGroupDead
/* 000011A4 00001268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000011A8 0000126C  38 60 00 02 */	li r3, 0x2
/* 000011AC 00001270  7C 08 03 A6 */	mtlr r0
/* 000011B0 00001274  38 21 00 10 */	addi r1, r1, 0x10
/* 000011B4 00001278  4E 80 00 20 */	blr
.endfn npc_dead

# .text:0x34 | 0x11B8 | size: 0x3C
.fn npc_set_me, local
/* 000011B8 0000127C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000011BC 00001280  7C 08 02 A6 */	mflr r0
/* 000011C0 00001284  3C 80 00 00 */	lis r4, str_チョロボン_hei_00007938@ha
/* 000011C4 00001288  90 01 00 14 */	stw r0, 0x14(r1)
/* 000011C8 0000128C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000011CC 00001290  7C 7F 1B 78 */	mr r31, r3
/* 000011D0 00001294  38 64 00 00 */	addi r3, r4, str_チョロボン_hei_00007938@l
/* 000011D4 00001298  4B FF EE 2D */	bl npcNameToPtr
/* 000011D8 0000129C  90 7F 01 70 */	stw r3, 0x170(r31)
/* 000011DC 000012A0  38 60 00 02 */	li r3, 0x2
/* 000011E0 000012A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000011E4 000012A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000011E8 000012AC  7C 08 03 A6 */	mtlr r0
/* 000011EC 000012B0  38 21 00 10 */	addi r1, r1, 0x10
/* 000011F0 000012B4  4E 80 00 20 */	blr
.endfn npc_set_me

# 0x00001A40..0x00001AE8 | size: 0xA8
.rodata
.balign 8

# .rodata:0x0 | 0x1A40 | size: 0x7
.obj str_e_bero_hei_00007920, local
	.string "e_bero"
.endobj str_e_bero_hei_00007920

# .rodata:0x7 | 0x1A47 | size: 0x1
.obj gap_03_00001A47_rodata, global
.hidden gap_03_00001A47_rodata
	.byte 0x00
.endobj gap_03_00001A47_rodata

# .rodata:0x8 | 0x1A48 | size: 0x7
.obj str_hei_09_hei_00007928, local
	.string "hei_09"
.endobj str_hei_09_hei_00007928

# .rodata:0xF | 0x1A4F | size: 0x1
.obj gap_03_00001A4F_rodata, global
.hidden gap_03_00001A4F_rodata
	.byte 0x00
.endobj gap_03_00001A4F_rodata

# .rodata:0x10 | 0x1A50 | size: 0x7
.obj str_w_bero_hei_00007930, local
	.string "w_bero"
.endobj str_w_bero_hei_00007930

# .rodata:0x17 | 0x1A57 | size: 0x1
.obj gap_03_00001A57_rodata, global
.hidden gap_03_00001A57_rodata
	.byte 0x00
.endobj gap_03_00001A57_rodata

# .rodata:0x18 | 0x1A58 | size: 0xB
.obj str_チョロボン_hei_00007938, local
	.4byte 0x83608387
	.4byte 0x838D837B
	.byte 0x83, 0x93, 0x00
.endobj str_チョロボン_hei_00007938

# .rodata:0x23 | 0x1A63 | size: 0x1
.obj gap_03_00001A63_rodata, global
.hidden gap_03_00001A63_rodata
	.byte 0x00
.endobj gap_03_00001A63_rodata

# .rodata:0x24 | 0x1A64 | size: 0x15
.obj str_SFX_STG1_CHORO_FALL1_hei_00007944, local
	.string "SFX_STG1_CHORO_FALL1"
.endobj str_SFX_STG1_CHORO_FALL1_hei_00007944

# .rodata:0x39 | 0x1A79 | size: 0x3
.obj gap_03_00001A79_rodata, global
.hidden gap_03_00001A79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A79_rodata

# .rodata:0x3C | 0x1A7C | size: 0x1D
.obj str_SFX_VOICE_MARIO_SURP_hei_0000795c, local
	.string "SFX_VOICE_MARIO_SURPRISED1_2"
.endobj str_SFX_VOICE_MARIO_SURP_hei_0000795c

# .rodata:0x59 | 0x1A99 | size: 0x3
.obj gap_03_00001A99_rodata, global
.hidden gap_03_00001A99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A99_rodata

# .rodata:0x5C | 0x1A9C | size: 0x6
.obj str_M_N_7_hei_0000797c, local
	.string "M_N_7"
.endobj str_M_N_7_hei_0000797c

# .rodata:0x62 | 0x1AA2 | size: 0x2
.obj gap_03_00001AA2_rodata, global
.hidden gap_03_00001AA2_rodata
	.2byte 0x0000
.endobj gap_03_00001AA2_rodata

# .rodata:0x64 | 0x1AA4 | size: 0x6
.obj str_M_S_1_hei_00007984, local
	.string "M_S_1"
.endobj str_M_S_1_hei_00007984

# .rodata:0x6A | 0x1AAA | size: 0x2
.obj gap_03_00001AAA_rodata, global
.hidden gap_03_00001AAA_rodata
	.2byte 0x0000
.endobj gap_03_00001AAA_rodata

# .rodata:0x6C | 0x1AAC | size: 0x11
.obj str_BGM_STG1_TORIDE1_hei_0000798c, local
	.string "BGM_STG1_TORIDE1"
.endobj str_BGM_STG1_TORIDE1_hei_0000798c

# .rodata:0x7D | 0x1ABD | size: 0x3
.obj gap_03_00001ABD_rodata, global
.hidden gap_03_00001ABD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001ABD_rodata

# .rodata:0x80 | 0x1AC0 | size: 0xE
.obj str_ENV_STG1_HEI3_hei_000079a0, local
	.string "ENV_STG1_HEI3"
.endobj str_ENV_STG1_HEI3_hei_000079a0

# .rodata:0x8E | 0x1ACE | size: 0x2
.obj gap_03_00001ACE_rodata, global
.hidden gap_03_00001ACE_rodata
	.2byte 0x0000
.endobj gap_03_00001ACE_rodata

# .rodata:0x90 | 0x1AD0 | size: 0x8
.obj str_moon_st_hei_000079b0, local
	.string "moon_st"
.endobj str_moon_st_hei_000079b0

# .rodata:0x98 | 0x1AD8 | size: 0x5
.obj str_mizu_hei_000079b8, local
	.string "mizu"
.endobj str_mizu_hei_000079b8

# .rodata:0x9D | 0x1ADD | size: 0x3
.obj gap_03_00001ADD_rodata, global
.hidden gap_03_00001ADD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001ADD_rodata

# .rodata:0xA0 | 0x1AE0 | size: 0x7
.obj str_mizu_1_hei_000079c0, local
	.string "mizu_1"
.endobj str_mizu_1_hei_000079c0

# .rodata:0xA7 | 0x1AE7 | size: 0x1
.obj gap_03_00001AE7_rodata, global
.hidden gap_03_00001AE7_rodata
	.byte 0x00
.endobj gap_03_00001AE7_rodata

# 0x000094F0..0x00009978 | size: 0x488
.data
.balign 8

# .data:0x0 | 0x94F0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x94F8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x94FC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x9500 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x9504 | size: 0x4
.obj gap_04_00009504_data, global
.hidden gap_04_00009504_data
	.4byte 0x00000000
.endobj gap_04_00009504_data

# .data:0x18 | 0x9508 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x9510 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x9514 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x9518 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x9520 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x9524 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x9528 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x952C | size: 0x4
.obj gap_04_0000952C_data, global
.hidden gap_04_0000952C_data
	.4byte 0x00000000
.endobj gap_04_0000952C_data

# .data:0x40 | 0x9530 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x9538 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x953C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x9540 | size: 0x78
.obj bero_entry_data, local
	.4byte str_e_bero_hei_00007920
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_hei_09_hei_00007928
	.4byte str_w_bero_hei_00007930
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

# .data:0xC8 | 0x95B8 | size: 0x220
.obj evt_chorobon, local
	.4byte 0x00020032
	.4byte 0xF840626F
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_wait_movable
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_チョロボン_hei_00007938
	.4byte 0x00000008
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_チョロボン_hei_00007938
	.4byte 0x00020030
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_チョロボン_hei_00007938
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_チョロボン_hei_00007938
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_CHORO_FALL1_hei_00007944
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_npc_jump_position
	.4byte str_チョロボン_hei_00007938
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
	.4byte str_SFX_VOICE_MARIO_SURP_hei_0000795c
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
	.4byte str_M_N_7_hei_0000797c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_チョロボン_hei_00007938
	.4byte 0x00000001
	.4byte chorobon_move_event
	.4byte 0x0002005B
	.4byte evt_npc_restart_regular_event
	.4byte str_チョロボン_hei_00007938
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_チョロボン_hei_00007938
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
	.4byte str_チョロボン_hei_00007938
	.4byte 0x00000008
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_チョロボン_hei_00007938
	.4byte 0x00000020
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_hei_00007984
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

# .data:0x2E8 | 0x97D8 | size: 0x1A0
.obj hei_08_init_evt_11_data_97D8, global
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
	.4byte str_BGM_STG1_TORIDE1_hei_0000798c
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_HEI3_hei_000079a0
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF840626F
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_チョロボン_hei_00007938
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_restart_regular_event
	.4byte str_チョロボン_hei_00007938
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_チョロボン_hei_00007938
	.4byte 0x00000000
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_チョロボン_hei_00007938
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
	.4byte str_チョロボン_hei_00007938
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_チョロボン_hei_00007938
	.4byte 0x00000010
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF840626F
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_moon_st_hei_000079b0
	.4byte 0x0000003D
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte evt_chorobon
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_hei_000079b8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte hei_test_water_tev_11_text_11F4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_mizu_1_hei_000079c0
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_mizu_1_hei_000079c0
	.4byte 0x00000100
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hei_08_init_evt_11_data_97D8
