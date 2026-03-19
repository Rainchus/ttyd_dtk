.include "macros.inc"
.file "unit_pakkun_flower.o"

# 0x0000385C..0x00003AEC | size: 0x290
.text
.balign 4

# .text:0x0 | 0x385C | size: 0xDC
.fn shadow_scale_return, local
/* 0000385C 00003920  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00003860 00003924  7C 08 02 A6 */	mflr r0
/* 00003864 00003928  90 01 00 24 */	stw r0, 0x24(r1)
/* 00003868 0000392C  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000386C 00003930  7C 9F 23 78 */	mr r31, r4
/* 00003870 00003934  7C 7E 1B 78 */	mr r30, r3
/* 00003874 00003938  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00003878 0000393C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000387C 00003940  4B FF D1 F5 */	bl evtGetValue
/* 00003880 00003944  7C 64 1B 78 */	mr r4, r3
/* 00003884 00003948  7F C3 F3 78 */	mr r3, r30
/* 00003888 0000394C  4B FF D1 E9 */	bl BattleTransID
/* 0000388C 00003950  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00003890 00003954  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00003894 00003958  7C 64 1B 78 */	mr r4, r3
/* 00003898 0000395C  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000389C 00003960  4B FF D1 D5 */	bl BattleGetUnitPtr
/* 000038A0 00003964  7C 7E 1B 78 */	mr r30, r3
/* 000038A4 00003968  38 80 00 01 */	li r4, 0x1
/* 000038A8 0000396C  4B FF D1 C9 */	bl BtlUnit_GetPartsPtr
/* 000038AC 00003970  2C 1F 00 00 */	cmpwi r31, 0x0
/* 000038B0 00003974  7C 7F 1B 78 */	mr r31, r3
/* 000038B4 00003978  41 82 00 0C */	beq .L_000038C0
/* 000038B8 0000397C  38 00 00 00 */	li r0, 0x0
/* 000038BC 00003980  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_000038C0:
/* 000038C0 00003984  80 7E 02 18 */	lwz r3, 0x218(r30)
/* 000038C4 00003988  3C 00 43 30 */	lis r0, 0x4330
/* 000038C8 0000398C  3C 80 00 00 */	lis r4, double_to_int_jon_0000c808@ha
/* 000038CC 00003990  3C A0 00 00 */	lis r5, zero_jon_0000c800@ha
/* 000038D0 00003994  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 000038D4 00003998  C8 44 00 00 */	lfd f2, double_to_int_jon_0000c808@l(r4)
/* 000038D8 0000399C  90 61 00 0C */	stw r3, 0xc(r1)
/* 000038DC 000039A0  38 C5 00 00 */	addi r6, r5, zero_jon_0000c800@l
/* 000038E0 000039A4  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 000038E4 000039A8  38 60 00 00 */	li r3, 0x0
/* 000038E8 000039AC  90 01 00 08 */	stw r0, 0x8(r1)
/* 000038EC 000039B0  38 A0 00 0F */	li r5, 0xf
/* 000038F0 000039B4  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 000038F4 000039B8  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 000038F8 000039BC  EC 40 10 28 */	fsubs f2, f0, f2
/* 000038FC 000039C0  4B FF D1 75 */	bl intplGetValue
/* 00003900 000039C4  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 00003904 000039C8  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 00003908 000039CC  2C 03 00 0F */	cmpwi r3, 0xf
/* 0000390C 000039D0  41 80 00 0C */	blt .L_00003918
/* 00003910 000039D4  38 60 00 02 */	li r3, 0x2
/* 00003914 000039D8  48 00 00 10 */	b .L_00003924
.L_00003918:
/* 00003918 000039DC  38 03 00 01 */	addi r0, r3, 0x1
/* 0000391C 000039E0  38 60 00 00 */	li r3, 0x0
/* 00003920 000039E4  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00003924:
/* 00003924 000039E8  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00003928 000039EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000392C 000039F0  7C 08 03 A6 */	mtlr r0
/* 00003930 000039F4  38 21 00 20 */	addi r1, r1, 0x20
/* 00003934 000039F8  4E 80 00 20 */	blr
.endfn shadow_scale_return

# .text:0xDC | 0x3938 | size: 0xE0
.fn shadow_scale_small, local
/* 00003938 000039FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000393C 00003A00  7C 08 02 A6 */	mflr r0
/* 00003940 00003A04  90 01 00 24 */	stw r0, 0x24(r1)
/* 00003944 00003A08  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00003948 00003A0C  7C 9F 23 78 */	mr r31, r4
/* 0000394C 00003A10  7C 7E 1B 78 */	mr r30, r3
/* 00003950 00003A14  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00003954 00003A18  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00003958 00003A1C  4B FF D1 19 */	bl evtGetValue
/* 0000395C 00003A20  7C 64 1B 78 */	mr r4, r3
/* 00003960 00003A24  7F C3 F3 78 */	mr r3, r30
/* 00003964 00003A28  4B FF D1 0D */	bl BattleTransID
/* 00003968 00003A2C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000396C 00003A30  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00003970 00003A34  7C 64 1B 78 */	mr r4, r3
/* 00003974 00003A38  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00003978 00003A3C  4B FF D0 F9 */	bl BattleGetUnitPtr
/* 0000397C 00003A40  7C 7E 1B 78 */	mr r30, r3
/* 00003980 00003A44  38 80 00 01 */	li r4, 0x1
/* 00003984 00003A48  4B FF D0 ED */	bl BtlUnit_GetPartsPtr
/* 00003988 00003A4C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 0000398C 00003A50  7C 7F 1B 78 */	mr r31, r3
/* 00003990 00003A54  41 82 00 0C */	beq .L_0000399C
/* 00003994 00003A58  38 00 00 00 */	li r0, 0x0
/* 00003998 00003A5C  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0000399C:
/* 0000399C 00003A60  80 BE 02 18 */	lwz r5, 0x218(r30)
/* 000039A0 00003A64  3C 00 43 30 */	lis r0, 0x4330
/* 000039A4 00003A68  3C 80 00 00 */	lis r4, double_to_int_jon_0000c808@ha
/* 000039A8 00003A6C  3C 60 00 00 */	lis r3, zero_jon_0000c800@ha
/* 000039AC 00003A70  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 000039B0 00003A74  90 01 00 08 */	stw r0, 0x8(r1)
/* 000039B4 00003A78  38 C4 00 00 */	addi r6, r4, double_to_int_jon_0000c808@l
/* 000039B8 00003A7C  38 83 00 00 */	addi r4, r3, zero_jon_0000c800@l
/* 000039BC 00003A80  90 A1 00 0C */	stw r5, 0xc(r1)
/* 000039C0 00003A84  38 60 00 00 */	li r3, 0x0
/* 000039C4 00003A88  C8 26 00 00 */	lfd f1, 0x0(r6)
/* 000039C8 00003A8C  38 A0 00 0F */	li r5, 0xf
/* 000039CC 00003A90  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 000039D0 00003A94  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 000039D4 00003A98  EC 20 08 28 */	fsubs f1, f0, f1
/* 000039D8 00003A9C  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 000039DC 00003AA0  4B FF D0 95 */	bl intplGetValue
/* 000039E0 00003AA4  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 000039E4 00003AA8  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 000039E8 00003AAC  2C 03 00 0F */	cmpwi r3, 0xf
/* 000039EC 00003AB0  41 80 00 0C */	blt .L_000039F8
/* 000039F0 00003AB4  38 60 00 02 */	li r3, 0x2
/* 000039F4 00003AB8  48 00 00 10 */	b .L_00003A04
.L_000039F8:
/* 000039F8 00003ABC  38 03 00 01 */	addi r0, r3, 0x1
/* 000039FC 00003AC0  38 60 00 00 */	li r3, 0x0
/* 00003A00 00003AC4  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00003A04:
/* 00003A04 00003AC8  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00003A08 00003ACC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00003A0C 00003AD0  7C 08 03 A6 */	mtlr r0
/* 00003A10 00003AD4  38 21 00 20 */	addi r1, r1, 0x20
/* 00003A14 00003AD8  4E 80 00 20 */	blr
.endfn shadow_scale_small

# .text:0x1BC | 0x3A18 | size: 0x78
.fn shadow_scale_memory, local
/* 00003A18 00003ADC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00003A1C 00003AE0  7C 08 02 A6 */	mflr r0
/* 00003A20 00003AE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 00003A24 00003AE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 00003A28 00003AEC  7C 7F 1B 78 */	mr r31, r3
/* 00003A2C 00003AF0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00003A30 00003AF4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00003A34 00003AF8  4B FF D0 3D */	bl evtGetValue
/* 00003A38 00003AFC  7C 64 1B 78 */	mr r4, r3
/* 00003A3C 00003B00  7F E3 FB 78 */	mr r3, r31
/* 00003A40 00003B04  4B FF D0 31 */	bl BattleTransID
/* 00003A44 00003B08  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00003A48 00003B0C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00003A4C 00003B10  7C 64 1B 78 */	mr r4, r3
/* 00003A50 00003B14  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00003A54 00003B18  4B FF D0 1D */	bl BattleGetUnitPtr
/* 00003A58 00003B1C  7C 7F 1B 78 */	mr r31, r3
/* 00003A5C 00003B20  38 80 00 01 */	li r4, 0x1
/* 00003A60 00003B24  4B FF D0 11 */	bl BtlUnit_GetPartsPtr
/* 00003A64 00003B28  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 00003A68 00003B2C  38 60 00 02 */	li r3, 0x2
/* 00003A6C 00003B30  FC 00 00 1E */	fctiwz f0, f0
/* 00003A70 00003B34  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00003A74 00003B38  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00003A78 00003B3C  90 1F 02 18 */	stw r0, 0x218(r31)
/* 00003A7C 00003B40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 00003A80 00003B44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00003A84 00003B48  7C 08 03 A6 */	mtlr r0
/* 00003A88 00003B4C  38 21 00 20 */	addi r1, r1, 0x20
/* 00003A8C 00003B50  4E 80 00 20 */	blr
.endfn shadow_scale_memory

# .text:0x234 | 0x3A90 | size: 0x5C
.fn pakkun_ceil_exist, local
/* 00003A90 00003B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00003A94 00003B58  7C 08 02 A6 */	mflr r0
/* 00003A98 00003B5C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00003A9C 00003B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 00003AA0 00003B64  38 84 00 00 */	addi r4, r4, _battleWorkPointer@l
/* 00003AA4 00003B68  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00003AA8 00003B6C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00003AAC 00003B70  3C 84 00 02 */	addis r4, r4, 0x2
/* 00003AB0 00003B74  88 04 80 F8 */	lbz r0, -0x7f08(r4)
/* 00003AB4 00003B78  54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 00003AB8 00003B7C  41 82 00 14 */	beq .L_00003ACC
/* 00003ABC 00003B80  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00003AC0 00003B84  38 A0 00 00 */	li r5, 0x0
/* 00003AC4 00003B88  4B FF CF AD */	bl evtSetValue
/* 00003AC8 00003B8C  48 00 00 10 */	b .L_00003AD8
.L_00003ACC:
/* 00003ACC 00003B90  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00003AD0 00003B94  38 A0 00 01 */	li r5, 0x1
/* 00003AD4 00003B98  4B FF CF 9D */	bl evtSetValue
.L_00003AD8:
/* 00003AD8 00003B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00003ADC 00003BA0  38 60 00 02 */	li r3, 0x2
/* 00003AE0 00003BA4  7C 08 03 A6 */	mtlr r0
/* 00003AE4 00003BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 00003AE8 00003BAC  4E 80 00 20 */	blr
.endfn pakkun_ceil_exist

# 0x00005620..0x000057E0 | size: 0x1C0
.rodata
.balign 8

# .rodata:0x0 | 0x5620 | size: 0x15
.obj str_btl_un_pakkun_flower_jon_0000c650, local
	.string "btl_un_pakkun_flower"
.endobj str_btl_un_pakkun_flower_jon_0000c650

# .rodata:0x15 | 0x5635 | size: 0x3
.obj gap_03_00005635_rodata, global
.hidden gap_03_00005635_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005635_rodata

# .rodata:0x18 | 0x5638 | size: 0x18
.obj str_SFX_ENM_PAKKUN_DAMAG_jon_0000c668, local
	.string "SFX_ENM_PAKKUN_DAMAGED1"
.endobj str_SFX_ENM_PAKKUN_DAMAG_jon_0000c668

# .rodata:0x30 | 0x5650 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000c680, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000c680

# .rodata:0x45 | 0x5665 | size: 0x3
.obj gap_03_00005665_rodata, global
.hidden gap_03_00005665_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005665_rodata

# .rodata:0x48 | 0x5668 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000c698, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000c698

# .rodata:0x5C | 0x567C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000c6ac, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000c6ac

# .rodata:0x75 | 0x5695 | size: 0x3
.obj gap_03_00005695_rodata, global
.hidden gap_03_00005695_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005695_rodata

# .rodata:0x78 | 0x5698 | size: 0xA
.obj str_c_pakflwr_jon_0000c6c8, local
	.string "c_pakflwr"
.endobj str_c_pakflwr_jon_0000c6c8

# .rodata:0x82 | 0x56A2 | size: 0x2
.obj gap_03_000056A2_rodata, global
.hidden gap_03_000056A2_rodata
	.2byte 0x0000
.endobj gap_03_000056A2_rodata

# .rodata:0x84 | 0x56A4 | size: 0x8
.obj str_PKF_N_1_jon_0000c6d4, local
	.string "PKF_N_1"
.endobj str_PKF_N_1_jon_0000c6d4

# .rodata:0x8C | 0x56AC | size: 0x8
.obj str_PKF_Y_1_jon_0000c6dc, local
	.string "PKF_Y_1"
.endobj str_PKF_Y_1_jon_0000c6dc

# .rodata:0x94 | 0x56B4 | size: 0x8
.obj str_PKF_K_1_jon_0000c6e4, local
	.string "PKF_K_1"
.endobj str_PKF_K_1_jon_0000c6e4

# .rodata:0x9C | 0x56BC | size: 0x8
.obj str_PKF_X_1_jon_0000c6ec, local
	.string "PKF_X_1"
.endobj str_PKF_X_1_jon_0000c6ec

# .rodata:0xA4 | 0x56C4 | size: 0x8
.obj str_PKF_S_1_jon_0000c6f4, local
	.string "PKF_S_1"
.endobj str_PKF_S_1_jon_0000c6f4

# .rodata:0xAC | 0x56CC | size: 0x8
.obj str_PKF_Q_1_jon_0000c6fc, local
	.string "PKF_Q_1"
.endobj str_PKF_Q_1_jon_0000c6fc

# .rodata:0xB4 | 0x56D4 | size: 0x8
.obj str_PKF_S_2_jon_0000c704, local
	.string "PKF_S_2"
.endobj str_PKF_S_2_jon_0000c704

# .rodata:0xBC | 0x56DC | size: 0x8
.obj str_PKF_D_1_jon_0000c70c, local
	.string "PKF_D_1"
.endobj str_PKF_D_1_jon_0000c70c

# .rodata:0xC4 | 0x56E4 | size: 0x9
.obj str_PKF_A_1B_jon_0000c714, local
	.string "PKF_A_1B"
.endobj str_PKF_A_1B_jon_0000c714

# .rodata:0xCD | 0x56ED | size: 0x3
.obj gap_03_000056ED_rodata, global
.hidden gap_03_000056ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000056ED_rodata

# .rodata:0xD0 | 0x56F0 | size: 0x8
.obj str_PKF_T_1_jon_0000c720, local
	.string "PKF_T_1"
.endobj str_PKF_T_1_jon_0000c720

# .rodata:0xD8 | 0x56F8 | size: 0x8
.obj str_PKF_N_2_jon_0000c728, local
	.string "PKF_N_2"
.endobj str_PKF_N_2_jon_0000c728

# .rodata:0xE0 | 0x5700 | size: 0x8
.obj str_PKF_Y_2_jon_0000c730, local
	.string "PKF_Y_2"
.endobj str_PKF_Y_2_jon_0000c730

# .rodata:0xE8 | 0x5708 | size: 0x8
.obj str_PKF_K_2_jon_0000c738, local
	.string "PKF_K_2"
.endobj str_PKF_K_2_jon_0000c738

# .rodata:0xF0 | 0x5710 | size: 0x8
.obj str_PKF_X_2_jon_0000c740, local
	.string "PKF_X_2"
.endobj str_PKF_X_2_jon_0000c740

# .rodata:0xF8 | 0x5718 | size: 0x8
.obj str_PKF_S_3_jon_0000c748, local
	.string "PKF_S_3"
.endobj str_PKF_S_3_jon_0000c748

# .rodata:0x100 | 0x5720 | size: 0x8
.obj str_PKF_Q_2_jon_0000c750, local
	.string "PKF_Q_2"
.endobj str_PKF_Q_2_jon_0000c750

# .rodata:0x108 | 0x5728 | size: 0x8
.obj str_PKF_S_4_jon_0000c758, local
	.string "PKF_S_4"
.endobj str_PKF_S_4_jon_0000c758

# .rodata:0x110 | 0x5730 | size: 0x8
.obj str_PKF_D_2_jon_0000c760, local
	.string "PKF_D_2"
.endobj str_PKF_D_2_jon_0000c760

# .rodata:0x118 | 0x5738 | size: 0x8
.obj str_PKF_A_5_jon_0000c768, local
	.string "PKF_A_5"
.endobj str_PKF_A_5_jon_0000c768

# .rodata:0x120 | 0x5740 | size: 0x1
.obj zero_jon_0000c770, local
	.byte 0x00
.endobj zero_jon_0000c770

# .rodata:0x121 | 0x5741 | size: 0x3
.obj gap_03_00005741_rodata, global
.hidden gap_03_00005741_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005741_rodata

# .rodata:0x124 | 0x5744 | size: 0xB
.obj str_toge_flush_jon_0000c774, local
	.string "toge_flush"
.endobj str_toge_flush_jon_0000c774

# .rodata:0x12F | 0x574F | size: 0x1
.obj gap_03_0000574F_rodata, global
.hidden gap_03_0000574F_rodata
	.byte 0x00
.endobj gap_03_0000574F_rodata

# .rodata:0x130 | 0x5750 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE1_jon_0000c780, local
	.string "SFX_ENM_PAKKUN_MOVE1"
.endobj str_SFX_ENM_PAKKUN_MOVE1_jon_0000c780

# .rodata:0x145 | 0x5765 | size: 0x3
.obj gap_03_00005765_rodata, global
.hidden gap_03_00005765_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005765_rodata

# .rodata:0x148 | 0x5768 | size: 0x8
.obj str_PKF_E_4_jon_0000c798, local
	.string "PKF_E_4"
.endobj str_PKF_E_4_jon_0000c798

# .rodata:0x150 | 0x5770 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE2_jon_0000c7a0, local
	.string "SFX_ENM_PAKKUN_MOVE2"
.endobj str_SFX_ENM_PAKKUN_MOVE2_jon_0000c7a0

# .rodata:0x165 | 0x5785 | size: 0x3
.obj gap_03_00005785_rodata, global
.hidden gap_03_00005785_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005785_rodata

# .rodata:0x168 | 0x5788 | size: 0x8
.obj str_PKF_E_1_jon_0000c7b8, local
	.string "PKF_E_1"
.endobj str_PKF_E_1_jon_0000c7b8

# .rodata:0x170 | 0x5790 | size: 0x8
.obj str_PKF_E_2_jon_0000c7c0, local
	.string "PKF_E_2"
.endobj str_PKF_E_2_jon_0000c7c0

# .rodata:0x178 | 0x5798 | size: 0x8
.obj str_PKF_E_3_jon_0000c7c8, local
	.string "PKF_E_3"
.endobj str_PKF_E_3_jon_0000c7c8

# .rodata:0x180 | 0x57A0 | size: 0x9
.obj str_PKF_A_1A_jon_0000c7d0, local
	.string "PKF_A_1A"
.endobj str_PKF_A_1A_jon_0000c7d0

# .rodata:0x189 | 0x57A9 | size: 0x3
.obj gap_03_000057A9_rodata, global
.hidden gap_03_000057A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000057A9_rodata

# .rodata:0x18C | 0x57AC | size: 0x17
.obj str_SFX_ENM_PAKKUN_ATTAC_jon_0000c7dc, local
	.string "SFX_ENM_PAKKUN_ATTACK1"
.endobj str_SFX_ENM_PAKKUN_ATTAC_jon_0000c7dc

# .rodata:0x1A3 | 0x57C3 | size: 0x1
.obj gap_03_000057C3_rodata, global
.hidden gap_03_000057C3_rodata
	.byte 0x00
.endobj gap_03_000057C3_rodata

# .rodata:0x1A4 | 0x57C4 | size: 0x9
.obj str_PKF_A_1C_jon_0000c7f4, local
	.string "PKF_A_1C"
.endobj str_PKF_A_1C_jon_0000c7f4
	.byte 0x00, 0x00, 0x00

# .rodata:0x1B0 | 0x57D0 | size: 0x4
.obj zero_jon_0000c800, local
	.float 0
.endobj zero_jon_0000c800
	.4byte 0x00000000

# .rodata:0x1B8 | 0x57D8 | size: 0x8
.obj double_to_int_jon_0000c808, local
	.double 4503601774854144
.endobj double_to_int_jon_0000c808

# 0x0004CA08..0x0004DBC8 | size: 0x11C0
.data
.balign 8

# .data:0x0 | 0x4CA08 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4CA10 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4CA14 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4CA18 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4CA1C | size: 0x4
.obj gap_04_0004CA1C_data, global
.hidden gap_04_0004CA1C_data
	.4byte 0x00000000
.endobj gap_04_0004CA1C_data

# .data:0x18 | 0x4CA20 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4CA28 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4CA2C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4CA30 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4CA38 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4CA3C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4CA40 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4CA44 | size: 0x4
.obj gap_04_0004CA44_data, global
.hidden gap_04_0004CA44_data
	.4byte 0x00000000
.endobj gap_04_0004CA44_data

# .data:0x40 | 0x4CA48 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4CA50 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4CA54 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4CA58 | size: 0xC4
.obj unit_pakkun_flower_14_data_4CA58, global
	.4byte 0x000000A2
	.4byte str_btl_un_pakkun_flower_jon_0000c650
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
	.4byte str_SFX_ENM_PAKKUN_DAMAG_jon_0000c668
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000c680
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000c698
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000c6ac
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_pakkun_flower_14_data_4CA58

# .data:0x114 | 0x4CB1C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x4CB21 | size: 0x3
.obj gap_04_0004CB21_data, global
.hidden gap_04_0004CB21_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0004CB21_data

# .data:0x11C | 0x4CB24 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x4CB29 | size: 0x3
.obj gap_04_0004CB29_data, global
.hidden gap_04_0004CB29_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0004CB29_data

# .data:0x124 | 0x4CB2C | size: 0x16
.obj regist, local
	.4byte 0x64462864
	.4byte 0x5064643C
	.4byte 0x64556455
	.4byte 0x6455460A
	.4byte 0x1E644664
	.2byte 0x641E
.endobj regist

# .data:0x13A | 0x4CB42 | size: 0x2
.obj gap_04_0004CB42_data, global
.hidden gap_04_0004CB42_data
	.2byte 0x0000
.endobj gap_04_0004CB42_data

# .data:0x13C | 0x4CB44 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_pakkun_flower_jon_0000c650
	.4byte str_c_pakflwr_jon_0000c6c8
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

# .data:0x188 | 0x4CB90 | size: 0xC0
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

# .data:0x248 | 0x4CC50 | size: 0xA4
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

# .data:0x2EC | 0x4CCF4 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_PKF_N_1_jon_0000c6d4
	.4byte 0x00000002
	.4byte str_PKF_Y_1_jon_0000c6dc
	.4byte 0x00000009
	.4byte str_PKF_Y_1_jon_0000c6dc
	.4byte 0x00000005
	.4byte str_PKF_K_1_jon_0000c6e4
	.4byte 0x00000004
	.4byte str_PKF_X_1_jon_0000c6ec
	.4byte 0x00000003
	.4byte str_PKF_X_1_jon_0000c6ec
	.4byte 0x0000001C
	.4byte str_PKF_S_1_jon_0000c6f4
	.4byte 0x0000001D
	.4byte str_PKF_Q_1_jon_0000c6fc
	.4byte 0x0000001E
	.4byte str_PKF_Q_1_jon_0000c6fc
	.4byte 0x0000001F
	.4byte str_PKF_S_2_jon_0000c704
	.4byte 0x00000027
	.4byte str_PKF_D_1_jon_0000c70c
	.4byte 0x00000032
	.4byte str_PKF_A_1B_jon_0000c714
	.4byte 0x00000028
	.4byte str_PKF_S_1_jon_0000c6f4
	.4byte 0x0000002A
	.4byte str_PKF_S_1_jon_0000c6f4
	.4byte 0x00000038
	.4byte str_PKF_X_1_jon_0000c6ec
	.4byte 0x00000039
	.4byte str_PKF_X_1_jon_0000c6ec
	.4byte 0x00000041
	.4byte str_PKF_T_1_jon_0000c720
	.4byte 0x00000045
	.4byte str_PKF_S_1_jon_0000c6f4
.endobj pose_table

# .data:0x37C | 0x4CD84 | size: 0x90
.obj pose_table_ceil, local
	.4byte 0x00000001
	.4byte str_PKF_N_2_jon_0000c728
	.4byte 0x00000002
	.4byte str_PKF_Y_2_jon_0000c730
	.4byte 0x00000009
	.4byte str_PKF_Y_2_jon_0000c730
	.4byte 0x00000005
	.4byte str_PKF_K_2_jon_0000c738
	.4byte 0x00000004
	.4byte str_PKF_X_2_jon_0000c740
	.4byte 0x00000003
	.4byte str_PKF_X_2_jon_0000c740
	.4byte 0x0000001C
	.4byte str_PKF_S_3_jon_0000c748
	.4byte 0x0000001D
	.4byte str_PKF_Q_2_jon_0000c750
	.4byte 0x0000001E
	.4byte str_PKF_Q_2_jon_0000c750
	.4byte 0x0000001F
	.4byte str_PKF_S_4_jon_0000c758
	.4byte 0x00000027
	.4byte str_PKF_D_2_jon_0000c760
	.4byte 0x00000032
	.4byte str_PKF_A_5_jon_0000c768
	.4byte 0x00000028
	.4byte str_PKF_S_3_jon_0000c748
	.4byte 0x0000002A
	.4byte str_PKF_S_3_jon_0000c748
	.4byte 0x00000038
	.4byte str_PKF_X_2_jon_0000c740
	.4byte 0x00000039
	.4byte str_PKF_X_2_jon_0000c740
	.4byte 0x00000041
	.4byte str_PKF_S_3_jon_0000c748
	.4byte 0x00000045
	.4byte str_PKF_S_3_jon_0000c748
.endobj pose_table_ceil

# .data:0x40C | 0x4CE14 | size: 0x78
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

# .data:0x484 | 0x4CE8C | size: 0x7C
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

# .data:0x500 | 0x4CF08 | size: 0x11C
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
	.4byte str_PKF_S_1_jon_0000c6f4
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
	.4byte zero_jon_0000c770
	.4byte str_toge_flush_jon_0000c774
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

# .data:0x61C | 0x4D024 | size: 0x28
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

# .data:0x644 | 0x4D04C | size: 0x78
.obj counter_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_D_1_jon_0000c70c
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

# .data:0x6BC | 0x4D0C4 | size: 0x20C
.obj ceil_fall_ready_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_jon_0000c780
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
	.4byte str_PKF_E_4_jon_0000c798
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_jon_0000c7a0
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
	.4byte str_PKF_E_1_jon_0000c7b8
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
	.4byte str_PKF_S_1_jon_0000c6f4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ceil_fall_ready_event

# .data:0x8C8 | 0x4D2D0 | size: 0x400
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
	.4byte str_SFX_ENM_PAKKUN_MOVE1_jon_0000c780
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
	.4byte str_PKF_E_2_jon_0000c7c0
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_jon_0000c7a0
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
	.4byte str_PKF_E_1_jon_0000c7b8
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
	.4byte str_PKF_S_1_jon_0000c6f4
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_jon_0000c7a0
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
	.4byte str_PKF_E_3_jon_0000c7c8
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
	.4byte str_PKF_S_3_jon_0000c748
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj return_event

# .data:0xCC8 | 0x4D6D0 | size: 0x4DC
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
	.4byte str_SFX_ENM_PAKKUN_MOVE1_jon_0000c780
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
	.4byte str_PKF_E_2_jon_0000c7c0
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_4_jon_0000c798
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_jon_0000c7a0
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
	.4byte str_PKF_E_1_jon_0000c7b8
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1A_jon_0000c7d0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_ATTAC_jon_0000c7dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1B_jon_0000c714
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1C_jon_0000c7f4
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

# .data:0x11A4 | 0x4DBAC | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x11BC | 0x4DBC4 | size: 0x4
.obj gap_04_0004DBC4_data, global
.hidden gap_04_0004DBC4_data
	.4byte 0x00000000
.endobj gap_04_0004DBC4_data
