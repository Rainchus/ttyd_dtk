.include "macros.inc"
.file "mri_16.o"

# 0x00003C80..0x00003D64 | size: 0xE4
.text
.balign 4

# .text:0x0 | 0x3C80 | size: 0x5C
.fn ss_check, local
/* 00003C80 00003D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00003C84 00003D48  7C 08 02 A6 */	mflr r0
/* 00003C88 00003D4C  3C 80 00 00 */	lis r4, ssf@ha
/* 00003C8C 00003D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 00003C90 00003D54  38 A4 00 00 */	addi r5, r4, ssf@l
/* 00003C94 00003D58  3C 00 43 30 */	lis r0, 0x4330
/* 00003C98 00003D5C  3C 80 00 00 */	lis r4, double_to_int_mri_00025398@ha
/* 00003C9C 00003D60  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 00003CA0 00003D64  38 C4 00 00 */	addi r6, r4, double_to_int_mri_00025398@l
/* 00003CA4 00003D68  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00003CA8 00003D6C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 00003CAC 00003D70  90 01 00 08 */	stw r0, 0x8(r1)
/* 00003CB0 00003D74  C8 26 00 00 */	lfd f1, 0x0(r6)
/* 00003CB4 00003D78  90 A1 00 0C */	stw r5, 0xc(r1)
/* 00003CB8 00003D7C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00003CBC 00003D80  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00003CC0 00003D84  EC 20 08 28 */	fsubs f1, f0, f1
/* 00003CC4 00003D88  4B FF C5 95 */	bl evtSetFloat
/* 00003CC8 00003D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00003CCC 00003D90  38 60 00 02 */	li r3, 0x2
/* 00003CD0 00003D94  7C 08 03 A6 */	mtlr r0
/* 00003CD4 00003D98  38 21 00 10 */	addi r1, r1, 0x10
/* 00003CD8 00003D9C  4E 80 00 20 */	blr
.endfn ss_check

# .text:0x5C | 0x3CDC | size: 0x34
.fn ss_set, local
/* 00003CDC 00003DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00003CE0 00003DA4  7C 08 02 A6 */	mflr r0
/* 00003CE4 00003DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00003CE8 00003DAC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00003CEC 00003DB0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00003CF0 00003DB4  4B FF C5 69 */	bl evtGetValue
/* 00003CF4 00003DB8  3C 80 00 00 */	lis r4, ssf@ha
/* 00003CF8 00003DBC  90 64 00 00 */	stw r3, ssf@l(r4)
/* 00003CFC 00003DC0  38 60 00 02 */	li r3, 0x2
/* 00003D00 00003DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00003D04 00003DC8  7C 08 03 A6 */	mtlr r0
/* 00003D08 00003DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 00003D0C 00003DD0  4E 80 00 20 */	blr
.endfn ss_set

# .text:0x90 | 0x3D10 | size: 0x54
.fn puni_get_id, local
/* 00003D10 00003DD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00003D14 00003DD8  7C 08 02 A6 */	mflr r0
/* 00003D18 00003DDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 00003D1C 00003DE0  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00003D20 00003DE4  7C 7D 1B 78 */	mr r29, r3
/* 00003D24 00003DE8  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00003D28 00003DEC  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00003D2C 00003DF0  4B FF C5 2D */	bl evtGetValue
/* 00003D30 00003DF4  1F E3 05 A8 */	mulli r31, r3, 0x5a8
/* 00003D34 00003DF8  48 00 13 69 */	bl puniGetPunidat_18_text_509C
/* 00003D38 00003DFC  7C 63 FA 14 */	add r3, r3, r31
/* 00003D3C 00003E00  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00003D40 00003E04  A8 A3 01 16 */	lha r5, 0x116(r3)
/* 00003D44 00003E08  7F A3 EB 78 */	mr r3, r29
/* 00003D48 00003E0C  4B FF C5 11 */	bl evtSetValue
/* 00003D4C 00003E10  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00003D50 00003E14  38 60 00 02 */	li r3, 0x2
/* 00003D54 00003E18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00003D58 00003E1C  7C 08 03 A6 */	mtlr r0
/* 00003D5C 00003E20  38 21 00 20 */	addi r1, r1, 0x20
/* 00003D60 00003E24  4E 80 00 20 */	blr
.endfn puni_get_id

# 0x00004CF8..0x00004FE0 | size: 0x2E8
.rodata
.balign 8

# .rodata:0x0 | 0x4CF8 | size: 0x8
.obj double_to_int_mri_00025398, local
	.double 4503601774854144
.endobj double_to_int_mri_00025398

# .rodata:0x8 | 0x4D00 | size: 0x7
.obj str_dokan1_mri_000253a0, local
	.string "dokan1"
.endobj str_dokan1_mri_000253a0

# .rodata:0xF | 0x4D07 | size: 0x1
.obj gap_03_00004D07_rodata, global
.hidden gap_03_00004D07_rodata
	.byte 0x00
.endobj gap_03_00004D07_rodata

# .rodata:0x10 | 0x4D08 | size: 0x7
.obj str_dokan4_mri_000253a8, local
	.string "dokan4"
.endobj str_dokan4_mri_000253a8

# .rodata:0x17 | 0x4D0F | size: 0x1
.obj gap_03_00004D0F_rodata, global
.hidden gap_03_00004D0F_rodata
	.byte 0x00
.endobj gap_03_00004D0F_rodata

# .rodata:0x18 | 0x4D10 | size: 0x7
.obj str_dokan2_mri_000253b0, local
	.string "dokan2"
.endobj str_dokan2_mri_000253b0

# .rodata:0x1F | 0x4D17 | size: 0x1
.obj gap_03_00004D17_rodata, global
.hidden gap_03_00004D17_rodata
	.byte 0x00
.endobj gap_03_00004D17_rodata

# .rodata:0x20 | 0x4D18 | size: 0x7
.obj str_mri_18_mri_000253b8, local
	.string "mri_18"
.endobj str_mri_18_mri_000253b8

# .rodata:0x27 | 0x4D1F | size: 0x1
.obj gap_03_00004D1F_rodata, global
.hidden gap_03_00004D1F_rodata
	.byte 0x00
.endobj gap_03_00004D1F_rodata

# .rodata:0x28 | 0x4D20 | size: 0x7
.obj str_dokan3_mri_000253c0, local
	.string "dokan3"
.endobj str_dokan3_mri_000253c0

# .rodata:0x2F | 0x4D27 | size: 0x1
.obj gap_03_00004D27_rodata, global
.hidden gap_03_00004D27_rodata
	.byte 0x00
.endobj gap_03_00004D27_rodata

# .rodata:0x30 | 0x4D28 | size: 0x7
.obj str_dokan6_mri_000253c8, local
	.string "dokan6"
.endobj str_dokan6_mri_000253c8

# .rodata:0x37 | 0x4D2F | size: 0x1
.obj gap_03_00004D2F_rodata, global
.hidden gap_03_00004D2F_rodata
	.byte 0x00
.endobj gap_03_00004D2F_rodata

# .rodata:0x38 | 0x4D30 | size: 0x7
.obj str_dokan7_mri_000253d0, local
	.string "dokan7"
.endobj str_dokan7_mri_000253d0

# .rodata:0x3F | 0x4D37 | size: 0x1
.obj gap_03_00004D37_rodata, global
.hidden gap_03_00004D37_rodata
	.byte 0x00
.endobj gap_03_00004D37_rodata

# .rodata:0x40 | 0x4D38 | size: 0x7
.obj str_mri_13_mri_000253d8, local
	.string "mri_13"
.endobj str_mri_13_mri_000253d8

# .rodata:0x47 | 0x4D3F | size: 0x1
.obj gap_03_00004D3F_rodata, global
.hidden gap_03_00004D3F_rodata
	.byte 0x00
.endobj gap_03_00004D3F_rodata

# .rodata:0x48 | 0x4D40 | size: 0x6
.obj str_dokan_mri_000253e0, local
	.string "dokan"
.endobj str_dokan_mri_000253e0

# .rodata:0x4E | 0x4D46 | size: 0x2
.obj gap_03_00004D46_rodata, global
.hidden gap_03_00004D46_rodata
	.2byte 0x0000
.endobj gap_03_00004D46_rodata

# .rodata:0x50 | 0x4D48 | size: 0xD
.obj str_A_f1_rak_l03_mri_000253e8, local
	.string "A_f1_rak_l03"
.endobj str_A_f1_rak_l03_mri_000253e8

# .rodata:0x5D | 0x4D55 | size: 0x3
.obj gap_03_00004D55_rodata, global
.hidden gap_03_00004D55_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004D55_rodata

# .rodata:0x60 | 0x4D58 | size: 0xE
.obj str_S_mizu_before_mri_000253f8, local
	.string "S_mizu_before"
.endobj str_S_mizu_before_mri_000253f8

# .rodata:0x6E | 0x4D66 | size: 0x2
.obj gap_03_00004D66_rodata, global
.hidden gap_03_00004D66_rodata
	.2byte 0x0000
.endobj gap_03_00004D66_rodata

# .rodata:0x70 | 0x4D68 | size: 0xB
.obj str_S_mizu_now_mri_00025408, local
	.string "S_mizu_now"
.endobj str_S_mizu_now_mri_00025408

# .rodata:0x7B | 0x4D73 | size: 0x1
.obj gap_03_00004D73_rodata, global
.hidden gap_03_00004D73_rodata
	.byte 0x00
.endobj gap_03_00004D73_rodata

# .rodata:0x7C | 0x4D74 | size: 0x10
.obj str_SFX_STG2_QUAKE1_mri_00025414, local
	.string "SFX_STG2_QUAKE1"
.endobj str_SFX_STG2_QUAKE1_mri_00025414

# .rodata:0x8C | 0x4D84 | size: 0x15
.obj str_SFX_STG2_WATER_FLOW1_mri_00025424, local
	.string "SFX_STG2_WATER_FLOW1"
.endobj str_SFX_STG2_WATER_FLOW1_mri_00025424

# .rodata:0xA1 | 0x4D99 | size: 0x3
.obj gap_03_00004D99_rodata, global
.hidden gap_03_00004D99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004D99_rodata

# .rodata:0xA4 | 0x4D9C | size: 0xA
.obj str_mizu_guru_mri_0002543c, local
	.string "mizu_guru"
.endobj str_mizu_guru_mri_0002543c

# .rodata:0xAE | 0x4DA6 | size: 0x2
.obj gap_03_00004DA6_rodata, global
.hidden gap_03_00004DA6_rodata
	.2byte 0x0000
.endobj gap_03_00004DA6_rodata

# .rodata:0xB0 | 0x4DA8 | size: 0x14
.obj str_BGM_FF_ENV_SUCCESS1_mri_00025448, local
	.string "BGM_FF_ENV_SUCCESS1"
.endobj str_BGM_FF_ENV_SUCCESS1_mri_00025448

# .rodata:0xC4 | 0x4DBC | size: 0xD
.obj str_S_mizu_after_mri_0002545c, local
	.string "S_mizu_after"
.endobj str_S_mizu_after_mri_0002545c

# .rodata:0xD1 | 0x4DC9 | size: 0x3
.obj gap_03_00004DC9_rodata, global
.hidden gap_03_00004DC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DC9_rodata

# .rodata:0xD4 | 0x4DCC | size: 0xD
.obj str_A_mizu_after_mri_0002546c, local
	.string "A_mizu_after"
.endobj str_A_mizu_after_mri_0002546c

# .rodata:0xE1 | 0x4DD9 | size: 0x3
.obj gap_03_00004DD9_rodata, global
.hidden gap_03_00004DD9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DD9_rodata

# .rodata:0xE4 | 0x4DDC | size: 0xC
.obj str_A_f2_kaidan_mri_0002547c, local
	.string "A_f2_kaidan"
.endobj str_A_f2_kaidan_mri_0002547c

# .rodata:0xF0 | 0x4DE8 | size: 0xD
.obj str_A_f2_kai_rak_mri_00025488, local
	.string "A_f2_kai_rak"
.endobj str_A_f2_kai_rak_mri_00025488

# .rodata:0xFD | 0x4DF5 | size: 0x3
.obj gap_03_00004DF5_rodata, global
.hidden gap_03_00004DF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DF5_rodata

# .rodata:0x100 | 0x4DF8 | size: 0xD
.obj str_A_f2_rak_ana_mri_00025498, local
	.string "A_f2_rak_ana"
.endobj str_A_f2_rak_ana_mri_00025498

# .rodata:0x10D | 0x4E05 | size: 0x3
.obj gap_03_00004E05_rodata, global
.hidden gap_03_00004E05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E05_rodata

# .rodata:0x110 | 0x4E08 | size: 0x11
.obj str_A_f1_rak_mkusa01_mri_000254a8, local
	.string "A_f1_rak_mkusa01"
.endobj str_A_f1_rak_mkusa01_mri_000254a8

# .rodata:0x121 | 0x4E19 | size: 0x3
.obj gap_03_00004E19_rodata, global
.hidden gap_03_00004E19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E19_rodata

# .rodata:0x124 | 0x4E1C | size: 0x9
.obj str_A_isk_03_mri_000254bc, local
	.string "A_isk_03"
.endobj str_A_isk_03_mri_000254bc

# .rodata:0x12D | 0x4E25 | size: 0x3
.obj gap_03_00004E25_rodata, global
.hidden gap_03_00004E25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E25_rodata

# .rodata:0x130 | 0x4E28 | size: 0x11
.obj str_A_f1_rak_mkusa02_mri_000254c8, local
	.string "A_f1_rak_mkusa02"
.endobj str_A_f1_rak_mkusa02_mri_000254c8

# .rodata:0x141 | 0x4E39 | size: 0x3
.obj gap_03_00004E39_rodata, global
.hidden gap_03_00004E39_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E39_rodata

# .rodata:0x144 | 0x4E3C | size: 0x11
.obj str_A_f1_rak_mkusa03_mri_000254dc, local
	.string "A_f1_rak_mkusa03"
.endobj str_A_f1_rak_mkusa03_mri_000254dc

# .rodata:0x155 | 0x4E4D | size: 0x3
.obj gap_03_00004E4D_rodata, global
.hidden gap_03_00004E4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E4D_rodata

# .rodata:0x158 | 0x4E50 | size: 0x11
.obj str_A_f1_rak_mkusa04_mri_000254f0, local
	.string "A_f1_rak_mkusa04"
.endobj str_A_f1_rak_mkusa04_mri_000254f0

# .rodata:0x169 | 0x4E61 | size: 0x3
.obj gap_03_00004E61_rodata, global
.hidden gap_03_00004E61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E61_rodata

# .rodata:0x16C | 0x4E64 | size: 0x11
.obj str_A_f1_rak_mkusa05_mri_00025504, local
	.string "A_f1_rak_mkusa05"
.endobj str_A_f1_rak_mkusa05_mri_00025504

# .rodata:0x17D | 0x4E75 | size: 0x3
.obj gap_03_00004E75_rodata, global
.hidden gap_03_00004E75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E75_rodata

# .rodata:0x180 | 0x4E78 | size: 0xB
.obj str_A_mkusa_06_mri_00025518, local
	.string "A_mkusa_06"
.endobj str_A_mkusa_06_mri_00025518

# .rodata:0x18B | 0x4E83 | size: 0x1
.obj gap_03_00004E83_rodata, global
.hidden gap_03_00004E83_rodata
	.byte 0x00
.endobj gap_03_00004E83_rodata

# .rodata:0x18C | 0x4E84 | size: 0xC
.obj str_A_f1_kaidan_mri_00025524, local
	.string "A_f1_kaidan"
.endobj str_A_f1_kaidan_mri_00025524

# .rodata:0x198 | 0x4E90 | size: 0xE
.obj str_A_mizu_before_mri_00025530, local
	.string "A_mizu_before"
.endobj str_A_mizu_before_mri_00025530

# .rodata:0x1A6 | 0x4E9E | size: 0x2
.obj gap_03_00004E9E_rodata, global
.hidden gap_03_00004E9E_rodata
	.2byte 0x0000
.endobj gap_03_00004E9E_rodata

# .rodata:0x1A8 | 0x4EA0 | size: 0xD
.obj str_A_f2_rak_l03_mri_00025540, local
	.string "A_f2_rak_l03"
.endobj str_A_f2_rak_l03_mri_00025540

# .rodata:0x1B5 | 0x4EAD | size: 0x3
.obj gap_03_00004EAD_rodata, global
.hidden gap_03_00004EAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004EAD_rodata

# .rodata:0x1B8 | 0x4EB0 | size: 0xD
.obj str_A_f1_rak_l04_mri_00025550, local
	.string "A_f1_rak_l04"
.endobj str_A_f1_rak_l04_mri_00025550

# .rodata:0x1C5 | 0x4EBD | size: 0x3
.obj gap_03_00004EBD_rodata, global
.hidden gap_03_00004EBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004EBD_rodata

# .rodata:0x1C8 | 0x4EC0 | size: 0xD
.obj str_A_f1_rak_r03_mri_00025560, local
	.string "A_f1_rak_r03"
.endobj str_A_f1_rak_r03_mri_00025560

# .rodata:0x1D5 | 0x4ECD | size: 0x3
.obj gap_03_00004ECD_rodata, global
.hidden gap_03_00004ECD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004ECD_rodata

# .rodata:0x1D8 | 0x4ED0 | size: 0xC
.obj str_A_mizi_kusa_mri_00025570, local
	.string "A_mizi_kusa"
.endobj str_A_mizi_kusa_mri_00025570

# .rodata:0x1E4 | 0x4EDC | size: 0xB
.obj str_のったとき_mri_0002557c, local
	.4byte 0x82CC82C1
	.4byte 0x82BD82C6
	.byte 0x82, 0xAB, 0x00
.endobj str_のったとき_mri_0002557c

# .rodata:0x1EF | 0x4EE7 | size: 0x1
.obj gap_03_00004EE7_rodata, global
.hidden gap_03_00004EE7_rodata
	.byte 0x00
.endobj gap_03_00004EE7_rodata

# .rodata:0x1F0 | 0x4EE8 | size: 0x11
.obj str_のらなかったとき_mri_00025588, local
	.4byte 0x82CC82E7
	.4byte 0x82C882A9
	.4byte 0x82C182BD
	.4byte 0x82C682AB
	.byte 0x00
.endobj str_のらなかったとき_mri_00025588

# .rodata:0x201 | 0x4EF9 | size: 0x3
.obj gap_03_00004EF9_rodata, global
.hidden gap_03_00004EF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004EF9_rodata

# .rodata:0x204 | 0x4EFC | size: 0x7
.obj str_mobj00_mri_0002559c, local
	.string "mobj00"
.endobj str_mobj00_mri_0002559c

# .rodata:0x20B | 0x4F03 | size: 0x1
.obj gap_03_00004F03_rodata, global
.hidden gap_03_00004F03_rodata
	.byte 0x00
.endobj gap_03_00004F03_rodata

# .rodata:0x20C | 0x4F04 | size: 0x9
.obj str_S_sikake_mri_000255a4, local
	.string "S_sikake"
.endobj str_S_sikake_mri_000255a4

# .rodata:0x215 | 0x4F0D | size: 0x3
.obj gap_03_00004F0D_rodata, global
.hidden gap_03_00004F0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004F0D_rodata

# .rodata:0x218 | 0x4F10 | size: 0x9
.obj str_A_sikake_mri_000255b0, local
	.string "A_sikake"
.endobj str_A_sikake_mri_000255b0

# .rodata:0x221 | 0x4F19 | size: 0x3
.obj gap_03_00004F19_rodata, global
.hidden gap_03_00004F19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004F19_rodata

# .rodata:0x224 | 0x4F1C | size: 0xE
.obj str_S_f2_yuka01_l_mri_000255bc, local
	.string "S_f2_yuka01_l"
.endobj str_S_f2_yuka01_l_mri_000255bc

# .rodata:0x232 | 0x4F2A | size: 0x2
.obj gap_03_00004F2A_rodata, global
.hidden gap_03_00004F2A_rodata
	.2byte 0x0000
.endobj gap_03_00004F2A_rodata

# .rodata:0x234 | 0x4F2C | size: 0xE
.obj str_S_f2_yuka01_r_mri_000255cc, local
	.string "S_f2_yuka01_r"
.endobj str_S_f2_yuka01_r_mri_000255cc

# .rodata:0x242 | 0x4F3A | size: 0x2
.obj gap_03_00004F3A_rodata, global
.hidden gap_03_00004F3A_rodata
	.2byte 0x0000
.endobj gap_03_00004F3A_rodata

# .rodata:0x244 | 0x4F3C | size: 0xC
.obj str_A_f1_yuka04_mri_000255dc, local
	.string "A_f1_yuka04"
.endobj str_A_f1_yuka04_mri_000255dc

# .rodata:0x250 | 0x4F48 | size: 0xC
.obj str_A_f1_yuka03_mri_000255e8, local
	.string "A_f1_yuka03"
.endobj str_A_f1_yuka03_mri_000255e8

# .rodata:0x25C | 0x4F54 | size: 0xB
.obj str_mobj_box00_mri_000255f4, local
	.string "mobj_box00"
.endobj str_mobj_box00_mri_000255f4

# .rodata:0x267 | 0x4F5F | size: 0x1
.obj gap_03_00004F5F_rodata, global
.hidden gap_03_00004F5F_rodata
	.byte 0x00
.endobj gap_03_00004F5F_rodata

# .rodata:0x268 | 0x4F60 | size: 0x7
.obj str_item00_mri_00025600, local
	.string "item00"
.endobj str_item00_mri_00025600

# .rodata:0x26F | 0x4F67 | size: 0x1
.obj gap_03_00004F67_rodata, global
.hidden gap_03_00004F67_rodata
	.byte 0x00
.endobj gap_03_00004F67_rodata

# .rodata:0x270 | 0x4F68 | size: 0x10
.obj str_BGM_EVT_DANGER4_mri_00025608, local
	.string "BGM_EVT_DANGER4"
.endobj str_BGM_EVT_DANGER4_mri_00025608

# .rodata:0x280 | 0x4F78 | size: 0xE
.obj str_ENV_STG2_MRI9_mri_00025618, local
	.string "ENV_STG2_MRI9"
.endobj str_ENV_STG2_MRI9_mri_00025618

# .rodata:0x28E | 0x4F86 | size: 0x2
.obj gap_03_00004F86_rodata, global
.hidden gap_03_00004F86_rodata
	.2byte 0x0000
.endobj gap_03_00004F86_rodata

# .rodata:0x290 | 0x4F88 | size: 0xE
.obj str_BGM_STG2_MRI1_mri_00025628, local
	.string "BGM_STG2_MRI1"
.endobj str_BGM_STG2_MRI1_mri_00025628

# .rodata:0x29E | 0x4F96 | size: 0x2
.obj gap_03_00004F96_rodata, global
.hidden gap_03_00004F96_rodata
	.2byte 0x0000
.endobj gap_03_00004F96_rodata

# .rodata:0x2A0 | 0x4F98 | size: 0xF
.obj str_ENV_STG2_MRI10_mri_00025638, local
	.string "ENV_STG2_MRI10"
.endobj str_ENV_STG2_MRI10_mri_00025638

# .rodata:0x2AF | 0x4FA7 | size: 0x1
.obj gap_03_00004FA7_rodata, global
.hidden gap_03_00004FA7_rodata
	.byte 0x00
.endobj gap_03_00004FA7_rodata

# .rodata:0x2B0 | 0x4FA8 | size: 0x8
.obj str_mizu_01_mri_00025648, local
	.string "mizu_01"
.endobj str_mizu_01_mri_00025648

# .rodata:0x2B8 | 0x4FB0 | size: 0x8
.obj str_mizu_02_mri_00025650, local
	.string "mizu_02"
.endobj str_mizu_02_mri_00025650

# .rodata:0x2C0 | 0x4FB8 | size: 0x7
.obj str_awa_01_mri_00025658, local
	.string "awa_01"
.endobj str_awa_01_mri_00025658

# .rodata:0x2C7 | 0x4FBF | size: 0x1
.obj gap_03_00004FBF_rodata, global
.hidden gap_03_00004FBF_rodata
	.byte 0x00
.endobj gap_03_00004FBF_rodata

# .rodata:0x2C8 | 0x4FC0 | size: 0x7
.obj str_awa_02_mri_00025660, local
	.string "awa_02"
.endobj str_awa_02_mri_00025660

# .rodata:0x2CF | 0x4FC7 | size: 0x1
.obj gap_03_00004FC7_rodata, global
.hidden gap_03_00004FC7_rodata
	.byte 0x00
.endobj gap_03_00004FC7_rodata

# .rodata:0x2D0 | 0x4FC8 | size: 0x7
.obj str_mobj01_mri_00025668, local
	.string "mobj01"
.endobj str_mobj01_mri_00025668

# .rodata:0x2D7 | 0x4FCF | size: 0x1
.obj gap_03_00004FCF_rodata, global
.hidden gap_03_00004FCF_rodata
	.byte 0x00
.endobj gap_03_00004FCF_rodata

# .rodata:0x2D8 | 0x4FD0 | size: 0x8
.obj str_item_00_mri_00025670, local
	.string "item_00"
.endobj str_item_00_mri_00025670

# .rodata:0x2E0 | 0x4FD8 | size: 0x6
.obj str_pblk1_mri_00025678, local
	.string "pblk1"
.endobj str_pblk1_mri_00025678
	.2byte 0x0000

# 0x00022668..0x00023560 | size: 0xEF8
.data
.balign 8

# .data:0x0 | 0x22668 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x22670 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x22674 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x22678 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2267C | size: 0x4
.obj gap_04_0002267C_data, global
.hidden gap_04_0002267C_data
	.4byte 0x00000000
.endobj gap_04_0002267C_data

# .data:0x18 | 0x22680 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x22688 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2268C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x22690 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x22698 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2269C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x226A0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x226A4 | size: 0x4
.obj gap_04_000226A4_data, global
.hidden gap_04_000226A4_data
	.4byte 0x00000000
.endobj gap_04_000226A4_data

# .data:0x40 | 0x226A8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x226B0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x226B4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x226B8 | size: 0x1A4
.obj bero_entry_data, local
	.4byte str_dokan1_mri_000253a0
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
	.4byte str_dokan4_mri_000253a8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan2_mri_000253b0
	.4byte 0x00020000
	.4byte 0x00000006
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte str_mri_18_mri_000253b8
	.4byte str_dokan2_mri_000253b0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan3_mri_000253c0
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
	.4byte str_dokan6_mri_000253c8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan4_mri_000253a8
	.4byte 0x00020000
	.4byte 0x00000006
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan1_mri_000253a0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan6_mri_000253c8
	.4byte 0x00020000
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan3_mri_000253c0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan7_mri_000253d0
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte str_mri_13_mri_000253d8
	.4byte str_dokan_mri_000253e0
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

# .data:0x1F4 | 0x2285C | size: 0x84
.obj cam_shake, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00000064
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A87
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cam_shake

# .data:0x278 | 0x228E0 | size: 0x6C
.obj cam_shake2, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00000064
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cam_shake2

# .data:0x2E4 | 0x2294C | size: 0x4E0
.obj water_shikake, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x0002005B
	.4byte evt_mario_set_mov_spd
	.4byte 0xF24A7A80
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00003800
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_get_flag_18_text_19BE4
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002004E
	.4byte 0xFE363C80
	.4byte 0x00000400
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0xFFFFFF38
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x00000010
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00100000
	.4byte 0x0003005B
	.4byte puni_get_id
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0x0002004D
	.4byte 0xFE363C83
	.4byte 0x00000008
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0x00000004
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0xFFFFFF1A
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0xFFFFFEC0
	.4byte 0xFE363C82
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
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_l03_mri_000253e8
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_mizu_before_mri_000253f8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_mizu_now_mri_00025408
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_QUAKE1_mri_00025414
	.4byte 0xFD050F80
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_WATER_FLOW1_mri_00025424
	.4byte 0xFD050F81
	.4byte 0x0002005D
	.4byte cam_shake
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_guru_mri_0002543c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF66
	.4byte 0x000000BA
	.4byte 0x00000208
	.4byte 0xFFFFFFF2
	.4byte 0x00000064
	.4byte 0xFFFFFFD0
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000DAC
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF66
	.4byte 0xFFFFFF48
	.4byte 0x00000208
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFEF1
	.4byte 0xFFFFFFD0
	.4byte 0x00001388
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000009C4
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F80
	.4byte 0x0001000A
	.4byte 0x000009C4
	.4byte 0x0001000A
	.4byte 0x00001F40
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F81
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_mizu_guru_mri_0002543c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x0001005E
	.4byte cam_shake2
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_mri_00025448
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_mizu_now_mri_00025408
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_mizu_after_mri_0002545c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_mizu_after_mri_0002546c
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f2_kaidan_mri_0002547c
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_mizu_after_mri_0002546c
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f2_kai_rak_mri_00025488
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f2_rak_ana_mri_00025498
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_mkusa01_mri_000254a8
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_isk_03_mri_000254bc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_mkusa01_mri_000254a8
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_mkusa02_mri_000254c8
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_mkusa03_mri_000254dc
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_mkusa04_mri_000254f0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_mkusa05_mri_00025504
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_mkusa_06_mri_00025518
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_kaidan_mri_00025524
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_mizu_before_mri_00025530
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f2_rak_l03_mri_00025540
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_l04_mri_00025550
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_r03_mri_00025560
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_mizi_kusa_mri_00025570
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_puni_set_ymode_18_text_1A1C8
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_puni_set_maze_18_text_16320
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj water_shikake

# .data:0x7C4 | 0x22E2C | size: 0x1C
.obj bar_shikake, local
	.4byte 0x00010071
	.4byte str_のったとき_mri_0002557c
	.4byte 0x0002005B
	.4byte ss_set
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bar_shikake

# .data:0x7E0 | 0x22E48 | size: 0x1C
.obj bar_shikake_up, local
	.4byte 0x00010071
	.4byte str_のらなかったとき_mri_00025588
	.4byte 0x0002005B
	.4byte ss_set
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bar_shikake_up

# .data:0x7FC | 0x22E64 | size: 0x1A8
.obj switch_up_down, local
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF24A7A80
	.4byte 0x00020018
	.4byte 0xF84066B3
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mobj_get_y_position
	.4byte str_mobj00_mri_0002559c
	.4byte 0xFE363C83
	.4byte 0x00000020
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A7A80
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C84
	.4byte 0xFE363C83
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte ss_check
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24A792B
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C81
	.4byte 0x0002003C
	.4byte 0xFE363C81
	.4byte 0xF24A8E80
	.4byte 0x0002003A
	.4byte 0xFE363C84
	.4byte 0xFE363C81
	.4byte 0x00020016
	.4byte 0xFE363C82
	.4byte 0xF24A5280
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF24A5280
	.4byte 0x00020034
	.4byte 0xFE363C84
	.4byte 0xF249B280
	.4byte 0x0002003A
	.4byte 0xFE363C84
	.4byte 0xFE363C83
	.4byte 0x0002005B
	.4byte ss_set
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24A7AD5
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C81
	.4byte 0x0002003C
	.4byte 0xFE363C81
	.4byte 0xF24A8E80
	.4byte 0x0002003A
	.4byte 0xFE363C84
	.4byte 0xFE363C81
	.4byte 0x00020017
	.4byte 0xFE363C82
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C84
	.4byte 0xFE363C83
	.4byte 0x0002005B
	.4byte ss_set
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_sikake_mri_000255a4
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_sikake_mri_000255b0
	.4byte 0x00020018
	.4byte 0xF84066B3
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mobj_set_y_position
	.4byte str_mobj00_mri_0002559c
	.4byte 0xFE363C84
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj switch_up_down

# .data:0x9A4 | 0x2300C | size: 0x50
.obj hitDmgRetPoints, local
	.4byte str_S_f2_yuka01_l_mri_000255bc
	.4byte 0xC3780000
	.4byte 0x42A00000
	.4byte 0x41D80000
	.4byte str_S_f2_yuka01_r_mri_000255cc
	.4byte 0x43780000
	.4byte 0x42A00000
	.4byte 0x41D80000
	.4byte str_A_f1_yuka04_mri_000255dc
	.4byte 0xC3740000
	.4byte 0xC39F8000
	.4byte 0x42080000
	.4byte str_A_f1_yuka03_mri_000255e8
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj hitDmgRetPoints

# .data:0x9F4 | 0x2305C | size: 0x88
.obj mobj_box00, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box00_mri_000255f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_mri_00025600
	.4byte 0x000000F4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_mri_00025600
	.4byte 0x00000102
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box00_mri_000255f4
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item00_mri_00025600
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mobj_box00

# .data:0xA7C | 0x230E4 | size: 0x468
.obj mri_16_init_evt_18_data_230E4, global
	.4byte 0x0001005B
	.4byte evt_puni_mem_init_18_text_15D70
	.4byte 0x0008005B
	.4byte evt_puni_set_yuka_18_text_15FA0
	.4byte 0x00000010
	.4byte 0x00000050
	.4byte 0xFFFFFEC1
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x0008005B
	.4byte evt_puni_set_hamari_18_text_16134
	.4byte 0xFFFFFF19
	.4byte 0xFFFFFEC1
	.4byte 0xFFFFFFB9
	.4byte 0x00000052
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFEC3
	.4byte 0xFFFFFE6F
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
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000006D
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER4_mri_00025608
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI9_mri_00025618
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_00025628
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI10_mri_00025638
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_01_mri_00025648
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_02_mri_00025650
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_01_mri_00025658
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_02_mri_00025660
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_switch_blue
	.4byte 0x00000000
	.4byte str_mobj00_mri_0002559c
	.4byte 0x00000000
	.4byte 0x0000004F
	.4byte 0xFFFFFF88
	.4byte water_shikake
	.4byte 0xF84066B3
	.4byte 0x00020018
	.4byte 0xF84066B3
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_mobj00_mri_0002559c
	.4byte 0x00000040
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_sikake_mri_000255b0
	.4byte str_S_sikake_mri_000255a4
	.4byte 0x0002005B
	.4byte ss_set
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_rideswitch_lightblue
	.4byte str_mobj01_mri_00025668
	.4byte 0x0000007D
	.4byte 0x00000050
	.4byte 0xFFFFFF88
	.4byte bar_shikake
	.4byte bar_shikake_up
	.4byte 0xF84066B4
	.4byte 0x0001005C
	.4byte switch_up_down
	.4byte 0x00020018
	.4byte 0xF84066B3
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_mizu_now_mri_00025408
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_mizu_after_mri_0002545c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f2_kaidan_mri_0002547c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_mizu_after_mri_0002546c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_l03_mri_000253e8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f2_kai_rak_mri_00025488
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f2_rak_ana_mri_00025498
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_mizi_kusa_mri_00025570
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_mkusa01_mri_000254a8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_mkusa02_mri_000254c8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_mkusa03_mri_000254dc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_mkusa04_mri_000254f0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_mkusa05_mri_00025504
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_mkusa_06_mri_00025518
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_mizu_now_mri_00025408
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_mizu_before_mri_000253f8
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_kaidan_mri_00025524
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_mizu_before_mri_00025530
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f2_rak_l03_mri_00025540
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_l04_mri_00025550
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f1_rak_r03_mri_00025560
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_isk_03_mri_000254bc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_puni_set_ymode_18_text_1A1C8
	.4byte 0x00000005
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte hitDmgRetPoints
	.4byte 0x0001005E
	.4byte evt_gazigazi_entry
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_00_mri_00025670
	.4byte 0x0000008D
	.4byte 0xFFFFFF8D
	.4byte 0x00000000
	.4byte 0xFFFFFFE7
	.4byte 0x00000000
	.4byte 0xF84066B5
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box00_mri_000255f4
	.4byte 0xFFFFFF83
	.4byte 0x00000000
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte mobj_box00
	.4byte 0xF84066C5
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_pblk1_mri_00025678
	.4byte 0x00000041
	.4byte 0xFFFFFEFC
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0xF8407128
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mri_16_init_evt_18_data_230E4

# .data:0xEE4 | 0x2354C | size: 0x14
.obj gap_04_0002354C_data, global
.hidden gap_04_0002354C_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj gap_04_0002354C_data

# 0x00000030..0x00000038 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x30 | size: 0x4
.obj ssf, local
	.skip 0x4
.endobj ssf

# .bss:0x4 | 0x34 | size: 0x4
.obj gap_05_00000034_bss, global
.hidden gap_05_00000034_bss
	.skip 0x4
.endobj gap_05_00000034_bss
