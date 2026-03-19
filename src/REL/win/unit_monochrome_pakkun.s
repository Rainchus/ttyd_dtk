.include "macros.inc"
.file "unit_monochrome_pakkun.o"

# 0x00001E58..0x000020E8 | size: 0x290
.text
.balign 4

# .text:0x0 | 0x1E58 | size: 0xDC
.fn shadow_scale_return, local
/* 00001E58 00001F1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001E5C 00001F20  7C 08 02 A6 */	mflr r0
/* 00001E60 00001F24  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001E64 00001F28  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00001E68 00001F2C  7C 9F 23 78 */	mr r31, r4
/* 00001E6C 00001F30  7C 7E 1B 78 */	mr r30, r3
/* 00001E70 00001F34  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00001E74 00001F38  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001E78 00001F3C  4B FF EF 11 */	bl evtGetValue
/* 00001E7C 00001F40  7C 64 1B 78 */	mr r4, r3
/* 00001E80 00001F44  7F C3 F3 78 */	mr r3, r30
/* 00001E84 00001F48  4B FF EF 05 */	bl BattleTransID
/* 00001E88 00001F4C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00001E8C 00001F50  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00001E90 00001F54  7C 64 1B 78 */	mr r4, r3
/* 00001E94 00001F58  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00001E98 00001F5C  4B FF EE F1 */	bl BattleGetUnitPtr
/* 00001E9C 00001F60  7C 7E 1B 78 */	mr r30, r3
/* 00001EA0 00001F64  38 80 00 01 */	li r4, 0x1
/* 00001EA4 00001F68  4B FF EE E5 */	bl BtlUnit_GetPartsPtr
/* 00001EA8 00001F6C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00001EAC 00001F70  7C 7F 1B 78 */	mr r31, r3
/* 00001EB0 00001F74  41 82 00 0C */	beq .L_00001EBC
/* 00001EB4 00001F78  38 00 00 00 */	li r0, 0x0
/* 00001EB8 00001F7C  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00001EBC:
/* 00001EBC 00001F80  80 7E 02 18 */	lwz r3, 0x218(r30)
/* 00001EC0 00001F84  3C 00 43 30 */	lis r0, 0x4330
/* 00001EC4 00001F88  3C 80 00 00 */	lis r4, double_to_int_win_00005ed0@ha
/* 00001EC8 00001F8C  3C A0 00 00 */	lis r5, zero_win_00005ecc@ha
/* 00001ECC 00001F90  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00001ED0 00001F94  C8 44 00 00 */	lfd f2, double_to_int_win_00005ed0@l(r4)
/* 00001ED4 00001F98  90 61 00 0C */	stw r3, 0xc(r1)
/* 00001ED8 00001F9C  38 C5 00 00 */	addi r6, r5, zero_win_00005ecc@l
/* 00001EDC 00001FA0  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 00001EE0 00001FA4  38 60 00 00 */	li r3, 0x0
/* 00001EE4 00001FA8  90 01 00 08 */	stw r0, 0x8(r1)
/* 00001EE8 00001FAC  38 A0 00 0F */	li r5, 0xf
/* 00001EEC 00001FB0  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 00001EF0 00001FB4  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00001EF4 00001FB8  EC 40 10 28 */	fsubs f2, f0, f2
/* 00001EF8 00001FBC  4B FF EE 91 */	bl intplGetValue
/* 00001EFC 00001FC0  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 00001F00 00001FC4  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 00001F04 00001FC8  2C 03 00 0F */	cmpwi r3, 0xf
/* 00001F08 00001FCC  41 80 00 0C */	blt .L_00001F14
/* 00001F0C 00001FD0  38 60 00 02 */	li r3, 0x2
/* 00001F10 00001FD4  48 00 00 10 */	b .L_00001F20
.L_00001F14:
/* 00001F14 00001FD8  38 03 00 01 */	addi r0, r3, 0x1
/* 00001F18 00001FDC  38 60 00 00 */	li r3, 0x0
/* 00001F1C 00001FE0  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00001F20:
/* 00001F20 00001FE4  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00001F24 00001FE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001F28 00001FEC  7C 08 03 A6 */	mtlr r0
/* 00001F2C 00001FF0  38 21 00 20 */	addi r1, r1, 0x20
/* 00001F30 00001FF4  4E 80 00 20 */	blr
.endfn shadow_scale_return

# .text:0xDC | 0x1F34 | size: 0xE0
.fn shadow_scale_small, local
/* 00001F34 00001FF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001F38 00001FFC  7C 08 02 A6 */	mflr r0
/* 00001F3C 00002000  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001F40 00002004  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00001F44 00002008  7C 9F 23 78 */	mr r31, r4
/* 00001F48 0000200C  7C 7E 1B 78 */	mr r30, r3
/* 00001F4C 00002010  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00001F50 00002014  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001F54 00002018  4B FF EE 35 */	bl evtGetValue
/* 00001F58 0000201C  7C 64 1B 78 */	mr r4, r3
/* 00001F5C 00002020  7F C3 F3 78 */	mr r3, r30
/* 00001F60 00002024  4B FF EE 29 */	bl BattleTransID
/* 00001F64 00002028  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00001F68 0000202C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00001F6C 00002030  7C 64 1B 78 */	mr r4, r3
/* 00001F70 00002034  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00001F74 00002038  4B FF EE 15 */	bl BattleGetUnitPtr
/* 00001F78 0000203C  7C 7E 1B 78 */	mr r30, r3
/* 00001F7C 00002040  38 80 00 01 */	li r4, 0x1
/* 00001F80 00002044  4B FF EE 09 */	bl BtlUnit_GetPartsPtr
/* 00001F84 00002048  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00001F88 0000204C  7C 7F 1B 78 */	mr r31, r3
/* 00001F8C 00002050  41 82 00 0C */	beq .L_00001F98
/* 00001F90 00002054  38 00 00 00 */	li r0, 0x0
/* 00001F94 00002058  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00001F98:
/* 00001F98 0000205C  80 BE 02 18 */	lwz r5, 0x218(r30)
/* 00001F9C 00002060  3C 00 43 30 */	lis r0, 0x4330
/* 00001FA0 00002064  3C 80 00 00 */	lis r4, double_to_int_win_00005ed0@ha
/* 00001FA4 00002068  3C 60 00 00 */	lis r3, zero_win_00005ecc@ha
/* 00001FA8 0000206C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 00001FAC 00002070  90 01 00 08 */	stw r0, 0x8(r1)
/* 00001FB0 00002074  38 C4 00 00 */	addi r6, r4, double_to_int_win_00005ed0@l
/* 00001FB4 00002078  38 83 00 00 */	addi r4, r3, zero_win_00005ecc@l
/* 00001FB8 0000207C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 00001FBC 00002080  38 60 00 00 */	li r3, 0x0
/* 00001FC0 00002084  C8 26 00 00 */	lfd f1, 0x0(r6)
/* 00001FC4 00002088  38 A0 00 0F */	li r5, 0xf
/* 00001FC8 0000208C  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00001FCC 00002090  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 00001FD0 00002094  EC 20 08 28 */	fsubs f1, f0, f1
/* 00001FD4 00002098  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 00001FD8 0000209C  4B FF ED B1 */	bl intplGetValue
/* 00001FDC 000020A0  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 00001FE0 000020A4  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 00001FE4 000020A8  2C 03 00 0F */	cmpwi r3, 0xf
/* 00001FE8 000020AC  41 80 00 0C */	blt .L_00001FF4
/* 00001FEC 000020B0  38 60 00 02 */	li r3, 0x2
/* 00001FF0 000020B4  48 00 00 10 */	b .L_00002000
.L_00001FF4:
/* 00001FF4 000020B8  38 03 00 01 */	addi r0, r3, 0x1
/* 00001FF8 000020BC  38 60 00 00 */	li r3, 0x0
/* 00001FFC 000020C0  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00002000:
/* 00002000 000020C4  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00002004 000020C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00002008 000020CC  7C 08 03 A6 */	mtlr r0
/* 0000200C 000020D0  38 21 00 20 */	addi r1, r1, 0x20
/* 00002010 000020D4  4E 80 00 20 */	blr
.endfn shadow_scale_small

# .text:0x1BC | 0x2014 | size: 0x78
.fn shadow_scale_memory, local
/* 00002014 000020D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00002018 000020DC  7C 08 02 A6 */	mflr r0
/* 0000201C 000020E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00002020 000020E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 00002024 000020E8  7C 7F 1B 78 */	mr r31, r3
/* 00002028 000020EC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000202C 000020F0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00002030 000020F4  4B FF ED 59 */	bl evtGetValue
/* 00002034 000020F8  7C 64 1B 78 */	mr r4, r3
/* 00002038 000020FC  7F E3 FB 78 */	mr r3, r31
/* 0000203C 00002100  4B FF ED 4D */	bl BattleTransID
/* 00002040 00002104  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00002044 00002108  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00002048 0000210C  7C 64 1B 78 */	mr r4, r3
/* 0000204C 00002110  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00002050 00002114  4B FF ED 39 */	bl BattleGetUnitPtr
/* 00002054 00002118  7C 7F 1B 78 */	mr r31, r3
/* 00002058 0000211C  38 80 00 01 */	li r4, 0x1
/* 0000205C 00002120  4B FF ED 2D */	bl BtlUnit_GetPartsPtr
/* 00002060 00002124  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 00002064 00002128  38 60 00 02 */	li r3, 0x2
/* 00002068 0000212C  FC 00 00 1E */	fctiwz f0, f0
/* 0000206C 00002130  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00002070 00002134  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00002074 00002138  90 1F 02 18 */	stw r0, 0x218(r31)
/* 00002078 0000213C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 0000207C 00002140  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00002080 00002144  7C 08 03 A6 */	mtlr r0
/* 00002084 00002148  38 21 00 20 */	addi r1, r1, 0x20
/* 00002088 0000214C  4E 80 00 20 */	blr
.endfn shadow_scale_memory

# .text:0x234 | 0x208C | size: 0x5C
.fn pakkun_ceil_exist, local
/* 0000208C 00002150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002090 00002154  7C 08 02 A6 */	mflr r0
/* 00002094 00002158  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00002098 0000215C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000209C 00002160  38 84 00 00 */	addi r4, r4, _battleWorkPointer@l
/* 000020A0 00002164  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000020A4 00002168  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 000020A8 0000216C  3C 84 00 02 */	addis r4, r4, 0x2
/* 000020AC 00002170  88 04 80 F8 */	lbz r0, -0x7f08(r4)
/* 000020B0 00002174  54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 000020B4 00002178  41 82 00 14 */	beq .L_000020C8
/* 000020B8 0000217C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000020BC 00002180  38 A0 00 00 */	li r5, 0x0
/* 000020C0 00002184  4B FF EC C9 */	bl evtSetValue
/* 000020C4 00002188  48 00 00 10 */	b .L_000020D4
.L_000020C8:
/* 000020C8 0000218C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000020CC 00002190  38 A0 00 01 */	li r5, 0x1
/* 000020D0 00002194  4B FF EC B9 */	bl evtSetValue
.L_000020D4:
/* 000020D4 00002198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000020D8 0000219C  38 60 00 02 */	li r3, 0x2
/* 000020DC 000021A0  7C 08 03 A6 */	mtlr r0
/* 000020E0 000021A4  38 21 00 10 */	addi r1, r1, 0x10
/* 000020E4 000021A8  4E 80 00 20 */	blr
.endfn pakkun_ceil_exist

# 0x000025D0..0x00002790 | size: 0x1C0
.rodata
.balign 8

# .rodata:0x0 | 0x25D0 | size: 0x19
.obj str_btl_un_monochrome_pa_win_00005d18, local
	.string "btl_un_monochrome_pakkun"
.endobj str_btl_un_monochrome_pa_win_00005d18

# .rodata:0x19 | 0x25E9 | size: 0x3
.obj gap_03_000025E9_rodata, global
.hidden gap_03_000025E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025E9_rodata

# .rodata:0x1C | 0x25EC | size: 0x18
.obj str_SFX_ENM_PAKKUN_DAMAG_win_00005d34, local
	.string "SFX_ENM_PAKKUN_DAMAGED1"
.endobj str_SFX_ENM_PAKKUN_DAMAG_win_00005d34

# .rodata:0x34 | 0x2604 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_win_00005d4c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_win_00005d4c

# .rodata:0x49 | 0x2619 | size: 0x3
.obj gap_03_00002619_rodata, global
.hidden gap_03_00002619_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002619_rodata

# .rodata:0x4C | 0x261C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_win_00005d64, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_win_00005d64

# .rodata:0x60 | 0x2630 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_win_00005d78, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_win_00005d78

# .rodata:0x79 | 0x2649 | size: 0x3
.obj gap_03_00002649_rodata, global
.hidden gap_03_00002649_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002649_rodata

# .rodata:0x7C | 0x264C | size: 0xC
.obj str_c_pakflwr_t_win_00005d94, local
	.string "c_pakflwr_t"
.endobj str_c_pakflwr_t_win_00005d94

# .rodata:0x88 | 0x2658 | size: 0x8
.obj str_PKF_N_1_win_00005da0, local
	.string "PKF_N_1"
.endobj str_PKF_N_1_win_00005da0

# .rodata:0x90 | 0x2660 | size: 0x8
.obj str_PKF_Y_1_win_00005da8, local
	.string "PKF_Y_1"
.endobj str_PKF_Y_1_win_00005da8

# .rodata:0x98 | 0x2668 | size: 0x8
.obj str_PKF_K_1_win_00005db0, local
	.string "PKF_K_1"
.endobj str_PKF_K_1_win_00005db0

# .rodata:0xA0 | 0x2670 | size: 0x8
.obj str_PKF_X_1_win_00005db8, local
	.string "PKF_X_1"
.endobj str_PKF_X_1_win_00005db8

# .rodata:0xA8 | 0x2678 | size: 0x8
.obj str_PKF_S_1_win_00005dc0, local
	.string "PKF_S_1"
.endobj str_PKF_S_1_win_00005dc0

# .rodata:0xB0 | 0x2680 | size: 0x8
.obj str_PKF_Q_1_win_00005dc8, local
	.string "PKF_Q_1"
.endobj str_PKF_Q_1_win_00005dc8

# .rodata:0xB8 | 0x2688 | size: 0x8
.obj str_PKF_S_2_win_00005dd0, local
	.string "PKF_S_2"
.endobj str_PKF_S_2_win_00005dd0

# .rodata:0xC0 | 0x2690 | size: 0x8
.obj str_PKF_D_1_win_00005dd8, local
	.string "PKF_D_1"
.endobj str_PKF_D_1_win_00005dd8

# .rodata:0xC8 | 0x2698 | size: 0x9
.obj str_PKF_A_1B_win_00005de0, local
	.string "PKF_A_1B"
.endobj str_PKF_A_1B_win_00005de0

# .rodata:0xD1 | 0x26A1 | size: 0x3
.obj gap_03_000026A1_rodata, global
.hidden gap_03_000026A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026A1_rodata

# .rodata:0xD4 | 0x26A4 | size: 0x8
.obj str_PKF_T_1_win_00005dec, local
	.string "PKF_T_1"
.endobj str_PKF_T_1_win_00005dec

# .rodata:0xDC | 0x26AC | size: 0x8
.obj str_PKF_N_2_win_00005df4, local
	.string "PKF_N_2"
.endobj str_PKF_N_2_win_00005df4

# .rodata:0xE4 | 0x26B4 | size: 0x8
.obj str_PKF_Y_2_win_00005dfc, local
	.string "PKF_Y_2"
.endobj str_PKF_Y_2_win_00005dfc

# .rodata:0xEC | 0x26BC | size: 0x8
.obj str_PKF_K_2_win_00005e04, local
	.string "PKF_K_2"
.endobj str_PKF_K_2_win_00005e04

# .rodata:0xF4 | 0x26C4 | size: 0x8
.obj str_PKF_X_2_win_00005e0c, local
	.string "PKF_X_2"
.endobj str_PKF_X_2_win_00005e0c

# .rodata:0xFC | 0x26CC | size: 0x8
.obj str_PKF_S_3_win_00005e14, local
	.string "PKF_S_3"
.endobj str_PKF_S_3_win_00005e14

# .rodata:0x104 | 0x26D4 | size: 0x8
.obj str_PKF_Q_2_win_00005e1c, local
	.string "PKF_Q_2"
.endobj str_PKF_Q_2_win_00005e1c

# .rodata:0x10C | 0x26DC | size: 0x8
.obj str_PKF_S_4_win_00005e24, local
	.string "PKF_S_4"
.endobj str_PKF_S_4_win_00005e24

# .rodata:0x114 | 0x26E4 | size: 0x8
.obj str_PKF_D_2_win_00005e2c, local
	.string "PKF_D_2"
.endobj str_PKF_D_2_win_00005e2c

# .rodata:0x11C | 0x26EC | size: 0x8
.obj str_PKF_A_5_win_00005e34, local
	.string "PKF_A_5"
.endobj str_PKF_A_5_win_00005e34

# .rodata:0x124 | 0x26F4 | size: 0x1
.obj zero_win_00005e3c, local
	.byte 0x00
.endobj zero_win_00005e3c

# .rodata:0x125 | 0x26F5 | size: 0x3
.obj gap_03_000026F5_rodata, global
.hidden gap_03_000026F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026F5_rodata

# .rodata:0x128 | 0x26F8 | size: 0xB
.obj str_toge_flush_win_00005e40, local
	.string "toge_flush"
.endobj str_toge_flush_win_00005e40

# .rodata:0x133 | 0x2703 | size: 0x1
.obj gap_03_00002703_rodata, global
.hidden gap_03_00002703_rodata
	.byte 0x00
.endobj gap_03_00002703_rodata

# .rodata:0x134 | 0x2704 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE1_win_00005e4c, local
	.string "SFX_ENM_PAKKUN_MOVE1"
.endobj str_SFX_ENM_PAKKUN_MOVE1_win_00005e4c

# .rodata:0x149 | 0x2719 | size: 0x3
.obj gap_03_00002719_rodata, global
.hidden gap_03_00002719_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002719_rodata

# .rodata:0x14C | 0x271C | size: 0x8
.obj str_PKF_E_4_win_00005e64, local
	.string "PKF_E_4"
.endobj str_PKF_E_4_win_00005e64

# .rodata:0x154 | 0x2724 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE2_win_00005e6c, local
	.string "SFX_ENM_PAKKUN_MOVE2"
.endobj str_SFX_ENM_PAKKUN_MOVE2_win_00005e6c

# .rodata:0x169 | 0x2739 | size: 0x3
.obj gap_03_00002739_rodata, global
.hidden gap_03_00002739_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002739_rodata

# .rodata:0x16C | 0x273C | size: 0x8
.obj str_PKF_E_1_win_00005e84, local
	.string "PKF_E_1"
.endobj str_PKF_E_1_win_00005e84

# .rodata:0x174 | 0x2744 | size: 0x8
.obj str_PKF_E_2_win_00005e8c, local
	.string "PKF_E_2"
.endobj str_PKF_E_2_win_00005e8c

# .rodata:0x17C | 0x274C | size: 0x8
.obj str_PKF_E_3_win_00005e94, local
	.string "PKF_E_3"
.endobj str_PKF_E_3_win_00005e94

# .rodata:0x184 | 0x2754 | size: 0x9
.obj str_PKF_A_1A_win_00005e9c, local
	.string "PKF_A_1A"
.endobj str_PKF_A_1A_win_00005e9c

# .rodata:0x18D | 0x275D | size: 0x3
.obj gap_03_0000275D_rodata, global
.hidden gap_03_0000275D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000275D_rodata

# .rodata:0x190 | 0x2760 | size: 0x17
.obj str_SFX_ENM_PAKKUN_ATTAC_win_00005ea8, local
	.string "SFX_ENM_PAKKUN_ATTACK1"
.endobj str_SFX_ENM_PAKKUN_ATTAC_win_00005ea8

# .rodata:0x1A7 | 0x2777 | size: 0x1
.obj gap_03_00002777_rodata, global
.hidden gap_03_00002777_rodata
	.byte 0x00
.endobj gap_03_00002777_rodata

# .rodata:0x1A8 | 0x2778 | size: 0x9
.obj str_PKF_A_1C_win_00005ec0, local
	.string "PKF_A_1C"
.endobj str_PKF_A_1C_win_00005ec0
	.byte 0x00, 0x00, 0x00

# .rodata:0x1B4 | 0x2784 | size: 0x4
.obj zero_win_00005ecc, local
	.float 0
.endobj zero_win_00005ecc

# .rodata:0x1B8 | 0x2788 | size: 0x8
.obj double_to_int_win_00005ed0, local
	.double 4503601774854144
.endobj double_to_int_win_00005ed0

# 0x00016688..0x00017848 | size: 0x11C0
.data
.balign 8

# .data:0x0 | 0x16688 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x16690 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x16694 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x16698 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1669C | size: 0x4
.obj gap_04_0001669C_data, global
.hidden gap_04_0001669C_data
	.4byte 0x00000000
.endobj gap_04_0001669C_data

# .data:0x18 | 0x166A0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x166A8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x166AC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x166B0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x166B8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x166BC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x166C0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x166C4 | size: 0x4
.obj gap_04_000166C4_data, global
.hidden gap_04_000166C4_data
	.4byte 0x00000000
.endobj gap_04_000166C4_data

# .data:0x40 | 0x166C8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x166D0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x166D4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x166D8 | size: 0xC4
.obj unit_monochrome_pakkun_28_data_166D8, global
	.4byte 0x00000019
	.4byte str_btl_un_monochrome_pa_win_00005d18
	.4byte 0x00040000
	.4byte 0x01010B00
	.4byte 0x0146013C
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
	.4byte str_SFX_ENM_PAKKUN_DAMAG_win_00005d34
	.4byte str_SFX_BTL_DAMAGE_FIRE1_win_00005d4c
	.4byte str_SFX_BTL_DAMAGE_ICE1_win_00005d64
	.4byte str_SFX_BTL_DAMAGE_BIRIB_win_00005d78
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_monochrome_pakkun_28_data_166D8

# .data:0x114 | 0x1679C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x167A1 | size: 0x3
.obj gap_04_000167A1_data, global
.hidden gap_04_000167A1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000167A1_data

# .data:0x11C | 0x167A4 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x167A9 | size: 0x3
.obj gap_04_000167A9_data, global
.hidden gap_04_000167A9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000167A9_data

# .data:0x124 | 0x167AC | size: 0x16
.obj regist, local
	.4byte 0x6E5A3C64
	.4byte 0x64646450
	.4byte 0x645F645F
	.4byte 0x645F5A1E
	.4byte 0x3C645A64
	.2byte 0x645F
.endobj regist

# .data:0x13A | 0x167C2 | size: 0x2
.obj gap_04_000167C2_data, global
.hidden gap_04_000167C2_data
	.2byte 0x0000
.endobj gap_04_000167C2_data

# .data:0x13C | 0x167C4 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_monochrome_pa_win_00005d18
	.4byte str_c_pakflwr_t_win_00005d94
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

# .data:0x188 | 0x16810 | size: 0xC0
.obj weapon_pakkun_flower_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000002
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

# .data:0x248 | 0x168D0 | size: 0xA4
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

# .data:0x2EC | 0x16974 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_PKF_N_1_win_00005da0
	.4byte 0x00000002
	.4byte str_PKF_Y_1_win_00005da8
	.4byte 0x00000009
	.4byte str_PKF_Y_1_win_00005da8
	.4byte 0x00000005
	.4byte str_PKF_K_1_win_00005db0
	.4byte 0x00000004
	.4byte str_PKF_X_1_win_00005db8
	.4byte 0x00000003
	.4byte str_PKF_X_1_win_00005db8
	.4byte 0x0000001C
	.4byte str_PKF_S_1_win_00005dc0
	.4byte 0x0000001D
	.4byte str_PKF_Q_1_win_00005dc8
	.4byte 0x0000001E
	.4byte str_PKF_Q_1_win_00005dc8
	.4byte 0x0000001F
	.4byte str_PKF_S_2_win_00005dd0
	.4byte 0x00000027
	.4byte str_PKF_D_1_win_00005dd8
	.4byte 0x00000032
	.4byte str_PKF_A_1B_win_00005de0
	.4byte 0x00000028
	.4byte str_PKF_S_1_win_00005dc0
	.4byte 0x0000002A
	.4byte str_PKF_S_1_win_00005dc0
	.4byte 0x00000038
	.4byte str_PKF_X_1_win_00005db8
	.4byte 0x00000039
	.4byte str_PKF_X_1_win_00005db8
	.4byte 0x00000041
	.4byte str_PKF_T_1_win_00005dec
	.4byte 0x00000045
	.4byte str_PKF_S_1_win_00005dc0
.endobj pose_table

# .data:0x37C | 0x16A04 | size: 0x90
.obj pose_table_ceil, local
	.4byte 0x00000001
	.4byte str_PKF_N_2_win_00005df4
	.4byte 0x00000002
	.4byte str_PKF_Y_2_win_00005dfc
	.4byte 0x00000009
	.4byte str_PKF_Y_2_win_00005dfc
	.4byte 0x00000005
	.4byte str_PKF_K_2_win_00005e04
	.4byte 0x00000004
	.4byte str_PKF_X_2_win_00005e0c
	.4byte 0x00000003
	.4byte str_PKF_X_2_win_00005e0c
	.4byte 0x0000001C
	.4byte str_PKF_S_3_win_00005e14
	.4byte 0x0000001D
	.4byte str_PKF_Q_2_win_00005e1c
	.4byte 0x0000001E
	.4byte str_PKF_Q_2_win_00005e1c
	.4byte 0x0000001F
	.4byte str_PKF_S_4_win_00005e24
	.4byte 0x00000027
	.4byte str_PKF_D_2_win_00005e2c
	.4byte 0x00000032
	.4byte str_PKF_A_5_win_00005e34
	.4byte 0x00000028
	.4byte str_PKF_S_3_win_00005e14
	.4byte 0x0000002A
	.4byte str_PKF_S_3_win_00005e14
	.4byte 0x00000038
	.4byte str_PKF_X_2_win_00005e0c
	.4byte 0x00000039
	.4byte str_PKF_X_2_win_00005e0c
	.4byte 0x00000041
	.4byte str_PKF_S_3_win_00005e14
	.4byte 0x00000045
	.4byte str_PKF_S_3_win_00005e14
.endobj pose_table_ceil

# .data:0x40C | 0x16A94 | size: 0x78
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

# .data:0x484 | 0x16B0C | size: 0x7C
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

# .data:0x500 | 0x16B88 | size: 0x11C
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
	.4byte str_PKF_S_1_win_00005dc0
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
	.4byte zero_win_00005e3c
	.4byte str_toge_flush_win_00005e40
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

# .data:0x61C | 0x16CA4 | size: 0x28
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

# .data:0x644 | 0x16CCC | size: 0x78
.obj counter_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_D_1_win_00005dd8
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

# .data:0x6BC | 0x16D44 | size: 0x20C
.obj ceil_fall_ready_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_win_00005e4c
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
	.4byte str_PKF_E_4_win_00005e64
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_win_00005e6c
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
	.4byte str_PKF_E_1_win_00005e84
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
	.4byte str_PKF_S_1_win_00005dc0
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ceil_fall_ready_event

# .data:0x8C8 | 0x16F50 | size: 0x400
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
	.4byte str_SFX_ENM_PAKKUN_MOVE1_win_00005e4c
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
	.4byte str_PKF_E_2_win_00005e8c
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_win_00005e6c
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
	.4byte str_PKF_E_1_win_00005e84
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
	.4byte str_PKF_S_1_win_00005dc0
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_win_00005e6c
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
	.4byte str_PKF_E_3_win_00005e94
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
	.4byte str_PKF_S_3_win_00005e14
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj return_event

# .data:0xCC8 | 0x17350 | size: 0x4DC
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
	.4byte str_SFX_ENM_PAKKUN_MOVE1_win_00005e4c
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
	.4byte str_PKF_E_2_win_00005e8c
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_4_win_00005e64
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_win_00005e6c
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
	.4byte str_PKF_E_1_win_00005e84
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1A_win_00005e9c
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_ATTAC_win_00005ea8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1B_win_00005de0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1C_win_00005ec0
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

# .data:0x11A4 | 0x1782C | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x11BC | 0x17844 | size: 0x4
.obj gap_04_00017844_data, global
.hidden gap_04_00017844_data
	.4byte 0x00000000
.endobj gap_04_00017844_data
