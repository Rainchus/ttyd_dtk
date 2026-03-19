.include "macros.inc"
.file "unit_boss_gesso.o"

# 0x000054C8..0x000055D8 | size: 0x110
.text
.balign 4

# .text:0x0 | 0x54C8 | size: 0x110
.fn _ikasumi_effect, local
/* 000054C8 0000558C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000054CC 00005590  7C 08 02 A6 */	mflr r0
/* 000054D0 00005594  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000054D4 00005598  90 01 00 34 */	stw r0, 0x34(r1)
/* 000054D8 0000559C  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 000054DC 000055A0  7C 7D 1B 78 */	mr r29, r3
/* 000054E0 000055A4  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 000054E4 000055A8  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 000054E8 000055AC  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000054EC 000055B0  4B FF AC 5D */	bl evtGetValue
/* 000054F0 000055B4  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 000054F4 000055B8  7C 7E 1B 78 */	mr r30, r3
/* 000054F8 000055BC  7F A3 EB 78 */	mr r3, r29
/* 000054FC 000055C0  4B FF AC 4D */	bl evtGetValue
/* 00005500 000055C4  7C 60 1B 78 */	mr r0, r3
/* 00005504 000055C8  7F A3 EB 78 */	mr r3, r29
/* 00005508 000055CC  7C 1D 03 78 */	mr r29, r0
/* 0000550C 000055D0  7F C4 F3 78 */	mr r4, r30
/* 00005510 000055D4  4B FF AC 39 */	bl BattleTransID
/* 00005514 000055D8  7C 64 1B 78 */	mr r4, r3
/* 00005518 000055DC  7F E3 FB 78 */	mr r3, r31
/* 0000551C 000055E0  4B FF AC 2D */	bl BattleGetUnitPtr
/* 00005520 000055E4  38 A1 00 0C */	addi r5, r1, 0xc
/* 00005524 000055E8  38 C1 00 10 */	addi r6, r1, 0x10
/* 00005528 000055EC  38 81 00 08 */	addi r4, r1, 0x8
/* 0000552C 000055F0  4B FF AC 1D */	bl BtlUnit_GetPos
/* 00005530 000055F4  3C 60 00 00 */	lis r3, float_95_tik_0000b344@ha
/* 00005534 000055F8  3C 80 00 00 */	lis r4, float_75_tik_0000b348@ha
/* 00005538 000055FC  38 A3 00 00 */	addi r5, r3, float_95_tik_0000b344@l
/* 0000553C 00005600  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 00005540 00005604  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00005544 00005608  38 C4 00 00 */	addi r6, r4, float_75_tik_0000b348@l
/* 00005548 0000560C  3C 60 00 00 */	lis r3, float_2_tik_0000b34c@ha
/* 0000554C 00005610  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 00005550 00005614  EC 21 00 28 */	fsubs f1, f1, f0
/* 00005554 00005618  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 00005558 0000561C  38 A3 00 00 */	addi r5, r3, float_2_tik_0000b34c@l
/* 0000555C 00005620  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 00005560 00005624  EC 42 00 2A */	fadds f2, f2, f0
/* 00005564 00005628  C0 85 00 00 */	lfs f4, 0x0(r5)
/* 00005568 0000562C  D0 21 00 08 */	stfs f1, 0x8(r1)
/* 0000556C 00005630  7F A4 EB 78 */	mr r4, r29
/* 00005570 00005634  38 60 00 00 */	li r3, 0x0
/* 00005574 00005638  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 00005578 0000563C  4B FF AB D1 */	bl effOpukuJetwN64Entry
/* 0000557C 00005640  3C A0 00 00 */	lis r5, float_135_tik_0000b350@ha
/* 00005580 00005644  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00005584 00005648  C0 05 00 00 */	lfs f0, float_135_tik_0000b350@l(r5)
/* 00005588 0000564C  38 00 00 00 */	li r0, 0x0
/* 0000558C 00005650  D0 04 00 38 */	stfs f0, 0x38(r4)
/* 00005590 00005654  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00005594 00005658  90 04 00 18 */	stw r0, 0x18(r4)
/* 00005598 0000565C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0000559C 00005660  90 04 00 1C */	stw r0, 0x1c(r4)
/* 000055A0 00005664  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000055A4 00005668  90 04 00 20 */	stw r0, 0x20(r4)
/* 000055A8 0000566C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000055AC 00005670  90 04 00 28 */	stw r0, 0x28(r4)
/* 000055B0 00005674  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000055B4 00005678  90 04 00 2C */	stw r0, 0x2c(r4)
/* 000055B8 0000567C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000055BC 00005680  38 60 00 02 */	li r3, 0x2
/* 000055C0 00005684  90 04 00 30 */	stw r0, 0x30(r4)
/* 000055C4 00005688  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 000055C8 0000568C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000055CC 00005690  7C 08 03 A6 */	mtlr r0
/* 000055D0 00005694  38 21 00 30 */	addi r1, r1, 0x30
/* 000055D4 00005698  4E 80 00 20 */	blr
.endfn _ikasumi_effect

# 0x00003248..0x000034F0 | size: 0x2A8
.rodata
.balign 8

# .rodata:0x0 | 0x3248 | size: 0xD
.obj str_btl_un_gesso_tik_0000b0b0, local
	.string "btl_un_gesso"
.endobj str_btl_un_gesso_tik_0000b0b0

# .rodata:0xD | 0x3255 | size: 0x3
.obj gap_03_00003255_rodata, global
.hidden gap_03_00003255_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003255_rodata

# .rodata:0x10 | 0x3258 | size: 0x18
.obj str_SFX_BOSS_GESSO_DAMAG_tik_0000b0c0, local
	.string "SFX_BOSS_GESSO_DAMAGED1"
.endobj str_SFX_BOSS_GESSO_DAMAG_tik_0000b0c0

# .rodata:0x28 | 0x3270 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tik_0000b0d8, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tik_0000b0d8

# .rodata:0x3D | 0x3285 | size: 0x3
.obj gap_03_00003285_rodata, global
.hidden gap_03_00003285_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003285_rodata

# .rodata:0x40 | 0x3288 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tik_0000b0f0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tik_0000b0f0

# .rodata:0x54 | 0x329C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tik_0000b104, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tik_0000b104

# .rodata:0x6D | 0x32B5 | size: 0x3
.obj gap_03_000032B5_rodata, global
.hidden gap_03_000032B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000032B5_rodata

# .rodata:0x70 | 0x32B8 | size: 0x9
.obj str_GSO_N2_1_tik_0000b120, local
	.string "GSO_N2_1"
.endobj str_GSO_N2_1_tik_0000b120

# .rodata:0x79 | 0x32C1 | size: 0x3
.obj gap_03_000032C1_rodata, global
.hidden gap_03_000032C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000032C1_rodata

# .rodata:0x7C | 0x32C4 | size: 0x9
.obj vec3_tik_0000b12c, local
	.string "GSO_D2_2"
.endobj vec3_tik_0000b12c

# .rodata:0x85 | 0x32CD | size: 0x3
.obj gap_03_000032CD_rodata, global
.hidden gap_03_000032CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000032CD_rodata

# .rodata:0x88 | 0x32D0 | size: 0x9
.obj str_GSO_K2_1_tik_0000b138, local
	.string "GSO_K2_1"
.endobj str_GSO_K2_1_tik_0000b138

# .rodata:0x91 | 0x32D9 | size: 0x3
.obj gap_03_000032D9_rodata, global
.hidden gap_03_000032D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000032D9_rodata

# .rodata:0x94 | 0x32DC | size: 0x9
.obj str_GSO_X2_1_tik_0000b144, local
	.string "GSO_X2_1"
.endobj str_GSO_X2_1_tik_0000b144

# .rodata:0x9D | 0x32E5 | size: 0x3
.obj gap_03_000032E5_rodata, global
.hidden gap_03_000032E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000032E5_rodata

# .rodata:0xA0 | 0x32E8 | size: 0x9
.obj str_GSO_S2_1_tik_0000b150, local
	.string "GSO_S2_1"
.endobj str_GSO_S2_1_tik_0000b150

# .rodata:0xA9 | 0x32F1 | size: 0x3
.obj gap_03_000032F1_rodata, global
.hidden gap_03_000032F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000032F1_rodata

# .rodata:0xAC | 0x32F4 | size: 0x9
.obj str_GSO_Q2_1_tik_0000b15c, local
	.string "GSO_Q2_1"
.endobj str_GSO_Q2_1_tik_0000b15c

# .rodata:0xB5 | 0x32FD | size: 0x3
.obj gap_03_000032FD_rodata, global
.hidden gap_03_000032FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000032FD_rodata

# .rodata:0xB8 | 0x3300 | size: 0x9
.obj vec3_tik_0000b168, local
	.string "GSO_D2_1"
.endobj vec3_tik_0000b168

# .rodata:0xC1 | 0x3309 | size: 0x3
.obj gap_03_00003309_rodata, global
.hidden gap_03_00003309_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003309_rodata

# .rodata:0xC4 | 0x330C | size: 0x9
.obj str_GSO_N1_1_tik_0000b174, local
	.string "GSO_N1_1"
.endobj str_GSO_N1_1_tik_0000b174

# .rodata:0xCD | 0x3315 | size: 0x3
.obj gap_03_00003315_rodata, global
.hidden gap_03_00003315_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003315_rodata

# .rodata:0xD0 | 0x3318 | size: 0x9
.obj vec3_tik_0000b180, local
	.string "GSO_D1_3"
.endobj vec3_tik_0000b180

# .rodata:0xD9 | 0x3321 | size: 0x3
.obj gap_03_00003321_rodata, global
.hidden gap_03_00003321_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003321_rodata

# .rodata:0xDC | 0x3324 | size: 0x9
.obj str_GSO_K1_1_tik_0000b18c, local
	.string "GSO_K1_1"
.endobj str_GSO_K1_1_tik_0000b18c

# .rodata:0xE5 | 0x332D | size: 0x3
.obj gap_03_0000332D_rodata, global
.hidden gap_03_0000332D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000332D_rodata

# .rodata:0xE8 | 0x3330 | size: 0x9
.obj str_GSO_X1_1_tik_0000b198, local
	.string "GSO_X1_1"
.endobj str_GSO_X1_1_tik_0000b198

# .rodata:0xF1 | 0x3339 | size: 0x3
.obj gap_03_00003339_rodata, global
.hidden gap_03_00003339_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003339_rodata

# .rodata:0xF4 | 0x333C | size: 0x9
.obj str_GSO_S1_1_tik_0000b1a4, local
	.string "GSO_S1_1"
.endobj str_GSO_S1_1_tik_0000b1a4

# .rodata:0xFD | 0x3345 | size: 0x3
.obj gap_03_00003345_rodata, global
.hidden gap_03_00003345_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003345_rodata

# .rodata:0x100 | 0x3348 | size: 0x9
.obj str_GSO_Q1_2_tik_0000b1b0, local
	.string "GSO_Q1_2"
.endobj str_GSO_Q1_2_tik_0000b1b0

# .rodata:0x109 | 0x3351 | size: 0x3
.obj gap_03_00003351_rodata, global
.hidden gap_03_00003351_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003351_rodata

# .rodata:0x10C | 0x3354 | size: 0x9
.obj vec3_tik_0000b1bc, local
	.string "GSO_D1_2"
.endobj vec3_tik_0000b1bc

# .rodata:0x115 | 0x335D | size: 0x3
.obj gap_03_0000335D_rodata, global
.hidden gap_03_0000335D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000335D_rodata

# .rodata:0x118 | 0x3360 | size: 0x9
.obj str_GSO_N3_1_tik_0000b1c8, local
	.string "GSO_N3_1"
.endobj str_GSO_N3_1_tik_0000b1c8

# .rodata:0x121 | 0x3369 | size: 0x3
.obj gap_03_00003369_rodata, global
.hidden gap_03_00003369_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003369_rodata

# .rodata:0x124 | 0x336C | size: 0x9
.obj vec3_tik_0000b1d4, local
	.string "GSO_D3_2"
.endobj vec3_tik_0000b1d4

# .rodata:0x12D | 0x3375 | size: 0x3
.obj gap_03_00003375_rodata, global
.hidden gap_03_00003375_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003375_rodata

# .rodata:0x130 | 0x3378 | size: 0x9
.obj str_GSO_K3_1_tik_0000b1e0, local
	.string "GSO_K3_1"
.endobj str_GSO_K3_1_tik_0000b1e0

# .rodata:0x139 | 0x3381 | size: 0x3
.obj gap_03_00003381_rodata, global
.hidden gap_03_00003381_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003381_rodata

# .rodata:0x13C | 0x3384 | size: 0x8
.obj str_GSO_V_1_tik_0000b1ec, local
	.string "GSO_V_1"
.endobj str_GSO_V_1_tik_0000b1ec

# .rodata:0x144 | 0x338C | size: 0x9
.obj vec3_tik_0000b1f4, local
	.string "GSO_D3_1"
.endobj vec3_tik_0000b1f4

# .rodata:0x14D | 0x3395 | size: 0x3
.obj gap_03_00003395_rodata, global
.hidden gap_03_00003395_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003395_rodata

# .rodata:0x150 | 0x3398 | size: 0x8
.obj str_c_gesso_tik_0000b200, local
	.string "c_gesso"
.endobj str_c_gesso_tik_0000b200

# .rodata:0x158 | 0x33A0 | size: 0x17
.obj str_SFX_BOSS_GESSO_APPEA_tik_0000b208, local
	.string "SFX_BOSS_GESSO_APPEAR1"
.endobj str_SFX_BOSS_GESSO_APPEA_tik_0000b208

# .rodata:0x16F | 0x33B7 | size: 0x1
.obj gap_03_000033B7_rodata, global
.hidden gap_03_000033B7_rodata
	.byte 0x00
.endobj gap_03_000033B7_rodata

# .rodata:0x170 | 0x33B8 | size: 0x8
.obj str_GSO_F_4_tik_0000b220, local
	.string "GSO_F_4"
.endobj str_GSO_F_4_tik_0000b220

# .rodata:0x178 | 0x33C0 | size: 0x9
.obj str_GSO_X1_2_tik_0000b228, local
	.string "GSO_X1_2"
.endobj str_GSO_X1_2_tik_0000b228

# .rodata:0x181 | 0x33C9 | size: 0x3
.obj gap_03_000033C9_rodata, global
.hidden gap_03_000033C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000033C9_rodata

# .rodata:0x184 | 0x33CC | size: 0xD
.obj str_tik_02_gs_01_tik_0000b234, local
	.string "tik_02_gs_01"
.endobj str_tik_02_gs_01_tik_0000b234

# .rodata:0x191 | 0x33D9 | size: 0x3
.obj gap_03_000033D9_rodata, global
.hidden gap_03_000033D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000033D9_rodata

# .rodata:0x194 | 0x33DC | size: 0x14
.obj str_SFX_CONDITION_FIND1_tik_0000b244, local
	.string "SFX_CONDITION_FIND1"
.endobj str_SFX_CONDITION_FIND1_tik_0000b244

# .rodata:0x1A8 | 0x33F0 | size: 0x1
.obj zero_tik_0000b258, local
	.byte 0x00
.endobj zero_tik_0000b258

# .rodata:0x1A9 | 0x33F1 | size: 0x3
.obj gap_03_000033F1_rodata, global
.hidden gap_03_000033F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000033F1_rodata

# .rodata:0x1AC | 0x33F4 | size: 0xD
.obj str_tik_02_gs_02_tik_0000b25c, local
	.string "tik_02_gs_02"
.endobj str_tik_02_gs_02_tik_0000b25c

# .rodata:0x1B9 | 0x3401 | size: 0x3
.obj gap_03_00003401_rodata, global
.hidden gap_03_00003401_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003401_rodata

# .rodata:0x1BC | 0x3404 | size: 0x1B
.obj str_SFX_BOSS_GESSO_ARM_A_tik_0000b26c, local
	.string "SFX_BOSS_GESSO_ARM_APPEAR1"
.endobj str_SFX_BOSS_GESSO_ARM_A_tik_0000b26c

# .rodata:0x1D7 | 0x341F | size: 0x1
.obj gap_03_0000341F_rodata, global
.hidden gap_03_0000341F_rodata
	.byte 0x00
.endobj gap_03_0000341F_rodata

# .rodata:0x1D8 | 0x3420 | size: 0x9
.obj str_GSO_F2_1_tik_0000b288, local
	.string "GSO_F2_1"
.endobj str_GSO_F2_1_tik_0000b288

# .rodata:0x1E1 | 0x3429 | size: 0x3
.obj gap_03_00003429_rodata, global
.hidden gap_03_00003429_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003429_rodata

# .rodata:0x1E4 | 0x342C | size: 0xD
.obj str_tik_02_gs_03_tik_0000b294, local
	.string "tik_02_gs_03"
.endobj str_tik_02_gs_03_tik_0000b294

# .rodata:0x1F1 | 0x3439 | size: 0x3
.obj gap_03_00003439_rodata, global
.hidden gap_03_00003439_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003439_rodata

# .rodata:0x1F4 | 0x343C | size: 0x8
.obj str_PKR_T_1_tik_0000b2a4, local
	.string "PKR_T_1"
.endobj str_PKR_T_1_tik_0000b2a4

# .rodata:0x1FC | 0x3444 | size: 0x8
.obj str_PKR_S_1_tik_0000b2ac, local
	.string "PKR_S_1"
.endobj str_PKR_S_1_tik_0000b2ac

# .rodata:0x204 | 0x344C | size: 0x10
.obj str_tik_02_gs_03_01_tik_0000b2b4, local
	.string "tik_02_gs_03_01"
.endobj str_tik_02_gs_03_01_tik_0000b2b4

# .rodata:0x214 | 0x345C | size: 0x8
.obj str_GSO_U_1_tik_0000b2c4, local
	.string "GSO_U_1"
.endobj str_GSO_U_1_tik_0000b2c4

# .rodata:0x21C | 0x3464 | size: 0x15
.obj str_SFX_BOSS_GESSO_WAKE1_tik_0000b2cc, local
	.string "SFX_BOSS_GESSO_WAKE1"
.endobj str_SFX_BOSS_GESSO_WAKE1_tik_0000b2cc

# .rodata:0x231 | 0x3479 | size: 0x3
.obj gap_03_00003479_rodata, global
.hidden gap_03_00003479_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003479_rodata

# .rodata:0x234 | 0x347C | size: 0x15
.obj str_SFX_BOSS_GESSO_WAKE2_tik_0000b2e4, local
	.string "SFX_BOSS_GESSO_WAKE2"
.endobj str_SFX_BOSS_GESSO_WAKE2_tik_0000b2e4

# .rodata:0x249 | 0x3491 | size: 0x3
.obj gap_03_00003491_rodata, global
.hidden gap_03_00003491_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003491_rodata

# .rodata:0x24C | 0x3494 | size: 0x8
.obj str_GSO_J_1_tik_0000b2fc, local
	.string "GSO_J_1"
.endobj str_GSO_J_1_tik_0000b2fc

# .rodata:0x254 | 0x349C | size: 0x8
.obj str_GSO_J_2_tik_0000b304, local
	.string "GSO_J_2"
.endobj str_GSO_J_2_tik_0000b304

# .rodata:0x25C | 0x34A4 | size: 0x13
.obj str_SFX_BOSS_GESSO_UP1_tik_0000b30c, local
	.string "SFX_BOSS_GESSO_UP1"
.endobj str_SFX_BOSS_GESSO_UP1_tik_0000b30c

# .rodata:0x26F | 0x34B7 | size: 0x1
.obj gap_03_000034B7_rodata, global
.hidden gap_03_000034B7_rodata
	.byte 0x00
.endobj gap_03_000034B7_rodata

# .rodata:0x270 | 0x34B8 | size: 0x9
.obj str_GSO_A2_1_tik_0000b320, local
	.string "GSO_A2_1"
.endobj str_GSO_A2_1_tik_0000b320

# .rodata:0x279 | 0x34C1 | size: 0x3
.obj gap_03_000034C1_rodata, global
.hidden gap_03_000034C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000034C1_rodata

# .rodata:0x27C | 0x34C4 | size: 0x15
.obj str_SFX_BOSS_GESSO_SUMI1_tik_0000b32c, local
	.string "SFX_BOSS_GESSO_SUMI1"
.endobj str_SFX_BOSS_GESSO_SUMI1_tik_0000b32c
	.byte 0x00, 0x00, 0x00

# .rodata:0x294 | 0x34DC | size: 0x4
.obj float_95_tik_0000b344, local
	.float 95
.endobj float_95_tik_0000b344

# .rodata:0x298 | 0x34E0 | size: 0x4
.obj float_75_tik_0000b348, local
	.float 75
.endobj float_75_tik_0000b348

# .rodata:0x29C | 0x34E4 | size: 0x4
.obj float_2_tik_0000b34c, local
	.float 2
.endobj float_2_tik_0000b34c

# .rodata:0x2A0 | 0x34E8 | size: 0x4
.obj float_135_tik_0000b350, local
	.float 135
.endobj float_135_tik_0000b350

# .rodata:0x2A4 | 0x34EC | size: 0x4
.obj gap_03_000034EC_rodata, global
.hidden gap_03_000034EC_rodata
	.4byte 0x00000000
.endobj gap_03_000034EC_rodata

# 0x00016860..0x00018020 | size: 0x17C0
.data
.balign 8

# .data:0x0 | 0x16860 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x16868 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1686C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x16870 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x16874 | size: 0x4
.obj gap_04_00016874_data, global
.hidden gap_04_00016874_data
	.4byte 0x00000000
.endobj gap_04_00016874_data

# .data:0x18 | 0x16878 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x16880 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x16884 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x16888 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x16890 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x16894 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x16898 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1689C | size: 0x4
.obj gap_04_0001689C_data, global
.hidden gap_04_0001689C_data
	.4byte 0x00000000
.endobj gap_04_0001689C_data

# .data:0x40 | 0x168A0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x168A8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x168AC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x168B0 | size: 0xC4
.obj unit_boss_gesso_24_data_168B0, global
	.4byte 0x00000008
	.4byte str_btl_un_gesso_tik_0000b0b0
	.4byte 0x000C0000
	.4byte 0x01012900
	.4byte 0x00640032
	.4byte 0x00090078
	.4byte 0x0078002E
	.4byte 0xFFB50000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005FF51
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42700000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42700000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42700000
	.4byte 0x429C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42F00000
	.4byte 0x00000000
	.4byte 0x42F00000
	.4byte 0x42DC0000
	.4byte 0x0000FF00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_GESSO_DAMAG_tik_0000b0c0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tik_0000b0d8
	.4byte str_SFX_BTL_DAMAGE_ICE1_tik_0000b0f0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tik_0000b104
	.4byte 0x00200000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_gesso_24_data_168B0

# .data:0x114 | 0x16974 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x16979 | size: 0x3
.obj gap_04_00016979_data, global
.hidden gap_04_00016979_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00016979_data

# .data:0x11C | 0x1697C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x16981 | size: 0x3
.obj gap_04_00016981_data, global
.hidden gap_04_00016981_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00016981_data

# .data:0x124 | 0x16984 | size: 0x16
.obj regist, local
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x64646400
	.4byte 0x00646400
	.2byte 0x0000
.endobj regist

# .data:0x13A | 0x1699A | size: 0x2
.obj gap_04_0001699A_data, global
.hidden gap_04_0001699A_data
	.2byte 0x0000
.endobj gap_04_0001699A_data

# .data:0x13C | 0x1699C | size: 0x5
.obj defence_ceil, local
	.4byte 0x02020202
	.byte 0x02
.endobj defence_ceil

# .data:0x141 | 0x169A1 | size: 0x3
.obj gap_04_000169A1_data, global
.hidden gap_04_000169A1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000169A1_data

# .data:0x144 | 0x169A4 | size: 0x5
.obj defence_attr_ceil, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_ceil

# .data:0x149 | 0x169A9 | size: 0x3
.obj gap_04_000169A9_data, global
.hidden gap_04_000169A9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000169A9_data

# .data:0x14C | 0x169AC | size: 0x16
.obj regist_ceil, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist_ceil

# .data:0x162 | 0x169C2 | size: 0x2
.obj gap_04_000169C2_data, global
.hidden gap_04_000169C2_data
	.2byte 0x0000
.endobj gap_04_000169C2_data

# .data:0x164 | 0x169C4 | size: 0x5
.obj R_defence_turn_24_data_169C4, global
	.4byte 0x00000000
	.byte 0x00
.endobj R_defence_turn_24_data_169C4

# .data:0x169 | 0x169C9 | size: 0x3
.obj gap_04_000169C9_data, global
.hidden gap_04_000169C9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000169C9_data

# .data:0x16C | 0x169CC | size: 0x5
.obj R_defence_attr_turn_24_data_169CC, global
	.4byte 0x00000000
	.byte 0x00
.endobj R_defence_attr_turn_24_data_169CC

# .data:0x171 | 0x169D1 | size: 0x3
.obj gap_04_000169D1_data, global
.hidden gap_04_000169D1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000169D1_data

# .data:0x174 | 0x169D4 | size: 0x16
.obj R_regist_turn_24_data_169D4, global
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x64646400
	.4byte 0x00646400
	.2byte 0x0000
.endobj R_regist_turn_24_data_169D4

# .data:0x18A | 0x169EA | size: 0x2
.obj gap_04_000169EA_data, global
.hidden gap_04_000169EA_data
	.2byte 0x0000
.endobj gap_04_000169EA_data

# .data:0x18C | 0x169EC | size: 0x58
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_GSO_N2_1_tik_0000b120
	.4byte 0x00000002
	.4byte vec3_tik_0000b12c
	.4byte 0x00000009
	.4byte vec3_tik_0000b12c
	.4byte 0x00000005
	.4byte str_GSO_K2_1_tik_0000b138
	.4byte 0x00000004
	.4byte str_GSO_X2_1_tik_0000b144
	.4byte 0x00000003
	.4byte str_GSO_K2_1_tik_0000b138
	.4byte 0x0000001C
	.4byte str_GSO_S2_1_tik_0000b150
	.4byte 0x0000001D
	.4byte str_GSO_Q2_1_tik_0000b15c
	.4byte 0x0000001F
	.4byte str_GSO_S2_1_tik_0000b150
	.4byte 0x00000027
	.4byte vec3_tik_0000b168
	.4byte 0x00000045
	.4byte str_GSO_S2_1_tik_0000b150
.endobj pose_table

# .data:0x1E4 | 0x16A44 | size: 0x60
.obj pose_table_ceil, local
	.4byte 0x00000001
	.4byte str_GSO_N1_1_tik_0000b174
	.4byte 0x00000002
	.4byte vec3_tik_0000b180
	.4byte 0x00000009
	.4byte vec3_tik_0000b180
	.4byte 0x00000005
	.4byte str_GSO_K1_1_tik_0000b18c
	.4byte 0x00000004
	.4byte str_GSO_X1_1_tik_0000b198
	.4byte 0x00000003
	.4byte str_GSO_K1_1_tik_0000b18c
	.4byte 0x0000001C
	.4byte str_GSO_S1_1_tik_0000b1a4
	.4byte 0x0000001D
	.4byte str_GSO_Q1_2_tik_0000b1b0
	.4byte 0x0000001F
	.4byte str_GSO_S1_1_tik_0000b1a4
	.4byte 0x00000027
	.4byte vec3_tik_0000b1bc
	.4byte 0x00000041
	.4byte str_GSO_K1_1_tik_0000b18c
	.4byte 0x00000045
	.4byte str_GSO_S1_1_tik_0000b1a4
.endobj pose_table_ceil

# .data:0x244 | 0x16AA4 | size: 0x50
.obj gesso_pose_table_turn_24_data_16AA4, global
	.4byte 0x00000001
	.4byte str_GSO_N3_1_tik_0000b1c8
	.4byte 0x00000002
	.4byte vec3_tik_0000b1d4
	.4byte 0x00000009
	.4byte vec3_tik_0000b1d4
	.4byte 0x00000005
	.4byte str_GSO_K3_1_tik_0000b1e0
	.4byte 0x00000004
	.4byte str_GSO_K3_1_tik_0000b1e0
	.4byte 0x00000003
	.4byte str_GSO_K3_1_tik_0000b1e0
	.4byte 0x0000001C
	.4byte str_GSO_V_1_tik_0000b1ec
	.4byte 0x0000001F
	.4byte vec3_tik_0000b1f4
	.4byte 0x00000027
	.4byte vec3_tik_0000b1f4
	.4byte 0x00000045
	.4byte str_GSO_V_1_tik_0000b1ec
.endobj gesso_pose_table_turn_24_data_16AA4

# .data:0x294 | 0x16AF4 | size: 0x10
.obj data_table, local
	.4byte 0x00000032
	.4byte dead_subevent
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x2A4 | 0x16B04 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_gesso_tik_0000b0b0
	.4byte str_c_gesso_tik_0000b200
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0067FF51
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x2F0 | 0x16B50 | size: 0x4E4
.obj battle_entry_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GESSO_APPEA_tik_0000b208
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GSO_F_4_tik_0000b220
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_GSO_X1_1_tik_0000b198
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_GSO_X1_2_tik_0000b228
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000054
	.4byte 0x000000B1
	.4byte 0x0000022E
	.4byte 0x00000054
	.4byte 0x0000008C
	.4byte 0x0000000A
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_tik_02_gs_01_tik_0000b234
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_CONDITION_FIND1_tik_0000b244
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000002
	.4byte zero_tik_0000b258
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x0000003C
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_tik_02_gs_02_tik_0000b25c
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000003F
	.4byte 0x0000008F
	.4byte 0x00000286
	.4byte 0x0000003F
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_gesso_left_arm_entry_data
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C83
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0x00000140
	.4byte 0x00000006
	.4byte 0x00000035
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0x00000140
	.4byte 0x00000006
	.4byte 0x00000035
	.4byte 0x0001006C
	.4byte 0xFE363C8E
	.4byte 0x00010009
	.4byte 0x00000023
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C83
	.4byte str_SFX_BOSS_GESSO_ARM_A_tik_0000b26c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte str_GSO_F2_1_tik_0000b288
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C83
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C83
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_gesso_right_arm_entry_data
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C83
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0x0000003B
	.4byte 0x000000A6
	.4byte 0xFFFFFFEE
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0x0000003B
	.4byte 0x000000A6
	.4byte 0xFFFFFFEE
	.4byte 0x0001006C
	.4byte 0xFE363C8F
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C83
	.4byte str_SFX_BOSS_GESSO_ARM_A_tik_0000b26c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte str_GSO_F2_1_tik_0000b288
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C83
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C83
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8E
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000054
	.4byte 0x000000B1
	.4byte 0x0000022E
	.4byte 0x00000054
	.4byte 0x0000008C
	.4byte 0x0000000A
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_tik_02_gs_03_tik_0000b294
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFFFFFF8B
	.4byte 0x0000003E
	.4byte 0x0000011C
	.4byte 0xFFFFFF8D
	.4byte 0x0000002B
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFC
	.4byte str_PKR_T_1_tik_0000b2a4
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFC
	.4byte str_PKR_S_1_tik_0000b2ac
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_tik_02_gs_03_01_tik_0000b2b4
	.4byte 0x00000000
	.4byte 0xFFFFFFFC
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFC
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj battle_entry_event

# .data:0x7D4 | 0x17034 | size: 0x1E4
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventPhase
	.4byte 0xFFFFFFFE
	.4byte phase_event
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
	.4byte btldefaultevt_Confuse
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000DC
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_ceil
	.4byte 0x0004005B
	.4byte btlevtcmd_SetHpGaugeOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFFFFFF51
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x0000002E
	.4byte 0xFFFFFFB5
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte 0xFFFFFF86
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte 0xFFFFFF86
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence_ceil
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence_attr_ceil
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFFFFFFFE
	.4byte regist_ceil
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x0000002E
	.4byte 0xFFFFFFB5
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventEntry
	.4byte 0xFFFFFFFE
	.4byte battle_entry_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x9B8 | 0x17218 | size: 0x30
.obj entry_gesso_left_arm_entry_data, local
	.4byte unit_boss_gesso_left_arm_24_data_1C5A0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_gesso_left_arm_entry_data

# .data:0x9E8 | 0x17248 | size: 0x30
.obj entry_gesso_right_arm_entry_data, local
	.4byte unit_boss_gesso_right_arm_24_data_1B540
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_gesso_right_arm_entry_data

# .data:0xA18 | 0x17278 | size: 0x88
.obj damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000400
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0xAA0 | 0x17300 | size: 0x7C4
.obj phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GSO_U_1_tik_0000b2c4
	.4byte 0x0003005B
	.4byte btlevtcmd_ftof
	.4byte 0x0000004B
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GESSO_WAKE1_tik_0000b2cc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftof
	.4byte 0x0000002D
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GESSO_WAKE2_tik_0000b2e4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0004005B
	.4byte btlevtcmd_SetHpGaugeOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x0000002E
	.4byte 0x00000076
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence_attr
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFFFFFFFE
	.4byte regist
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000037
	.4byte 0x00000071
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000005
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_ceil
	.4byte 0x0004005B
	.4byte btlevtcmd_SetHpGaugeOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFFFFFF51
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x0000002E
	.4byte 0xFFFFFFB5
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte 0xFFFFFF86
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte 0xFFFFFF86
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence_ceil
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence_attr_ceil
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFFFFFFFE
	.4byte regist_ceil
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x0000002E
	.4byte 0xFFFFFFB5
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GSO_J_1_tik_0000b2fc
	.4byte 0x00010009
	.4byte 0x00000030
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GSO_J_2_tik_0000b304
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000004B
	.4byte 0x0000002A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x00000031
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GESSO_UP1_tik_0000b30c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000DC
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GESSO_APPEA_tik_0000b208
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GSO_F_4_tik_0000b220
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000014D
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_gesso_left_arm_entry_data
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C83
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0x00000140
	.4byte 0x00000006
	.4byte 0x00000035
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0x00000140
	.4byte 0x00000006
	.4byte 0x00000035
	.4byte 0x0001006C
	.4byte 0xFE363C8E
	.4byte 0x00010009
	.4byte 0x00000023
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C83
	.4byte str_SFX_BOSS_GESSO_ARM_A_tik_0000b26c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte str_GSO_F2_1_tik_0000b288
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C83
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C83
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_gesso_right_arm_entry_data
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C83
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0x0000003B
	.4byte 0x000000A6
	.4byte 0xFFFFFFEE
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0x0000003B
	.4byte 0x000000A6
	.4byte 0xFFFFFFEE
	.4byte 0x0001006C
	.4byte 0xFE363C8F
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C83
	.4byte str_SFX_BOSS_GESSO_ARM_A_tik_0000b26c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte str_GSO_F2_1_tik_0000b288
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C83
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C83
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8E
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8F
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x1264 | 0x17AC4 | size: 0xC0
.obj attack_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
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
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte gesso_ikasumi_attack
	.4byte 0x00000002
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1324 | 0x17B84 | size: 0xC0
.obj weapon_gesso_ikasumi_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000001
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
	.4byte 0x20000000
	.4byte 0x000D0302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x00000004
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
.endobj weapon_gesso_ikasumi_attack

# .data:0x13E4 | 0x17C44 | size: 0x304
.obj gesso_ikasumi_attack, local
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_gesso_ikasumi_attack
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C8C
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C8C
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
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GSO_A2_1_tik_0000b320
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftof
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GESSO_UP1_tik_0000b30c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftof
	.4byte 0x00000037
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GESSO_UP1_tik_0000b30c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_ftof
	.4byte 0x00000078
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_ftof
	.4byte 0x0000005A
	.4byte 0xFE363C87
	.4byte 0x0003005B
	.4byte _ikasumi_effect
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GESSO_SUMI1_tik_0000b32c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x00010009
	.4byte 0xFE363C87
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte btlevtcmd_ftof
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000032
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00020019
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gesso_ikasumi_attack

# .data:0x16E8 | 0x17F48 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1700 | 0x17F60 | size: 0xC0
.obj dead_subevent, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFE363C83
	.4byte 0xFE363C83
	.4byte 0x0001006F
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFE363C83
	.4byte 0xFE363C83
	.4byte 0x0001006F
	.4byte 0xFE363C82
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_subevent
