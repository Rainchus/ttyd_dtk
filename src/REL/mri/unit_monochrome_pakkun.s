.include "macros.inc"
.file "unit_monochrome_pakkun.o"

# 0x0001F104..0x0001F394 | size: 0x290
.text
.balign 4

# .text:0x0 | 0x1F104 | size: 0x5C
.fn pakkun_ceil_exist, local
/* 0001F104 0001F1C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0001F108 0001F1CC  7C 08 02 A6 */	mflr r0
/* 0001F10C 0001F1D0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001F110 0001F1D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 0001F114 0001F1D8  38 84 00 00 */	addi r4, r4, _battleWorkPointer@l
/* 0001F118 0001F1DC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001F11C 0001F1E0  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 0001F120 0001F1E4  3C 84 00 02 */	addis r4, r4, 0x2
/* 0001F124 0001F1E8  88 04 80 F8 */	lbz r0, -0x7f08(r4)
/* 0001F128 0001F1EC  54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 0001F12C 0001F1F0  41 82 00 14 */	beq .L_0001F140
/* 0001F130 0001F1F4  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0001F134 0001F1F8  38 A0 00 00 */	li r5, 0x0
/* 0001F138 0001F1FC  4B FE 11 21 */	bl evtSetValue
/* 0001F13C 0001F200  48 00 00 10 */	b .L_0001F14C
.L_0001F140:
/* 0001F140 0001F204  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0001F144 0001F208  38 A0 00 01 */	li r5, 0x1
/* 0001F148 0001F20C  4B FE 11 11 */	bl evtSetValue
.L_0001F14C:
/* 0001F14C 0001F210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0001F150 0001F214  38 60 00 02 */	li r3, 0x2
/* 0001F154 0001F218  7C 08 03 A6 */	mtlr r0
/* 0001F158 0001F21C  38 21 00 10 */	addi r1, r1, 0x10
/* 0001F15C 0001F220  4E 80 00 20 */	blr
.endfn pakkun_ceil_exist

# .text:0x5C | 0x1F160 | size: 0x78
.fn shadow_scale_memory, local
/* 0001F160 0001F224  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0001F164 0001F228  7C 08 02 A6 */	mflr r0
/* 0001F168 0001F22C  90 01 00 24 */	stw r0, 0x24(r1)
/* 0001F16C 0001F230  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 0001F170 0001F234  7C 7F 1B 78 */	mr r31, r3
/* 0001F174 0001F238  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0001F178 0001F23C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001F17C 0001F240  4B FE 10 DD */	bl evtGetValue
/* 0001F180 0001F244  7C 64 1B 78 */	mr r4, r3
/* 0001F184 0001F248  7F E3 FB 78 */	mr r3, r31
/* 0001F188 0001F24C  4B FE 10 D1 */	bl BattleTransID
/* 0001F18C 0001F250  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001F190 0001F254  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0001F194 0001F258  7C 64 1B 78 */	mr r4, r3
/* 0001F198 0001F25C  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0001F19C 0001F260  4B FE 10 BD */	bl BattleGetUnitPtr
/* 0001F1A0 0001F264  7C 7F 1B 78 */	mr r31, r3
/* 0001F1A4 0001F268  38 80 00 01 */	li r4, 0x1
/* 0001F1A8 0001F26C  4B FE 10 B1 */	bl BtlUnit_GetPartsPtr
/* 0001F1AC 0001F270  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 0001F1B0 0001F274  38 60 00 02 */	li r3, 0x2
/* 0001F1B4 0001F278  FC 00 00 1E */	fctiwz f0, f0
/* 0001F1B8 0001F27C  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0001F1BC 0001F280  80 01 00 0C */	lwz r0, 0xc(r1)
/* 0001F1C0 0001F284  90 1F 02 18 */	stw r0, 0x218(r31)
/* 0001F1C4 0001F288  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 0001F1C8 0001F28C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0001F1CC 0001F290  7C 08 03 A6 */	mtlr r0
/* 0001F1D0 0001F294  38 21 00 20 */	addi r1, r1, 0x20
/* 0001F1D4 0001F298  4E 80 00 20 */	blr
.endfn shadow_scale_memory

# .text:0xD4 | 0x1F1D8 | size: 0xE0
.fn shadow_scale_small, local
/* 0001F1D8 0001F29C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0001F1DC 0001F2A0  7C 08 02 A6 */	mflr r0
/* 0001F1E0 0001F2A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 0001F1E4 0001F2A8  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0001F1E8 0001F2AC  7C 9F 23 78 */	mr r31, r4
/* 0001F1EC 0001F2B0  7C 7E 1B 78 */	mr r30, r3
/* 0001F1F0 0001F2B4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0001F1F4 0001F2B8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001F1F8 0001F2BC  4B FE 10 61 */	bl evtGetValue
/* 0001F1FC 0001F2C0  7C 64 1B 78 */	mr r4, r3
/* 0001F200 0001F2C4  7F C3 F3 78 */	mr r3, r30
/* 0001F204 0001F2C8  4B FE 10 55 */	bl BattleTransID
/* 0001F208 0001F2CC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001F20C 0001F2D0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0001F210 0001F2D4  7C 64 1B 78 */	mr r4, r3
/* 0001F214 0001F2D8  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0001F218 0001F2DC  4B FE 10 41 */	bl BattleGetUnitPtr
/* 0001F21C 0001F2E0  7C 7E 1B 78 */	mr r30, r3
/* 0001F220 0001F2E4  38 80 00 01 */	li r4, 0x1
/* 0001F224 0001F2E8  4B FE 10 35 */	bl BtlUnit_GetPartsPtr
/* 0001F228 0001F2EC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 0001F22C 0001F2F0  7C 7F 1B 78 */	mr r31, r3
/* 0001F230 0001F2F4  41 82 00 0C */	beq .L_0001F23C
/* 0001F234 0001F2F8  38 00 00 00 */	li r0, 0x0
/* 0001F238 0001F2FC  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0001F23C:
/* 0001F23C 0001F300  80 BE 02 18 */	lwz r5, 0x218(r30)
/* 0001F240 0001F304  3C 00 43 30 */	lis r0, 0x4330
/* 0001F244 0001F308  3C 80 00 00 */	lis r4, double_to_int_mri_000281c8@ha
/* 0001F248 0001F30C  3C 60 00 00 */	lis r3, zero_mri_000281c4@ha
/* 0001F24C 0001F310  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 0001F250 0001F314  90 01 00 08 */	stw r0, 0x8(r1)
/* 0001F254 0001F318  38 C4 00 00 */	addi r6, r4, double_to_int_mri_000281c8@l
/* 0001F258 0001F31C  38 83 00 00 */	addi r4, r3, zero_mri_000281c4@l
/* 0001F25C 0001F320  90 A1 00 0C */	stw r5, 0xc(r1)
/* 0001F260 0001F324  38 60 00 00 */	li r3, 0x0
/* 0001F264 0001F328  C8 26 00 00 */	lfd f1, 0x0(r6)
/* 0001F268 0001F32C  38 A0 00 0F */	li r5, 0xf
/* 0001F26C 0001F330  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0001F270 0001F334  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 0001F274 0001F338  EC 20 08 28 */	fsubs f1, f0, f1
/* 0001F278 0001F33C  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 0001F27C 0001F340  4B FE 0F DD */	bl intplGetValue
/* 0001F280 0001F344  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 0001F284 0001F348  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 0001F288 0001F34C  2C 03 00 0F */	cmpwi r3, 0xf
/* 0001F28C 0001F350  41 80 00 0C */	blt .L_0001F298
/* 0001F290 0001F354  38 60 00 02 */	li r3, 0x2
/* 0001F294 0001F358  48 00 00 10 */	b .L_0001F2A4
.L_0001F298:
/* 0001F298 0001F35C  38 03 00 01 */	addi r0, r3, 0x1
/* 0001F29C 0001F360  38 60 00 00 */	li r3, 0x0
/* 0001F2A0 0001F364  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0001F2A4:
/* 0001F2A4 0001F368  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0001F2A8 0001F36C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0001F2AC 0001F370  7C 08 03 A6 */	mtlr r0
/* 0001F2B0 0001F374  38 21 00 20 */	addi r1, r1, 0x20
/* 0001F2B4 0001F378  4E 80 00 20 */	blr
.endfn shadow_scale_small

# .text:0x1B4 | 0x1F2B8 | size: 0xDC
.fn shadow_scale_return, local
/* 0001F2B8 0001F37C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0001F2BC 0001F380  7C 08 02 A6 */	mflr r0
/* 0001F2C0 0001F384  90 01 00 24 */	stw r0, 0x24(r1)
/* 0001F2C4 0001F388  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0001F2C8 0001F38C  7C 9F 23 78 */	mr r31, r4
/* 0001F2CC 0001F390  7C 7E 1B 78 */	mr r30, r3
/* 0001F2D0 0001F394  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0001F2D4 0001F398  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001F2D8 0001F39C  4B FE 0F 81 */	bl evtGetValue
/* 0001F2DC 0001F3A0  7C 64 1B 78 */	mr r4, r3
/* 0001F2E0 0001F3A4  7F C3 F3 78 */	mr r3, r30
/* 0001F2E4 0001F3A8  4B FE 0F 75 */	bl BattleTransID
/* 0001F2E8 0001F3AC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001F2EC 0001F3B0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0001F2F0 0001F3B4  7C 64 1B 78 */	mr r4, r3
/* 0001F2F4 0001F3B8  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0001F2F8 0001F3BC  4B FE 0F 61 */	bl BattleGetUnitPtr
/* 0001F2FC 0001F3C0  7C 7E 1B 78 */	mr r30, r3
/* 0001F300 0001F3C4  38 80 00 01 */	li r4, 0x1
/* 0001F304 0001F3C8  4B FE 0F 55 */	bl BtlUnit_GetPartsPtr
/* 0001F308 0001F3CC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 0001F30C 0001F3D0  7C 7F 1B 78 */	mr r31, r3
/* 0001F310 0001F3D4  41 82 00 0C */	beq .L_0001F31C
/* 0001F314 0001F3D8  38 00 00 00 */	li r0, 0x0
/* 0001F318 0001F3DC  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0001F31C:
/* 0001F31C 0001F3E0  80 7E 02 18 */	lwz r3, 0x218(r30)
/* 0001F320 0001F3E4  3C 00 43 30 */	lis r0, 0x4330
/* 0001F324 0001F3E8  3C 80 00 00 */	lis r4, double_to_int_mri_000281c8@ha
/* 0001F328 0001F3EC  3C A0 00 00 */	lis r5, zero_mri_000281c4@ha
/* 0001F32C 0001F3F0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0001F330 0001F3F4  C8 44 00 00 */	lfd f2, double_to_int_mri_000281c8@l(r4)
/* 0001F334 0001F3F8  90 61 00 0C */	stw r3, 0xc(r1)
/* 0001F338 0001F3FC  38 C5 00 00 */	addi r6, r5, zero_mri_000281c4@l
/* 0001F33C 0001F400  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 0001F340 0001F404  38 60 00 00 */	li r3, 0x0
/* 0001F344 0001F408  90 01 00 08 */	stw r0, 0x8(r1)
/* 0001F348 0001F40C  38 A0 00 0F */	li r5, 0xf
/* 0001F34C 0001F410  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 0001F350 0001F414  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0001F354 0001F418  EC 40 10 28 */	fsubs f2, f0, f2
/* 0001F358 0001F41C  4B FE 0F 01 */	bl intplGetValue
/* 0001F35C 0001F420  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 0001F360 0001F424  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 0001F364 0001F428  2C 03 00 0F */	cmpwi r3, 0xf
/* 0001F368 0001F42C  41 80 00 0C */	blt .L_0001F374
/* 0001F36C 0001F430  38 60 00 02 */	li r3, 0x2
/* 0001F370 0001F434  48 00 00 10 */	b .L_0001F380
.L_0001F374:
/* 0001F374 0001F438  38 03 00 01 */	addi r0, r3, 0x1
/* 0001F378 0001F43C  38 60 00 00 */	li r3, 0x0
/* 0001F37C 0001F440  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0001F380:
/* 0001F380 0001F444  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0001F384 0001F448  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0001F388 0001F44C  7C 08 03 A6 */	mtlr r0
/* 0001F38C 0001F450  38 21 00 20 */	addi r1, r1, 0x20
/* 0001F390 0001F454  4E 80 00 20 */	blr
.endfn shadow_scale_return

# 0x00007A00..0x00007BC0 | size: 0x1C0
.rodata
.balign 8

# .rodata:0x0 | 0x7A00 | size: 0x19
.obj str_btl_un_monochrome_pa_mri_000280a0, local
	.string "btl_un_monochrome_pakkun"
.endobj str_btl_un_monochrome_pa_mri_000280a0

# .rodata:0x19 | 0x7A19 | size: 0x3
.obj gap_03_00007A19_rodata, global
.hidden gap_03_00007A19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007A19_rodata

# .rodata:0x1C | 0x7A1C | size: 0x18
.obj str_SFX_ENM_PAKKUN_DAMAG_mri_000280bc, local
	.string "SFX_ENM_PAKKUN_DAMAGED1"
.endobj str_SFX_ENM_PAKKUN_DAMAG_mri_000280bc

# .rodata:0x34 | 0x7A34 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_mri_000280d4, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_mri_000280d4

# .rodata:0x49 | 0x7A49 | size: 0x3
.obj gap_03_00007A49_rodata, global
.hidden gap_03_00007A49_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007A49_rodata

# .rodata:0x4C | 0x7A4C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_mri_000280ec, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_mri_000280ec

# .rodata:0x60 | 0x7A60 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_mri_00028100, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_mri_00028100

# .rodata:0x79 | 0x7A79 | size: 0x3
.obj gap_03_00007A79_rodata, global
.hidden gap_03_00007A79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007A79_rodata

# .rodata:0x7C | 0x7A7C | size: 0xC
.obj str_c_pakflwr_t_mri_0002811c, local
	.string "c_pakflwr_t"
.endobj str_c_pakflwr_t_mri_0002811c

# .rodata:0x88 | 0x7A88 | size: 0x8
.obj str_PKF_N_1_mri_00028128, local
	.string "PKF_N_1"
.endobj str_PKF_N_1_mri_00028128

# .rodata:0x90 | 0x7A90 | size: 0x8
.obj str_PKF_Y_1_mri_00028130, local
	.string "PKF_Y_1"
.endobj str_PKF_Y_1_mri_00028130

# .rodata:0x98 | 0x7A98 | size: 0x8
.obj str_PKF_K_1_mri_00028138, local
	.string "PKF_K_1"
.endobj str_PKF_K_1_mri_00028138

# .rodata:0xA0 | 0x7AA0 | size: 0x8
.obj str_PKF_X_1_mri_00028140, local
	.string "PKF_X_1"
.endobj str_PKF_X_1_mri_00028140

# .rodata:0xA8 | 0x7AA8 | size: 0x8
.obj str_PKF_S_1_mri_00028148, local
	.string "PKF_S_1"
.endobj str_PKF_S_1_mri_00028148

# .rodata:0xB0 | 0x7AB0 | size: 0x8
.obj str_PKF_Q_1_mri_00028150, local
	.string "PKF_Q_1"
.endobj str_PKF_Q_1_mri_00028150

# .rodata:0xB8 | 0x7AB8 | size: 0x8
.obj str_PKF_S_2_mri_00028158, local
	.string "PKF_S_2"
.endobj str_PKF_S_2_mri_00028158

# .rodata:0xC0 | 0x7AC0 | size: 0x8
.obj str_PKF_D_1_mri_00028160, local
	.string "PKF_D_1"
.endobj str_PKF_D_1_mri_00028160

# .rodata:0xC8 | 0x7AC8 | size: 0x9
.obj str_PKF_A_1B_mri_00028168, local
	.string "PKF_A_1B"
.endobj str_PKF_A_1B_mri_00028168

# .rodata:0xD1 | 0x7AD1 | size: 0x3
.obj gap_03_00007AD1_rodata, global
.hidden gap_03_00007AD1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007AD1_rodata

# .rodata:0xD4 | 0x7AD4 | size: 0x8
.obj str_PKF_T_1_mri_00028174, local
	.string "PKF_T_1"
.endobj str_PKF_T_1_mri_00028174

# .rodata:0xDC | 0x7ADC | size: 0x8
.obj str_PKF_N_2_mri_0002817c, local
	.string "PKF_N_2"
.endobj str_PKF_N_2_mri_0002817c

# .rodata:0xE4 | 0x7AE4 | size: 0x8
.obj str_PKF_Y_2_mri_00028184, local
	.string "PKF_Y_2"
.endobj str_PKF_Y_2_mri_00028184

# .rodata:0xEC | 0x7AEC | size: 0x8
.obj str_PKF_K_2_mri_0002818c, local
	.string "PKF_K_2"
.endobj str_PKF_K_2_mri_0002818c

# .rodata:0xF4 | 0x7AF4 | size: 0x8
.obj str_PKF_X_2_mri_00028194, local
	.string "PKF_X_2"
.endobj str_PKF_X_2_mri_00028194

# .rodata:0xFC | 0x7AFC | size: 0x8
.obj str_PKF_S_3_mri_0002819c, local
	.string "PKF_S_3"
.endobj str_PKF_S_3_mri_0002819c

# .rodata:0x104 | 0x7B04 | size: 0x8
.obj str_PKF_Q_2_mri_000281a4, local
	.string "PKF_Q_2"
.endobj str_PKF_Q_2_mri_000281a4

# .rodata:0x10C | 0x7B0C | size: 0x8
.obj str_PKF_S_4_mri_000281ac, local
	.string "PKF_S_4"
.endobj str_PKF_S_4_mri_000281ac

# .rodata:0x114 | 0x7B14 | size: 0x8
.obj str_PKF_D_2_mri_000281b4, local
	.string "PKF_D_2"
.endobj str_PKF_D_2_mri_000281b4

# .rodata:0x11C | 0x7B1C | size: 0x8
.obj str_PKF_A_5_mri_000281bc, local
	.string "PKF_A_5"
.endobj str_PKF_A_5_mri_000281bc

# .rodata:0x124 | 0x7B24 | size: 0x4
.obj zero_mri_000281c4, local
	.float 0
.endobj zero_mri_000281c4

# .rodata:0x128 | 0x7B28 | size: 0x8
.obj double_to_int_mri_000281c8, local
	.double 4503601774854144
.endobj double_to_int_mri_000281c8

# .rodata:0x130 | 0x7B30 | size: 0x1
.obj zero_mri_000281d0, local
	.byte 0x00
.endobj zero_mri_000281d0

# .rodata:0x131 | 0x7B31 | size: 0x3
.obj gap_03_00007B31_rodata, global
.hidden gap_03_00007B31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007B31_rodata

# .rodata:0x134 | 0x7B34 | size: 0xB
.obj str_toge_flush_mri_000281d4, local
	.string "toge_flush"
.endobj str_toge_flush_mri_000281d4

# .rodata:0x13F | 0x7B3F | size: 0x1
.obj gap_03_00007B3F_rodata, global
.hidden gap_03_00007B3F_rodata
	.byte 0x00
.endobj gap_03_00007B3F_rodata

# .rodata:0x140 | 0x7B40 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE1_mri_000281e0, local
	.string "SFX_ENM_PAKKUN_MOVE1"
.endobj str_SFX_ENM_PAKKUN_MOVE1_mri_000281e0

# .rodata:0x155 | 0x7B55 | size: 0x3
.obj gap_03_00007B55_rodata, global
.hidden gap_03_00007B55_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007B55_rodata

# .rodata:0x158 | 0x7B58 | size: 0x8
.obj str_PKF_E_4_mri_000281f8, local
	.string "PKF_E_4"
.endobj str_PKF_E_4_mri_000281f8

# .rodata:0x160 | 0x7B60 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE2_mri_00028200, local
	.string "SFX_ENM_PAKKUN_MOVE2"
.endobj str_SFX_ENM_PAKKUN_MOVE2_mri_00028200

# .rodata:0x175 | 0x7B75 | size: 0x3
.obj gap_03_00007B75_rodata, global
.hidden gap_03_00007B75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007B75_rodata

# .rodata:0x178 | 0x7B78 | size: 0x8
.obj str_PKF_E_1_mri_00028218, local
	.string "PKF_E_1"
.endobj str_PKF_E_1_mri_00028218

# .rodata:0x180 | 0x7B80 | size: 0x8
.obj str_PKF_E_2_mri_00028220, local
	.string "PKF_E_2"
.endobj str_PKF_E_2_mri_00028220

# .rodata:0x188 | 0x7B88 | size: 0x8
.obj str_PKF_E_3_mri_00028228, local
	.string "PKF_E_3"
.endobj str_PKF_E_3_mri_00028228

# .rodata:0x190 | 0x7B90 | size: 0x9
.obj str_PKF_A_1A_mri_00028230, local
	.string "PKF_A_1A"
.endobj str_PKF_A_1A_mri_00028230

# .rodata:0x199 | 0x7B99 | size: 0x3
.obj gap_03_00007B99_rodata, global
.hidden gap_03_00007B99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007B99_rodata

# .rodata:0x19C | 0x7B9C | size: 0x17
.obj str_SFX_ENM_PAKKUN_ATTAC_mri_0002823c, local
	.string "SFX_ENM_PAKKUN_ATTACK1"
.endobj str_SFX_ENM_PAKKUN_ATTAC_mri_0002823c

# .rodata:0x1B3 | 0x7BB3 | size: 0x1
.obj gap_03_00007BB3_rodata, global
.hidden gap_03_00007BB3_rodata
	.byte 0x00
.endobj gap_03_00007BB3_rodata

# .rodata:0x1B4 | 0x7BB4 | size: 0x9
.obj str_PKF_A_1C_mri_00028254, local
	.string "PKF_A_1C"
.endobj str_PKF_A_1C_mri_00028254
	.byte 0x00, 0x00, 0x00

# 0x00038AD0..0x00039C90 | size: 0x11C0
.data
.balign 8

# .data:0x0 | 0x38AD0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x38AD8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x38ADC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x38AE0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x38AE4 | size: 0x4
.obj gap_04_00038AE4_data, global
.hidden gap_04_00038AE4_data
	.4byte 0x00000000
.endobj gap_04_00038AE4_data

# .data:0x18 | 0x38AE8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x38AF0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x38AF4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x38AF8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x38B00 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x38B04 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x38B08 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x38B0C | size: 0x4
.obj gap_04_00038B0C_data, global
.hidden gap_04_00038B0C_data
	.4byte 0x00000000
.endobj gap_04_00038B0C_data

# .data:0x40 | 0x38B10 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x38B18 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x38B1C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x38B20 | size: 0xC4
.obj unit_monochrome_pakkun_18_data_38B20, global
	.4byte 0x00000019
	.4byte str_btl_un_monochrome_pa_mri_000280a0
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
	.4byte str_SFX_ENM_PAKKUN_DAMAG_mri_000280bc
	.4byte str_SFX_BTL_DAMAGE_FIRE1_mri_000280d4
	.4byte str_SFX_BTL_DAMAGE_ICE1_mri_000280ec
	.4byte str_SFX_BTL_DAMAGE_BIRIB_mri_00028100
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_monochrome_pakkun_18_data_38B20

# .data:0x114 | 0x38BE4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x38BE9 | size: 0x3
.obj gap_04_00038BE9_data, global
.hidden gap_04_00038BE9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00038BE9_data

# .data:0x11C | 0x38BEC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x38BF1 | size: 0x3
.obj gap_04_00038BF1_data, global
.hidden gap_04_00038BF1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00038BF1_data

# .data:0x124 | 0x38BF4 | size: 0x16
.obj regist, local
	.4byte 0x6E5A3C64
	.4byte 0x64646450
	.4byte 0x645F645F
	.4byte 0x645F5A1E
	.4byte 0x3C645A64
	.2byte 0x645F
.endobj regist

# .data:0x13A | 0x38C0A | size: 0x2
.obj gap_04_00038C0A_data, global
.hidden gap_04_00038C0A_data
	.2byte 0x0000
.endobj gap_04_00038C0A_data

# .data:0x13C | 0x38C0C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_monochrome_pa_mri_000280a0
	.4byte str_c_pakflwr_t_mri_0002811c
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

# .data:0x188 | 0x38C58 | size: 0xC0
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

# .data:0x248 | 0x38D18 | size: 0xA4
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

# .data:0x2EC | 0x38DBC | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_PKF_N_1_mri_00028128
	.4byte 0x00000002
	.4byte str_PKF_Y_1_mri_00028130
	.4byte 0x00000009
	.4byte str_PKF_Y_1_mri_00028130
	.4byte 0x00000005
	.4byte str_PKF_K_1_mri_00028138
	.4byte 0x00000004
	.4byte str_PKF_X_1_mri_00028140
	.4byte 0x00000003
	.4byte str_PKF_X_1_mri_00028140
	.4byte 0x0000001C
	.4byte str_PKF_S_1_mri_00028148
	.4byte 0x0000001D
	.4byte str_PKF_Q_1_mri_00028150
	.4byte 0x0000001E
	.4byte str_PKF_Q_1_mri_00028150
	.4byte 0x0000001F
	.4byte str_PKF_S_2_mri_00028158
	.4byte 0x00000027
	.4byte str_PKF_D_1_mri_00028160
	.4byte 0x00000032
	.4byte str_PKF_A_1B_mri_00028168
	.4byte 0x00000028
	.4byte str_PKF_S_1_mri_00028148
	.4byte 0x0000002A
	.4byte str_PKF_S_1_mri_00028148
	.4byte 0x00000038
	.4byte str_PKF_X_1_mri_00028140
	.4byte 0x00000039
	.4byte str_PKF_X_1_mri_00028140
	.4byte 0x00000041
	.4byte str_PKF_T_1_mri_00028174
	.4byte 0x00000045
	.4byte str_PKF_S_1_mri_00028148
.endobj pose_table

# .data:0x37C | 0x38E4C | size: 0x90
.obj pose_table_ceil, local
	.4byte 0x00000001
	.4byte str_PKF_N_2_mri_0002817c
	.4byte 0x00000002
	.4byte str_PKF_Y_2_mri_00028184
	.4byte 0x00000009
	.4byte str_PKF_Y_2_mri_00028184
	.4byte 0x00000005
	.4byte str_PKF_K_2_mri_0002818c
	.4byte 0x00000004
	.4byte str_PKF_X_2_mri_00028194
	.4byte 0x00000003
	.4byte str_PKF_X_2_mri_00028194
	.4byte 0x0000001C
	.4byte str_PKF_S_3_mri_0002819c
	.4byte 0x0000001D
	.4byte str_PKF_Q_2_mri_000281a4
	.4byte 0x0000001E
	.4byte str_PKF_Q_2_mri_000281a4
	.4byte 0x0000001F
	.4byte str_PKF_S_4_mri_000281ac
	.4byte 0x00000027
	.4byte str_PKF_D_2_mri_000281b4
	.4byte 0x00000032
	.4byte str_PKF_A_5_mri_000281bc
	.4byte 0x00000028
	.4byte str_PKF_S_3_mri_0002819c
	.4byte 0x0000002A
	.4byte str_PKF_S_3_mri_0002819c
	.4byte 0x00000038
	.4byte str_PKF_X_2_mri_00028194
	.4byte 0x00000039
	.4byte str_PKF_X_2_mri_00028194
	.4byte 0x00000041
	.4byte str_PKF_S_3_mri_0002819c
	.4byte 0x00000045
	.4byte str_PKF_S_3_mri_0002819c
.endobj pose_table_ceil

# .data:0x40C | 0x38EDC | size: 0x78
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

# .data:0x484 | 0x38F54 | size: 0x7C
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

# .data:0x500 | 0x38FD0 | size: 0x11C
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
	.4byte str_PKF_S_1_mri_00028148
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
	.4byte zero_mri_000281d0
	.4byte str_toge_flush_mri_000281d4
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

# .data:0x61C | 0x390EC | size: 0x28
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

# .data:0x644 | 0x39114 | size: 0x78
.obj counter_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_D_1_mri_00028160
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

# .data:0x6BC | 0x3918C | size: 0x20C
.obj ceil_fall_ready_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_mri_000281e0
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
	.4byte str_PKF_E_4_mri_000281f8
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_mri_00028200
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
	.4byte str_PKF_E_1_mri_00028218
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
	.4byte str_PKF_S_1_mri_00028148
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ceil_fall_ready_event

# .data:0x8C8 | 0x39398 | size: 0x400
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
	.4byte str_SFX_ENM_PAKKUN_MOVE1_mri_000281e0
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
	.4byte str_PKF_E_2_mri_00028220
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_mri_00028200
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
	.4byte str_PKF_E_1_mri_00028218
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
	.4byte str_PKF_S_1_mri_00028148
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_mri_00028200
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
	.4byte str_PKF_E_3_mri_00028228
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
	.4byte str_PKF_S_3_mri_0002819c
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj return_event

# .data:0xCC8 | 0x39798 | size: 0x4DC
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
	.4byte str_SFX_ENM_PAKKUN_MOVE1_mri_000281e0
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
	.4byte str_PKF_E_2_mri_00028220
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_4_mri_000281f8
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_mri_00028200
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
	.4byte str_PKF_E_1_mri_00028218
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1A_mri_00028230
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_ATTAC_mri_0002823c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1B_mri_00028168
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1C_mri_00028254
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

# .data:0x11A4 | 0x39C74 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x11BC | 0x39C8C | size: 0x4
.obj gap_04_00039C8C_data, global
.hidden gap_04_00039C8C_data
	.4byte 0x00000000
.endobj gap_04_00039C8C_data
