.include "macros.inc"
.file "unit_green_chorobon.o"

# 0x00005578..0x0000568C | size: 0x114
.text
.balign 4

# .text:0x0 | 0x5578 | size: 0x114
.fn chorobon_copy_status, local
/* 00005578 0000563C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000557C 00005640  7C 08 02 A6 */	mflr r0
/* 00005580 00005644  90 01 00 34 */	stw r0, 0x34(r1)
/* 00005584 00005648  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00005588 0000564C  7C 7D 1B 78 */	mr r29, r3
/* 0000558C 00005650  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005590 00005654  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005594 00005658  4B FF FA 81 */	bl evtGetValue
/* 00005598 0000565C  7C 64 1B 78 */	mr r4, r3
/* 0000559C 00005660  7F A3 EB 78 */	mr r3, r29
/* 000055A0 00005664  4B FF FA 75 */	bl BattleTransID
/* 000055A4 00005668  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000055A8 0000566C  7C 7F 1B 78 */	mr r31, r3
/* 000055AC 00005670  7F A3 EB 78 */	mr r3, r29
/* 000055B0 00005674  4B FF FA 65 */	bl evtGetValue
/* 000055B4 00005678  7C 64 1B 78 */	mr r4, r3
/* 000055B8 0000567C  7F A3 EB 78 */	mr r3, r29
/* 000055BC 00005680  4B FF FA 59 */	bl BattleTransID
/* 000055C0 00005684  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000055C4 00005688  7C 7E 1B 78 */	mr r30, r3
/* 000055C8 0000568C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000055CC 00005690  80 05 00 00 */	lwz r0, 0x0(r5)
/* 000055D0 00005694  7F E4 FB 78 */	mr r4, r31
/* 000055D4 00005698  7C 1D 03 78 */	mr r29, r0
/* 000055D8 0000569C  7C 03 03 78 */	mr r3, r0
/* 000055DC 000056A0  4B FF FA 39 */	bl BattleGetUnitPtr
/* 000055E0 000056A4  7C 7F 1B 78 */	mr r31, r3
/* 000055E4 000056A8  7F A3 EB 78 */	mr r3, r29
/* 000055E8 000056AC  7F C4 F3 78 */	mr r4, r30
/* 000055EC 000056B0  4B FF FA 29 */	bl BattleGetUnitPtr
/* 000055F0 000056B4  A8 1F 01 0C */	lha r0, 0x10c(r31)
/* 000055F4 000056B8  B0 03 01 0C */	sth r0, 0x10c(r3)
/* 000055F8 000056BC  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 000055FC 000056C0  A8 83 01 08 */	lha r4, 0x108(r3)
/* 00005600 000056C4  7C 00 20 00 */	cmpw r0, r4
/* 00005604 000056C8  40 81 00 08 */	ble .L_0000560C
/* 00005608 000056CC  B0 83 01 0C */	sth r4, 0x10c(r3)
.L_0000560C:
/* 0000560C 000056D0  88 BF 01 23 */	lbz r5, 0x123(r31)
/* 00005610 000056D4  3C 00 43 30 */	lis r0, 0x4330
/* 00005614 000056D8  3C 80 00 00 */	lis r4, double_to_int_tou2_0000dc48@ha
/* 00005618 000056DC  90 01 00 08 */	stw r0, 0x8(r1)
/* 0000561C 000056E0  C8 44 00 00 */	lfd f2, double_to_int_tou2_0000dc48@l(r4)
/* 00005620 000056E4  98 A3 01 23 */	stb r5, 0x123(r3)
/* 00005624 000056E8  88 9F 01 24 */	lbz r4, 0x124(r31)
/* 00005628 000056EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 0000562C 000056F0  98 83 01 24 */	stb r4, 0x124(r3)
/* 00005630 000056F4  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 00005634 000056F8  90 03 02 08 */	stw r0, 0x208(r3)
/* 00005638 000056FC  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 0000563C 00005700  90 03 02 0C */	stw r0, 0x20c(r3)
/* 00005640 00005704  A8 83 01 0C */	lha r4, 0x10c(r3)
/* 00005644 00005708  A8 03 01 08 */	lha r0, 0x108(r3)
/* 00005648 0000570C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 0000564C 00005710  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00005650 00005714  90 81 00 0C */	stw r4, 0xc(r1)
/* 00005654 00005718  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005658 0000571C  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 0000565C 00005720  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00005660 00005724  EC 21 10 28 */	fsubs f1, f1, f2
/* 00005664 00005728  EC 00 10 28 */	fsubs f0, f0, f2
/* 00005668 0000572C  EC 01 00 24 */	fdivs f0, f1, f0
/* 0000566C 00005730  D0 03 02 14 */	stfs f0, 0x214(r3)
/* 00005670 00005734  D0 03 02 10 */	stfs f0, 0x210(r3)
/* 00005674 00005738  38 60 00 02 */	li r3, 0x2
/* 00005678 0000573C  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 0000567C 00005740  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00005680 00005744  7C 08 03 A6 */	mtlr r0
/* 00005684 00005748  38 21 00 30 */	addi r1, r1, 0x30
/* 00005688 0000574C  4E 80 00 20 */	blr
.endfn chorobon_copy_status

# 0x000042F8..0x00004510 | size: 0x218
.rodata
.balign 8

# .rodata:0x0 | 0x42F8 | size: 0x16
.obj str_btl_un_green_chorobo_tou2_0000da38, local
	.string "btl_un_green_chorobon"
.endobj str_btl_un_green_chorobo_tou2_0000da38

# .rodata:0x16 | 0x430E | size: 0x2
.obj gap_03_0000430E_rodata, global
.hidden gap_03_0000430E_rodata
	.2byte 0x0000
.endobj gap_03_0000430E_rodata

# .rodata:0x18 | 0x4310 | size: 0x18
.obj str_SFX_ENM_CHORO2_DAMAG_tou2_0000da50, local
	.string "SFX_ENM_CHORO2_DAMAGED1"
.endobj str_SFX_ENM_CHORO2_DAMAG_tou2_0000da50

# .rodata:0x30 | 0x4328 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000da68, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000da68

# .rodata:0x45 | 0x433D | size: 0x3
.obj gap_03_0000433D_rodata, global
.hidden gap_03_0000433D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000433D_rodata

# .rodata:0x48 | 0x4340 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_0000da80, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_0000da80

# .rodata:0x5C | 0x4354 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000da94, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000da94

# .rodata:0x75 | 0x436D | size: 0x3
.obj gap_03_0000436D_rodata, global
.hidden gap_03_0000436D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000436D_rodata

# .rodata:0x78 | 0x4370 | size: 0xD
.obj str_c_chorobon_g_tou2_0000dab0, local
	.string "c_chorobon_g"
.endobj str_c_chorobon_g_tou2_0000dab0

# .rodata:0x85 | 0x437D | size: 0x3
.obj gap_03_0000437D_rodata, global
.hidden gap_03_0000437D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000437D_rodata

# .rodata:0x88 | 0x4380 | size: 0x8
.obj str_CBN_K_1_tou2_0000dac0, local
	.string "CBN_K_1"
.endobj str_CBN_K_1_tou2_0000dac0

# .rodata:0x90 | 0x4388 | size: 0x16
.obj str_SFX_ENM_CHORO2_SPLIT_tou2_0000dac8, local
	.string "SFX_ENM_CHORO2_SPLIT1"
.endobj str_SFX_ENM_CHORO2_SPLIT_tou2_0000dac8

# .rodata:0xA6 | 0x439E | size: 0x2
.obj gap_03_0000439E_rodata, global
.hidden gap_03_0000439E_rodata
	.2byte 0x0000
.endobj gap_03_0000439E_rodata

# .rodata:0xA8 | 0x43A0 | size: 0x18
.obj str_SFX_ENM_CHORO2_SPLIT_tou2_0000dae0, local
	.string "SFX_ENM_CHORO2_SPLIT1_2"
.endobj str_SFX_ENM_CHORO2_SPLIT_tou2_0000dae0

# .rodata:0xC0 | 0x43B8 | size: 0x8
.obj str_CBN_S_1_tou2_0000daf8, local
	.string "CBN_S_1"
.endobj str_CBN_S_1_tou2_0000daf8

# .rodata:0xC8 | 0x43C0 | size: 0x16
.obj str_SFX_ENM_CHORO2_SPLIT_tou2_0000db00, local
	.string "SFX_ENM_CHORO2_SPLIT2"
.endobj str_SFX_ENM_CHORO2_SPLIT_tou2_0000db00

# .rodata:0xDE | 0x43D6 | size: 0x2
.obj gap_03_000043D6_rodata, global
.hidden gap_03_000043D6_rodata
	.2byte 0x0000
.endobj gap_03_000043D6_rodata

# .rodata:0xE0 | 0x43D8 | size: 0x8
.obj str_CBN_N_1_tou2_0000db18, local
	.string "CBN_N_1"
.endobj str_CBN_N_1_tou2_0000db18

# .rodata:0xE8 | 0x43E0 | size: 0x8
.obj str_CBN_Y_1_tou2_0000db20, local
	.string "CBN_Y_1"
.endobj str_CBN_Y_1_tou2_0000db20

# .rodata:0xF0 | 0x43E8 | size: 0x8
.obj str_CBN_X_1_tou2_0000db28, local
	.string "CBN_X_1"
.endobj str_CBN_X_1_tou2_0000db28

# .rodata:0xF8 | 0x43F0 | size: 0x8
.obj str_CBN_Q_1_tou2_0000db30, local
	.string "CBN_Q_1"
.endobj str_CBN_Q_1_tou2_0000db30

# .rodata:0x100 | 0x43F8 | size: 0x8
.obj str_CBN_D_1_tou2_0000db38, local
	.string "CBN_D_1"
.endobj str_CBN_D_1_tou2_0000db38

# .rodata:0x108 | 0x4400 | size: 0x8
.obj str_CBN_A_1_tou2_0000db40, local
	.string "CBN_A_1"
.endobj str_CBN_A_1_tou2_0000db40

# .rodata:0x110 | 0x4408 | size: 0x8
.obj str_CBN_R_1_tou2_0000db48, local
	.string "CBN_R_1"
.endobj str_CBN_R_1_tou2_0000db48

# .rodata:0x118 | 0x4410 | size: 0x8
.obj str_CBN_W_1_tou2_0000db50, local
	.string "CBN_W_1"
.endobj str_CBN_W_1_tou2_0000db50

# .rodata:0x120 | 0x4418 | size: 0x8
.obj str_CBN_T_1_tou2_0000db58, local
	.string "CBN_T_1"
.endobj str_CBN_T_1_tou2_0000db58

# .rodata:0x128 | 0x4420 | size: 0x18
.obj str_SFX_ENM_CHORO2_LANDI_tou2_0000db60, local
	.string "SFX_ENM_CHORO2_LANDING1"
.endobj str_SFX_ENM_CHORO2_LANDI_tou2_0000db60

# .rodata:0x140 | 0x4438 | size: 0x15
.obj str_SFX_ENM_CHORO2_MOVE1_tou2_0000db78, local
	.string "SFX_ENM_CHORO2_MOVE1"
.endobj str_SFX_ENM_CHORO2_MOVE1_tou2_0000db78

# .rodata:0x155 | 0x444D | size: 0x3
.obj gap_03_0000444D_rodata, global
.hidden gap_03_0000444D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000444D_rodata

# .rodata:0x158 | 0x4450 | size: 0x15
.obj str_SFX_ENM_CHORO2_WAIT2_tou2_0000db90, local
	.string "SFX_ENM_CHORO2_WAIT2"
.endobj str_SFX_ENM_CHORO2_WAIT2_tou2_0000db90

# .rodata:0x16D | 0x4465 | size: 0x3
.obj gap_03_00004465_rodata, global
.hidden gap_03_00004465_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004465_rodata

# .rodata:0x170 | 0x4468 | size: 0x15
.obj str_SFX_ENM_CHORO2_WAIT1_tou2_0000dba8, local
	.string "SFX_ENM_CHORO2_WAIT1"
.endobj str_SFX_ENM_CHORO2_WAIT1_tou2_0000dba8

# .rodata:0x185 | 0x447D | size: 0x3
.obj gap_03_0000447D_rodata, global
.hidden gap_03_0000447D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000447D_rodata

# .rodata:0x188 | 0x4480 | size: 0x19
.obj str_SFX_ENM_CHORO2_ATTAC_tou2_0000dbc0, local
	.string "SFX_ENM_CHORO2_ATTACK1_1"
.endobj str_SFX_ENM_CHORO2_ATTAC_tou2_0000dbc0

# .rodata:0x1A1 | 0x4499 | size: 0x3
.obj gap_03_00004499_rodata, global
.hidden gap_03_00004499_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004499_rodata

# .rodata:0x1A4 | 0x449C | size: 0x19
.obj str_SFX_ENM_CHORO2_ATTAC_tou2_0000dbdc, local
	.string "SFX_ENM_CHORO2_ATTACK1_2"
.endobj str_SFX_ENM_CHORO2_ATTAC_tou2_0000dbdc

# .rodata:0x1BD | 0x44B5 | size: 0x3
.obj gap_03_000044B5_rodata, global
.hidden gap_03_000044B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000044B5_rodata

# .rodata:0x1C0 | 0x44B8 | size: 0x8
.obj str_CBN_A_2_tou2_0000dbf8, local
	.string "CBN_A_2"
.endobj str_CBN_A_2_tou2_0000dbf8

# .rodata:0x1C8 | 0x44C0 | size: 0x8
.obj str_CBN_R_2_tou2_0000dc00, local
	.string "CBN_R_2"
.endobj str_CBN_R_2_tou2_0000dc00

# .rodata:0x1D0 | 0x44C8 | size: 0x17
.obj str_SFX_ENM_CHORO2_ATTAC_tou2_0000dc08, local
	.string "SFX_ENM_CHORO2_ATTACK2"
.endobj str_SFX_ENM_CHORO2_ATTAC_tou2_0000dc08

# .rodata:0x1E7 | 0x44DF | size: 0x1
.obj gap_03_000044DF_rodata, global
.hidden gap_03_000044DF_rodata
	.byte 0x00
.endobj gap_03_000044DF_rodata

# .rodata:0x1E8 | 0x44E0 | size: 0x1
.obj zero_tou2_0000dc20, local
	.byte 0x00
.endobj zero_tou2_0000dc20

# .rodata:0x1E9 | 0x44E1 | size: 0x3
.obj gap_03_000044E1_rodata, global
.hidden gap_03_000044E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000044E1_rodata

# .rodata:0x1EC | 0x44E4 | size: 0x9
.obj str_recovery_tou2_0000dc24, local
	.string "recovery"
.endobj str_recovery_tou2_0000dc24

# .rodata:0x1F5 | 0x44ED | size: 0x3
.obj gap_03_000044ED_rodata, global
.hidden gap_03_000044ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000044ED_rodata

# .rodata:0x1F8 | 0x44F0 | size: 0x17
.obj str_SFX_ENM_CHORO2_ATTAC_tou2_0000dc30, local
	.string "SFX_ENM_CHORO2_ATTACK3"
.endobj str_SFX_ENM_CHORO2_ATTAC_tou2_0000dc30
	.byte 0x00

# .rodata:0x210 | 0x4508 | size: 0x8
.obj double_to_int_tou2_0000dc48, local
	.double 4503601774854144
.endobj double_to_int_tou2_0000dc48

# 0x000233B0..0x00024F68 | size: 0x1BB8
.data
.balign 8

# .data:0x0 | 0x233B0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x233B8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x233BC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x233C0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x233C4 | size: 0x4
.obj gap_04_000233C4_data, global
.hidden gap_04_000233C4_data
	.4byte 0x00000000
.endobj gap_04_000233C4_data

# .data:0x18 | 0x233C8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x233D0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x233D4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x233D8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x233E0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x233E4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x233E8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x233EC | size: 0x4
.obj gap_04_000233EC_data, global
.hidden gap_04_000233EC_data
	.4byte 0x00000000
.endobj gap_04_000233EC_data

# .data:0x40 | 0x233F0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x233F8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x233FC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x23400 | size: 0xC4
.obj unit_green_chorobon_26_data_23400, global
	.4byte 0x00000056
	.4byte str_btl_un_green_chorobo_tou2_0000da38
	.4byte 0x00050000
	.4byte 0x01011300
	.4byte 0x0346003C
	.4byte 0x270F001C
	.4byte 0x00200005
	.4byte 0x00200000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41100000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x42000000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_CHORO2_DAMAG_tou2_0000da50
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000da68
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000da80
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000da94
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_green_chorobon_26_data_23400

# .data:0x114 | 0x234C4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x234C9 | size: 0x3
.obj gap_04_000234C9_data, global
.hidden gap_04_000234C9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000234C9_data

# .data:0x11C | 0x234CC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x234D1 | size: 0x3
.obj gap_04_000234D1_data, global
.hidden gap_04_000234D1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000234D1_data

# .data:0x124 | 0x234D4 | size: 0x16
.obj regist, local
	.ascii "UUPdUddFdZdZd_<UPdPdd_"
.endobj regist

# .data:0x13A | 0x234EA | size: 0x2
.obj gap_04_000234EA_data, global
.hidden gap_04_000234EA_data
	.2byte 0x0000
.endobj gap_04_000234EA_data

# .data:0x13C | 0x234EC | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_green_chorobo_tou2_0000da38
	.4byte str_c_chorobon_g_tou2_0000dab0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x188 | 0x23538 | size: 0xC0
.obj weapon_chorobon_drain_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000003
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
	.4byte 0x20001000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000047
	.4byte 0x00000000
	.4byte 0x80002004
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
.endobj weapon_chorobon_drain_attack

# .data:0x248 | 0x235F8 | size: 0x22C
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
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0001005E
	.4byte drain_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x000000AA
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
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
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
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
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000000A
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
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x474 | 0x23824 | size: 0x30
.obj entry_chorobon, local
	.4byte unit_green_chorobon_26_data_23400
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
.endobj entry_chorobon

# .data:0x4A4 | 0x23854 | size: 0x37C
.obj friend_event, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_CBN_K_1_tou2_0000dac0
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000078
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x0000002D
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_CHORO2_SPLIT_tou2_0000dac8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0002001C
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020036
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x0002001C
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0x00020036
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000007
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_CHORO2_SPLIT_tou2_0000dae0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_CBN_S_1_tou2_0000daf8
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0xF24A7C80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0xF24ACA80
	.4byte 0xFFFFFFFF
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_CHORO2_SPLIT_tou2_0000db00
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_chorobon
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte chorobon_copy_status
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0xF24A7C80
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFE363C8C
	.4byte 0x0000001E
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24AF280
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj friend_event

# .data:0x820 | 0x23BD0 | size: 0xC0
.obj weapon_chorobon_drain_attack_biribiri_counterd, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x00000000
	.4byte 0x01101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00002000
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
.endobj weapon_chorobon_drain_attack_biribiri_counterd

# .data:0x8E0 | 0x23C90 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_CBN_N_1_tou2_0000db18
	.4byte 0x00000002
	.4byte str_CBN_Y_1_tou2_0000db20
	.4byte 0x00000009
	.4byte str_CBN_Y_1_tou2_0000db20
	.4byte 0x00000005
	.4byte str_CBN_K_1_tou2_0000dac0
	.4byte 0x00000004
	.4byte str_CBN_X_1_tou2_0000db28
	.4byte 0x00000003
	.4byte str_CBN_X_1_tou2_0000db28
	.4byte 0x0000001C
	.4byte str_CBN_S_1_tou2_0000daf8
	.4byte 0x0000001D
	.4byte str_CBN_Q_1_tou2_0000db30
	.4byte 0x0000001E
	.4byte str_CBN_Q_1_tou2_0000db30
	.4byte 0x0000001F
	.4byte str_CBN_S_1_tou2_0000daf8
	.4byte 0x00000027
	.4byte str_CBN_D_1_tou2_0000db38
	.4byte 0x00000032
	.4byte str_CBN_A_1_tou2_0000db40
	.4byte 0x0000002A
	.4byte str_CBN_R_1_tou2_0000db48
	.4byte 0x00000028
	.4byte str_CBN_W_1_tou2_0000db50
	.4byte 0x00000038
	.4byte str_CBN_X_1_tou2_0000db28
	.4byte 0x00000039
	.4byte str_CBN_X_1_tou2_0000db28
	.4byte 0x00000041
	.4byte str_CBN_T_1_tou2_0000db58
	.4byte 0x00000045
	.4byte str_CBN_S_1_tou2_0000daf8
.endobj pose_table

# .data:0x970 | 0x23D20 | size: 0x70
.obj data_table, local
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

# .data:0x9E0 | 0x23D90 | size: 0x1EC
.obj rabbit_move, local
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B23
	.4byte 0xF24A798B
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFE363C85
	.4byte 0x00020036
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFE363C8B
	.4byte 0x0002001A
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0002001B
	.4byte 0xFE363C8C
	.4byte 0xFE363C88
	.4byte 0x0002001D
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x00000020
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B23
	.4byte 0xF24A798B
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_CHORO2_LANDI_tou2_0000db60
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B23
	.4byte 0xF24A798B
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A79DD
	.4byte 0xF24A7B75
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj rabbit_move

# .data:0xBCC | 0x23F7C | size: 0x50
.obj pose_sound_timing_table, local
	.4byte str_CBN_S_1_tou2_0000daf8
	.4byte 0x3F155555
	.4byte 0x00000000
	.4byte str_SFX_ENM_CHORO2_MOVE1_tou2_0000db78
	.4byte 0x00000001
	.4byte str_CBN_S_1_tou2_0000daf8
	.4byte 0x3F555555
	.4byte 0x00000000
	.4byte str_SFX_ENM_CHORO2_WAIT2_tou2_0000db90
	.4byte 0x00000001
	.4byte str_CBN_S_1_tou2_0000daf8
	.4byte 0x3FCAAAAB
	.4byte 0x00000000
	.4byte str_SFX_ENM_CHORO2_WAIT1_tou2_0000dba8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
.endobj pose_sound_timing_table

# .data:0xC1C | 0x23FCC | size: 0x7C
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseSoundTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_sound_timing_table
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_CHORO2_MOVE1_tou2_0000db78
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xC98 | 0x24048 | size: 0x28
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

# .data:0xCC0 | 0x24070 | size: 0xA4
.obj counter_damage_event, local
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamageCode
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte subsetevt_counter_damage
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

# .data:0xD64 | 0x24114 | size: 0x60
.obj return_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7CE6
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000028
	.4byte 0x0001005E
	.4byte rabbit_move
	.4byte 0x00000002
	.4byte 0x00000001
.endobj return_event

# .data:0xDC4 | 0x24174 | size: 0xDDC
.obj drain_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_chorobon_drain_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_chorobon_drain_attack
	.4byte 0xFE363C83
	.4byte 0xFE363C84
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
	.4byte weapon_chorobon_drain_attack
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
	.4byte weapon_chorobon_drain_attack
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7CE6
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000032
	.4byte 0x0001005E
	.4byte rabbit_move
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x0000015E
	.4byte 0x0003005B
	.4byte evt_btl_camera_nomove_y_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0xF24A7D4C
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_chorobon_drain_attack
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
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8680
	.4byte 0xF24A7B4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8080
	.4byte 0xF24A7B4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_CHORO2_LANDI_tou2_0000db60
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_CBN_N_1_tou2_0000db18
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckCounter
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_chorobon_drain_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000011
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x0000000E
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_chorobon_drain_attack
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_chorobon_drain_attack_biribiri_counterd
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_CHORO2_ATTAC_tou2_0000dbc0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000025
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000059
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x00020036
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x0002001C
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_CHORO2_ATTAC_tou2_0000dbdc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000014
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFEC
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A8080
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_CBN_A_2_tou2_0000dbf8
	.4byte 0x00010009
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_CBN_R_2_tou2_0000dc00
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A79B4
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7B4C
	.4byte 0xF24A7E80
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7A76
	.4byte 0xF24A7AB3
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_CHORO2_ATTAC_tou2_0000dc08
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_chorobon_drain_attack
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_chorobon_drain_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHpDamage
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7C80
	.4byte 0xF24A7C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7A2F
	.4byte 0xF24A7AFA
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7BC7
	.4byte 0xF24A7895
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B23
	.4byte 0xF24A798B
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7939
	.4byte 0xF24A7C6B
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_CHORO2_LANDI_tou2_0000db60
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B23
	.4byte 0xF24A798B
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A79DD
	.4byte 0xF24A7B75
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_CBN_W_1_tou2_0000db50
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7A67
	.4byte 0xF24A7A67
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x0000002D
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x0000000A
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_chorobon_drain_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_0000dc20
	.4byte str_recovery_tou2_0000dc24
	.4byte 0x00000007
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverFp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_0000dc20
	.4byte str_recovery_tou2_0000dc24
	.4byte 0x00000008
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0009005B
	.4byte btlevtcmd_SetMoveSoundDataWork
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_CHORO2_ATTAC_tou2_0000dc30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B23
	.4byte 0xF24A798B
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000006
	.4byte 0xFFFFFFFE
	.4byte 0x00010009
	.4byte 0x00000010
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B23
	.4byte 0xF24A798B
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0009005B
	.4byte btlevtcmd_SetMoveSoundDataWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000006
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B23
	.4byte 0xF24A798B
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A79DD
	.4byte 0xF24A7B75
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_nomove_y_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte return_event
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj drain_attack_event

# .data:0x1BA0 | 0x24F50 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
