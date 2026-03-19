.include "macros.inc"
.file "unit_super_killer_cannon.o"

# 0x0000F3BC..0x0000F52C | size: 0x170
.text
.balign 4

# .text:0x0 | 0xF3BC | size: 0xD0
.fn killer_get_angle, local
/* 0000F3BC 0000F488  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 0000F3C0 0000F48C  7C 08 02 A6 */	mflr r0
/* 0000F3C4 0000F490  90 01 00 44 */	stw r0, 0x44(r1)
/* 0000F3C8 0000F494  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 0000F3CC 0000F498  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 0000F3D0 0000F49C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 0000F3D4 0000F4A0  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 0000F3D8 0000F4A4  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 0000F3DC 0000F4A8  F3 A1 00 18 */	psq_st f29, 0x18(r1), 0, qr0
/* 0000F3E0 0000F4AC  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000F3E4 0000F4B0  7C 7E 1B 78 */	mr r30, r3
/* 0000F3E8 0000F4B4  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000F3EC 0000F4B8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000F3F0 0000F4BC  4B FF 0D 4D */	bl evtGetFloat
/* 0000F3F4 0000F4C0  FF A0 08 90 */	fmr f29, f1
/* 0000F3F8 0000F4C4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000F3FC 0000F4C8  7F C3 F3 78 */	mr r3, r30
/* 0000F400 0000F4CC  4B FF 0D 3D */	bl evtGetFloat
/* 0000F404 0000F4D0  FF C0 08 90 */	fmr f30, f1
/* 0000F408 0000F4D4  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000F40C 0000F4D8  7F C3 F3 78 */	mr r3, r30
/* 0000F410 0000F4DC  4B FF 0D 2D */	bl evtGetFloat
/* 0000F414 0000F4E0  FF E0 08 90 */	fmr f31, f1
/* 0000F418 0000F4E4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000F41C 0000F4E8  7F C3 F3 78 */	mr r3, r30
/* 0000F420 0000F4EC  4B FF 0D 1D */	bl evtGetFloat
/* 0000F424 0000F4F0  EC 21 F0 28 */	fsubs f1, f1, f30
/* 0000F428 0000F4F4  EC 1F E8 28 */	fsubs f0, f31, f29
/* 0000F42C 0000F4F8  EC 21 00 24 */	fdivs f1, f1, f0
/* 0000F430 0000F4FC  4B FF 0D 0D */	bl atan
/* 0000F434 0000F500  3C 80 00 00 */	lis r4, float_360_las_00019a38@ha
/* 0000F438 0000F504  FC 40 08 18 */	frsp f2, f1
/* 0000F43C 0000F508  C0 24 00 00 */	lfs f1, float_360_las_00019a38@l(r4)
/* 0000F440 0000F50C  3C 60 00 00 */	lis r3, float_6p2832_las_00019a3c@ha
/* 0000F444 0000F510  C0 03 00 00 */	lfs f0, float_6p2832_las_00019a3c@l(r3)
/* 0000F448 0000F514  7F C3 F3 78 */	mr r3, r30
/* 0000F44C 0000F518  EC 21 00 B2 */	fmuls f1, f1, f2
/* 0000F450 0000F51C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000F454 0000F520  EC 21 00 24 */	fdivs f1, f1, f0
/* 0000F458 0000F524  4B FF 0C E5 */	bl evtSetFloat
/* 0000F45C 0000F528  38 60 00 02 */	li r3, 0x2
/* 0000F460 0000F52C  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 0000F464 0000F530  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 0000F468 0000F534  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 0000F46C 0000F538  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 0000F470 0000F53C  E3 A1 00 18 */	psq_l f29, 0x18(r1), 0, qr0
/* 0000F474 0000F540  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 0000F478 0000F544  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000F47C 0000F548  80 01 00 44 */	lwz r0, 0x44(r1)
/* 0000F480 0000F54C  7C 08 03 A6 */	mtlr r0
/* 0000F484 0000F550  38 21 00 40 */	addi r1, r1, 0x40
/* 0000F488 0000F554  4E 80 00 20 */	blr
.endfn killer_get_angle

# .text:0xD0 | 0xF48C | size: 0xA0
.fn killer_copy_status, local
/* 0000F48C 0000F558  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000F490 0000F55C  7C 08 02 A6 */	mflr r0
/* 0000F494 0000F560  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000F498 0000F564  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000F49C 0000F568  7C 7D 1B 78 */	mr r29, r3
/* 0000F4A0 0000F56C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000F4A4 0000F570  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000F4A8 0000F574  4B FF 0C 95 */	bl evtGetValue
/* 0000F4AC 0000F578  7C 64 1B 78 */	mr r4, r3
/* 0000F4B0 0000F57C  7F A3 EB 78 */	mr r3, r29
/* 0000F4B4 0000F580  4B FF 0C 89 */	bl BattleTransID
/* 0000F4B8 0000F584  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000F4BC 0000F588  7C 7F 1B 78 */	mr r31, r3
/* 0000F4C0 0000F58C  7F A3 EB 78 */	mr r3, r29
/* 0000F4C4 0000F590  4B FF 0C 79 */	bl evtGetValue
/* 0000F4C8 0000F594  7C 64 1B 78 */	mr r4, r3
/* 0000F4CC 0000F598  7F A3 EB 78 */	mr r3, r29
/* 0000F4D0 0000F59C  4B FF 0C 6D */	bl BattleTransID
/* 0000F4D4 0000F5A0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000F4D8 0000F5A4  7C 7E 1B 78 */	mr r30, r3
/* 0000F4DC 0000F5A8  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000F4E0 0000F5AC  80 05 00 00 */	lwz r0, 0x0(r5)
/* 0000F4E4 0000F5B0  7F E4 FB 78 */	mr r4, r31
/* 0000F4E8 0000F5B4  7C 1D 03 78 */	mr r29, r0
/* 0000F4EC 0000F5B8  7C 03 03 78 */	mr r3, r0
/* 0000F4F0 0000F5BC  4B FF 0C 4D */	bl BattleGetUnitPtr
/* 0000F4F4 0000F5C0  7C 7F 1B 78 */	mr r31, r3
/* 0000F4F8 0000F5C4  7F A3 EB 78 */	mr r3, r29
/* 0000F4FC 0000F5C8  7F C4 F3 78 */	mr r4, r30
/* 0000F500 0000F5CC  4B FF 0C 3D */	bl BattleGetUnitPtr
/* 0000F504 0000F5D0  88 1F 01 23 */	lbz r0, 0x123(r31)
/* 0000F508 0000F5D4  98 03 01 23 */	stb r0, 0x123(r3)
/* 0000F50C 0000F5D8  88 1F 01 24 */	lbz r0, 0x124(r31)
/* 0000F510 0000F5DC  98 03 01 24 */	stb r0, 0x124(r3)
/* 0000F514 0000F5E0  38 60 00 02 */	li r3, 0x2
/* 0000F518 0000F5E4  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 0000F51C 0000F5E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000F520 0000F5EC  7C 08 03 A6 */	mtlr r0
/* 0000F524 0000F5F0  38 21 00 20 */	addi r1, r1, 0x20
/* 0000F528 0000F5F4  4E 80 00 20 */	blr
.endfn killer_copy_status

# 0x00007E30..0x00007FD8 | size: 0x1A8
.rodata
.balign 8

# .rodata:0x0 | 0x7E30 | size: 0x1B
.obj str_btl_un_super_killer__las_00019898, local
	.string "btl_un_super_killer_cannon"
.endobj str_btl_un_super_killer__las_00019898

# .rodata:0x1B | 0x7E4B | size: 0x1
.obj gap_03_00007E4B_rodata, global
.hidden gap_03_00007E4B_rodata
	.byte 0x00
.endobj gap_03_00007E4B_rodata

# .rodata:0x1C | 0x7E4C | size: 0x1E
.obj str_SFX_ENM_KILLER_CANON_las_000198b4, local
	.string "SFX_ENM_KILLER_CANON_DAMAGED1"
.endobj str_SFX_ENM_KILLER_CANON_las_000198b4

# .rodata:0x3A | 0x7E6A | size: 0x2
.obj gap_03_00007E6A_rodata, global
.hidden gap_03_00007E6A_rodata
	.2byte 0x0000
.endobj gap_03_00007E6A_rodata

# .rodata:0x3C | 0x7E6C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_las_000198d4, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_las_000198d4

# .rodata:0x51 | 0x7E81 | size: 0x3
.obj gap_03_00007E81_rodata, global
.hidden gap_03_00007E81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007E81_rodata

# .rodata:0x54 | 0x7E84 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_las_000198ec, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_las_000198ec

# .rodata:0x68 | 0x7E98 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_las_00019900, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_las_00019900

# .rodata:0x81 | 0x7EB1 | size: 0x3
.obj gap_03_00007EB1_rodata, global
.hidden gap_03_00007EB1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007EB1_rodata

# .rodata:0x84 | 0x7EB4 | size: 0xC
.obj str_c_killtai_g_las_0001991c, local
	.string "c_killtai_g"
.endobj str_c_killtai_g_las_0001991c

# .rodata:0x90 | 0x7EC0 | size: 0x8
.obj str_KTA_N_1_las_00019928, local
	.string "KTA_N_1"
.endobj str_KTA_N_1_las_00019928

# .rodata:0x98 | 0x7EC8 | size: 0x8
.obj str_KTA_Y_1_las_00019930, local
	.string "KTA_Y_1"
.endobj str_KTA_Y_1_las_00019930

# .rodata:0xA0 | 0x7ED0 | size: 0x8
.obj str_KTA_K_1_las_00019938, local
	.string "KTA_K_1"
.endobj str_KTA_K_1_las_00019938

# .rodata:0xA8 | 0x7ED8 | size: 0x8
.obj str_KTA_X_1_las_00019940, local
	.string "KTA_X_1"
.endobj str_KTA_X_1_las_00019940

# .rodata:0xB0 | 0x7EE0 | size: 0x8
.obj str_KTA_S_1_las_00019948, local
	.string "KTA_S_1"
.endobj str_KTA_S_1_las_00019948

# .rodata:0xB8 | 0x7EE8 | size: 0x8
.obj str_KTA_Q_1_las_00019950, local
	.string "KTA_Q_1"
.endobj str_KTA_Q_1_las_00019950

# .rodata:0xC0 | 0x7EF0 | size: 0x8
.obj str_KTA_A_1_las_00019958, local
	.string "KTA_A_1"
.endobj str_KTA_A_1_las_00019958

# .rodata:0xC8 | 0x7EF8 | size: 0x8
.obj str_KTA_D_1_las_00019960, local
	.string "KTA_D_1"
.endobj str_KTA_D_1_las_00019960

# .rodata:0xD0 | 0x7F00 | size: 0x8
.obj str_KTA_T_1_las_00019968, local
	.string "KTA_T_1"
.endobj str_KTA_T_1_las_00019968

# .rodata:0xD8 | 0x7F08 | size: 0x8
.obj str_KTA_Z_3_las_00019970, local
	.string "KTA_Z_3"
.endobj str_KTA_Z_3_las_00019970

# .rodata:0xE0 | 0x7F10 | size: 0x8
.obj str_KTA_Z_2_las_00019978, local
	.string "KTA_Z_2"
.endobj str_KTA_Z_2_las_00019978

# .rodata:0xE8 | 0x7F18 | size: 0x1E
.obj str_SFX_ENM_KILLER_CANNO_las_00019980, local
	.string "SFX_ENM_KILLER_CANNON_CHARGE1"
.endobj str_SFX_ENM_KILLER_CANNO_las_00019980

# .rodata:0x106 | 0x7F36 | size: 0x2
.obj gap_03_00007F36_rodata, global
.hidden gap_03_00007F36_rodata
	.2byte 0x0000
.endobj gap_03_00007F36_rodata

# .rodata:0x108 | 0x7F38 | size: 0x9
.obj str_KTA_A_2A_las_000199a0, local
	.string "KTA_A_2A"
.endobj str_KTA_A_2A_las_000199a0

# .rodata:0x111 | 0x7F41 | size: 0x3
.obj gap_03_00007F41_rodata, global
.hidden gap_03_00007F41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007F41_rodata

# .rodata:0x114 | 0x7F44 | size: 0x8
.obj str_KTA_Z_1_las_000199ac, local
	.string "KTA_Z_1"
.endobj str_KTA_Z_1_las_000199ac

# .rodata:0x11C | 0x7F4C | size: 0x17
.obj str_SFX_ENM_KILLER_CANNO_las_000199b4, local
	.string "SFX_ENM_KILLER_CANNON3"
.endobj str_SFX_ENM_KILLER_CANNO_las_000199b4

# .rodata:0x133 | 0x7F63 | size: 0x1
.obj gap_03_00007F63_rodata, global
.hidden gap_03_00007F63_rodata
	.byte 0x00
.endobj gap_03_00007F63_rodata

# .rodata:0x134 | 0x7F64 | size: 0x17
.obj str_SFX_ENM_KILLER_CANNO_las_000199cc, local
	.string "SFX_ENM_KILLER_CANNON1"
.endobj str_SFX_ENM_KILLER_CANNO_las_000199cc

# .rodata:0x14B | 0x7F7B | size: 0x1
.obj gap_03_00007F7B_rodata, global
.hidden gap_03_00007F7B_rodata
	.byte 0x00
.endobj gap_03_00007F7B_rodata

# .rodata:0x14C | 0x7F7C | size: 0x1
.obj zero_las_000199e4, local
	.byte 0x00
.endobj zero_las_000199e4

# .rodata:0x14D | 0x7F7D | size: 0x3
.obj gap_03_00007F7D_rodata, global
.hidden gap_03_00007F7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007F7D_rodata

# .rodata:0x150 | 0x7F80 | size: 0xC
.obj str_kemuri_test_las_000199e8, local
	.string "kemuri_test"
.endobj str_kemuri_test_las_000199e8

# .rodata:0x15C | 0x7F8C | size: 0x9
.obj str_KTA_A_3A_las_000199f4, local
	.string "KTA_A_3A"
.endobj str_KTA_A_3A_las_000199f4

# .rodata:0x165 | 0x7F95 | size: 0x3
.obj gap_03_00007F95_rodata, global
.hidden gap_03_00007F95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007F95_rodata

# .rodata:0x168 | 0x7F98 | size: 0x8
.obj str_KTA_A_3_las_00019a00, local
	.string "KTA_A_3"
.endobj str_KTA_A_3_las_00019a00

# .rodata:0x170 | 0x7FA0 | size: 0x17
.obj str_SFX_ENM_KILLER_CANNO_las_00019a08, local
	.string "SFX_ENM_KILLER_CANNON4"
.endobj str_SFX_ENM_KILLER_CANNO_las_00019a08

# .rodata:0x187 | 0x7FB7 | size: 0x1
.obj gap_03_00007FB7_rodata, global
.hidden gap_03_00007FB7_rodata
	.byte 0x00
.endobj gap_03_00007FB7_rodata

# .rodata:0x188 | 0x7FB8 | size: 0x17
.obj str_SFX_ENM_KILLER_CANNO_las_00019a20, local
	.string "SFX_ENM_KILLER_CANNON2"
.endobj str_SFX_ENM_KILLER_CANNO_las_00019a20
	.byte 0x00

# .rodata:0x1A0 | 0x7FD0 | size: 0x4
.obj float_360_las_00019a38, local
	.float 360
.endobj float_360_las_00019a38

# .rodata:0x1A4 | 0x7FD4 | size: 0x4
.obj float_6p2832_las_00019a3c, local
	.float 6.283184
.endobj float_6p2832_las_00019a3c

# 0x0004B0A0..0x0004C908 | size: 0x1868
.data
.balign 8

# .data:0x0 | 0x4B0A0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4B0A8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4B0AC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4B0B0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4B0B4 | size: 0x4
.obj gap_04_0004B0B4_data, global
.hidden gap_04_0004B0B4_data
	.4byte 0x00000000
.endobj gap_04_0004B0B4_data

# .data:0x18 | 0x4B0B8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4B0C0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4B0C4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4B0C8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4B0D0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4B0D4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4B0D8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4B0DC | size: 0x4
.obj gap_04_0004B0DC_data, global
.hidden gap_04_0004B0DC_data
	.4byte 0x00000000
.endobj gap_04_0004B0DC_data

# .data:0x40 | 0x4B0E0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4B0E8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4B0EC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4B0F0 | size: 0xC4
.obj unit_super_killer_cannon_16_data_4B0F0, global
	.4byte 0x0000007D
	.4byte str_btl_un_super_killer__las_00019898
	.4byte 0x000A0000
	.4byte 0x01011F00
	.4byte 0x01460332
	.4byte 0x270F0034
	.4byte 0x00260005
	.4byte 0x00260000
	.4byte 0x00000000
	.4byte 0x41980000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x41200000
	.4byte 0x41D00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x41C5999A
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x41980000
	.4byte 0x00000000
	.4byte 0x42500000
	.4byte 0x42180000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_KILLER_CANON_las_000198b4
	.4byte str_SFX_BTL_DAMAGE_FIRE1_las_000198d4
	.4byte str_SFX_BTL_DAMAGE_ICE1_las_000198ec
	.4byte str_SFX_BTL_DAMAGE_BIRIB_las_00019900
	.4byte 0x00000000
	.4byte regist
	.4byte 0x03000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_super_killer_cannon_16_data_4B0F0

# .data:0x114 | 0x4B1B4 | size: 0x5
.obj defence, local
	.4byte 0x04040404
	.byte 0x04
.endobj defence

# .data:0x119 | 0x4B1B9 | size: 0x3
.obj gap_04_0004B1B9_data, global
.hidden gap_04_0004B1B9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0004B1B9_data

# .data:0x11C | 0x4B1BC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x4B1C1 | size: 0x3
.obj gap_04_0004B1C1_data, global
.hidden gap_04_0004B1C1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0004B1C1_data

# .data:0x124 | 0x4B1C4 | size: 0x16
.obj regist, local
	.4byte 0x00000000
	.4byte 0x0096645A
	.4byte 0x64506450
	.4byte 0x645F2800
	.4byte 0x05642864
	.2byte 0x645A
.endobj regist

# .data:0x13A | 0x4B1DA | size: 0x2
.obj gap_04_0004B1DA_data, global
.hidden gap_04_0004B1DA_data
	.2byte 0x0000
.endobj gap_04_0004B1DA_data

# .data:0x13C | 0x4B1DC | size: 0xE4
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_super_killer__las_00019898
	.4byte str_c_killtai_g_las_0001991c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x0023001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_super_killer__las_00019898
	.4byte str_c_killtai_g_las_0001991c
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
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000003
	.4byte str_btl_un_super_killer__las_00019898
	.4byte str_c_killtai_g_las_0001991c
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
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x220 | 0x4B2C0 | size: 0x30
.obj entry_killer, local
	.4byte unit_super_killer_16_data_4A668
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_killer

# .data:0x250 | 0x4B2F0 | size: 0x80
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KTA_N_1_las_00019928
	.4byte 0x00000002
	.4byte str_KTA_Y_1_las_00019930
	.4byte 0x00000009
	.4byte str_KTA_Y_1_las_00019930
	.4byte 0x00000005
	.4byte str_KTA_K_1_las_00019938
	.4byte 0x00000004
	.4byte str_KTA_X_1_las_00019940
	.4byte 0x00000003
	.4byte str_KTA_X_1_las_00019940
	.4byte 0x0000001C
	.4byte str_KTA_S_1_las_00019948
	.4byte 0x0000001D
	.4byte str_KTA_Q_1_las_00019950
	.4byte 0x0000001E
	.4byte str_KTA_Q_1_las_00019950
	.4byte 0x0000001F
	.4byte str_KTA_A_1_las_00019958
	.4byte 0x00000027
	.4byte str_KTA_D_1_las_00019960
	.4byte 0x00000038
	.4byte str_KTA_X_1_las_00019940
	.4byte 0x00000039
	.4byte str_KTA_X_1_las_00019940
	.4byte 0x00000032
	.4byte str_KTA_A_1_las_00019958
	.4byte 0x00000041
	.4byte str_KTA_T_1_las_00019968
	.4byte 0x00000045
	.4byte str_KTA_S_1_las_00019948
.endobj pose_table

# .data:0x2D0 | 0x4B370 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x2D8 | 0x4B378 | size: 0xFC
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
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0005005B
	.4byte btlevtcmd_AddPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_AddHomePos
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KTA_Z_3_las_00019970
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KTA_Z_2_las_00019978
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x02000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3D4 | 0x4B474 | size: 0x28
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

# .data:0x3FC | 0x4B49C | size: 0xB88
.obj attack_event, local
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
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x000000A0
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00020037
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C8D
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C8E
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C8D
	.4byte 0x0000000A
	.4byte 0x0002001D
	.4byte 0xFE363C8F
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x000000A0
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00020037
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C8D
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C8E
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C8D
	.4byte 0x0000000A
	.4byte 0x0002001D
	.4byte 0xFE363C8F
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x000000A0
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00020037
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C8D
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C8E
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C8D
	.4byte 0x0000000A
	.4byte 0x0002001D
	.4byte 0xFE363C8F
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x000000A0
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x01000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00020037
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C8D
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte friend_event_sky
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C8B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x01000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C8E
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C8D
	.4byte 0x0000000A
	.4byte 0x0002001D
	.4byte 0xFE363C8F
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x000000A0
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x01000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00020037
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C8D
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte friend_event_sky
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C8B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x01000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C8E
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C8D
	.4byte 0x0000000A
	.4byte 0x0002001D
	.4byte 0xFE363C8F
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x000000A0
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x01000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00020037
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C8D
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte friend_event_sky
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C8E
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C8D
	.4byte 0x0000000A
	.4byte 0x0002001D
	.4byte 0xFE363C8F
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C8B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x01000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0xF84 | 0x4C024 | size: 0x3D0
.obj friend_event, local
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KILLER_CANNO_las_00019980
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KTA_A_2A_las_000199a0
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KTA_Z_1_las_000199ac
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KTA_A_2A_las_000199a0
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KTA_Z_1_las_000199ac
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KTA_A_1_las_00019958
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KILLER_CANNO_las_000199b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KILLER_CANNO_las_000199cc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C85
	.4byte 0x00020019
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x00000046
	.4byte 0x00020035
	.4byte 0xFE363C89
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_las_000199e4
	.4byte str_kemuri_test_las_000199e8
	.4byte 0x00000012
	.4byte 0xFE363C87
	.4byte 0x00000032
	.4byte 0xFE363C89
	.4byte 0xF24A8080
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C85
	.4byte 0x00020019
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x0000001C
	.4byte 0x00020035
	.4byte 0xFE363C89
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_las_000199e4
	.4byte str_kemuri_test_las_000199e8
	.4byte 0x00000012
	.4byte 0xFE363C87
	.4byte 0x0000000F
	.4byte 0xFE363C89
	.4byte 0xF24A7C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C89
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_las_000199e4
	.4byte str_kemuri_test_las_000199e8
	.4byte 0x00000012
	.4byte 0xFE363C87
	.4byte 0x0000001E
	.4byte 0xFE363C89
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_w
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_killer
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte killer_copy_status
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C87
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetJumpSpeed
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0xF24A9680
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_OnOffStatus
	.4byte 0xFE363C83
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj friend_event

# .data:0x1354 | 0x4C3F4 | size: 0x4F8
.obj friend_event_sky, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0006005B
	.4byte evt_sub_get_dir
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte killer_get_angle
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C8B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001B
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xFE363C8B
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020036
	.4byte 0xFE363C8B
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KILLER_CANNO_las_00019980
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KTA_A_3A_las_000199f4
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KTA_Z_3_las_00019970
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KTA_A_3A_las_000199f4
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KTA_Z_3_las_00019970
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KTA_A_3_las_00019a00
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KILLER_CANNO_las_00019a08
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KILLER_CANNO_las_00019a20
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C85
	.4byte 0x00020019
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x0000003C
	.4byte 0x00020035
	.4byte 0xFE363C89
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_las_000199e4
	.4byte str_kemuri_test_las_000199e8
	.4byte 0x00000012
	.4byte 0xFE363C87
	.4byte 0x0000004B
	.4byte 0xFE363C89
	.4byte 0xF24A8080
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C85
	.4byte 0x00020019
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x0000001C
	.4byte 0x00020035
	.4byte 0xFE363C89
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_las_000199e4
	.4byte str_kemuri_test_las_000199e8
	.4byte 0x00000012
	.4byte 0xFE363C87
	.4byte 0x00000014
	.4byte 0xFE363C89
	.4byte 0xF24A7C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C89
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_las_000199e4
	.4byte str_kemuri_test_las_000199e8
	.4byte 0x00000012
	.4byte 0xFE363C87
	.4byte 0x00000026
	.4byte 0xFE363C89
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_w
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_killer
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte killer_copy_status
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C87
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetJumpSpeed
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0xFE363C82
	.4byte 0xF24A9680
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_OnOffStatus
	.4byte 0xFE363C83
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00400000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00200000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj friend_event_sky

# .data:0x184C | 0x4C8EC | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1864 | 0x4C904 | size: 0x4
.obj gap_04_0004C904_data, global
.hidden gap_04_0004C904_data
	.4byte 0x00000000
.endobj gap_04_0004C904_data
