.include "macros.inc"
.file "unit_green_chorobon.o"

# 0x0000B78C..0x0000B8A0 | size: 0x114
.text
.balign 4

# .text:0x0 | 0xB78C | size: 0x114
.fn chorobon_copy_status, local
/* 0000B78C 0000B850  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000B790 0000B854  7C 08 02 A6 */	mflr r0
/* 0000B794 0000B858  90 01 00 34 */	stw r0, 0x34(r1)
/* 0000B798 0000B85C  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 0000B79C 0000B860  7C 7D 1B 78 */	mr r29, r3
/* 0000B7A0 0000B864  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000B7A4 0000B868  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000B7A8 0000B86C  4B FF 52 01 */	bl evtGetValue
/* 0000B7AC 0000B870  7C 64 1B 78 */	mr r4, r3
/* 0000B7B0 0000B874  7F A3 EB 78 */	mr r3, r29
/* 0000B7B4 0000B878  4B FF 51 F5 */	bl BattleTransID
/* 0000B7B8 0000B87C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000B7BC 0000B880  7C 7F 1B 78 */	mr r31, r3
/* 0000B7C0 0000B884  7F A3 EB 78 */	mr r3, r29
/* 0000B7C4 0000B888  4B FF 51 E5 */	bl evtGetValue
/* 0000B7C8 0000B88C  7C 64 1B 78 */	mr r4, r3
/* 0000B7CC 0000B890  7F A3 EB 78 */	mr r3, r29
/* 0000B7D0 0000B894  4B FF 51 D9 */	bl BattleTransID
/* 0000B7D4 0000B898  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000B7D8 0000B89C  7C 7E 1B 78 */	mr r30, r3
/* 0000B7DC 0000B8A0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000B7E0 0000B8A4  80 05 00 00 */	lwz r0, 0x0(r5)
/* 0000B7E4 0000B8A8  7F E4 FB 78 */	mr r4, r31
/* 0000B7E8 0000B8AC  7C 1D 03 78 */	mr r29, r0
/* 0000B7EC 0000B8B0  7C 03 03 78 */	mr r3, r0
/* 0000B7F0 0000B8B4  4B FF 51 B9 */	bl BattleGetUnitPtr
/* 0000B7F4 0000B8B8  7C 7F 1B 78 */	mr r31, r3
/* 0000B7F8 0000B8BC  7F A3 EB 78 */	mr r3, r29
/* 0000B7FC 0000B8C0  7F C4 F3 78 */	mr r4, r30
/* 0000B800 0000B8C4  4B FF 51 A9 */	bl BattleGetUnitPtr
/* 0000B804 0000B8C8  A8 1F 01 0C */	lha r0, 0x10c(r31)
/* 0000B808 0000B8CC  B0 03 01 0C */	sth r0, 0x10c(r3)
/* 0000B80C 0000B8D0  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 0000B810 0000B8D4  A8 83 01 08 */	lha r4, 0x108(r3)
/* 0000B814 0000B8D8  7C 00 20 00 */	cmpw r0, r4
/* 0000B818 0000B8DC  40 81 00 08 */	ble .L_0000B820
/* 0000B81C 0000B8E0  B0 83 01 0C */	sth r4, 0x10c(r3)
.L_0000B820:
/* 0000B820 0000B8E4  88 BF 01 23 */	lbz r5, 0x123(r31)
/* 0000B824 0000B8E8  3C 00 43 30 */	lis r0, 0x4330
/* 0000B828 0000B8EC  3C 80 00 00 */	lis r4, double_to_int_muj_00013f28@ha
/* 0000B82C 0000B8F0  90 01 00 08 */	stw r0, 0x8(r1)
/* 0000B830 0000B8F4  C8 44 00 00 */	lfd f2, double_to_int_muj_00013f28@l(r4)
/* 0000B834 0000B8F8  98 A3 01 23 */	stb r5, 0x123(r3)
/* 0000B838 0000B8FC  88 9F 01 24 */	lbz r4, 0x124(r31)
/* 0000B83C 0000B900  90 01 00 10 */	stw r0, 0x10(r1)
/* 0000B840 0000B904  98 83 01 24 */	stb r4, 0x124(r3)
/* 0000B844 0000B908  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 0000B848 0000B90C  90 03 02 08 */	stw r0, 0x208(r3)
/* 0000B84C 0000B910  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 0000B850 0000B914  90 03 02 0C */	stw r0, 0x20c(r3)
/* 0000B854 0000B918  A8 83 01 0C */	lha r4, 0x10c(r3)
/* 0000B858 0000B91C  A8 03 01 08 */	lha r0, 0x108(r3)
/* 0000B85C 0000B920  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 0000B860 0000B924  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 0000B864 0000B928  90 81 00 0C */	stw r4, 0xc(r1)
/* 0000B868 0000B92C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000B86C 0000B930  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 0000B870 0000B934  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 0000B874 0000B938  EC 21 10 28 */	fsubs f1, f1, f2
/* 0000B878 0000B93C  EC 00 10 28 */	fsubs f0, f0, f2
/* 0000B87C 0000B940  EC 01 00 24 */	fdivs f0, f1, f0
/* 0000B880 0000B944  D0 03 02 14 */	stfs f0, 0x214(r3)
/* 0000B884 0000B948  D0 03 02 10 */	stfs f0, 0x210(r3)
/* 0000B888 0000B94C  38 60 00 02 */	li r3, 0x2
/* 0000B88C 0000B950  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 0000B890 0000B954  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000B894 0000B958  7C 08 03 A6 */	mtlr r0
/* 0000B898 0000B95C  38 21 00 30 */	addi r1, r1, 0x30
/* 0000B89C 0000B960  4E 80 00 20 */	blr
.endfn chorobon_copy_status

# 0x00006068..0x00006280 | size: 0x218
.rodata
.balign 8

# .rodata:0x0 | 0x6068 | size: 0x16
.obj str_btl_un_green_chorobo_muj_00013d18, local
	.string "btl_un_green_chorobon"
.endobj str_btl_un_green_chorobo_muj_00013d18

# .rodata:0x16 | 0x607E | size: 0x2
.obj gap_03_0000607E_rodata, global
.hidden gap_03_0000607E_rodata
	.2byte 0x0000
.endobj gap_03_0000607E_rodata

# .rodata:0x18 | 0x6080 | size: 0x18
.obj str_SFX_ENM_CHORO2_DAMAG_muj_00013d30, local
	.string "SFX_ENM_CHORO2_DAMAGED1"
.endobj str_SFX_ENM_CHORO2_DAMAG_muj_00013d30

# .rodata:0x30 | 0x6098 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_muj_00013d48, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_muj_00013d48

# .rodata:0x45 | 0x60AD | size: 0x3
.obj gap_03_000060AD_rodata, global
.hidden gap_03_000060AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000060AD_rodata

# .rodata:0x48 | 0x60B0 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_muj_00013d60, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_muj_00013d60

# .rodata:0x5C | 0x60C4 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_muj_00013d74, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_muj_00013d74

# .rodata:0x75 | 0x60DD | size: 0x3
.obj gap_03_000060DD_rodata, global
.hidden gap_03_000060DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000060DD_rodata

# .rodata:0x78 | 0x60E0 | size: 0xD
.obj str_c_chorobon_g_muj_00013d90, local
	.string "c_chorobon_g"
.endobj str_c_chorobon_g_muj_00013d90

# .rodata:0x85 | 0x60ED | size: 0x3
.obj gap_03_000060ED_rodata, global
.hidden gap_03_000060ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000060ED_rodata

# .rodata:0x88 | 0x60F0 | size: 0x8
.obj str_CBN_K_1_muj_00013da0, local
	.string "CBN_K_1"
.endobj str_CBN_K_1_muj_00013da0

# .rodata:0x90 | 0x60F8 | size: 0x16
.obj str_SFX_ENM_CHORO2_SPLIT_muj_00013da8, local
	.string "SFX_ENM_CHORO2_SPLIT1"
.endobj str_SFX_ENM_CHORO2_SPLIT_muj_00013da8

# .rodata:0xA6 | 0x610E | size: 0x2
.obj gap_03_0000610E_rodata, global
.hidden gap_03_0000610E_rodata
	.2byte 0x0000
.endobj gap_03_0000610E_rodata

# .rodata:0xA8 | 0x6110 | size: 0x18
.obj str_SFX_ENM_CHORO2_SPLIT_muj_00013dc0, local
	.string "SFX_ENM_CHORO2_SPLIT1_2"
.endobj str_SFX_ENM_CHORO2_SPLIT_muj_00013dc0

# .rodata:0xC0 | 0x6128 | size: 0x8
.obj str_CBN_S_1_muj_00013dd8, local
	.string "CBN_S_1"
.endobj str_CBN_S_1_muj_00013dd8

# .rodata:0xC8 | 0x6130 | size: 0x16
.obj str_SFX_ENM_CHORO2_SPLIT_muj_00013de0, local
	.string "SFX_ENM_CHORO2_SPLIT2"
.endobj str_SFX_ENM_CHORO2_SPLIT_muj_00013de0

# .rodata:0xDE | 0x6146 | size: 0x2
.obj gap_03_00006146_rodata, global
.hidden gap_03_00006146_rodata
	.2byte 0x0000
.endobj gap_03_00006146_rodata

# .rodata:0xE0 | 0x6148 | size: 0x8
.obj str_CBN_N_1_muj_00013df8, local
	.string "CBN_N_1"
.endobj str_CBN_N_1_muj_00013df8

# .rodata:0xE8 | 0x6150 | size: 0x8
.obj str_CBN_Y_1_muj_00013e00, local
	.string "CBN_Y_1"
.endobj str_CBN_Y_1_muj_00013e00

# .rodata:0xF0 | 0x6158 | size: 0x8
.obj str_CBN_X_1_muj_00013e08, local
	.string "CBN_X_1"
.endobj str_CBN_X_1_muj_00013e08

# .rodata:0xF8 | 0x6160 | size: 0x8
.obj str_CBN_Q_1_muj_00013e10, local
	.string "CBN_Q_1"
.endobj str_CBN_Q_1_muj_00013e10

# .rodata:0x100 | 0x6168 | size: 0x8
.obj dat_muj_00013e18, local
	.string "CBN_D_1"
.endobj dat_muj_00013e18

# .rodata:0x108 | 0x6170 | size: 0x8
.obj dat_muj_00013e20, local
	.string "CBN_A_1"
.endobj dat_muj_00013e20

# .rodata:0x110 | 0x6178 | size: 0x8
.obj str_CBN_R_1_muj_00013e28, local
	.string "CBN_R_1"
.endobj str_CBN_R_1_muj_00013e28

# .rodata:0x118 | 0x6180 | size: 0x8
.obj str_CBN_W_1_muj_00013e30, local
	.string "CBN_W_1"
.endobj str_CBN_W_1_muj_00013e30

# .rodata:0x120 | 0x6188 | size: 0x8
.obj str_CBN_T_1_muj_00013e38, local
	.string "CBN_T_1"
.endobj str_CBN_T_1_muj_00013e38

# .rodata:0x128 | 0x6190 | size: 0x18
.obj str_SFX_ENM_CHORO2_LANDI_muj_00013e40, local
	.string "SFX_ENM_CHORO2_LANDING1"
.endobj str_SFX_ENM_CHORO2_LANDI_muj_00013e40

# .rodata:0x140 | 0x61A8 | size: 0x15
.obj str_SFX_ENM_CHORO2_MOVE1_muj_00013e58, local
	.string "SFX_ENM_CHORO2_MOVE1"
.endobj str_SFX_ENM_CHORO2_MOVE1_muj_00013e58

# .rodata:0x155 | 0x61BD | size: 0x3
.obj gap_03_000061BD_rodata, global
.hidden gap_03_000061BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000061BD_rodata

# .rodata:0x158 | 0x61C0 | size: 0x15
.obj str_SFX_ENM_CHORO2_WAIT2_muj_00013e70, local
	.string "SFX_ENM_CHORO2_WAIT2"
.endobj str_SFX_ENM_CHORO2_WAIT2_muj_00013e70

# .rodata:0x16D | 0x61D5 | size: 0x3
.obj gap_03_000061D5_rodata, global
.hidden gap_03_000061D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000061D5_rodata

# .rodata:0x170 | 0x61D8 | size: 0x15
.obj str_SFX_ENM_CHORO2_WAIT1_muj_00013e88, local
	.string "SFX_ENM_CHORO2_WAIT1"
.endobj str_SFX_ENM_CHORO2_WAIT1_muj_00013e88

# .rodata:0x185 | 0x61ED | size: 0x3
.obj gap_03_000061ED_rodata, global
.hidden gap_03_000061ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000061ED_rodata

# .rodata:0x188 | 0x61F0 | size: 0x19
.obj str_SFX_ENM_CHORO2_ATTAC_muj_00013ea0, local
	.string "SFX_ENM_CHORO2_ATTACK1_1"
.endobj str_SFX_ENM_CHORO2_ATTAC_muj_00013ea0

# .rodata:0x1A1 | 0x6209 | size: 0x3
.obj gap_03_00006209_rodata, global
.hidden gap_03_00006209_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006209_rodata

# .rodata:0x1A4 | 0x620C | size: 0x19
.obj str_SFX_ENM_CHORO2_ATTAC_muj_00013ebc, local
	.string "SFX_ENM_CHORO2_ATTACK1_2"
.endobj str_SFX_ENM_CHORO2_ATTAC_muj_00013ebc

# .rodata:0x1BD | 0x6225 | size: 0x3
.obj gap_03_00006225_rodata, global
.hidden gap_03_00006225_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006225_rodata

# .rodata:0x1C0 | 0x6228 | size: 0x8
.obj dat_muj_00013ed8, local
	.string "CBN_A_2"
.endobj dat_muj_00013ed8

# .rodata:0x1C8 | 0x6230 | size: 0x8
.obj str_CBN_R_2_muj_00013ee0, local
	.string "CBN_R_2"
.endobj str_CBN_R_2_muj_00013ee0

# .rodata:0x1D0 | 0x6238 | size: 0x17
.obj str_SFX_ENM_CHORO2_ATTAC_muj_00013ee8, local
	.string "SFX_ENM_CHORO2_ATTACK2"
.endobj str_SFX_ENM_CHORO2_ATTAC_muj_00013ee8

# .rodata:0x1E7 | 0x624F | size: 0x1
.obj gap_03_0000624F_rodata, global
.hidden gap_03_0000624F_rodata
	.byte 0x00
.endobj gap_03_0000624F_rodata

# .rodata:0x1E8 | 0x6250 | size: 0x1
.obj zero_muj_00013f00, local
	.byte 0x00
.endobj zero_muj_00013f00

# .rodata:0x1E9 | 0x6251 | size: 0x3
.obj gap_03_00006251_rodata, global
.hidden gap_03_00006251_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006251_rodata

# .rodata:0x1EC | 0x6254 | size: 0x9
.obj str_recovery_muj_00013f04, local
	.string "recovery"
.endobj str_recovery_muj_00013f04

# .rodata:0x1F5 | 0x625D | size: 0x3
.obj gap_03_0000625D_rodata, global
.hidden gap_03_0000625D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000625D_rodata

# .rodata:0x1F8 | 0x6260 | size: 0x17
.obj str_SFX_ENM_CHORO2_ATTAC_muj_00013f10, local
	.string "SFX_ENM_CHORO2_ATTACK3"
.endobj str_SFX_ENM_CHORO2_ATTAC_muj_00013f10
	.byte 0x00

# .rodata:0x210 | 0x6278 | size: 0x8
.obj double_to_int_muj_00013f28, local
	.double 4503601774854144
.endobj double_to_int_muj_00013f28

# 0x00036660..0x00038218 | size: 0x1BB8
.data
.balign 8

# .data:0x0 | 0x36660 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x36668 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3666C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x36670 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x36674 | size: 0x4
.obj gap_04_00036674_data, global
.hidden gap_04_00036674_data
	.4byte 0x00000000
.endobj gap_04_00036674_data

# .data:0x18 | 0x36678 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x36680 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x36684 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x36688 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x36690 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x36694 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x36698 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3669C | size: 0x4
.obj gap_04_0003669C_data, global
.hidden gap_04_0003669C_data
	.4byte 0x00000000
.endobj gap_04_0003669C_data

# .data:0x40 | 0x366A0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x366A8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x366AC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x366B0 | size: 0xC4
.obj unit_green_chorobon_19_data_366B0, global
	.4byte 0x00000056
	.4byte str_btl_un_green_chorobo_muj_00013d18
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
	.4byte str_SFX_ENM_CHORO2_DAMAG_muj_00013d30
	.4byte str_SFX_BTL_DAMAGE_FIRE1_muj_00013d48
	.4byte str_SFX_BTL_DAMAGE_ICE1_muj_00013d60
	.4byte str_SFX_BTL_DAMAGE_BIRIB_muj_00013d74
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_green_chorobon_19_data_366B0

# .data:0x114 | 0x36774 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x36779 | size: 0x3
.obj gap_04_00036779_data, global
.hidden gap_04_00036779_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00036779_data

# .data:0x11C | 0x3677C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x36781 | size: 0x3
.obj gap_04_00036781_data, global
.hidden gap_04_00036781_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00036781_data

# .data:0x124 | 0x36784 | size: 0x16
.obj regist, local
	.ascii "UUPdUddFdZdZd_<UPdPdd_"
.endobj regist

# .data:0x13A | 0x3679A | size: 0x2
.obj gap_04_0003679A_data, global
.hidden gap_04_0003679A_data
	.2byte 0x0000
.endobj gap_04_0003679A_data

# .data:0x13C | 0x3679C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_green_chorobo_muj_00013d18
	.4byte str_c_chorobon_g_muj_00013d90
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

# .data:0x188 | 0x367E8 | size: 0xC0
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

# .data:0x248 | 0x368A8 | size: 0x22C
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

# .data:0x474 | 0x36AD4 | size: 0x30
.obj entry_chorobon, local
	.4byte unit_green_chorobon_19_data_366B0
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

# .data:0x4A4 | 0x36B04 | size: 0x37C
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
	.4byte str_CBN_K_1_muj_00013da0
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
	.4byte str_SFX_ENM_CHORO2_SPLIT_muj_00013da8
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
	.4byte str_SFX_ENM_CHORO2_SPLIT_muj_00013dc0
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
	.4byte str_CBN_S_1_muj_00013dd8
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
	.4byte str_SFX_ENM_CHORO2_SPLIT_muj_00013de0
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

# .data:0x820 | 0x36E80 | size: 0xC0
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

# .data:0x8E0 | 0x36F40 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_CBN_N_1_muj_00013df8
	.4byte 0x00000002
	.4byte str_CBN_Y_1_muj_00013e00
	.4byte 0x00000009
	.4byte str_CBN_Y_1_muj_00013e00
	.4byte 0x00000005
	.4byte str_CBN_K_1_muj_00013da0
	.4byte 0x00000004
	.4byte str_CBN_X_1_muj_00013e08
	.4byte 0x00000003
	.4byte str_CBN_X_1_muj_00013e08
	.4byte 0x0000001C
	.4byte str_CBN_S_1_muj_00013dd8
	.4byte 0x0000001D
	.4byte str_CBN_Q_1_muj_00013e10
	.4byte 0x0000001E
	.4byte str_CBN_Q_1_muj_00013e10
	.4byte 0x0000001F
	.4byte str_CBN_S_1_muj_00013dd8
	.4byte 0x00000027
	.4byte dat_muj_00013e18
	.4byte 0x00000032
	.4byte dat_muj_00013e20
	.4byte 0x0000002A
	.4byte str_CBN_R_1_muj_00013e28
	.4byte 0x00000028
	.4byte str_CBN_W_1_muj_00013e30
	.4byte 0x00000038
	.4byte str_CBN_X_1_muj_00013e08
	.4byte 0x00000039
	.4byte str_CBN_X_1_muj_00013e08
	.4byte 0x00000041
	.4byte str_CBN_T_1_muj_00013e38
	.4byte 0x00000045
	.4byte str_CBN_S_1_muj_00013dd8
.endobj pose_table

# .data:0x970 | 0x36FD0 | size: 0x70
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

# .data:0x9E0 | 0x37040 | size: 0x1EC
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
	.4byte str_SFX_ENM_CHORO2_LANDI_muj_00013e40
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

# .data:0xBCC | 0x3722C | size: 0x50
.obj pose_sound_timing_table, local
	.4byte str_CBN_S_1_muj_00013dd8
	.4byte 0x3F155555
	.4byte 0x00000000
	.4byte str_SFX_ENM_CHORO2_MOVE1_muj_00013e58
	.4byte 0x00000001
	.4byte str_CBN_S_1_muj_00013dd8
	.4byte 0x3F555555
	.4byte 0x00000000
	.4byte str_SFX_ENM_CHORO2_WAIT2_muj_00013e70
	.4byte 0x00000001
	.4byte str_CBN_S_1_muj_00013dd8
	.4byte 0x3FCAAAAB
	.4byte 0x00000000
	.4byte str_SFX_ENM_CHORO2_WAIT1_muj_00013e88
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
.endobj pose_sound_timing_table

# .data:0xC1C | 0x3727C | size: 0x7C
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
	.4byte str_SFX_ENM_CHORO2_MOVE1_muj_00013e58
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xC98 | 0x372F8 | size: 0x28
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

# .data:0xCC0 | 0x37320 | size: 0xA4
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

# .data:0xD64 | 0x373C4 | size: 0x60
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

# .data:0xDC4 | 0x37424 | size: 0xDDC
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
	.4byte str_SFX_ENM_CHORO2_LANDI_muj_00013e40
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_CBN_N_1_muj_00013df8
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
	.4byte str_SFX_ENM_CHORO2_ATTAC_muj_00013ea0
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
	.4byte str_SFX_ENM_CHORO2_ATTAC_muj_00013ebc
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
	.4byte dat_muj_00013ed8
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
	.4byte str_CBN_R_2_muj_00013ee0
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
	.4byte str_SFX_ENM_CHORO2_ATTAC_muj_00013ee8
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
	.4byte str_SFX_ENM_CHORO2_LANDI_muj_00013e40
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
	.4byte str_CBN_W_1_muj_00013e30
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
	.4byte zero_muj_00013f00
	.4byte str_recovery_muj_00013f04
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
	.4byte zero_muj_00013f00
	.4byte str_recovery_muj_00013f04
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
	.4byte str_SFX_ENM_CHORO2_ATTAC_muj_00013f10
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

# .data:0x1BA0 | 0x38200 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
