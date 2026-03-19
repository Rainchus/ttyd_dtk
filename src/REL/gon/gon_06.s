.include "macros.inc"
.file "gon_06.o"

# 0x000013D8..0x000014BC | size: 0xE4
.text
.balign 4

# .text:0x0 | 0x13D8 | size: 0xB0
.fn majin_callback, local
/* 000013D8 000014BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000013DC 000014C0  7C 08 02 A6 */	mflr r0
/* 000013E0 000014C4  3C 80 00 00 */	lis r4, str_box_gon_00004dc0@ha
/* 000013E4 000014C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 000013E8 000014CC  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000013EC 000014D0  7C 7E 1B 78 */	mr r30, r3
/* 000013F0 000014D4  38 64 00 00 */	addi r3, r4, str_box_gon_00004dc0@l
/* 000013F4 000014D8  4B FF ED ED */	bl mobjNameToPtr
/* 000013F8 000014DC  2C 1E 00 00 */	cmpwi r30, 0x0
/* 000013FC 000014E0  7C 7F 1B 78 */	mr r31, r3
/* 00001400 000014E4  40 82 00 1C */	bne .L_0000141C
/* 00001404 000014E8  3C 80 00 00 */	lis r4, str_A_2_gon_00004dc4@ha
/* 00001408 000014EC  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 0000140C 000014F0  38 84 00 00 */	addi r4, r4, str_A_2_gon_00004dc4@l
/* 00001410 000014F4  38 A0 00 01 */	li r5, 0x1
/* 00001414 000014F8  4B FF ED CD */	bl animPoseSetAnim
/* 00001418 000014FC  48 00 00 5C */	b .L_00001474
.L_0000141C:
/* 0000141C 00001500  2C 1E 00 05 */	cmpwi r30, 0x5
/* 00001420 00001504  40 82 00 38 */	bne .L_00001458
/* 00001424 00001508  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 00001428 0000150C  4B FF ED B9 */	bl animPoseGetLoopTimes
/* 0000142C 00001510  3C 60 00 00 */	lis r3, float_1_gon_00004dc8@ha
/* 00001430 00001514  C0 03 00 00 */	lfs f0, float_1_gon_00004dc8@l(r3)
/* 00001434 00001518  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00001438 0000151C  4C 41 13 82 */	cror eq, gt, eq
/* 0000143C 00001520  40 82 00 38 */	bne .L_00001474
/* 00001440 00001524  3C 80 00 00 */	lis r4, str_A_2_gon_00004dc4@ha
/* 00001444 00001528  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 00001448 0000152C  38 84 00 00 */	addi r4, r4, str_A_2_gon_00004dc4@l
/* 0000144C 00001530  38 A0 00 01 */	li r5, 0x1
/* 00001450 00001534  4B FF ED 91 */	bl animPoseSetAnim
/* 00001454 00001538  48 00 00 20 */	b .L_00001474
.L_00001458:
/* 00001458 0000153C  2C 1E 00 02 */	cmpwi r30, 0x2
/* 0000145C 00001540  40 82 00 18 */	bne .L_00001474
/* 00001460 00001544  3C 80 00 00 */	lis r4, str_S_1_gon_00004dcc@ha
/* 00001464 00001548  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 00001468 0000154C  38 84 00 00 */	addi r4, r4, str_S_1_gon_00004dcc@l
/* 0000146C 00001550  38 A0 00 01 */	li r5, 0x1
/* 00001470 00001554  4B FF ED 71 */	bl animPoseSetAnim
.L_00001474:
/* 00001474 00001558  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00001478 0000155C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000147C 00001560  7C 08 03 A6 */	mtlr r0
/* 00001480 00001564  38 21 00 10 */	addi r1, r1, 0x10
/* 00001484 00001568  4E 80 00 20 */	blr
.endfn majin_callback

# .text:0xB0 | 0x1488 | size: 0x34
.fn bgm_start_wait, local
/* 00001488 0000156C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000148C 00001570  7C 08 02 A6 */	mflr r0
/* 00001490 00001574  38 60 00 01 */	li r3, 0x1
/* 00001494 00001578  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001498 0000157C  4B FF ED 49 */	bl psndBGMStartCheck
/* 0000149C 00001580  20 63 00 00 */	subfic r3, r3, 0x0
/* 000014A0 00001584  38 00 00 02 */	li r0, 0x2
/* 000014A4 00001588  7C 63 19 10 */	subfe r3, r3, r3
/* 000014A8 0000158C  7C 03 18 38 */	and r3, r0, r3
/* 000014AC 00001590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000014B0 00001594  7C 08 03 A6 */	mtlr r0
/* 000014B4 00001598  38 21 00 10 */	addi r1, r1, 0x10
/* 000014B8 0000159C  4E 80 00 20 */	blr
.endfn bgm_start_wait

# 0x00000EF8..0x00001248 | size: 0x350
.rodata
.balign 8

# .rodata:0x0 | 0xEF8 | size: 0x7
.obj str_door01_gon_00004cc8, local
	.string "door01"
.endobj str_door01_gon_00004cc8

# .rodata:0x7 | 0xEFF | size: 0x1
.obj gap_03_00000EFF_rodata, global
.hidden gap_03_00000EFF_rodata
	.byte 0x00
.endobj gap_03_00000EFF_rodata

# .rodata:0x8 | 0xF00 | size: 0x7
.obj str_door02_gon_00004cd0, local
	.string "door02"
.endobj str_door02_gon_00004cd0

# .rodata:0xF | 0xF07 | size: 0x1
.obj gap_03_00000F07_rodata, global
.hidden gap_03_00000F07_rodata
	.byte 0x00
.endobj gap_03_00000F07_rodata

# .rodata:0x10 | 0xF08 | size: 0x7
.obj str_w_bero_gon_00004cd8, local
	.string "w_bero"
.endobj str_w_bero_gon_00004cd8

# .rodata:0x17 | 0xF0F | size: 0x1
.obj gap_03_00000F0F_rodata, global
.hidden gap_03_00000F0F_rodata
	.byte 0x00
.endobj gap_03_00000F0F_rodata

# .rodata:0x18 | 0xF10 | size: 0x7
.obj str_gon_05_gon_00004ce0, local
	.string "gon_05"
.endobj str_gon_05_gon_00004ce0

# .rodata:0x1F | 0xF17 | size: 0x1
.obj gap_03_00000F17_rodata, global
.hidden gap_03_00000F17_rodata
	.byte 0x00
.endobj gap_03_00000F17_rodata

# .rodata:0x20 | 0xF18 | size: 0x7
.obj str_e_bero_gon_00004ce8, local
	.string "e_bero"
.endobj str_e_bero_gon_00004ce8

# .rodata:0x27 | 0xF1F | size: 0x1
.obj gap_03_00000F1F_rodata, global
.hidden gap_03_00000F1F_rodata
	.byte 0x00
.endobj gap_03_00000F1F_rodata

# .rodata:0x28 | 0xF20 | size: 0x7
.obj str_gon_07_gon_00004cf0, local
	.string "gon_07"
.endobj str_gon_07_gon_00004cf0

# .rodata:0x2F | 0xF27 | size: 0x1
.obj gap_03_00000F27_rodata, global
.hidden gap_03_00000F27_rodata
	.byte 0x00
.endobj gap_03_00000F27_rodata

# .rodata:0x30 | 0xF28 | size: 0x9
.obj str_a_ori_03_gon_00004cf8, local
	.string "a_ori_03"
.endobj str_a_ori_03_gon_00004cf8

# .rodata:0x39 | 0xF31 | size: 0x3
.obj gap_03_00000F31_rodata, global
.hidden gap_03_00000F31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000F31_rodata

# .rodata:0x3C | 0xF34 | size: 0x6
.obj str_ori02_gon_00004d04, local
	.string "ori02"
.endobj str_ori02_gon_00004d04

# .rodata:0x42 | 0xF3A | size: 0x2
.obj gap_03_00000F3A_rodata, global
.hidden gap_03_00000F3A_rodata
	.2byte 0x0000
.endobj gap_03_00000F3A_rodata

# .rodata:0x44 | 0xF3C | size: 0xF
.obj str_a_ori_03_atari_gon_00004d0c, local
	.string "a_ori_03_atari"
.endobj str_a_ori_03_atari_gon_00004d0c

# .rodata:0x53 | 0xF4B | size: 0x1
.obj gap_03_00000F4B_rodata, global
.hidden gap_03_00000F4B_rodata
	.byte 0x00
.endobj gap_03_00000F4B_rodata

# .rodata:0x54 | 0xF4C | size: 0x19
.obj str_SFX_STG1_DOOR_GRID_O_gon_00004d1c, local
	.string "SFX_STG1_DOOR_GRID_OPEN1"
.endobj str_SFX_STG1_DOOR_GRID_O_gon_00004d1c

# .rodata:0x6D | 0xF65 | size: 0x3
.obj gap_03_00000F65_rodata, global
.hidden gap_03_00000F65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000F65_rodata

# .rodata:0x70 | 0xF68 | size: 0x19
.obj str_SFX_STG1_DOOR_GRID_S_gon_00004d38, local
	.string "SFX_STG1_DOOR_GRID_SHUT1"
.endobj str_SFX_STG1_DOOR_GRID_S_gon_00004d38

# .rodata:0x89 | 0xF81 | size: 0x3
.obj gap_03_00000F81_rodata, global
.hidden gap_03_00000F81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000F81_rodata

# .rodata:0x8C | 0xF84 | size: 0x19
.obj str_SFX_STG1_DOOR_GRID_D_gon_00004d54, local
	.string "SFX_STG1_DOOR_GRID_DOWN1"
.endobj str_SFX_STG1_DOOR_GRID_D_gon_00004d54

# .rodata:0xA5 | 0xF9D | size: 0x3
.obj gap_03_00000F9D_rodata, global
.hidden gap_03_00000F9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000F9D_rodata

# .rodata:0xA8 | 0xFA0 | size: 0xF
.obj str_stg1_gon_18_00_gon_00004d70, local
	.string "stg1_gon_18_00"
.endobj str_stg1_gon_18_00_gon_00004d70

# .rodata:0xB7 | 0xFAF | size: 0x1
.obj gap_03_00000FAF_rodata, global
.hidden gap_03_00000FAF_rodata
	.byte 0x00
.endobj gap_03_00000FAF_rodata

# .rodata:0xB8 | 0xFB0 | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_gon_00004d80, local
	.string "SFX_VOICE_MARIO_NOD1_2"
.endobj str_SFX_VOICE_MARIO_NOD1_gon_00004d80

# .rodata:0xCF | 0xFC7 | size: 0x1
.obj gap_03_00000FC7_rodata, global
.hidden gap_03_00000FC7_rodata
	.byte 0x00
.endobj gap_03_00000FC7_rodata

# .rodata:0xD0 | 0xFC8 | size: 0x6
.obj str_M_N_2_gon_00004d98, local
	.string "M_N_2"
.endobj str_M_N_2_gon_00004d98

# .rodata:0xD6 | 0xFCE | size: 0x2
.obj gap_03_00000FCE_rodata, global
.hidden gap_03_00000FCE_rodata
	.2byte 0x0000
.endobj gap_03_00000FCE_rodata

# .rodata:0xD8 | 0xFD0 | size: 0xE
.obj str_BGM_STG1_GON1_gon_00004da0, local
	.string "BGM_STG1_GON1"
.endobj str_BGM_STG1_GON1_gon_00004da0

# .rodata:0xE6 | 0xFDE | size: 0x2
.obj gap_03_00000FDE_rodata, global
.hidden gap_03_00000FDE_rodata
	.2byte 0x0000
.endobj gap_03_00000FDE_rodata

# .rodata:0xE8 | 0xFE0 | size: 0xE
.obj str_ENV_STG1_GON1_gon_00004db0, local
	.string "ENV_STG1_GON1"
.endobj str_ENV_STG1_GON1_gon_00004db0

# .rodata:0xF6 | 0xFEE | size: 0x2
.obj gap_03_00000FEE_rodata, global
.hidden gap_03_00000FEE_rodata
	.2byte 0x0000
.endobj gap_03_00000FEE_rodata

# .rodata:0xF8 | 0xFF0 | size: 0x4
.obj str_box_gon_00004dc0, local
	.string "box"
.endobj str_box_gon_00004dc0

# .rodata:0xFC | 0xFF4 | size: 0x4
.obj str_A_2_gon_00004dc4, local
	.string "A_2"
.endobj str_A_2_gon_00004dc4

# .rodata:0x100 | 0xFF8 | size: 0x4
.obj float_1_gon_00004dc8, local
	.float 1
.endobj float_1_gon_00004dc8

# .rodata:0x104 | 0xFFC | size: 0x4
.obj str_S_1_gon_00004dcc, local
	.string "S_1"
.endobj str_S_1_gon_00004dcc

# .rodata:0x108 | 0x1000 | size: 0xF
.obj str_stg1_gon_12_01_gon_00004dd0, local
	.string "stg1_gon_12_01"
.endobj str_stg1_gon_12_01_gon_00004dd0

# .rodata:0x117 | 0x100F | size: 0x1
.obj gap_03_0000100F_rodata, global
.hidden gap_03_0000100F_rodata
	.byte 0x00
.endobj gap_03_0000100F_rodata

# .rodata:0x118 | 0x1010 | size: 0x19
.obj str_SFX_MOBJ_BLACKBOX_SW_gon_00004de0, local
	.string "SFX_MOBJ_BLACKBOX_SWING1"
.endobj str_SFX_MOBJ_BLACKBOX_SW_gon_00004de0

# .rodata:0x131 | 0x1029 | size: 0x3
.obj gap_03_00001029_rodata, global
.hidden gap_03_00001029_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001029_rodata

# .rodata:0x134 | 0x102C | size: 0x4
.obj str_A_3_gon_00004dfc, local
	.string "A_3"
.endobj str_A_3_gon_00004dfc

# .rodata:0x138 | 0x1030 | size: 0xF
.obj str_stg1_gon_12_02_gon_00004e00, local
	.string "stg1_gon_12_02"
.endobj str_stg1_gon_12_02_gon_00004e00

# .rodata:0x147 | 0x103F | size: 0x1
.obj gap_03_0000103F_rodata, global
.hidden gap_03_0000103F_rodata
	.byte 0x00
.endobj gap_03_0000103F_rodata

# .rodata:0x148 | 0x1040 | size: 0x6
.obj str_M_I_2_gon_00004e10, local
	.string "M_I_2"
.endobj str_M_I_2_gon_00004e10

# .rodata:0x14E | 0x1046 | size: 0x2
.obj gap_03_00001046_rodata, global
.hidden gap_03_00001046_rodata
	.2byte 0x0000
.endobj gap_03_00001046_rodata

# .rodata:0x150 | 0x1048 | size: 0x6
.obj str_M_S_1_gon_00004e18, local
	.string "M_S_1"
.endobj str_M_S_1_gon_00004e18

# .rodata:0x156 | 0x104E | size: 0x2
.obj gap_03_0000104E_rodata, global
.hidden gap_03_0000104E_rodata
	.2byte 0x0000
.endobj gap_03_0000104E_rodata

# .rodata:0x158 | 0x1050 | size: 0xF
.obj str_stg1_gon_12_03_gon_00004e20, local
	.string "stg1_gon_12_03"
.endobj str_stg1_gon_12_03_gon_00004e20

# .rodata:0x167 | 0x105F | size: 0x1
.obj gap_03_0000105F_rodata, global
.hidden gap_03_0000105F_rodata
	.byte 0x00
.endobj gap_03_0000105F_rodata

# .rodata:0x168 | 0x1060 | size: 0xF
.obj str_stg1_gon_12_04_gon_00004e30, local
	.string "stg1_gon_12_04"
.endobj str_stg1_gon_12_04_gon_00004e30

# .rodata:0x177 | 0x106F | size: 0x1
.obj gap_03_0000106F_rodata, global
.hidden gap_03_0000106F_rodata
	.byte 0x00
.endobj gap_03_0000106F_rodata

# .rodata:0x178 | 0x1070 | size: 0x1D
.obj str_SFX_VOICE_MARIO_SURP_gon_00004e40, local
	.string "SFX_VOICE_MARIO_SURPRISED2_3"
.endobj str_SFX_VOICE_MARIO_SURP_gon_00004e40

# .rodata:0x195 | 0x108D | size: 0x3
.obj gap_03_0000108D_rodata, global
.hidden gap_03_0000108D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000108D_rodata

# .rodata:0x198 | 0x1090 | size: 0x7
.obj str_M_N_5B_gon_00004e60, local
	.string "M_N_5B"
.endobj str_M_N_5B_gon_00004e60

# .rodata:0x19F | 0x1097 | size: 0x1
.obj gap_03_00001097_rodata, global
.hidden gap_03_00001097_rodata
	.byte 0x00
.endobj gap_03_00001097_rodata

# .rodata:0x1A0 | 0x1098 | size: 0xF
.obj str_stg1_gon_12_05_gon_00004e68, local
	.string "stg1_gon_12_05"
.endobj str_stg1_gon_12_05_gon_00004e68

# .rodata:0x1AF | 0x10A7 | size: 0x1
.obj gap_03_000010A7_rodata, global
.hidden gap_03_000010A7_rodata
	.byte 0x00
.endobj gap_03_000010A7_rodata

# .rodata:0x1B0 | 0x10A8 | size: 0xF
.obj str_stg1_gon_12_06_gon_00004e78, local
	.string "stg1_gon_12_06"
.endobj str_stg1_gon_12_06_gon_00004e78

# .rodata:0x1BF | 0x10B7 | size: 0x1
.obj gap_03_000010B7_rodata, global
.hidden gap_03_000010B7_rodata
	.byte 0x00
.endobj gap_03_000010B7_rodata

# .rodata:0x1C0 | 0x10B8 | size: 0x6
.obj str_M_I_Z_gon_00004e88, local
	.string "M_I_Z"
.endobj str_M_I_Z_gon_00004e88

# .rodata:0x1C6 | 0x10BE | size: 0x2
.obj gap_03_000010BE_rodata, global
.hidden gap_03_000010BE_rodata
	.2byte 0x0000
.endobj gap_03_000010BE_rodata

# .rodata:0x1C8 | 0x10C0 | size: 0xF
.obj str_stg1_gon_12_07_gon_00004e90, local
	.string "stg1_gon_12_07"
.endobj str_stg1_gon_12_07_gon_00004e90

# .rodata:0x1D7 | 0x10CF | size: 0x1
.obj gap_03_000010CF_rodata, global
.hidden gap_03_000010CF_rodata
	.byte 0x00
.endobj gap_03_000010CF_rodata

# .rodata:0x1D8 | 0x10D0 | size: 0xF
.obj str_stg1_gon_12_08_gon_00004ea0, local
	.string "stg1_gon_12_08"
.endobj str_stg1_gon_12_08_gon_00004ea0

# .rodata:0x1E7 | 0x10DF | size: 0x1
.obj gap_03_000010DF_rodata, global
.hidden gap_03_000010DF_rodata
	.byte 0x00
.endobj gap_03_000010DF_rodata

# .rodata:0x1E8 | 0x10E0 | size: 0xF
.obj str_stg1_gon_12_09_gon_00004eb0, local
	.string "stg1_gon_12_09"
.endobj str_stg1_gon_12_09_gon_00004eb0

# .rodata:0x1F7 | 0x10EF | size: 0x1
.obj gap_03_000010EF_rodata, global
.hidden gap_03_000010EF_rodata
	.byte 0x00
.endobj gap_03_000010EF_rodata

# .rodata:0x1F8 | 0x10F0 | size: 0xF
.obj str_stg1_gon_12_10_gon_00004ec0, local
	.string "stg1_gon_12_10"
.endobj str_stg1_gon_12_10_gon_00004ec0

# .rodata:0x207 | 0x10FF | size: 0x1
.obj gap_03_000010FF_rodata, global
.hidden gap_03_000010FF_rodata
	.byte 0x00
.endobj gap_03_000010FF_rodata

# .rodata:0x208 | 0x1100 | size: 0xF
.obj str_stg1_gon_12_11_gon_00004ed0, local
	.string "stg1_gon_12_11"
.endobj str_stg1_gon_12_11_gon_00004ed0

# .rodata:0x217 | 0x110F | size: 0x1
.obj gap_03_0000110F_rodata, global
.hidden gap_03_0000110F_rodata
	.byte 0x00
.endobj gap_03_0000110F_rodata

# .rodata:0x218 | 0x1110 | size: 0x6
.obj str_M_I_N_gon_00004ee0, local
	.string "M_I_N"
.endobj str_M_I_N_gon_00004ee0

# .rodata:0x21E | 0x1116 | size: 0x2
.obj gap_03_00001116_rodata, global
.hidden gap_03_00001116_rodata
	.2byte 0x0000
.endobj gap_03_00001116_rodata

# .rodata:0x220 | 0x1118 | size: 0x13
.obj str_BGM_EVT_PERAMAJIN1_gon_00004ee8, local
	.string "BGM_EVT_PERAMAJIN1"
.endobj str_BGM_EVT_PERAMAJIN1_gon_00004ee8

# .rodata:0x233 | 0x112B | size: 0x1
.obj gap_03_0000112B_rodata, global
.hidden gap_03_0000112B_rodata
	.byte 0x00
.endobj gap_03_0000112B_rodata

# .rodata:0x234 | 0x112C | size: 0xC
.obj str_OFF_d_kusya_gon_00004efc, local
	.string "OFF_d_kusya"
.endobj str_OFF_d_kusya_gon_00004efc

# .rodata:0x240 | 0x1138 | size: 0x4
.obj str_img_gon_00004f08, local
	.string "img"
.endobj str_img_gon_00004f08

# .rodata:0x244 | 0x113C | size: 0x1A
.obj str_SFX_OFF_PERAMAJIN_AP_gon_00004f0c, local
	.string "SFX_OFF_PERAMAJIN_APPEAR1"
.endobj str_SFX_OFF_PERAMAJIN_AP_gon_00004f0c

# .rodata:0x25E | 0x1156 | size: 0x2
.obj gap_03_00001156_rodata, global
.hidden gap_03_00001156_rodata
	.2byte 0x0000
.endobj gap_03_00001156_rodata

# .rodata:0x260 | 0x1158 | size: 0x18
.obj str_SFX_OFF_PERAMAJIN_CO_gon_00004f28, local
	.string "SFX_OFF_PERAMAJIN_COME1"
.endobj str_SFX_OFF_PERAMAJIN_CO_gon_00004f28

# .rodata:0x278 | 0x1170 | size: 0x4
.obj str_A_1_gon_00004f40, local
	.string "A_1"
.endobj str_A_1_gon_00004f40

# .rodata:0x27C | 0x1174 | size: 0x1C
.obj str_SFX_EVT_PERAMAJIN_BL_gon_00004f44, local
	.string "SFX_EVT_PERAMAJIN_BLINKING1"
.endobj str_SFX_EVT_PERAMAJIN_BL_gon_00004f44

# .rodata:0x298 | 0x1190 | size: 0x19
.obj str_SFX_OFF_PERAMAJIN_GO_gon_00004f60, local
	.string "SFX_OFF_PERAMAJIN_GOOUT1"
.endobj str_SFX_OFF_PERAMAJIN_GO_gon_00004f60

# .rodata:0x2B1 | 0x11A9 | size: 0x3
.obj gap_03_000011A9_rodata, global
.hidden gap_03_000011A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000011A9_rodata

# .rodata:0x2B4 | 0x11AC | size: 0x19
.obj str_SFX_OFF_PERAMAJIN_GO_gon_00004f7c, local
	.string "SFX_OFF_PERAMAJIN_GOOUT2"
.endobj str_SFX_OFF_PERAMAJIN_GO_gon_00004f7c

# .rodata:0x2CD | 0x11C5 | size: 0x3
.obj gap_03_000011C5_rodata, global
.hidden gap_03_000011C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000011C5_rodata

# .rodata:0x2D0 | 0x11C8 | size: 0xB
.obj str_カロン00_gon_00004f98, local
	.4byte 0x22834A83
	.4byte 0x8D839330
	.byte 0x30, 0x22, 0x00
.endobj str_カロン00_gon_00004f98

# .rodata:0x2DB | 0x11D3 | size: 0x1
.obj gap_03_000011D3_rodata, global
.hidden gap_03_000011D3_rodata
	.byte 0x00
.endobj gap_03_000011D3_rodata

# .rodata:0x2DC | 0x11D4 | size: 0xA
.obj str_c_karon_g_gon_00004fa4, local
	.string "c_karon_g"
.endobj str_c_karon_g_gon_00004fa4

# .rodata:0x2E6 | 0x11DE | size: 0x2
.obj gap_03_000011DE_rodata, global
.hidden gap_03_000011DE_rodata
	.2byte 0x0000
.endobj gap_03_000011DE_rodata

# .rodata:0x2E8 | 0x11E0 | size: 0x8
.obj str_KRN_Z_2_gon_00004fb0, local
	.string "KRN_Z_2"
.endobj str_KRN_Z_2_gon_00004fb0

# .rodata:0x2F0 | 0x11E8 | size: 0xB
.obj str_カロン01_gon_00004fb8, local
	.4byte 0x22834A83
	.4byte 0x8D839330
	.byte 0x31, 0x22, 0x00
.endobj str_カロン01_gon_00004fb8

# .rodata:0x2FB | 0x11F3 | size: 0x1
.obj gap_03_000011F3_rodata, global
.hidden gap_03_000011F3_rodata
	.byte 0x00
.endobj gap_03_000011F3_rodata

# .rodata:0x2FC | 0x11F4 | size: 0xB
.obj str_カロン02_gon_00004fc4, local
	.4byte 0x22834A83
	.4byte 0x8D839330
	.byte 0x32, 0x22, 0x00
.endobj str_カロン02_gon_00004fc4

# .rodata:0x307 | 0x11FF | size: 0x1
.obj gap_03_000011FF_rodata, global
.hidden gap_03_000011FF_rodata
	.byte 0x00
.endobj gap_03_000011FF_rodata

# .rodata:0x308 | 0x1200 | size: 0xB
.obj str_カロン03_gon_00004fd0, local
	.4byte 0x22834A83
	.4byte 0x8D839330
	.byte 0x33, 0x22, 0x00
.endobj str_カロン03_gon_00004fd0

# .rodata:0x313 | 0x120B | size: 0x1
.obj gap_03_0000120B_rodata, global
.hidden gap_03_0000120B_rodata
	.byte 0x00
.endobj gap_03_0000120B_rodata

# .rodata:0x314 | 0x120C | size: 0xB
.obj str_カロン04_gon_00004fdc, local
	.4byte 0x22834A83
	.4byte 0x8D839330
	.byte 0x34, 0x22, 0x00
.endobj str_カロン04_gon_00004fdc

# .rodata:0x31F | 0x1217 | size: 0x1
.obj gap_03_00001217_rodata, global
.hidden gap_03_00001217_rodata
	.byte 0x00
.endobj gap_03_00001217_rodata

# .rodata:0x320 | 0x1218 | size: 0xB
.obj str_カロン05_gon_00004fe8, local
	.4byte 0x22834A83
	.4byte 0x8D839330
	.byte 0x35, 0x22, 0x00
.endobj str_カロン05_gon_00004fe8

# .rodata:0x32B | 0x1223 | size: 0x1
.obj gap_03_00001223_rodata, global
.hidden gap_03_00001223_rodata
	.byte 0x00
.endobj gap_03_00001223_rodata

# .rodata:0x32C | 0x1224 | size: 0xD
.obj str_mobj_switch1_gon_00004ff4, local
	.string "mobj_switch1"
.endobj str_mobj_switch1_gon_00004ff4

# .rodata:0x339 | 0x1231 | size: 0x3
.obj gap_03_00001231_rodata, global
.hidden gap_03_00001231_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001231_rodata

# .rodata:0x33C | 0x1234 | size: 0x7
.obj str_item01_gon_00005004, local
	.string "item01"
.endobj str_item01_gon_00005004

# .rodata:0x343 | 0x123B | size: 0x1
.obj gap_03_0000123B_rodata, global
.hidden gap_03_0000123B_rodata
	.byte 0x00
.endobj gap_03_0000123B_rodata

# .rodata:0x344 | 0x123C | size: 0x7
.obj str_hokori_gon_0000500c, local
	.string "hokori"
.endobj str_hokori_gon_0000500c

# .rodata:0x34B | 0x1243 | size: 0x5
.obj gap_03_00001243_rodata, global
.hidden gap_03_00001243_rodata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_03_00001243_rodata

# 0x00007128..0x000086B0 | size: 0x1588
.data
.balign 8

# .data:0x0 | 0x7128 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x7130 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x7134 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x7138 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x713C | size: 0x4
.obj gap_04_0000713C_data, global
.hidden gap_04_0000713C_data
	.4byte 0x00000000
.endobj gap_04_0000713C_data

# .data:0x18 | 0x7140 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x7148 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x714C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x7150 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x7158 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x715C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x7160 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x7164 | size: 0x4
.obj gap_04_00007164_data, global
.hidden gap_04_00007164_data
	.4byte 0x00000000
.endobj gap_04_00007164_data

# .data:0x40 | 0x7168 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x7170 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x7174 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x7178 | size: 0x30
.obj door01_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door01_gon_00004cc8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door01_close

# .data:0x80 | 0x71A8 | size: 0x30
.obj door01_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door01_gon_00004cc8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door01_open

# .data:0xB0 | 0x71D8 | size: 0x30
.obj door02_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door02_gon_00004cd0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door02_close

# .data:0xE0 | 0x7208 | size: 0x30
.obj door02_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door02_gon_00004cd0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door02_open

# .data:0x110 | 0x7238 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_gon_00004cd8
	.4byte 0x0001000C
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_gon_05_gon_00004ce0
	.4byte str_e_bero_gon_00004ce8
	.4byte 0x00050005
	.4byte door01_close
	.4byte door01_open
	.4byte str_e_bero_gon_00004ce8
	.4byte 0x0001000C
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_gon_07_gon_00004cf0
	.4byte str_w_bero_gon_00004cd8
	.4byte 0x00050005
	.4byte door02_close
	.4byte door02_open
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

# .data:0x1C4 | 0x72EC | size: 0x208
.obj evt_ori_open, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_a_ori_03_gon_00004cf8
	.4byte str_ori02_gon_00004d04
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_a_ori_03_atari_gon_00004d0c
	.4byte str_ori02_gon_00004d04
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ori02_gon_00004d04
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_DOOR_GRID_O_gon_00004d1c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_ori02_gon_00004d04
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_ori_03_gon_00004cf8
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_ori_03_atari_gon_00004d0c
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000096
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFFF6
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ori02_gon_00004d04
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_DOOR_GRID_S_gon_00004d38
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_ori02_gon_00004d04
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_ori_03_gon_00004cf8
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_ori_03_atari_gon_00004d0c
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ori02_gon_00004d04
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_DOOR_GRID_D_gon_00004d54
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_sub_rumble_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_sub_rumble_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A80
	.4byte 0x000001F4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ori_open

# .data:0x3CC | 0x74F4 | size: 0x23C
.obj tsuritenjo_event, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x0000026C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x0000029E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0001005B
	.4byte evt_bero_mario_go_init
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte bero_play_enter_anime
	.4byte 0x0001005B
	.4byte evt_bero_mario_go_wait
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x0000023A
	.4byte 0x00000000
	.4byte 0xF24CD280
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000208
	.4byte 0x00000000
	.4byte 0xF24CD280
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000007
	.4byte 0x0001005B
	.4byte evt_npc_stop_for_event
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg1_gon_18_00_gon_00004d70
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_gon_00004d80
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_gon_00004d98
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000300
	.4byte str_BGM_STG1_GON1_gon_00004da0
	.4byte 0x00000BB8
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_GON1_gon_00004db0
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000002C
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_npc_start_for_event
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tsuritenjo_event

# .data:0x608 | 0x7730 | size: 0x8
.obj key_tbl, local
	.4byte 0x00000022
	.4byte 0xFFFFFFFF
.endobj key_tbl

# .data:0x610 | 0x7738 | size: 0x664
.obj evt_majin, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x00020018
	.4byte 0xF8406154
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_gon_00004dc0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001C
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_12_01_gon_00004dd0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000017C
	.4byte 0x0000007D
	.4byte 0x000001A2
	.4byte 0x0000017C
	.4byte 0x00000037
	.4byte 0x00000018
	.4byte 0x0000028A
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_gon_00004dc0
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MOBJ_BLACKBOX_SW_gon_00004de0
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte evt_mobj_set_anim
	.4byte str_box_gon_00004dc0
	.4byte str_A_3_gon_00004dfc
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_box_gon_00004dc0
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_12_02_gon_00004e00
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_gon_00004e10
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gon_00004e18
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_12_03_gon_00004e20
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_gon_00004d98
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gon_00004e18
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_12_04_gon_00004e30
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_gon_00004e40
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_gon_00004e60
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gon_00004e18
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_12_05_gon_00004e68
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_gon_00004e10
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gon_00004e18
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_12_06_gon_00004e78
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Z_gon_00004e88
	.4byte 0x0001000A
	.4byte 0x00000640
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gon_00004e18
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_12_07_gon_00004e90
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_box_gon_00004dc0
	.4byte 0x00020032
	.4byte 0xF8406154
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000022
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_gon_00004dc0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_12_08_gon_00004ea0
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_box_gon_00004dc0
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_gon_00004dc0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_12_09_gon_00004eb0
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001C
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte key_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_gon_00004dc0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_12_10_gon_00004ec0
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_box_gon_00004dc0
	.4byte 0x00000020
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000023
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000023
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24BBA80
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000022
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_gon_00004dc0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_12_11_gon_00004ed0
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_N_gon_00004ee0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000017C
	.4byte 0x0000006E
	.4byte 0x0000014A
	.4byte 0x0000017C
	.4byte 0x00000039
	.4byte 0x00000017
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_majin

# .data:0xC74 | 0x7D9C | size: 0x3C4
.obj evt_majin2, local
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000007
	.4byte 0x0001005B
	.4byte evt_npc_stop_for_event
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_box_gon_00004dc0
	.4byte 0x0003005B
	.4byte evt_pouch_add_item
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_EVT_PERAMAJIN1_gon_00004ee8
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000400
	.4byte 0x0001005B
	.4byte bgm_start_wait
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_kusya_gon_00004efc
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_gon_00004f08
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_gon_00004f08
	.4byte str_OFF_d_kusya_gon_00004efc
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_gon_00004f08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000260
	.4byte 0x000001E0
	.4byte 0x0005005B
	.4byte evt_img_set_virtual_point
	.4byte str_img_gon_00004f08
	.4byte 0x0000017C
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_gon_00004f08
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_gon_00004f08
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_PERAMAJIN_AP_gon_00004f0c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_PERAMAJIN_CO_gon_00004f28
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_gon_00004f08
	.4byte str_A_1_gon_00004f40
	.4byte 0x0002005B
	.4byte evt_mario_set_camid
	.4byte 0x00000007
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_gon_00004f08
	.4byte 0x0001005B
	.4byte lect_cam_save
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte slit_majin_lecture_init_8_data_1ED10
	.4byte 0x0001005E
	.4byte slit_majin_lecture_8_data_1ED78
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_PERAMAJIN_BL_gon_00004f44
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_init_camid
	.4byte 0x0002005B
	.4byte lect_cam_load
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_PERAMAJIN_GO_gon_00004f60
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000201
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_gon_00004f08
	.4byte str_A_2_gon_00004dc4
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_gon_00004f08
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_PERAMAJIN_GO_gon_00004f7c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_gon_00004f08
	.4byte 0x0002005B
	.4byte evt_paper_delete
	.4byte str_OFF_d_kusya_gon_00004efc
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000002D
	.4byte 0x00020032
	.4byte 0xF8406155
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_npc_start_for_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_majin2

# .data:0x1038 | 0x8160 | size: 0x550
.obj gon_06_init_evt_8_data_8160, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000002B
	.4byte 0x0001005C
	.4byte bero_case_entry
	.4byte 0x0001005C
	.4byte tsuritenjo_event
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG1_GON1_gon_00004da0
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_GON1_gon_00004db0
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_カロン00_gon_00004f98
	.4byte str_c_karon_g_gon_00004fa4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_カロン00_gon_00004f98
	.4byte 0xFFFFFE2D
	.4byte 0x00000000
	.4byte 0x0000004C
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_カロン00_gon_00004f98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カロン00_gon_00004f98
	.4byte str_KRN_Z_2_gon_00004fb0
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_カロン00_gon_00004f98
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_カロン00_gon_00004f98
	.4byte 0x00100000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_カロン00_gon_00004f98
	.4byte 0x02000000
	.4byte 0x0003005B
	.4byte evt_npc_set_width
	.4byte str_カロン00_gon_00004f98
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_height
	.4byte str_カロン00_gon_00004f98
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_カロン01_gon_00004fb8
	.4byte str_c_karon_g_gon_00004fa4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_カロン01_gon_00004fb8
	.4byte 0xFFFFFE97
	.4byte 0x00000000
	.4byte 0xFFFFFFAD
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_カロン01_gon_00004fb8
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カロン01_gon_00004fb8
	.4byte str_KRN_Z_2_gon_00004fb0
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_カロン01_gon_00004fb8
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_カロン01_gon_00004fb8
	.4byte 0x00100000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_カロン01_gon_00004fb8
	.4byte 0x02000000
	.4byte 0x0003005B
	.4byte evt_npc_set_width
	.4byte str_カロン01_gon_00004fb8
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_height
	.4byte str_カロン01_gon_00004fb8
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_カロン02_gon_00004fc4
	.4byte str_c_karon_g_gon_00004fa4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_カロン02_gon_00004fc4
	.4byte 0xFFFFFF22
	.4byte 0x00000000
	.4byte 0x00000034
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_カロン02_gon_00004fc4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カロン02_gon_00004fc4
	.4byte str_KRN_Z_2_gon_00004fb0
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_カロン02_gon_00004fc4
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_カロン02_gon_00004fc4
	.4byte 0x00100000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_カロン02_gon_00004fc4
	.4byte 0x02000000
	.4byte 0x0003005B
	.4byte evt_npc_set_width
	.4byte str_カロン02_gon_00004fc4
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_height
	.4byte str_カロン02_gon_00004fc4
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_カロン03_gon_00004fd0
	.4byte str_c_karon_g_gon_00004fa4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_カロン03_gon_00004fd0
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0xFFFFFF8D
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_カロン03_gon_00004fd0
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カロン03_gon_00004fd0
	.4byte str_KRN_Z_2_gon_00004fb0
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_カロン03_gon_00004fd0
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_カロン03_gon_00004fd0
	.4byte 0x00100000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_カロン03_gon_00004fd0
	.4byte 0x02000000
	.4byte 0x0003005B
	.4byte evt_npc_set_width
	.4byte str_カロン03_gon_00004fd0
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_height
	.4byte str_カロン03_gon_00004fd0
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_カロン04_gon_00004fdc
	.4byte str_c_karon_g_gon_00004fa4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_カロン04_gon_00004fdc
	.4byte 0x00000157
	.4byte 0x00000000
	.4byte 0xFFFFFFCF
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_カロン04_gon_00004fdc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カロン04_gon_00004fdc
	.4byte str_KRN_Z_2_gon_00004fb0
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_カロン04_gon_00004fdc
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_カロン04_gon_00004fdc
	.4byte 0x00100000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_カロン04_gon_00004fdc
	.4byte 0x02000000
	.4byte 0x0003005B
	.4byte evt_npc_set_width
	.4byte str_カロン04_gon_00004fdc
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_height
	.4byte str_カロン04_gon_00004fdc
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_カロン05_gon_00004fe8
	.4byte str_c_karon_g_gon_00004fa4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_カロン05_gon_00004fe8
	.4byte 0x0000021D
	.4byte 0x00000000
	.4byte 0x00000060
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_カロン05_gon_00004fe8
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カロン05_gon_00004fe8
	.4byte str_KRN_Z_2_gon_00004fb0
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_カロン05_gon_00004fe8
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_カロン05_gon_00004fe8
	.4byte 0x00100000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_カロン05_gon_00004fe8
	.4byte 0x02000000
	.4byte 0x0003005B
	.4byte evt_npc_set_width
	.4byte str_カロン05_gon_00004fe8
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_height
	.4byte str_カロン05_gon_00004fe8
	.4byte 0x00000007
	.4byte 0x0008005B
	.4byte evt_mobj_switch_red
	.4byte 0x00000000
	.4byte str_mobj_switch1_gon_00004ff4
	.4byte 0x0000005C
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte evt_ori_open
	.4byte 0xF8406153
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item01_gon_00005004
	.4byte 0x0000013B
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000010
	.4byte 0xF8406160
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_rumble_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hokori_gon_0000500c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x0000002D
	.4byte 0x00020032
	.4byte 0xF8406155
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_box_gon_00004dc0
	.4byte 0x0000017C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte evt_majin
	.4byte evt_majin2
	.4byte 0xF8406155
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_box_gon_00004dc0
	.4byte 0x00000040
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gon_06_init_evt_8_data_8160
