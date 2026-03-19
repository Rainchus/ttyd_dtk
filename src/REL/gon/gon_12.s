.include "macros.inc"
.file "gon_12.o"

# 0x00001F88..0x00002090 | size: 0x108
.text
.balign 4

# .text:0x0 | 0x1F88 | size: 0x108
.fn evt_chuchu_back_loop, local
/* 00001F88 0000206C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001F8C 00002070  7C 08 02 A6 */	mflr r0
/* 00001F90 00002074  3C A0 00 00 */	lis r5, str_チュチュリーナ_gon_00005b78@ha
/* 00001F94 00002078  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001F98 0000207C  38 05 00 00 */	addi r0, r5, str_チュチュリーナ_gon_00005b78@l
/* 00001F9C 00002080  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 00001FA0 00002084  7C 9D 23 78 */	mr r29, r4
/* 00001FA4 00002088  7C 7C 1B 78 */	mr r28, r3
/* 00001FA8 0000208C  7C 04 03 78 */	mr r4, r0
/* 00001FAC 00002090  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00001FB0 00002094  4B FF E2 31 */	bl evtNpcNameToPtr
/* 00001FB4 00002098  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00001FB8 0000209C  7C 7F 1B 78 */	mr r31, r3
/* 00001FBC 000020A0  7F 83 E3 78 */	mr r3, r28
/* 00001FC0 000020A4  4B FF E2 21 */	bl evtGetValue
/* 00001FC4 000020A8  3C 80 00 00 */	lis r4, gp@ha
/* 00001FC8 000020AC  7C 7E 1B 78 */	mr r30, r3
/* 00001FCC 000020B0  38 84 00 00 */	addi r4, r4, gp@l
/* 00001FD0 000020B4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001FD4 000020B8  80 04 00 14 */	lwz r0, 0x14(r4)
/* 00001FD8 000020BC  2C 00 00 00 */	cmpwi r0, 0x0
/* 00001FDC 000020C0  41 82 00 10 */	beq .L_00001FEC
/* 00001FE0 000020C4  80 04 00 38 */	lwz r0, 0x38(r4)
/* 00001FE4 000020C8  80 A4 00 3C */	lwz r5, 0x3c(r4)
/* 00001FE8 000020CC  48 00 00 0C */	b .L_00001FF4
.L_00001FEC:
/* 00001FEC 000020D0  80 04 00 40 */	lwz r0, 0x40(r4)
/* 00001FF0 000020D4  80 A4 00 44 */	lwz r5, 0x44(r4)
.L_00001FF4:
/* 00001FF4 000020D8  2C 1D 00 00 */	cmpwi r29, 0x0
/* 00001FF8 000020DC  41 82 00 18 */	beq .L_00002010
/* 00001FFC 000020E0  38 60 FF FF */	li r3, -0x1
/* 00002000 000020E4  7C 00 18 38 */	and r0, r0, r3
/* 00002004 000020E8  90 1C 00 78 */	stw r0, 0x78(r28)
/* 00002008 000020EC  7C A0 18 38 */	and r0, r5, r3
/* 0000200C 000020F0  90 1C 00 7C */	stw r0, 0x7c(r28)
.L_00002010:
/* 00002010 000020F4  3C 60 80 00 */	lis r3, 0x8000
/* 00002014 000020F8  80 9C 00 7C */	lwz r4, 0x7c(r28)
/* 00002018 000020FC  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 0000201C 00002100  38 00 03 E8 */	li r0, 0x3e8
/* 00002020 00002104  7C 84 28 50 */	subf r4, r4, r5
/* 00002024 00002108  38 A0 00 00 */	li r5, 0x0
/* 00002028 0000210C  54 63 F0 BE */	srwi r3, r3, 2
/* 0000202C 00002110  7C C3 03 96 */	divwu r6, r3, r0
/* 00002030 00002114  7C 83 FE 70 */	srawi r3, r4, 31
/* 00002034 00002118  4B FF E1 AD */	bl __div2u
/* 00002038 0000211C  7C 04 F0 00 */	cmpw r4, r30
/* 0000203C 00002120  40 80 00 30 */	bge .L_0000206C
/* 00002040 00002124  3C A0 00 00 */	lis r5, zero_gon_00005b88@ha
/* 00002044 00002128  3C 60 00 00 */	lis r3, float_360_gon_00005b8c@ha
/* 00002048 0000212C  38 C5 00 00 */	addi r6, r5, zero_gon_00005b88@l
/* 0000204C 00002130  C0 43 00 00 */	lfs f2, float_360_gon_00005b8c@l(r3)
/* 00002050 00002134  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 00002054 00002138  7F C5 F3 78 */	mr r5, r30
/* 00002058 0000213C  38 60 00 0B */	li r3, 0xb
/* 0000205C 00002140  4B FF E1 85 */	bl intplGetValue
/* 00002060 00002144  D0 3F 00 F4 */	stfs f1, 0xf4(r31)
/* 00002064 00002148  38 60 00 00 */	li r3, 0x0
/* 00002068 0000214C  48 00 00 14 */	b .L_0000207C
.L_0000206C:
/* 0000206C 00002150  3C 80 00 00 */	lis r4, zero_gon_00005b88@ha
/* 00002070 00002154  38 60 00 02 */	li r3, 0x2
/* 00002074 00002158  C0 04 00 00 */	lfs f0, zero_gon_00005b88@l(r4)
/* 00002078 0000215C  D0 1F 00 F4 */	stfs f0, 0xf4(r31)
.L_0000207C:
/* 0000207C 00002160  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00002080 00002164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00002084 00002168  7C 08 03 A6 */	mtlr r0
/* 00002088 0000216C  38 21 00 20 */	addi r1, r1, 0x20
/* 0000208C 00002170  4E 80 00 20 */	blr
.endfn evt_chuchu_back_loop

# 0x00001D88..0x00001FF0 | size: 0x268
.rodata
.balign 8

# .rodata:0x0 | 0x1D88 | size: 0x7
.obj str_door03_gon_00005b58, local
	.string "door03"
.endobj str_door03_gon_00005b58

# .rodata:0x7 | 0x1D8F | size: 0x1
.obj gap_03_00001D8F_rodata, global
.hidden gap_03_00001D8F_rodata
	.byte 0x00
.endobj gap_03_00001D8F_rodata

# .rodata:0x8 | 0x1D90 | size: 0x7
.obj str_e_bero_gon_00005b60, local
	.string "e_bero"
.endobj str_e_bero_gon_00005b60

# .rodata:0xF | 0x1D97 | size: 0x1
.obj gap_03_00001D97_rodata, global
.hidden gap_03_00001D97_rodata
	.byte 0x00
.endobj gap_03_00001D97_rodata

# .rodata:0x10 | 0x1D98 | size: 0x7
.obj str_gon_08_gon_00005b68, local
	.string "gon_08"
.endobj str_gon_08_gon_00005b68

# .rodata:0x17 | 0x1D9F | size: 0x1
.obj gap_03_00001D9F_rodata, global
.hidden gap_03_00001D9F_rodata
	.byte 0x00
.endobj gap_03_00001D9F_rodata

# .rodata:0x18 | 0x1DA0 | size: 0x7
.obj str_w_bero_gon_00005b70, local
	.string "w_bero"
.endobj str_w_bero_gon_00005b70

# .rodata:0x1F | 0x1DA7 | size: 0x1
.obj gap_03_00001DA7_rodata, global
.hidden gap_03_00001DA7_rodata
	.byte 0x00
.endobj gap_03_00001DA7_rodata

# .rodata:0x20 | 0x1DA8 | size: 0xF
.obj str_チュチュリーナ_gon_00005b78, local
	.4byte 0x83608385
	.4byte 0x83608385
	.4byte 0x838A815B
	.byte 0x83, 0x69, 0x00
.endobj str_チュチュリーナ_gon_00005b78
	.byte 0x00

# .rodata:0x30 | 0x1DB8 | size: 0x4
.obj zero_gon_00005b88, local
	.float 0
.endobj zero_gon_00005b88

# .rodata:0x34 | 0x1DBC | size: 0x4
.obj float_360_gon_00005b8c, local
	.float 360
.endobj float_360_gon_00005b8c

# .rodata:0x38 | 0x1DC0 | size: 0x7
.obj str_s_heya_gon_00005b90, local
	.string "s_heya"
.endobj str_s_heya_gon_00005b90

# .rodata:0x3F | 0x1DC7 | size: 0x1
.obj gap_03_00001DC7_rodata, global
.hidden gap_03_00001DC7_rodata
	.byte 0x00
.endobj gap_03_00001DC7_rodata

# .rodata:0x40 | 0x1DC8 | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_gon_00005b98, local
	.string "SFX_VOICE_MARIO_FIND1_3"
.endobj str_SFX_VOICE_MARIO_FIND_gon_00005b98

# .rodata:0x58 | 0x1DE0 | size: 0x1
.obj zero_gon_00005bb0, local
	.byte 0x00
.endobj zero_gon_00005bb0

# .rodata:0x59 | 0x1DE1 | size: 0x3
.obj gap_03_00001DE1_rodata, global
.hidden gap_03_00001DE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001DE1_rodata

# .rodata:0x5C | 0x1DE4 | size: 0x14
.obj str_BGM_EVT_CYUCYURINA1_gon_00005bb4, local
	.string "BGM_EVT_CYUCYURINA1"
.endobj str_BGM_EVT_CYUCYURINA1_gon_00005bb4

# .rodata:0x70 | 0x1DF8 | size: 0xF
.obj str_stg1_gon_18_01_gon_00005bc8, local
	.string "stg1_gon_18_01"
.endobj str_stg1_gon_18_01_gon_00005bc8

# .rodata:0x7F | 0x1E07 | size: 0x1
.obj gap_03_00001E07_rodata, global
.hidden gap_03_00001E07_rodata
	.byte 0x00
.endobj gap_03_00001E07_rodata

# .rodata:0x80 | 0x1E08 | size: 0xF
.obj str_stg1_gon_18_02_gon_00005bd8, local
	.string "stg1_gon_18_02"
.endobj str_stg1_gon_18_02_gon_00005bd8

# .rodata:0x8F | 0x1E17 | size: 0x1
.obj gap_03_00001E17_rodata, global
.hidden gap_03_00001E17_rodata
	.byte 0x00
.endobj gap_03_00001E17_rodata

# .rodata:0x90 | 0x1E18 | size: 0xF
.obj str_stg1_gon_18_04_gon_00005be8, local
	.string "stg1_gon_18_04"
.endobj str_stg1_gon_18_04_gon_00005be8

# .rodata:0x9F | 0x1E27 | size: 0x1
.obj gap_03_00001E27_rodata, global
.hidden gap_03_00001E27_rodata
	.byte 0x00
.endobj gap_03_00001E27_rodata

# .rodata:0xA0 | 0x1E28 | size: 0xF
.obj str_stg1_gon_18_05_gon_00005bf8, local
	.string "stg1_gon_18_05"
.endobj str_stg1_gon_18_05_gon_00005bf8

# .rodata:0xAF | 0x1E37 | size: 0x1
.obj gap_03_00001E37_rodata, global
.hidden gap_03_00001E37_rodata
	.byte 0x00
.endobj gap_03_00001E37_rodata

# .rodata:0xB0 | 0x1E38 | size: 0xF
.obj str_stg1_gon_18_07_gon_00005c08, local
	.string "stg1_gon_18_07"
.endobj str_stg1_gon_18_07_gon_00005c08

# .rodata:0xBF | 0x1E47 | size: 0x1
.obj gap_03_00001E47_rodata, global
.hidden gap_03_00001E47_rodata
	.byte 0x00
.endobj gap_03_00001E47_rodata

# .rodata:0xC0 | 0x1E48 | size: 0xF
.obj str_stg1_gon_18_08_gon_00005c18, local
	.string "stg1_gon_18_08"
.endobj str_stg1_gon_18_08_gon_00005c18

# .rodata:0xCF | 0x1E57 | size: 0x1
.obj gap_03_00001E57_rodata, global
.hidden gap_03_00001E57_rodata
	.byte 0x00
.endobj gap_03_00001E57_rodata

# .rodata:0xD0 | 0x1E58 | size: 0xF
.obj str_stg1_gon_18_10_gon_00005c28, local
	.string "stg1_gon_18_10"
.endobj str_stg1_gon_18_10_gon_00005c28

# .rodata:0xDF | 0x1E67 | size: 0x1
.obj gap_03_00001E67_rodata, global
.hidden gap_03_00001E67_rodata
	.byte 0x00
.endobj gap_03_00001E67_rodata

# .rodata:0xE0 | 0x1E68 | size: 0x8
.obj str_PCH_W_1_gon_00005c38, local
	.string "PCH_W_1"
.endobj str_PCH_W_1_gon_00005c38

# .rodata:0xE8 | 0x1E70 | size: 0x8
.obj str_PCH_S_1_gon_00005c40, local
	.string "PCH_S_1"
.endobj str_PCH_S_1_gon_00005c40

# .rodata:0xF0 | 0x1E78 | size: 0xF
.obj str_stg1_gon_18_11_gon_00005c48, local
	.string "stg1_gon_18_11"
.endobj str_stg1_gon_18_11_gon_00005c48

# .rodata:0xFF | 0x1E87 | size: 0x1
.obj gap_03_00001E87_rodata, global
.hidden gap_03_00001E87_rodata
	.byte 0x00
.endobj gap_03_00001E87_rodata

# .rodata:0x100 | 0x1E88 | size: 0x5
.obj str_kiss_gon_00005c58, local
	.string "kiss"
.endobj str_kiss_gon_00005c58

# .rodata:0x105 | 0x1E8D | size: 0x3
.obj gap_03_00001E8D_rodata, global
.hidden gap_03_00001E8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E8D_rodata

# .rodata:0x108 | 0x1E90 | size: 0x17
.obj str_SFX_STG1_CHURINA_KIS_gon_00005c60, local
	.string "SFX_STG1_CHURINA_KISS1"
.endobj str_SFX_STG1_CHURINA_KIS_gon_00005c60

# .rodata:0x11F | 0x1EA7 | size: 0x1
.obj gap_03_00001EA7_rodata, global
.hidden gap_03_00001EA7_rodata
	.byte 0x00
.endobj gap_03_00001EA7_rodata

# .rodata:0x120 | 0x1EA8 | size: 0x17
.obj str_SFX_STG1_CHURINA_KIS_gon_00005c78, local
	.string "SFX_STG1_CHURINA_KISS2"
.endobj str_SFX_STG1_CHURINA_KIS_gon_00005c78

# .rodata:0x137 | 0x1EBF | size: 0x1
.obj gap_03_00001EBF_rodata, global
.hidden gap_03_00001EBF_rodata
	.byte 0x00
.endobj gap_03_00001EBF_rodata

# .rodata:0x138 | 0x1EC0 | size: 0x8
.obj str_PCH_K_1_gon_00005c90, local
	.string "PCH_K_1"
.endobj str_PCH_K_1_gon_00005c90

# .rodata:0x140 | 0x1EC8 | size: 0x1B
.obj str_SFX_VOICE_MARIO_SURP_gon_00005c98, local
	.string "SFX_VOICE_MARIO_SURPRISED1"
.endobj str_SFX_VOICE_MARIO_SURP_gon_00005c98

# .rodata:0x15B | 0x1EE3 | size: 0x1
.obj gap_03_00001EE3_rodata, global
.hidden gap_03_00001EE3_rodata
	.byte 0x00
.endobj gap_03_00001EE3_rodata

# .rodata:0x15C | 0x1EE4 | size: 0x6
.obj str_M_I_O_gon_00005cb4, local
	.string "M_I_O"
.endobj str_M_I_O_gon_00005cb4

# .rodata:0x162 | 0x1EEA | size: 0x2
.obj gap_03_00001EEA_rodata, global
.hidden gap_03_00001EEA_rodata
	.2byte 0x0000
.endobj gap_03_00001EEA_rodata

# .rodata:0x164 | 0x1EEC | size: 0x6
.obj str_M_S_1_gon_00005cbc, local
	.string "M_S_1"
.endobj str_M_S_1_gon_00005cbc

# .rodata:0x16A | 0x1EF2 | size: 0x2
.obj gap_03_00001EF2_rodata, global
.hidden gap_03_00001EF2_rodata
	.2byte 0x0000
.endobj gap_03_00001EF2_rodata

# .rodata:0x16C | 0x1EF4 | size: 0x8
.obj str_PCH_R_1_gon_00005cc4, local
	.string "PCH_R_1"
.endobj str_PCH_R_1_gon_00005cc4

# .rodata:0x174 | 0x1EFC | size: 0xF
.obj str_stg1_gon_18_13_gon_00005ccc, local
	.string "stg1_gon_18_13"
.endobj str_stg1_gon_18_13_gon_00005ccc

# .rodata:0x183 | 0x1F0B | size: 0x1
.obj gap_03_00001F0B_rodata, global
.hidden gap_03_00001F0B_rodata
	.byte 0x00
.endobj gap_03_00001F0B_rodata

# .rodata:0x184 | 0x1F0C | size: 0x6
.obj str_M_Z_1_gon_00005cdc, local
	.string "M_Z_1"
.endobj str_M_Z_1_gon_00005cdc

# .rodata:0x18A | 0x1F12 | size: 0x2
.obj gap_03_00001F12_rodata, global
.hidden gap_03_00001F12_rodata
	.2byte 0x0000
.endobj gap_03_00001F12_rodata

# .rodata:0x18C | 0x1F14 | size: 0x17
.obj str_SFX_STG1_CHURINA_JUM_gon_00005ce4, local
	.string "SFX_STG1_CHURINA_JUMP1"
.endobj str_SFX_STG1_CHURINA_JUM_gon_00005ce4

# .rodata:0x1A3 | 0x1F2B | size: 0x1
.obj gap_03_00001F2B_rodata, global
.hidden gap_03_00001F2B_rodata
	.byte 0x00
.endobj gap_03_00001F2B_rodata

# .rodata:0x1A4 | 0x1F2C | size: 0xF
.obj str_stg1_gon_18_14_gon_00005cfc, local
	.string "stg1_gon_18_14"
.endobj str_stg1_gon_18_14_gon_00005cfc

# .rodata:0x1B3 | 0x1F3B | size: 0x1
.obj gap_03_00001F3B_rodata, global
.hidden gap_03_00001F3B_rodata
	.byte 0x00
.endobj gap_03_00001F3B_rodata

# .rodata:0x1B4 | 0x1F3C | size: 0xF
.obj str_stg1_gon_18_16_gon_00005d0c, local
	.string "stg1_gon_18_16"
.endobj str_stg1_gon_18_16_gon_00005d0c

# .rodata:0x1C3 | 0x1F4B | size: 0x1
.obj gap_03_00001F4B_rodata, global
.hidden gap_03_00001F4B_rodata
	.byte 0x00
.endobj gap_03_00001F4B_rodata

# .rodata:0x1C4 | 0x1F4C | size: 0x19
.obj str_SFX_STG1_CHURINA_ESC_gon_00005d1c, local
	.string "SFX_STG1_CHURINA_ESCAPE1"
.endobj str_SFX_STG1_CHURINA_ESC_gon_00005d1c

# .rodata:0x1DD | 0x1F65 | size: 0x3
.obj gap_03_00001F65_rodata, global
.hidden gap_03_00001F65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F65_rodata

# .rodata:0x1E0 | 0x1F68 | size: 0xF
.obj str_stg1_gon_18_17_gon_00005d38, local
	.string "stg1_gon_18_17"
.endobj str_stg1_gon_18_17_gon_00005d38

# .rodata:0x1EF | 0x1F77 | size: 0x1
.obj gap_03_00001F77_rodata, global
.hidden gap_03_00001F77_rodata
	.byte 0x00
.endobj gap_03_00001F77_rodata

# .rodata:0x1F0 | 0x1F78 | size: 0xE
.obj str_BGM_STG1_GON1_gon_00005d48, local
	.string "BGM_STG1_GON1"
.endobj str_BGM_STG1_GON1_gon_00005d48

# .rodata:0x1FE | 0x1F86 | size: 0x2
.obj gap_03_00001F86_rodata, global
.hidden gap_03_00001F86_rodata
	.2byte 0x0000
.endobj gap_03_00001F86_rodata

# .rodata:0x200 | 0x1F88 | size: 0xE
.obj str_ENV_STG1_GON1_gon_00005d58, local
	.string "ENV_STG1_GON1"
.endobj str_ENV_STG1_GON1_gon_00005d58

# .rodata:0x20E | 0x1F96 | size: 0x2
.obj gap_03_00001F96_rodata, global
.hidden gap_03_00001F96_rodata
	.2byte 0x0000
.endobj gap_03_00001F96_rodata

# .rodata:0x210 | 0x1F98 | size: 0xB
.obj str_mobj_box00_gon_00005d68, local
	.string "mobj_box00"
.endobj str_mobj_box00_gon_00005d68

# .rodata:0x21B | 0x1FA3 | size: 0x1
.obj gap_03_00001FA3_rodata, global
.hidden gap_03_00001FA3_rodata
	.byte 0x00
.endobj gap_03_00001FA3_rodata

# .rodata:0x21C | 0x1FA4 | size: 0x7
.obj str_item00_gon_00005d74, local
	.string "item00"
.endobj str_item00_gon_00005d74

# .rodata:0x223 | 0x1FAB | size: 0x1
.obj gap_03_00001FAB_rodata, global
.hidden gap_03_00001FAB_rodata
	.byte 0x00
.endobj gap_03_00001FAB_rodata

# .rodata:0x224 | 0x1FAC | size: 0xB
.obj str_mobj_box01_gon_00005d7c, local
	.string "mobj_box01"
.endobj str_mobj_box01_gon_00005d7c

# .rodata:0x22F | 0x1FB7 | size: 0x1
.obj gap_03_00001FB7_rodata, global
.hidden gap_03_00001FB7_rodata
	.byte 0x00
.endobj gap_03_00001FB7_rodata

# .rodata:0x230 | 0x1FB8 | size: 0x7
.obj str_item01_gon_00005d88, local
	.string "item01"
.endobj str_item01_gon_00005d88

# .rodata:0x237 | 0x1FBF | size: 0x1
.obj gap_03_00001FBF_rodata, global
.hidden gap_03_00001FBF_rodata
	.byte 0x00
.endobj gap_03_00001FBF_rodata

# .rodata:0x238 | 0x1FC0 | size: 0xB
.obj str_mobj_box02_gon_00005d90, local
	.string "mobj_box02"
.endobj str_mobj_box02_gon_00005d90

# .rodata:0x243 | 0x1FCB | size: 0x1
.obj gap_03_00001FCB_rodata, global
.hidden gap_03_00001FCB_rodata
	.byte 0x00
.endobj gap_03_00001FCB_rodata

# .rodata:0x244 | 0x1FCC | size: 0x7
.obj str_item02_gon_00005d9c, local
	.string "item02"
.endobj str_item02_gon_00005d9c

# .rodata:0x24B | 0x1FD3 | size: 0x1
.obj gap_03_00001FD3_rodata, global
.hidden gap_03_00001FD3_rodata
	.byte 0x00
.endobj gap_03_00001FD3_rodata

# .rodata:0x24C | 0x1FD4 | size: 0xB
.obj str_mobj_box03_gon_00005da4, local
	.string "mobj_box03"
.endobj str_mobj_box03_gon_00005da4

# .rodata:0x257 | 0x1FDF | size: 0x1
.obj gap_03_00001FDF_rodata, global
.hidden gap_03_00001FDF_rodata
	.byte 0x00
.endobj gap_03_00001FDF_rodata

# .rodata:0x258 | 0x1FE0 | size: 0x7
.obj str_pblk00_gon_00005db0, local
	.string "pblk00"
.endobj str_pblk00_gon_00005db0

# .rodata:0x25F | 0x1FE7 | size: 0x1
.obj gap_03_00001FE7_rodata, global
.hidden gap_03_00001FE7_rodata
	.byte 0x00
.endobj gap_03_00001FE7_rodata

# .rodata:0x260 | 0x1FE8 | size: 0x7
.obj str_hokori_gon_00005db8, local
	.string "hokori"
.endobj str_hokori_gon_00005db8

# .rodata:0x267 | 0x1FEF | size: 0x1
.obj gap_03_00001FEF_rodata, global
.hidden gap_03_00001FEF_rodata
	.byte 0x00
.endobj gap_03_00001FEF_rodata

# 0x0000D4D8..0x0000E360 | size: 0xE88
.data
.balign 8

# .data:0x0 | 0xD4D8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xD4E0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xD4E4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xD4E8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xD4EC | size: 0x4
.obj gap_04_0000D4EC_data, global
.hidden gap_04_0000D4EC_data
	.4byte 0x00000000
.endobj gap_04_0000D4EC_data

# .data:0x18 | 0xD4F0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xD4F8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xD4FC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xD500 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xD508 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xD50C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xD510 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xD514 | size: 0x4
.obj gap_04_0000D514_data, global
.hidden gap_04_0000D514_data
	.4byte 0x00000000
.endobj gap_04_0000D514_data

# .data:0x40 | 0xD518 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xD520 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xD524 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xD528 | size: 0x30
.obj door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door03_gon_00005b58
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_close

# .data:0x80 | 0xD558 | size: 0x30
.obj door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door03_gon_00005b58
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_open

# .data:0xB0 | 0xD588 | size: 0x78
.obj bero_entry_data, local
	.4byte str_e_bero_gon_00005b60
	.4byte 0x0001000C
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_gon_08_gon_00005b68
	.4byte str_w_bero_gon_00005b70
	.4byte 0x00050005
	.4byte door_close
	.4byte door_open
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

# .data:0x128 | 0xD600 | size: 0x988
.obj chuchurina_sogu, local
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x000000E6
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x0001005B
	.4byte evt_bero_mario_go_init
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_play_enter_anime
	.4byte 0x0001005B
	.4byte evt_bero_mario_go_wait
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x000000A0
	.4byte 0x0000000F
	.4byte 0xF24CD280
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000082
	.4byte 0x00000000
	.4byte 0xF24CD280
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_s_heya_gon_00005b90
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x00000400
	.4byte 0x0001000A
	.4byte 0x000002EE
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_gon_00005b98
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_gon_00005bb0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000060
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte zero_gon_00005bb0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000060
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB2
	.4byte 0x00000098
	.4byte 0x00000210
	.4byte 0xFFFFFFB2
	.4byte 0x00000039
	.4byte 0xFFFFFFF3
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_CYUCYURINA1_gon_00005bb4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_18_01_gon_00005bc8
	.4byte 0x00000000
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000008D
	.4byte 0x0000005B
	.4byte 0x00000107
	.4byte 0x0000008D
	.4byte 0x0000002D
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg1_gon_18_02_gon_00005bd8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF92
	.4byte 0x0000004B
	.4byte 0x000000E1
	.4byte 0xFFFFFF92
	.4byte 0x00000023
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_18_04_gon_00005be8
	.4byte 0x00000000
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFFD
	.4byte 0x00000058
	.4byte 0x000000AA
	.4byte 0x00000086
	.4byte 0x00000023
	.4byte 0xFFFFFFF9
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg1_gon_18_05_gon_00005bf8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x00008000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003A
	.4byte 0x0000000D
	.4byte 0x00000097
	.4byte 0xFFFFFF76
	.4byte 0x00000026
	.4byte 0xFFFFFFE1
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_18_07_gon_00005c08
	.4byte 0x00000000
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000008D
	.4byte 0x0000005B
	.4byte 0x00000107
	.4byte 0x0000008D
	.4byte 0x0000002D
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg1_gon_18_08_gon_00005c18
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF92
	.4byte 0x0000004B
	.4byte 0x000000E1
	.4byte 0xFFFFFF92
	.4byte 0x00000023
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_18_10_gon_00005c28
	.4byte 0x00000000
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte str_PCH_W_1_gon_00005c38
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000073
	.4byte 0x0000005B
	.4byte 0x00000107
	.4byte 0x00000073
	.4byte 0x0000002D
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE7
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte str_PCH_S_1_gon_00005c40
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg1_gon_18_11_gon_00005c48
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFF1
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte str_PCH_W_1_gon_00005c38
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kiss_gon_00005c58
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFFFFFFD3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_CHURINA_KIS_gon_00005c60
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_CHURINA_KIS_gon_00005c78
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte str_PCH_K_1_gon_00005c90
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_gon_00005c98
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_O_gon_00005cb4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte str_PCH_S_1_gon_00005c40
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gon_00005cbc
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte str_PCH_R_1_gon_00005cc4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x00000055
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte str_PCH_S_1_gon_00005c40
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_18_13_gon_00005ccc
	.4byte 0x00000000
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_Z_1_gon_00005cdc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000D9
	.4byte 0x0000000E
	.4byte 0x000000E4
	.4byte 0x00000065
	.4byte 0x00000034
	.4byte 0xFFFFFFDD
	.4byte 0x00000190
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate_offset
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_chuchu_back_loop
	.4byte 0x000001C2
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_CHURINA_JUM_gon_00005ce4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x00000000
	.4byte 0x00000043
	.4byte 0xFFFFFF83
	.4byte 0x000001F4
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg1_gon_18_14_gon_00005cfc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000005B
	.4byte 0x00000042
	.4byte 0x00000063
	.4byte 0x0000002B
	.4byte 0x00000052
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_18_16_gon_00005d0c
	.4byte 0x00000000
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000B3
	.4byte 0x00000024
	.4byte 0x0000012B
	.4byte 0x0000002B
	.4byte 0x00000052
	.4byte 0xFFFFFFF6
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate_offset
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000163
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte str_PCH_W_1_gon_00005c38
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_CHURINA_ESC_gon_00005d1c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x00000023
	.4byte 0x00000000
	.4byte 0xFFFFFF6F
	.4byte 0x0000012C
	.4byte 0x00000014
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000008D
	.4byte 0x0000005B
	.4byte 0x00000107
	.4byte 0x0000008D
	.4byte 0x0000002D
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg1_gon_18_17_gon_00005d38
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG1_GON1_gon_00005d48
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_GON1_gon_00005d58
	.4byte 0x0001005C
	.4byte bero_case_entry
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xF8406167
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj chuchurina_sogu

# .data:0xAB0 | 0xDF88 | size: 0x8
.obj chuchurina_talk, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj chuchurina_talk

# .data:0xAB8 | 0xDF90 | size: 0xB8
.obj npcEnt, local
	.4byte str_チュチュリーナ_gon_00005b78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte chuchurina_talk
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

# .data:0xB70 | 0xE048 | size: 0x94
.obj item_get00, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box00_gon_00005d68
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_gon_00005d74
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_gon_00005d74
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box00_gon_00005d68
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item00_gon_00005d74
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000033
	.4byte 0x00000002
	.4byte 0x00000001
.endobj item_get00

# .data:0xC04 | 0xE0DC | size: 0x88
.obj item_get01, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box01_gon_00005d7c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item01_gon_00005d88
	.4byte 0x00000094
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item01_gon_00005d88
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box01_gon_00005d7c
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item01_gon_00005d88
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj item_get01

# .data:0xC8C | 0xE164 | size: 0x88
.obj item_get02, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box02_gon_00005d90
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item02_gon_00005d9c
	.4byte 0x0000009A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item02_gon_00005d9c
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box02_gon_00005d90
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item02_gon_00005d9c
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj item_get02

# .data:0xD14 | 0xE1EC | size: 0x174
.obj gon_12_init_evt_8_data_E1EC, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000032
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG1_GON1_gon_00005d48
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_GON1_gon_00005d58
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte chuchurina_sogu
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000033
	.4byte 0x00020032
	.4byte 0xF8406163
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box00_gon_00005d68
	.4byte 0xFFFFFF8B
	.4byte 0x00000000
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte item_get00
	.4byte 0xF8406163
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box01_gon_00005d7c
	.4byte 0xFFFFFFC8
	.4byte 0x00000000
	.4byte 0xFFFFFFE7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte item_get01
	.4byte 0xF8406164
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box02_gon_00005d90
	.4byte 0xFFFFFF51
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte item_get02
	.4byte 0xF8406165
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box03_gon_00005da4
	.4byte 0xFFFFFF6A
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_pblk00_gon_00005db0
	.4byte 0xFFFFFF6A
	.4byte 0x0000003C
	.4byte 0xFFFFFFE7
	.4byte 0x00000000
	.4byte 0xF8407124
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hokori_gon_00005db8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gon_12_init_evt_8_data_E1EC
