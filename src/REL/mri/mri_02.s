.include "macros.inc"
.file "mri_02.o"

# 0x00002B18..0x00002D88 | size: 0x270
.text
.balign 4

# .text:0x0 | 0x2B18 | size: 0x1D4
.fn moveSwitch, local
/* 00002B18 00002BDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00002B1C 00002BE0  7C 08 02 A6 */	mflr r0
/* 00002B20 00002BE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 00002B24 00002BE8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 00002B28 00002BEC  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 00002B2C 00002BF0  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00002B30 00002BF4  2C 04 00 00 */	cmpwi r4, 0x0
/* 00002B34 00002BF8  3C 80 00 00 */	lis r4, mri02switch@ha
/* 00002B38 00002BFC  7C 7E 1B 78 */	mr r30, r3
/* 00002B3C 00002C00  3B E4 00 00 */	addi r31, r4, mri02switch@l
/* 00002B40 00002C04  41 82 00 2C */	beq .L_00002B6C
/* 00002B44 00002C08  3C 60 00 00 */	lis r3, zero_mri_0002242c@ha
/* 00002B48 00002C0C  38 00 00 00 */	li r0, 0x0
/* 00002B4C 00002C10  C0 03 00 00 */	lfs f0, zero_mri_0002242c@l(r3)
/* 00002B50 00002C14  D0 1F 00 04 */	stfs f0, 0x4(r31)
/* 00002B54 00002C18  D0 1F 00 00 */	stfs f0, 0x0(r31)
/* 00002B58 00002C1C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 00002B5C 00002C20  D0 1F 00 08 */	stfs f0, 0x8(r31)
/* 00002B60 00002C24  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 00002B64 00002C28  90 1E 00 7C */	stw r0, 0x7c(r30)
/* 00002B68 00002C2C  90 1E 00 80 */	stw r0, 0x80(r30)
.L_00002B6C:
/* 00002B6C 00002C30  C0 5F 00 00 */	lfs f2, 0x0(r31)
/* 00002B70 00002C34  3C 60 00 00 */	lis r3, float_neg10_mri_00022430@ha
/* 00002B74 00002C38  C0 3F 00 04 */	lfs f1, 0x4(r31)
/* 00002B78 00002C3C  C0 03 00 00 */	lfs f0, float_neg10_mri_00022430@l(r3)
/* 00002B7C 00002C40  EC 22 08 2A */	fadds f1, f2, f1
/* 00002B80 00002C44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00002B84 00002C48  D0 3F 00 08 */	stfs f1, 0x8(r31)
/* 00002B88 00002C4C  40 80 00 08 */	bge .L_00002B90
/* 00002B8C 00002C50  D0 1F 00 08 */	stfs f0, 0x8(r31)
.L_00002B90:
/* 00002B90 00002C54  C0 5F 00 08 */	lfs f2, 0x8(r31)
/* 00002B94 00002C58  3C 60 00 00 */	lis r3, float_0p25_mri_00022434@ha
/* 00002B98 00002C5C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 00002B9C 00002C60  C0 03 00 00 */	lfs f0, float_0p25_mri_00022434@l(r3)
/* 00002BA0 00002C64  EF E2 08 28 */	fsubs f31, f2, f1
/* 00002BA4 00002C68  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00002BA8 00002C6C  4C 41 13 82 */	cror eq, gt, eq
/* 00002BAC 00002C70  40 82 00 0C */	bne .L_00002BB8
/* 00002BB0 00002C74  FF E0 00 90 */	fmr f31, f0
/* 00002BB4 00002C78  48 00 00 1C */	b .L_00002BD0
.L_00002BB8:
/* 00002BB8 00002C7C  3C 60 00 00 */	lis r3, float_neg0p25_mri_00022438@ha
/* 00002BBC 00002C80  C0 03 00 00 */	lfs f0, float_neg0p25_mri_00022438@l(r3)
/* 00002BC0 00002C84  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00002BC4 00002C88  4C 40 13 82 */	cror eq, lt, eq
/* 00002BC8 00002C8C  40 82 00 08 */	bne .L_00002BD0
/* 00002BCC 00002C90  FF E0 00 90 */	fmr f31, f0
.L_00002BD0:
/* 00002BD0 00002C94  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 00002BD4 00002C98  3C 60 00 00 */	lis r3, vec3_mri_00022420@ha
/* 00002BD8 00002C9C  38 A3 00 00 */	addi r5, r3, vec3_mri_00022420@l
/* 00002BDC 00002CA0  38 C0 00 00 */	li r6, 0x0
/* 00002BE0 00002CA4  EC 00 F8 2A */	fadds f0, f0, f31
/* 00002BE4 00002CA8  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00002BE8 00002CAC  80 65 00 04 */	lwz r3, 0x4(r5)
/* 00002BEC 00002CB0  80 05 00 08 */	lwz r0, 0x8(r5)
/* 00002BF0 00002CB4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 00002BF4 00002CB8  90 81 00 08 */	stw r4, 0x8(r1)
/* 00002BF8 00002CBC  90 61 00 0C */	stw r3, 0xc(r1)
/* 00002BFC 00002CC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 00002C00 00002CC4  80 7E 00 80 */	lwz r3, 0x80(r30)
/* 00002C04 00002CC8  38 03 FF FF */	subi r0, r3, 0x1
/* 00002C08 00002CCC  90 1E 00 80 */	stw r0, 0x80(r30)
/* 00002C0C 00002CD0  80 1E 00 80 */	lwz r0, 0x80(r30)
/* 00002C10 00002CD4  2C 00 00 00 */	cmpwi r0, 0x0
/* 00002C14 00002CD8  40 80 00 20 */	bge .L_00002C34
/* 00002C18 00002CDC  38 00 00 00 */	li r0, 0x0
/* 00002C1C 00002CE0  90 1E 00 80 */	stw r0, 0x80(r30)
/* 00002C20 00002CE4  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 00002C24 00002CE8  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 00002C28 00002CEC  41 82 00 08 */	beq .L_00002C30
/* 00002C2C 00002CF0  38 C0 00 01 */	li r6, 0x1
.L_00002C30:
/* 00002C30 00002CF4  D3 FE 00 78 */	stfs f31, 0x78(r30)
.L_00002C34:
/* 00002C34 00002CF8  2C 06 00 00 */	cmpwi r6, 0x0
/* 00002C38 00002CFC  41 82 00 6C */	beq .L_00002CA4
/* 00002C3C 00002D00  80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 00002C40 00002D04  2C 03 00 00 */	cmpwi r3, 0x0
/* 00002C44 00002D08  41 82 00 08 */	beq .L_00002C4C
/* 00002C48 00002D0C  4B FF D6 11 */	bl psndSFXOff
.L_00002C4C:
/* 00002C4C 00002D10  3C 60 00 00 */	lis r3, zero_mri_0002242c@ha
/* 00002C50 00002D14  C0 03 00 00 */	lfs f0, zero_mri_0002242c@l(r3)
/* 00002C54 00002D18  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00002C58 00002D1C  40 80 00 20 */	bge .L_00002C78
/* 00002C5C 00002D20  3C 60 00 00 */	lis r3, str_SFX_STG2_SWITCH_ON1_mri_0002243c@ha
/* 00002C60 00002D24  38 81 00 08 */	addi r4, r1, 0x8
/* 00002C64 00002D28  38 63 00 00 */	addi r3, r3, str_SFX_STG2_SWITCH_ON1_mri_0002243c@l
/* 00002C68 00002D2C  4B FF D5 F1 */	bl psndSFXOn_3D
/* 00002C6C 00002D30  90 7E 00 7C */	stw r3, 0x7c(r30)
/* 00002C70 00002D34  38 00 00 03 */	li r0, 0x3
/* 00002C74 00002D38  90 1E 00 80 */	stw r0, 0x80(r30)
.L_00002C78:
/* 00002C78 00002D3C  3C 60 00 00 */	lis r3, zero_mri_0002242c@ha
/* 00002C7C 00002D40  C0 03 00 00 */	lfs f0, zero_mri_0002242c@l(r3)
/* 00002C80 00002D44  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00002C84 00002D48  40 81 00 20 */	ble .L_00002CA4
/* 00002C88 00002D4C  3C 60 00 00 */	lis r3, str_SFX_STG2_SWITCH_OFF1_mri_00022450@ha
/* 00002C8C 00002D50  38 81 00 08 */	addi r4, r1, 0x8
/* 00002C90 00002D54  38 63 00 00 */	addi r3, r3, str_SFX_STG2_SWITCH_OFF1_mri_00022450@l
/* 00002C94 00002D58  4B FF D5 C5 */	bl psndSFXOn_3D
/* 00002C98 00002D5C  90 7E 00 7C */	stw r3, 0x7c(r30)
/* 00002C9C 00002D60  38 00 00 03 */	li r0, 0x3
/* 00002CA0 00002D64  90 1E 00 80 */	stw r0, 0x80(r30)
.L_00002CA4:
/* 00002CA4 00002D68  3C 60 00 00 */	lis r3, zero_mri_0002242c@ha
/* 00002CA8 00002D6C  3C 80 00 00 */	lis r4, str_S_sui_l_mri_00022468@ha
/* 00002CAC 00002D70  C0 23 00 00 */	lfs f1, zero_mri_0002242c@l(r3)
/* 00002CB0 00002D74  38 64 00 00 */	addi r3, r4, str_S_sui_l_mri_00022468@l
/* 00002CB4 00002D78  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 00002CB8 00002D7C  FC 60 08 90 */	fmr f3, f1
/* 00002CBC 00002D80  4B FF D5 9D */	bl mapObjTranslate
/* 00002CC0 00002D84  3C 60 00 00 */	lis r3, str_A_sui_l_mri_00022470@ha
/* 00002CC4 00002D88  38 63 00 00 */	addi r3, r3, str_A_sui_l_mri_00022470@l
/* 00002CC8 00002D8C  4B FF D5 91 */	bl hitBindUpdate
/* 00002CCC 00002D90  38 60 00 00 */	li r3, 0x0
/* 00002CD0 00002D94  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 00002CD4 00002D98  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 00002CD8 00002D9C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00002CDC 00002DA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00002CE0 00002DA4  7C 08 03 A6 */	mtlr r0
/* 00002CE4 00002DA8  38 21 00 30 */	addi r1, r1, 0x30
/* 00002CE8 00002DAC  4E 80 00 20 */	blr
.endfn moveSwitch

# .text:0x1D4 | 0x2CEC | size: 0x10
.fn getMri02Yuka_18_text_2CEC, global
/* 00002CEC 00002DB0  3C 60 00 00 */	lis r3, mri02switch@ha
/* 00002CF0 00002DB4  38 63 00 00 */	addi r3, r3, mri02switch@l
/* 00002CF4 00002DB8  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 00002CF8 00002DBC  4E 80 00 20 */	blr
.endfn getMri02Yuka_18_text_2CEC

# .text:0x1E4 | 0x2CFC | size: 0x38
.fn setPuniWeight, local
/* 00002CFC 00002DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002D00 00002DC4  7C 08 02 A6 */	mflr r0
/* 00002D04 00002DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002D08 00002DCC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00002D0C 00002DD0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00002D10 00002DD4  4B FF D5 49 */	bl evtGetFloat
/* 00002D14 00002DD8  3C 80 00 00 */	lis r4, mri02switch@ha
/* 00002D18 00002DDC  38 60 00 02 */	li r3, 0x2
/* 00002D1C 00002DE0  38 84 00 00 */	addi r4, r4, mri02switch@l
/* 00002D20 00002DE4  D0 24 00 04 */	stfs f1, 0x4(r4)
/* 00002D24 00002DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002D28 00002DEC  7C 08 03 A6 */	mtlr r0
/* 00002D2C 00002DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 00002D30 00002DF4  4E 80 00 20 */	blr
.endfn setPuniWeight

# .text:0x21C | 0x2D34 | size: 0x54
.fn getSwitch, local
/* 00002D34 00002DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002D38 00002DFC  7C 08 02 A6 */	mflr r0
/* 00002D3C 00002E00  3C A0 00 00 */	lis r5, mri02switch@ha
/* 00002D40 00002E04  3C 80 00 00 */	lis r4, float_neg10_mri_00022430@ha
/* 00002D44 00002E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002D48 00002E0C  38 A5 00 00 */	addi r5, r5, mri02switch@l
/* 00002D4C 00002E10  C0 04 00 00 */	lfs f0, float_neg10_mri_00022430@l(r4)
/* 00002D50 00002E14  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 00002D54 00002E18  38 A0 00 00 */	li r5, 0x0
/* 00002D58 00002E1C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00002D5C 00002E20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00002D60 00002E24  4C 40 13 82 */	cror eq, lt, eq
/* 00002D64 00002E28  40 82 00 08 */	bne .L_00002D6C
/* 00002D68 00002E2C  38 A0 00 01 */	li r5, 0x1
.L_00002D6C:
/* 00002D6C 00002E30  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00002D70 00002E34  4B FF D4 E9 */	bl evtSetValue
/* 00002D74 00002E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002D78 00002E3C  38 60 00 02 */	li r3, 0x2
/* 00002D7C 00002E40  7C 08 03 A6 */	mtlr r0
/* 00002D80 00002E44  38 21 00 10 */	addi r1, r1, 0x10
/* 00002D84 00002E48  4E 80 00 20 */	blr
.endfn getSwitch

# 0x00001CC0..0x00001F28 | size: 0x268
.rodata
.balign 8

# .rodata:0x0 | 0x1CC0 | size: 0x7
.obj str_dokan1_mri_00022360, local
	.string "dokan1"
.endobj str_dokan1_mri_00022360

# .rodata:0x7 | 0x1CC7 | size: 0x1
.obj gap_03_00001CC7_rodata, global
.hidden gap_03_00001CC7_rodata
	.byte 0x00
.endobj gap_03_00001CC7_rodata

# .rodata:0x8 | 0x1CC8 | size: 0x7
.obj str_mri_01_mri_00022368, local
	.string "mri_01"
.endobj str_mri_01_mri_00022368

# .rodata:0xF | 0x1CCF | size: 0x1
.obj gap_03_00001CCF_rodata, global
.hidden gap_03_00001CCF_rodata
	.byte 0x00
.endobj gap_03_00001CCF_rodata

# .rodata:0x10 | 0x1CD0 | size: 0x6
.obj str_dokan_mri_00022370, local
	.string "dokan"
.endobj str_dokan_mri_00022370

# .rodata:0x16 | 0x1CD6 | size: 0x2
.obj gap_03_00001CD6_rodata, global
.hidden gap_03_00001CD6_rodata
	.2byte 0x0000
.endobj gap_03_00001CD6_rodata

# .rodata:0x18 | 0x1CD8 | size: 0x7
.obj str_dokan2_mri_00022378, local
	.string "dokan2"
.endobj str_dokan2_mri_00022378

# .rodata:0x1F | 0x1CDF | size: 0x1
.obj gap_03_00001CDF_rodata, global
.hidden gap_03_00001CDF_rodata
	.byte 0x00
.endobj gap_03_00001CDF_rodata

# .rodata:0x20 | 0x1CE0 | size: 0x7
.obj str_mri_05_mri_00022380, local
	.string "mri_05"
.endobj str_mri_05_mri_00022380

# .rodata:0x27 | 0x1CE7 | size: 0x1
.obj gap_03_00001CE7_rodata, global
.hidden gap_03_00001CE7_rodata
	.byte 0x00
.endobj gap_03_00001CE7_rodata

# .rodata:0x28 | 0x1CE8 | size: 0x7
.obj str_dokan3_mri_00022388, local
	.string "dokan3"
.endobj str_dokan3_mri_00022388

# .rodata:0x2F | 0x1CEF | size: 0x1
.obj gap_03_00001CEF_rodata, global
.hidden gap_03_00001CEF_rodata
	.byte 0x00
.endobj gap_03_00001CEF_rodata

# .rodata:0x30 | 0x1CF0 | size: 0x7
.obj str_mri_20_mri_00022390, local
	.string "mri_20"
.endobj str_mri_20_mri_00022390

# .rodata:0x37 | 0x1CF7 | size: 0x1
.obj gap_03_00001CF7_rodata, global
.hidden gap_03_00001CF7_rodata
	.byte 0x00
.endobj gap_03_00001CF7_rodata

# .rodata:0x38 | 0x1CF8 | size: 0xD
.obj str_item_ueki_04_mri_00022398, local
	.string "item_ueki_04"
.endobj str_item_ueki_04_mri_00022398

# .rodata:0x45 | 0x1D05 | size: 0x3
.obj gap_03_00001D05_rodata, global
.hidden gap_03_00001D05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D05_rodata

# .rodata:0x48 | 0x1D08 | size: 0x9
.obj str_A_ueki01_mri_000223a8, local
	.string "A_ueki01"
.endobj str_A_ueki01_mri_000223a8

# .rodata:0x51 | 0x1D11 | size: 0x3
.obj gap_03_00001D11_rodata, global
.hidden gap_03_00001D11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D11_rodata

# .rodata:0x54 | 0x1D14 | size: 0x9
.obj str_S_ueki01_mri_000223b4, local
	.string "S_ueki01"
.endobj str_S_ueki01_mri_000223b4

# .rodata:0x5D | 0x1D1D | size: 0x3
.obj gap_03_00001D1D_rodata, global
.hidden gap_03_00001D1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D1D_rodata

# .rodata:0x60 | 0x1D20 | size: 0x9
.obj str_A_ueki02_mri_000223c0, local
	.string "A_ueki02"
.endobj str_A_ueki02_mri_000223c0

# .rodata:0x69 | 0x1D29 | size: 0x3
.obj gap_03_00001D29_rodata, global
.hidden gap_03_00001D29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D29_rodata

# .rodata:0x6C | 0x1D2C | size: 0x9
.obj str_S_ueki02_mri_000223cc, local
	.string "S_ueki02"
.endobj str_S_ueki02_mri_000223cc

# .rodata:0x75 | 0x1D35 | size: 0x3
.obj gap_03_00001D35_rodata, global
.hidden gap_03_00001D35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D35_rodata

# .rodata:0x78 | 0x1D38 | size: 0x9
.obj str_A_ueki03_mri_000223d8, local
	.string "A_ueki03"
.endobj str_A_ueki03_mri_000223d8

# .rodata:0x81 | 0x1D41 | size: 0x3
.obj gap_03_00001D41_rodata, global
.hidden gap_03_00001D41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D41_rodata

# .rodata:0x84 | 0x1D44 | size: 0x9
.obj str_s_ueki03_mri_000223e4, local
	.string "s_ueki03"
.endobj str_s_ueki03_mri_000223e4

# .rodata:0x8D | 0x1D4D | size: 0x3
.obj gap_03_00001D4D_rodata, global
.hidden gap_03_00001D4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D4D_rodata

# .rodata:0x90 | 0x1D50 | size: 0x9
.obj str_A_ueki04_mri_000223f0, local
	.string "A_ueki04"
.endobj str_A_ueki04_mri_000223f0

# .rodata:0x99 | 0x1D59 | size: 0x3
.obj gap_03_00001D59_rodata, global
.hidden gap_03_00001D59_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D59_rodata

# .rodata:0x9C | 0x1D5C | size: 0x9
.obj str_S_ueki04_mri_000223fc, local
	.string "S_ueki04"
.endobj str_S_ueki04_mri_000223fc

# .rodata:0xA5 | 0x1D65 | size: 0x3
.obj gap_03_00001D65_rodata, global
.hidden gap_03_00001D65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D65_rodata

# .rodata:0xA8 | 0x1D68 | size: 0x9
.obj str_A_ueki05_mri_00022408, local
	.string "A_ueki05"
.endobj str_A_ueki05_mri_00022408

# .rodata:0xB1 | 0x1D71 | size: 0x3
.obj gap_03_00001D71_rodata, global
.hidden gap_03_00001D71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D71_rodata

# .rodata:0xB4 | 0x1D74 | size: 0x9
.obj str_S_ueki05_mri_00022414, local
	.string "S_ueki05"
.endobj str_S_ueki05_mri_00022414

# .rodata:0xBD | 0x1D7D | size: 0x3
.obj gap_03_00001D7D_rodata, global
.hidden gap_03_00001D7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D7D_rodata

# .rodata:0xC0 | 0x1D80 | size: 0xC
.obj vec3_mri_00022420, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_mri_00022420

# .rodata:0xCC | 0x1D8C | size: 0x4
.obj zero_mri_0002242c, local
	.float 0
.endobj zero_mri_0002242c

# .rodata:0xD0 | 0x1D90 | size: 0x4
.obj float_neg10_mri_00022430, local
	.float -10
.endobj float_neg10_mri_00022430

# .rodata:0xD4 | 0x1D94 | size: 0x4
.obj float_0p25_mri_00022434, local
	.float 0.25
.endobj float_0p25_mri_00022434

# .rodata:0xD8 | 0x1D98 | size: 0x4
.obj float_neg0p25_mri_00022438, local
	.float -0.25
.endobj float_neg0p25_mri_00022438

# .rodata:0xDC | 0x1D9C | size: 0x14
.obj str_SFX_STG2_SWITCH_ON1_mri_0002243c, local
	.string "SFX_STG2_SWITCH_ON1"
.endobj str_SFX_STG2_SWITCH_ON1_mri_0002243c

# .rodata:0xF0 | 0x1DB0 | size: 0x15
.obj str_SFX_STG2_SWITCH_OFF1_mri_00022450, local
	.string "SFX_STG2_SWITCH_OFF1"
.endobj str_SFX_STG2_SWITCH_OFF1_mri_00022450

# .rodata:0x105 | 0x1DC5 | size: 0x3
.obj gap_03_00001DC5_rodata, global
.hidden gap_03_00001DC5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001DC5_rodata

# .rodata:0x108 | 0x1DC8 | size: 0x8
.obj str_S_sui_l_mri_00022468, local
	.string "S_sui_l"
.endobj str_S_sui_l_mri_00022468

# .rodata:0x110 | 0x1DD0 | size: 0x8
.obj str_A_sui_l_mri_00022470, local
	.string "A_sui_l"
.endobj str_A_sui_l_mri_00022470

# .rodata:0x118 | 0x1DD8 | size: 0x9
.obj str_S_dokan2_mri_00022478, local
	.string "S_dokan2"
.endobj str_S_dokan2_mri_00022478

# .rodata:0x121 | 0x1DE1 | size: 0x3
.obj gap_03_00001DE1_rodata, global
.hidden gap_03_00001DE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001DE1_rodata

# .rodata:0x124 | 0x1DE4 | size: 0x16
.obj str_SFX_STG2_DOKAN_QUAKE_mri_00022484, local
	.string "SFX_STG2_DOKAN_QUAKE1"
.endobj str_SFX_STG2_DOKAN_QUAKE_mri_00022484

# .rodata:0x13A | 0x1DFA | size: 0x2
.obj gap_03_00001DFA_rodata, global
.hidden gap_03_00001DFA_rodata
	.2byte 0x0000
.endobj gap_03_00001DFA_rodata

# .rodata:0x13C | 0x1DFC | size: 0x17
.obj str_SFX_STG2_DOKAN_APPEA_mri_0002249c, local
	.string "SFX_STG2_DOKAN_APPEAR1"
.endobj str_SFX_STG2_DOKAN_APPEA_mri_0002249c

# .rodata:0x153 | 0x1E13 | size: 0x1
.obj gap_03_00001E13_rodata, global
.hidden gap_03_00001E13_rodata
	.byte 0x00
.endobj gap_03_00001E13_rodata

# .rodata:0x154 | 0x1E14 | size: 0x9
.obj str_A_dokan2_mri_000224b4, local
	.string "A_dokan2"
.endobj str_A_dokan2_mri_000224b4

# .rodata:0x15D | 0x1E1D | size: 0x3
.obj gap_03_00001E1D_rodata, global
.hidden gap_03_00001E1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E1D_rodata

# .rodata:0x160 | 0x1E20 | size: 0x10
.obj str_stg2_mri_e16_00_mri_000224c0, local
	.string "stg2_mri_e16_00"
.endobj str_stg2_mri_e16_00_mri_000224c0

# .rodata:0x170 | 0x1E30 | size: 0xE
.obj str_S_isk_01_03_C_mri_000224d0, local
	.string "S_isk_01_03_C"
.endobj str_S_isk_01_03_C_mri_000224d0

# .rodata:0x17E | 0x1E3E | size: 0x2
.obj gap_03_00001E3E_rodata, global
.hidden gap_03_00001E3E_rodata
	.2byte 0x0000
.endobj gap_03_00001E3E_rodata

# .rodata:0x180 | 0x1E40 | size: 0xC
.obj str_S_isk_01_02_mri_000224e0, local
	.string "S_isk_01_02"
.endobj str_S_isk_01_02_mri_000224e0

# .rodata:0x18C | 0x1E4C | size: 0xC
.obj str_S_isk_01_03_mri_000224ec, local
	.string "S_isk_01_03"
.endobj str_S_isk_01_03_mri_000224ec

# .rodata:0x198 | 0x1E58 | size: 0x19
.obj str_SFX_STG2_SWITCH_COUN_mri_000224f8, local
	.string "SFX_STG2_SWITCH_COUNTER1"
.endobj str_SFX_STG2_SWITCH_COUN_mri_000224f8

# .rodata:0x1B1 | 0x1E71 | size: 0x3
.obj gap_03_00001E71_rodata, global
.hidden gap_03_00001E71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E71_rodata

# .rodata:0x1B4 | 0x1E74 | size: 0xD
.obj str_S_sui_hikari_mri_00022514, local
	.string "S_sui_hikari"
.endobj str_S_sui_hikari_mri_00022514

# .rodata:0x1C1 | 0x1E81 | size: 0x3
.obj gap_03_00001E81_rodata, global
.hidden gap_03_00001E81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E81_rodata

# .rodata:0x1C4 | 0x1E84 | size: 0x9
.obj str_kururin1_mri_00022524, local
	.string "kururin1"
.endobj str_kururin1_mri_00022524

# .rodata:0x1CD | 0x1E8D | size: 0x3
.obj gap_03_00001E8D_rodata, global
.hidden gap_03_00001E8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E8D_rodata

# .rodata:0x1D0 | 0x1E90 | size: 0x7
.obj str_S_yuka_mri_00022530, local
	.string "S_yuka"
.endobj str_S_yuka_mri_00022530

# .rodata:0x1D7 | 0x1E97 | size: 0x1
.obj gap_03_00001E97_rodata, global
.hidden gap_03_00001E97_rodata
	.byte 0x00
.endobj gap_03_00001E97_rodata

# .rodata:0x1D8 | 0x1E98 | size: 0x10
.obj str_BGM_EVT_DANGER4_mri_00022538, local
	.string "BGM_EVT_DANGER4"
.endobj str_BGM_EVT_DANGER4_mri_00022538

# .rodata:0x1E8 | 0x1EA8 | size: 0xE
.obj str_ENV_STG2_MRI9_mri_00022548, local
	.string "ENV_STG2_MRI9"
.endobj str_ENV_STG2_MRI9_mri_00022548

# .rodata:0x1F6 | 0x1EB6 | size: 0x2
.obj gap_03_00001EB6_rodata, global
.hidden gap_03_00001EB6_rodata
	.2byte 0x0000
.endobj gap_03_00001EB6_rodata

# .rodata:0x1F8 | 0x1EB8 | size: 0xE
.obj str_BGM_STG2_MRI1_mri_00022558, local
	.string "BGM_STG2_MRI1"
.endobj str_BGM_STG2_MRI1_mri_00022558

# .rodata:0x206 | 0x1EC6 | size: 0x2
.obj gap_03_00001EC6_rodata, global
.hidden gap_03_00001EC6_rodata
	.2byte 0x0000
.endobj gap_03_00001EC6_rodata

# .rodata:0x208 | 0x1EC8 | size: 0xE
.obj str_ENV_STG2_MRI1_mri_00022568, local
	.string "ENV_STG2_MRI1"
.endobj str_ENV_STG2_MRI1_mri_00022568

# .rodata:0x216 | 0x1ED6 | size: 0x2
.obj gap_03_00001ED6_rodata, global
.hidden gap_03_00001ED6_rodata
	.2byte 0x0000
.endobj gap_03_00001ED6_rodata

# .rodata:0x218 | 0x1ED8 | size: 0x8
.obj str_mizu_01_mri_00022578, local
	.string "mizu_01"
.endobj str_mizu_01_mri_00022578

# .rodata:0x220 | 0x1EE0 | size: 0x8
.obj str_mizu_02_mri_00022580, local
	.string "mizu_02"
.endobj str_mizu_02_mri_00022580

# .rodata:0x228 | 0x1EE8 | size: 0x7
.obj str_awa_01_mri_00022588, local
	.string "awa_01"
.endobj str_awa_01_mri_00022588

# .rodata:0x22F | 0x1EEF | size: 0x1
.obj gap_03_00001EEF_rodata, global
.hidden gap_03_00001EEF_rodata
	.byte 0x00
.endobj gap_03_00001EEF_rodata

# .rodata:0x230 | 0x1EF0 | size: 0x7
.obj str_awa_02_mri_00022590, local
	.string "awa_02"
.endobj str_awa_02_mri_00022590

# .rodata:0x237 | 0x1EF7 | size: 0x1
.obj gap_03_00001EF7_rodata, global
.hidden gap_03_00001EF7_rodata
	.byte 0x00
.endobj gap_03_00001EF7_rodata

# .rodata:0x238 | 0x1EF8 | size: 0xB
.obj str_sui_hikari_mri_00022598, local
	.string "sui_hikari"
.endobj str_sui_hikari_mri_00022598

# .rodata:0x243 | 0x1F03 | size: 0x1
.obj gap_03_00001F03_rodata, global
.hidden gap_03_00001F03_rodata
	.byte 0x00
.endobj gap_03_00001F03_rodata

# .rodata:0x244 | 0x1F04 | size: 0x9
.obj str_punipuni_mri_000225a4, local
	.string "punipuni"
.endobj str_punipuni_mri_000225a4

# .rodata:0x24D | 0x1F0D | size: 0x3
.obj gap_03_00001F0D_rodata, global
.hidden gap_03_00001F0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F0D_rodata

# .rodata:0x250 | 0x1F10 | size: 0xA
.obj str_A_dai_mae_mri_000225b0, local
	.string "A_dai_mae"
.endobj str_A_dai_mae_mri_000225b0

# .rodata:0x25A | 0x1F1A | size: 0x2
.obj gap_03_00001F1A_rodata, global
.hidden gap_03_00001F1A_rodata
	.2byte 0x0000
.endobj gap_03_00001F1A_rodata

# .rodata:0x25C | 0x1F1C | size: 0xB
.obj str_S_sui_l_02_mri_000225bc, local
	.string "S_sui_l_02"
.endobj str_S_sui_l_02_mri_000225bc

# .rodata:0x267 | 0x1F27 | size: 0x1
.obj gap_03_00001F27_rodata, global
.hidden gap_03_00001F27_rodata
	.byte 0x00
.endobj gap_03_00001F27_rodata

# 0x0000FB10..0x00010670 | size: 0xB60
.data
.balign 8

# .data:0x0 | 0xFB10 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xFB18 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xFB1C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xFB20 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xFB24 | size: 0x4
.obj gap_04_0000FB24_data, global
.hidden gap_04_0000FB24_data
	.4byte 0x00000000
.endobj gap_04_0000FB24_data

# .data:0x18 | 0xFB28 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xFB30 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xFB34 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xFB38 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xFB40 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xFB44 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xFB48 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xFB4C | size: 0x4
.obj gap_04_0000FB4C_data, global
.hidden gap_04_0000FB4C_data
	.4byte 0x00000000
.endobj gap_04_0000FB4C_data

# .data:0x40 | 0xFB50 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xFB58 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xFB5C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xFB60 | size: 0xF0
.obj bero_entry_data, local
	.4byte str_dokan1_mri_00022360
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte str_mri_01_mri_00022368
	.4byte str_dokan_mri_00022370
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan2_mri_00022378
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte str_mri_05_mri_00022380
	.4byte str_dokan3_mri_00022388
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan3_mri_00022388
	.4byte 0x00020000
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte str_mri_20_mri_00022390
	.4byte str_dokan2_mri_00022378
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

# .data:0x140 | 0xFC50 | size: 0x50
.obj evt_ueki_04, local
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_ueki_04_mri_00022398
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_ueki_04_mri_00022398
	.4byte 0x0000008E
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x00000004
	.4byte 0xF840668F
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ueki_04

# .data:0x190 | 0xFCA0 | size: 0x60
.obj ueki_access_data, local
	.4byte 0x00000001
	.4byte str_A_ueki01_mri_000223a8
	.4byte str_S_ueki01_mri_000223b4
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki02_mri_000223c0
	.4byte str_S_ueki02_mri_000223cc
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki03_mri_000223d8
	.4byte str_s_ueki03_mri_000223e4
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki04_mri_000223f0
	.4byte str_S_ueki04_mri_000223fc
	.4byte evt_ueki_04
	.4byte 0x00000001
	.4byte str_A_ueki05_mri_00022408
	.4byte str_S_ueki05_mri_00022414
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj ueki_access_data

# .data:0x1F0 | 0xFD00 | size: 0x10
.obj punipuni_switch, local
	.4byte 0x0001005B
	.4byte moveSwitch
	.4byte 0x00000002
	.4byte 0x00000001
.endobj punipuni_switch

# .data:0x200 | 0xFD10 | size: 0x1EC
.obj dokan_event, local
	.4byte 0x0001000B
	.4byte 0xFAA2B58F
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A8A
	.4byte 0x00001194
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_dokan2_mri_00022478
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_DOKAN_QUAKE_mri_00022484
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x00001194
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003C
	.4byte 0x0000007E
	.4byte 0x0000016B
	.4byte 0x0000003C
	.4byte 0x0000003E
	.4byte 0xFFFFFFFD
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_dokan2_mri_00022478
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_DOKAN_APPEA_mri_0002249c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x00000BB8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_dokan2_mri_00022478
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_dokan2_mri_000224b4
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_mri_e16_00_mri_000224c0
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000060
	.4byte 0x0003005B
	.4byte evt_puni_dokan_onoff_18_text_19CC4
	.4byte str_dokan2_mri_00022378
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dokan_event

# .data:0x3EC | 0xFEFC | size: 0x8C
.obj dokan_init, local
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_dokan2_mri_000224b4
	.4byte str_S_dokan2_mri_00022478
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_dokan2_mri_00022478
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_dokan2_mri_000224b4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte getSwitch
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF840668E
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte dokan_event
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dokan_init

# .data:0x478 | 0xFF88 | size: 0xCC
.obj yuka_main, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_isk_01_03_C_mri_000224d0
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFD050F80
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
	.4byte str_S_isk_01_02_mri_000224e0
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_isk_01_03_mri_000224ec
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yuka_main

# .data:0x544 | 0x10054 | size: 0x208
.obj yuka_move, local
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFD050F80
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
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
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
	.4byte 0x0000000A
	.4byte 0x00020036
	.4byte 0xFD050F80
	.4byte 0xFE363C8B
	.4byte 0x0002001D
	.4byte 0xFD050F80
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0xFE363C8B
	.4byte 0x00020018
	.4byte 0xF840668E
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte setPuniWeight
	.4byte 0xFE363C80
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte setPuniWeight
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFD050F80
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_SWITCH_COUN_mri_000224f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFECF
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
.endobj yuka_move

# .data:0x74C | 0x1025C | size: 0x8C
.obj punipuni_ball00_init, local
	.4byte 0x0001005E
	.4byte mri_punipuni_setup_18_data_790
	.4byte 0x00020018
	.4byte 0xF840668E
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xFFFFFFBC
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
	.4byte str_S_sui_hikari_mri_00022514
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_target_set_position_18_text_1AC14
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFF8
	.4byte 0x00020032
	.4byte 0xFAA2B58F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj punipuni_ball00_init

# .data:0x7D8 | 0x102E8 | size: 0xEC
.obj punipuni_ball00, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840668E
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte mri_punipuni_itemselect_18_data_7D0
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xFFFFFFBC
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_sui_hikari_mri_00022514
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B58F
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte mri_punipuni_itemset_18_data_870
	.4byte 0x00020032
	.4byte 0xF840668E
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFAA2B58F
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF840668E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_sui_hikari_mri_00022514
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

# .data:0x8C4 | 0x103D4 | size: 0x29C
.obj mri_02_init_evt_18_data_103D4, global
	.4byte 0x0001005B
	.4byte evt_puni_mem_init_18_text_15D70
	.4byte 0x0008005B
	.4byte evt_puni_set_yuka_18_text_15FA0
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xFFFFFECA
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00000001
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
	.4byte 0x0001005E
	.4byte mri_puni_init_18_data_24BA4
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
	.4byte 0x0008005B
	.4byte evt_mobj_kururing_floor
	.4byte str_kururin1_mri_00022524
	.4byte 0x0000009B
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte str_S_yuka_mri_00022530
	.4byte 0x0000007D
	.4byte 0xF840716C
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000006D
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER4_mri_00022538
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI9_mri_00022548
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_00022558
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI1_mri_00022568
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_01_mri_00022578
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_02_mri_00022580
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_01_mri_00022588
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_02_mri_00022590
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_sui_hikari_mri_00022598
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_sui_l_mri_00022470
	.4byte str_S_sui_l_mri_00022468
	.4byte 0x0001005C
	.4byte punipuni_switch
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_punipuni_mri_000225a4
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte punipuni_ball00_init
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_dai_mae_mri_000225b0
	.4byte 0x00000000
	.4byte punipuni_ball00
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x0000000A
	.4byte 0x0001005C
	.4byte yuka_main
	.4byte 0x0001005C
	.4byte yuka_move
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000060
	.4byte 0x0001005C
	.4byte dokan_init
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0003005B
	.4byte evt_puni_dokan_onoff_18_text_19CC4
	.4byte str_dokan2_mri_00022378
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_sui_l_02_mri_000225bc
	.4byte 0x00020033
	.4byte 0xFE363C81
	.4byte 0xFD050F80
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000009
	.4byte 0x0001005C
	.4byte mri_hikari_color_18_data_974
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mri_02_init_evt_18_data_103D4

# 0x00000010..0x00000020 | size: 0x10
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x10 | size: 0x10
.obj mri02switch, local
	.skip 0x10
.endobj mri02switch
