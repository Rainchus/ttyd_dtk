.include "macros.inc"
.file "las_24.o"

# 0x00005D18..0x00005DB0 | size: 0x98
.text
.balign 4

# .text:0x0 | 0x5D18 | size: 0x98
.fn unk_las_00005de4, local
/* 00005D18 00005DE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005D1C 00005DE8  7C 08 02 A6 */	mflr r0
/* 00005D20 00005DEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005D24 00005DF0  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00005D28 00005DF4  7C 7E 1B 78 */	mr r30, r3
/* 00005D2C 00005DF8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005D30 00005DFC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005D34 00005E00  4B FF A4 09 */	bl evtGetValue
/* 00005D38 00005E04  3C 80 00 00 */	lis r4, gp@ha
/* 00005D3C 00005E08  7C 65 1B 78 */	mr r5, r3
/* 00005D40 00005E0C  38 84 00 00 */	addi r4, r4, gp@l
/* 00005D44 00005E10  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00005D48 00005E14  80 04 00 04 */	lwz r0, 0x4(r4)
/* 00005D4C 00005E18  2C 00 00 3C */	cmpwi r0, 0x3c
/* 00005D50 00005E1C  41 82 00 3C */	beq .L_00005D8C
/* 00005D54 00005E20  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 00005D58 00005E24  3C 00 43 30 */	lis r0, 0x4330
/* 00005D5C 00005E28  90 61 00 0C */	stw r3, 0xc(r1)
/* 00005D60 00005E2C  3C 80 00 00 */	lis r4, double_to_int_las_00014d00@ha
/* 00005D64 00005E30  3C 60 00 00 */	lis r3, float_1p2_las_00014cfc@ha
/* 00005D68 00005E34  C8 44 00 00 */	lfd f2, double_to_int_las_00014d00@l(r4)
/* 00005D6C 00005E38  90 01 00 08 */	stw r0, 0x8(r1)
/* 00005D70 00005E3C  C0 03 00 00 */	lfs f0, float_1p2_las_00014cfc@l(r3)
/* 00005D74 00005E40  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 00005D78 00005E44  EC 21 10 28 */	fsubs f1, f1, f2
/* 00005D7C 00005E48  EC 01 00 32 */	fmuls f0, f1, f0
/* 00005D80 00005E4C  FC 00 00 1E */	fctiwz f0, f0
/* 00005D84 00005E50  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 00005D88 00005E54  80 A1 00 14 */	lwz r5, 0x14(r1)
.L_00005D8C:
/* 00005D8C 00005E58  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005D90 00005E5C  7F C3 F3 78 */	mr r3, r30
/* 00005D94 00005E60  4B FF A3 A9 */	bl evtSetValue
/* 00005D98 00005E64  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00005D9C 00005E68  38 60 00 02 */	li r3, 0x2
/* 00005DA0 00005E6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005DA4 00005E70  7C 08 03 A6 */	mtlr r0
/* 00005DA8 00005E74  38 21 00 20 */	addi r1, r1, 0x20
/* 00005DAC 00005E78  4E 80 00 20 */	blr
.endfn unk_las_00005de4

# 0x00002F60..0x000032A0 | size: 0x340
.rodata
.balign 8

# .rodata:0x0 | 0x2F60 | size: 0x9
.obj str_S_doa_01_las_000149c8, local
	.string "S_doa_01"
.endobj str_S_doa_01_las_000149c8

# .rodata:0x9 | 0x2F69 | size: 0x3
.obj gap_03_00002F69_rodata, global
.hidden gap_03_00002F69_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002F69_rodata

# .rodata:0xC | 0x2F6C | size: 0x9
.obj str_S_doa_02_las_000149d4, local
	.string "S_doa_02"
.endobj str_S_doa_02_las_000149d4

# .rodata:0x15 | 0x2F75 | size: 0x3
.obj gap_03_00002F75_rodata, global
.hidden gap_03_00002F75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002F75_rodata

# .rodata:0x18 | 0x2F78 | size: 0x7
.obj str_w_bero_las_000149e0, local
	.string "w_bero"
.endobj str_w_bero_las_000149e0

# .rodata:0x1F | 0x2F7F | size: 0x1
.obj gap_03_00002F7F_rodata, global
.hidden gap_03_00002F7F_rodata
	.byte 0x00
.endobj gap_03_00002F7F_rodata

# .rodata:0x20 | 0x2F80 | size: 0x7
.obj str_las_22_las_000149e8, local
	.string "las_22"
.endobj str_las_22_las_000149e8

# .rodata:0x27 | 0x2F87 | size: 0x1
.obj gap_03_00002F87_rodata, global
.hidden gap_03_00002F87_rodata
	.byte 0x00
.endobj gap_03_00002F87_rodata

# .rodata:0x28 | 0x2F88 | size: 0x7
.obj str_e_bero_las_000149f0, local
	.string "e_bero"
.endobj str_e_bero_las_000149f0

# .rodata:0x2F | 0x2F8F | size: 0x1
.obj gap_03_00002F8F_rodata, global
.hidden gap_03_00002F8F_rodata
	.byte 0x00
.endobj gap_03_00002F8F_rodata

# .rodata:0x30 | 0x2F90 | size: 0x9
.obj str_s_bero_1_las_000149f8, local
	.string "s_bero_1"
.endobj str_s_bero_1_las_000149f8

# .rodata:0x39 | 0x2F99 | size: 0x3
.obj gap_03_00002F99_rodata, global
.hidden gap_03_00002F99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002F99_rodata

# .rodata:0x3C | 0x2F9C | size: 0x7
.obj str_las_23_las_00014a04, local
	.string "las_23"
.endobj str_las_23_las_00014a04

# .rodata:0x43 | 0x2FA3 | size: 0x1
.obj gap_03_00002FA3_rodata, global
.hidden gap_03_00002FA3_rodata
	.byte 0x00
.endobj gap_03_00002FA3_rodata

# .rodata:0x44 | 0x2FA4 | size: 0x9
.obj str_n_bero_2_las_00014a0c, local
	.string "n_bero_2"
.endobj str_n_bero_2_las_00014a0c

# .rodata:0x4D | 0x2FAD | size: 0x3
.obj gap_03_00002FAD_rodata, global
.hidden gap_03_00002FAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002FAD_rodata

# .rodata:0x50 | 0x2FB0 | size: 0x9
.obj str_s_bero_2_las_00014a18, local
	.string "s_bero_2"
.endobj str_s_bero_2_las_00014a18

# .rodata:0x59 | 0x2FB9 | size: 0x3
.obj gap_03_00002FB9_rodata, global
.hidden gap_03_00002FB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002FB9_rodata

# .rodata:0x5C | 0x2FBC | size: 0x7
.obj str_las_25_las_00014a24, local
	.string "las_25"
.endobj str_las_25_las_00014a24

# .rodata:0x63 | 0x2FC3 | size: 0x1
.obj gap_03_00002FC3_rodata, global
.hidden gap_03_00002FC3_rodata
	.byte 0x00
.endobj gap_03_00002FC3_rodata

# .rodata:0x64 | 0x2FC4 | size: 0x9
.obj str_n_bero_1_las_00014a2c, local
	.string "n_bero_1"
.endobj str_n_bero_1_las_00014a2c

# .rodata:0x6D | 0x2FCD | size: 0x3
.obj gap_03_00002FCD_rodata, global
.hidden gap_03_00002FCD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002FCD_rodata

# .rodata:0x70 | 0x2FD0 | size: 0xA
.obj str_S_hgm_01a_las_00014a38, local
	.string "S_hgm_01a"
.endobj str_S_hgm_01a_las_00014a38

# .rodata:0x7A | 0x2FDA | size: 0x2
.obj gap_03_00002FDA_rodata, global
.hidden gap_03_00002FDA_rodata
	.2byte 0x0000
.endobj gap_03_00002FDA_rodata

# .rodata:0x7C | 0x2FDC | size: 0xA
.obj str_S_hgm_02a_las_00014a44, local
	.string "S_hgm_02a"
.endobj str_S_hgm_02a_las_00014a44

# .rodata:0x86 | 0x2FE6 | size: 0x2
.obj gap_03_00002FE6_rodata, global
.hidden gap_03_00002FE6_rodata
	.2byte 0x0000
.endobj gap_03_00002FE6_rodata

# .rodata:0x88 | 0x2FE8 | size: 0xA
.obj str_S_hgm_03a_las_00014a50, local
	.string "S_hgm_03a"
.endobj str_S_hgm_03a_las_00014a50

# .rodata:0x92 | 0x2FF2 | size: 0x2
.obj gap_03_00002FF2_rodata, global
.hidden gap_03_00002FF2_rodata
	.2byte 0x0000
.endobj gap_03_00002FF2_rodata

# .rodata:0x94 | 0x2FF4 | size: 0xA
.obj str_S_hgm_04a_las_00014a5c, local
	.string "S_hgm_04a"
.endobj str_S_hgm_04a_las_00014a5c

# .rodata:0x9E | 0x2FFE | size: 0x2
.obj gap_03_00002FFE_rodata, global
.hidden gap_03_00002FFE_rodata
	.2byte 0x0000
.endobj gap_03_00002FFE_rodata

# .rodata:0xA0 | 0x3000 | size: 0xA
.obj str_S_hgm_06a_las_00014a68, local
	.string "S_hgm_06a"
.endobj str_S_hgm_06a_las_00014a68

# .rodata:0xAA | 0x300A | size: 0x2
.obj gap_03_0000300A_rodata, global
.hidden gap_03_0000300A_rodata
	.2byte 0x0000
.endobj gap_03_0000300A_rodata

# .rodata:0xAC | 0x300C | size: 0xA
.obj str_S_hgm_07a_las_00014a74, local
	.string "S_hgm_07a"
.endobj str_S_hgm_07a_las_00014a74

# .rodata:0xB6 | 0x3016 | size: 0x2
.obj gap_03_00003016_rodata, global
.hidden gap_03_00003016_rodata
	.2byte 0x0000
.endobj gap_03_00003016_rodata

# .rodata:0xB8 | 0x3018 | size: 0xA
.obj str_S_hgm_08a_las_00014a80, local
	.string "S_hgm_08a"
.endobj str_S_hgm_08a_las_00014a80

# .rodata:0xC2 | 0x3022 | size: 0x2
.obj gap_03_00003022_rodata, global
.hidden gap_03_00003022_rodata
	.2byte 0x0000
.endobj gap_03_00003022_rodata

# .rodata:0xC4 | 0x3024 | size: 0xA
.obj str_S_hgm_10a_las_00014a8c, local
	.string "S_hgm_10a"
.endobj str_S_hgm_10a_las_00014a8c

# .rodata:0xCE | 0x302E | size: 0x2
.obj gap_03_0000302E_rodata, global
.hidden gap_03_0000302E_rodata
	.2byte 0x0000
.endobj gap_03_0000302E_rodata

# .rodata:0xD0 | 0x3030 | size: 0xA
.obj str_S_hgm_11a_las_00014a98, local
	.string "S_hgm_11a"
.endobj str_S_hgm_11a_las_00014a98

# .rodata:0xDA | 0x303A | size: 0x2
.obj gap_03_0000303A_rodata, global
.hidden gap_03_0000303A_rodata
	.2byte 0x0000
.endobj gap_03_0000303A_rodata

# .rodata:0xDC | 0x303C | size: 0xA
.obj str_S_hgm_14a_las_00014aa4, local
	.string "S_hgm_14a"
.endobj str_S_hgm_14a_las_00014aa4

# .rodata:0xE6 | 0x3046 | size: 0x2
.obj gap_03_00003046_rodata, global
.hidden gap_03_00003046_rodata
	.2byte 0x0000
.endobj gap_03_00003046_rodata

# .rodata:0xE8 | 0x3048 | size: 0xA
.obj str_S_hgm_15a_las_00014ab0, local
	.string "S_hgm_15a"
.endobj str_S_hgm_15a_las_00014ab0

# .rodata:0xF2 | 0x3052 | size: 0x2
.obj gap_03_00003052_rodata, global
.hidden gap_03_00003052_rodata
	.2byte 0x0000
.endobj gap_03_00003052_rodata

# .rodata:0xF4 | 0x3054 | size: 0xA
.obj str_S_hgm_16a_las_00014abc, local
	.string "S_hgm_16a"
.endobj str_S_hgm_16a_las_00014abc

# .rodata:0xFE | 0x305E | size: 0x2
.obj gap_03_0000305E_rodata, global
.hidden gap_03_0000305E_rodata
	.2byte 0x0000
.endobj gap_03_0000305E_rodata

# .rodata:0x100 | 0x3060 | size: 0xA
.obj str_S_hgm_19a_las_00014ac8, local
	.string "S_hgm_19a"
.endobj str_S_hgm_19a_las_00014ac8

# .rodata:0x10A | 0x306A | size: 0x2
.obj gap_03_0000306A_rodata, global
.hidden gap_03_0000306A_rodata
	.2byte 0x0000
.endobj gap_03_0000306A_rodata

# .rodata:0x10C | 0x306C | size: 0xA
.obj str_S_hgm_20a_las_00014ad4, local
	.string "S_hgm_20a"
.endobj str_S_hgm_20a_las_00014ad4

# .rodata:0x116 | 0x3076 | size: 0x2
.obj gap_03_00003076_rodata, global
.hidden gap_03_00003076_rodata
	.2byte 0x0000
.endobj gap_03_00003076_rodata

# .rodata:0x118 | 0x3078 | size: 0xA
.obj str_S_hgm_24a_las_00014ae0, local
	.string "S_hgm_24a"
.endobj str_S_hgm_24a_las_00014ae0

# .rodata:0x122 | 0x3082 | size: 0x2
.obj gap_03_00003082_rodata, global
.hidden gap_03_00003082_rodata
	.2byte 0x0000
.endobj gap_03_00003082_rodata

# .rodata:0x124 | 0x3084 | size: 0xA
.obj str_S_hgm_05a_las_00014aec, local
	.string "S_hgm_05a"
.endobj str_S_hgm_05a_las_00014aec

# .rodata:0x12E | 0x308E | size: 0x2
.obj gap_03_0000308E_rodata, global
.hidden gap_03_0000308E_rodata
	.2byte 0x0000
.endobj gap_03_0000308E_rodata

# .rodata:0x130 | 0x3090 | size: 0xA
.obj str_S_hgm_09a_las_00014af8, local
	.string "S_hgm_09a"
.endobj str_S_hgm_09a_las_00014af8

# .rodata:0x13A | 0x309A | size: 0x2
.obj gap_03_0000309A_rodata, global
.hidden gap_03_0000309A_rodata
	.2byte 0x0000
.endobj gap_03_0000309A_rodata

# .rodata:0x13C | 0x309C | size: 0xA
.obj str_S_hgm_12a_las_00014b04, local
	.string "S_hgm_12a"
.endobj str_S_hgm_12a_las_00014b04

# .rodata:0x146 | 0x30A6 | size: 0x2
.obj gap_03_000030A6_rodata, global
.hidden gap_03_000030A6_rodata
	.2byte 0x0000
.endobj gap_03_000030A6_rodata

# .rodata:0x148 | 0x30A8 | size: 0xA
.obj str_S_hgm_13a_las_00014b10, local
	.string "S_hgm_13a"
.endobj str_S_hgm_13a_las_00014b10

# .rodata:0x152 | 0x30B2 | size: 0x2
.obj gap_03_000030B2_rodata, global
.hidden gap_03_000030B2_rodata
	.2byte 0x0000
.endobj gap_03_000030B2_rodata

# .rodata:0x154 | 0x30B4 | size: 0xA
.obj str_S_hgm_17a_las_00014b1c, local
	.string "S_hgm_17a"
.endobj str_S_hgm_17a_las_00014b1c

# .rodata:0x15E | 0x30BE | size: 0x2
.obj gap_03_000030BE_rodata, global
.hidden gap_03_000030BE_rodata
	.2byte 0x0000
.endobj gap_03_000030BE_rodata

# .rodata:0x160 | 0x30C0 | size: 0xA
.obj str_S_hgm_18a_las_00014b28, local
	.string "S_hgm_18a"
.endobj str_S_hgm_18a_las_00014b28

# .rodata:0x16A | 0x30CA | size: 0x2
.obj gap_03_000030CA_rodata, global
.hidden gap_03_000030CA_rodata
	.2byte 0x0000
.endobj gap_03_000030CA_rodata

# .rodata:0x16C | 0x30CC | size: 0xA
.obj str_S_hgm_01b_las_00014b34, local
	.string "S_hgm_01b"
.endobj str_S_hgm_01b_las_00014b34

# .rodata:0x176 | 0x30D6 | size: 0x2
.obj gap_03_000030D6_rodata, global
.hidden gap_03_000030D6_rodata
	.2byte 0x0000
.endobj gap_03_000030D6_rodata

# .rodata:0x178 | 0x30D8 | size: 0xA
.obj str_S_hgm_02b_las_00014b40, local
	.string "S_hgm_02b"
.endobj str_S_hgm_02b_las_00014b40

# .rodata:0x182 | 0x30E2 | size: 0x2
.obj gap_03_000030E2_rodata, global
.hidden gap_03_000030E2_rodata
	.2byte 0x0000
.endobj gap_03_000030E2_rodata

# .rodata:0x184 | 0x30E4 | size: 0xA
.obj str_S_hgm_03b_las_00014b4c, local
	.string "S_hgm_03b"
.endobj str_S_hgm_03b_las_00014b4c

# .rodata:0x18E | 0x30EE | size: 0x2
.obj gap_03_000030EE_rodata, global
.hidden gap_03_000030EE_rodata
	.2byte 0x0000
.endobj gap_03_000030EE_rodata

# .rodata:0x190 | 0x30F0 | size: 0xA
.obj str_S_hgm_04b_las_00014b58, local
	.string "S_hgm_04b"
.endobj str_S_hgm_04b_las_00014b58

# .rodata:0x19A | 0x30FA | size: 0x2
.obj gap_03_000030FA_rodata, global
.hidden gap_03_000030FA_rodata
	.2byte 0x0000
.endobj gap_03_000030FA_rodata

# .rodata:0x19C | 0x30FC | size: 0xA
.obj str_S_hgm_06b_las_00014b64, local
	.string "S_hgm_06b"
.endobj str_S_hgm_06b_las_00014b64

# .rodata:0x1A6 | 0x3106 | size: 0x2
.obj gap_03_00003106_rodata, global
.hidden gap_03_00003106_rodata
	.2byte 0x0000
.endobj gap_03_00003106_rodata

# .rodata:0x1A8 | 0x3108 | size: 0xA
.obj str_S_hgm_07b_las_00014b70, local
	.string "S_hgm_07b"
.endobj str_S_hgm_07b_las_00014b70

# .rodata:0x1B2 | 0x3112 | size: 0x2
.obj gap_03_00003112_rodata, global
.hidden gap_03_00003112_rodata
	.2byte 0x0000
.endobj gap_03_00003112_rodata

# .rodata:0x1B4 | 0x3114 | size: 0xA
.obj str_S_hgm_08b_las_00014b7c, local
	.string "S_hgm_08b"
.endobj str_S_hgm_08b_las_00014b7c

# .rodata:0x1BE | 0x311E | size: 0x2
.obj gap_03_0000311E_rodata, global
.hidden gap_03_0000311E_rodata
	.2byte 0x0000
.endobj gap_03_0000311E_rodata

# .rodata:0x1C0 | 0x3120 | size: 0xA
.obj str_S_hgm_10b_las_00014b88, local
	.string "S_hgm_10b"
.endobj str_S_hgm_10b_las_00014b88

# .rodata:0x1CA | 0x312A | size: 0x2
.obj gap_03_0000312A_rodata, global
.hidden gap_03_0000312A_rodata
	.2byte 0x0000
.endobj gap_03_0000312A_rodata

# .rodata:0x1CC | 0x312C | size: 0xA
.obj str_S_hgm_11b_las_00014b94, local
	.string "S_hgm_11b"
.endobj str_S_hgm_11b_las_00014b94

# .rodata:0x1D6 | 0x3136 | size: 0x2
.obj gap_03_00003136_rodata, global
.hidden gap_03_00003136_rodata
	.2byte 0x0000
.endobj gap_03_00003136_rodata

# .rodata:0x1D8 | 0x3138 | size: 0xA
.obj str_S_hgm_14b_las_00014ba0, local
	.string "S_hgm_14b"
.endobj str_S_hgm_14b_las_00014ba0

# .rodata:0x1E2 | 0x3142 | size: 0x2
.obj gap_03_00003142_rodata, global
.hidden gap_03_00003142_rodata
	.2byte 0x0000
.endobj gap_03_00003142_rodata

# .rodata:0x1E4 | 0x3144 | size: 0xA
.obj str_S_hgm_15b_las_00014bac, local
	.string "S_hgm_15b"
.endobj str_S_hgm_15b_las_00014bac

# .rodata:0x1EE | 0x314E | size: 0x2
.obj gap_03_0000314E_rodata, global
.hidden gap_03_0000314E_rodata
	.2byte 0x0000
.endobj gap_03_0000314E_rodata

# .rodata:0x1F0 | 0x3150 | size: 0xA
.obj str_S_hgm_16b_las_00014bb8, local
	.string "S_hgm_16b"
.endobj str_S_hgm_16b_las_00014bb8

# .rodata:0x1FA | 0x315A | size: 0x2
.obj gap_03_0000315A_rodata, global
.hidden gap_03_0000315A_rodata
	.2byte 0x0000
.endobj gap_03_0000315A_rodata

# .rodata:0x1FC | 0x315C | size: 0xA
.obj str_S_hgm_05b_las_00014bc4, local
	.string "S_hgm_05b"
.endobj str_S_hgm_05b_las_00014bc4

# .rodata:0x206 | 0x3166 | size: 0x2
.obj gap_03_00003166_rodata, global
.hidden gap_03_00003166_rodata
	.2byte 0x0000
.endobj gap_03_00003166_rodata

# .rodata:0x208 | 0x3168 | size: 0xA
.obj str_S_hgm_09b_las_00014bd0, local
	.string "S_hgm_09b"
.endobj str_S_hgm_09b_las_00014bd0

# .rodata:0x212 | 0x3172 | size: 0x2
.obj gap_03_00003172_rodata, global
.hidden gap_03_00003172_rodata
	.2byte 0x0000
.endobj gap_03_00003172_rodata

# .rodata:0x214 | 0x3174 | size: 0xA
.obj str_S_hgm_12b_las_00014bdc, local
	.string "S_hgm_12b"
.endobj str_S_hgm_12b_las_00014bdc

# .rodata:0x21E | 0x317E | size: 0x2
.obj gap_03_0000317E_rodata, global
.hidden gap_03_0000317E_rodata
	.2byte 0x0000
.endobj gap_03_0000317E_rodata

# .rodata:0x220 | 0x3180 | size: 0xA
.obj str_S_hgm_13b_las_00014be8, local
	.string "S_hgm_13b"
.endobj str_S_hgm_13b_las_00014be8

# .rodata:0x22A | 0x318A | size: 0x2
.obj gap_03_0000318A_rodata, global
.hidden gap_03_0000318A_rodata
	.2byte 0x0000
.endobj gap_03_0000318A_rodata

# .rodata:0x22C | 0x318C | size: 0xA
.obj str_S_hgm_17b_las_00014bf4, local
	.string "S_hgm_17b"
.endobj str_S_hgm_17b_las_00014bf4

# .rodata:0x236 | 0x3196 | size: 0x2
.obj gap_03_00003196_rodata, global
.hidden gap_03_00003196_rodata
	.2byte 0x0000
.endobj gap_03_00003196_rodata

# .rodata:0x238 | 0x3198 | size: 0xA
.obj str_S_hgm_21a_las_00014c00, local
	.string "S_hgm_21a"
.endobj str_S_hgm_21a_las_00014c00

# .rodata:0x242 | 0x31A2 | size: 0x2
.obj gap_03_000031A2_rodata, global
.hidden gap_03_000031A2_rodata
	.2byte 0x0000
.endobj gap_03_000031A2_rodata

# .rodata:0x244 | 0x31A4 | size: 0xA
.obj str_S_hgm_21b_las_00014c0c, local
	.string "S_hgm_21b"
.endobj str_S_hgm_21b_las_00014c0c

# .rodata:0x24E | 0x31AE | size: 0x2
.obj gap_03_000031AE_rodata, global
.hidden gap_03_000031AE_rodata
	.2byte 0x0000
.endobj gap_03_000031AE_rodata

# .rodata:0x250 | 0x31B0 | size: 0xA
.obj str_S_hgm_22a_las_00014c18, local
	.string "S_hgm_22a"
.endobj str_S_hgm_22a_las_00014c18

# .rodata:0x25A | 0x31BA | size: 0x2
.obj gap_03_000031BA_rodata, global
.hidden gap_03_000031BA_rodata
	.2byte 0x0000
.endobj gap_03_000031BA_rodata

# .rodata:0x25C | 0x31BC | size: 0xA
.obj str_S_hgm_22b_las_00014c24, local
	.string "S_hgm_22b"
.endobj str_S_hgm_22b_las_00014c24

# .rodata:0x266 | 0x31C6 | size: 0x2
.obj gap_03_000031C6_rodata, global
.hidden gap_03_000031C6_rodata
	.2byte 0x0000
.endobj gap_03_000031C6_rodata

# .rodata:0x268 | 0x31C8 | size: 0xA
.obj str_S_hgm_23a_las_00014c30, local
	.string "S_hgm_23a"
.endobj str_S_hgm_23a_las_00014c30

# .rodata:0x272 | 0x31D2 | size: 0x2
.obj gap_03_000031D2_rodata, global
.hidden gap_03_000031D2_rodata
	.2byte 0x0000
.endobj gap_03_000031D2_rodata

# .rodata:0x274 | 0x31D4 | size: 0xA
.obj str_S_hgm_23b_las_00014c3c, local
	.string "S_hgm_23b"
.endobj str_S_hgm_23b_las_00014c3c

# .rodata:0x27E | 0x31DE | size: 0x2
.obj gap_03_000031DE_rodata, global
.hidden gap_03_000031DE_rodata
	.2byte 0x0000
.endobj gap_03_000031DE_rodata

# .rodata:0x280 | 0x31E0 | size: 0x4
.obj str_blk_las_00014c48, local
	.string "blk"
.endobj str_blk_las_00014c48

# .rodata:0x284 | 0x31E4 | size: 0xA
.obj str_MOBJ_jump_las_00014c4c, local
	.string "MOBJ_jump"
.endobj str_MOBJ_jump_las_00014c4c

# .rodata:0x28E | 0x31EE | size: 0x2
.obj gap_03_000031EE_rodata, global
.hidden gap_03_000031EE_rodata
	.2byte 0x0000
.endobj gap_03_000031EE_rodata

# .rodata:0x290 | 0x31F0 | size: 0xB
.obj str_S_move_dai_las_00014c58, local
	.string "S_move_dai"
.endobj str_S_move_dai_las_00014c58

# .rodata:0x29B | 0x31FB | size: 0x1
.obj gap_03_000031FB_rodata, global
.hidden gap_03_000031FB_rodata
	.byte 0x00
.endobj gap_03_000031FB_rodata

# .rodata:0x29C | 0x31FC | size: 0xB
.obj str_A_move_dai_las_00014c64, local
	.string "A_move_dai"
.endobj str_A_move_dai_las_00014c64

# .rodata:0x2A7 | 0x3207 | size: 0x1
.obj gap_03_00003207_rodata, global
.hidden gap_03_00003207_rodata
	.byte 0x00
.endobj gap_03_00003207_rodata

# .rodata:0x2A8 | 0x3208 | size: 0x4
.obj str_box_las_00014c70, local
	.string "box"
.endobj str_box_las_00014c70

# .rodata:0x2AC | 0x320C | size: 0x4
.obj str_key_las_00014c74, local
	.string "key"
.endobj str_key_las_00014c74

# .rodata:0x2B0 | 0x3210 | size: 0xE
.obj str_BGM_STG8_LST3_las_00014c78, local
	.string "BGM_STG8_LST3"
.endobj str_BGM_STG8_LST3_las_00014c78

# .rodata:0x2BE | 0x321E | size: 0x2
.obj gap_03_0000321E_rodata, global
.hidden gap_03_0000321E_rodata
	.2byte 0x0000
.endobj gap_03_0000321E_rodata

# .rodata:0x2C0 | 0x3220 | size: 0xE
.obj str_ENV_STG8_LAS7_las_00014c88, local
	.string "ENV_STG8_LAS7"
.endobj str_ENV_STG8_LAS7_las_00014c88

# .rodata:0x2CE | 0x322E | size: 0x2
.obj gap_03_0000322E_rodata, global
.hidden gap_03_0000322E_rodata
	.2byte 0x0000
.endobj gap_03_0000322E_rodata

# .rodata:0x2D0 | 0x3230 | size: 0x7
.obj str_kusari_las_00014c98, local
	.string "kusari"
.endobj str_kusari_las_00014c98

# .rodata:0x2D7 | 0x3237 | size: 0x1
.obj gap_03_00003237_rodata, global
.hidden gap_03_00003237_rodata
	.byte 0x00
.endobj gap_03_00003237_rodata

# .rodata:0x2D8 | 0x3238 | size: 0x7
.obj str_S_hako_las_00014ca0, local
	.string "S_hako"
.endobj str_S_hako_las_00014ca0

# .rodata:0x2DF | 0x323F | size: 0x1
.obj gap_03_0000323F_rodata, global
.hidden gap_03_0000323F_rodata
	.byte 0x00
.endobj gap_03_0000323F_rodata

# .rodata:0x2E0 | 0x3240 | size: 0x7
.obj str_A_hako_las_00014ca8, local
	.string "A_hako"
.endobj str_A_hako_las_00014ca8

# .rodata:0x2E7 | 0x3247 | size: 0x1
.obj gap_03_00003247_rodata, global
.hidden gap_03_00003247_rodata
	.byte 0x00
.endobj gap_03_00003247_rodata

# .rodata:0x2E8 | 0x3248 | size: 0x14
.obj str_MOBJ_Lv2BigBigBlock_las_00014cb0, local
	.string "MOBJ_Lv2BigBigBlock"
.endobj str_MOBJ_Lv2BigBigBlock_las_00014cb0

# .rodata:0x2FC | 0x325C | size: 0x7
.obj str_brkflr_las_00014cc4, local
	.string "brkflr"
.endobj str_brkflr_las_00014cc4

# .rodata:0x303 | 0x3263 | size: 0x1
.obj gap_03_00003263_rodata, global
.hidden gap_03_00003263_rodata
	.byte 0x00
.endobj gap_03_00003263_rodata

# .rodata:0x304 | 0x3264 | size: 0x5
.obj str_jump_las_00014ccc, local
	.string "jump"
.endobj str_jump_las_00014ccc

# .rodata:0x309 | 0x3269 | size: 0x3
.obj gap_03_00003269_rodata, global
.hidden gap_03_00003269_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003269_rodata

# .rodata:0x30C | 0x326C | size: 0xB
.obj str_dai_switch_las_00014cd4, local
	.string "dai_switch"
.endobj str_dai_switch_las_00014cd4

# .rodata:0x317 | 0x3277 | size: 0x1
.obj gap_03_00003277_rodata, global
.hidden gap_03_00003277_rodata
	.byte 0x00
.endobj gap_03_00003277_rodata

# .rodata:0x318 | 0x3278 | size: 0x10
.obj str_mobj_hatena_gat_las_00014ce0, local
	.string "mobj_hatena_gat"
.endobj str_mobj_hatena_gat_las_00014ce0

# .rodata:0x328 | 0x3288 | size: 0xC
.obj str_mobj_kakusi_las_00014cf0, local
	.string "mobj_kakusi"
.endobj str_mobj_kakusi_las_00014cf0

# .rodata:0x334 | 0x3294 | size: 0x4
.obj float_1p2_las_00014cfc, local
	.float 1.2
.endobj float_1p2_las_00014cfc

# .rodata:0x338 | 0x3298 | size: 0x8
.obj double_to_int_las_00014d00, local
	.double 4503601774854144
.endobj double_to_int_las_00014d00

# 0x00010D78..0x00011818 | size: 0xAA0
.data
.balign 8

# .data:0x0 | 0x10D78 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x10D80 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x10D84 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x10D88 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x10D8C | size: 0x4
.obj gap_04_00010D8C_data, global
.hidden gap_04_00010D8C_data
	.4byte 0x00000000
.endobj gap_04_00010D8C_data

# .data:0x18 | 0x10D90 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x10D98 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x10D9C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x10DA0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x10DA8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x10DAC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x10DB0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x10DB4 | size: 0x4
.obj gap_04_00010DB4_data, global
.hidden gap_04_00010DB4_data
	.4byte 0x00000000
.endobj gap_04_00010DB4_data

# .data:0x40 | 0x10DB8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x10DC0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x10DC4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x10DC8 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_01_las_000149c8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_02_las_000149d4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x10E20 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_01_las_000149c8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_02_las_000149d4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x10E78 | size: 0xF0
.obj bero_entry_data, local
	.4byte str_w_bero_las_000149e0
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_22_las_000149e8
	.4byte str_e_bero_las_000149f0
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_s_bero_1_las_000149f8
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_23_las_00014a04
	.4byte str_n_bero_2_las_00014a0c
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_s_bero_2_las_00014a18
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_25_las_00014a24
	.4byte str_n_bero_1_las_00014a2c
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

# .data:0x1F0 | 0x10F68 | size: 0x3C
.obj haguruma_hontai, local
	.4byte str_S_hgm_01a_las_00014a38
	.4byte str_S_hgm_02a_las_00014a44
	.4byte str_S_hgm_03a_las_00014a50
	.4byte str_S_hgm_04a_las_00014a5c
	.4byte str_S_hgm_06a_las_00014a68
	.4byte str_S_hgm_07a_las_00014a74
	.4byte str_S_hgm_08a_las_00014a80
	.4byte str_S_hgm_10a_las_00014a8c
	.4byte str_S_hgm_11a_las_00014a98
	.4byte str_S_hgm_14a_las_00014aa4
	.4byte str_S_hgm_15a_las_00014ab0
	.4byte str_S_hgm_16a_las_00014abc
	.4byte str_S_hgm_19a_las_00014ac8
	.4byte str_S_hgm_20a_las_00014ad4
	.4byte str_S_hgm_24a_las_00014ae0
.endobj haguruma_hontai

# .data:0x22C | 0x10FA4 | size: 0x18
.obj haguruma_hontai2, local
	.4byte str_S_hgm_05a_las_00014aec
	.4byte str_S_hgm_09a_las_00014af8
	.4byte str_S_hgm_12a_las_00014b04
	.4byte str_S_hgm_13a_las_00014b10
	.4byte str_S_hgm_17a_las_00014b1c
	.4byte str_S_hgm_18a_las_00014b28
.endobj haguruma_hontai2

# .data:0x244 | 0x10FBC | size: 0x30
.obj haguruma_kage, local
	.4byte str_S_hgm_01b_las_00014b34
	.4byte str_S_hgm_02b_las_00014b40
	.4byte str_S_hgm_03b_las_00014b4c
	.4byte str_S_hgm_04b_las_00014b58
	.4byte str_S_hgm_06b_las_00014b64
	.4byte str_S_hgm_07b_las_00014b70
	.4byte str_S_hgm_08b_las_00014b7c
	.4byte str_S_hgm_10b_las_00014b88
	.4byte str_S_hgm_11b_las_00014b94
	.4byte str_S_hgm_14b_las_00014ba0
	.4byte str_S_hgm_15b_las_00014bac
	.4byte str_S_hgm_16b_las_00014bb8
.endobj haguruma_kage

# .data:0x274 | 0x10FEC | size: 0x14
.obj haguruma_kage2, local
	.4byte str_S_hgm_05b_las_00014bc4
	.4byte str_S_hgm_09b_las_00014bd0
	.4byte str_S_hgm_12b_las_00014bdc
	.4byte str_S_hgm_13b_las_00014be8
	.4byte str_S_hgm_17b_las_00014bf4
.endobj haguruma_kage2

# .data:0x288 | 0x11000 | size: 0x308
.obj haguruma_evt, local
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24ACA80
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C84
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001003E
	.4byte haguruma_hontai
	.4byte 0x00010005
	.4byte 0x0000000F
	.4byte 0x0001003F
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0001003E
	.4byte haguruma_kage
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x0001003F
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0001003E
	.4byte haguruma_hontai2
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x0001003F
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x0001003E
	.4byte haguruma_kage2
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0001003F
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xF24B1E80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_hgm_21a_las_00014c00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_hgm_21b_las_00014c0c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xF24AD280
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_hgm_22a_las_00014c18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_hgm_22b_las_00014c24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xF24C3280
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_hgm_23a_las_00014c30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_hgm_23b_las_00014c3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xF24A7680
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0xFFFFFE98
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xF24A7E19
	.4byte 0x0002001D
	.4byte 0xFE363C82
	.4byte 0x00000168
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C83
	.4byte 0xF24A7E19
	.4byte 0x0002001D
	.4byte 0xFE363C83
	.4byte 0x00000168
	.4byte 0x0002003B
	.4byte 0xFE363C83
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C84
	.4byte 0xF24A7E80
	.4byte 0x0002001D
	.4byte 0xFE363C84
	.4byte 0x00000168
	.4byte 0x0002003B
	.4byte 0xFE363C84
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj haguruma_evt

# .data:0x590 | 0x11308 | size: 0x28
.obj cloud_blk_evt, local
	.4byte 0x00020032
	.4byte 0xF8406C84
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_blk_las_00014c48
	.4byte 0x00000100
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cloud_blk_evt

# .data:0x5B8 | 0x11330 | size: 0x14
.obj break_floor_evt, local
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000018C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj break_floor_evt

# .data:0x5CC | 0x11344 | size: 0x110
.obj jump_evt, local
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0xFFFFFF37
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0xFFFFFF39
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_get_name_hitobj_ride
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_MOBJ_jump_las_00014c4c
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFFFFFE39
	.4byte 0xFFFFFF38
	.4byte 0x00000032
	.4byte 0x00000258
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_mario_jump_jumpstand
	.4byte 0xFFFFFE0C
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xFFFFFDDF
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0xFFFFFE3E
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jump_evt

# .data:0x6DC | 0x11454 | size: 0x44
.obj dai_evt, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_move_dai_las_00014c58
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A_move_dai_las_00014c64
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00001C20
	.4byte 0x0003005B
	.4byte unk_las_00005de4
	.4byte 0xFE363C82
	.4byte 0xFE363C82
	.4byte 0x0001005E
	.4byte move_dai_16_data_324
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dai_evt

# .data:0x720 | 0x11498 | size: 0x84
.obj box_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_las_00014c70
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_key_las_00014c74
	.4byte 0x00000030
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_box_las_00014c70
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_key_las_00014c74
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000018D
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj box_evt

# .data:0x7A4 | 0x1151C | size: 0x2F8
.obj las_24_init_evt_16_data_1151C, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG8_LST3_las_00014c78
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS7_las_00014c88
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
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_S_hgm_05a_las_00014aec
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_S_hgm_19a_las_00014ac8
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_S_hgm_24a_las_00014ae0
	.4byte 0x00000002
	.4byte 0x0001005C
	.4byte haguruma_evt
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_kusari_las_00014c98
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000018C
	.4byte 0x00020018
	.4byte 0xF8406C84
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_cloud_init
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_S_hako_las_00014ca0
	.4byte str_A_hako_las_00014ca8
	.4byte cloud_blk_evt
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hako_las_00014ca0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_hako_las_00014ca8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hako_las_00014ca0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_hako_las_00014ca8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0008005B
	.4byte evt_mobj_lv_blk
	.4byte str_blk_las_00014c48
	.4byte 0xFFFFFE11
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF8406C85
	.4byte str_MOBJ_Lv2BigBigBlock_las_00014cb0
	.4byte 0x00020018
	.4byte 0xF8406C85
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_blk_las_00014c48
	.4byte 0x00000040
	.4byte 0x00020018
	.4byte 0xF8406C84
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000001
	.4byte str_blk_las_00014c48
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mobj_set_scale
	.4byte str_blk_las_00014c48
	.4byte 0xF24A7E7E
	.4byte 0xF24A7E7E
	.4byte 0xF24A7E7E
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0008005B
	.4byte evt_mobj_breaking_floor
	.4byte str_brkflr_las_00014cc4
	.4byte 0xFFFFFE0C
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte break_floor_evt
	.4byte 0xF8406C86
	.4byte 0x0008005B
	.4byte evt_mobj_jumpstand_red
	.4byte 0x00000000
	.4byte str_jump_las_00014ccc
	.4byte 0xFFFFFE0C
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte jump_evt
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_move_dai_las_00014c64
	.4byte str_S_move_dai_las_00014c58
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_move_dai_las_00014c58
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_move_dai_las_00014c64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_floatswitch_red
	.4byte 0x00000000
	.4byte str_dai_switch_las_00014cd4
	.4byte 0xFFFFFF6A
	.4byte 0xFFFFFE48
	.4byte 0x0000004B
	.4byte dai_evt
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_mobj_hatena_gat_las_00014ce0
	.4byte 0xFFFFFD8F
	.4byte 0xFFFFFF38
	.4byte 0xFFFFFF9C
	.4byte 0x00000079
	.4byte 0x00000000
	.4byte 0xF8406CA6
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_brick
	.4byte str_mobj_kakusi_las_00014cf0
	.4byte 0xFFFFFD8F
	.4byte 0xFFFFFF8D
	.4byte 0xFFFFFF9C
	.4byte 0x000000A1
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xF8406CA7
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_box_las_00014c70
	.4byte 0xFFFFFF01
	.4byte 0xFFFFFE84
	.4byte 0x0000004B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte box_evt
	.4byte 0xF8406C92
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_24_init_evt_16_data_1151C

# .data:0xA9C | 0x11814 | size: 0x4
.obj gap_04_00011814_data, global
.hidden gap_04_00011814_data
	.4byte 0x00000000
.endobj gap_04_00011814_data
