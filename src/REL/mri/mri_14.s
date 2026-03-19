.include "macros.inc"
.file "mri_14.o"

# 0x000039F0..0x00003C80 | size: 0x290
.text
.balign 4

# .text:0x0 | 0x39F0 | size: 0x198
.fn evtflash, local
/* 000039F0 00003AB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000039F4 00003AB8  7C 08 02 A6 */	mflr r0
/* 000039F8 00003ABC  2C 04 00 00 */	cmpwi r4, 0x0
/* 000039FC 00003AC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00003A00 00003AC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 00003A04 00003AC8  7C 7F 1B 78 */	mr r31, r3
/* 00003A08 00003ACC  41 82 00 0C */	beq .L_00003A14
/* 00003A0C 00003AD0  38 00 00 00 */	li r0, 0x0
/* 00003A10 00003AD4  90 1F 00 80 */	stw r0, 0x80(r31)
.L_00003A14:
/* 00003A14 00003AD8  80 DF 00 80 */	lwz r6, 0x80(r31)
/* 00003A18 00003ADC  2C 06 00 02 */	cmpwi r6, 0x2
/* 00003A1C 00003AE0  41 82 00 B8 */	beq .L_00003AD4
/* 00003A20 00003AE4  40 80 00 14 */	bge .L_00003A34
/* 00003A24 00003AE8  2C 06 00 00 */	cmpwi r6, 0x0
/* 00003A28 00003AEC  41 82 00 1C */	beq .L_00003A44
/* 00003A2C 00003AF0  40 80 00 44 */	bge .L_00003A70
/* 00003A30 00003AF4  48 00 01 40 */	b .L_00003B70
.L_00003A34:
/* 00003A34 00003AF8  2C 06 00 04 */	cmpwi r6, 0x4
/* 00003A38 00003AFC  41 82 01 1C */	beq .L_00003B54
/* 00003A3C 00003B00  40 80 01 34 */	bge .L_00003B70
/* 00003A40 00003B04  48 00 00 E8 */	b .L_00003B28
.L_00003A44:
/* 00003A44 00003B08  3C 60 00 00 */	lis r3, dat_mri_00024dc0@ha
/* 00003A48 00003B0C  38 A1 00 0C */	addi r5, r1, 0xc
/* 00003A4C 00003B10  38 83 00 00 */	addi r4, r3, dat_mri_00024dc0@l
/* 00003A50 00003B14  38 60 00 0A */	li r3, 0xa
/* 00003A54 00003B18  80 04 00 00 */	lwz r0, 0x0(r4)
/* 00003A58 00003B1C  38 80 00 14 */	li r4, 0x14
/* 00003A5C 00003B20  90 01 00 0C */	stw r0, 0xc(r1)
/* 00003A60 00003B24  4B FF C7 F9 */	bl fadeEntry
/* 00003A64 00003B28  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 00003A68 00003B2C  38 03 00 01 */	addi r0, r3, 0x1
/* 00003A6C 00003B30  90 1F 00 80 */	stw r0, 0x80(r31)
.L_00003A70:
/* 00003A70 00003B34  4B FF C7 E9 */	bl fadeIsFinish
/* 00003A74 00003B38  2C 03 00 01 */	cmpwi r3, 0x1
/* 00003A78 00003B3C  41 82 00 0C */	beq .L_00003A84
/* 00003A7C 00003B40  38 60 00 00 */	li r3, 0x0
/* 00003A80 00003B44  48 00 00 F4 */	b .L_00003B74
.L_00003A84:
/* 00003A84 00003B48  38 00 00 32 */	li r0, 0x32
/* 00003A88 00003B4C  3C 60 00 00 */	lis r3, gp@ha
/* 00003A8C 00003B50  90 1F 00 78 */	stw r0, 0x78(r31)
/* 00003A90 00003B54  38 63 00 00 */	addi r3, r3, gp@l
/* 00003A94 00003B58  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00003A98 00003B5C  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 00003A9C 00003B60  90 7F 01 9C */	stw r3, 0x19c(r31)
/* 00003AA0 00003B64  7C 60 FE 70 */	srawi r0, r3, 31
/* 00003AA4 00003B68  90 1F 01 98 */	stw r0, 0x198(r31)
/* 00003AA8 00003B6C  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 00003AAC 00003B70  38 03 00 01 */	addi r0, r3, 0x1
/* 00003AB0 00003B74  90 1F 00 80 */	stw r0, 0x80(r31)
/* 00003AB4 00003B78  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 00003AB8 00003B7C  2C 00 00 00 */	cmpwi r0, 0x0
/* 00003ABC 00003B80  40 82 00 10 */	bne .L_00003ACC
/* 00003AC0 00003B84  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 00003AC4 00003B88  38 03 00 01 */	addi r0, r3, 0x1
/* 00003AC8 00003B8C  90 1F 00 80 */	stw r0, 0x80(r31)
.L_00003ACC:
/* 00003ACC 00003B90  38 60 00 00 */	li r3, 0x0
/* 00003AD0 00003B94  48 00 00 A4 */	b .L_00003B74
.L_00003AD4:
/* 00003AD4 00003B98  3C 60 80 00 */	lis r3, 0x8000
/* 00003AD8 00003B9C  3C 80 00 00 */	lis r4, gp@ha
/* 00003ADC 00003BA0  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 00003AE0 00003BA4  38 84 00 00 */	addi r4, r4, gp@l
/* 00003AE4 00003BA8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00003AE8 00003BAC  38 00 03 E8 */	li r0, 0x3e8
/* 00003AEC 00003BB0  54 63 F0 BE */	srwi r3, r3, 2
/* 00003AF0 00003BB4  80 BF 01 9C */	lwz r5, 0x19c(r31)
/* 00003AF4 00003BB8  7C 63 03 96 */	divwu r3, r3, r0
/* 00003AF8 00003BBC  80 84 00 3C */	lwz r4, 0x3c(r4)
/* 00003AFC 00003BC0  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 00003B00 00003BC4  7C 85 20 50 */	subf r4, r5, r4
/* 00003B04 00003BC8  7C 64 1B 96 */	divwu r3, r4, r3
/* 00003B08 00003BCC  7C 03 00 40 */	cmplw r3, r0
/* 00003B0C 00003BD0  40 80 00 0C */	bge .L_00003B18
/* 00003B10 00003BD4  38 60 00 00 */	li r3, 0x0
/* 00003B14 00003BD8  48 00 00 60 */	b .L_00003B74
.L_00003B18:
/* 00003B18 00003BDC  38 06 00 01 */	addi r0, r6, 0x1
/* 00003B1C 00003BE0  38 60 00 00 */	li r3, 0x0
/* 00003B20 00003BE4  90 1F 00 80 */	stw r0, 0x80(r31)
/* 00003B24 00003BE8  48 00 00 50 */	b .L_00003B74
.L_00003B28:
/* 00003B28 00003BEC  3C 60 00 00 */	lis r3, dat_mri_00024dc4@ha
/* 00003B2C 00003BF0  38 A1 00 08 */	addi r5, r1, 0x8
/* 00003B30 00003BF4  38 83 00 00 */	addi r4, r3, dat_mri_00024dc4@l
/* 00003B34 00003BF8  38 60 00 09 */	li r3, 0x9
/* 00003B38 00003BFC  80 04 00 00 */	lwz r0, 0x0(r4)
/* 00003B3C 00003C00  38 80 00 50 */	li r4, 0x50
/* 00003B40 00003C04  90 01 00 08 */	stw r0, 0x8(r1)
/* 00003B44 00003C08  4B FF C7 15 */	bl fadeEntry
/* 00003B48 00003C0C  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 00003B4C 00003C10  38 03 00 01 */	addi r0, r3, 0x1
/* 00003B50 00003C14  90 1F 00 80 */	stw r0, 0x80(r31)
.L_00003B54:
/* 00003B54 00003C18  4B FF C7 05 */	bl fadeIsFinish
/* 00003B58 00003C1C  2C 03 00 01 */	cmpwi r3, 0x1
/* 00003B5C 00003C20  41 82 00 0C */	beq .L_00003B68
/* 00003B60 00003C24  38 60 00 00 */	li r3, 0x0
/* 00003B64 00003C28  48 00 00 10 */	b .L_00003B74
.L_00003B68:
/* 00003B68 00003C2C  38 60 00 02 */	li r3, 0x2
/* 00003B6C 00003C30  48 00 00 08 */	b .L_00003B74
.L_00003B70:
/* 00003B70 00003C34  38 60 00 02 */	li r3, 0x2
.L_00003B74:
/* 00003B74 00003C38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00003B78 00003C3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 00003B7C 00003C40  7C 08 03 A6 */	mtlr r0
/* 00003B80 00003C44  38 21 00 20 */	addi r1, r1, 0x20
/* 00003B84 00003C48  4E 80 00 20 */	blr
.endfn evtflash

# .text:0x198 | 0x3B88 | size: 0x8C
.fn starstone_rotate_func, local
/* 00003B88 00003C4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00003B8C 00003C50  7C 08 02 A6 */	mflr r0
/* 00003B90 00003C54  90 01 00 34 */	stw r0, 0x34(r1)
/* 00003B94 00003C58  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 00003B98 00003C5C  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 00003B9C 00003C60  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00003BA0 00003C64  7C 7E 1B 78 */	mr r30, r3
/* 00003BA4 00003C68  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00003BA8 00003C6C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00003BAC 00003C70  4B FF C6 AD */	bl evtGetValue
/* 00003BB0 00003C74  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00003BB4 00003C78  7C 7F 1B 78 */	mr r31, r3
/* 00003BB8 00003C7C  7F C3 F3 78 */	mr r3, r30
/* 00003BBC 00003C80  4B FF C6 9D */	bl evtGetValue
/* 00003BC0 00003C84  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00003BC4 00003C88  3C 00 43 30 */	lis r0, 0x4330
/* 00003BC8 00003C8C  90 61 00 0C */	stw r3, 0xc(r1)
/* 00003BCC 00003C90  3C 80 00 00 */	lis r4, double_to_int_mri_00024e40@ha
/* 00003BD0 00003C94  C8 24 00 00 */	lfd f1, double_to_int_mri_00024e40@l(r4)
/* 00003BD4 00003C98  7F E3 FB 78 */	mr r3, r31
/* 00003BD8 00003C9C  90 01 00 08 */	stw r0, 0x8(r1)
/* 00003BDC 00003CA0  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00003BE0 00003CA4  EF E0 08 28 */	fsubs f31, f0, f1
/* 00003BE4 00003CA8  4B FF C6 75 */	bl itemNameToPtr
/* 00003BE8 00003CAC  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 00003BEC 00003CB0  38 60 00 00 */	li r3, 0x0
/* 00003BF0 00003CB4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 00003BF4 00003CB8  D3 E4 00 1C */	stfs f31, 0x1c(r4)
/* 00003BF8 00003CBC  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 00003BFC 00003CC0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 00003C00 00003CC4  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00003C04 00003CC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00003C08 00003CCC  7C 08 03 A6 */	mtlr r0
/* 00003C0C 00003CD0  38 21 00 30 */	addi r1, r1, 0x30
/* 00003C10 00003CD4  4E 80 00 20 */	blr
.endfn starstone_rotate_func

# .text:0x224 | 0x3C14 | size: 0x6C
.fn evt_npc_set_anim_localtime, local
/* 00003C14 00003CD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00003C18 00003CDC  7C 08 02 A6 */	mflr r0
/* 00003C1C 00003CE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00003C20 00003CE4  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 00003C24 00003CE8  BF C1 00 10 */	stmw r30, 0x10(r1)
/* 00003C28 00003CEC  7C 7E 1B 78 */	mr r30, r3
/* 00003C2C 00003CF0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00003C30 00003CF4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00003C34 00003CF8  4B FF C6 25 */	bl evtGetValue
/* 00003C38 00003CFC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00003C3C 00003D00  7C 7F 1B 78 */	mr r31, r3
/* 00003C40 00003D04  7F C3 F3 78 */	mr r3, r30
/* 00003C44 00003D08  4B FF C6 15 */	bl evtGetFloat
/* 00003C48 00003D0C  FF E0 08 90 */	fmr f31, f1
/* 00003C4C 00003D10  7F C3 F3 78 */	mr r3, r30
/* 00003C50 00003D14  7F E4 FB 78 */	mr r4, r31
/* 00003C54 00003D18  4B FF C6 05 */	bl evtNpcNameToPtr
/* 00003C58 00003D1C  FC 20 F8 90 */	fmr f1, f31
/* 00003C5C 00003D20  80 63 01 04 */	lwz r3, 0x104(r3)
/* 00003C60 00003D24  4B FF C5 F9 */	bl animPoseSetLocalTime
/* 00003C64 00003D28  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 00003C68 00003D2C  38 60 00 02 */	li r3, 0x2
/* 00003C6C 00003D30  BB C1 00 10 */	lmw r30, 0x10(r1)
/* 00003C70 00003D34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00003C74 00003D38  7C 08 03 A6 */	mtlr r0
/* 00003C78 00003D3C  38 21 00 20 */	addi r1, r1, 0x20
/* 00003C7C 00003D40  4E 80 00 20 */	blr
.endfn evt_npc_set_anim_localtime

# 0x00004720..0x00004B18 | size: 0x3F8
.rodata
.balign 8

# .rodata:0x0 | 0x4720 | size: 0x4
.obj dat_mri_00024dc0, local
	.4byte 0xFFFFFFFF
.endobj dat_mri_00024dc0

# .rodata:0x4 | 0x4724 | size: 0x4
.obj dat_mri_00024dc4, local
	.4byte 0xFFFFFFFF
.endobj dat_mri_00024dc4

# .rodata:0x8 | 0x4728 | size: 0x7
.obj str_w_bero_mri_00024dc8, local
	.string "w_bero"
.endobj str_w_bero_mri_00024dc8

# .rodata:0xF | 0x472F | size: 0x1
.obj gap_03_0000472F_rodata, global
.hidden gap_03_0000472F_rodata
	.byte 0x00
.endobj gap_03_0000472F_rodata

# .rodata:0x10 | 0x4730 | size: 0x7
.obj str_mri_13_mri_00024dd0, local
	.string "mri_13"
.endobj str_mri_13_mri_00024dd0

# .rodata:0x17 | 0x4737 | size: 0x1
.obj gap_03_00004737_rodata, global
.hidden gap_03_00004737_rodata
	.byte 0x00
.endobj gap_03_00004737_rodata

# .rodata:0x18 | 0x4738 | size: 0x7
.obj str_e_bero_mri_00024dd8, local
	.string "e_bero"
.endobj str_e_bero_mri_00024dd8

# .rodata:0x1F | 0x473F | size: 0x1
.obj gap_03_0000473F_rodata, global
.hidden gap_03_0000473F_rodata
	.byte 0x00
.endobj gap_03_0000473F_rodata

# .rodata:0x20 | 0x4740 | size: 0x6
.obj str_dokan_mri_00024de0, local
	.string "dokan"
.endobj str_dokan_mri_00024de0

# .rodata:0x26 | 0x4746 | size: 0x2
.obj gap_03_00004746_rodata, global
.hidden gap_03_00004746_rodata
	.2byte 0x0000
.endobj gap_03_00004746_rodata

# .rodata:0x28 | 0x4748 | size: 0x7
.obj str_mri_15_mri_00024de8, local
	.string "mri_15"
.endobj str_mri_15_mri_00024de8

# .rodata:0x2F | 0x474F | size: 0x1
.obj gap_03_0000474F_rodata, global
.hidden gap_03_0000474F_rodata
	.byte 0x00
.endobj gap_03_0000474F_rodata

# .rodata:0x30 | 0x4750 | size: 0xD
.obj str_第三勢力幹部_mri_00024df0, local
	.4byte 0x91E68E4F
	.4byte 0x90A897CD
	.4byte 0x8AB29594
	.byte 0x00
.endobj str_第三勢力幹部_mri_00024df0

# .rodata:0x3D | 0x475D | size: 0x3
.obj gap_03_0000475D_rodata, global
.hidden gap_03_0000475D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000475D_rodata

# .rodata:0x40 | 0x4760 | size: 0x10
.obj str_stg2_mri_e22_00_mri_00024e00, local
	.string "stg2_mri_e22_00"
.endobj str_stg2_mri_e22_00_mri_00024e00

# .rodata:0x50 | 0x4770 | size: 0x1
.obj zero_mri_00024e10, local
	.byte 0x00
.endobj zero_mri_00024e10

# .rodata:0x51 | 0x4771 | size: 0x3
.obj gap_03_00004771_rodata, global
.hidden gap_03_00004771_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004771_rodata

# .rodata:0x54 | 0x4774 | size: 0x10
.obj str_stg2_mri_e22_01_mri_00024e14, local
	.string "stg2_mri_e22_01"
.endobj str_stg2_mri_e22_01_mri_00024e14

# .rodata:0x64 | 0x4784 | size: 0x7
.obj str_mri_14_mri_00024e24, local
	.string "mri_14"
.endobj str_mri_14_mri_00024e24

# .rodata:0x6B | 0x478B | size: 0x1
.obj gap_03_0000478B_rodata, global
.hidden gap_03_0000478B_rodata
	.byte 0x00
.endobj gap_03_0000478B_rodata

# .rodata:0x6C | 0x478C | size: 0x10
.obj str_SFX_STG2_LIGHT1_mri_00024e2c, local
	.string "SFX_STG2_LIGHT1"
.endobj str_SFX_STG2_LIGHT1_mri_00024e2c
	.4byte 0x00000000

# .rodata:0x80 | 0x47A0 | size: 0x8
.obj double_to_int_mri_00024e40, local
	.double 4503601774854144
.endobj double_to_int_mri_00024e40

# .rodata:0x88 | 0x47A8 | size: 0x7
.obj str_item00_mri_00024e48, local
	.string "item00"
.endobj str_item00_mri_00024e48

# .rodata:0x8F | 0x47AF | size: 0x1
.obj gap_03_000047AF_rodata, global
.hidden gap_03_000047AF_rodata
	.byte 0x00
.endobj gap_03_000047AF_rodata

# .rodata:0x90 | 0x47B0 | size: 0xA
.obj str_p_dokan_x_mri_00024e50, local
	.string "p_dokan_x"
.endobj str_p_dokan_x_mri_00024e50

# .rodata:0x9A | 0x47BA | size: 0x2
.obj gap_03_000047BA_rodata, global
.hidden gap_03_000047BA_rodata
	.2byte 0x0000
.endobj gap_03_000047BA_rodata

# .rodata:0x9C | 0x47BC | size: 0x8
.obj str_PM_D_1A_mri_00024e5c, local
	.string "PM_D_1A"
.endobj str_PM_D_1A_mri_00024e5c

# .rodata:0xA4 | 0x47C4 | size: 0x8
.obj str_PM_D_1B_mri_00024e64, local
	.string "PM_D_1B"
.endobj str_PM_D_1B_mri_00024e64

# .rodata:0xAC | 0x47CC | size: 0x11
.obj str_SFX_MARIO_DOKAN1_mri_00024e6c, local
	.string "SFX_MARIO_DOKAN1"
.endobj str_SFX_MARIO_DOKAN1_mri_00024e6c

# .rodata:0xBD | 0x47DD | size: 0x3
.obj gap_03_000047DD_rodata, global
.hidden gap_03_000047DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000047DD_rodata

# .rodata:0xC0 | 0x47E0 | size: 0x10
.obj str_SFX_STG2_QUAKE1_mri_00024e80, local
	.string "SFX_STG2_QUAKE1"
.endobj str_SFX_STG2_QUAKE1_mri_00024e80

# .rodata:0xD0 | 0x47F0 | size: 0x9
.obj str_ripple00_mri_00024e90, local
	.string "ripple00"
.endobj str_ripple00_mri_00024e90

# .rodata:0xD9 | 0x47F9 | size: 0x3
.obj gap_03_000047F9_rodata, global
.hidden gap_03_000047F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000047F9_rodata

# .rodata:0xDC | 0x47FC | size: 0xB
.obj str_ripple_n64_mri_00024e9c, local
	.string "ripple_n64"
.endobj str_ripple_n64_mri_00024e9c

# .rodata:0xE7 | 0x4807 | size: 0x1
.obj gap_03_00004807_rodata, global
.hidden gap_03_00004807_rodata
	.byte 0x00
.endobj gap_03_00004807_rodata

# .rodata:0xE8 | 0x4808 | size: 0x9
.obj str_ripple01_mri_00024ea8, local
	.string "ripple01"
.endobj str_ripple01_mri_00024ea8

# .rodata:0xF1 | 0x4811 | size: 0x3
.obj gap_03_00004811_rodata, global
.hidden gap_03_00004811_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004811_rodata

# .rodata:0xF4 | 0x4814 | size: 0x9
.obj str_ripple02_mri_00024eb4, local
	.string "ripple02"
.endobj str_ripple02_mri_00024eb4

# .rodata:0xFD | 0x481D | size: 0x3
.obj gap_03_0000481D_rodata, global
.hidden gap_03_0000481D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000481D_rodata

# .rodata:0x100 | 0x4820 | size: 0x1B
.obj str_SFX_STG2_STARSTONE_A_mri_00024ec0, local
	.string "SFX_STG2_STARSTONE_APPEAR1"
.endobj str_SFX_STG2_STARSTONE_A_mri_00024ec0

# .rodata:0x11B | 0x483B | size: 0x1
.obj gap_03_0000483B_rodata, global
.hidden gap_03_0000483B_rodata
	.byte 0x00
.endobj gap_03_0000483B_rodata

# .rodata:0x11C | 0x483C | size: 0x13
.obj str_stg2_mri_e23_00_00_mri_00024edc, local
	.string "stg2_mri_e23_00_00"
.endobj str_stg2_mri_e23_00_00_mri_00024edc

# .rodata:0x12F | 0x484F | size: 0x1
.obj gap_03_0000484F_rodata, global
.hidden gap_03_0000484F_rodata
	.byte 0x00
.endobj gap_03_0000484F_rodata

# .rodata:0x130 | 0x4850 | size: 0x12
.obj str_BGM_EVT_3RD_ENEMY_mri_00024ef0, local
	.string "BGM_EVT_3RD_ENEMY"
.endobj str_BGM_EVT_3RD_ENEMY_mri_00024ef0

# .rodata:0x142 | 0x4862 | size: 0x2
.obj gap_03_00004862_rodata, global
.hidden gap_03_00004862_rodata
	.2byte 0x0000
.endobj gap_03_00004862_rodata

# .rodata:0x144 | 0x4864 | size: 0x1E
.obj str_SFX_STG2_KANBU_STARS_mri_00024f04, local
	.string "SFX_STG2_KANBU_STARSTONE_GET1"
.endobj str_SFX_STG2_KANBU_STARS_mri_00024f04

# .rodata:0x162 | 0x4882 | size: 0x2
.obj gap_03_00004882_rodata, global
.hidden gap_03_00004882_rodata
	.2byte 0x0000
.endobj gap_03_00004882_rodata

# .rodata:0x164 | 0x4884 | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_mri_00024f24, local
	.string "SFX_VOICE_MARIO_FIND1_3"
.endobj str_SFX_VOICE_MARIO_FIND_mri_00024f24

# .rodata:0x17C | 0x489C | size: 0xE
.obj str_ENV_STG2_MRI9_mri_00024f3c, local
	.string "ENV_STG2_MRI9"
.endobj str_ENV_STG2_MRI9_mri_00024f3c

# .rodata:0x18A | 0x48AA | size: 0x2
.obj gap_03_000048AA_rodata, global
.hidden gap_03_000048AA_rodata
	.2byte 0x0000
.endobj gap_03_000048AA_rodata

# .rodata:0x18C | 0x48AC | size: 0x10
.obj str_stg2_mri_e23_00_mri_00024f4c, local
	.string "stg2_mri_e23_00"
.endobj str_stg2_mri_e23_00_mri_00024f4c

# .rodata:0x19C | 0x48BC | size: 0x10
.obj str_stg2_mri_e23_01_mri_00024f5c, local
	.string "stg2_mri_e23_01"
.endobj str_stg2_mri_e23_01_mri_00024f5c

# .rodata:0x1AC | 0x48CC | size: 0x10
.obj str_stg2_mri_e23_02_mri_00024f6c, local
	.string "stg2_mri_e23_02"
.endobj str_stg2_mri_e23_02_mri_00024f6c

# .rodata:0x1BC | 0x48DC | size: 0x4
.obj str_S_8_mri_00024f7c, local
	.string "S_8"
.endobj str_S_8_mri_00024f7c

# .rodata:0x1C0 | 0x48E0 | size: 0x4
.obj str_T_8_mri_00024f80, local
	.string "T_8"
.endobj str_T_8_mri_00024f80

# .rodata:0x1C4 | 0x48E4 | size: 0x1D
.obj str_SFX_STG2_BOMB_SWITCH_mri_00024f84, local
	.string "SFX_STG2_BOMB_SWITCH_APPEAR1"
.endobj str_SFX_STG2_BOMB_SWITCH_mri_00024f84

# .rodata:0x1E1 | 0x4901 | size: 0x3
.obj gap_03_00004901_rodata, global
.hidden gap_03_00004901_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004901_rodata

# .rodata:0x1E4 | 0x4904 | size: 0x4
.obj str_I_6_mri_00024fa4, local
	.string "I_6"
.endobj str_I_6_mri_00024fa4

# .rodata:0x1E8 | 0x4908 | size: 0x10
.obj str_stg2_mri_e23_03_mri_00024fa8, local
	.string "stg2_mri_e23_03"
.endobj str_stg2_mri_e23_03_mri_00024fa8

# .rodata:0x1F8 | 0x4918 | size: 0x1B
.obj str_SFX_STG2_BOMB_SWITCH_mri_00024fb8, local
	.string "SFX_STG2_BOMB_SWITCH_AWAY1"
.endobj str_SFX_STG2_BOMB_SWITCH_mri_00024fb8

# .rodata:0x213 | 0x4933 | size: 0x1
.obj gap_03_00004933_rodata, global
.hidden gap_03_00004933_rodata
	.byte 0x00
.endobj gap_03_00004933_rodata

# .rodata:0x214 | 0x4934 | size: 0x4
.obj str_I_8_mri_00024fd4, local
	.string "I_8"
.endobj str_I_8_mri_00024fd4

# .rodata:0x218 | 0x4938 | size: 0x10
.obj str_stg2_mri_e23_04_mri_00024fd8, local
	.string "stg2_mri_e23_04"
.endobj str_stg2_mri_e23_04_mri_00024fd8

# .rodata:0x228 | 0x4948 | size: 0x19
.obj str_SFX_STG2_BOMB_TIMER__mri_00024fe8, local
	.string "SFX_STG2_BOMB_TIMER_SET1"
.endobj str_SFX_STG2_BOMB_TIMER__mri_00024fe8

# .rodata:0x241 | 0x4961 | size: 0x3
.obj gap_03_00004961_rodata, global
.hidden gap_03_00004961_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004961_rodata

# .rodata:0x244 | 0x4964 | size: 0x10
.obj str_BGM_EVT_DANGER4_mri_00025004, local
	.string "BGM_EVT_DANGER4"
.endobj str_BGM_EVT_DANGER4_mri_00025004

# .rodata:0x254 | 0x4974 | size: 0x4
.obj str_I_7_mri_00025014, local
	.string "I_7"
.endobj str_I_7_mri_00025014

# .rodata:0x258 | 0x4978 | size: 0x8
.obj str_S_dokan_mri_00025018, local
	.string "S_dokan"
.endobj str_S_dokan_mri_00025018

# .rodata:0x260 | 0x4980 | size: 0x15
.obj str_SFX_STG2_DOKAN_FALL1_mri_00025020, local
	.string "SFX_STG2_DOKAN_FALL1"
.endobj str_SFX_STG2_DOKAN_FALL1_mri_00025020

# .rodata:0x275 | 0x4995 | size: 0x3
.obj gap_03_00004995_rodata, global
.hidden gap_03_00004995_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004995_rodata

# .rodata:0x278 | 0x4998 | size: 0x8
.obj str_A_dokan_mri_00025038, local
	.string "A_dokan"
.endobj str_A_dokan_mri_00025038

# .rodata:0x280 | 0x49A0 | size: 0x10
.obj str_stg2_mri_e23_05_mri_00025040, local
	.string "stg2_mri_e23_05"
.endobj str_stg2_mri_e23_05_mri_00025040

# .rodata:0x290 | 0x49B0 | size: 0xB
.obj str_S_isk_02_c_mri_00025050, local
	.string "S_isk_02_c"
.endobj str_S_isk_02_c_mri_00025050

# .rodata:0x29B | 0x49BB | size: 0x1
.obj gap_03_000049BB_rodata, global
.hidden gap_03_000049BB_rodata
	.byte 0x00
.endobj gap_03_000049BB_rodata

# .rodata:0x29C | 0x49BC | size: 0xB
.obj str_S_isk_03_c_mri_0002505c, local
	.string "S_isk_03_c"
.endobj str_S_isk_03_c_mri_0002505c

# .rodata:0x2A7 | 0x49C7 | size: 0x1
.obj gap_03_000049C7_rodata, global
.hidden gap_03_000049C7_rodata
	.byte 0x00
.endobj gap_03_000049C7_rodata

# .rodata:0x2A8 | 0x49C8 | size: 0x9
.obj str_S_isk_02_mri_00025068, local
	.string "S_isk_02"
.endobj str_S_isk_02_mri_00025068

# .rodata:0x2B1 | 0x49D1 | size: 0x3
.obj gap_03_000049D1_rodata, global
.hidden gap_03_000049D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049D1_rodata

# .rodata:0x2B4 | 0x49D4 | size: 0x9
.obj str_S_isk_03_mri_00025074, local
	.string "S_isk_03"
.endobj str_S_isk_03_mri_00025074

# .rodata:0x2BD | 0x49DD | size: 0x3
.obj gap_03_000049DD_rodata, global
.hidden gap_03_000049DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049DD_rodata

# .rodata:0x2C0 | 0x49E0 | size: 0x9
.obj str_S_isk_04_mri_00025080, local
	.string "S_isk_04"
.endobj str_S_isk_04_mri_00025080

# .rodata:0x2C9 | 0x49E9 | size: 0x3
.obj gap_03_000049E9_rodata, global
.hidden gap_03_000049E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049E9_rodata

# .rodata:0x2CC | 0x49EC | size: 0x19
.obj str_SFX_STG2_SWITCH_COUN_mri_0002508c, local
	.string "SFX_STG2_SWITCH_COUNTER1"
.endobj str_SFX_STG2_SWITCH_COUN_mri_0002508c

# .rodata:0x2E5 | 0x4A05 | size: 0x3
.obj gap_03_00004A05_rodata, global
.hidden gap_03_00004A05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A05_rodata

# .rodata:0x2E8 | 0x4A08 | size: 0x9
.obj str_A_ueki01_mri_000250a8, local
	.string "A_ueki01"
.endobj str_A_ueki01_mri_000250a8

# .rodata:0x2F1 | 0x4A11 | size: 0x3
.obj gap_03_00004A11_rodata, global
.hidden gap_03_00004A11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A11_rodata

# .rodata:0x2F4 | 0x4A14 | size: 0x9
.obj str_S_ueki01_mri_000250b4, local
	.string "S_ueki01"
.endobj str_S_ueki01_mri_000250b4

# .rodata:0x2FD | 0x4A1D | size: 0x3
.obj gap_03_00004A1D_rodata, global
.hidden gap_03_00004A1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A1D_rodata

# .rodata:0x300 | 0x4A20 | size: 0x9
.obj str_A_ueki03_mri_000250c0, local
	.string "A_ueki03"
.endobj str_A_ueki03_mri_000250c0

# .rodata:0x309 | 0x4A29 | size: 0x3
.obj gap_03_00004A29_rodata, global
.hidden gap_03_00004A29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A29_rodata

# .rodata:0x30C | 0x4A2C | size: 0x9
.obj str_S_ueki03_mri_000250cc, local
	.string "S_ueki03"
.endobj str_S_ueki03_mri_000250cc

# .rodata:0x315 | 0x4A35 | size: 0x3
.obj gap_03_00004A35_rodata, global
.hidden gap_03_00004A35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A35_rodata

# .rodata:0x318 | 0x4A38 | size: 0x9
.obj str_A_ueki04_mri_000250d8, local
	.string "A_ueki04"
.endobj str_A_ueki04_mri_000250d8

# .rodata:0x321 | 0x4A41 | size: 0x3
.obj gap_03_00004A41_rodata, global
.hidden gap_03_00004A41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A41_rodata

# .rodata:0x324 | 0x4A44 | size: 0x9
.obj str_S_ueki04_mri_000250e4, local
	.string "S_ueki04"
.endobj str_S_ueki04_mri_000250e4

# .rodata:0x32D | 0x4A4D | size: 0x3
.obj gap_03_00004A4D_rodata, global
.hidden gap_03_00004A4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A4D_rodata

# .rodata:0x330 | 0x4A50 | size: 0x9
.obj str_A_ueki06_mri_000250f0, local
	.string "A_ueki06"
.endobj str_A_ueki06_mri_000250f0

# .rodata:0x339 | 0x4A59 | size: 0x3
.obj gap_03_00004A59_rodata, global
.hidden gap_03_00004A59_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A59_rodata

# .rodata:0x33C | 0x4A5C | size: 0x9
.obj str_S_ueki06_mri_000250fc, local
	.string "S_ueki06"
.endobj str_S_ueki06_mri_000250fc

# .rodata:0x345 | 0x4A65 | size: 0x3
.obj gap_03_00004A65_rodata, global
.hidden gap_03_00004A65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A65_rodata

# .rodata:0x348 | 0x4A68 | size: 0x9
.obj str_A_ueki07_mri_00025108, local
	.string "A_ueki07"
.endobj str_A_ueki07_mri_00025108

# .rodata:0x351 | 0x4A71 | size: 0x3
.obj gap_03_00004A71_rodata, global
.hidden gap_03_00004A71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A71_rodata

# .rodata:0x354 | 0x4A74 | size: 0x9
.obj str_S_ueki07_mri_00025114, local
	.string "S_ueki07"
.endobj str_S_ueki07_mri_00025114

# .rodata:0x35D | 0x4A7D | size: 0x3
.obj gap_03_00004A7D_rodata, global
.hidden gap_03_00004A7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A7D_rodata

# .rodata:0x360 | 0x4A80 | size: 0x9
.obj str_A_ueki08_mri_00025120, local
	.string "A_ueki08"
.endobj str_A_ueki08_mri_00025120

# .rodata:0x369 | 0x4A89 | size: 0x3
.obj gap_03_00004A89_rodata, global
.hidden gap_03_00004A89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A89_rodata

# .rodata:0x36C | 0x4A8C | size: 0x9
.obj str_S_ueki08_mri_0002512c, local
	.string "S_ueki08"
.endobj str_S_ueki08_mri_0002512c

# .rodata:0x375 | 0x4A95 | size: 0x3
.obj gap_03_00004A95_rodata, global
.hidden gap_03_00004A95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A95_rodata

# .rodata:0x378 | 0x4A98 | size: 0xD
.obj str_S_sui_hikari_mri_00025138, local
	.string "S_sui_hikari"
.endobj str_S_sui_hikari_mri_00025138

# .rodata:0x385 | 0x4AA5 | size: 0x3
.obj gap_03_00004AA5_rodata, global
.hidden gap_03_00004AA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004AA5_rodata

# .rodata:0x388 | 0x4AA8 | size: 0xE
.obj str_BGM_STG2_MRI1_mri_00025148, local
	.string "BGM_STG2_MRI1"
.endobj str_BGM_STG2_MRI1_mri_00025148

# .rodata:0x396 | 0x4AB6 | size: 0x2
.obj gap_03_00004AB6_rodata, global
.hidden gap_03_00004AB6_rodata
	.2byte 0x0000
.endobj gap_03_00004AB6_rodata

# .rodata:0x398 | 0x4AB8 | size: 0xE
.obj str_ENV_STG2_MRI1_mri_00025158, local
	.string "ENV_STG2_MRI1"
.endobj str_ENV_STG2_MRI1_mri_00025158

# .rodata:0x3A6 | 0x4AC6 | size: 0x2
.obj gap_03_00004AC6_rodata, global
.hidden gap_03_00004AC6_rodata
	.2byte 0x0000
.endobj gap_03_00004AC6_rodata

# .rodata:0x3A8 | 0x4AC8 | size: 0x8
.obj str_mizu_01_mri_00025168, local
	.string "mizu_01"
.endobj str_mizu_01_mri_00025168

# .rodata:0x3B0 | 0x4AD0 | size: 0x8
.obj str_mizu_02_mri_00025170, local
	.string "mizu_02"
.endobj str_mizu_02_mri_00025170

# .rodata:0x3B8 | 0x4AD8 | size: 0x7
.obj str_awa_01_mri_00025178, local
	.string "awa_01"
.endobj str_awa_01_mri_00025178

# .rodata:0x3BF | 0x4ADF | size: 0x1
.obj gap_03_00004ADF_rodata, global
.hidden gap_03_00004ADF_rodata
	.byte 0x00
.endobj gap_03_00004ADF_rodata

# .rodata:0x3C0 | 0x4AE0 | size: 0x7
.obj str_awa_02_mri_00025180, local
	.string "awa_02"
.endobj str_awa_02_mri_00025180

# .rodata:0x3C7 | 0x4AE7 | size: 0x1
.obj gap_03_00004AE7_rodata, global
.hidden gap_03_00004AE7_rodata
	.byte 0x00
.endobj gap_03_00004AE7_rodata

# .rodata:0x3C8 | 0x4AE8 | size: 0xB
.obj str_sui_hikari_mri_00025188, local
	.string "sui_hikari"
.endobj str_sui_hikari_mri_00025188

# .rodata:0x3D3 | 0x4AF3 | size: 0x1
.obj gap_03_00004AF3_rodata, global
.hidden gap_03_00004AF3_rodata
	.byte 0x00
.endobj gap_03_00004AF3_rodata

# .rodata:0x3D4 | 0x4AF4 | size: 0x9
.obj str_punipuni_mri_00025194, local
	.string "punipuni"
.endobj str_punipuni_mri_00025194

# .rodata:0x3DD | 0x4AFD | size: 0x3
.obj gap_03_00004AFD_rodata, global
.hidden gap_03_00004AFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004AFD_rodata

# .rodata:0x3E0 | 0x4B00 | size: 0xA
.obj str_A_dai_mae_mri_000251a0, local
	.string "A_dai_mae"
.endobj str_A_dai_mae_mri_000251a0

# .rodata:0x3EA | 0x4B0A | size: 0x2
.obj gap_03_00004B0A_rodata, global
.hidden gap_03_00004B0A_rodata
	.2byte 0x0000
.endobj gap_03_00004B0A_rodata

# .rodata:0x3EC | 0x4B0C | size: 0x6
.obj str_S_sui_mri_000251ac, local
	.string "S_sui"
.endobj str_S_sui_mri_000251ac

# .rodata:0x3F2 | 0x4B12 | size: 0x6
.obj gap_03_00004B12_rodata, global
.hidden gap_03_00004B12_rodata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_03_00004B12_rodata

# 0x0001F9A0..0x00021CC8 | size: 0x2328
.data
.balign 8

# .data:0x0 | 0x1F9A0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1F9A8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1F9AC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1F9B0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1F9B4 | size: 0x4
.obj gap_04_0001F9B4_data, global
.hidden gap_04_0001F9B4_data
	.4byte 0x00000000
.endobj gap_04_0001F9B4_data

# .data:0x18 | 0x1F9B8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1F9C0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1F9C4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1F9C8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1F9D0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1F9D4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1F9D8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1F9DC | size: 0x4
.obj gap_04_0001F9DC_data, global
.hidden gap_04_0001F9DC_data
	.4byte 0x00000000
.endobj gap_04_0001F9DC_data

# .data:0x40 | 0x1F9E0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1F9E8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1F9EC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1F9F0 | size: 0xF0
.obj first_time_w_bero, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000006C
	.4byte 0x00020018
	.4byte 0xF84066B0
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF84066B0
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFE3E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFE20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_bero_exec_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_bero_exec_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFE98
	.4byte 0x00000000
	.4byte 0xF24CD280
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFEB6
	.4byte 0x00000000
	.4byte 0xF24CD280
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj first_time_w_bero

# .data:0x140 | 0x1FAE0 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_mri_00024dc8
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte first_time_w_bero
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_mri_13_mri_00024dd0
	.4byte str_e_bero_mri_00024dd8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_mri_00024de0
	.4byte 0x00020000
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte str_mri_15_mri_00024de8
	.4byte str_dokan_mri_00024de0
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

# .data:0x1F4 | 0x1FB94 | size: 0x70
.obj npc_rotate, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj npc_rotate

# .data:0x264 | 0x1FC04 | size: 0x12C
.obj kanbu_urouro, local
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0xFFFFFF29
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000015E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x00000078
	.4byte 0xFFFFFF29
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0xFFFFFF29
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000015E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x0000004B
	.4byte 0xFFFFFF29
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kanbu_urouro

# .data:0x390 | 0x1FD30 | size: 0x300
.obj dai3_kanbu, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
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
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_第三勢力幹部_mri_00024df0
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x40000620
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0xFFFFFF29
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte kanbu_urouro
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004B
	.4byte 0x0000007B
	.4byte 0x0000007A
	.4byte 0x0000004B
	.4byte 0x00000037
	.4byte 0xFFFFFF56
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0001000B
	.4byte 0xFAA2B581
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x000000B4
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000190
	.4byte 0x0001005C
	.4byte npc_rotate
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000B4
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000190
	.4byte 0x0001005C
	.4byte npc_rotate
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e22_00_mri_00024e00
	.4byte 0x00000000
	.4byte str_第三勢力幹部_mri_00024df0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x000000B4
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x000000C8
	.4byte 0x0001005C
	.4byte npc_rotate
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_00024e10
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e22_01_mri_00024e14
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x000000C8
	.4byte 0xFFFFFF29
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xF84066B0
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000006C
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x000001F4
	.4byte 0x00000009
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_mri_14_mri_00024e24
	.4byte str_w_bero_mri_00024dc8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dai3_kanbu

# .data:0x690 | 0x20030 | size: 0x40
.obj flash_and_wait, local
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_LIGHT1_mri_00024e2c
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evtflash
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj flash_and_wait

# .data:0x6D0 | 0x20070 | size: 0x68
.obj flash2_and_wait, local
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_LIGHT1_mri_00024e2c
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evtflash
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_LIGHT1_mri_00024e2c
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evtflash
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj flash2_and_wait

# .data:0x738 | 0x200D8 | size: 0x18
.obj starstone_rotate, local
	.4byte 0x0003005B
	.4byte starstone_rotate_func
	.4byte 0xFE363C80
	.4byte 0xFD050F8A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj starstone_rotate

# .data:0x750 | 0x200F0 | size: 0x34
.obj starstone_rotate_exec, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFD050F8A
	.4byte 0x00000006
	.4byte 0x00020039
	.4byte 0xFD050F8A
	.4byte 0x00000168
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj starstone_rotate_exec

# .data:0x784 | 0x20124 | size: 0x11C
.obj starstone_fuwafuwa, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte str_item00_mri_00024e48
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_item00_mri_00024e48
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C87
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
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_item00_mri_00024e48
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj starstone_fuwafuwa

# .data:0x8A0 | 0x20240 | size: 0x344
.obj npc_dokan, local
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_paper
	.4byte 0xFE363C8A
	.4byte str_p_dokan_x_mri_00024e50
	.4byte 0x0003005B
	.4byte evt_npc_set_paper_anim
	.4byte 0xFE363C8A
	.4byte str_PM_D_1A_mri_00024e5c
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_paper_anim
	.4byte 0xFE363C8A
	.4byte str_PM_D_1B_mri_00024e64
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24A7E80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24A8280
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24A8680
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24A8A80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24A8E80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24A9280
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24A9680
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24A9A80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24A9E80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_paper_anim
	.4byte 0xFE363C8A
	.4byte str_PM_D_1A_mri_00024e5c
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24AAE80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24AB280
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24AB680
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24ABA80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24ABE80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24AC280
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24AC680
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim_localtime
	.4byte 0xFE363C8A
	.4byte 0xF24ACA80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MARIO_DOKAN1_mri_00024e6c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFEC
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000002D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_第三勢力幹部_mri_00024df0
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj npc_dokan

# .data:0xBE4 | 0x20584 | size: 0x84
.obj punipuni_mario_halt, local
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B58A
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFAA2B58B
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj punipuni_mario_halt

# .data:0xC68 | 0x20608 | size: 0xE8C
.obj time_bomb, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000000
	.4byte 0x0001000B
	.4byte 0xFAA2B58F
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x00000BB8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_第三勢力幹部_mri_00024df0
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_第三勢力幹部_mri_00024df0
	.4byte 0x40000620
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000022B
	.4byte 0x000001FB
	.4byte 0x0000034E
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_QUAKE1_mri_00024e80
	.4byte 0xFE363C8B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A81
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A82
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A83
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A84
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte flash_and_wait
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A86
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A87
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A88
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A89
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A89
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0001005C
	.4byte flash_and_wait
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A88
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A87
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A86
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A84
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A83
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A82
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A81
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8B
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x00000131
	.4byte 0xFFFFFFDF
	.4byte 0x00000000
	.4byte 0x0000008C
	.4byte 0xFFFFFEAE
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFA7
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0xFFFFFFA7
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_ripple00_mri_00024e90
	.4byte str_ripple_n64_mri_00024e9c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0xFFFFFEAC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_ripple01_mri_00024ea8
	.4byte str_ripple_n64_mri_00024e9c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0xFFFFFEAC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_ripple02_mri_00024eb4
	.4byte str_ripple_n64_mri_00024e9c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0xFFFFFEAC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_STARSTONE_A_mri_00024ec0
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_mri_00024e48
	.4byte 0x00000073
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0xFFFFFEAC
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_mri_00024e48
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_item00_mri_00024e48
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte starstone_rotate
	.4byte 0xFE363C8E
	.4byte 0x0002005D
	.4byte starstone_rotate_exec
	.4byte 0xFE363C8F
	.4byte 0x0007005B
	.4byte evt_item_move_3d_position
	.4byte str_item00_mri_00024e48
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0xFFFFFEAC
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte starstone_fuwafuwa
	.4byte 0xFE363C8D
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0001005F
	.4byte 0xFE363C8D
	.4byte 0x0007005B
	.4byte evt_item_move_3d_position
	.4byte str_item00_mri_00024e48
	.4byte 0x00000000
	.4byte 0x00000190
	.4byte 0xFFFFFEAC
	.4byte 0x000002EE
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_item00_mri_00024e48
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x000000D5
	.4byte 0x0000005B
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0xFFFFFF29
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_item00_mri_00024e48
	.4byte 0x00000000
	.4byte 0x00000190
	.4byte 0xFFFFFF29
	.4byte 0x0007005B
	.4byte evt_item_move_3d_position
	.4byte str_item00_mri_00024e48
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0xFFFFFF29
	.4byte 0x00000BB8
	.4byte 0x0000000B
	.4byte 0x0002005D
	.4byte starstone_fuwafuwa
	.4byte 0xFE363C8D
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x0000005F
	.4byte 0x0000011B
	.4byte 0x00000000
	.4byte 0x00000037
	.4byte 0xFFFFFF29
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_mri_e23_00_00_mri_00024edc
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_3RD_ENEMY_mri_00024ef0
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_第三勢力幹部_mri_00024df0
	.4byte 0x000000AF
	.4byte 0x00000000
	.4byte 0xFFFFFF3E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_第三勢力幹部_mri_00024df0
	.4byte 0x00000000
	.4byte 0xFFFFFF29
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_00024df0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_STARS_mri_00024f04
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C8D
	.4byte 0x0001005F
	.4byte 0xFE363C8E
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x0002005B
	.4byte evt_item_delete
	.4byte str_item00_mri_00024e48
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_第三勢力幹部_mri_00024df0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF29
	.4byte 0x0000012C
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_第三勢力幹部_mri_00024df0
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_第三勢力幹部_mri_00024df0
	.4byte 0x0000002C
	.4byte 0xFFFFFF0B
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_第三勢力幹部_mri_00024df0
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_mri_00024f24
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_mri_00024e10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte zero_mri_00024e10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000F8
	.4byte 0x0000007D
	.4byte 0x000000D4
	.4byte 0xFFFFFFF9
	.4byte 0x00000026
	.4byte 0xFFFFFF30
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI9_mri_00024f3c
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_mri_e23_00_mri_00024f4c
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_第三勢力幹部_mri_00024df0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e23_01_mri_00024f5c
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_00024e10
	.4byte 0xFE363C8A
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
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e23_02_mri_00024f6c
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte 0xFE363C8A
	.4byte str_S_8_mri_00024f7c
	.4byte str_T_8_mri_00024f80
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_BOMB_SWITCH_mri_00024f84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_I_6_mri_00024fa4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000BE
	.4byte 0x0000005F
	.4byte 0x00000005
	.4byte 0x0000002B
	.4byte 0x0000002D
	.4byte 0xFFFFFF11
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e23_03_mri_00024fa8
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_BOMB_SWITCH_mri_00024fb8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_I_8_mri_00024fd4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000F0
	.4byte 0x0000006E
	.4byte 0x000000ED
	.4byte 0x000000F0
	.4byte 0x00000032
	.4byte 0xFFFFFF97
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x000000DC
	.4byte 0xFFFFFF60
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_BOMB_SWITCH_mri_00024f84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_I_6_mri_00024fa4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e23_04_mri_00024fd8
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_BOMB_TIMER__mri_00024fe8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER4_mri_00025004
	.4byte 0x0003005B
	.4byte evt_sub_countdown_start
	.4byte 0x000493E0
	.4byte 0x000493E0
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_I_7_mri_00025014
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_BOMB_SWITCH_mri_00024fb8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_I_8_mri_00024fd4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x0000001B
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A94
	.4byte 0xF24A7A80
	.4byte 0x000003E8
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000015E
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_dokan_mri_00025018
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_DOKAN_FALL1_mri_00025020
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_dokan_mri_00025018
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_dokan_mri_00025038
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_dokan_mri_00024de0
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x000000FA
	.4byte 0xFFFFFF60
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte npc_dokan
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000069
	.4byte 0x0000010D
	.4byte 0x00000000
	.4byte 0x0000002D
	.4byte 0xFFFFFFB4
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_mri_e23_05_mri_00025040
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00008000
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj time_bomb

# .data:0x1AF4 | 0x21494 | size: 0x38
.obj bomb_check, local
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
	.4byte 0x0001005C
	.4byte time_bomb
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bomb_check

# .data:0x1B2C | 0x214CC | size: 0x180
.obj yuka_move, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_isk_02_c_mri_00025050
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_isk_03_c_mri_0002505c
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFD050F80
	.4byte 0x00020038
	.4byte 0xFE363C82
	.4byte 0x00000064
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFD050F80
	.4byte 0x00020039
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x00020038
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x00020039
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x00020037
	.4byte 0xFE363C8C
	.4byte 0x00000024
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFE363C81
	.4byte 0x00020037
	.4byte 0xFE363C8B
	.4byte 0x00000024
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C8A
	.4byte 0x00000024
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_isk_02_mri_00025068
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_isk_03_mri_00025074
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_isk_04_mri_00025080
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFD050F80
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_isk_03_c_mri_0002505c
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_isk_03_c_mri_0002505c
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yuka_move

# .data:0x1CAC | 0x2164C | size: 0x1D0
.obj yuka_check, local
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFD050F80
	.4byte 0x0002005B
	.4byte evt_puni_wait_systemmode_18_text_16CBC
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_get_flag_18_text_19BE4
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_puni_get_flag_18_text_19BE4
	.4byte 0xFE363C8A
	.4byte 0xFE363C81
	.4byte 0x0002004D
	.4byte 0xFE363C80
	.4byte 0x00000400
	.4byte 0x0002004D
	.4byte 0xFE363C81
	.4byte 0x00000080
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0xFFFFFFEC
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0008005B
	.4byte evt_sub_area_check
	.4byte 0x00000000
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000065
	.4byte 0x00020036
	.4byte 0xFD050F80
	.4byte 0xFE363C8B
	.4byte 0x0002001D
	.4byte 0xFD050F80
	.4byte 0x00000065
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000065
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFD050F80
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_SWITCH_COUN_mri_0002508c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFD050F80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yuka_check

# .data:0x1E7C | 0x2181C | size: 0x70
.obj ueki_access_data, local
	.4byte 0x00000001
	.4byte str_A_ueki01_mri_000250a8
	.4byte str_S_ueki01_mri_000250b4
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki03_mri_000250c0
	.4byte str_S_ueki03_mri_000250cc
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki04_mri_000250d8
	.4byte str_S_ueki04_mri_000250e4
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki06_mri_000250f0
	.4byte str_S_ueki06_mri_000250fc
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki07_mri_00025108
	.4byte str_S_ueki07_mri_00025114
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki08_mri_00025120
	.4byte str_S_ueki08_mri_0002512c
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj ueki_access_data

# .data:0x1EEC | 0x2188C | size: 0x8C
.obj punipuni_ball00_init, local
	.4byte 0x0001005E
	.4byte mri_punipuni_setup_18_data_790
	.4byte 0x00020018
	.4byte 0xF84066AF
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xFFFFFF9C
	.4byte 0x0004005B
	.4byte evt_target_flag_onoff_18_text_1AB84
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_sui_hikari_mri_00025138
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_target_set_position_18_text_1AC14
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B58F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj punipuni_ball00_init

# .data:0x1F78 | 0x21918 | size: 0xE4
.obj punipuni_ball00, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84066AF
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte mri_punipuni_itemselect_18_data_7D0
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF84066AF
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xFFFFFF9C
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_sui_hikari_mri_00025138
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B58F
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte mri_punipuni_itemset_18_data_870
	.4byte 0x00020032
	.4byte 0xFAA2B58F
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF84066AF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_sui_hikari_mri_00025138
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte mri_punipuni_itemremove_18_data_900
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000064
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj punipuni_ball00

# .data:0x205C | 0x219FC | size: 0x2CC
.obj mri_14_init_evt_18_data_219FC, global
	.4byte 0x0001005B
	.4byte evt_puni_mem_init_18_text_15D70
	.4byte 0x0008005B
	.4byte evt_puni_set_yuka_18_text_15FA0
	.4byte 0x0000000E
	.4byte 0x00000000
	.4byte 0xFFFFFECA
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_puni_set_hamari_18_text_16134
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xF5DE0180
	.4byte 0x0000006B
	.4byte 0x0001005E
	.4byte mri_puni_init_18_data_24BA4
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte mri_puni_init_none_18_data_24CE0
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005C
	.4byte puni_disp_info_18_data_245F0
	.4byte 0x0001005C
	.4byte mri_countdown_18_data_A7C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte ueki_access_data
	.4byte 0x0001005E
	.4byte evt_sub_kusa_access_entry
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_p_dokan_x_mri_00024e50
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000006D
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER4_mri_00025004
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI9_mri_00024f3c
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_00025148
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI1_mri_00025158
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_01_mri_00025168
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_02_mri_00025170
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_01_mri_00025178
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_02_mri_00025180
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_sui_hikari_mri_00025188
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000006B
	.4byte 0x0001005C
	.4byte dai3_kanbu
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_punipuni_mri_00025194
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte punipuni_ball00_init
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_dai_mae_mri_000251a0
	.4byte 0x00000000
	.4byte punipuni_ball00
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000065
	.4byte 0x0001005C
	.4byte yuka_check
	.4byte 0x0001005C
	.4byte yuka_move
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000006D
	.4byte 0x0001005C
	.4byte bomb_check
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_dokan_mri_00025038
	.4byte str_S_dokan_mri_00025018
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_dokan_mri_00025018
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_dokan_mri_00025038
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_dokan_mri_00024de0
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_sui_mri_000251ac
	.4byte 0x00020033
	.4byte 0xFE363C81
	.4byte 0xFD050F80
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000064
	.4byte 0x0001005C
	.4byte mri_hikari_color_18_data_974
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mri_14_init_evt_18_data_219FC
