.include "macros.inc"
.file "las_13.o"

# 0x00004E70..0x00004F2C | size: 0xBC
.text
.balign 4

# .text:0x0 | 0x4E70 | size: 0xBC
.fn small_star, local
/* 00004E70 00004F3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00004E74 00004F40  7C 08 02 A6 */	mflr r0
/* 00004E78 00004F44  90 01 00 34 */	stw r0, 0x34(r1)
/* 00004E7C 00004F48  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 00004E80 00004F4C  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 00004E84 00004F50  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 00004E88 00004F54  F3 C1 00 18 */	psq_st f30, 0x18(r1), 0, qr0
/* 00004E8C 00004F58  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00004E90 00004F5C  7C 7E 1B 78 */	mr r30, r3
/* 00004E94 00004F60  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00004E98 00004F64  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004E9C 00004F68  4B FF B2 A1 */	bl evtGetFloat
/* 00004EA0 00004F6C  FF C0 08 90 */	fmr f30, f1
/* 00004EA4 00004F70  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00004EA8 00004F74  7F C3 F3 78 */	mr r3, r30
/* 00004EAC 00004F78  4B FF B2 91 */	bl evtGetFloat
/* 00004EB0 00004F7C  FF E0 08 90 */	fmr f31, f1
/* 00004EB4 00004F80  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00004EB8 00004F84  7F C3 F3 78 */	mr r3, r30
/* 00004EBC 00004F88  4B FF B2 81 */	bl evtGetFloat
/* 00004EC0 00004F8C  FC 00 08 90 */	fmr f0, f1
/* 00004EC4 00004F90  3C A0 00 00 */	lis r5, float_12p5_las_00013708@ha
/* 00004EC8 00004F94  3C 80 00 00 */	lis r4, zero_las_0001370c@ha
/* 00004ECC 00004F98  3C 60 00 00 */	lis r3, float_neg1_las_00013710@ha
/* 00004ED0 00004F9C  38 C5 00 00 */	addi r6, r5, float_12p5_las_00013708@l
/* 00004ED4 00004FA0  FC 20 F0 90 */	fmr f1, f30
/* 00004ED8 00004FA4  38 A4 00 00 */	addi r5, r4, zero_las_0001370c@l
/* 00004EDC 00004FA8  FC 60 00 90 */	fmr f3, f0
/* 00004EE0 00004FAC  38 83 00 00 */	addi r4, r3, float_neg1_las_00013710@l
/* 00004EE4 00004FB0  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 00004EE8 00004FB4  C0 85 00 00 */	lfs f4, 0x0(r5)
/* 00004EEC 00004FB8  38 60 00 00 */	li r3, 0x0
/* 00004EF0 00004FBC  C0 A4 00 00 */	lfs f5, 0x0(r4)
/* 00004EF4 00004FC0  FC C0 20 90 */	fmr f6, f4
/* 00004EF8 00004FC4  38 80 00 04 */	li r4, 0x4
/* 00004EFC 00004FC8  EC 40 F8 2A */	fadds f2, f0, f31
/* 00004F00 00004FCC  4B FF B2 3D */	bl effSmallStarEntry
/* 00004F04 00004FD0  38 60 00 02 */	li r3, 0x2
/* 00004F08 00004FD4  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 00004F0C 00004FD8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 00004F10 00004FDC  E3 C1 00 18 */	psq_l f30, 0x18(r1), 0, qr0
/* 00004F14 00004FE0  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 00004F18 00004FE4  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00004F1C 00004FE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00004F20 00004FEC  7C 08 03 A6 */	mtlr r0
/* 00004F24 00004FF0  38 21 00 30 */	addi r1, r1, 0x30
/* 00004F28 00004FF4  4E 80 00 20 */	blr
.endfn small_star

# 0x00001C18..0x00001CB0 | size: 0x98
.rodata
.balign 8

# .rodata:0x0 | 0x1C18 | size: 0x8
.obj str_S_door1_las_00013680, local
	.string "S_door1"
.endobj str_S_door1_las_00013680

# .rodata:0x8 | 0x1C20 | size: 0x9
.obj str_e_bero_1_las_00013688, local
	.string "e_bero_1"
.endobj str_e_bero_1_las_00013688

# .rodata:0x11 | 0x1C29 | size: 0x3
.obj gap_03_00001C29_rodata, global
.hidden gap_03_00001C29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C29_rodata

# .rodata:0x14 | 0x1C2C | size: 0x7
.obj str_las_10_las_00013694, local
	.string "las_10"
.endobj str_las_10_las_00013694

# .rodata:0x1B | 0x1C33 | size: 0x1
.obj gap_03_00001C33_rodata, global
.hidden gap_03_00001C33_rodata
	.byte 0x00
.endobj gap_03_00001C33_rodata

# .rodata:0x1C | 0x1C34 | size: 0xA
.obj str_sw_bero_1_las_0001369c, local
	.string "sw_bero_1"
.endobj str_sw_bero_1_las_0001369c

# .rodata:0x26 | 0x1C3E | size: 0x2
.obj gap_03_00001C3E_rodata, global
.hidden gap_03_00001C3E_rodata
	.2byte 0x0000
.endobj gap_03_00001C3E_rodata

# .rodata:0x28 | 0x1C40 | size: 0x4
.obj str_box_las_000136a8, local
	.string "box"
.endobj str_box_las_000136a8

# .rodata:0x2C | 0x1C44 | size: 0x4
.obj str_key_las_000136ac, local
	.string "key"
.endobj str_key_las_000136ac

# .rodata:0x30 | 0x1C48 | size: 0x8
.obj str_switch1_las_000136b0, local
	.string "switch1"
.endobj str_switch1_las_000136b0

# .rodata:0x38 | 0x1C50 | size: 0x8
.obj str_switch2_las_000136b8, local
	.string "switch2"
.endobj str_switch2_las_000136b8

# .rodata:0x40 | 0x1C58 | size: 0x14
.obj str_BGM_FF_ENV_SUCCESS1_las_000136c0, local
	.string "BGM_FF_ENV_SUCCESS1"
.endobj str_BGM_FF_ENV_SUCCESS1_las_000136c0

# .rodata:0x54 | 0x1C6C | size: 0xC
.obj str_stg8_las_38_las_000136d4, local
	.string "stg8_las_38"
.endobj str_stg8_las_38_las_000136d4

# .rodata:0x60 | 0x1C78 | size: 0xE
.obj str_BGM_STG8_LST2_las_000136e0, local
	.string "BGM_STG8_LST2"
.endobj str_BGM_STG8_LST2_las_000136e0

# .rodata:0x6E | 0x1C86 | size: 0x2
.obj gap_03_00001C86_rodata, global
.hidden gap_03_00001C86_rodata
	.2byte 0x0000
.endobj gap_03_00001C86_rodata

# .rodata:0x70 | 0x1C88 | size: 0xE
.obj str_ENV_STG8_LAS1_las_000136f0, local
	.string "ENV_STG8_LAS1"
.endobj str_ENV_STG8_LAS1_las_000136f0

# .rodata:0x7E | 0x1C96 | size: 0x2
.obj gap_03_00001C96_rodata, global
.hidden gap_03_00001C96_rodata
	.2byte 0x0000
.endobj gap_03_00001C96_rodata

# .rodata:0x80 | 0x1C98 | size: 0x7
.obj str_A_pure_las_00013700, local
	.string "A_pure"
.endobj str_A_pure_las_00013700
	.byte 0x00

# .rodata:0x88 | 0x1CA0 | size: 0x4
.obj float_12p5_las_00013708, local
	.float 12.5
.endobj float_12p5_las_00013708

# .rodata:0x8C | 0x1CA4 | size: 0x4
.obj zero_las_0001370c, local
	.float 0
.endobj zero_las_0001370c

# .rodata:0x90 | 0x1CA8 | size: 0x4
.obj float_neg1_las_00013710, local
	.float -1
.endobj float_neg1_las_00013710

# .rodata:0x94 | 0x1CAC | size: 0x4
.obj gap_03_00001CAC_rodata, global
.hidden gap_03_00001CAC_rodata
	.4byte 0x00000000
.endobj gap_03_00001CAC_rodata

# 0x0000A9B8..0x0000AF00 | size: 0x548
.data
.balign 8

# .data:0x0 | 0xA9B8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xA9C0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xA9C4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xA9C8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xA9CC | size: 0x4
.obj gap_04_0000A9CC_data, global
.hidden gap_04_0000A9CC_data
	.4byte 0x00000000
.endobj gap_04_0000A9CC_data

# .data:0x18 | 0xA9D0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xA9D8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xA9DC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xA9E0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xA9E8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xA9EC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xA9F0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xA9F4 | size: 0x4
.obj gap_04_0000A9F4_data, global
.hidden gap_04_0000A9F4_data
	.4byte 0x00000000
.endobj gap_04_0000A9F4_data

# .data:0x40 | 0xA9F8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xAA00 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xAA04 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xAA08 | size: 0x30
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_door1_las_00013680
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0x80 | 0xAA38 | size: 0x30
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_door1_las_00013680
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0xB0 | 0xAA68 | size: 0x78
.obj bero_entry_data, local
	.4byte str_e_bero_1_las_00013688
	.4byte 0x00010001
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_10_las_00013694
	.4byte str_sw_bero_1_las_0001369c
	.4byte 0x00050005
	.4byte e_door_close
	.4byte e_door_open
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

# .data:0x128 | 0xAAE0 | size: 0x78
.obj box_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_las_000136a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_key_las_000136ac
	.4byte 0x00000028
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_box_las_000136a8
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_key_las_000136ac
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj box_evt

# .data:0x1A0 | 0xAB58 | size: 0x1C8
.obj switch_check, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF70F2E81
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF70F2E82
	.4byte 0x00000003
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_switch1_las_000136b0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte small_star
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_switch2_las_000136b8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte small_star
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_mobj_delete
	.4byte str_switch1_las_000136b0
	.4byte 0x0002005B
	.4byte evt_mobj_delete
	.4byte str_switch2_las_000136b8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_las_000136c0
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x0000016B
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xFFFFFFE2
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mobj_set_position
	.4byte str_box_las_000136a8
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_box_las_000136a8
	.4byte 0x00004040
	.4byte 0x0003005B
	.4byte evt_mobj_hit_onoff
	.4byte str_box_las_000136a8
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_box_las_000136a8
	.4byte 0x0001005E
	.4byte box_syutugen_16_data_60
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406C77
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj switch_check

# .data:0x368 | 0xAD20 | size: 0x2C
.obj switch1_evt, local
	.4byte 0x0002001A
	.4byte 0xF70F2E81
	.4byte 0x000000FF
	.4byte 0x00020035
	.4byte 0xF70F2E81
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte switch_check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj switch1_evt

# .data:0x394 | 0xAD4C | size: 0x3C
.obj switch2_evt, local
	.4byte 0x00020018
	.4byte 0xF70F2E81
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF70F2E82
	.4byte 0x000000FF
	.4byte 0x00020035
	.4byte 0xF70F2E82
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte switch_check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj switch2_evt

# .data:0x3D0 | 0xAD88 | size: 0x38
.obj hint_plate, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_38_las_000136d4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hint_plate

# .data:0x408 | 0xADC0 | size: 0x13C
.obj las_13_init_evt_16_data_ADC0, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG8_LST2_las_000136e0
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS1_las_000136f0
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00020018
	.4byte 0xF8406C77
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF70F2E81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF70F2E82
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_floatswitch_red
	.4byte 0x00000000
	.4byte str_switch1_las_000136b0
	.4byte 0x00000096
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte switch1_evt
	.4byte 0xF8406C77
	.4byte 0x0008005B
	.4byte evt_mobj_floatswitch_red
	.4byte 0x00000000
	.4byte str_switch2_las_000136b8
	.4byte 0xFFFFFF6A
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte switch2_evt
	.4byte 0xF8406C77
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_box_las_000136a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte box_evt
	.4byte 0xF8406C8C
	.4byte 0x00020018
	.4byte 0xF8406C77
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000001
	.4byte str_box_las_000136a8
	.4byte 0x00004000
	.4byte 0x0003005B
	.4byte evt_mobj_hit_onoff
	.4byte str_box_las_000136a8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_pure_las_00013700
	.4byte 0x00000000
	.4byte hint_plate
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_13_init_evt_16_data_ADC0

# .data:0x544 | 0xAEFC | size: 0x4
.obj gap_04_0000AEFC_data, global
.hidden gap_04_0000AEFC_data
	.4byte 0x00000000
.endobj gap_04_0000AEFC_data
