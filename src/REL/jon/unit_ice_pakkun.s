.include "macros.inc"
.file "unit_ice_pakkun.o"

# 0x00004D24..0x00004FB4 | size: 0x290
.text
.balign 4

# .text:0x0 | 0x4D24 | size: 0xDC
.fn shadow_scale_return, local
/* 00004D24 00004DE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00004D28 00004DEC  7C 08 02 A6 */	mflr r0
/* 00004D2C 00004DF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00004D30 00004DF4  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00004D34 00004DF8  7C 9F 23 78 */	mr r31, r4
/* 00004D38 00004DFC  7C 7E 1B 78 */	mr r30, r3
/* 00004D3C 00004E00  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00004D40 00004E04  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00004D44 00004E08  4B FF BD 2D */	bl evtGetValue
/* 00004D48 00004E0C  7C 64 1B 78 */	mr r4, r3
/* 00004D4C 00004E10  7F C3 F3 78 */	mr r3, r30
/* 00004D50 00004E14  4B FF BD 21 */	bl BattleTransID
/* 00004D54 00004E18  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00004D58 00004E1C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00004D5C 00004E20  7C 64 1B 78 */	mr r4, r3
/* 00004D60 00004E24  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00004D64 00004E28  4B FF BD 0D */	bl BattleGetUnitPtr
/* 00004D68 00004E2C  7C 7E 1B 78 */	mr r30, r3
/* 00004D6C 00004E30  38 80 00 01 */	li r4, 0x1
/* 00004D70 00004E34  4B FF BD 01 */	bl BtlUnit_GetPartsPtr
/* 00004D74 00004E38  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00004D78 00004E3C  7C 7F 1B 78 */	mr r31, r3
/* 00004D7C 00004E40  41 82 00 0C */	beq .L_00004D88
/* 00004D80 00004E44  38 00 00 00 */	li r0, 0x0
/* 00004D84 00004E48  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00004D88:
/* 00004D88 00004E4C  80 7E 02 18 */	lwz r3, 0x218(r30)
/* 00004D8C 00004E50  3C 00 43 30 */	lis r0, 0x4330
/* 00004D90 00004E54  3C 80 00 00 */	lis r4, double_to_int_jon_0000d1a0@ha
/* 00004D94 00004E58  3C A0 00 00 */	lis r5, zero_jon_0000d19c@ha
/* 00004D98 00004E5C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00004D9C 00004E60  C8 44 00 00 */	lfd f2, double_to_int_jon_0000d1a0@l(r4)
/* 00004DA0 00004E64  90 61 00 0C */	stw r3, 0xc(r1)
/* 00004DA4 00004E68  38 C5 00 00 */	addi r6, r5, zero_jon_0000d19c@l
/* 00004DA8 00004E6C  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 00004DAC 00004E70  38 60 00 00 */	li r3, 0x0
/* 00004DB0 00004E74  90 01 00 08 */	stw r0, 0x8(r1)
/* 00004DB4 00004E78  38 A0 00 0F */	li r5, 0xf
/* 00004DB8 00004E7C  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 00004DBC 00004E80  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00004DC0 00004E84  EC 40 10 28 */	fsubs f2, f0, f2
/* 00004DC4 00004E88  4B FF BC AD */	bl intplGetValue
/* 00004DC8 00004E8C  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 00004DCC 00004E90  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 00004DD0 00004E94  2C 03 00 0F */	cmpwi r3, 0xf
/* 00004DD4 00004E98  41 80 00 0C */	blt .L_00004DE0
/* 00004DD8 00004E9C  38 60 00 02 */	li r3, 0x2
/* 00004DDC 00004EA0  48 00 00 10 */	b .L_00004DEC
.L_00004DE0:
/* 00004DE0 00004EA4  38 03 00 01 */	addi r0, r3, 0x1
/* 00004DE4 00004EA8  38 60 00 00 */	li r3, 0x0
/* 00004DE8 00004EAC  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00004DEC:
/* 00004DEC 00004EB0  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00004DF0 00004EB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00004DF4 00004EB8  7C 08 03 A6 */	mtlr r0
/* 00004DF8 00004EBC  38 21 00 20 */	addi r1, r1, 0x20
/* 00004DFC 00004EC0  4E 80 00 20 */	blr
.endfn shadow_scale_return

# .text:0xDC | 0x4E00 | size: 0xE0
.fn shadow_scale_small, local
/* 00004E00 00004EC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00004E04 00004EC8  7C 08 02 A6 */	mflr r0
/* 00004E08 00004ECC  90 01 00 24 */	stw r0, 0x24(r1)
/* 00004E0C 00004ED0  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00004E10 00004ED4  7C 9F 23 78 */	mr r31, r4
/* 00004E14 00004ED8  7C 7E 1B 78 */	mr r30, r3
/* 00004E18 00004EDC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00004E1C 00004EE0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00004E20 00004EE4  4B FF BC 51 */	bl evtGetValue
/* 00004E24 00004EE8  7C 64 1B 78 */	mr r4, r3
/* 00004E28 00004EEC  7F C3 F3 78 */	mr r3, r30
/* 00004E2C 00004EF0  4B FF BC 45 */	bl BattleTransID
/* 00004E30 00004EF4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00004E34 00004EF8  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00004E38 00004EFC  7C 64 1B 78 */	mr r4, r3
/* 00004E3C 00004F00  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00004E40 00004F04  4B FF BC 31 */	bl BattleGetUnitPtr
/* 00004E44 00004F08  7C 7E 1B 78 */	mr r30, r3
/* 00004E48 00004F0C  38 80 00 01 */	li r4, 0x1
/* 00004E4C 00004F10  4B FF BC 25 */	bl BtlUnit_GetPartsPtr
/* 00004E50 00004F14  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00004E54 00004F18  7C 7F 1B 78 */	mr r31, r3
/* 00004E58 00004F1C  41 82 00 0C */	beq .L_00004E64
/* 00004E5C 00004F20  38 00 00 00 */	li r0, 0x0
/* 00004E60 00004F24  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00004E64:
/* 00004E64 00004F28  80 BE 02 18 */	lwz r5, 0x218(r30)
/* 00004E68 00004F2C  3C 00 43 30 */	lis r0, 0x4330
/* 00004E6C 00004F30  3C 80 00 00 */	lis r4, double_to_int_jon_0000d1a0@ha
/* 00004E70 00004F34  3C 60 00 00 */	lis r3, zero_jon_0000d19c@ha
/* 00004E74 00004F38  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 00004E78 00004F3C  90 01 00 08 */	stw r0, 0x8(r1)
/* 00004E7C 00004F40  38 C4 00 00 */	addi r6, r4, double_to_int_jon_0000d1a0@l
/* 00004E80 00004F44  38 83 00 00 */	addi r4, r3, zero_jon_0000d19c@l
/* 00004E84 00004F48  90 A1 00 0C */	stw r5, 0xc(r1)
/* 00004E88 00004F4C  38 60 00 00 */	li r3, 0x0
/* 00004E8C 00004F50  C8 26 00 00 */	lfd f1, 0x0(r6)
/* 00004E90 00004F54  38 A0 00 0F */	li r5, 0xf
/* 00004E94 00004F58  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00004E98 00004F5C  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 00004E9C 00004F60  EC 20 08 28 */	fsubs f1, f0, f1
/* 00004EA0 00004F64  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 00004EA4 00004F68  4B FF BB CD */	bl intplGetValue
/* 00004EA8 00004F6C  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 00004EAC 00004F70  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 00004EB0 00004F74  2C 03 00 0F */	cmpwi r3, 0xf
/* 00004EB4 00004F78  41 80 00 0C */	blt .L_00004EC0
/* 00004EB8 00004F7C  38 60 00 02 */	li r3, 0x2
/* 00004EBC 00004F80  48 00 00 10 */	b .L_00004ECC
.L_00004EC0:
/* 00004EC0 00004F84  38 03 00 01 */	addi r0, r3, 0x1
/* 00004EC4 00004F88  38 60 00 00 */	li r3, 0x0
/* 00004EC8 00004F8C  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00004ECC:
/* 00004ECC 00004F90  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00004ED0 00004F94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00004ED4 00004F98  7C 08 03 A6 */	mtlr r0
/* 00004ED8 00004F9C  38 21 00 20 */	addi r1, r1, 0x20
/* 00004EDC 00004FA0  4E 80 00 20 */	blr
.endfn shadow_scale_small

# .text:0x1BC | 0x4EE0 | size: 0x78
.fn shadow_scale_memory, local
/* 00004EE0 00004FA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00004EE4 00004FA8  7C 08 02 A6 */	mflr r0
/* 00004EE8 00004FAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 00004EEC 00004FB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 00004EF0 00004FB4  7C 7F 1B 78 */	mr r31, r3
/* 00004EF4 00004FB8  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00004EF8 00004FBC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00004EFC 00004FC0  4B FF BB 75 */	bl evtGetValue
/* 00004F00 00004FC4  7C 64 1B 78 */	mr r4, r3
/* 00004F04 00004FC8  7F E3 FB 78 */	mr r3, r31
/* 00004F08 00004FCC  4B FF BB 69 */	bl BattleTransID
/* 00004F0C 00004FD0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00004F10 00004FD4  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00004F14 00004FD8  7C 64 1B 78 */	mr r4, r3
/* 00004F18 00004FDC  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00004F1C 00004FE0  4B FF BB 55 */	bl BattleGetUnitPtr
/* 00004F20 00004FE4  7C 7F 1B 78 */	mr r31, r3
/* 00004F24 00004FE8  38 80 00 01 */	li r4, 0x1
/* 00004F28 00004FEC  4B FF BB 49 */	bl BtlUnit_GetPartsPtr
/* 00004F2C 00004FF0  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 00004F30 00004FF4  38 60 00 02 */	li r3, 0x2
/* 00004F34 00004FF8  FC 00 00 1E */	fctiwz f0, f0
/* 00004F38 00004FFC  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00004F3C 00005000  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00004F40 00005004  90 1F 02 18 */	stw r0, 0x218(r31)
/* 00004F44 00005008  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 00004F48 0000500C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00004F4C 00005010  7C 08 03 A6 */	mtlr r0
/* 00004F50 00005014  38 21 00 20 */	addi r1, r1, 0x20
/* 00004F54 00005018  4E 80 00 20 */	blr
.endfn shadow_scale_memory

# .text:0x234 | 0x4F58 | size: 0x5C
.fn pakkun_ceil_exist, local
/* 00004F58 0000501C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00004F5C 00005020  7C 08 02 A6 */	mflr r0
/* 00004F60 00005024  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00004F64 00005028  90 01 00 14 */	stw r0, 0x14(r1)
/* 00004F68 0000502C  38 84 00 00 */	addi r4, r4, _battleWorkPointer@l
/* 00004F6C 00005030  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00004F70 00005034  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00004F74 00005038  3C 84 00 02 */	addis r4, r4, 0x2
/* 00004F78 0000503C  88 04 80 F8 */	lbz r0, -0x7f08(r4)
/* 00004F7C 00005040  54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 00004F80 00005044  41 82 00 14 */	beq .L_00004F94
/* 00004F84 00005048  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00004F88 0000504C  38 A0 00 00 */	li r5, 0x0
/* 00004F8C 00005050  4B FF BA E5 */	bl evtSetValue
/* 00004F90 00005054  48 00 00 10 */	b .L_00004FA0
.L_00004F94:
/* 00004F94 00005058  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00004F98 0000505C  38 A0 00 01 */	li r5, 0x1
/* 00004F9C 00005060  4B FF BA D5 */	bl evtSetValue
.L_00004FA0:
/* 00004FA0 00005064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00004FA4 00005068  38 60 00 02 */	li r3, 0x2
/* 00004FA8 0000506C  7C 08 03 A6 */	mtlr r0
/* 00004FAC 00005070  38 21 00 10 */	addi r1, r1, 0x10
/* 00004FB0 00005074  4E 80 00 20 */	blr
.endfn pakkun_ceil_exist

# 0x00005FC0..0x00006178 | size: 0x1B8
.rodata
.balign 8

# .rodata:0x0 | 0x5FC0 | size: 0x12
.obj str_btl_un_ice_pakkun_jon_0000cff0, local
	.string "btl_un_ice_pakkun"
.endobj str_btl_un_ice_pakkun_jon_0000cff0

# .rodata:0x12 | 0x5FD2 | size: 0x2
.obj gap_03_00005FD2_rodata, global
.hidden gap_03_00005FD2_rodata
	.2byte 0x0000
.endobj gap_03_00005FD2_rodata

# .rodata:0x14 | 0x5FD4 | size: 0x18
.obj str_SFX_ENM_PAKKUN_DAMAG_jon_0000d004, local
	.string "SFX_ENM_PAKKUN_DAMAGED1"
.endobj str_SFX_ENM_PAKKUN_DAMAG_jon_0000d004

# .rodata:0x2C | 0x5FEC | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000d01c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000d01c

# .rodata:0x41 | 0x6001 | size: 0x3
.obj gap_03_00006001_rodata, global
.hidden gap_03_00006001_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006001_rodata

# .rodata:0x44 | 0x6004 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000d034, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000d034

# .rodata:0x58 | 0x6018 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000d048, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000d048

# .rodata:0x71 | 0x6031 | size: 0x3
.obj gap_03_00006031_rodata, global
.hidden gap_03_00006031_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006031_rodata

# .rodata:0x74 | 0x6034 | size: 0xC
.obj str_c_pakflwr_a_jon_0000d064, local
	.string "c_pakflwr_a"
.endobj str_c_pakflwr_a_jon_0000d064

# .rodata:0x80 | 0x6040 | size: 0x8
.obj str_PKF_N_1_jon_0000d070, local
	.string "PKF_N_1"
.endobj str_PKF_N_1_jon_0000d070

# .rodata:0x88 | 0x6048 | size: 0x8
.obj str_PKF_Y_1_jon_0000d078, local
	.string "PKF_Y_1"
.endobj str_PKF_Y_1_jon_0000d078

# .rodata:0x90 | 0x6050 | size: 0x8
.obj str_PKF_K_1_jon_0000d080, local
	.string "PKF_K_1"
.endobj str_PKF_K_1_jon_0000d080

# .rodata:0x98 | 0x6058 | size: 0x8
.obj str_PKF_X_1_jon_0000d088, local
	.string "PKF_X_1"
.endobj str_PKF_X_1_jon_0000d088

# .rodata:0xA0 | 0x6060 | size: 0x8
.obj str_PKF_S_1_jon_0000d090, local
	.string "PKF_S_1"
.endobj str_PKF_S_1_jon_0000d090

# .rodata:0xA8 | 0x6068 | size: 0x8
.obj str_PKF_Q_1_jon_0000d098, local
	.string "PKF_Q_1"
.endobj str_PKF_Q_1_jon_0000d098

# .rodata:0xB0 | 0x6070 | size: 0x8
.obj str_PKF_S_2_jon_0000d0a0, local
	.string "PKF_S_2"
.endobj str_PKF_S_2_jon_0000d0a0

# .rodata:0xB8 | 0x6078 | size: 0x8
.obj str_PKF_D_1_jon_0000d0a8, local
	.string "PKF_D_1"
.endobj str_PKF_D_1_jon_0000d0a8

# .rodata:0xC0 | 0x6080 | size: 0x9
.obj str_PKF_A_1B_jon_0000d0b0, local
	.string "PKF_A_1B"
.endobj str_PKF_A_1B_jon_0000d0b0

# .rodata:0xC9 | 0x6089 | size: 0x3
.obj gap_03_00006089_rodata, global
.hidden gap_03_00006089_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006089_rodata

# .rodata:0xCC | 0x608C | size: 0x8
.obj str_PKF_T_1_jon_0000d0bc, local
	.string "PKF_T_1"
.endobj str_PKF_T_1_jon_0000d0bc

# .rodata:0xD4 | 0x6094 | size: 0x8
.obj str_PKF_N_2_jon_0000d0c4, local
	.string "PKF_N_2"
.endobj str_PKF_N_2_jon_0000d0c4

# .rodata:0xDC | 0x609C | size: 0x8
.obj str_PKF_Y_2_jon_0000d0cc, local
	.string "PKF_Y_2"
.endobj str_PKF_Y_2_jon_0000d0cc

# .rodata:0xE4 | 0x60A4 | size: 0x8
.obj str_PKF_K_2_jon_0000d0d4, local
	.string "PKF_K_2"
.endobj str_PKF_K_2_jon_0000d0d4

# .rodata:0xEC | 0x60AC | size: 0x8
.obj str_PKF_X_2_jon_0000d0dc, local
	.string "PKF_X_2"
.endobj str_PKF_X_2_jon_0000d0dc

# .rodata:0xF4 | 0x60B4 | size: 0x8
.obj str_PKF_S_3_jon_0000d0e4, local
	.string "PKF_S_3"
.endobj str_PKF_S_3_jon_0000d0e4

# .rodata:0xFC | 0x60BC | size: 0x8
.obj str_PKF_Q_2_jon_0000d0ec, local
	.string "PKF_Q_2"
.endobj str_PKF_Q_2_jon_0000d0ec

# .rodata:0x104 | 0x60C4 | size: 0x8
.obj str_PKF_S_4_jon_0000d0f4, local
	.string "PKF_S_4"
.endobj str_PKF_S_4_jon_0000d0f4

# .rodata:0x10C | 0x60CC | size: 0x8
.obj str_PKF_D_2_jon_0000d0fc, local
	.string "PKF_D_2"
.endobj str_PKF_D_2_jon_0000d0fc

# .rodata:0x114 | 0x60D4 | size: 0x8
.obj str_PKF_A_5_jon_0000d104, local
	.string "PKF_A_5"
.endobj str_PKF_A_5_jon_0000d104

# .rodata:0x11C | 0x60DC | size: 0x1
.obj zero_jon_0000d10c, local
	.byte 0x00
.endobj zero_jon_0000d10c

# .rodata:0x11D | 0x60DD | size: 0x3
.obj gap_03_000060DD_rodata, global
.hidden gap_03_000060DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000060DD_rodata

# .rodata:0x120 | 0x60E0 | size: 0xB
.obj str_toge_flush_jon_0000d110, local
	.string "toge_flush"
.endobj str_toge_flush_jon_0000d110

# .rodata:0x12B | 0x60EB | size: 0x1
.obj gap_03_000060EB_rodata, global
.hidden gap_03_000060EB_rodata
	.byte 0x00
.endobj gap_03_000060EB_rodata

# .rodata:0x12C | 0x60EC | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE1_jon_0000d11c, local
	.string "SFX_ENM_PAKKUN_MOVE1"
.endobj str_SFX_ENM_PAKKUN_MOVE1_jon_0000d11c

# .rodata:0x141 | 0x6101 | size: 0x3
.obj gap_03_00006101_rodata, global
.hidden gap_03_00006101_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006101_rodata

# .rodata:0x144 | 0x6104 | size: 0x8
.obj str_PKF_E_4_jon_0000d134, local
	.string "PKF_E_4"
.endobj str_PKF_E_4_jon_0000d134

# .rodata:0x14C | 0x610C | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE2_jon_0000d13c, local
	.string "SFX_ENM_PAKKUN_MOVE2"
.endobj str_SFX_ENM_PAKKUN_MOVE2_jon_0000d13c

# .rodata:0x161 | 0x6121 | size: 0x3
.obj gap_03_00006121_rodata, global
.hidden gap_03_00006121_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006121_rodata

# .rodata:0x164 | 0x6124 | size: 0x8
.obj str_PKF_E_1_jon_0000d154, local
	.string "PKF_E_1"
.endobj str_PKF_E_1_jon_0000d154

# .rodata:0x16C | 0x612C | size: 0x8
.obj str_PKF_E_2_jon_0000d15c, local
	.string "PKF_E_2"
.endobj str_PKF_E_2_jon_0000d15c

# .rodata:0x174 | 0x6134 | size: 0x8
.obj str_PKF_E_3_jon_0000d164, local
	.string "PKF_E_3"
.endobj str_PKF_E_3_jon_0000d164

# .rodata:0x17C | 0x613C | size: 0x9
.obj str_PKF_A_1A_jon_0000d16c, local
	.string "PKF_A_1A"
.endobj str_PKF_A_1A_jon_0000d16c

# .rodata:0x185 | 0x6145 | size: 0x3
.obj gap_03_00006145_rodata, global
.hidden gap_03_00006145_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006145_rodata

# .rodata:0x188 | 0x6148 | size: 0x17
.obj str_SFX_ENM_PAKKUN_ATTAC_jon_0000d178, local
	.string "SFX_ENM_PAKKUN_ATTACK1"
.endobj str_SFX_ENM_PAKKUN_ATTAC_jon_0000d178

# .rodata:0x19F | 0x615F | size: 0x1
.obj gap_03_0000615F_rodata, global
.hidden gap_03_0000615F_rodata
	.byte 0x00
.endobj gap_03_0000615F_rodata

# .rodata:0x1A0 | 0x6160 | size: 0x9
.obj str_PKF_A_1C_jon_0000d190, local
	.string "PKF_A_1C"
.endobj str_PKF_A_1C_jon_0000d190
	.byte 0x00, 0x00, 0x00

# .rodata:0x1AC | 0x616C | size: 0x4
.obj zero_jon_0000d19c, local
	.float 0
.endobj zero_jon_0000d19c

# .rodata:0x1B0 | 0x6170 | size: 0x8
.obj double_to_int_jon_0000d1a0, local
	.double 4503601774854144
.endobj double_to_int_jon_0000d1a0

# 0x00057B10..0x00058CD0 | size: 0x11C0
.data
.balign 8

# .data:0x0 | 0x57B10 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x57B18 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x57B1C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x57B20 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x57B24 | size: 0x4
.obj gap_04_00057B24_data, global
.hidden gap_04_00057B24_data
	.4byte 0x00000000
.endobj gap_04_00057B24_data

# .data:0x18 | 0x57B28 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x57B30 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x57B34 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x57B38 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x57B40 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x57B44 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x57B48 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x57B4C | size: 0x4
.obj gap_04_00057B4C_data, global
.hidden gap_04_00057B4C_data
	.4byte 0x00000000
.endobj gap_04_00057B4C_data

# .data:0x40 | 0x57B50 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x57B58 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x57B5C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x57B60 | size: 0xC4
.obj unit_ice_pakkun_14_data_57B60, global
	.4byte 0x00000071
	.4byte str_btl_un_ice_pakkun_jon_0000cff0
	.4byte 0x000A0000
	.4byte 0x01011A00
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
	.4byte str_SFX_ENM_PAKKUN_DAMAG_jon_0000d004
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000d01c
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000d034
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000d048
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_ice_pakkun_14_data_57B60

# .data:0x114 | 0x57C24 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x57C29 | size: 0x3
.obj gap_04_00057C29_data, global
.hidden gap_04_00057C29_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00057C29_data

# .data:0x11C | 0x57C2C | size: 0x5
.obj defence_attr, local
	.4byte 0x00010300
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x57C31 | size: 0x3
.obj gap_04_00057C31_data, global
.hidden gap_04_00057C31_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00057C31_data

# .data:0x124 | 0x57C34 | size: 0x16
.obj regist, local
	.4byte 0x64462864
	.4byte 0x50646400
	.4byte 0x64556455
	.4byte 0x6455460A
	.4byte 0x28644664
	.2byte 0x645F
.endobj regist

# .data:0x13A | 0x57C4A | size: 0x2
.obj gap_04_00057C4A_data, global
.hidden gap_04_00057C4A_data
	.2byte 0x0000
.endobj gap_04_00057C4A_data

# .data:0x13C | 0x57C4C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_ice_pakkun_jon_0000cff0
	.4byte str_c_pakflwr_a_jon_0000d064
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

# .data:0x188 | 0x57C98 | size: 0xC0
.obj weapon_ice_pakkun_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000005
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
	.4byte 0x02101260
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
	.4byte 0x001E0200
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
.endobj weapon_ice_pakkun_attack

# .data:0x248 | 0x57D58 | size: 0xA4
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
	.4byte weapon_ice_pakkun_attack
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
	.4byte weapon_ice_pakkun_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x2EC | 0x57DFC | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_PKF_N_1_jon_0000d070
	.4byte 0x00000002
	.4byte str_PKF_Y_1_jon_0000d078
	.4byte 0x00000009
	.4byte str_PKF_Y_1_jon_0000d078
	.4byte 0x00000005
	.4byte str_PKF_K_1_jon_0000d080
	.4byte 0x00000004
	.4byte str_PKF_X_1_jon_0000d088
	.4byte 0x00000003
	.4byte str_PKF_X_1_jon_0000d088
	.4byte 0x0000001C
	.4byte str_PKF_S_1_jon_0000d090
	.4byte 0x0000001D
	.4byte str_PKF_Q_1_jon_0000d098
	.4byte 0x0000001E
	.4byte str_PKF_Q_1_jon_0000d098
	.4byte 0x0000001F
	.4byte str_PKF_S_2_jon_0000d0a0
	.4byte 0x00000027
	.4byte str_PKF_D_1_jon_0000d0a8
	.4byte 0x00000032
	.4byte str_PKF_A_1B_jon_0000d0b0
	.4byte 0x00000028
	.4byte str_PKF_S_1_jon_0000d090
	.4byte 0x0000002A
	.4byte str_PKF_S_1_jon_0000d090
	.4byte 0x00000038
	.4byte str_PKF_X_1_jon_0000d088
	.4byte 0x00000039
	.4byte str_PKF_X_1_jon_0000d088
	.4byte 0x00000041
	.4byte str_PKF_T_1_jon_0000d0bc
	.4byte 0x00000045
	.4byte str_PKF_S_1_jon_0000d090
.endobj pose_table

# .data:0x37C | 0x57E8C | size: 0x90
.obj pose_table_ceil, local
	.4byte 0x00000001
	.4byte str_PKF_N_2_jon_0000d0c4
	.4byte 0x00000002
	.4byte str_PKF_Y_2_jon_0000d0cc
	.4byte 0x00000009
	.4byte str_PKF_Y_2_jon_0000d0cc
	.4byte 0x00000005
	.4byte str_PKF_K_2_jon_0000d0d4
	.4byte 0x00000004
	.4byte str_PKF_X_2_jon_0000d0dc
	.4byte 0x00000003
	.4byte str_PKF_X_2_jon_0000d0dc
	.4byte 0x0000001C
	.4byte str_PKF_S_3_jon_0000d0e4
	.4byte 0x0000001D
	.4byte str_PKF_Q_2_jon_0000d0ec
	.4byte 0x0000001E
	.4byte str_PKF_Q_2_jon_0000d0ec
	.4byte 0x0000001F
	.4byte str_PKF_S_4_jon_0000d0f4
	.4byte 0x00000027
	.4byte str_PKF_D_2_jon_0000d0fc
	.4byte 0x00000032
	.4byte str_PKF_A_5_jon_0000d104
	.4byte 0x00000028
	.4byte str_PKF_S_3_jon_0000d0e4
	.4byte 0x0000002A
	.4byte str_PKF_S_3_jon_0000d0e4
	.4byte 0x00000038
	.4byte str_PKF_X_2_jon_0000d0dc
	.4byte 0x00000039
	.4byte str_PKF_X_2_jon_0000d0dc
	.4byte 0x00000041
	.4byte str_PKF_S_3_jon_0000d0e4
	.4byte 0x00000045
	.4byte str_PKF_S_3_jon_0000d0e4
.endobj pose_table_ceil

# .data:0x40C | 0x57F1C | size: 0x78
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

# .data:0x484 | 0x57F94 | size: 0x7C
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

# .data:0x500 | 0x58010 | size: 0x11C
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
	.4byte str_PKF_S_1_jon_0000d090
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
	.4byte zero_jon_0000d10c
	.4byte str_toge_flush_jon_0000d110
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

# .data:0x61C | 0x5812C | size: 0x28
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

# .data:0x644 | 0x58154 | size: 0x78
.obj counter_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_D_1_jon_0000d0a8
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

# .data:0x6BC | 0x581CC | size: 0x20C
.obj ceil_fall_ready_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_jon_0000d11c
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
	.4byte str_PKF_E_4_jon_0000d134
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_jon_0000d13c
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
	.4byte str_PKF_E_1_jon_0000d154
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
	.4byte str_PKF_S_1_jon_0000d090
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ceil_fall_ready_event

# .data:0x8C8 | 0x583D8 | size: 0x400
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
	.4byte str_SFX_ENM_PAKKUN_MOVE1_jon_0000d11c
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
	.4byte str_PKF_E_2_jon_0000d15c
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_jon_0000d13c
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
	.4byte str_PKF_E_1_jon_0000d154
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
	.4byte str_PKF_S_1_jon_0000d090
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_jon_0000d13c
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
	.4byte str_PKF_E_3_jon_0000d164
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
	.4byte str_PKF_S_3_jon_0000d0e4
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj return_event

# .data:0xCC8 | 0x587D8 | size: 0x4DC
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
	.4byte str_SFX_ENM_PAKKUN_MOVE1_jon_0000d11c
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
	.4byte str_PKF_E_2_jon_0000d15c
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_4_jon_0000d134
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_jon_0000d13c
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
	.4byte str_PKF_E_1_jon_0000d154
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1A_jon_0000d16c
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_ATTAC_jon_0000d178
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1B_jon_0000d0b0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1C_jon_0000d190
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

# .data:0x11A4 | 0x58CB4 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x11BC | 0x58CCC | size: 0x4
.obj gap_04_00058CCC_data, global
.hidden gap_04_00058CCC_data
	.4byte 0x00000000
.endobj gap_04_00058CCC_data
