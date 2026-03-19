.include "macros.inc"
.file "unit_pakkun_flower.o"

# 0x0000C18C..0x0000C41C | size: 0x290
.text
.balign 4

# .text:0x0 | 0xC18C | size: 0xDC
.fn shadow_scale_return, local
/* 0000C18C 0000C250  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000C190 0000C254  7C 08 02 A6 */	mflr r0
/* 0000C194 0000C258  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000C198 0000C25C  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000C19C 0000C260  7C 9F 23 78 */	mr r31, r4
/* 0000C1A0 0000C264  7C 7E 1B 78 */	mr r30, r3
/* 0000C1A4 0000C268  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000C1A8 0000C26C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000C1AC 0000C270  4B FF 47 FD */	bl evtGetValue
/* 0000C1B0 0000C274  7C 64 1B 78 */	mr r4, r3
/* 0000C1B4 0000C278  7F C3 F3 78 */	mr r3, r30
/* 0000C1B8 0000C27C  4B FF 47 F1 */	bl BattleTransID
/* 0000C1BC 0000C280  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000C1C0 0000C284  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000C1C4 0000C288  7C 64 1B 78 */	mr r4, r3
/* 0000C1C8 0000C28C  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000C1CC 0000C290  4B FF 47 DD */	bl BattleGetUnitPtr
/* 0000C1D0 0000C294  7C 7E 1B 78 */	mr r30, r3
/* 0000C1D4 0000C298  38 80 00 01 */	li r4, 0x1
/* 0000C1D8 0000C29C  4B FF 47 D1 */	bl BtlUnit_GetPartsPtr
/* 0000C1DC 0000C2A0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 0000C1E0 0000C2A4  7C 7F 1B 78 */	mr r31, r3
/* 0000C1E4 0000C2A8  41 82 00 0C */	beq .L_0000C1F0
/* 0000C1E8 0000C2AC  38 00 00 00 */	li r0, 0x0
/* 0000C1EC 0000C2B0  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0000C1F0:
/* 0000C1F0 0000C2B4  80 7E 02 18 */	lwz r3, 0x218(r30)
/* 0000C1F4 0000C2B8  3C 00 43 30 */	lis r0, 0x4330
/* 0000C1F8 0000C2BC  3C 80 00 00 */	lis r4, double_to_int_muj_000144f0@ha
/* 0000C1FC 0000C2C0  3C A0 00 00 */	lis r5, zero_muj_000144e8@ha
/* 0000C200 0000C2C4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0000C204 0000C2C8  C8 44 00 00 */	lfd f2, double_to_int_muj_000144f0@l(r4)
/* 0000C208 0000C2CC  90 61 00 0C */	stw r3, 0xc(r1)
/* 0000C20C 0000C2D0  38 C5 00 00 */	addi r6, r5, zero_muj_000144e8@l
/* 0000C210 0000C2D4  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 0000C214 0000C2D8  38 60 00 00 */	li r3, 0x0
/* 0000C218 0000C2DC  90 01 00 08 */	stw r0, 0x8(r1)
/* 0000C21C 0000C2E0  38 A0 00 0F */	li r5, 0xf
/* 0000C220 0000C2E4  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 0000C224 0000C2E8  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0000C228 0000C2EC  EC 40 10 28 */	fsubs f2, f0, f2
/* 0000C22C 0000C2F0  4B FF 47 7D */	bl intplGetValue
/* 0000C230 0000C2F4  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 0000C234 0000C2F8  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 0000C238 0000C2FC  2C 03 00 0F */	cmpwi r3, 0xf
/* 0000C23C 0000C300  41 80 00 0C */	blt .L_0000C248
/* 0000C240 0000C304  38 60 00 02 */	li r3, 0x2
/* 0000C244 0000C308  48 00 00 10 */	b .L_0000C254
.L_0000C248:
/* 0000C248 0000C30C  38 03 00 01 */	addi r0, r3, 0x1
/* 0000C24C 0000C310  38 60 00 00 */	li r3, 0x0
/* 0000C250 0000C314  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0000C254:
/* 0000C254 0000C318  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0000C258 0000C31C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000C25C 0000C320  7C 08 03 A6 */	mtlr r0
/* 0000C260 0000C324  38 21 00 20 */	addi r1, r1, 0x20
/* 0000C264 0000C328  4E 80 00 20 */	blr
.endfn shadow_scale_return

# .text:0xDC | 0xC268 | size: 0xE0
.fn shadow_scale_small, local
/* 0000C268 0000C32C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000C26C 0000C330  7C 08 02 A6 */	mflr r0
/* 0000C270 0000C334  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000C274 0000C338  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000C278 0000C33C  7C 9F 23 78 */	mr r31, r4
/* 0000C27C 0000C340  7C 7E 1B 78 */	mr r30, r3
/* 0000C280 0000C344  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000C284 0000C348  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000C288 0000C34C  4B FF 47 21 */	bl evtGetValue
/* 0000C28C 0000C350  7C 64 1B 78 */	mr r4, r3
/* 0000C290 0000C354  7F C3 F3 78 */	mr r3, r30
/* 0000C294 0000C358  4B FF 47 15 */	bl BattleTransID
/* 0000C298 0000C35C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000C29C 0000C360  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000C2A0 0000C364  7C 64 1B 78 */	mr r4, r3
/* 0000C2A4 0000C368  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000C2A8 0000C36C  4B FF 47 01 */	bl BattleGetUnitPtr
/* 0000C2AC 0000C370  7C 7E 1B 78 */	mr r30, r3
/* 0000C2B0 0000C374  38 80 00 01 */	li r4, 0x1
/* 0000C2B4 0000C378  4B FF 46 F5 */	bl BtlUnit_GetPartsPtr
/* 0000C2B8 0000C37C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 0000C2BC 0000C380  7C 7F 1B 78 */	mr r31, r3
/* 0000C2C0 0000C384  41 82 00 0C */	beq .L_0000C2CC
/* 0000C2C4 0000C388  38 00 00 00 */	li r0, 0x0
/* 0000C2C8 0000C38C  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0000C2CC:
/* 0000C2CC 0000C390  80 BE 02 18 */	lwz r5, 0x218(r30)
/* 0000C2D0 0000C394  3C 00 43 30 */	lis r0, 0x4330
/* 0000C2D4 0000C398  3C 80 00 00 */	lis r4, double_to_int_muj_000144f0@ha
/* 0000C2D8 0000C39C  3C 60 00 00 */	lis r3, zero_muj_000144e8@ha
/* 0000C2DC 0000C3A0  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 0000C2E0 0000C3A4  90 01 00 08 */	stw r0, 0x8(r1)
/* 0000C2E4 0000C3A8  38 C4 00 00 */	addi r6, r4, double_to_int_muj_000144f0@l
/* 0000C2E8 0000C3AC  38 83 00 00 */	addi r4, r3, zero_muj_000144e8@l
/* 0000C2EC 0000C3B0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 0000C2F0 0000C3B4  38 60 00 00 */	li r3, 0x0
/* 0000C2F4 0000C3B8  C8 26 00 00 */	lfd f1, 0x0(r6)
/* 0000C2F8 0000C3BC  38 A0 00 0F */	li r5, 0xf
/* 0000C2FC 0000C3C0  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0000C300 0000C3C4  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 0000C304 0000C3C8  EC 20 08 28 */	fsubs f1, f0, f1
/* 0000C308 0000C3CC  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 0000C30C 0000C3D0  4B FF 46 9D */	bl intplGetValue
/* 0000C310 0000C3D4  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 0000C314 0000C3D8  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 0000C318 0000C3DC  2C 03 00 0F */	cmpwi r3, 0xf
/* 0000C31C 0000C3E0  41 80 00 0C */	blt .L_0000C328
/* 0000C320 0000C3E4  38 60 00 02 */	li r3, 0x2
/* 0000C324 0000C3E8  48 00 00 10 */	b .L_0000C334
.L_0000C328:
/* 0000C328 0000C3EC  38 03 00 01 */	addi r0, r3, 0x1
/* 0000C32C 0000C3F0  38 60 00 00 */	li r3, 0x0
/* 0000C330 0000C3F4  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0000C334:
/* 0000C334 0000C3F8  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0000C338 0000C3FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000C33C 0000C400  7C 08 03 A6 */	mtlr r0
/* 0000C340 0000C404  38 21 00 20 */	addi r1, r1, 0x20
/* 0000C344 0000C408  4E 80 00 20 */	blr
.endfn shadow_scale_small

# .text:0x1BC | 0xC348 | size: 0x78
.fn shadow_scale_memory, local
/* 0000C348 0000C40C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000C34C 0000C410  7C 08 02 A6 */	mflr r0
/* 0000C350 0000C414  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000C354 0000C418  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 0000C358 0000C41C  7C 7F 1B 78 */	mr r31, r3
/* 0000C35C 0000C420  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000C360 0000C424  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000C364 0000C428  4B FF 46 45 */	bl evtGetValue
/* 0000C368 0000C42C  7C 64 1B 78 */	mr r4, r3
/* 0000C36C 0000C430  7F E3 FB 78 */	mr r3, r31
/* 0000C370 0000C434  4B FF 46 39 */	bl BattleTransID
/* 0000C374 0000C438  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000C378 0000C43C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000C37C 0000C440  7C 64 1B 78 */	mr r4, r3
/* 0000C380 0000C444  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000C384 0000C448  4B FF 46 25 */	bl BattleGetUnitPtr
/* 0000C388 0000C44C  7C 7F 1B 78 */	mr r31, r3
/* 0000C38C 0000C450  38 80 00 01 */	li r4, 0x1
/* 0000C390 0000C454  4B FF 46 19 */	bl BtlUnit_GetPartsPtr
/* 0000C394 0000C458  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 0000C398 0000C45C  38 60 00 02 */	li r3, 0x2
/* 0000C39C 0000C460  FC 00 00 1E */	fctiwz f0, f0
/* 0000C3A0 0000C464  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000C3A4 0000C468  80 01 00 0C */	lwz r0, 0xc(r1)
/* 0000C3A8 0000C46C  90 1F 02 18 */	stw r0, 0x218(r31)
/* 0000C3AC 0000C470  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 0000C3B0 0000C474  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000C3B4 0000C478  7C 08 03 A6 */	mtlr r0
/* 0000C3B8 0000C47C  38 21 00 20 */	addi r1, r1, 0x20
/* 0000C3BC 0000C480  4E 80 00 20 */	blr
.endfn shadow_scale_memory

# .text:0x234 | 0xC3C0 | size: 0x5C
.fn pakkun_ceil_exist, local
/* 0000C3C0 0000C484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000C3C4 0000C488  7C 08 02 A6 */	mflr r0
/* 0000C3C8 0000C48C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000C3CC 0000C490  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000C3D0 0000C494  38 84 00 00 */	addi r4, r4, _battleWorkPointer@l
/* 0000C3D4 0000C498  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000C3D8 0000C49C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 0000C3DC 0000C4A0  3C 84 00 02 */	addis r4, r4, 0x2
/* 0000C3E0 0000C4A4  88 04 80 F8 */	lbz r0, -0x7f08(r4)
/* 0000C3E4 0000C4A8  54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 0000C3E8 0000C4AC  41 82 00 14 */	beq .L_0000C3FC
/* 0000C3EC 0000C4B0  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0000C3F0 0000C4B4  38 A0 00 00 */	li r5, 0x0
/* 0000C3F4 0000C4B8  4B FF 45 B5 */	bl evtSetValue
/* 0000C3F8 0000C4BC  48 00 00 10 */	b .L_0000C408
.L_0000C3FC:
/* 0000C3FC 0000C4C0  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0000C400 0000C4C4  38 A0 00 01 */	li r5, 0x1
/* 0000C404 0000C4C8  4B FF 45 A5 */	bl evtSetValue
.L_0000C408:
/* 0000C408 0000C4CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000C40C 0000C4D0  38 60 00 02 */	li r3, 0x2
/* 0000C410 0000C4D4  7C 08 03 A6 */	mtlr r0
/* 0000C414 0000C4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 0000C418 0000C4DC  4E 80 00 20 */	blr
.endfn pakkun_ceil_exist

# 0x00006688..0x00006848 | size: 0x1C0
.rodata
.balign 8

# .rodata:0x0 | 0x6688 | size: 0x15
.obj str_btl_un_pakkun_flower_muj_00014338, local
	.string "btl_un_pakkun_flower"
.endobj str_btl_un_pakkun_flower_muj_00014338

# .rodata:0x15 | 0x669D | size: 0x3
.obj gap_03_0000669D_rodata, global
.hidden gap_03_0000669D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000669D_rodata

# .rodata:0x18 | 0x66A0 | size: 0x18
.obj str_SFX_ENM_PAKKUN_DAMAG_muj_00014350, local
	.string "SFX_ENM_PAKKUN_DAMAGED1"
.endobj str_SFX_ENM_PAKKUN_DAMAG_muj_00014350

# .rodata:0x30 | 0x66B8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_muj_00014368, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_muj_00014368

# .rodata:0x45 | 0x66CD | size: 0x3
.obj gap_03_000066CD_rodata, global
.hidden gap_03_000066CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000066CD_rodata

# .rodata:0x48 | 0x66D0 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_muj_00014380, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_muj_00014380

# .rodata:0x5C | 0x66E4 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_muj_00014394, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_muj_00014394

# .rodata:0x75 | 0x66FD | size: 0x3
.obj gap_03_000066FD_rodata, global
.hidden gap_03_000066FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000066FD_rodata

# .rodata:0x78 | 0x6700 | size: 0xA
.obj str_c_pakflwr_muj_000143b0, local
	.string "c_pakflwr"
.endobj str_c_pakflwr_muj_000143b0

# .rodata:0x82 | 0x670A | size: 0x2
.obj gap_03_0000670A_rodata, global
.hidden gap_03_0000670A_rodata
	.2byte 0x0000
.endobj gap_03_0000670A_rodata

# .rodata:0x84 | 0x670C | size: 0x8
.obj str_PKF_N_1_muj_000143bc, local
	.string "PKF_N_1"
.endobj str_PKF_N_1_muj_000143bc

# .rodata:0x8C | 0x6714 | size: 0x8
.obj str_PKF_Y_1_muj_000143c4, local
	.string "PKF_Y_1"
.endobj str_PKF_Y_1_muj_000143c4

# .rodata:0x94 | 0x671C | size: 0x8
.obj str_PKF_K_1_muj_000143cc, local
	.string "PKF_K_1"
.endobj str_PKF_K_1_muj_000143cc

# .rodata:0x9C | 0x6724 | size: 0x8
.obj str_PKF_X_1_muj_000143d4, local
	.string "PKF_X_1"
.endobj str_PKF_X_1_muj_000143d4

# .rodata:0xA4 | 0x672C | size: 0x8
.obj str_PKF_S_1_muj_000143dc, local
	.string "PKF_S_1"
.endobj str_PKF_S_1_muj_000143dc

# .rodata:0xAC | 0x6734 | size: 0x8
.obj str_PKF_Q_1_muj_000143e4, local
	.string "PKF_Q_1"
.endobj str_PKF_Q_1_muj_000143e4

# .rodata:0xB4 | 0x673C | size: 0x8
.obj str_PKF_S_2_muj_000143ec, local
	.string "PKF_S_2"
.endobj str_PKF_S_2_muj_000143ec

# .rodata:0xBC | 0x6744 | size: 0x8
.obj str_PKF_D_1_muj_000143f4, local
	.string "PKF_D_1"
.endobj str_PKF_D_1_muj_000143f4

# .rodata:0xC4 | 0x674C | size: 0x9
.obj str_PKF_A_1B_muj_000143fc, local
	.string "PKF_A_1B"
.endobj str_PKF_A_1B_muj_000143fc

# .rodata:0xCD | 0x6755 | size: 0x3
.obj gap_03_00006755_rodata, global
.hidden gap_03_00006755_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006755_rodata

# .rodata:0xD0 | 0x6758 | size: 0x8
.obj str_PKF_T_1_muj_00014408, local
	.string "PKF_T_1"
.endobj str_PKF_T_1_muj_00014408

# .rodata:0xD8 | 0x6760 | size: 0x8
.obj str_PKF_N_2_muj_00014410, local
	.string "PKF_N_2"
.endobj str_PKF_N_2_muj_00014410

# .rodata:0xE0 | 0x6768 | size: 0x8
.obj str_PKF_Y_2_muj_00014418, local
	.string "PKF_Y_2"
.endobj str_PKF_Y_2_muj_00014418

# .rodata:0xE8 | 0x6770 | size: 0x8
.obj str_PKF_K_2_muj_00014420, local
	.string "PKF_K_2"
.endobj str_PKF_K_2_muj_00014420

# .rodata:0xF0 | 0x6778 | size: 0x8
.obj str_PKF_X_2_muj_00014428, local
	.string "PKF_X_2"
.endobj str_PKF_X_2_muj_00014428

# .rodata:0xF8 | 0x6780 | size: 0x8
.obj str_PKF_S_3_muj_00014430, local
	.string "PKF_S_3"
.endobj str_PKF_S_3_muj_00014430

# .rodata:0x100 | 0x6788 | size: 0x8
.obj str_PKF_Q_2_muj_00014438, local
	.string "PKF_Q_2"
.endobj str_PKF_Q_2_muj_00014438

# .rodata:0x108 | 0x6790 | size: 0x8
.obj str_PKF_S_4_muj_00014440, local
	.string "PKF_S_4"
.endobj str_PKF_S_4_muj_00014440

# .rodata:0x110 | 0x6798 | size: 0x8
.obj str_PKF_D_2_muj_00014448, local
	.string "PKF_D_2"
.endobj str_PKF_D_2_muj_00014448

# .rodata:0x118 | 0x67A0 | size: 0x8
.obj str_PKF_A_5_muj_00014450, local
	.string "PKF_A_5"
.endobj str_PKF_A_5_muj_00014450

# .rodata:0x120 | 0x67A8 | size: 0x1
.obj zero_muj_00014458, local
	.byte 0x00
.endobj zero_muj_00014458

# .rodata:0x121 | 0x67A9 | size: 0x3
.obj gap_03_000067A9_rodata, global
.hidden gap_03_000067A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000067A9_rodata

# .rodata:0x124 | 0x67AC | size: 0xB
.obj str_toge_flush_muj_0001445c, local
	.string "toge_flush"
.endobj str_toge_flush_muj_0001445c

# .rodata:0x12F | 0x67B7 | size: 0x1
.obj gap_03_000067B7_rodata, global
.hidden gap_03_000067B7_rodata
	.byte 0x00
.endobj gap_03_000067B7_rodata

# .rodata:0x130 | 0x67B8 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE1_muj_00014468, local
	.string "SFX_ENM_PAKKUN_MOVE1"
.endobj str_SFX_ENM_PAKKUN_MOVE1_muj_00014468

# .rodata:0x145 | 0x67CD | size: 0x3
.obj gap_03_000067CD_rodata, global
.hidden gap_03_000067CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000067CD_rodata

# .rodata:0x148 | 0x67D0 | size: 0x8
.obj str_PKF_E_4_muj_00014480, local
	.string "PKF_E_4"
.endobj str_PKF_E_4_muj_00014480

# .rodata:0x150 | 0x67D8 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE2_muj_00014488, local
	.string "SFX_ENM_PAKKUN_MOVE2"
.endobj str_SFX_ENM_PAKKUN_MOVE2_muj_00014488

# .rodata:0x165 | 0x67ED | size: 0x3
.obj gap_03_000067ED_rodata, global
.hidden gap_03_000067ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000067ED_rodata

# .rodata:0x168 | 0x67F0 | size: 0x8
.obj str_PKF_E_1_muj_000144a0, local
	.string "PKF_E_1"
.endobj str_PKF_E_1_muj_000144a0

# .rodata:0x170 | 0x67F8 | size: 0x8
.obj str_PKF_E_2_muj_000144a8, local
	.string "PKF_E_2"
.endobj str_PKF_E_2_muj_000144a8

# .rodata:0x178 | 0x6800 | size: 0x8
.obj str_PKF_E_3_muj_000144b0, local
	.string "PKF_E_3"
.endobj str_PKF_E_3_muj_000144b0

# .rodata:0x180 | 0x6808 | size: 0x9
.obj str_PKF_A_1A_muj_000144b8, local
	.string "PKF_A_1A"
.endobj str_PKF_A_1A_muj_000144b8

# .rodata:0x189 | 0x6811 | size: 0x3
.obj gap_03_00006811_rodata, global
.hidden gap_03_00006811_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006811_rodata

# .rodata:0x18C | 0x6814 | size: 0x17
.obj str_SFX_ENM_PAKKUN_ATTAC_muj_000144c4, local
	.string "SFX_ENM_PAKKUN_ATTACK1"
.endobj str_SFX_ENM_PAKKUN_ATTAC_muj_000144c4

# .rodata:0x1A3 | 0x682B | size: 0x1
.obj gap_03_0000682B_rodata, global
.hidden gap_03_0000682B_rodata
	.byte 0x00
.endobj gap_03_0000682B_rodata

# .rodata:0x1A4 | 0x682C | size: 0x9
.obj str_PKF_A_1C_muj_000144dc, local
	.string "PKF_A_1C"
.endobj str_PKF_A_1C_muj_000144dc
	.byte 0x00, 0x00, 0x00

# .rodata:0x1B0 | 0x6838 | size: 0x4
.obj zero_muj_000144e8, local
	.float 0
.endobj zero_muj_000144e8
	.4byte 0x00000000

# .rodata:0x1B8 | 0x6840 | size: 0x8
.obj double_to_int_muj_000144f0, local
	.double 4503601774854144
.endobj double_to_int_muj_000144f0

# 0x0003B698..0x0003C858 | size: 0x11C0
.data
.balign 8

# .data:0x0 | 0x3B698 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x3B6A0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3B6A4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x3B6A8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3B6AC | size: 0x4
.obj gap_04_0003B6AC_data, global
.hidden gap_04_0003B6AC_data
	.4byte 0x00000000
.endobj gap_04_0003B6AC_data

# .data:0x18 | 0x3B6B0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x3B6B8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3B6BC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x3B6C0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x3B6C8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3B6CC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x3B6D0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3B6D4 | size: 0x4
.obj gap_04_0003B6D4_data, global
.hidden gap_04_0003B6D4_data
	.4byte 0x00000000
.endobj gap_04_0003B6D4_data

# .data:0x40 | 0x3B6D8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x3B6E0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x3B6E4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x3B6E8 | size: 0xC4
.obj unit_pakkun_flower, local
	.4byte 0x000000A2
	.4byte str_btl_un_pakkun_flower_muj_00014338
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
	.4byte str_SFX_ENM_PAKKUN_DAMAG_muj_00014350
	.4byte str_SFX_BTL_DAMAGE_FIRE1_muj_00014368
	.4byte str_SFX_BTL_DAMAGE_ICE1_muj_00014380
	.4byte str_SFX_BTL_DAMAGE_BIRIB_muj_00014394
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_pakkun_flower

# .data:0x114 | 0x3B7AC | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x3B7B1 | size: 0x3
.obj gap_04_0003B7B1_data, global
.hidden gap_04_0003B7B1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0003B7B1_data

# .data:0x11C | 0x3B7B4 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x3B7B9 | size: 0x3
.obj gap_04_0003B7B9_data, global
.hidden gap_04_0003B7B9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0003B7B9_data

# .data:0x124 | 0x3B7BC | size: 0x16
.obj regist, local
	.4byte 0x64462864
	.4byte 0x5064643C
	.4byte 0x64556455
	.4byte 0x6455460A
	.4byte 0x1E644664
	.2byte 0x641E
.endobj regist

# .data:0x13A | 0x3B7D2 | size: 0x2
.obj gap_04_0003B7D2_data, global
.hidden gap_04_0003B7D2_data
	.2byte 0x0000
.endobj gap_04_0003B7D2_data

# .data:0x13C | 0x3B7D4 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_pakkun_flower_muj_00014338
	.4byte str_c_pakflwr_muj_000143b0
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

# .data:0x188 | 0x3B820 | size: 0xC0
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

# .data:0x248 | 0x3B8E0 | size: 0xA4
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

# .data:0x2EC | 0x3B984 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_PKF_N_1_muj_000143bc
	.4byte 0x00000002
	.4byte str_PKF_Y_1_muj_000143c4
	.4byte 0x00000009
	.4byte str_PKF_Y_1_muj_000143c4
	.4byte 0x00000005
	.4byte str_PKF_K_1_muj_000143cc
	.4byte 0x00000004
	.4byte str_PKF_X_1_muj_000143d4
	.4byte 0x00000003
	.4byte str_PKF_X_1_muj_000143d4
	.4byte 0x0000001C
	.4byte str_PKF_S_1_muj_000143dc
	.4byte 0x0000001D
	.4byte str_PKF_Q_1_muj_000143e4
	.4byte 0x0000001E
	.4byte str_PKF_Q_1_muj_000143e4
	.4byte 0x0000001F
	.4byte str_PKF_S_2_muj_000143ec
	.4byte 0x00000027
	.4byte str_PKF_D_1_muj_000143f4
	.4byte 0x00000032
	.4byte str_PKF_A_1B_muj_000143fc
	.4byte 0x00000028
	.4byte str_PKF_S_1_muj_000143dc
	.4byte 0x0000002A
	.4byte str_PKF_S_1_muj_000143dc
	.4byte 0x00000038
	.4byte str_PKF_X_1_muj_000143d4
	.4byte 0x00000039
	.4byte str_PKF_X_1_muj_000143d4
	.4byte 0x00000041
	.4byte str_PKF_T_1_muj_00014408
	.4byte 0x00000045
	.4byte str_PKF_S_1_muj_000143dc
.endobj pose_table

# .data:0x37C | 0x3BA14 | size: 0x90
.obj pose_table_ceil, local
	.4byte 0x00000001
	.4byte str_PKF_N_2_muj_00014410
	.4byte 0x00000002
	.4byte str_PKF_Y_2_muj_00014418
	.4byte 0x00000009
	.4byte str_PKF_Y_2_muj_00014418
	.4byte 0x00000005
	.4byte str_PKF_K_2_muj_00014420
	.4byte 0x00000004
	.4byte str_PKF_X_2_muj_00014428
	.4byte 0x00000003
	.4byte str_PKF_X_2_muj_00014428
	.4byte 0x0000001C
	.4byte str_PKF_S_3_muj_00014430
	.4byte 0x0000001D
	.4byte str_PKF_Q_2_muj_00014438
	.4byte 0x0000001E
	.4byte str_PKF_Q_2_muj_00014438
	.4byte 0x0000001F
	.4byte str_PKF_S_4_muj_00014440
	.4byte 0x00000027
	.4byte str_PKF_D_2_muj_00014448
	.4byte 0x00000032
	.4byte str_PKF_A_5_muj_00014450
	.4byte 0x00000028
	.4byte str_PKF_S_3_muj_00014430
	.4byte 0x0000002A
	.4byte str_PKF_S_3_muj_00014430
	.4byte 0x00000038
	.4byte str_PKF_X_2_muj_00014428
	.4byte 0x00000039
	.4byte str_PKF_X_2_muj_00014428
	.4byte 0x00000041
	.4byte str_PKF_S_3_muj_00014430
	.4byte 0x00000045
	.4byte str_PKF_S_3_muj_00014430
.endobj pose_table_ceil

# .data:0x40C | 0x3BAA4 | size: 0x78
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

# .data:0x484 | 0x3BB1C | size: 0x7C
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

# .data:0x500 | 0x3BB98 | size: 0x11C
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
	.4byte str_PKF_S_1_muj_000143dc
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
	.4byte zero_muj_00014458
	.4byte str_toge_flush_muj_0001445c
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

# .data:0x61C | 0x3BCB4 | size: 0x28
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

# .data:0x644 | 0x3BCDC | size: 0x78
.obj counter_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_D_1_muj_000143f4
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

# .data:0x6BC | 0x3BD54 | size: 0x20C
.obj ceil_fall_ready_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_muj_00014468
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
	.4byte str_PKF_E_4_muj_00014480
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_muj_00014488
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
	.4byte str_PKF_E_1_muj_000144a0
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
	.4byte str_PKF_S_1_muj_000143dc
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ceil_fall_ready_event

# .data:0x8C8 | 0x3BF60 | size: 0x400
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
	.4byte str_SFX_ENM_PAKKUN_MOVE1_muj_00014468
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
	.4byte str_PKF_E_2_muj_000144a8
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_muj_00014488
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
	.4byte str_PKF_E_1_muj_000144a0
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
	.4byte str_PKF_S_1_muj_000143dc
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_muj_00014488
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
	.4byte str_PKF_E_3_muj_000144b0
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
	.4byte str_PKF_S_3_muj_00014430
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj return_event

# .data:0xCC8 | 0x3C360 | size: 0x4DC
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
	.4byte str_SFX_ENM_PAKKUN_MOVE1_muj_00014468
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
	.4byte str_PKF_E_2_muj_000144a8
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_4_muj_00014480
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_muj_00014488
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
	.4byte str_PKF_E_1_muj_000144a0
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1A_muj_000144b8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_ATTAC_muj_000144c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1B_muj_000143fc
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1C_muj_000144dc
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

# .data:0x11A4 | 0x3C83C | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x11BC | 0x3C854 | size: 0x4
.obj gap_04_0003C854_data, global
.hidden gap_04_0003C854_data
	.4byte 0x00000000
.endobj gap_04_0003C854_data
