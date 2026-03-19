.include "macros.inc"
.file "unit_pakkun_flower.o"

# 0x0001EE0C..0x0001F09C | size: 0x290
.text
.balign 4

# .text:0x0 | 0x1EE0C | size: 0x5C
.fn pakkun_ceil_exist, local
/* 0001EE0C 0001EED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0001EE10 0001EED4  7C 08 02 A6 */	mflr r0
/* 0001EE14 0001EED8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001EE18 0001EEDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 0001EE1C 0001EEE0  38 84 00 00 */	addi r4, r4, _battleWorkPointer@l
/* 0001EE20 0001EEE4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001EE24 0001EEE8  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 0001EE28 0001EEEC  3C 84 00 02 */	addis r4, r4, 0x2
/* 0001EE2C 0001EEF0  88 04 80 F8 */	lbz r0, -0x7f08(r4)
/* 0001EE30 0001EEF4  54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 0001EE34 0001EEF8  41 82 00 14 */	beq .L_0001EE48
/* 0001EE38 0001EEFC  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0001EE3C 0001EF00  38 A0 00 00 */	li r5, 0x0
/* 0001EE40 0001EF04  4B FE 14 19 */	bl evtSetValue
/* 0001EE44 0001EF08  48 00 00 10 */	b .L_0001EE54
.L_0001EE48:
/* 0001EE48 0001EF0C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0001EE4C 0001EF10  38 A0 00 01 */	li r5, 0x1
/* 0001EE50 0001EF14  4B FE 14 09 */	bl evtSetValue
.L_0001EE54:
/* 0001EE54 0001EF18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0001EE58 0001EF1C  38 60 00 02 */	li r3, 0x2
/* 0001EE5C 0001EF20  7C 08 03 A6 */	mtlr r0
/* 0001EE60 0001EF24  38 21 00 10 */	addi r1, r1, 0x10
/* 0001EE64 0001EF28  4E 80 00 20 */	blr
.endfn pakkun_ceil_exist

# .text:0x5C | 0x1EE68 | size: 0x78
.fn shadow_scale_memory, local
/* 0001EE68 0001EF2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0001EE6C 0001EF30  7C 08 02 A6 */	mflr r0
/* 0001EE70 0001EF34  90 01 00 24 */	stw r0, 0x24(r1)
/* 0001EE74 0001EF38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 0001EE78 0001EF3C  7C 7F 1B 78 */	mr r31, r3
/* 0001EE7C 0001EF40  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0001EE80 0001EF44  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001EE84 0001EF48  4B FE 13 D5 */	bl evtGetValue
/* 0001EE88 0001EF4C  7C 64 1B 78 */	mr r4, r3
/* 0001EE8C 0001EF50  7F E3 FB 78 */	mr r3, r31
/* 0001EE90 0001EF54  4B FE 13 C9 */	bl BattleTransID
/* 0001EE94 0001EF58  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001EE98 0001EF5C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0001EE9C 0001EF60  7C 64 1B 78 */	mr r4, r3
/* 0001EEA0 0001EF64  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0001EEA4 0001EF68  4B FE 13 B5 */	bl BattleGetUnitPtr
/* 0001EEA8 0001EF6C  7C 7F 1B 78 */	mr r31, r3
/* 0001EEAC 0001EF70  38 80 00 01 */	li r4, 0x1
/* 0001EEB0 0001EF74  4B FE 13 A9 */	bl BtlUnit_GetPartsPtr
/* 0001EEB4 0001EF78  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 0001EEB8 0001EF7C  38 60 00 02 */	li r3, 0x2
/* 0001EEBC 0001EF80  FC 00 00 1E */	fctiwz f0, f0
/* 0001EEC0 0001EF84  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0001EEC4 0001EF88  80 01 00 0C */	lwz r0, 0xc(r1)
/* 0001EEC8 0001EF8C  90 1F 02 18 */	stw r0, 0x218(r31)
/* 0001EECC 0001EF90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 0001EED0 0001EF94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0001EED4 0001EF98  7C 08 03 A6 */	mtlr r0
/* 0001EED8 0001EF9C  38 21 00 20 */	addi r1, r1, 0x20
/* 0001EEDC 0001EFA0  4E 80 00 20 */	blr
.endfn shadow_scale_memory

# .text:0xD4 | 0x1EEE0 | size: 0xE0
.fn shadow_scale_small, local
/* 0001EEE0 0001EFA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0001EEE4 0001EFA8  7C 08 02 A6 */	mflr r0
/* 0001EEE8 0001EFAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 0001EEEC 0001EFB0  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0001EEF0 0001EFB4  7C 9F 23 78 */	mr r31, r4
/* 0001EEF4 0001EFB8  7C 7E 1B 78 */	mr r30, r3
/* 0001EEF8 0001EFBC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0001EEFC 0001EFC0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001EF00 0001EFC4  4B FE 13 59 */	bl evtGetValue
/* 0001EF04 0001EFC8  7C 64 1B 78 */	mr r4, r3
/* 0001EF08 0001EFCC  7F C3 F3 78 */	mr r3, r30
/* 0001EF0C 0001EFD0  4B FE 13 4D */	bl BattleTransID
/* 0001EF10 0001EFD4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001EF14 0001EFD8  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0001EF18 0001EFDC  7C 64 1B 78 */	mr r4, r3
/* 0001EF1C 0001EFE0  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0001EF20 0001EFE4  4B FE 13 39 */	bl BattleGetUnitPtr
/* 0001EF24 0001EFE8  7C 7E 1B 78 */	mr r30, r3
/* 0001EF28 0001EFEC  38 80 00 01 */	li r4, 0x1
/* 0001EF2C 0001EFF0  4B FE 13 2D */	bl BtlUnit_GetPartsPtr
/* 0001EF30 0001EFF4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 0001EF34 0001EFF8  7C 7F 1B 78 */	mr r31, r3
/* 0001EF38 0001EFFC  41 82 00 0C */	beq .L_0001EF44
/* 0001EF3C 0001F000  38 00 00 00 */	li r0, 0x0
/* 0001EF40 0001F004  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0001EF44:
/* 0001EF44 0001F008  80 BE 02 18 */	lwz r5, 0x218(r30)
/* 0001EF48 0001F00C  3C 00 43 30 */	lis r0, 0x4330
/* 0001EF4C 0001F010  3C 80 00 00 */	lis r4, double_to_int_mri_000274b0@ha
/* 0001EF50 0001F014  3C 60 00 00 */	lis r3, zero_mri_000274a8@ha
/* 0001EF54 0001F018  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 0001EF58 0001F01C  90 01 00 08 */	stw r0, 0x8(r1)
/* 0001EF5C 0001F020  38 C4 00 00 */	addi r6, r4, double_to_int_mri_000274b0@l
/* 0001EF60 0001F024  38 83 00 00 */	addi r4, r3, zero_mri_000274a8@l
/* 0001EF64 0001F028  90 A1 00 0C */	stw r5, 0xc(r1)
/* 0001EF68 0001F02C  38 60 00 00 */	li r3, 0x0
/* 0001EF6C 0001F030  C8 26 00 00 */	lfd f1, 0x0(r6)
/* 0001EF70 0001F034  38 A0 00 0F */	li r5, 0xf
/* 0001EF74 0001F038  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0001EF78 0001F03C  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 0001EF7C 0001F040  EC 20 08 28 */	fsubs f1, f0, f1
/* 0001EF80 0001F044  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 0001EF84 0001F048  4B FE 12 D5 */	bl intplGetValue
/* 0001EF88 0001F04C  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 0001EF8C 0001F050  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 0001EF90 0001F054  2C 03 00 0F */	cmpwi r3, 0xf
/* 0001EF94 0001F058  41 80 00 0C */	blt .L_0001EFA0
/* 0001EF98 0001F05C  38 60 00 02 */	li r3, 0x2
/* 0001EF9C 0001F060  48 00 00 10 */	b .L_0001EFAC
.L_0001EFA0:
/* 0001EFA0 0001F064  38 03 00 01 */	addi r0, r3, 0x1
/* 0001EFA4 0001F068  38 60 00 00 */	li r3, 0x0
/* 0001EFA8 0001F06C  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0001EFAC:
/* 0001EFAC 0001F070  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0001EFB0 0001F074  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0001EFB4 0001F078  7C 08 03 A6 */	mtlr r0
/* 0001EFB8 0001F07C  38 21 00 20 */	addi r1, r1, 0x20
/* 0001EFBC 0001F080  4E 80 00 20 */	blr
.endfn shadow_scale_small

# .text:0x1B4 | 0x1EFC0 | size: 0xDC
.fn shadow_scale_return, local
/* 0001EFC0 0001F084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0001EFC4 0001F088  7C 08 02 A6 */	mflr r0
/* 0001EFC8 0001F08C  90 01 00 24 */	stw r0, 0x24(r1)
/* 0001EFCC 0001F090  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0001EFD0 0001F094  7C 9F 23 78 */	mr r31, r4
/* 0001EFD4 0001F098  7C 7E 1B 78 */	mr r30, r3
/* 0001EFD8 0001F09C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0001EFDC 0001F0A0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001EFE0 0001F0A4  4B FE 12 79 */	bl evtGetValue
/* 0001EFE4 0001F0A8  7C 64 1B 78 */	mr r4, r3
/* 0001EFE8 0001F0AC  7F C3 F3 78 */	mr r3, r30
/* 0001EFEC 0001F0B0  4B FE 12 6D */	bl BattleTransID
/* 0001EFF0 0001F0B4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001EFF4 0001F0B8  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0001EFF8 0001F0BC  7C 64 1B 78 */	mr r4, r3
/* 0001EFFC 0001F0C0  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0001F000 0001F0C4  4B FE 12 59 */	bl BattleGetUnitPtr
/* 0001F004 0001F0C8  7C 7E 1B 78 */	mr r30, r3
/* 0001F008 0001F0CC  38 80 00 01 */	li r4, 0x1
/* 0001F00C 0001F0D0  4B FE 12 4D */	bl BtlUnit_GetPartsPtr
/* 0001F010 0001F0D4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 0001F014 0001F0D8  7C 7F 1B 78 */	mr r31, r3
/* 0001F018 0001F0DC  41 82 00 0C */	beq .L_0001F024
/* 0001F01C 0001F0E0  38 00 00 00 */	li r0, 0x0
/* 0001F020 0001F0E4  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0001F024:
/* 0001F024 0001F0E8  80 7E 02 18 */	lwz r3, 0x218(r30)
/* 0001F028 0001F0EC  3C 00 43 30 */	lis r0, 0x4330
/* 0001F02C 0001F0F0  3C 80 00 00 */	lis r4, double_to_int_mri_000274b0@ha
/* 0001F030 0001F0F4  3C A0 00 00 */	lis r5, zero_mri_000274a8@ha
/* 0001F034 0001F0F8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0001F038 0001F0FC  C8 44 00 00 */	lfd f2, double_to_int_mri_000274b0@l(r4)
/* 0001F03C 0001F100  90 61 00 0C */	stw r3, 0xc(r1)
/* 0001F040 0001F104  38 C5 00 00 */	addi r6, r5, zero_mri_000274a8@l
/* 0001F044 0001F108  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 0001F048 0001F10C  38 60 00 00 */	li r3, 0x0
/* 0001F04C 0001F110  90 01 00 08 */	stw r0, 0x8(r1)
/* 0001F050 0001F114  38 A0 00 0F */	li r5, 0xf
/* 0001F054 0001F118  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 0001F058 0001F11C  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0001F05C 0001F120  EC 40 10 28 */	fsubs f2, f0, f2
/* 0001F060 0001F124  4B FE 11 F9 */	bl intplGetValue
/* 0001F064 0001F128  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 0001F068 0001F12C  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 0001F06C 0001F130  2C 03 00 0F */	cmpwi r3, 0xf
/* 0001F070 0001F134  41 80 00 0C */	blt .L_0001F07C
/* 0001F074 0001F138  38 60 00 02 */	li r3, 0x2
/* 0001F078 0001F13C  48 00 00 10 */	b .L_0001F088
.L_0001F07C:
/* 0001F07C 0001F140  38 03 00 01 */	addi r0, r3, 0x1
/* 0001F080 0001F144  38 60 00 00 */	li r3, 0x0
/* 0001F084 0001F148  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0001F088:
/* 0001F088 0001F14C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0001F08C 0001F150  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0001F090 0001F154  7C 08 03 A6 */	mtlr r0
/* 0001F094 0001F158  38 21 00 20 */	addi r1, r1, 0x20
/* 0001F098 0001F15C  4E 80 00 20 */	blr
.endfn shadow_scale_return

# 0x00006CE8..0x00006EA8 | size: 0x1C0
.rodata
.balign 8

# .rodata:0x0 | 0x6CE8 | size: 0x15
.obj str_btl_un_pakkun_flower_mri_00027388, local
	.string "btl_un_pakkun_flower"
.endobj str_btl_un_pakkun_flower_mri_00027388

# .rodata:0x15 | 0x6CFD | size: 0x3
.obj gap_03_00006CFD_rodata, global
.hidden gap_03_00006CFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006CFD_rodata

# .rodata:0x18 | 0x6D00 | size: 0x18
.obj str_SFX_ENM_PAKKUN_DAMAG_mri_000273a0, local
	.string "SFX_ENM_PAKKUN_DAMAGED1"
.endobj str_SFX_ENM_PAKKUN_DAMAG_mri_000273a0

# .rodata:0x30 | 0x6D18 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_mri_000273b8, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_mri_000273b8

# .rodata:0x45 | 0x6D2D | size: 0x3
.obj gap_03_00006D2D_rodata, global
.hidden gap_03_00006D2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D2D_rodata

# .rodata:0x48 | 0x6D30 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_mri_000273d0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_mri_000273d0

# .rodata:0x5C | 0x6D44 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_mri_000273e4, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_mri_000273e4

# .rodata:0x75 | 0x6D5D | size: 0x3
.obj gap_03_00006D5D_rodata, global
.hidden gap_03_00006D5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D5D_rodata

# .rodata:0x78 | 0x6D60 | size: 0xA
.obj str_c_pakflwr_mri_00027400, local
	.string "c_pakflwr"
.endobj str_c_pakflwr_mri_00027400

# .rodata:0x82 | 0x6D6A | size: 0x2
.obj gap_03_00006D6A_rodata, global
.hidden gap_03_00006D6A_rodata
	.2byte 0x0000
.endobj gap_03_00006D6A_rodata

# .rodata:0x84 | 0x6D6C | size: 0x8
.obj str_PKF_N_1_mri_0002740c, local
	.string "PKF_N_1"
.endobj str_PKF_N_1_mri_0002740c

# .rodata:0x8C | 0x6D74 | size: 0x8
.obj str_PKF_Y_1_mri_00027414, local
	.string "PKF_Y_1"
.endobj str_PKF_Y_1_mri_00027414

# .rodata:0x94 | 0x6D7C | size: 0x8
.obj str_PKF_K_1_mri_0002741c, local
	.string "PKF_K_1"
.endobj str_PKF_K_1_mri_0002741c

# .rodata:0x9C | 0x6D84 | size: 0x8
.obj str_PKF_X_1_mri_00027424, local
	.string "PKF_X_1"
.endobj str_PKF_X_1_mri_00027424

# .rodata:0xA4 | 0x6D8C | size: 0x8
.obj str_PKF_S_1_mri_0002742c, local
	.string "PKF_S_1"
.endobj str_PKF_S_1_mri_0002742c

# .rodata:0xAC | 0x6D94 | size: 0x8
.obj str_PKF_Q_1_mri_00027434, local
	.string "PKF_Q_1"
.endobj str_PKF_Q_1_mri_00027434

# .rodata:0xB4 | 0x6D9C | size: 0x8
.obj str_PKF_S_2_mri_0002743c, local
	.string "PKF_S_2"
.endobj str_PKF_S_2_mri_0002743c

# .rodata:0xBC | 0x6DA4 | size: 0x8
.obj str_PKF_D_1_mri_00027444, local
	.string "PKF_D_1"
.endobj str_PKF_D_1_mri_00027444

# .rodata:0xC4 | 0x6DAC | size: 0x9
.obj str_PKF_A_1B_mri_0002744c, local
	.string "PKF_A_1B"
.endobj str_PKF_A_1B_mri_0002744c

# .rodata:0xCD | 0x6DB5 | size: 0x3
.obj gap_03_00006DB5_rodata, global
.hidden gap_03_00006DB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006DB5_rodata

# .rodata:0xD0 | 0x6DB8 | size: 0x8
.obj str_PKF_T_1_mri_00027458, local
	.string "PKF_T_1"
.endobj str_PKF_T_1_mri_00027458

# .rodata:0xD8 | 0x6DC0 | size: 0x8
.obj str_PKF_N_2_mri_00027460, local
	.string "PKF_N_2"
.endobj str_PKF_N_2_mri_00027460

# .rodata:0xE0 | 0x6DC8 | size: 0x8
.obj str_PKF_Y_2_mri_00027468, local
	.string "PKF_Y_2"
.endobj str_PKF_Y_2_mri_00027468

# .rodata:0xE8 | 0x6DD0 | size: 0x8
.obj str_PKF_K_2_mri_00027470, local
	.string "PKF_K_2"
.endobj str_PKF_K_2_mri_00027470

# .rodata:0xF0 | 0x6DD8 | size: 0x8
.obj str_PKF_X_2_mri_00027478, local
	.string "PKF_X_2"
.endobj str_PKF_X_2_mri_00027478

# .rodata:0xF8 | 0x6DE0 | size: 0x8
.obj str_PKF_S_3_mri_00027480, local
	.string "PKF_S_3"
.endobj str_PKF_S_3_mri_00027480

# .rodata:0x100 | 0x6DE8 | size: 0x8
.obj str_PKF_Q_2_mri_00027488, local
	.string "PKF_Q_2"
.endobj str_PKF_Q_2_mri_00027488

# .rodata:0x108 | 0x6DF0 | size: 0x8
.obj str_PKF_S_4_mri_00027490, local
	.string "PKF_S_4"
.endobj str_PKF_S_4_mri_00027490

# .rodata:0x110 | 0x6DF8 | size: 0x8
.obj str_PKF_D_2_mri_00027498, local
	.string "PKF_D_2"
.endobj str_PKF_D_2_mri_00027498

# .rodata:0x118 | 0x6E00 | size: 0x8
.obj str_PKF_A_5_mri_000274a0, local
	.string "PKF_A_5"
.endobj str_PKF_A_5_mri_000274a0

# .rodata:0x120 | 0x6E08 | size: 0x4
.obj zero_mri_000274a8, local
	.float 0
.endobj zero_mri_000274a8
	.4byte 0x00000000

# .rodata:0x128 | 0x6E10 | size: 0x8
.obj double_to_int_mri_000274b0, local
	.double 4503601774854144
.endobj double_to_int_mri_000274b0

# .rodata:0x130 | 0x6E18 | size: 0x1
.obj zero_mri_000274b8, local
	.byte 0x00
.endobj zero_mri_000274b8

# .rodata:0x131 | 0x6E19 | size: 0x3
.obj gap_03_00006E19_rodata, global
.hidden gap_03_00006E19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006E19_rodata

# .rodata:0x134 | 0x6E1C | size: 0xB
.obj str_toge_flush_mri_000274bc, local
	.string "toge_flush"
.endobj str_toge_flush_mri_000274bc

# .rodata:0x13F | 0x6E27 | size: 0x1
.obj gap_03_00006E27_rodata, global
.hidden gap_03_00006E27_rodata
	.byte 0x00
.endobj gap_03_00006E27_rodata

# .rodata:0x140 | 0x6E28 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE1_mri_000274c8, local
	.string "SFX_ENM_PAKKUN_MOVE1"
.endobj str_SFX_ENM_PAKKUN_MOVE1_mri_000274c8

# .rodata:0x155 | 0x6E3D | size: 0x3
.obj gap_03_00006E3D_rodata, global
.hidden gap_03_00006E3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006E3D_rodata

# .rodata:0x158 | 0x6E40 | size: 0x8
.obj str_PKF_E_4_mri_000274e0, local
	.string "PKF_E_4"
.endobj str_PKF_E_4_mri_000274e0

# .rodata:0x160 | 0x6E48 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE2_mri_000274e8, local
	.string "SFX_ENM_PAKKUN_MOVE2"
.endobj str_SFX_ENM_PAKKUN_MOVE2_mri_000274e8

# .rodata:0x175 | 0x6E5D | size: 0x3
.obj gap_03_00006E5D_rodata, global
.hidden gap_03_00006E5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006E5D_rodata

# .rodata:0x178 | 0x6E60 | size: 0x8
.obj str_PKF_E_1_mri_00027500, local
	.string "PKF_E_1"
.endobj str_PKF_E_1_mri_00027500

# .rodata:0x180 | 0x6E68 | size: 0x8
.obj str_PKF_E_2_mri_00027508, local
	.string "PKF_E_2"
.endobj str_PKF_E_2_mri_00027508

# .rodata:0x188 | 0x6E70 | size: 0x8
.obj str_PKF_E_3_mri_00027510, local
	.string "PKF_E_3"
.endobj str_PKF_E_3_mri_00027510

# .rodata:0x190 | 0x6E78 | size: 0x9
.obj str_PKF_A_1A_mri_00027518, local
	.string "PKF_A_1A"
.endobj str_PKF_A_1A_mri_00027518

# .rodata:0x199 | 0x6E81 | size: 0x3
.obj gap_03_00006E81_rodata, global
.hidden gap_03_00006E81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006E81_rodata

# .rodata:0x19C | 0x6E84 | size: 0x17
.obj str_SFX_ENM_PAKKUN_ATTAC_mri_00027524, local
	.string "SFX_ENM_PAKKUN_ATTACK1"
.endobj str_SFX_ENM_PAKKUN_ATTAC_mri_00027524

# .rodata:0x1B3 | 0x6E9B | size: 0x1
.obj gap_03_00006E9B_rodata, global
.hidden gap_03_00006E9B_rodata
	.byte 0x00
.endobj gap_03_00006E9B_rodata

# .rodata:0x1B4 | 0x6E9C | size: 0x9
.obj str_PKF_A_1C_mri_0002753c, local
	.string "PKF_A_1C"
.endobj str_PKF_A_1C_mri_0002753c

# .rodata:0x1BD | 0x6EA5 | size: 0x3
.obj gap_03_00006EA5_rodata, global
.hidden gap_03_00006EA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006EA5_rodata

# 0x00032598..0x00033758 | size: 0x11C0
.data
.balign 8

# .data:0x0 | 0x32598 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x325A0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x325A4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x325A8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x325AC | size: 0x4
.obj gap_04_000325AC_data, global
.hidden gap_04_000325AC_data
	.4byte 0x00000000
.endobj gap_04_000325AC_data

# .data:0x18 | 0x325B0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x325B8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x325BC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x325C0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x325C8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x325CC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x325D0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x325D4 | size: 0x4
.obj gap_04_000325D4_data, global
.hidden gap_04_000325D4_data
	.4byte 0x00000000
.endobj gap_04_000325D4_data

# .data:0x40 | 0x325D8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x325E0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x325E4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x325E8 | size: 0xC4
.obj unit_pakkun_flower, local
	.4byte 0x000000A2
	.4byte str_btl_un_pakkun_flower_mri_00027388
	.4byte 0x000F0000
	.4byte 0x01012101
	.4byte 0x03460132
	.4byte 0x270F0028
	.4byte 0x00300004
	.4byte 0x00300000
	.4byte 0x00000000
	.4byte 0x41C00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C00000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x42400000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_PAKKUN_DAMAG_mri_000273a0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_mri_000273b8
	.4byte str_SFX_BTL_DAMAGE_ICE1_mri_000273d0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_mri_000273e4
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_pakkun_flower

# .data:0x114 | 0x326AC | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x326B1 | size: 0x3
.obj gap_04_000326B1_data, global
.hidden gap_04_000326B1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000326B1_data

# .data:0x11C | 0x326B4 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x326B9 | size: 0x3
.obj gap_04_000326B9_data, global
.hidden gap_04_000326B9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000326B9_data

# .data:0x124 | 0x326BC | size: 0x16
.obj regist, local
	.4byte 0x64462864
	.4byte 0x5064643C
	.4byte 0x64556455
	.4byte 0x6455460A
	.4byte 0x1E644664
	.2byte 0x641E
.endobj regist

# .data:0x13A | 0x326D2 | size: 0x2
.obj gap_04_000326D2_data, global
.hidden gap_04_000326D2_data
	.2byte 0x0000
.endobj gap_04_000326D2_data

# .data:0x13C | 0x326D4 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_pakkun_flower_mri_00027388
	.4byte str_c_pakflwr_mri_00027400
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte pose_table
.endobj parts

# .data:0x188 | 0x32720 | size: 0xC0
.obj weapon_pakkun_flower_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000009
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
	.4byte 0x01101260
	.4byte 0x21002000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000002
	.4byte 0x00002004
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
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_pakkun_flower_attack

# .data:0x248 | 0x327E0 | size: 0xA4
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_pakkun_flower_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_EnemyItemUseCheck
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_pakkun_flower_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x2EC | 0x32884 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_PKF_N_1_mri_0002740c
	.4byte 0x00000002
	.4byte str_PKF_Y_1_mri_00027414
	.4byte 0x00000009
	.4byte str_PKF_Y_1_mri_00027414
	.4byte 0x00000005
	.4byte str_PKF_K_1_mri_0002741c
	.4byte 0x00000004
	.4byte str_PKF_X_1_mri_00027424
	.4byte 0x00000003
	.4byte str_PKF_X_1_mri_00027424
	.4byte 0x0000001C
	.4byte str_PKF_S_1_mri_0002742c
	.4byte 0x0000001D
	.4byte str_PKF_Q_1_mri_00027434
	.4byte 0x0000001E
	.4byte str_PKF_Q_1_mri_00027434
	.4byte 0x0000001F
	.4byte str_PKF_S_2_mri_0002743c
	.4byte 0x00000027
	.4byte str_PKF_D_1_mri_00027444
	.4byte 0x00000032
	.4byte str_PKF_A_1B_mri_0002744c
	.4byte 0x00000028
	.4byte str_PKF_S_1_mri_0002742c
	.4byte 0x0000002A
	.4byte str_PKF_S_1_mri_0002742c
	.4byte 0x00000038
	.4byte str_PKF_X_1_mri_00027424
	.4byte 0x00000039
	.4byte str_PKF_X_1_mri_00027424
	.4byte 0x00000041
	.4byte str_PKF_T_1_mri_00027458
	.4byte 0x00000045
	.4byte str_PKF_S_1_mri_0002742c
.endobj pose_table

# .data:0x37C | 0x32914 | size: 0x90
.obj pose_table_ceil, local
	.4byte 0x00000001
	.4byte str_PKF_N_2_mri_00027460
	.4byte 0x00000002
	.4byte str_PKF_Y_2_mri_00027468
	.4byte 0x00000009
	.4byte str_PKF_Y_2_mri_00027468
	.4byte 0x00000005
	.4byte str_PKF_K_2_mri_00027470
	.4byte 0x00000004
	.4byte str_PKF_X_2_mri_00027478
	.4byte 0x00000003
	.4byte str_PKF_X_2_mri_00027478
	.4byte 0x0000001C
	.4byte str_PKF_S_3_mri_00027480
	.4byte 0x0000001D
	.4byte str_PKF_Q_2_mri_00027488
	.4byte 0x0000001E
	.4byte str_PKF_Q_2_mri_00027488
	.4byte 0x0000001F
	.4byte str_PKF_S_4_mri_00027490
	.4byte 0x00000027
	.4byte str_PKF_D_2_mri_00027498
	.4byte 0x00000032
	.4byte str_PKF_A_5_mri_000274a0
	.4byte 0x00000028
	.4byte str_PKF_S_3_mri_00027480
	.4byte 0x0000002A
	.4byte str_PKF_S_3_mri_00027480
	.4byte 0x00000038
	.4byte str_PKF_X_2_mri_00027478
	.4byte 0x00000039
	.4byte str_PKF_X_2_mri_00027478
	.4byte 0x00000041
	.4byte str_PKF_S_3_mri_00027480
	.4byte 0x00000045
	.4byte str_PKF_S_3_mri_00027480
.endobj pose_table_ceil

# .data:0x40C | 0x329A4 | size: 0x78
.obj data_table, local
	.4byte 0x00000025
	.4byte dmg_avoid_counter_thorn_head_event
	.4byte 0x0000001A
	.4byte counter_damage_event
	.4byte 0x00000019
	.4byte counter_damage_event
	.4byte 0x0000001B
	.4byte counter_damage_event
	.4byte 0x0000001C
	.4byte counter_damage_event
	.4byte 0x0000001D
	.4byte counter_damage_event
	.4byte 0x0000001E
	.4byte counter_damage_event
	.4byte 0x0000001F
	.4byte counter_damage_event
	.4byte 0x00000020
	.4byte counter_damage_event
	.4byte 0x00000021
	.4byte counter_damage_event
	.4byte 0x00000022
	.4byte counter_damage_event
	.4byte 0x00000023
	.4byte counter_damage_event
	.4byte 0x00000024
	.4byte counter_damage_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x484 | 0x32A1C | size: 0x7C
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte attack_event
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte shadow_scale_memory
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x500 | 0x32A98 | size: 0x11C
.obj dmg_avoid_counter_thorn_head_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001F
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_S_1_mri_0002742c
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000003F
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000025
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_mri_000274b8
	.4byte str_toge_flush_mri_000274bc
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_avoid_counter_thorn_head_event

# .data:0x61C | 0x32BB4 | size: 0x28
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x644 | 0x32BDC | size: 0x78
.obj counter_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_D_1_mri_00027444
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000200
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000800
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte return_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj counter_damage_event

# .data:0x6BC | 0x32C54 | size: 0x20C
.obj ceil_fall_ready_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_mri_000274c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_small
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_4_mri_000274e0
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE2_mri_000274e8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_return
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_1_mri_00027500
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000030
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_S_1_mri_0002742c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ceil_fall_ready_event

# .data:0x8C8 | 0x32E60 | size: 0x400
.obj return_event, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte pakkun_ceil_exist
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_mri_000274c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_small
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_2_mri_00027508
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE2_mri_000274e8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_return
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_1_mri_00027500
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000030
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_S_1_mri_0002742c
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte ceil_fall_ready_event
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000082
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000082
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE2_mri_000274e8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_return
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_3_mri_00027510
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFFFFFFE0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_ceil
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_S_3_mri_00027480
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj return_event

# .data:0xCC8 | 0x33260 | size: 0x4DC
.obj normal_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002EE
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFirstAttackTarget
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckToken
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte subsetevt_confuse_flustered
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_mri_000274c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_small
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_2_mri_00027508
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_4_mri_000274e0
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000002D
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE2_mri_000274e8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_return
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_1_mri_00027500
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1A_mri_00027518
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_ATTAC_mri_00027524
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1B_mri_0002744c
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1C_mri_0002753c
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x0001002B
	.4byte 0x00000004
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_add_zoom
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte return_event
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x11A4 | 0x3373C | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x11BC | 0x33754 | size: 0x4
.obj gap_04_00033754_data, global
.hidden gap_04_00033754_data
	.4byte 0x00000000
.endobj gap_04_00033754_data
