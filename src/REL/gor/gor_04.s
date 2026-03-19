.include "macros.inc"
.file "gor_04.o"

# 0x00009DE4..0x00009F04 | size: 0x120
.text
.balign 4

# .text:0x0 | 0x9DE4 | size: 0x48
.fn kpa_hikousen_yure, local
/* 00009DE4 00009EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00009DE8 00009EB4  7C 08 02 A6 */	mflr r0
/* 00009DEC 00009EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00009DF0 00009EBC  DB E1 00 08 */	stfd f31, 0x8(r1)
/* 00009DF4 00009EC0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00009DF8 00009EC4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00009DFC 00009EC8  4B FF 66 A9 */	bl evtGetFloat
/* 00009E00 00009ECC  FF E0 08 90 */	fmr f31, f1
/* 00009E04 00009ED0  3C 60 00 00 */	lis r3, str_飛クッパ_gor_0001d828@ha
/* 00009E08 00009ED4  38 63 00 00 */	addi r3, r3, str_飛クッパ_gor_0001d828@l
/* 00009E0C 00009ED8  4B FF 66 99 */	bl npcNameToPtr
/* 00009E10 00009EDC  D3 E3 01 B8 */	stfs f31, 0x1b8(r3)
/* 00009E14 00009EE0  38 60 00 02 */	li r3, 0x2
/* 00009E18 00009EE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00009E1C 00009EE8  CB E1 00 08 */	lfd f31, 0x8(r1)
/* 00009E20 00009EEC  7C 08 03 A6 */	mtlr r0
/* 00009E24 00009EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 00009E28 00009EF4  4E 80 00 20 */	blr
.endfn kpa_hikousen_yure

# .text:0x48 | 0x9E2C | size: 0x28
.fn resha_tev, local
/* 00009E2C 00009EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00009E30 00009EFC  7C 08 02 A6 */	mflr r0
/* 00009E34 00009F00  7C 64 1B 78 */	mr r4, r3
/* 00009E38 00009F04  38 60 00 07 */	li r3, 0x7
/* 00009E3C 00009F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 00009E40 00009F0C  4B FF 66 65 */	bl envAddTev
/* 00009E44 00009F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00009E48 00009F14  7C 08 03 A6 */	mtlr r0
/* 00009E4C 00009F18  38 21 00 10 */	addi r1, r1, 0x10
/* 00009E50 00009F1C  4E 80 00 20 */	blr
.endfn resha_tev

# .text:0x70 | 0x9E54 | size: 0xB0
.fn ramp_r, local
/* 00009E54 00009F20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00009E58 00009F24  7C 08 02 A6 */	mflr r0
/* 00009E5C 00009F28  90 01 00 34 */	stw r0, 0x34(r1)
/* 00009E60 00009F2C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 00009E64 00009F30  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 00009E68 00009F34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 00009E6C 00009F38  3C 80 FD 05 */	lis r4, 0xfd05
/* 00009E70 00009F3C  7C 7F 1B 78 */	mr r31, r3
/* 00009E74 00009F40  38 84 0F 80 */	addi r4, r4, 0xf80
/* 00009E78 00009F44  4B FF 66 2D */	bl evtGetFloat
/* 00009E7C 00009F48  3C 60 00 00 */	lis r3, gp@ha
/* 00009E80 00009F4C  3C 00 43 30 */	lis r0, 0x4330
/* 00009E84 00009F50  38 83 00 00 */	addi r4, r3, gp@l
/* 00009E88 00009F54  90 01 00 08 */	stw r0, 0x8(r1)
/* 00009E8C 00009F58  80 A4 00 00 */	lwz r5, 0x0(r4)
/* 00009E90 00009F5C  3C 60 00 00 */	lis r3, double_to_int_mask_gor_0001db78@ha
/* 00009E94 00009F60  38 83 00 00 */	addi r4, r3, double_to_int_mask_gor_0001db78@l
/* 00009E98 00009F64  FF E0 0A 10 */	fabs f31, f1
/* 00009E9C 00009F68  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 00009EA0 00009F6C  3C 60 00 00 */	lis r3, float_15_gor_0001db70@ha
/* 00009EA4 00009F70  C8 44 00 00 */	lfd f2, 0x0(r4)
/* 00009EA8 00009F74  90 01 00 0C */	stw r0, 0xc(r1)
/* 00009EAC 00009F78  C0 03 00 00 */	lfs f0, float_15_gor_0001db70@l(r3)
/* 00009EB0 00009F7C  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 00009EB4 00009F80  EC 21 10 28 */	fsubs f1, f1, f2
/* 00009EB8 00009F84  EC 21 00 24 */	fdivs f1, f1, f0
/* 00009EBC 00009F88  4B FF 65 E9 */	bl sin
/* 00009EC0 00009F8C  3C 60 00 00 */	lis r3, float_1p8_gor_0001db74@ha
/* 00009EC4 00009F90  3C 80 FE 36 */	lis r4, 0xfe36
/* 00009EC8 00009F94  C0 03 00 00 */	lfs f0, float_1p8_gor_0001db74@l(r3)
/* 00009ECC 00009F98  FC 20 08 18 */	frsp f1, f1
/* 00009ED0 00009F9C  7F E3 FB 78 */	mr r3, r31
/* 00009ED4 00009FA0  38 84 3C 8A */	addi r4, r4, 0x3c8a
/* 00009ED8 00009FA4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 00009EDC 00009FA8  EC 20 00 72 */	fmuls f1, f0, f1
/* 00009EE0 00009FAC  4B FF 65 C5 */	bl evtSetFloat
/* 00009EE4 00009FB0  38 60 00 02 */	li r3, 0x2
/* 00009EE8 00009FB4  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 00009EEC 00009FB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00009EF0 00009FBC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 00009EF4 00009FC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 00009EF8 00009FC4  7C 08 03 A6 */	mtlr r0
/* 00009EFC 00009FC8  38 21 00 30 */	addi r1, r1, 0x30
/* 00009F00 00009FCC  4E 80 00 20 */	blr
.endfn ramp_r

# 0x00009570..0x0000A080 | size: 0xB10
.rodata
.balign 8

# .rodata:0x0 | 0x9570 | size: 0x8
.obj str_sha_1_1_gor_0001d070, local
	.string "sha_1_1"
.endobj str_sha_1_1_gor_0001d070

# .rodata:0x8 | 0x9578 | size: 0x8
.obj str_sha_1_2_gor_0001d078, local
	.string "sha_1_2"
.endobj str_sha_1_2_gor_0001d078

# .rodata:0x10 | 0x9580 | size: 0x8
.obj str_sha_1_3_gor_0001d080, local
	.string "sha_1_3"
.endobj str_sha_1_3_gor_0001d080

# .rodata:0x18 | 0x9588 | size: 0x8
.obj str_sha_1_4_gor_0001d088, local
	.string "sha_1_4"
.endobj str_sha_1_4_gor_0001d088

# .rodata:0x20 | 0x9590 | size: 0x8
.obj str_sha_1_5_gor_0001d090, local
	.string "sha_1_5"
.endobj str_sha_1_5_gor_0001d090

# .rodata:0x28 | 0x9598 | size: 0x8
.obj str_sha_2_1_gor_0001d098, local
	.string "sha_2_1"
.endobj str_sha_2_1_gor_0001d098

# .rodata:0x30 | 0x95A0 | size: 0x8
.obj str_sha_2_2_gor_0001d0a0, local
	.string "sha_2_2"
.endobj str_sha_2_2_gor_0001d0a0

# .rodata:0x38 | 0x95A8 | size: 0x8
.obj str_sha_2_3_gor_0001d0a8, local
	.string "sha_2_3"
.endobj str_sha_2_3_gor_0001d0a8

# .rodata:0x40 | 0x95B0 | size: 0x8
.obj str_sha_3_1_gor_0001d0b0, local
	.string "sha_3_1"
.endobj str_sha_3_1_gor_0001d0b0

# .rodata:0x48 | 0x95B8 | size: 0x8
.obj str_sha_3_2_gor_0001d0b8, local
	.string "sha_3_2"
.endobj str_sha_3_2_gor_0001d0b8

# .rodata:0x50 | 0x95C0 | size: 0x8
.obj str_sha_3_3_gor_0001d0c0, local
	.string "sha_3_3"
.endobj str_sha_3_3_gor_0001d0c0

# .rodata:0x58 | 0x95C8 | size: 0x8
.obj str_sha_4_1_gor_0001d0c8, local
	.string "sha_4_1"
.endobj str_sha_4_1_gor_0001d0c8

# .rodata:0x60 | 0x95D0 | size: 0x8
.obj str_sha_4_2_gor_0001d0d0, local
	.string "sha_4_2"
.endobj str_sha_4_2_gor_0001d0d0

# .rodata:0x68 | 0x95D8 | size: 0x8
.obj str_sha_4_3_gor_0001d0d8, local
	.string "sha_4_3"
.endobj str_sha_4_3_gor_0001d0d8

# .rodata:0x70 | 0x95E0 | size: 0x8
.obj str_sha_5_1_gor_0001d0e0, local
	.string "sha_5_1"
.endobj str_sha_5_1_gor_0001d0e0

# .rodata:0x78 | 0x95E8 | size: 0x8
.obj str_sha_5_2_gor_0001d0e8, local
	.string "sha_5_2"
.endobj str_sha_5_2_gor_0001d0e8

# .rodata:0x80 | 0x95F0 | size: 0x8
.obj str_sha_5_3_gor_0001d0f0, local
	.string "sha_5_3"
.endobj str_sha_5_3_gor_0001d0f0

# .rodata:0x88 | 0x95F8 | size: 0x8
.obj str_sha_6_1_gor_0001d0f8, local
	.string "sha_6_1"
.endobj str_sha_6_1_gor_0001d0f8

# .rodata:0x90 | 0x9600 | size: 0x8
.obj str_sha_6_2_gor_0001d100, local
	.string "sha_6_2"
.endobj str_sha_6_2_gor_0001d100

# .rodata:0x98 | 0x9608 | size: 0x8
.obj str_sha_6_3_gor_0001d108, local
	.string "sha_6_3"
.endobj str_sha_6_3_gor_0001d108

# .rodata:0xA0 | 0x9610 | size: 0xA
.obj str_sha_1_1_c_gor_0001d110, local
	.string "sha_1_1_c"
.endobj str_sha_1_1_c_gor_0001d110

# .rodata:0xAA | 0x961A | size: 0x2
.obj gap_03_0000961A_rodata, global
.hidden gap_03_0000961A_rodata
	.2byte 0x0000
.endobj gap_03_0000961A_rodata

# .rodata:0xAC | 0x961C | size: 0xA
.obj str_sha_1_2_c_gor_0001d11c, local
	.string "sha_1_2_c"
.endobj str_sha_1_2_c_gor_0001d11c

# .rodata:0xB6 | 0x9626 | size: 0x2
.obj gap_03_00009626_rodata, global
.hidden gap_03_00009626_rodata
	.2byte 0x0000
.endobj gap_03_00009626_rodata

# .rodata:0xB8 | 0x9628 | size: 0xA
.obj str_sha_1_3_c_gor_0001d128, local
	.string "sha_1_3_c"
.endobj str_sha_1_3_c_gor_0001d128

# .rodata:0xC2 | 0x9632 | size: 0x2
.obj gap_03_00009632_rodata, global
.hidden gap_03_00009632_rodata
	.2byte 0x0000
.endobj gap_03_00009632_rodata

# .rodata:0xC4 | 0x9634 | size: 0xA
.obj str_sha_1_4_c_gor_0001d134, local
	.string "sha_1_4_c"
.endobj str_sha_1_4_c_gor_0001d134

# .rodata:0xCE | 0x963E | size: 0x2
.obj gap_03_0000963E_rodata, global
.hidden gap_03_0000963E_rodata
	.2byte 0x0000
.endobj gap_03_0000963E_rodata

# .rodata:0xD0 | 0x9640 | size: 0xA
.obj str_sha_1_5_c_gor_0001d140, local
	.string "sha_1_5_c"
.endobj str_sha_1_5_c_gor_0001d140

# .rodata:0xDA | 0x964A | size: 0x2
.obj gap_03_0000964A_rodata, global
.hidden gap_03_0000964A_rodata
	.2byte 0x0000
.endobj gap_03_0000964A_rodata

# .rodata:0xDC | 0x964C | size: 0xA
.obj str_sha_6_1_c_gor_0001d14c, local
	.string "sha_6_1_c"
.endobj str_sha_6_1_c_gor_0001d14c

# .rodata:0xE6 | 0x9656 | size: 0x2
.obj gap_03_00009656_rodata, global
.hidden gap_03_00009656_rodata
	.2byte 0x0000
.endobj gap_03_00009656_rodata

# .rodata:0xE8 | 0x9658 | size: 0xA
.obj str_sha_6_2_c_gor_0001d158, local
	.string "sha_6_2_c"
.endobj str_sha_6_2_c_gor_0001d158

# .rodata:0xF2 | 0x9662 | size: 0x2
.obj gap_03_00009662_rodata, global
.hidden gap_03_00009662_rodata
	.2byte 0x0000
.endobj gap_03_00009662_rodata

# .rodata:0xF4 | 0x9664 | size: 0xA
.obj str_sha_6_3_c_gor_0001d164, local
	.string "sha_6_3_c"
.endobj str_sha_6_3_c_gor_0001d164

# .rodata:0xFE | 0x966E | size: 0x2
.obj gap_03_0000966E_rodata, global
.hidden gap_03_0000966E_rodata
	.2byte 0x0000
.endobj gap_03_0000966E_rodata

# .rodata:0x100 | 0x9670 | size: 0x6
.obj str_bou_1_gor_0001d170, local
	.string "bou_1"
.endobj str_bou_1_gor_0001d170

# .rodata:0x106 | 0x9676 | size: 0x2
.obj gap_03_00009676_rodata, global
.hidden gap_03_00009676_rodata
	.2byte 0x0000
.endobj gap_03_00009676_rodata

# .rodata:0x108 | 0x9678 | size: 0x6
.obj str_bou_2_gor_0001d178, local
	.string "bou_2"
.endobj str_bou_2_gor_0001d178

# .rodata:0x10E | 0x967E | size: 0x2
.obj gap_03_0000967E_rodata, global
.hidden gap_03_0000967E_rodata
	.2byte 0x0000
.endobj gap_03_0000967E_rodata

# .rodata:0x110 | 0x9680 | size: 0x6
.obj str_bou_3_gor_0001d180, local
	.string "bou_3"
.endobj str_bou_3_gor_0001d180

# .rodata:0x116 | 0x9686 | size: 0x2
.obj gap_03_00009686_rodata, global
.hidden gap_03_00009686_rodata
	.2byte 0x0000
.endobj gap_03_00009686_rodata

# .rodata:0x118 | 0x9688 | size: 0x6
.obj str_bou_4_gor_0001d188, local
	.string "bou_4"
.endobj str_bou_4_gor_0001d188

# .rodata:0x11E | 0x968E | size: 0x2
.obj gap_03_0000968E_rodata, global
.hidden gap_03_0000968E_rodata
	.2byte 0x0000
.endobj gap_03_0000968E_rodata

# .rodata:0x120 | 0x9690 | size: 0x8
.obj str_bou_1_c_gor_0001d190, local
	.string "bou_1_c"
.endobj str_bou_1_c_gor_0001d190

# .rodata:0x128 | 0x9698 | size: 0x8
.obj str_bou_2_c_gor_0001d198, local
	.string "bou_2_c"
.endobj str_bou_2_c_gor_0001d198

# .rodata:0x130 | 0x96A0 | size: 0x8
.obj str_bou_3_c_gor_0001d1a0, local
	.string "bou_3_c"
.endobj str_bou_3_c_gor_0001d1a0

# .rodata:0x138 | 0x96A8 | size: 0x8
.obj str_bou_4_c_gor_0001d1a8, local
	.string "bou_4_c"
.endobj str_bou_4_c_gor_0001d1a8

# .rodata:0x140 | 0x96B0 | size: 0x6
.obj str_jimen_gor_0001d1b0, local
	.string "jimen"
.endobj str_jimen_gor_0001d1b0

# .rodata:0x146 | 0x96B6 | size: 0x2
.obj gap_03_000096B6_rodata, global
.hidden gap_03_000096B6_rodata
	.2byte 0x0000
.endobj gap_03_000096B6_rodata

# .rodata:0x148 | 0x96B8 | size: 0x5
.obj str_yama_gor_0001d1b8, local
	.string "yama"
.endobj str_yama_gor_0001d1b8

# .rodata:0x14D | 0x96BD | size: 0x3
.obj gap_03_000096BD_rodata, global
.hidden gap_03_000096BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000096BD_rodata

# .rodata:0x150 | 0x96C0 | size: 0x8
.obj str_iwayama_gor_0001d1c0, local
	.string "iwayama"
.endobj str_iwayama_gor_0001d1c0

# .rodata:0x158 | 0x96C8 | size: 0xB
.obj str_hosi_right_gor_0001d1c8, local
	.string "hosi_right"
.endobj str_hosi_right_gor_0001d1c8

# .rodata:0x163 | 0x96D3 | size: 0x1
.obj gap_03_000096D3_rodata, global
.hidden gap_03_000096D3_rodata
	.byte 0x00
.endobj gap_03_000096D3_rodata

# .rodata:0x164 | 0x96D4 | size: 0xA
.obj str_hosi_left_gor_0001d1d4, local
	.string "hosi_left"
.endobj str_hosi_left_gor_0001d1d4

# .rodata:0x16E | 0x96DE | size: 0x2
.obj gap_03_000096DE_rodata, global
.hidden gap_03_000096DE_rodata
	.2byte 0x0000
.endobj gap_03_000096DE_rodata

# .rodata:0x170 | 0x96E0 | size: 0xC
.obj str_hosi_center_gor_0001d1e0, local
	.string "hosi_center"
.endobj str_hosi_center_gor_0001d1e0

# .rodata:0x17C | 0x96EC | size: 0xD
.obj str_hosi_right_c_gor_0001d1ec, local
	.string "hosi_right_c"
.endobj str_hosi_right_c_gor_0001d1ec

# .rodata:0x189 | 0x96F9 | size: 0x3
.obj gap_03_000096F9_rodata, global
.hidden gap_03_000096F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000096F9_rodata

# .rodata:0x18C | 0x96FC | size: 0xC
.obj str_hosi_left_c_gor_0001d1fc, local
	.string "hosi_left_c"
.endobj str_hosi_left_c_gor_0001d1fc

# .rodata:0x198 | 0x9708 | size: 0xE
.obj str_hosi_center_c_gor_0001d208, local
	.string "hosi_center_c"
.endobj str_hosi_center_c_gor_0001d208

# .rodata:0x1A6 | 0x9716 | size: 0x2
.obj gap_03_00009716_rodata, global
.hidden gap_03_00009716_rodata
	.2byte 0x0000
.endobj gap_03_00009716_rodata

# .rodata:0x1A8 | 0x9718 | size: 0x6
.obj str_ranpu_gor_0001d218, local
	.string "ranpu"
.endobj str_ranpu_gor_0001d218

# .rodata:0x1AE | 0x971E | size: 0x2
.obj gap_03_0000971E_rodata, global
.hidden gap_03_0000971E_rodata
	.2byte 0x0000
.endobj gap_03_0000971E_rodata

# .rodata:0x1B0 | 0x9720 | size: 0x15
.obj str_SFX_STG6_TRAIN_BELL1_gor_0001d220, local
	.string "SFX_STG6_TRAIN_BELL1"
.endobj str_SFX_STG6_TRAIN_BELL1_gor_0001d220

# .rodata:0x1C5 | 0x9735 | size: 0x3
.obj gap_03_00009735_rodata, global
.hidden gap_03_00009735_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009735_rodata

# .rodata:0x1C8 | 0x9738 | size: 0x7
.obj str_gor_04_gor_0001d238, local
	.string "gor_04"
.endobj str_gor_04_gor_0001d238

# .rodata:0x1CF | 0x973F | size: 0x1
.obj gap_03_0000973F_rodata, global
.hidden gap_03_0000973F_rodata
	.byte 0x00
.endobj gap_03_0000973F_rodata

# .rodata:0x1D0 | 0x9740 | size: 0x15
.obj str_SFX_STG6_TRAIN_MOVE1_gor_0001d240, local
	.string "SFX_STG6_TRAIN_MOVE1"
.endobj str_SFX_STG6_TRAIN_MOVE1_gor_0001d240

# .rodata:0x1E5 | 0x9755 | size: 0x3
.obj gap_03_00009755_rodata, global
.hidden gap_03_00009755_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009755_rodata

# .rodata:0x1E8 | 0x9758 | size: 0x7
.obj str_hom_00_gor_0001d258, local
	.string "hom_00"
.endobj str_hom_00_gor_0001d258

# .rodata:0x1EF | 0x975F | size: 0x1
.obj gap_03_0000975F_rodata, global
.hidden gap_03_0000975F_rodata
	.byte 0x00
.endobj gap_03_0000975F_rodata

# .rodata:0x1F0 | 0x9760 | size: 0x17
.obj str_SFX_STG6_TRAIN_MOVE1_gor_0001d260, local
	.string "SFX_STG6_TRAIN_MOVE1_2"
.endobj str_SFX_STG6_TRAIN_MOVE1_gor_0001d260

# .rodata:0x207 | 0x9777 | size: 0x1
.obj gap_03_00009777_rodata, global
.hidden gap_03_00009777_rodata
	.byte 0x00
.endobj gap_03_00009777_rodata

# .rodata:0x208 | 0x9778 | size: 0x19
.obj str_SFX_STG6_TRAIN_MOVE1_gor_0001d278, local
	.string "SFX_STG6_TRAIN_MOVE1_2_2"
.endobj str_SFX_STG6_TRAIN_MOVE1_gor_0001d278

# .rodata:0x221 | 0x9791 | size: 0x3
.obj gap_03_00009791_rodata, global
.hidden gap_03_00009791_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009791_rodata

# .rodata:0x224 | 0x9794 | size: 0x7
.obj str_pik_00_gor_0001d294, local
	.string "pik_00"
.endobj str_pik_00_gor_0001d294

# .rodata:0x22B | 0x979B | size: 0x1
.obj gap_03_0000979B_rodata, global
.hidden gap_03_0000979B_rodata
	.byte 0x00
.endobj gap_03_0000979B_rodata

# .rodata:0x22C | 0x979C | size: 0x17
.obj str_SFX_STG6_TRAIN_MOVE1_gor_0001d29c, local
	.string "SFX_STG6_TRAIN_MOVE1_3"
.endobj str_SFX_STG6_TRAIN_MOVE1_gor_0001d29c

# .rodata:0x243 | 0x97B3 | size: 0x1
.obj gap_03_000097B3_rodata, global
.hidden gap_03_000097B3_rodata
	.byte 0x00
.endobj gap_03_000097B3_rodata

# .rodata:0x244 | 0x97B4 | size: 0x6
.obj str_train_gor_0001d2b4, local
	.string "train"
.endobj str_train_gor_0001d2b4

# .rodata:0x24A | 0x97BA | size: 0x2
.obj gap_03_000097BA_rodata, global
.hidden gap_03_000097BA_rodata
	.2byte 0x0000
.endobj gap_03_000097BA_rodata

# .rodata:0x24C | 0x97BC | size: 0x19
.obj str_SFX_STG6_TRAIN_MOVE1_gor_0001d2bc, local
	.string "SFX_STG6_TRAIN_MOVE1_2_3"
.endobj str_SFX_STG6_TRAIN_MOVE1_gor_0001d2bc

# .rodata:0x265 | 0x97D5 | size: 0x3
.obj gap_03_000097D5_rodata, global
.hidden gap_03_000097D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000097D5_rodata

# .rodata:0x268 | 0x97D8 | size: 0x15
.obj str_SFX_STG6_TRAIN_MOVE2_gor_0001d2d8, local
	.string "SFX_STG6_TRAIN_MOVE2"
.endobj str_SFX_STG6_TRAIN_MOVE2_gor_0001d2d8

# .rodata:0x27D | 0x97ED | size: 0x3
.obj gap_03_000097ED_rodata, global
.hidden gap_03_000097ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000097ED_rodata

# .rodata:0x280 | 0x97F0 | size: 0x17
.obj str_SFX_STG6_TRAIN_MOVE2_gor_0001d2f0, local
	.string "SFX_STG6_TRAIN_MOVE2_2"
.endobj str_SFX_STG6_TRAIN_MOVE2_gor_0001d2f0

# .rodata:0x297 | 0x9807 | size: 0x1
.obj gap_03_00009807_rodata, global
.hidden gap_03_00009807_rodata
	.byte 0x00
.endobj gap_03_00009807_rodata

# .rodata:0x298 | 0x9808 | size: 0x17
.obj str_SFX_STG6_TRAIN_MOVE2_gor_0001d308, local
	.string "SFX_STG6_TRAIN_MOVE2_3"
.endobj str_SFX_STG6_TRAIN_MOVE2_gor_0001d308

# .rodata:0x2AF | 0x981F | size: 0x1
.obj gap_03_0000981F_rodata, global
.hidden gap_03_0000981F_rodata
	.byte 0x00
.endobj gap_03_0000981F_rodata

# .rodata:0x2B0 | 0x9820 | size: 0x19
.obj str_SFX_STG6_TRAIN_MOVE2_gor_0001d320, local
	.string "SFX_STG6_TRAIN_MOVE2_2_2"
.endobj str_SFX_STG6_TRAIN_MOVE2_gor_0001d320

# .rodata:0x2C9 | 0x9839 | size: 0x3
.obj gap_03_00009839_rodata, global
.hidden gap_03_00009839_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009839_rodata

# .rodata:0x2CC | 0x983C | size: 0x8
.obj str_ranpu_c_gor_0001d33c, local
	.string "ranpu_c"
.endobj str_ranpu_c_gor_0001d33c

# .rodata:0x2D4 | 0x9844 | size: 0x9
.obj str_pika_1_1_gor_0001d344, local
	.string "pika_1_1"
.endobj str_pika_1_1_gor_0001d344

# .rodata:0x2DD | 0x984D | size: 0x3
.obj gap_03_0000984D_rodata, global
.hidden gap_03_0000984D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000984D_rodata

# .rodata:0x2E0 | 0x9850 | size: 0x9
.obj str_pika_1_2_gor_0001d350, local
	.string "pika_1_2"
.endobj str_pika_1_2_gor_0001d350

# .rodata:0x2E9 | 0x9859 | size: 0x3
.obj gap_03_00009859_rodata, global
.hidden gap_03_00009859_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009859_rodata

# .rodata:0x2EC | 0x985C | size: 0x9
.obj str_pika_1_3_gor_0001d35c, local
	.string "pika_1_3"
.endobj str_pika_1_3_gor_0001d35c

# .rodata:0x2F5 | 0x9865 | size: 0x3
.obj gap_03_00009865_rodata, global
.hidden gap_03_00009865_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009865_rodata

# .rodata:0x2F8 | 0x9868 | size: 0x9
.obj str_pika_1_4_gor_0001d368, local
	.string "pika_1_4"
.endobj str_pika_1_4_gor_0001d368

# .rodata:0x301 | 0x9871 | size: 0x3
.obj gap_03_00009871_rodata, global
.hidden gap_03_00009871_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009871_rodata

# .rodata:0x304 | 0x9874 | size: 0x7
.obj str_pika_2_gor_0001d374, local
	.string "pika_2"
.endobj str_pika_2_gor_0001d374

# .rodata:0x30B | 0x987B | size: 0x1
.obj gap_03_0000987B_rodata, global
.hidden gap_03_0000987B_rodata
	.byte 0x00
.endobj gap_03_0000987B_rodata

# .rodata:0x30C | 0x987C | size: 0x7
.obj str_pika_3_gor_0001d37c, local
	.string "pika_3"
.endobj str_pika_3_gor_0001d37c

# .rodata:0x313 | 0x9883 | size: 0x1
.obj gap_03_00009883_rodata, global
.hidden gap_03_00009883_rodata
	.byte 0x00
.endobj gap_03_00009883_rodata

# .rodata:0x314 | 0x9884 | size: 0x7
.obj str_pika_4_gor_0001d384, local
	.string "pika_4"
.endobj str_pika_4_gor_0001d384

# .rodata:0x31B | 0x988B | size: 0x1
.obj gap_03_0000988B_rodata, global
.hidden gap_03_0000988B_rodata
	.byte 0x00
.endobj gap_03_0000988B_rodata

# .rodata:0x31C | 0x988C | size: 0x7
.obj str_pika_5_gor_0001d38c, local
	.string "pika_5"
.endobj str_pika_5_gor_0001d38c

# .rodata:0x323 | 0x9893 | size: 0x1
.obj gap_03_00009893_rodata, global
.hidden gap_03_00009893_rodata
	.byte 0x00
.endobj gap_03_00009893_rodata

# .rodata:0x324 | 0x9894 | size: 0x7
.obj str_pika_6_gor_0001d394, local
	.string "pika_6"
.endobj str_pika_6_gor_0001d394

# .rodata:0x32B | 0x989B | size: 0x1
.obj gap_03_0000989B_rodata, global
.hidden gap_03_0000989B_rodata
	.byte 0x00
.endobj gap_03_0000989B_rodata

# .rodata:0x32C | 0x989C | size: 0xB
.obj str_pika_1_1_c_gor_0001d39c, local
	.string "pika_1_1_c"
.endobj str_pika_1_1_c_gor_0001d39c

# .rodata:0x337 | 0x98A7 | size: 0x1
.obj gap_03_000098A7_rodata, global
.hidden gap_03_000098A7_rodata
	.byte 0x00
.endobj gap_03_000098A7_rodata

# .rodata:0x338 | 0x98A8 | size: 0xB
.obj str_pika_1_2_c_gor_0001d3a8, local
	.string "pika_1_2_c"
.endobj str_pika_1_2_c_gor_0001d3a8

# .rodata:0x343 | 0x98B3 | size: 0x1
.obj gap_03_000098B3_rodata, global
.hidden gap_03_000098B3_rodata
	.byte 0x00
.endobj gap_03_000098B3_rodata

# .rodata:0x344 | 0x98B4 | size: 0xB
.obj str_pika_1_3_c_gor_0001d3b4, local
	.string "pika_1_3_c"
.endobj str_pika_1_3_c_gor_0001d3b4

# .rodata:0x34F | 0x98BF | size: 0x1
.obj gap_03_000098BF_rodata, global
.hidden gap_03_000098BF_rodata
	.byte 0x00
.endobj gap_03_000098BF_rodata

# .rodata:0x350 | 0x98C0 | size: 0xB
.obj str_pika_1_4_c_gor_0001d3c0, local
	.string "pika_1_4_c"
.endobj str_pika_1_4_c_gor_0001d3c0

# .rodata:0x35B | 0x98CB | size: 0x1
.obj gap_03_000098CB_rodata, global
.hidden gap_03_000098CB_rodata
	.byte 0x00
.endobj gap_03_000098CB_rodata

# .rodata:0x35C | 0x98CC | size: 0x9
.obj str_pika_6_c_gor_0001d3cc, local
	.string "pika_6_c"
.endobj str_pika_6_c_gor_0001d3cc

# .rodata:0x365 | 0x98D5 | size: 0x3
.obj gap_03_000098D5_rodata, global
.hidden gap_03_000098D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000098D5_rodata

# .rodata:0x368 | 0x98D8 | size: 0x7
.obj str_hom_10_gor_0001d3d8, local
	.string "hom_10"
.endobj str_hom_10_gor_0001d3d8

# .rodata:0x36F | 0x98DF | size: 0x1
.obj gap_03_000098DF_rodata, global
.hidden gap_03_000098DF_rodata
	.byte 0x00
.endobj gap_03_000098DF_rodata

# .rodata:0x370 | 0x98E0 | size: 0x7
.obj str_hom_11_gor_0001d3e0, local
	.string "hom_11"
.endobj str_hom_11_gor_0001d3e0

# .rodata:0x377 | 0x98E7 | size: 0x1
.obj gap_03_000098E7_rodata, global
.hidden gap_03_000098E7_rodata
	.byte 0x00
.endobj gap_03_000098E7_rodata

# .rodata:0x378 | 0x98E8 | size: 0x7
.obj str_hom_12_gor_0001d3e8, local
	.string "hom_12"
.endobj str_hom_12_gor_0001d3e8

# .rodata:0x37F | 0x98EF | size: 0x1
.obj gap_03_000098EF_rodata, global
.hidden gap_03_000098EF_rodata
	.byte 0x00
.endobj gap_03_000098EF_rodata

# .rodata:0x380 | 0x98F0 | size: 0x9
.obj str_rsh_06_a_gor_0001d3f0, local
	.string "rsh_06_a"
.endobj str_rsh_06_a_gor_0001d3f0

# .rodata:0x389 | 0x98F9 | size: 0x3
.obj gap_03_000098F9_rodata, global
.hidden gap_03_000098F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000098F9_rodata

# .rodata:0x38C | 0x98FC | size: 0x8
.obj str_train_7_gor_0001d3fc, local
	.string "train_7"
.endobj str_train_7_gor_0001d3fc

# .rodata:0x394 | 0x9904 | size: 0x8
.obj str_train_8_gor_0001d404, local
	.string "train_8"
.endobj str_train_8_gor_0001d404

# .rodata:0x39C | 0x990C | size: 0xA
.obj str_renketu_6_gor_0001d40c, local
	.string "renketu_6"
.endobj str_renketu_6_gor_0001d40c

# .rodata:0x3A6 | 0x9916 | size: 0x2
.obj gap_03_00009916_rodata, global
.hidden gap_03_00009916_rodata
	.2byte 0x0000
.endobj gap_03_00009916_rodata

# .rodata:0x3A8 | 0x9918 | size: 0xA
.obj str_renketu_7_gor_0001d418, local
	.string "renketu_7"
.endobj str_renketu_7_gor_0001d418

# .rodata:0x3B2 | 0x9922 | size: 0x2
.obj gap_03_00009922_rodata, global
.hidden gap_03_00009922_rodata
	.2byte 0x0000
.endobj gap_03_00009922_rodata

# .rodata:0x3B4 | 0x9924 | size: 0x8
.obj str_train_1_gor_0001d424, local
	.string "train_1"
.endobj str_train_1_gor_0001d424

# .rodata:0x3BC | 0x992C | size: 0x8
.obj str_train_6_gor_0001d42c, local
	.string "train_6"
.endobj str_train_6_gor_0001d42c

# .rodata:0x3C4 | 0x9934 | size: 0xA
.obj str_renketu_1_gor_0001d434, local
	.string "renketu_1"
.endobj str_renketu_1_gor_0001d434

# .rodata:0x3CE | 0x993E | size: 0x2
.obj gap_03_0000993E_rodata, global
.hidden gap_03_0000993E_rodata
	.2byte 0x0000
.endobj gap_03_0000993E_rodata

# .rodata:0x3D0 | 0x9940 | size: 0xA
.obj str_renketu_5_gor_0001d440, local
	.string "renketu_5"
.endobj str_renketu_5_gor_0001d440

# .rodata:0x3DA | 0x994A | size: 0x2
.obj gap_03_0000994A_rodata, global
.hidden gap_03_0000994A_rodata
	.2byte 0x0000
.endobj gap_03_0000994A_rodata

# .rodata:0x3DC | 0x994C | size: 0xE
.obj str_ENV_STG6_RSH2_gor_0001d44c, local
	.string "ENV_STG6_RSH2"
.endobj str_ENV_STG6_RSH2_gor_0001d44c

# .rodata:0x3EA | 0x995A | size: 0x2
.obj gap_03_0000995A_rodata, global
.hidden gap_03_0000995A_rodata
	.2byte 0x0000
.endobj gap_03_0000995A_rodata

# .rodata:0x3EC | 0x995C | size: 0x8
.obj str_renketu_gor_0001d45c, local
	.string "renketu"
.endobj str_renketu_gor_0001d45c

# .rodata:0x3F4 | 0x9964 | size: 0xA
.obj str_renketu_2_gor_0001d464, local
	.string "renketu_2"
.endobj str_renketu_2_gor_0001d464

# .rodata:0x3FE | 0x996E | size: 0x2
.obj gap_03_0000996E_rodata, global
.hidden gap_03_0000996E_rodata
	.2byte 0x0000
.endobj gap_03_0000996E_rodata

# .rodata:0x400 | 0x9970 | size: 0xA
.obj str_renketu_3_gor_0001d470, local
	.string "renketu_3"
.endobj str_renketu_3_gor_0001d470

# .rodata:0x40A | 0x997A | size: 0x2
.obj gap_03_0000997A_rodata, global
.hidden gap_03_0000997A_rodata
	.2byte 0x0000
.endobj gap_03_0000997A_rodata

# .rodata:0x40C | 0x997C | size: 0xA
.obj str_renketu_4_gor_0001d47c, local
	.string "renketu_4"
.endobj str_renketu_4_gor_0001d47c

# .rodata:0x416 | 0x9986 | size: 0x2
.obj gap_03_00009986_rodata, global
.hidden gap_03_00009986_rodata
	.2byte 0x0000
.endobj gap_03_00009986_rodata

# .rodata:0x418 | 0x9988 | size: 0x9
.obj str_rsh_02_a_gor_0001d488, local
	.string "rsh_02_a"
.endobj str_rsh_02_a_gor_0001d488

# .rodata:0x421 | 0x9991 | size: 0x3
.obj gap_03_00009991_rodata, global
.hidden gap_03_00009991_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009991_rodata

# .rodata:0x424 | 0x9994 | size: 0x7
.obj str_nidome_gor_0001d494, local
	.string "nidome"
.endobj str_nidome_gor_0001d494

# .rodata:0x42B | 0x999B | size: 0x1
.obj gap_03_0000999B_rodata, global
.hidden gap_03_0000999B_rodata
	.byte 0x00
.endobj gap_03_0000999B_rodata

# .rodata:0x42C | 0x999C | size: 0x17
.obj str_SFX_DOOR_OPEN_SLIDE1_gor_0001d49c, local
	.string "SFX_DOOR_OPEN_SLIDE1_3"
.endobj str_SFX_DOOR_OPEN_SLIDE1_gor_0001d49c

# .rodata:0x443 | 0x99B3 | size: 0x1
.obj gap_03_000099B3_rodata, global
.hidden gap_03_000099B3_rodata
	.byte 0x00
.endobj gap_03_000099B3_rodata

# .rodata:0x444 | 0x99B4 | size: 0x7
.obj str_tobira_gor_0001d4b4, local
	.string "tobira"
.endobj str_tobira_gor_0001d4b4

# .rodata:0x44B | 0x99BB | size: 0x1
.obj gap_03_000099BB_rodata, global
.hidden gap_03_000099BB_rodata
	.byte 0x00
.endobj gap_03_000099BB_rodata

# .rodata:0x44C | 0x99BC | size: 0x7
.obj str_n_bero_gor_0001d4bc, local
	.string "n_bero"
.endobj str_n_bero_gor_0001d4bc

# .rodata:0x453 | 0x99C3 | size: 0x1
.obj gap_03_000099C3_rodata, global
.hidden gap_03_000099C3_rodata
	.byte 0x00
.endobj gap_03_000099C3_rodata

# .rodata:0x454 | 0x99C4 | size: 0x17
.obj str_SFX_DOOR_SHUT_SLIDE1_gor_0001d4c4, local
	.string "SFX_DOOR_SHUT_SLIDE1_3"
.endobj str_SFX_DOOR_SHUT_SLIDE1_gor_0001d4c4

# .rodata:0x46B | 0x99DB | size: 0x1
.obj gap_03_000099DB_rodata, global
.hidden gap_03_000099DB_rodata
	.byte 0x00
.endobj gap_03_000099DB_rodata

# .rodata:0x46C | 0x99DC | size: 0xB
.obj str_飛行船係員_gor_0001d4dc, local
	.4byte 0x94F28D73
	.4byte 0x91448C57
	.byte 0x88, 0xF5, 0x00
.endobj str_飛行船係員_gor_0001d4dc

# .rodata:0x477 | 0x99E7 | size: 0x1
.obj gap_03_000099E7_rodata, global
.hidden gap_03_000099E7_rodata
	.byte 0x00
.endobj gap_03_000099E7_rodata

# .rodata:0x478 | 0x99E8 | size: 0xB
.obj str_ジュゲムＡ_gor_0001d4e8, local
	.4byte 0x83578385
	.4byte 0x83518380
	.byte 0x82, 0x60, 0x00
.endobj str_ジュゲムＡ_gor_0001d4e8

# .rodata:0x483 | 0x99F3 | size: 0x1
.obj gap_03_000099F3_rodata, global
.hidden gap_03_000099F3_rodata
	.byte 0x00
.endobj gap_03_000099F3_rodata

# .rodata:0x484 | 0x99F4 | size: 0x9
.obj str_train_07_gor_0001d4f4, local
	.string "train_07"
.endobj str_train_07_gor_0001d4f4

# .rodata:0x48D | 0x99FD | size: 0x3
.obj gap_03_000099FD_rodata, global
.hidden gap_03_000099FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000099FD_rodata

# .rodata:0x490 | 0x9A00 | size: 0x5
.obj str_駅員_gor_0001d500, local
	.4byte 0x897788F5
	.byte 0x00
.endobj str_駅員_gor_0001d500

# .rodata:0x495 | 0x9A05 | size: 0x3
.obj gap_03_00009A05_rodata, global
.hidden gap_03_00009A05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009A05_rodata

# .rodata:0x498 | 0x9A08 | size: 0x14
.obj str_BGM_EVT_STG4_TRAIN1_gor_0001d508, local
	.string "BGM_EVT_STG4_TRAIN1"
.endobj str_BGM_EVT_STG4_TRAIN1_gor_0001d508

# .rodata:0x4AC | 0x9A1C | size: 0x7
.obj str_sys_01_gor_0001d51c, local
	.string "sys_01"
.endobj str_sys_01_gor_0001d51c

# .rodata:0x4B3 | 0x9A23 | size: 0x1
.obj gap_03_00009A23_rodata, global
.hidden gap_03_00009A23_rodata
	.byte 0x00
.endobj gap_03_00009A23_rodata

# .rodata:0x4B4 | 0x9A24 | size: 0x6
.obj str_stg_6_gor_0001d524, local
	.string "stg_6"
.endobj str_stg_6_gor_0001d524

# .rodata:0x4BA | 0x9A2A | size: 0x2
.obj gap_03_00009A2A_rodata, global
.hidden gap_03_00009A2A_rodata
	.2byte 0x0000
.endobj gap_03_00009A2A_rodata

# .rodata:0x4BC | 0x9A2C | size: 0xD
.obj str_nidome_start_gor_0001d52c, local
	.string "nidome_start"
.endobj str_nidome_start_gor_0001d52c

# .rodata:0x4C9 | 0x9A39 | size: 0x3
.obj gap_03_00009A39_rodata, global
.hidden gap_03_00009A39_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009A39_rodata

# .rodata:0x4CC | 0x9A3C | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_gor_0001d53c, local
	.string "SFX_VOICE_MARIO_FIND1_2"
.endobj str_SFX_VOICE_MARIO_FIND_gor_0001d53c

# .rodata:0x4E4 | 0x9A54 | size: 0x17
.obj str_BGM_FF_MAIL_RECEPTIO_gor_0001d554, local
	.string "BGM_FF_MAIL_RECEPTION1"
.endobj str_BGM_FF_MAIL_RECEPTIO_gor_0001d554

# .rodata:0x4FB | 0x9A6B | size: 0x1
.obj gap_03_00009A6B_rodata, global
.hidden gap_03_00009A6B_rodata
	.byte 0x00
.endobj gap_03_00009A6B_rodata

# .rodata:0x4FC | 0x9A6C | size: 0x1
.obj zero_gor_0001d56c, local
	.byte 0x00
.endobj zero_gor_0001d56c

# .rodata:0x4FD | 0x9A6D | size: 0x3
.obj gap_03_00009A6D_rodata, global
.hidden gap_03_00009A6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009A6D_rodata

# .rodata:0x500 | 0x9A70 | size: 0x10
.obj str_gor_04_mail6_00_gor_0001d570, local
	.string "gor_04_mail6_00"
.endobj str_gor_04_mail6_00_gor_0001d570

# .rodata:0x510 | 0x9A80 | size: 0x14
.obj str_SFX_MAIL_RECEPTION1_gor_0001d580, local
	.string "SFX_MAIL_RECEPTION1"
.endobj str_SFX_MAIL_RECEPTION1_gor_0001d580

# .rodata:0x524 | 0x9A94 | size: 0x6
.obj str_M_N_9_gor_0001d594, local
	.string "M_N_9"
.endobj str_M_N_9_gor_0001d594

# .rodata:0x52A | 0x9A9A | size: 0x2
.obj gap_03_00009A9A_rodata, global
.hidden gap_03_00009A9A_rodata
	.2byte 0x0000
.endobj gap_03_00009A9A_rodata

# .rodata:0x52C | 0x9A9C | size: 0x14
.obj str_SFX_MAIL_RECEPTION2_gor_0001d59c, local
	.string "SFX_MAIL_RECEPTION2"
.endobj str_SFX_MAIL_RECEPTION2_gor_0001d59c

# .rodata:0x540 | 0x9AB0 | size: 0x7
.obj str_M_N_10_gor_0001d5b0, local
	.string "M_N_10"
.endobj str_M_N_10_gor_0001d5b0

# .rodata:0x547 | 0x9AB7 | size: 0x1
.obj gap_03_00009AB7_rodata, global
.hidden gap_03_00009AB7_rodata
	.byte 0x00
.endobj gap_03_00009AB7_rodata

# .rodata:0x548 | 0x9AB8 | size: 0x10
.obj str_gor_04_mail6_01_gor_0001d5b8, local
	.string "gor_04_mail6_01"
.endobj str_gor_04_mail6_01_gor_0001d5b8

# .rodata:0x558 | 0x9AC8 | size: 0x10
.obj str_gor_04_mail6_02_gor_0001d5c8, local
	.string "gor_04_mail6_02"
.endobj str_gor_04_mail6_02_gor_0001d5c8

# .rodata:0x568 | 0x9AD8 | size: 0x6
.obj str_M_S_1_gor_0001d5d8, local
	.string "M_S_1"
.endobj str_M_S_1_gor_0001d5d8

# .rodata:0x56E | 0x9ADE | size: 0x2
.obj gap_03_00009ADE_rodata, global
.hidden gap_03_00009ADE_rodata
	.2byte 0x0000
.endobj gap_03_00009ADE_rodata

# .rodata:0x570 | 0x9AE0 | size: 0x7
.obj str_s_bero_gor_0001d5e0, local
	.string "s_bero"
.endobj str_s_bero_gor_0001d5e0

# .rodata:0x577 | 0x9AE7 | size: 0x1
.obj gap_03_00009AE7_rodata, global
.hidden gap_03_00009AE7_rodata
	.byte 0x00
.endobj gap_03_00009AE7_rodata

# .rodata:0x578 | 0x9AE8 | size: 0x7
.obj str_gor_03_gor_0001d5e8, local
	.string "gor_03"
.endobj str_gor_03_gor_0001d5e8

# .rodata:0x57F | 0x9AEF | size: 0x1
.obj gap_03_00009AEF_rodata, global
.hidden gap_03_00009AEF_rodata
	.byte 0x00
.endobj gap_03_00009AEF_rodata

# .rodata:0x580 | 0x9AF0 | size: 0x8
.obj str_dokan_1_gor_0001d5f0, local
	.string "dokan_1"
.endobj str_dokan_1_gor_0001d5f0

# .rodata:0x588 | 0x9AF8 | size: 0xC
.obj str_A_dokan_h00_gor_0001d5f8, local
	.string "A_dokan_h00"
.endobj str_A_dokan_h00_gor_0001d5f8

# .rodata:0x594 | 0x9B04 | size: 0x9
.obj str_rsh_01_a_gor_0001d604, local
	.string "rsh_01_a"
.endobj str_rsh_01_a_gor_0001d604

# .rodata:0x59D | 0x9B0D | size: 0x3
.obj gap_03_00009B0D_rodata, global
.hidden gap_03_00009B0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009B0D_rodata

# .rodata:0x5A0 | 0x9B10 | size: 0xF
.obj str_n_1_door_close_gor_0001d610, local
	.string "n_1_door_close"
.endobj str_n_1_door_close_gor_0001d610

# .rodata:0x5AF | 0x9B1F | size: 0x1
.obj gap_03_00009B1F_rodata, global
.hidden gap_03_00009B1F_rodata
	.byte 0x00
.endobj gap_03_00009B1F_rodata

# .rodata:0x5B0 | 0x9B20 | size: 0xE
.obj str_n_1_door_open_gor_0001d620, local
	.string "n_1_door_open"
.endobj str_n_1_door_open_gor_0001d620

# .rodata:0x5BE | 0x9B2E | size: 0x2
.obj gap_03_00009B2E_rodata, global
.hidden gap_03_00009B2E_rodata
	.2byte 0x0000
.endobj gap_03_00009B2E_rodata

# .rodata:0x5C0 | 0x9B30 | size: 0xB
.obj str_A_tousenbo_gor_0001d630, local
	.string "A_tousenbo"
.endobj str_A_tousenbo_gor_0001d630

# .rodata:0x5CB | 0x9B3B | size: 0x1
.obj gap_03_00009B3B_rodata, global
.hidden gap_03_00009B3B_rodata
	.byte 0x00
.endobj gap_03_00009B3B_rodata

# .rodata:0x5CC | 0x9B3C | size: 0x9
.obj str_hikou_06_gor_0001d63c, local
	.string "hikou_06"
.endobj str_hikou_06_gor_0001d63c

# .rodata:0x5D5 | 0x9B45 | size: 0x3
.obj gap_03_00009B45_rodata, global
.hidden gap_03_00009B45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009B45_rodata

# .rodata:0x5D8 | 0x9B48 | size: 0x3
.obj str_me_gor_0001d648, local
	.string "me"
.endobj str_me_gor_0001d648

# .rodata:0x5DB | 0x9B4B | size: 0x1
.obj gap_03_00009B4B_rodata, global
.hidden gap_03_00009B4B_rodata
	.byte 0x00
.endobj gap_03_00009B4B_rodata

# .rodata:0x5DC | 0x9B4C | size: 0x9
.obj str_hikou_00_gor_0001d64c, local
	.string "hikou_00"
.endobj str_hikou_00_gor_0001d64c

# .rodata:0x5E5 | 0x9B55 | size: 0x3
.obj gap_03_00009B55_rodata, global
.hidden gap_03_00009B55_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009B55_rodata

# .rodata:0x5E8 | 0x9B58 | size: 0x9
.obj str_hikou_01_gor_0001d658, local
	.string "hikou_01"
.endobj str_hikou_01_gor_0001d658

# .rodata:0x5F1 | 0x9B61 | size: 0x3
.obj gap_03_00009B61_rodata, global
.hidden gap_03_00009B61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009B61_rodata

# .rodata:0x5F4 | 0x9B64 | size: 0x9
.obj str_hikou_04_gor_0001d664, local
	.string "hikou_04"
.endobj str_hikou_04_gor_0001d664

# .rodata:0x5FD | 0x9B6D | size: 0x3
.obj gap_03_00009B6D_rodata, global
.hidden gap_03_00009B6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009B6D_rodata

# .rodata:0x600 | 0x9B70 | size: 0x9
.obj str_hikou_05_gor_0001d670, local
	.string "hikou_05"
.endobj str_hikou_05_gor_0001d670

# .rodata:0x609 | 0x9B79 | size: 0x3
.obj gap_03_00009B79_rodata, global
.hidden gap_03_00009B79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009B79_rodata

# .rodata:0x60C | 0x9B7C | size: 0x6
.obj str_M_C_3_gor_0001d67c, local
	.string "M_C_3"
.endobj str_M_C_3_gor_0001d67c

# .rodata:0x612 | 0x9B82 | size: 0x2
.obj gap_03_00009B82_rodata, global
.hidden gap_03_00009B82_rodata
	.2byte 0x0000
.endobj gap_03_00009B82_rodata

# .rodata:0x614 | 0x9B84 | size: 0x8
.obj str_airship_gor_0001d684, local
	.string "airship"
.endobj str_airship_gor_0001d684

# .rodata:0x61C | 0x9B8C | size: 0x9
.obj str_hikou_02_gor_0001d68c, local
	.string "hikou_02"
.endobj str_hikou_02_gor_0001d68c

# .rodata:0x625 | 0x9B95 | size: 0x3
.obj gap_03_00009B95_rodata, global
.hidden gap_03_00009B95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009B95_rodata

# .rodata:0x628 | 0x9B98 | size: 0x9
.obj str_hikou_03_gor_0001d698, local
	.string "hikou_03"
.endobj str_hikou_03_gor_0001d698

# .rodata:0x631 | 0x9BA1 | size: 0x3
.obj gap_03_00009BA1_rodata, global
.hidden gap_03_00009BA1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009BA1_rodata

# .rodata:0x634 | 0x9BA4 | size: 0xD
.obj str_resha_return_gor_0001d6a4, local
	.string "resha_return"
.endobj str_resha_return_gor_0001d6a4

# .rodata:0x641 | 0x9BB1 | size: 0x3
.obj gap_03_00009BB1_rodata, global
.hidden gap_03_00009BB1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009BB1_rodata

# .rodata:0x644 | 0x9BB4 | size: 0x9
.obj str_train_06_gor_0001d6b4, local
	.string "train_06"
.endobj str_train_06_gor_0001d6b4

# .rodata:0x64D | 0x9BBD | size: 0x3
.obj gap_03_00009BBD_rodata, global
.hidden gap_03_00009BBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009BBD_rodata

# .rodata:0x650 | 0x9BC0 | size: 0x9
.obj str_train_00_gor_0001d6c0, local
	.string "train_00"
.endobj str_train_00_gor_0001d6c0

# .rodata:0x659 | 0x9BC9 | size: 0x3
.obj gap_03_00009BC9_rodata, global
.hidden gap_03_00009BC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009BC9_rodata

# .rodata:0x65C | 0x9BCC | size: 0x9
.obj str_train_01_gor_0001d6cc, local
	.string "train_01"
.endobj str_train_01_gor_0001d6cc

# .rodata:0x665 | 0x9BD5 | size: 0x3
.obj gap_03_00009BD5_rodata, global
.hidden gap_03_00009BD5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009BD5_rodata

# .rodata:0x668 | 0x9BD8 | size: 0x9
.obj str_train_03_gor_0001d6d8, local
	.string "train_03"
.endobj str_train_03_gor_0001d6d8

# .rodata:0x671 | 0x9BE1 | size: 0x3
.obj gap_03_00009BE1_rodata, global
.hidden gap_03_00009BE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009BE1_rodata

# .rodata:0x674 | 0x9BE4 | size: 0x9
.obj str_train_05_gor_0001d6e4, local
	.string "train_05"
.endobj str_train_05_gor_0001d6e4

# .rodata:0x67D | 0x9BED | size: 0x3
.obj gap_03_00009BED_rodata, global
.hidden gap_03_00009BED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009BED_rodata

# .rodata:0x680 | 0x9BF0 | size: 0x9
.obj str_train_04_gor_0001d6f0, local
	.string "train_04"
.endobj str_train_04_gor_0001d6f0

# .rodata:0x689 | 0x9BF9 | size: 0x3
.obj gap_03_00009BF9_rodata, global
.hidden gap_03_00009BF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009BF9_rodata

# .rodata:0x68C | 0x9BFC | size: 0x6
.obj str_mario_gor_0001d6fc, local
	.string "mario"
.endobj str_mario_gor_0001d6fc

# .rodata:0x692 | 0x9C02 | size: 0x2
.obj gap_03_00009C02_rodata, global
.hidden gap_03_00009C02_rodata
	.2byte 0x0000
.endobj gap_03_00009C02_rodata

# .rodata:0x694 | 0x9C04 | size: 0x9
.obj str_train_02_gor_0001d704, local
	.string "train_02"
.endobj str_train_02_gor_0001d704

# .rodata:0x69D | 0x9C0D | size: 0x3
.obj gap_03_00009C0D_rodata, global
.hidden gap_03_00009C0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009C0D_rodata

# .rodata:0x6A0 | 0x9C10 | size: 0xB
.obj str_gor_04_000_gor_0001d710, local
	.string "gor_04_000"
.endobj str_gor_04_000_gor_0001d710

# .rodata:0x6AB | 0x9C1B | size: 0x1
.obj gap_03_00009C1B_rodata, global
.hidden gap_03_00009C1B_rodata
	.byte 0x00
.endobj gap_03_00009C1B_rodata

# .rodata:0x6AC | 0x9C1C | size: 0xB
.obj str_gor_04_001_gor_0001d71c, local
	.string "gor_04_001"
.endobj str_gor_04_001_gor_0001d71c

# .rodata:0x6B7 | 0x9C27 | size: 0x1
.obj gap_03_00009C27_rodata, global
.hidden gap_03_00009C27_rodata
	.byte 0x00
.endobj gap_03_00009C27_rodata

# .rodata:0x6B8 | 0x9C28 | size: 0xB
.obj str_gor_04_002_gor_0001d728, local
	.string "gor_04_002"
.endobj str_gor_04_002_gor_0001d728

# .rodata:0x6C3 | 0x9C33 | size: 0x1
.obj gap_03_00009C33_rodata, global
.hidden gap_03_00009C33_rodata
	.byte 0x00
.endobj gap_03_00009C33_rodata

# .rodata:0x6C4 | 0x9C34 | size: 0xB
.obj str_gor_04_003_gor_0001d734, local
	.string "gor_04_003"
.endobj str_gor_04_003_gor_0001d734

# .rodata:0x6CF | 0x9C3F | size: 0x1
.obj gap_03_00009C3F_rodata, global
.hidden gap_03_00009C3F_rodata
	.byte 0x00
.endobj gap_03_00009C3F_rodata

# .rodata:0x6D0 | 0x9C40 | size: 0xB
.obj str_gor_04_004_gor_0001d740, local
	.string "gor_04_004"
.endobj str_gor_04_004_gor_0001d740

# .rodata:0x6DB | 0x9C4B | size: 0x1
.obj gap_03_00009C4B_rodata, global
.hidden gap_03_00009C4B_rodata
	.byte 0x00
.endobj gap_03_00009C4B_rodata

# .rodata:0x6DC | 0x9C4C | size: 0xB
.obj str_gor_04_005_gor_0001d74c, local
	.string "gor_04_005"
.endobj str_gor_04_005_gor_0001d74c

# .rodata:0x6E7 | 0x9C57 | size: 0x1
.obj gap_03_00009C57_rodata, global
.hidden gap_03_00009C57_rodata
	.byte 0x00
.endobj gap_03_00009C57_rodata

# .rodata:0x6E8 | 0x9C58 | size: 0xB
.obj str_gor_04_006_gor_0001d758, local
	.string "gor_04_006"
.endobj str_gor_04_006_gor_0001d758

# .rodata:0x6F3 | 0x9C63 | size: 0x1
.obj gap_03_00009C63_rodata, global
.hidden gap_03_00009C63_rodata
	.byte 0x00
.endobj gap_03_00009C63_rodata

# .rodata:0x6F4 | 0x9C64 | size: 0xB
.obj str_gor_04_007_gor_0001d764, local
	.string "gor_04_007"
.endobj str_gor_04_007_gor_0001d764

# .rodata:0x6FF | 0x9C6F | size: 0x1
.obj gap_03_00009C6F_rodata, global
.hidden gap_03_00009C6F_rodata
	.byte 0x00
.endobj gap_03_00009C6F_rodata

# .rodata:0x700 | 0x9C70 | size: 0xB
.obj str_gor_04_008_gor_0001d770, local
	.string "gor_04_008"
.endobj str_gor_04_008_gor_0001d770

# .rodata:0x70B | 0x9C7B | size: 0x1
.obj gap_03_00009C7B_rodata, global
.hidden gap_03_00009C7B_rodata
	.byte 0x00
.endobj gap_03_00009C7B_rodata

# .rodata:0x70C | 0x9C7C | size: 0xB
.obj str_gor_04_009_gor_0001d77c, local
	.string "gor_04_009"
.endobj str_gor_04_009_gor_0001d77c

# .rodata:0x717 | 0x9C87 | size: 0x1
.obj gap_03_00009C87_rodata, global
.hidden gap_03_00009C87_rodata
	.byte 0x00
.endobj gap_03_00009C87_rodata

# .rodata:0x718 | 0x9C88 | size: 0xB
.obj str_gor_04_010_gor_0001d788, local
	.string "gor_04_010"
.endobj str_gor_04_010_gor_0001d788

# .rodata:0x723 | 0x9C93 | size: 0x1
.obj gap_03_00009C93_rodata, global
.hidden gap_03_00009C93_rodata
	.byte 0x00
.endobj gap_03_00009C93_rodata

# .rodata:0x724 | 0x9C94 | size: 0xB
.obj str_gor_04_011_gor_0001d794, local
	.string "gor_04_011"
.endobj str_gor_04_011_gor_0001d794

# .rodata:0x72F | 0x9C9F | size: 0x1
.obj gap_03_00009C9F_rodata, global
.hidden gap_03_00009C9F_rodata
	.byte 0x00
.endobj gap_03_00009C9F_rodata

# .rodata:0x730 | 0x9CA0 | size: 0xB
.obj str_gor_04_012_gor_0001d7a0, local
	.string "gor_04_012"
.endobj str_gor_04_012_gor_0001d7a0

# .rodata:0x73B | 0x9CAB | size: 0x1
.obj gap_03_00009CAB_rodata, global
.hidden gap_03_00009CAB_rodata
	.byte 0x00
.endobj gap_03_00009CAB_rodata

# .rodata:0x73C | 0x9CAC | size: 0xB
.obj str_gor_04_013_gor_0001d7ac, local
	.string "gor_04_013"
.endobj str_gor_04_013_gor_0001d7ac

# .rodata:0x747 | 0x9CB7 | size: 0x1
.obj gap_03_00009CB7_rodata, global
.hidden gap_03_00009CB7_rodata
	.byte 0x00
.endobj gap_03_00009CB7_rodata

# .rodata:0x748 | 0x9CB8 | size: 0xB
.obj str_gor_04_014_gor_0001d7b8, local
	.string "gor_04_014"
.endobj str_gor_04_014_gor_0001d7b8

# .rodata:0x753 | 0x9CC3 | size: 0x1
.obj gap_03_00009CC3_rodata, global
.hidden gap_03_00009CC3_rodata
	.byte 0x00
.endobj gap_03_00009CC3_rodata

# .rodata:0x754 | 0x9CC4 | size: 0xB
.obj str_gor_04_015_gor_0001d7c4, local
	.string "gor_04_015"
.endobj str_gor_04_015_gor_0001d7c4

# .rodata:0x75F | 0x9CCF | size: 0x1
.obj gap_03_00009CCF_rodata, global
.hidden gap_03_00009CCF_rodata
	.byte 0x00
.endobj gap_03_00009CCF_rodata

# .rodata:0x760 | 0x9CD0 | size: 0x9
.obj str_ルイージ_gor_0001d7d0, local
	.4byte 0x838B8343
	.4byte 0x815B8357
	.byte 0x00
.endobj str_ルイージ_gor_0001d7d0

# .rodata:0x769 | 0x9CD9 | size: 0x3
.obj gap_03_00009CD9_rodata, global
.hidden gap_03_00009CD9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009CD9_rodata

# .rodata:0x76C | 0x9CDC | size: 0x8
.obj str_c_luigi_gor_0001d7dc, local
	.string "c_luigi"
.endobj str_c_luigi_gor_0001d7dc

# .rodata:0x774 | 0x9CE4 | size: 0xD
.obj str_ス・クリーミ_gor_0001d7e4, local
	.4byte 0x83588145
	.4byte 0x834E838A
	.4byte 0x815B837E
	.byte 0x00
.endobj str_ス・クリーミ_gor_0001d7e4

# .rodata:0x781 | 0x9CF1 | size: 0x3
.obj gap_03_00009CF1_rodata, global
.hidden gap_03_00009CF1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009CF1_rodata

# .rodata:0x784 | 0x9CF4 | size: 0x9
.obj str_c_lp_moa_gor_0001d7f4, local
	.string "c_lp_moa"
.endobj str_c_lp_moa_gor_0001d7f4

# .rodata:0x78D | 0x9CFD | size: 0x3
.obj gap_03_00009CFD_rodata, global
.hidden gap_03_00009CFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009CFD_rodata

# .rodata:0x790 | 0x9D00 | size: 0xD
.obj str_luigi_npc_05_gor_0001d800, local
	.string "luigi_npc_05"
.endobj str_luigi_npc_05_gor_0001d800

# .rodata:0x79D | 0x9D0D | size: 0x3
.obj gap_03_00009D0D_rodata, global
.hidden gap_03_00009D0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009D0D_rodata

# .rodata:0x7A0 | 0x9D10 | size: 0xD
.obj str_キノピオ女Ｂ_gor_0001d810, local
	.4byte 0x834C836D
	.4byte 0x83738349
	.4byte 0x8F978261
	.byte 0x00
.endobj str_キノピオ女Ｂ_gor_0001d810

# .rodata:0x7AD | 0x9D1D | size: 0x3
.obj gap_03_00009D1D_rodata, global
.hidden gap_03_00009D1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009D1D_rodata

# .rodata:0x7B0 | 0x9D20 | size: 0x5
.obj str_ババ_gor_0001d820, local
	.4byte 0x836F836F
	.byte 0x00
.endobj str_ババ_gor_0001d820

# .rodata:0x7B5 | 0x9D25 | size: 0x3
.obj gap_03_00009D25_rodata, global
.hidden gap_03_00009D25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009D25_rodata

# .rodata:0x7B8 | 0x9D28 | size: 0x9
.obj str_飛クッパ_gor_0001d828, local
	.4byte 0x94F2834E
	.4byte 0x83628370
	.byte 0x00
.endobj str_飛クッパ_gor_0001d828

# .rodata:0x7C1 | 0x9D31 | size: 0x3
.obj gap_03_00009D31_rodata, global
.hidden gap_03_00009D31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009D31_rodata

# .rodata:0x7C4 | 0x9D34 | size: 0x16
.obj str_BGM_EVT_STG3_AIRSHIP_gor_0001d834, local
	.string "BGM_EVT_STG3_AIRSHIP1"
.endobj str_BGM_EVT_STG3_AIRSHIP_gor_0001d834

# .rodata:0x7DA | 0x9D4A | size: 0x2
.obj gap_03_00009D4A_rodata, global
.hidden gap_03_00009D4A_rodata
	.2byte 0x0000
.endobj gap_03_00009D4A_rodata

# .rodata:0x7DC | 0x9D4C | size: 0x7
.obj str_bou_10_gor_0001d84c, local
	.string "bou_10"
.endobj str_bou_10_gor_0001d84c

# .rodata:0x7E3 | 0x9D53 | size: 0x1
.obj gap_03_00009D53_rodata, global
.hidden gap_03_00009D53_rodata
	.byte 0x00
.endobj gap_03_00009D53_rodata

# .rodata:0x7E4 | 0x9D54 | size: 0x6
.obj str_bou_9_gor_0001d854, local
	.string "bou_9"
.endobj str_bou_9_gor_0001d854

# .rodata:0x7EA | 0x9D5A | size: 0x2
.obj gap_03_00009D5A_rodata, global
.hidden gap_03_00009D5A_rodata
	.2byte 0x0000
.endobj gap_03_00009D5A_rodata

# .rodata:0x7EC | 0x9D5C | size: 0x6
.obj str_bou_7_gor_0001d85c, local
	.string "bou_7"
.endobj str_bou_7_gor_0001d85c

# .rodata:0x7F2 | 0x9D62 | size: 0x2
.obj gap_03_00009D62_rodata, global
.hidden gap_03_00009D62_rodata
	.2byte 0x0000
.endobj gap_03_00009D62_rodata

# .rodata:0x7F4 | 0x9D64 | size: 0x6
.obj str_bou_8_gor_0001d864, local
	.string "bou_8"
.endobj str_bou_8_gor_0001d864

# .rodata:0x7FA | 0x9D6A | size: 0x2
.obj gap_03_00009D6A_rodata, global
.hidden gap_03_00009D6A_rodata
	.2byte 0x0000
.endobj gap_03_00009D6A_rodata

# .rodata:0x7FC | 0x9D6C | size: 0x8
.obj str_h_bou_2_gor_0001d86c, local
	.string "h_bou_2"
.endobj str_h_bou_2_gor_0001d86c

# .rodata:0x804 | 0x9D74 | size: 0x8
.obj str_h_bou_4_gor_0001d874, local
	.string "h_bou_4"
.endobj str_h_bou_4_gor_0001d874

# .rodata:0x80C | 0x9D7C | size: 0xA
.obj str_gondora_1_gor_0001d87c, local
	.string "gondora_1"
.endobj str_gondora_1_gor_0001d87c

# .rodata:0x816 | 0x9D86 | size: 0x2
.obj gap_03_00009D86_rodata, global
.hidden gap_03_00009D86_rodata
	.2byte 0x0000
.endobj gap_03_00009D86_rodata

# .rodata:0x818 | 0x9D88 | size: 0x20
.obj str_SFX_STG3_AIR_SHIP_GO_gor_0001d888, local
	.string "SFX_STG3_AIR_SHIP_GONDOLA_MOVE1"
.endobj str_SFX_STG3_AIR_SHIP_GO_gor_0001d888

# .rodata:0x838 | 0x9DA8 | size: 0x9
.obj str_A_noriba_gor_0001d8a8, local
	.string "A_noriba"
.endobj str_A_noriba_gor_0001d8a8

# .rodata:0x841 | 0x9DB1 | size: 0x3
.obj gap_03_00009DB1_rodata, global
.hidden gap_03_00009DB1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009DB1_rodata

# .rodata:0x844 | 0x9DB4 | size: 0x7
.obj str_tou_20_gor_0001d8b4, local
	.string "tou_20"
.endobj str_tou_20_gor_0001d8b4

# .rodata:0x84B | 0x9DBB | size: 0x1
.obj gap_03_00009DBB_rodata, global
.hidden gap_03_00009DBB_rodata
	.byte 0x00
.endobj gap_03_00009DBB_rodata

# .rodata:0x84C | 0x9DBC | size: 0x6
.obj str_start_gor_0001d8bc, local
	.string "start"
.endobj str_start_gor_0001d8bc

# .rodata:0x852 | 0x9DC2 | size: 0x2
.obj gap_03_00009DC2_rodata, global
.hidden gap_03_00009DC2_rodata
	.2byte 0x0000
.endobj gap_03_00009DC2_rodata

# .rodata:0x854 | 0x9DC4 | size: 0x7
.obj str_tou_00_gor_0001d8c4, local
	.string "tou_00"
.endobj str_tou_00_gor_0001d8c4

# .rodata:0x85B | 0x9DCB | size: 0x1
.obj gap_03_00009DCB_rodata, global
.hidden gap_03_00009DCB_rodata
	.byte 0x00
.endobj gap_03_00009DCB_rodata

# .rodata:0x85C | 0x9DCC | size: 0x19
.obj str_SFX_STG3_AIR_SHIP_DR_gor_0001d8cc, local
	.string "SFX_STG3_AIR_SHIP_DRIVE2"
.endobj str_SFX_STG3_AIR_SHIP_DR_gor_0001d8cc

# .rodata:0x875 | 0x9DE5 | size: 0x3
.obj gap_03_00009DE5_rodata, global
.hidden gap_03_00009DE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009DE5_rodata

# .rodata:0x878 | 0x9DE8 | size: 0x9
.obj str_hikousen_gor_0001d8e8, local
	.string "hikousen"
.endobj str_hikousen_gor_0001d8e8

# .rodata:0x881 | 0x9DF1 | size: 0x3
.obj gap_03_00009DF1_rodata, global
.hidden gap_03_00009DF1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009DF1_rodata

# .rodata:0x884 | 0x9DF4 | size: 0x5
.obj str_hane_gor_0001d8f4, local
	.string "hane"
.endobj str_hane_gor_0001d8f4

# .rodata:0x889 | 0x9DF9 | size: 0x3
.obj gap_03_00009DF9_rodata, global
.hidden gap_03_00009DF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009DF9_rodata

# .rodata:0x88C | 0x9DFC | size: 0x7
.obj str_hako_2_gor_0001d8fc, local
	.string "hako_2"
.endobj str_hako_2_gor_0001d8fc

# .rodata:0x893 | 0x9E03 | size: 0x1
.obj gap_03_00009E03_rodata, global
.hidden gap_03_00009E03_rodata
	.byte 0x00
.endobj gap_03_00009E03_rodata

# .rodata:0x894 | 0x9E04 | size: 0xA
.obj str_gondora_2_gor_0001d904, local
	.string "gondora_2"
.endobj str_gondora_2_gor_0001d904

# .rodata:0x89E | 0x9E0E | size: 0x2
.obj gap_03_00009E0E_rodata, global
.hidden gap_03_00009E0E_rodata
	.2byte 0x0000
.endobj gap_03_00009E0E_rodata

# .rodata:0x8A0 | 0x9E10 | size: 0x19
.obj str_SFX_STG3_AIR_SHIP_DR_gor_0001d910, local
	.string "SFX_STG3_AIR_SHIP_DRIVE5"
.endobj str_SFX_STG3_AIR_SHIP_DR_gor_0001d910

# .rodata:0x8B9 | 0x9E29 | size: 0x3
.obj gap_03_00009E29_rodata, global
.hidden gap_03_00009E29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009E29_rodata

# .rodata:0x8BC | 0x9E2C | size: 0x19
.obj str_SFX_STG2_AIR_SHIP_DR_gor_0001d92c, local
	.string "SFX_STG2_AIR_SHIP_DRIVE1"
.endobj str_SFX_STG2_AIR_SHIP_DR_gor_0001d92c

# .rodata:0x8D5 | 0x9E45 | size: 0x3
.obj gap_03_00009E45_rodata, global
.hidden gap_03_00009E45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009E45_rodata

# .rodata:0x8D8 | 0x9E48 | size: 0xD
.obj str_OFF_d_kaiten_gor_0001d948, local
	.string "OFF_d_kaiten"
.endobj str_OFF_d_kaiten_gor_0001d948

# .rodata:0x8E5 | 0x9E55 | size: 0x3
.obj gap_03_00009E55_rodata, global
.hidden gap_03_00009E55_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009E55_rodata

# .rodata:0x8E8 | 0x9E58 | size: 0x4
.obj str_img_gor_0001d958, local
	.string "img"
.endobj str_img_gor_0001d958

# .rodata:0x8EC | 0x9E5C | size: 0x4
.obj str_ofs_gor_0001d95c, local
	.string "ofs"
.endobj str_ofs_gor_0001d95c

# .rodata:0x8F0 | 0x9E60 | size: 0x4
.obj str_A_1_gor_0001d960, local
	.string "A_1"
.endobj str_A_1_gor_0001d960

# .rodata:0x8F4 | 0x9E64 | size: 0x1B
.obj str_SFX_STG3_AIR_SHIP_RE_gor_0001d964, local
	.string "SFX_STG3_AIR_SHIP_REVERSE1"
.endobj str_SFX_STG3_AIR_SHIP_RE_gor_0001d964

# .rodata:0x90F | 0x9E7F | size: 0x1
.obj gap_03_00009E7F_rodata, global
.hidden gap_03_00009E7F_rodata
	.byte 0x00
.endobj gap_03_00009E7F_rodata

# .rodata:0x910 | 0x9E80 | size: 0x7
.obj str_hako_1_gor_0001d980, local
	.string "hako_1"
.endobj str_hako_1_gor_0001d980

# .rodata:0x917 | 0x9E87 | size: 0x1
.obj gap_03_00009E87_rodata, global
.hidden gap_03_00009E87_rodata
	.byte 0x00
.endobj gap_03_00009E87_rodata

# .rodata:0x918 | 0x9E88 | size: 0xE
.obj str_BGM_STG0_GOR1_gor_0001d988, local
	.string "BGM_STG0_GOR1"
.endobj str_BGM_STG0_GOR1_gor_0001d988

# .rodata:0x926 | 0x9E96 | size: 0x2
.obj gap_03_00009E96_rodata, global
.hidden gap_03_00009E96_rodata
	.2byte 0x0000
.endobj gap_03_00009E96_rodata

# .rodata:0x928 | 0x9E98 | size: 0xD
.obj str_kpa_stg4_000_gor_0001d998, local
	.string "kpa_stg4_000"
.endobj str_kpa_stg4_000_gor_0001d998

# .rodata:0x935 | 0x9EA5 | size: 0x3
.obj gap_03_00009EA5_rodata, global
.hidden gap_03_00009EA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009EA5_rodata

# .rodata:0x938 | 0x9EA8 | size: 0x18
.obj str_SFX_KUPPA_KAMEBABA_F_gor_0001d9a8, local
	.string "SFX_KUPPA_KAMEBABA_FLY1"
.endobj str_SFX_KUPPA_KAMEBABA_F_gor_0001d9a8

# .rodata:0x950 | 0x9EC0 | size: 0xD
.obj str_kpa_stg4_001_gor_0001d9c0, local
	.string "kpa_stg4_001"
.endobj str_kpa_stg4_001_gor_0001d9c0

# .rodata:0x95D | 0x9ECD | size: 0x3
.obj gap_03_00009ECD_rodata, global
.hidden gap_03_00009ECD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009ECD_rodata

# .rodata:0x960 | 0x9ED0 | size: 0xD
.obj str_kpa_stg4_002_gor_0001d9d0, local
	.string "kpa_stg4_002"
.endobj str_kpa_stg4_002_gor_0001d9d0

# .rodata:0x96D | 0x9EDD | size: 0x3
.obj gap_03_00009EDD_rodata, global
.hidden gap_03_00009EDD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009EDD_rodata

# .rodata:0x970 | 0x9EE0 | size: 0x1C
.obj str_SFX_FLD_NPC_PUKUPUKU_gor_0001d9e0, local
	.string "SFX_FLD_NPC_PUKUPUKUI_MOVE1"
.endobj str_SFX_FLD_NPC_PUKUPUKU_gor_0001d9e0

# .rodata:0x98C | 0x9EFC | size: 0x17
.obj str_SFX_KUPPA_PUKU_ESCAP_gor_0001d9fc, local
	.string "SFX_KUPPA_PUKU_ESCAPE1"
.endobj str_SFX_KUPPA_PUKU_ESCAP_gor_0001d9fc

# .rodata:0x9A3 | 0x9F13 | size: 0x1
.obj gap_03_00009F13_rodata, global
.hidden gap_03_00009F13_rodata
	.byte 0x00
.endobj gap_03_00009F13_rodata

# .rodata:0x9A4 | 0x9F14 | size: 0xD
.obj str_kpa_stg4_003_gor_0001da14, local
	.string "kpa_stg4_003"
.endobj str_kpa_stg4_003_gor_0001da14

# .rodata:0x9B1 | 0x9F21 | size: 0x3
.obj gap_03_00009F21_rodata, global
.hidden gap_03_00009F21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009F21_rodata

# .rodata:0x9B4 | 0x9F24 | size: 0xD
.obj str_kpa_stg4_004_gor_0001da24, local
	.string "kpa_stg4_004"
.endobj str_kpa_stg4_004_gor_0001da24

# .rodata:0x9C1 | 0x9F31 | size: 0x3
.obj gap_03_00009F31_rodata, global
.hidden gap_03_00009F31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009F31_rodata

# .rodata:0x9C4 | 0x9F34 | size: 0x18
.obj str_SFX_KUPPA_AIRSHIP_MO_gor_0001da34, local
	.string "SFX_KUPPA_AIRSHIP_MOVE1"
.endobj str_SFX_KUPPA_AIRSHIP_MO_gor_0001da34

# .rodata:0x9DC | 0x9F4C | size: 0x19
.obj str_SFX_VOICE_KOOPA_LAUG_gor_0001da4c, local
	.string "SFX_VOICE_KOOPA_LAUGH2_2"
.endobj str_SFX_VOICE_KOOPA_LAUG_gor_0001da4c

# .rodata:0x9F5 | 0x9F65 | size: 0x3
.obj gap_03_00009F65_rodata, global
.hidden gap_03_00009F65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009F65_rodata

# .rodata:0x9F8 | 0x9F68 | size: 0xD
.obj str_kpa_stg4_005_gor_0001da68, local
	.string "kpa_stg4_005"
.endobj str_kpa_stg4_005_gor_0001da68

# .rodata:0xA05 | 0x9F75 | size: 0x3
.obj gap_03_00009F75_rodata, global
.hidden gap_03_00009F75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009F75_rodata

# .rodata:0xA08 | 0x9F78 | size: 0x1A
.obj str_SFX_KUPPA_KAMEBABA_R_gor_0001da78, local
	.string "SFX_KUPPA_KAMEBABA_ROUND1"
.endobj str_SFX_KUPPA_KAMEBABA_R_gor_0001da78

# .rodata:0xA22 | 0x9F92 | size: 0x2
.obj gap_03_00009F92_rodata, global
.hidden gap_03_00009F92_rodata
	.2byte 0x0000
.endobj gap_03_00009F92_rodata

# .rodata:0xA24 | 0x9F94 | size: 0x6
.obj str_houki_gor_0001da94, local
	.string "houki"
.endobj str_houki_gor_0001da94

# .rodata:0xA2A | 0x9F9A | size: 0x2
.obj gap_03_00009F9A_rodata, global
.hidden gap_03_00009F9A_rodata
	.2byte 0x0000
.endobj gap_03_00009F9A_rodata

# .rodata:0xA2C | 0x9F9C | size: 0x4
.obj str_D_1_gor_0001da9c, local
	.string "D_1"
.endobj str_D_1_gor_0001da9c

# .rodata:0xA30 | 0x9FA0 | size: 0x19
.obj str_SFX_KUPPA_KAMEBABA_F_gor_0001daa0, local
	.string "SFX_KUPPA_KAMEBABA_FALL1"
.endobj str_SFX_KUPPA_KAMEBABA_F_gor_0001daa0

# .rodata:0xA49 | 0x9FB9 | size: 0x3
.obj gap_03_00009FB9_rodata, global
.hidden gap_03_00009FB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009FB9_rodata

# .rodata:0xA4C | 0x9FBC | size: 0x19
.obj str_SFX_KUPPA_KAMEBABA_D_gor_0001dabc, local
	.string "SFX_KUPPA_KAMEBABA_DOWN1"
.endobj str_SFX_KUPPA_KAMEBABA_D_gor_0001dabc

# .rodata:0xA65 | 0x9FD5 | size: 0x3
.obj gap_03_00009FD5_rodata, global
.hidden gap_03_00009FD5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009FD5_rodata

# .rodata:0xA68 | 0x9FD8 | size: 0x4
.obj str_D_2_gor_0001dad8, local
	.string "D_2"
.endobj str_D_2_gor_0001dad8

# .rodata:0xA6C | 0x9FDC | size: 0x4
.obj str_P_1_gor_0001dadc, local
	.string "P_1"
.endobj str_P_1_gor_0001dadc

# .rodata:0xA70 | 0x9FE0 | size: 0x4
.obj str_T_6_gor_0001dae0, local
	.string "T_6"
.endobj str_T_6_gor_0001dae0

# .rodata:0xA74 | 0x9FE4 | size: 0xD
.obj str_kpa_stg4_006_gor_0001dae4, local
	.string "kpa_stg4_006"
.endobj str_kpa_stg4_006_gor_0001dae4

# .rodata:0xA81 | 0x9FF1 | size: 0x3
.obj gap_03_00009FF1_rodata, global
.hidden gap_03_00009FF1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009FF1_rodata

# .rodata:0xA84 | 0x9FF4 | size: 0xF
.obj str_BGM_EVT_KUPPA1_gor_0001daf4, local
	.string "BGM_EVT_KUPPA1"
.endobj str_BGM_EVT_KUPPA1_gor_0001daf4

# .rodata:0xA93 | 0xA003 | size: 0x1
.obj gap_03_0000A003_rodata, global
.hidden gap_03_0000A003_rodata
	.byte 0x00
.endobj gap_03_0000A003_rodata

# .rodata:0xA94 | 0xA004 | size: 0xE
.obj str_ENV_STG0_GOR5_gor_0001db04, local
	.string "ENV_STG0_GOR5"
.endobj str_ENV_STG0_GOR5_gor_0001db04

# .rodata:0xAA2 | 0xA012 | size: 0x2
.obj gap_03_0000A012_rodata, global
.hidden gap_03_0000A012_rodata
	.2byte 0x0000
.endobj gap_03_0000A012_rodata

# .rodata:0xAA4 | 0xA014 | size: 0x10
.obj str_hikousen_return_gor_0001db14, local
	.string "hikousen_return"
.endobj str_hikousen_return_gor_0001db14

# .rodata:0xAB4 | 0xA024 | size: 0xA
.obj str_mobj_save_gor_0001db24, local
	.string "mobj_save"
.endobj str_mobj_save_gor_0001db24

# .rodata:0xABE | 0xA02E | size: 0x2
.obj gap_03_0000A02E_rodata, global
.hidden gap_03_0000A02E_rodata
	.2byte 0x0000
.endobj gap_03_0000A02E_rodata

# .rodata:0xAC0 | 0xA030 | size: 0x9
.obj str_kururin1_gor_0001db30, local
	.string "kururin1"
.endobj str_kururin1_gor_0001db30

# .rodata:0xAC9 | 0xA039 | size: 0x3
.obj gap_03_0000A039_rodata, global
.hidden gap_03_0000A039_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000A039_rodata

# .rodata:0xACC | 0xA03C | size: 0x9
.obj str_S_ground_gor_0001db3c, local
	.string "S_ground"
.endobj str_S_ground_gor_0001db3c

# .rodata:0xAD5 | 0xA045 | size: 0x3
.obj gap_03_0000A045_rodata, global
.hidden gap_03_0000A045_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000A045_rodata

# .rodata:0xAD8 | 0xA048 | size: 0x8
.obj str_item_00_gor_0001db48, local
	.string "item_00"
.endobj str_item_00_gor_0001db48

# .rodata:0xAE0 | 0xA050 | size: 0x7
.obj str_S_bero_gor_0001db50, local
	.string "S_bero"
.endobj str_S_bero_gor_0001db50

# .rodata:0xAE7 | 0xA057 | size: 0x1
.obj gap_03_0000A057_rodata, global
.hidden gap_03_0000A057_rodata
	.byte 0x00
.endobj gap_03_0000A057_rodata

# .rodata:0xAE8 | 0xA058 | size: 0xB
.obj str_c_kamek_be_gor_0001db58, local
	.string "c_kamek_be"
.endobj str_c_kamek_be_gor_0001db58

# .rodata:0xAF3 | 0xA063 | size: 0x1
.obj gap_03_0000A063_rodata, global
.hidden gap_03_0000A063_rodata
	.byte 0x00
.endobj gap_03_0000A063_rodata

# .rodata:0xAF4 | 0xA064 | size: 0x4
.obj str_H_1_gor_0001db64, local
	.string "H_1"
.endobj str_H_1_gor_0001db64

# .rodata:0xAF8 | 0xA068 | size: 0x8
.obj str_train_2_gor_0001db68, local
	.string "train_2"
.endobj str_train_2_gor_0001db68

# .rodata:0xB00 | 0xA070 | size: 0x4
.obj float_15_gor_0001db70, local
	.float 15
.endobj float_15_gor_0001db70

# .rodata:0xB04 | 0xA074 | size: 0x4
.obj float_1p8_gor_0001db74, local
	.float 1.8
.endobj float_1p8_gor_0001db74

# .rodata:0xB08 | 0xA078 | size: 0x8
.obj double_to_int_mask_gor_0001db78, local
	.double 4503599627370496
.endobj double_to_int_mask_gor_0001db78

# 0x0003ADC8..0x000406D8 | size: 0x5910
.data
.balign 8

# .data:0x0 | 0x3ADC8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x3ADD0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3ADD4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x3ADD8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3ADDC | size: 0x4
.obj gap_04_0003ADDC_data, global
.hidden gap_04_0003ADDC_data
	.4byte 0x00000000
.endobj gap_04_0003ADDC_data

# .data:0x18 | 0x3ADE0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x3ADE8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3ADEC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x3ADF0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x3ADF8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3ADFC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x3AE00 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3AE04 | size: 0x4
.obj gap_04_0003AE04_data, global
.hidden gap_04_0003AE04_data
	.4byte 0x00000000
.endobj gap_04_0003AE04_data

# .data:0x40 | 0x3AE08 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x3AE10 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x3AE14 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x3AE18 | size: 0x1D0
.obj sharinDt, local
	.4byte str_sha_1_1_gor_0001d070
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_1_2_gor_0001d078
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_1_3_gor_0001d080
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_1_4_gor_0001d088
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte str_sha_1_5_gor_0001d090
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte str_sha_2_1_gor_0001d098
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_2_2_gor_0001d0a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_2_3_gor_0001d0a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_3_1_gor_0001d0b0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_3_2_gor_0001d0b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_3_3_gor_0001d0c0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_4_1_gor_0001d0c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_4_2_gor_0001d0d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_4_3_gor_0001d0d8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_5_1_gor_0001d0e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_5_2_gor_0001d0e8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_5_3_gor_0001d0f0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_6_1_gor_0001d0f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_6_2_gor_0001d100
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_6_3_gor_0001d108
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_1_1_c_gor_0001d110
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7680
	.4byte str_sha_1_2_c_gor_0001d11c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7680
	.4byte str_sha_1_3_c_gor_0001d128
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xF24A7680
	.4byte str_sha_1_4_c_gor_0001d134
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24A7680
	.4byte str_sha_1_5_c_gor_0001d140
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24A7680
	.4byte str_sha_6_1_c_gor_0001d14c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_6_2_c_gor_0001d158
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_6_3_c_gor_0001d164
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj sharinDt

# .data:0x220 | 0x3AFE8 | size: 0x15C
.obj evt_sharin_main, local
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00010022
	.4byte 0xFE363C81
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24ADA0F
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24AF70F
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24B5694
	.4byte 0x00000031
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C82
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xFD050F80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xFD050F81
	.4byte 0x00000031
	.4byte 0x0002003D
	.4byte 0xFE363C89
	.4byte 0xFE363C8B
	.4byte 0x0002003C
	.4byte 0xFE363C89
	.4byte 0xF24B5FAE
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xFE363C89
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C8C
	.4byte 0xFE363C8A
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sharin_main

# .data:0x37C | 0x3B144 | size: 0x4C
.obj evt_sharin, local
	.4byte 0x0001003E
	.4byte sharinDt
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00040042
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_sharin_main
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sharin

# .data:0x3C8 | 0x3B190 | size: 0xB4
.obj clankDt, local
	.4byte str_bou_1_gor_0001d170
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0xF24A7E80
	.4byte str_bou_2_gor_0001d178
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24ABC80
	.4byte 0xF24A7E80
	.4byte str_bou_3_gor_0001d180
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0xF24A7E80
	.4byte str_bou_4_gor_0001d188
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24ABC80
	.4byte 0xF24A7E80
	.4byte str_bou_1_c_gor_0001d190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0xF24A7680
	.4byte str_bou_2_c_gor_0001d198
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24ABC80
	.4byte 0xF24A7680
	.4byte str_bou_3_c_gor_0001d1a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0xF24A7680
	.4byte str_bou_4_c_gor_0001d1a8
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24ABC80
	.4byte 0xF24A7680
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj clankDt

# .data:0x47C | 0x3B244 | size: 0x1A0
.obj evt_clank_main, local
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00010022
	.4byte 0xFE363C81
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24ADA0F
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24AF70F
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24B5694
	.4byte 0x00000031
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C82
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xFD050F80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xFD050F81
	.4byte 0x00000031
	.4byte 0x0002003D
	.4byte 0xFE363C89
	.4byte 0xFE363C8B
	.4byte 0x0002003C
	.4byte 0xFE363C89
	.4byte 0xF24B5FAE
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xFE363C89
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C8C
	.4byte 0xFE363C8A
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0002003C
	.4byte 0xFE363C8D
	.4byte 0xFE363C83
	.4byte 0x0002003C
	.4byte 0xFE363C8E
	.4byte 0xFE363C83
	.4byte 0x0002003B
	.4byte 0xFE363C8E
	.4byte 0xFE363C83
	.4byte 0x0002003C
	.4byte 0xFE363C8E
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C8E
	.4byte 0xFE363C8D
	.4byte 0xF24A7A80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_clank_main

# .data:0x61C | 0x3B3E4 | size: 0x54
.obj evt_clank, local
	.4byte 0x0001003E
	.4byte clankDt
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00040042
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0001003F
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_clank_main
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_clank

# .data:0x670 | 0x3B438 | size: 0x144
.obj evt_bg, local
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0xF256FA80
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xF2637A80
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xF23DFA80
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xF2637A80
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C8B
	.4byte 0xF26FFA80
	.4byte 0x0002003B
	.4byte 0xFE363C8B
	.4byte 0xF2957A80
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8B
	.4byte 0xF224FA80
	.4byte 0x0002003A
	.4byte 0xFE363C8B
	.4byte 0xF2957A80
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_jimen_gor_0001d1b0
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_yama_gor_0001d1b8
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_iwayama_gor_0001d1c0
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_bg

# .data:0x7B4 | 0x3B57C | size: 0x160
.obj evt_hoshi, local
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xFD050F80
	.4byte 0x0002003D
	.4byte 0xFE363C89
	.4byte 0xF24AF280
	.4byte 0x0002003C
	.4byte 0xFE363C89
	.4byte 0xF24B5FAE
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xFE363C89
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_right_gor_0001d1c8
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_left_gor_0001d1d4
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_center_gor_0001d1e0
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_right_c_gor_0001d1ec
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_left_c_gor_0001d1fc
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_center_c_gor_0001d208
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_hoshi

# .data:0x914 | 0x3B6DC | size: 0x3D0
.obj hom_10_evt_resha_start, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF840697B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ranpu_gor_0001d218
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_TRAIN_BELL1_gor_0001d220
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_TRAIN_BELL1_gor_0001d220
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_gor_0001d238
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_gor_0001d240
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_gor_0001d258
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000153
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_gor_0001d260
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_gor_0001d278
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_gor_0001d294
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_gor_0001d29c
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_gor_0001d258
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_gor_0001d2b4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_gor_0001d238
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_gor_0001d2b4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFA24
	.4byte 0x00004E20
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A3E80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005D
	.4byte evt_sub_stopwatch
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0003005B
	.4byte evt_sub_get_stopwatch
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0x000005DC
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFD050F81
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFD050F81
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_start

# .data:0xCE4 | 0x3BAAC | size: 0x40C
.obj hom_10_evt_resha_start2, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF840697B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ranpu_gor_0001d218
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_TRAIN_BELL1_gor_0001d220
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_TRAIN_BELL1_gor_0001d220
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_gor_0001d238
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_gor_0001d240
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_gor_0001d258
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_gor_0001d2bc
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_gor_0001d294
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_gor_0001d29c
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_gor_0001d258
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_gor_0001d2b4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_gor_0001d238
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_gor_0001d2b4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_gor_0001d294
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_gor_0001d2b4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000005DC
	.4byte 0x00004E20
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24AB680
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005D
	.4byte evt_sub_stopwatch
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0003005B
	.4byte evt_sub_get_stopwatch
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0x000005DC
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFD050F81
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFD050F81
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_start2

# .data:0x10F0 | 0x3BEB8 | size: 0x2C
.obj hom_10_evt_resha_start3, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A3E80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A3E80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_start3

# .data:0x111C | 0x3BEE4 | size: 0x2C
.obj hom_10_evt_resha_start4, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24AB680
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24AB680
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_start4

# .data:0x1148 | 0x3BF10 | size: 0x168
.obj stop_1, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF2795A80
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_gor_0001d238
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_gor_0001d2d8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_gor_0001d258
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_gor_0001d2f0
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_gor_0001d294
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_gor_0001d308
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000BB8
	.4byte 0x00000000
	.4byte 0x00002710
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_gor_0001d2b4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C82
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFD050F80
	.4byte 0xF24A7680
	.4byte 0x0002003C
	.4byte 0xFD050F81
	.4byte 0xF24A7680
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj stop_1

# .data:0x12B0 | 0x3C078 | size: 0x168
.obj stop_2, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF21B9A80
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_gor_0001d238
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_gor_0001d2d8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_gor_0001d258
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_gor_0001d320
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_gor_0001d294
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_gor_0001d308
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFF448
	.4byte 0x00000000
	.4byte 0x00002710
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_gor_0001d2b4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C82
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFD050F80
	.4byte 0xF24A7680
	.4byte 0x0002003C
	.4byte 0xFD050F81
	.4byte 0xF24A7680
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj stop_2

# .data:0x1418 | 0x3C1E0 | size: 0x90
.obj hom_10_evt_resha_stop, local
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_gor_0001d294
	.4byte 0x0001005C
	.4byte stop_1
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_gor_0001d238
	.4byte 0x0001005C
	.4byte stop_2
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_gor_0001d258
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte stop_1
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte stop_2
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_stop

# .data:0x14A8 | 0x3C270 | size: 0x84
.obj evt_ramp, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte ramp_r
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ranpu_gor_0001d218
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ranpu_c_gor_0001d33c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ramp

# .data:0x152C | 0x3C2F4 | size: 0x3C
.obj pika_tbl, local
	.4byte str_pika_1_1_gor_0001d344
	.4byte str_pika_1_2_gor_0001d350
	.4byte str_pika_1_3_gor_0001d35c
	.4byte str_pika_1_4_gor_0001d368
	.4byte str_pika_2_gor_0001d374
	.4byte str_pika_3_gor_0001d37c
	.4byte str_pika_4_gor_0001d384
	.4byte str_pika_5_gor_0001d38c
	.4byte str_pika_6_gor_0001d394
	.4byte str_pika_1_1_c_gor_0001d39c
	.4byte str_pika_1_2_c_gor_0001d3a8
	.4byte str_pika_1_3_c_gor_0001d3b4
	.4byte str_pika_1_4_c_gor_0001d3c0
	.4byte str_pika_6_c_gor_0001d3cc
	.4byte 0x00000000
.endobj pika_tbl

# .data:0x1568 | 0x3C330 | size: 0x28
.obj pika_tbl_rsh_06, local
	.4byte str_pika_1_1_gor_0001d344
	.4byte str_pika_1_2_gor_0001d350
	.4byte str_pika_1_3_gor_0001d35c
	.4byte str_pika_1_4_gor_0001d368
	.4byte str_pika_2_gor_0001d374
	.4byte str_pika_3_gor_0001d37c
	.4byte str_pika_4_gor_0001d384
	.4byte str_pika_5_gor_0001d38c
	.4byte str_pika_6_gor_0001d394
	.4byte 0x00000000
.endobj pika_tbl_rsh_06

# .data:0x1590 | 0x3C358 | size: 0x198
.obj hom_10_evt_resha_sub, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A7A80
	.4byte 0x0001005C
	.4byte evt_sharin
	.4byte 0x0001005C
	.4byte evt_clank
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_10_gor_0001d3d8
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_11_gor_0001d3e0
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_12_gor_0001d3e8
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_rsh_06_a_gor_0001d3f0
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_bg
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_hoshi
	.4byte 0x0001005C
	.4byte evt_ramp
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte resha_tev
	.4byte 0x0001003E
	.4byte pika_tbl
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_rsh_06_a_gor_0001d3f0
	.4byte 0x0001003E
	.4byte pika_tbl_rsh_06
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001003F
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x10000000
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_sub

# .data:0x1728 | 0x3C4F0 | size: 0x8C
.obj hom_10_evt_resha_right, local
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_sub
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000D
	.4byte 0xFE363C80
	.4byte str_rsh_06_a_gor_0001d3f0
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_7_gor_0001d3fc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_8_gor_0001d404
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_6_gor_0001d40c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_7_gor_0001d418
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_right

# .data:0x17B4 | 0x3C57C | size: 0x70
.obj hom_10_evt_resha_left, local
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_sub
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_1_gor_0001d424
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_6_gor_0001d42c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_1_gor_0001d434
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_5_gor_0001d440
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_left

# .data:0x1824 | 0x3C5EC | size: 0x230
.obj hom_10_init_evt, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG6_RSH2_gor_0001d44c
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_right
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_start3
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFE0C
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_gor_0001d45c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_1_gor_0001d434
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_2_gor_0001d464
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_3_gor_0001d470
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_4_gor_0001d47c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_5_gor_0001d440
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_left
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_start4
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_gor_0001d2b4
	.4byte 0xFFFFFA24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_cam_letter_box_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0x0000012C
	.4byte 0x00000578
	.4byte 0xFE363C80
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C81
	.4byte 0x0000012C
	.4byte 0x00000578
	.4byte 0xFE363C81
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00001F40
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_rsh_02_a_gor_0001d488
	.4byte str_nidome_gor_0001d494
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_init_evt

# .data:0x1A54 | 0x3C81C | size: 0x470
.obj evt_train, local
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_sub_get_dist
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0xFE363C8A
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN_SLIDE1_gor_0001d49c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_tobira_gor_0001d4b4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_n_bero_gor_0001d4bc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE98
	.4byte 0x00000046
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE8E
	.4byte 0x00000012
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFEA2
	.4byte 0x00000016
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0xFFFFFE98
	.4byte 0x0000001A
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT_SLIDE1_gor_0001d4c4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_tobira_gor_0001d4b4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ジュゲムＡ_gor_0001d4e8
	.4byte 0x00008000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000029C
	.4byte 0x0000005F
	.4byte 0x00000122
	.4byte 0x00000169
	.4byte 0x0000005F
	.4byte 0x00000079
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_train_07_gor_0001d4f4
	.4byte 0x00000000
	.4byte str_駅員_gor_0001d500
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG4_TRAIN1_gor_0001d508
	.4byte 0x0001005C
	.4byte hom_10_evt_resha_start
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000019A
	.4byte 0x0000005A
	.4byte 0x0000023B
	.4byte 0x0000019A
	.4byte 0x0000005A
	.4byte 0x00000079
	.4byte 0x000007D0
	.4byte 0x0000000C
	.4byte 0x0001000A
	.4byte 0x0000251C
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000159
	.4byte 0x00020032
	.4byte 0xF8406900
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697E
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE04E6
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406905
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406904
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697C
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000011A
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_sys_01_gor_0001d51c
	.4byte str_stg_6_gor_0001d524
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_rsh_02_a_gor_0001d488
	.4byte str_nidome_start_gor_0001d52c
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_train

# .data:0x1EC4 | 0x3CC8C | size: 0x47C
.obj evt_train2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE98
	.4byte 0x000000E8
	.4byte 0x0000025B
	.4byte 0xFFFFFE98
	.4byte 0x00000089
	.4byte 0x0000003E
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_駅員_gor_0001d500
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_駅員_gor_0001d500
	.4byte 0xFFFFFE70
	.4byte 0x00000050
	.4byte 0x00000064
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_駅員_gor_0001d500
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFEA2
	.4byte 0x00000050
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFE8E
	.4byte 0x00000050
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0xFFFFFE98
	.4byte 0x00000050
	.4byte 0x00000014
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN_SLIDE1_gor_0001d49c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_tobira_gor_0001d4b4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFEA7
	.4byte 0x00000055
	.4byte 0xF24BBA80
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFEB6
	.4byte 0x00000064
	.4byte 0xF24BBA80
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT_SLIDE1_gor_0001d4c4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_tobira_gor_0001d4b4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000159
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000159
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF8406905
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406904
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697D
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000015A
	.4byte 0x0001005C
	.4byte peach_mail
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_train2

# .data:0x2340 | 0x3D108 | size: 0x3AC
.obj peach_mail, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFFFFFEED
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_gor_0001d53c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_MAIL_RECEPTIO_gor_0001d554
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_gor_0001d56c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte evt_sub_mail_vibration
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFDD
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_gor_04_mail6_00_gor_0001d570
	.4byte 0x0001005B
	.4byte evt_mario_balloon_bikkuri
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_key_get_buttontrg
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000100
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_mario_balloon_off
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MAIL_RECEPTION1_gor_0001d580
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_rumble_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_9_gor_0001d594
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MAIL_RECEPTION2_gor_0001d59c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_10_gor_0001d5b0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFEC
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_mail6_01_gor_0001d5b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_gor_04_mail6_02_gor_0001d5c8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gor_0001d5d8
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000015A
	.4byte 0x0002005B
	.4byte evt_pouch_receive_mail
	.4byte 0x00000005
	.4byte 0x0002005B
	.4byte evt_pouch_open_mail
	.4byte 0x00000005
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_mail

# .data:0x26EC | 0x3D4B4 | size: 0x12C
.obj bero_entry_data, local
	.4byte str_s_bero_gor_0001d5e0
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_gor_03_gor_0001d5e8
	.4byte str_n_bero_gor_0001d4bc
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_1_gor_0001d5f0
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_dokan_h00_gor_0001d5f8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_dokan_h00_gor_0001d5f8
	.4byte 0x10020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_1_gor_0001d5f0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_n_bero_gor_0001d4bc
	.4byte 0x00010008
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_rsh_01_a_gor_0001d604
	.4byte str_s_bero_gor_0001d5e0
	.4byte 0x00010001
	.4byte str_n_1_door_close_gor_0001d610
	.4byte str_n_1_door_open_gor_0001d620
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

# .data:0x2818 | 0x3D5E0 | size: 0x14
.obj hikosenkakari_init, local
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hikosenkakari_init

# .data:0x282C | 0x3D5F4 | size: 0x40
.obj hikosenkakari_init_ship, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0x0000013B
	.4byte 0x00000000
	.4byte 0x000000A0
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_tousenbo_gor_0001d630
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hikosenkakari_init_ship

# .data:0x286C | 0x3D634 | size: 0x34C
.obj hikosenkakari_talk, local
	.4byte 0x00020018
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_hikou_06_gor_0001d63c
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_hikou_00_gor_0001d64c
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_hikou_01_gor_0001d658
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_hikou_04_gor_0001d664
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000034
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_hikou_05_gor_0001d670
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_C_3_gor_0001d67c
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_mario_get_dispdir
	.4byte 0xFE363C8A
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0x000000B4
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00000020
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_airship_gor_0001d684
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte 0xFE363C8A
	.4byte 0x00000034
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_item_delete
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gor_0001d5d8
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_hikou_02_gor_0001d68c
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_gor_0001d648
	.4byte 0x40000020
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_gor_0001d648
	.4byte 0x0000013B
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x000000EB
	.4byte 0x0000008C
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0x000000C3
	.4byte 0x0000008C
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x0000011D
	.4byte 0x0000008C
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_tousenbo_gor_0001d630
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0001000B
	.4byte 0xFAA2B581
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_hikou_03_gor_0001d698
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hikosenkakari_talk

# .data:0x2BB8 | 0x3D980 | size: 0x70
.obj ekiin_init, local
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_resha_return_gor_0001d6a4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_gor_0001d648
	.4byte 0xFFFFFE70
	.4byte 0x00000050
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_n_bero_gor_0001d4bc
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_gor_0001d648
	.4byte 0xFFFFFE70
	.4byte 0x00000050
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ekiin_init

# .data:0x2C28 | 0x3D9F0 | size: 0x2F0
.obj ekiin_talk, local
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_resha_return_gor_0001d6a4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_train_06_gor_0001d6b4
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_n_bero_gor_0001d4bc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_train_06_gor_0001d6b4
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_train_00_gor_0001d6c0
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_train_01_gor_0001d6cc
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_train_03_gor_0001d6d8
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000035
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_train_05_gor_0001d6e4
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_C_3_gor_0001d67c
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_mario_get_dispdir
	.4byte 0xFE363C8A
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0x000000B4
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00000020
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_train_gor_0001d2b4
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte 0xFE363C8A
	.4byte 0x00000035
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_item_delete
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gor_0001d5d8
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_train_04_gor_0001d6f0
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_gor_0001d648
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_gor_0001d648
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFFFFFEA2
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_gor_0001d648
	.4byte 0xFFFFFE7A
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_gor_0001d648
	.4byte 0xFFFFFEC0
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_gor_0001d648
	.4byte str_mario_gor_0001d6fc
	.4byte 0x0001005E
	.4byte evt_train
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_train_02_gor_0001d704
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ekiin_talk

# .data:0x2F18 | 0x3DCE0 | size: 0x34
.obj jugemu_a_init, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000D7
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_gor_0001d648
	.4byte 0xFFFFFFB0
	.4byte 0x00000050
	.4byte 0x00000055
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jugemu_a_init

# .data:0x2F4C | 0x3DD14 | size: 0x110
.obj jugemu_a_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_000_gor_0001d710
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00010026
	.4byte 0x000000A4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_001_gor_0001d71c
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00010026
	.4byte 0x000000D7
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_002_gor_0001d728
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00010026
	.4byte 0x00000105
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_003_gor_0001d734
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00010026
	.4byte 0x00000153
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_004_gor_0001d740
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00010026
	.4byte 0x00000175
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_005_gor_0001d74c
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00010026
	.4byte 0x00000191
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_006_gor_0001d758
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_007_gor_0001d764
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jugemu_a_talk

# .data:0x305C | 0x3DE24 | size: 0x20
.obj kinopiko_b_init, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_gor_0001d648
	.4byte 0xFFFFFDC1
	.4byte 0x00000050
	.4byte 0x00000078
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kinopiko_b_init

# .data:0x307C | 0x3DE44 | size: 0x110
.obj kinopiko_b_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_008_gor_0001d770
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00010026
	.4byte 0x000000A4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_009_gor_0001d77c
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00010026
	.4byte 0x000000D7
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_010_gor_0001d788
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00010026
	.4byte 0x00000105
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_011_gor_0001d794
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00010026
	.4byte 0x00000153
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_012_gor_0001d7a0
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00010026
	.4byte 0x00000175
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_013_gor_0001d7ac
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00010026
	.4byte 0x00000191
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_014_gor_0001d7b8
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_04_015_gor_0001d7c4
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kinopiko_b_talk

# .data:0x318C | 0x3DF54 | size: 0x1C
.obj baba_init, local
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_gor_0001d648
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj baba_init

# .data:0x31A8 | 0x3DF70 | size: 0x1C
.obj hkoopa_init, local
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_gor_0001d648
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hkoopa_init

# .data:0x31C4 | 0x3DF8C | size: 0x48
.obj luigi_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000153
	.4byte 0x00000174
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_gor_0001d648
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x0003005B
	.4byte evt_npc_set_ry_lr
	.4byte str_me_gor_0001d648
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj luigi_init

# .data:0x320C | 0x3DFD4 | size: 0x10
.obj luigi_talk, local
	.4byte 0x0001005E
	.4byte luigi_gor_first_talk_9_data_524
	.4byte 0x00000002
	.4byte 0x00000001
.endobj luigi_talk

# .data:0x321C | 0x3DFE4 | size: 0xB8
.obj luigiEnt, local
	.4byte str_ルイージ_gor_0001d7d0
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte luigi_init
	.4byte 0x00000000
	.4byte luigi_talk
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
.endobj luigiEnt

# .data:0x32D4 | 0x3E09C | size: 0x78
.obj luigi_npcEnt, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000153
	.4byte 0x00000174
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ルイージ_gor_0001d7d0
	.4byte str_c_luigi_gor_0001d7dc
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ルイージ_gor_0001d7d0
	.4byte str_ルイージ_gor_0001d7d0
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte luigiEnt
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ス・クリーミ_gor_0001d7e4
	.4byte str_c_lp_moa_gor_0001d7f4
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ス・クリーミ_gor_0001d7e4
	.4byte str_ス・クリーミ_gor_0001d7e4
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte screamEnt
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj luigi_npcEnt

# .data:0x334C | 0x3E114 | size: 0x30
.obj scream_init, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_gor_0001d648
	.4byte 0x00000069
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x0003005B
	.4byte evt_npc_set_ry_lr
	.4byte str_me_gor_0001d648
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj scream_init

# .data:0x337C | 0x3E144 | size: 0x20
.obj scream_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_luigi_npc_05_gor_0001d800
	.4byte 0x00000000
	.4byte str_me_gor_0001d648
	.4byte 0x00000002
	.4byte 0x00000001
.endobj scream_talk

# .data:0x339C | 0x3E164 | size: 0xB8
.obj screamEnt, local
	.4byte str_ス・クリーミ_gor_0001d7e4
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte scream_init
	.4byte 0x00000000
	.4byte scream_talk
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
.endobj screamEnt

# .data:0x3454 | 0x3E21C | size: 0x284
.obj npcEnt, local
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte hikosenkakari_init
	.4byte 0x00000000
	.4byte hikosenkakari_talk
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
	.4byte str_駅員_gor_0001d500
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte ekiin_init
	.4byte 0x00000000
	.4byte ekiin_talk
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
	.4byte str_ジュゲムＡ_gor_0001d4e8
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte jugemu_a_init
	.4byte 0x00000000
	.4byte jugemu_a_talk
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
	.4byte str_キノピオ女Ｂ_gor_0001d810
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte kinopiko_b_init
	.4byte 0x00000000
	.4byte kinopiko_b_talk
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
	.4byte str_ババ_gor_0001d820
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte baba_init
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
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte hkoopa_init
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
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npcEnt

# .data:0x36D8 | 0x3E4A0 | size: 0x380
.obj evt_hikousen, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG3_AIRSHIP_gor_0001d834
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam_ctrl_onoff
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_bou_10_gor_0001d84c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_bou_9_gor_0001d854
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_bou_7_gor_0001d85c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_bou_8_gor_0001d864
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_h_bou_2_gor_0001d86c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_h_bou_4_gor_0001d874
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_gondora_1_gor_0001d87c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_AIR_SHIP_GO_gor_0001d888
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C86
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_noriba_gor_0001d8a8
	.4byte str_gondora_1_gor_0001d87c
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_gondora_1_gor_0001d87c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_noriba_gor_0001d8a8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_gondora_1_gor_0001d87c
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C86
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_gondora_1_gor_0001d87c
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000007F
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_20_gor_0001d8b4
	.4byte str_start_gor_0001d8bc
	.4byte 0x00000020
	.4byte 0x0001000A
	.4byte 0x00002710
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_00_gor_0001d8c4
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x00020034
	.4byte 0xFD050F82
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F83
	.4byte 0xF24A7A80
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG3_AIR_SHIP_DR_gor_0001d8cc
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x00007530
	.4byte 0x00003A98
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F82
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x00002710
	.4byte 0x00003A98
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F83
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_hikousen_gor_0001d8e8
	.4byte 0xFD050F82
	.4byte 0xFD050F83
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_hikousen

# .data:0x3A58 | 0x3E820 | size: 0x184
.obj evt_wing, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000064
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000C
	.4byte 0xFFFFFFF6
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x0000000B
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hane_gor_0001d8f4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000C
	.4byte 0x0000000A
	.4byte 0xFFFFFFF6
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x0000000B
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hane_gor_0001d8f4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000C
	.4byte 0xFFFFFFF6
	.4byte 0x0000000A
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001F
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hane_gor_0001d8f4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000C
	.4byte 0x0000000A
	.4byte 0xFFFFFFF6
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001F
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hane_gor_0001d8f4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_wing

# .data:0x3BDC | 0x3E9A4 | size: 0x7A8
.obj evt_hikousen_return, local
	.4byte 0x0001005C
	.4byte hikosenkakari_init_ship
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_bgmode_on
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_gondora_1_gor_0001d87c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_hako_2_gor_0001d8fc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_gondora_2_gor_0001d904
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000001BE
	.4byte 0x000000B5
	.4byte 0x00000292
	.4byte 0x000001BE
	.4byte 0x00000056
	.4byte 0xFFFFFF8B
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG3_AIR_SHIP_DR_gor_0001d910
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam_letter_box_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F82
	.4byte 0xF2795A80
	.4byte 0x00020034
	.4byte 0xFD050F83
	.4byte 0xF25A1A80
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_hikousen_gor_0001d8e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_AIR_SHIP_DR_gor_0001d92c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x00001D4C
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000FA0
	.4byte 0x00000000
	.4byte 0x00001D4C
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x00020034
	.4byte 0xFD050F82
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00001D4C
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x00020032
	.4byte 0xFD050F83
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_hikousen_gor_0001d8e8
	.4byte 0xFD050F82
	.4byte 0xFD050F83
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hikousen_gor_0001d8e8
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_kaiten_gor_0001d948
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_gor_0001d958
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_gor_0001d958
	.4byte str_OFF_d_kaiten_gor_0001d948
	.4byte 0x0002005B
	.4byte evt_offscreen_entry
	.4byte str_ofs_gor_0001d95c
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte str_hikousen_gor_0001d8e8
	.4byte str_ofs_gor_0001d95c
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_gondora_1_gor_0001d87c
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_gondora_2_gor_0001d904
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_gor_0001d958
	.4byte 0x00000000
	.4byte str_ofs_gor_0001d95c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_gor_0001d958
	.4byte 0x00000001
	.4byte str_ofs_gor_0001d95c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_gor_0001d958
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_gor_0001d958
	.4byte str_A_1_gor_0001d960
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_hikousen_gor_0001d8e8
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG3_AIR_SHIP_RE_gor_0001d964
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_gor_0001d958
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_gor_0001d958
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_gor_0001d958
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_gor_0001d958
	.4byte 0x0002005B
	.4byte evt_offscreen_delete
	.4byte str_ofs_gor_0001d95c
	.4byte 0x0002005B
	.4byte evt_paper_delete
	.4byte str_OFF_d_kaiten_gor_0001d948
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_hikousen_gor_0001d8e8
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_hikousen_gor_0001d8e8
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hikousen_gor_0001d8e8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_gondora_1_gor_0001d87c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_hako_2_gor_0001d8fc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_bou_10_gor_0001d84c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_bou_9_gor_0001d854
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_bou_7_gor_0001d85c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_bou_8_gor_0001d864
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_h_bou_2_gor_0001d86c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_h_bou_4_gor_0001d874
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_gondora_2_gor_0001d904
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_hako_1_gor_0001d980
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_h_bou_2_gor_0001d86c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_h_bou_4_gor_0001d874
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_bou_7_gor_0001d85c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_bou_8_gor_0001d864
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_bou_9_gor_0001d854
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_bou_10_gor_0001d84c
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x00000BB8
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000300
	.4byte str_BGM_STG0_GOR1_gor_0001d988
	.4byte 0x000007D0
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x0000015E
	.4byte 0x00000087
	.4byte 0xFFFFFEA0
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_gondora_1_gor_0001d87c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_AIR_SHIP_GO_gor_0001d888
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C86
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_noriba_gor_0001d8a8
	.4byte str_gondora_1_gor_0001d87c
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000384
	.4byte 0x00000000
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_gondora_1_gor_0001d87c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_noriba_gor_0001d8a8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_gondora_1_gor_0001d87c
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C86
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24BBA80
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_hikousen_return

# .data:0x4384 | 0x3F14C | size: 0x118C
.obj gor_04_koopa_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000001A9
	.4byte 0x000000FA
	.4byte 0x00000154
	.4byte 0x000001A9
	.4byte 0x000000D6
	.4byte 0x00000070
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x0000004B
	.4byte 0x00000000
	.4byte 0x0000009A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_gor_0001d820
	.4byte 0x000000AA
	.4byte 0x00000019
	.4byte 0x0000009A
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_gor_0001d820
	.4byte 0x0000010E
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000080
	.4byte 0x000000A3
	.4byte 0x0000029A
	.4byte 0x00000080
	.4byte 0x00000047
	.4byte 0x00000071
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg4_000_gor_0001d998
	.4byte 0x00000000
	.4byte str_ババ_gor_0001d820
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_gor_0001d820
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KAMEBABA_F_gor_0001d9a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000118
	.4byte 0x00000099
	.4byte 0x00000291
	.4byte 0x00000118
	.4byte 0x00000039
	.4byte 0x00000074
	.4byte 0x00000640
	.4byte 0x0000000B
	.4byte 0x0008005B
	.4byte evt_npc_kamek_move_position
	.4byte str_ババ_gor_0001d820
	.4byte 0x000000FB
	.4byte 0x00000080
	.4byte 0x00000005
	.4byte 0x00000640
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_cam3d_evt_zoom_in
	.4byte 0x00000014
	.4byte 0x00000320
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg4_001_gor_0001d9c0
	.4byte 0x00000000
	.4byte str_ババ_gor_0001d820
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg4_002_gor_0001d9d0
	.4byte 0x00000000
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000151
	.4byte 0x00000086
	.4byte 0x00000225
	.4byte 0x00000151
	.4byte 0x0000003A
	.4byte 0x00000074
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_sound_data_set
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte str_SFX_FLD_NPC_PUKUPUKU_gor_0001d9e0
	.4byte str_SFX_FLD_NPC_PUKUPUKU_gor_0001d9e0
	.4byte 0x00002EE0
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_PUKU_ESCAP_gor_0001d9fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0x40000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0x0000018B
	.4byte 0x00000082
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0x00000195
	.4byte 0x0000006E
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0x0000019F
	.4byte 0x0000000F
	.4byte 0x00000026
	.4byte 0x00000190
	.4byte 0x00000028
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0x00000226
	.4byte 0x00000026
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000000
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_飛行船係員_gor_0001d4dc
	.4byte 0x40000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000111
	.4byte 0x00000086
	.4byte 0x00000225
	.4byte 0x00000111
	.4byte 0x0000003A
	.4byte 0x00000074
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg4_003_gor_0001da14
	.4byte 0x00000000
	.4byte str_ババ_gor_0001d820
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_gor_0001d820
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF22
	.4byte 0x00000050
	.4byte 0x00000089
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_gor_0001d820
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KAMEBABA_F_gor_0001d9a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000066
	.4byte 0x000000A3
	.4byte 0x0000029A
	.4byte 0x00000066
	.4byte 0x00000047
	.4byte 0x00000071
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0008005B
	.4byte evt_npc_kamek_move_position
	.4byte str_ババ_gor_0001d820
	.4byte 0x0000009B
	.4byte 0x0000009A
	.4byte 0x00000005
	.4byte 0x000007D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_gor_0001d56c
	.4byte str_ババ_gor_0001d820
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg4_004_gor_0001da24
	.4byte 0x00000000
	.4byte str_ババ_gor_0001d820
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_gor_0001d820
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KAMEBABA_F_gor_0001d9a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0008005B
	.4byte evt_npc_kamek_move_position
	.4byte str_ババ_gor_0001d820
	.4byte 0x00000069
	.4byte 0x0000009A
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_gor_0001d820
	.4byte 0x0000005A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ババ_gor_0001d820
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_gor_0001d820
	.4byte 0x0000010E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ババ_gor_0001d820
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_gor_0001d820
	.4byte 0x0000005A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ババ_gor_0001d820
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_gor_0001d820
	.4byte 0x0000010E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ババ_gor_0001d820
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_AIRSHIP_MO_gor_0001da34
	.4byte 0x000000C8
	.4byte 0x00000032
	.4byte 0x00000064
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_gor_0001d56c
	.4byte str_ババ_gor_0001d820
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0x000000C8
	.4byte 0x00000073
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24A8680
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x0002003B
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte kpa_hikousen_yure
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24A8280
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_gor_0001d820
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_gor_0001d820
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00000064
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_LAUG_gor_0001da4c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8F
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_sfxchk
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0xFFFFFFB0
	.4byte 0x00000226
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0xFFFFFFB0
	.4byte 0x00000032
	.4byte 0x0000009A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0x0000002D
	.4byte 0x0000009A
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000041
	.4byte 0x000000D6
	.4byte 0x0000029E
	.4byte 0x00000041
	.4byte 0x0000007D
	.4byte 0x00000073
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg4_005_gor_0001da68
	.4byte 0x00000000
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_AIRSHIP_MO_gor_0001da34
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xF249B280
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF24C0A80
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xF248EA80
	.4byte 0x0002003C
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0x0002003A
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x0002003A
	.4byte 0xFE363C86
	.4byte 0xFE363C83
	.4byte 0x0002003A
	.4byte 0xFE363C87
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C89
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_ババ_gor_0001d820
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A3280
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24A7E80
	.4byte 0x0003005B
	.4byte evt_npc_get_dir
	.4byte str_ババ_gor_0001d820
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_gor_0001d820
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KAMEBABA_R_gor_0001da78
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x00010005
	.4byte 0x0000003C
	.4byte 0x0002003A
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_gor_0001d820
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x00020039
	.4byte 0xFE363C83
	.4byte 0x00000168
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000168
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_gor_0001d820
	.4byte 0xFE363C83
	.4byte 0x0002001C
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_gor_0001d820
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_ババ_gor_0001d820
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0x0000005A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000384
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFD050F80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_AIRSHIP_MO_gor_0001da34
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xF24E6280
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xFD050F80
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xF24C5A80
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xF2524A80
	.4byte 0x0002003C
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0x0002003A
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x0002003A
	.4byte 0xFE363C86
	.4byte 0xFE363C83
	.4byte 0x0002003A
	.4byte 0xFE363C87
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C89
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_飛クッパ_gor_0001d828
	.4byte 0x00000080
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000066
	.4byte 0x000000A3
	.4byte 0x0000029A
	.4byte 0x00000066
	.4byte 0x00000047
	.4byte 0x00000071
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_gor_0001d820
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_get_dir
	.4byte str_ババ_gor_0001d820
	.4byte 0xFE363C83
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_houki_gor_0001da94
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_houki_gor_0001da94
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_gor_0001d820
	.4byte str_D_1_gor_0001da9c
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_houki_gor_0001da94
	.4byte 0x00000080
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_houki_gor_0001da94
	.4byte 0x00000080
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_houki_gor_0001da94
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_gor_0001d820
	.4byte str_D_1_gor_0001da9c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_gor_0001d820
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KAMEBABA_F_gor_0001daa0
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_gor_0001d820
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_gor_0001d820
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KAMEBABA_D_gor_0001dabc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_gor_0001d820
	.4byte str_D_2_gor_0001dad8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_gor_0001d820
	.4byte str_P_1_gor_0001dadc
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_gor_0001d820
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_gor_0001d820
	.4byte str_P_1_gor_0001dadc
	.4byte str_T_6_gor_0001dae0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg4_006_gor_0001dae4
	.4byte 0x00000000
	.4byte str_ババ_gor_0001d820
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0000012C
	.4byte 0x00000009
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_00_gor_0001d8c4
	.4byte zero_gor_0001d56c
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gor_04_koopa_evt

# .data:0x5510 | 0x402D8 | size: 0x3FC
.obj gor_04_init_evt_9_data_402D8, global
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000D7
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_KUPPA1_gor_0001daf4
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG0_GOR5_gor_0001db04
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000D
	.4byte 0xFE363C80
	.4byte str_hikousen_return_gor_0001db14
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG0_GOR1_gor_0001d988
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG0_GOR5_gor_0001db04
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005E
	.4byte luigi_npcEnt
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x00020019
	.4byte 0xF5DE0180
	.4byte 0x000000D7
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_gor_0001db24
	.4byte 0x0000008C
	.4byte 0x0000003C
	.4byte 0x00000055
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0008005B
	.4byte evt_mobj_kururing_floor
	.4byte str_kururin1_gor_0001db30
	.4byte 0xFFFFFE02
	.4byte 0x00000050
	.4byte 0x00000078
	.4byte str_S_ground_gor_0001db3c
	.4byte 0x0000007D
	.4byte 0xF840714F
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_00_gor_0001db48
	.4byte 0x0000007D
	.4byte 0x000001DB
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000010
	.4byte 0xF8407150
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_wing
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte str_A_noriba_gor_0001d8a8
	.4byte 0x00000000
	.4byte evt_hikousen
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hikousen_return_gor_0001db14
	.4byte 0x0001005C
	.4byte evt_hikousen_return
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_gondora_2_gor_0001d904
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_hako_1_gor_0001d980
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_bero_gor_0001db50
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_n_bero_gor_0001d4bc
	.4byte 0x00020032
	.4byte 0xF840697A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406905
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406904
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697D
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_resha_return_gor_0001d6a4
	.4byte 0x00020032
	.4byte 0xF840697A
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_left
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_stop
	.4byte 0x0001005C
	.4byte evt_train2
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_gor_0001d4bc
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_left
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_gor_0001d4bc
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_駅員_gor_0001d500
	.4byte 0xFFFFFE70
	.4byte 0x00000050
	.4byte 0x00000064
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_right
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_gor_0001d4bc
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000159
	.4byte 0x0001005C
	.4byte peach_mail
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000D7
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_houki_gor_0001da94
	.4byte str_c_kamek_be_gor_0001db58
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_houki_gor_0001da94
	.4byte str_H_1_gor_0001db64
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_houki_gor_0001da94
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_houki_gor_0001da94
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte gor_04_koopa_evt
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000158
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_set_party
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_pouch_mario_recovery
	.4byte 0x0001005B
	.4byte evt_pouch_all_party_recovery
	.4byte 0x0001005B
	.4byte N_evt_sub_status_gauge_force_update
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_sub_mail_event
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_train_2_gor_0001db68
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gor_04_init_evt_9_data_402D8

# .data:0x590C | 0x406D4 | size: 0x4
.obj gap_04_000406D4_data, global
.hidden gap_04_000406D4_data
	.4byte 0x00000000
.endobj gap_04_000406D4_data
