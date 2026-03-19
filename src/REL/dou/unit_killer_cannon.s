.include "macros.inc"
.file "unit_killer_cannon.o"

# 0x00001F9C..0x0000210C | size: 0x170
.text
.balign 4

# .text:0x0 | 0x1F9C | size: 0xD0
.fn killer_get_angle, local
/* 00001F9C 00002060  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00001FA0 00002064  7C 08 02 A6 */	mflr r0
/* 00001FA4 00002068  90 01 00 44 */	stw r0, 0x44(r1)
/* 00001FA8 0000206C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 00001FAC 00002070  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 00001FB0 00002074  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 00001FB4 00002078  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 00001FB8 0000207C  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 00001FBC 00002080  F3 A1 00 18 */	psq_st f29, 0x18(r1), 0, qr0
/* 00001FC0 00002084  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00001FC4 00002088  7C 7E 1B 78 */	mr r30, r3
/* 00001FC8 0000208C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00001FCC 00002090  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00001FD0 00002094  4B FF E0 9D */	bl evtGetFloat
/* 00001FD4 00002098  FF A0 08 90 */	fmr f29, f1
/* 00001FD8 0000209C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001FDC 000020A0  7F C3 F3 78 */	mr r3, r30
/* 00001FE0 000020A4  4B FF E0 8D */	bl evtGetFloat
/* 00001FE4 000020A8  FF C0 08 90 */	fmr f30, f1
/* 00001FE8 000020AC  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00001FEC 000020B0  7F C3 F3 78 */	mr r3, r30
/* 00001FF0 000020B4  4B FF E0 7D */	bl evtGetFloat
/* 00001FF4 000020B8  FF E0 08 90 */	fmr f31, f1
/* 00001FF8 000020BC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00001FFC 000020C0  7F C3 F3 78 */	mr r3, r30
/* 00002000 000020C4  4B FF E0 6D */	bl evtGetFloat
/* 00002004 000020C8  EC 21 F0 28 */	fsubs f1, f1, f30
/* 00002008 000020CC  EC 1F E8 28 */	fsubs f0, f31, f29
/* 0000200C 000020D0  EC 21 00 24 */	fdivs f1, f1, f0
/* 00002010 000020D4  4B FF E0 5D */	bl atan
/* 00002014 000020D8  3C 80 00 00 */	lis r4, float_360_dou_000061a4@ha
/* 00002018 000020DC  FC 40 08 18 */	frsp f2, f1
/* 0000201C 000020E0  C0 24 00 00 */	lfs f1, float_360_dou_000061a4@l(r4)
/* 00002020 000020E4  3C 60 00 00 */	lis r3, float_6p2832_dou_000061a8@ha
/* 00002024 000020E8  C0 03 00 00 */	lfs f0, float_6p2832_dou_000061a8@l(r3)
/* 00002028 000020EC  7F C3 F3 78 */	mr r3, r30
/* 0000202C 000020F0  EC 21 00 B2 */	fmuls f1, f1, f2
/* 00002030 000020F4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00002034 000020F8  EC 21 00 24 */	fdivs f1, f1, f0
/* 00002038 000020FC  4B FF E0 35 */	bl evtSetFloat
/* 0000203C 00002100  38 60 00 02 */	li r3, 0x2
/* 00002040 00002104  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 00002044 00002108  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 00002048 0000210C  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 0000204C 00002110  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 00002050 00002114  E3 A1 00 18 */	psq_l f29, 0x18(r1), 0, qr0
/* 00002054 00002118  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 00002058 0000211C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000205C 00002120  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00002060 00002124  7C 08 03 A6 */	mtlr r0
/* 00002064 00002128  38 21 00 40 */	addi r1, r1, 0x40
/* 00002068 0000212C  4E 80 00 20 */	blr
.endfn killer_get_angle

# .text:0xD0 | 0x206C | size: 0xA0
.fn killer_copy_status, local
/* 0000206C 00002130  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00002070 00002134  7C 08 02 A6 */	mflr r0
/* 00002074 00002138  90 01 00 24 */	stw r0, 0x24(r1)
/* 00002078 0000213C  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000207C 00002140  7C 7D 1B 78 */	mr r29, r3
/* 00002080 00002144  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00002084 00002148  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00002088 0000214C  4B FF DF E5 */	bl evtGetValue
/* 0000208C 00002150  7C 64 1B 78 */	mr r4, r3
/* 00002090 00002154  7F A3 EB 78 */	mr r3, r29
/* 00002094 00002158  4B FF DF D9 */	bl BattleTransID
/* 00002098 0000215C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000209C 00002160  7C 7F 1B 78 */	mr r31, r3
/* 000020A0 00002164  7F A3 EB 78 */	mr r3, r29
/* 000020A4 00002168  4B FF DF C9 */	bl evtGetValue
/* 000020A8 0000216C  7C 64 1B 78 */	mr r4, r3
/* 000020AC 00002170  7F A3 EB 78 */	mr r3, r29
/* 000020B0 00002174  4B FF DF BD */	bl BattleTransID
/* 000020B4 00002178  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000020B8 0000217C  7C 7E 1B 78 */	mr r30, r3
/* 000020BC 00002180  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000020C0 00002184  80 05 00 00 */	lwz r0, 0x0(r5)
/* 000020C4 00002188  7F E4 FB 78 */	mr r4, r31
/* 000020C8 0000218C  7C 1D 03 78 */	mr r29, r0
/* 000020CC 00002190  7C 03 03 78 */	mr r3, r0
/* 000020D0 00002194  4B FF DF 9D */	bl BattleGetUnitPtr
/* 000020D4 00002198  7C 7F 1B 78 */	mr r31, r3
/* 000020D8 0000219C  7F A3 EB 78 */	mr r3, r29
/* 000020DC 000021A0  7F C4 F3 78 */	mr r4, r30
/* 000020E0 000021A4  4B FF DF 8D */	bl BattleGetUnitPtr
/* 000020E4 000021A8  88 1F 01 23 */	lbz r0, 0x123(r31)
/* 000020E8 000021AC  98 03 01 23 */	stb r0, 0x123(r3)
/* 000020EC 000021B0  88 1F 01 24 */	lbz r0, 0x124(r31)
/* 000020F0 000021B4  98 03 01 24 */	stb r0, 0x124(r3)
/* 000020F4 000021B8  38 60 00 02 */	li r3, 0x2
/* 000020F8 000021BC  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000020FC 000021C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00002100 000021C4  7C 08 03 A6 */	mtlr r0
/* 00002104 000021C8  38 21 00 20 */	addi r1, r1, 0x20
/* 00002108 000021CC  4E 80 00 20 */	blr
.endfn killer_copy_status

# 0x00002378..0x00002520 | size: 0x1A8
.rodata
.balign 8

# .rodata:0x0 | 0x2378 | size: 0x15
.obj str_btl_un_killer_cannon_dou_00006008, local
	.string "btl_un_killer_cannon"
.endobj str_btl_un_killer_cannon_dou_00006008

# .rodata:0x15 | 0x238D | size: 0x3
.obj gap_03_0000238D_rodata, global
.hidden gap_03_0000238D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000238D_rodata

# .rodata:0x18 | 0x2390 | size: 0x1E
.obj str_SFX_ENM_KILLER_CANON_dou_00006020, local
	.string "SFX_ENM_KILLER_CANON_DAMAGED1"
.endobj str_SFX_ENM_KILLER_CANON_dou_00006020

# .rodata:0x36 | 0x23AE | size: 0x2
.obj gap_03_000023AE_rodata, global
.hidden gap_03_000023AE_rodata
	.2byte 0x0000
.endobj gap_03_000023AE_rodata

# .rodata:0x38 | 0x23B0 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_dou_00006040, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_dou_00006040

# .rodata:0x4D | 0x23C5 | size: 0x3
.obj gap_03_000023C5_rodata, global
.hidden gap_03_000023C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023C5_rodata

# .rodata:0x50 | 0x23C8 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_dou_00006058, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_dou_00006058

# .rodata:0x64 | 0x23DC | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_dou_0000606c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_dou_0000606c

# .rodata:0x7D | 0x23F5 | size: 0x3
.obj gap_03_000023F5_rodata, global
.hidden gap_03_000023F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023F5_rodata

# .rodata:0x80 | 0x23F8 | size: 0xA
.obj str_c_killtai_dou_00006088, local
	.string "c_killtai"
.endobj str_c_killtai_dou_00006088

# .rodata:0x8A | 0x2402 | size: 0x2
.obj gap_03_00002402_rodata, global
.hidden gap_03_00002402_rodata
	.2byte 0x0000
.endobj gap_03_00002402_rodata

# .rodata:0x8C | 0x2404 | size: 0x8
.obj str_KTA_N_1_dou_00006094, local
	.string "KTA_N_1"
.endobj str_KTA_N_1_dou_00006094

# .rodata:0x94 | 0x240C | size: 0x8
.obj str_KTA_Y_1_dou_0000609c, local
	.string "KTA_Y_1"
.endobj str_KTA_Y_1_dou_0000609c

# .rodata:0x9C | 0x2414 | size: 0x8
.obj str_KTA_K_1_dou_000060a4, local
	.string "KTA_K_1"
.endobj str_KTA_K_1_dou_000060a4

# .rodata:0xA4 | 0x241C | size: 0x8
.obj str_KTA_X_1_dou_000060ac, local
	.string "KTA_X_1"
.endobj str_KTA_X_1_dou_000060ac

# .rodata:0xAC | 0x2424 | size: 0x8
.obj str_KTA_S_1_dou_000060b4, local
	.string "KTA_S_1"
.endobj str_KTA_S_1_dou_000060b4

# .rodata:0xB4 | 0x242C | size: 0x8
.obj str_KTA_Q_1_dou_000060bc, local
	.string "KTA_Q_1"
.endobj str_KTA_Q_1_dou_000060bc

# .rodata:0xBC | 0x2434 | size: 0x8
.obj str_KTA_A_1_dou_000060c4, local
	.string "KTA_A_1"
.endobj str_KTA_A_1_dou_000060c4

# .rodata:0xC4 | 0x243C | size: 0x8
.obj str_KTA_D_1_dou_000060cc, local
	.string "KTA_D_1"
.endobj str_KTA_D_1_dou_000060cc

# .rodata:0xCC | 0x2444 | size: 0x8
.obj str_KTA_T_1_dou_000060d4, local
	.string "KTA_T_1"
.endobj str_KTA_T_1_dou_000060d4

# .rodata:0xD4 | 0x244C | size: 0x8
.obj str_KTA_Z_3_dou_000060dc, local
	.string "KTA_Z_3"
.endobj str_KTA_Z_3_dou_000060dc

# .rodata:0xDC | 0x2454 | size: 0x8
.obj str_KTA_Z_2_dou_000060e4, local
	.string "KTA_Z_2"
.endobj str_KTA_Z_2_dou_000060e4

# .rodata:0xE4 | 0x245C | size: 0x1E
.obj str_SFX_ENM_KILLER_CANNO_dou_000060ec, local
	.string "SFX_ENM_KILLER_CANNON_CHARGE1"
.endobj str_SFX_ENM_KILLER_CANNO_dou_000060ec

# .rodata:0x102 | 0x247A | size: 0x2
.obj gap_03_0000247A_rodata, global
.hidden gap_03_0000247A_rodata
	.2byte 0x0000
.endobj gap_03_0000247A_rodata

# .rodata:0x104 | 0x247C | size: 0x9
.obj str_KTA_A_2A_dou_0000610c, local
	.string "KTA_A_2A"
.endobj str_KTA_A_2A_dou_0000610c

# .rodata:0x10D | 0x2485 | size: 0x3
.obj gap_03_00002485_rodata, global
.hidden gap_03_00002485_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002485_rodata

# .rodata:0x110 | 0x2488 | size: 0x8
.obj str_KTA_Z_1_dou_00006118, local
	.string "KTA_Z_1"
.endobj str_KTA_Z_1_dou_00006118

# .rodata:0x118 | 0x2490 | size: 0x17
.obj str_SFX_ENM_KILLER_CANNO_dou_00006120, local
	.string "SFX_ENM_KILLER_CANNON3"
.endobj str_SFX_ENM_KILLER_CANNO_dou_00006120

# .rodata:0x12F | 0x24A7 | size: 0x1
.obj gap_03_000024A7_rodata, global
.hidden gap_03_000024A7_rodata
	.byte 0x00
.endobj gap_03_000024A7_rodata

# .rodata:0x130 | 0x24A8 | size: 0x17
.obj str_SFX_ENM_KILLER_CANNO_dou_00006138, local
	.string "SFX_ENM_KILLER_CANNON1"
.endobj str_SFX_ENM_KILLER_CANNO_dou_00006138

# .rodata:0x147 | 0x24BF | size: 0x1
.obj gap_03_000024BF_rodata, global
.hidden gap_03_000024BF_rodata
	.byte 0x00
.endobj gap_03_000024BF_rodata

# .rodata:0x148 | 0x24C0 | size: 0x1
.obj zero_dou_00006150, local
	.byte 0x00
.endobj zero_dou_00006150

# .rodata:0x149 | 0x24C1 | size: 0x3
.obj gap_03_000024C1_rodata, global
.hidden gap_03_000024C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000024C1_rodata

# .rodata:0x14C | 0x24C4 | size: 0xC
.obj str_kemuri_test_dou_00006154, local
	.string "kemuri_test"
.endobj str_kemuri_test_dou_00006154

# .rodata:0x158 | 0x24D0 | size: 0x9
.obj str_KTA_A_3A_dou_00006160, local
	.string "KTA_A_3A"
.endobj str_KTA_A_3A_dou_00006160

# .rodata:0x161 | 0x24D9 | size: 0x3
.obj gap_03_000024D9_rodata, global
.hidden gap_03_000024D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000024D9_rodata

# .rodata:0x164 | 0x24DC | size: 0x8
.obj str_KTA_A_3_dou_0000616c, local
	.string "KTA_A_3"
.endobj str_KTA_A_3_dou_0000616c

# .rodata:0x16C | 0x24E4 | size: 0x17
.obj str_SFX_ENM_KILLER_CANNO_dou_00006174, local
	.string "SFX_ENM_KILLER_CANNON4"
.endobj str_SFX_ENM_KILLER_CANNO_dou_00006174

# .rodata:0x183 | 0x24FB | size: 0x1
.obj gap_03_000024FB_rodata, global
.hidden gap_03_000024FB_rodata
	.byte 0x00
.endobj gap_03_000024FB_rodata

# .rodata:0x184 | 0x24FC | size: 0x17
.obj str_SFX_ENM_KILLER_CANNO_dou_0000618c, local
	.string "SFX_ENM_KILLER_CANNON2"
.endobj str_SFX_ENM_KILLER_CANNO_dou_0000618c
	.byte 0x00

# .rodata:0x19C | 0x2514 | size: 0x4
.obj float_360_dou_000061a4, local
	.float 360
.endobj float_360_dou_000061a4

# .rodata:0x1A0 | 0x2518 | size: 0x4
.obj float_6p2832_dou_000061a8, local
	.float 6.283184
.endobj float_6p2832_dou_000061a8

# .rodata:0x1A4 | 0x251C | size: 0x4
.obj gap_03_0000251C_rodata, global
.hidden gap_03_0000251C_rodata
	.4byte 0x00000000
.endobj gap_03_0000251C_rodata

# 0x00014160..0x000159C8 | size: 0x1868
.data
.balign 8

# .data:0x0 | 0x14160 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x14168 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1416C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x14170 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x14174 | size: 0x4
.obj gap_04_00014174_data, global
.hidden gap_04_00014174_data
	.4byte 0x00000000
.endobj gap_04_00014174_data

# .data:0x18 | 0x14178 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x14180 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x14184 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x14188 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x14190 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x14194 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x14198 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1419C | size: 0x4
.obj gap_04_0001419C_data, global
.hidden gap_04_0001419C_data
	.4byte 0x00000000
.endobj gap_04_0001419C_data

# .data:0x40 | 0x141A0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x141A8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x141AC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x141B0 | size: 0xC4
.obj unit_killer_cannon_5_data_141B0, global
	.4byte 0x0000005A
	.4byte str_btl_un_killer_cannon_dou_00006008
	.4byte 0x00050000
	.4byte 0x01011600
	.4byte 0x0346033C
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
	.4byte str_SFX_ENM_KILLER_CANON_dou_00006020
	.4byte str_SFX_BTL_DAMAGE_FIRE1_dou_00006040
	.4byte str_SFX_BTL_DAMAGE_ICE1_dou_00006058
	.4byte str_SFX_BTL_DAMAGE_BIRIB_dou_0000606c
	.4byte 0x00000000
	.4byte regist
	.4byte 0x03000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_killer_cannon_5_data_141B0

# .data:0x114 | 0x14274 | size: 0x5
.obj defence, local
	.4byte 0x02020202
	.byte 0x02
.endobj defence

# .data:0x119 | 0x14279 | size: 0x3
.obj gap_04_00014279_data, global
.hidden gap_04_00014279_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00014279_data

# .data:0x11C | 0x1427C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x14281 | size: 0x3
.obj gap_04_00014281_data, global
.hidden gap_04_00014281_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00014281_data

# .data:0x124 | 0x14284 | size: 0x16
.obj regist, local
	.4byte 0x00000000
	.4byte 0x00966464
	.4byte 0x645A645A
	.4byte 0x645F3200
	.4byte 0x0F643264
	.2byte 0x645F
.endobj regist

# .data:0x13A | 0x1429A | size: 0x2
.obj gap_04_0001429A_data, global
.hidden gap_04_0001429A_data
	.2byte 0x0000
.endobj gap_04_0001429A_data

# .data:0x13C | 0x1429C | size: 0xE4
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_killer_cannon_dou_00006008
	.4byte str_c_killtai_dou_00006088
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
	.4byte str_btl_un_killer_cannon_dou_00006008
	.4byte str_c_killtai_dou_00006088
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
	.4byte str_btl_un_killer_cannon_dou_00006008
	.4byte str_c_killtai_dou_00006088
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

# .data:0x220 | 0x14380 | size: 0x30
.obj entry_killer, local
	.4byte unit_killer_5_data_13728
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

# .data:0x250 | 0x143B0 | size: 0x80
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KTA_N_1_dou_00006094
	.4byte 0x00000002
	.4byte str_KTA_Y_1_dou_0000609c
	.4byte 0x00000009
	.4byte str_KTA_Y_1_dou_0000609c
	.4byte 0x00000005
	.4byte str_KTA_K_1_dou_000060a4
	.4byte 0x00000004
	.4byte str_KTA_X_1_dou_000060ac
	.4byte 0x00000003
	.4byte str_KTA_X_1_dou_000060ac
	.4byte 0x0000001C
	.4byte str_KTA_S_1_dou_000060b4
	.4byte 0x0000001D
	.4byte str_KTA_Q_1_dou_000060bc
	.4byte 0x0000001E
	.4byte str_KTA_Q_1_dou_000060bc
	.4byte 0x0000001F
	.4byte str_KTA_A_1_dou_000060c4
	.4byte 0x00000027
	.4byte str_KTA_D_1_dou_000060cc
	.4byte 0x00000038
	.4byte str_KTA_X_1_dou_000060ac
	.4byte 0x00000039
	.4byte str_KTA_X_1_dou_000060ac
	.4byte 0x00000032
	.4byte str_KTA_A_1_dou_000060c4
	.4byte 0x00000041
	.4byte str_KTA_T_1_dou_000060d4
	.4byte 0x00000045
	.4byte str_KTA_S_1_dou_000060b4
.endobj pose_table

# .data:0x2D0 | 0x14430 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x2D8 | 0x14438 | size: 0xFC
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
	.4byte str_KTA_Z_3_dou_000060dc
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KTA_Z_2_dou_000060e4
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

# .data:0x3D4 | 0x14534 | size: 0x28
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

# .data:0x3FC | 0x1455C | size: 0xB88
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

# .data:0xF84 | 0x150E4 | size: 0x3D0
.obj friend_event, local
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KILLER_CANNO_dou_000060ec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KTA_A_2A_dou_0000610c
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KTA_Z_1_dou_00006118
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KTA_A_2A_dou_0000610c
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KTA_Z_1_dou_00006118
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KTA_A_1_dou_000060c4
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KILLER_CANNO_dou_00006120
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KILLER_CANNO_dou_00006138
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
	.4byte zero_dou_00006150
	.4byte str_kemuri_test_dou_00006154
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
	.4byte zero_dou_00006150
	.4byte str_kemuri_test_dou_00006154
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
	.4byte zero_dou_00006150
	.4byte str_kemuri_test_dou_00006154
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

# .data:0x1354 | 0x154B4 | size: 0x4F8
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
	.4byte str_SFX_ENM_KILLER_CANNO_dou_000060ec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KTA_A_3A_dou_00006160
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KTA_Z_3_dou_000060dc
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KTA_A_3A_dou_00006160
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KTA_Z_3_dou_000060dc
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KTA_A_3_dou_0000616c
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KILLER_CANNO_dou_00006174
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KILLER_CANNO_dou_0000618c
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
	.4byte zero_dou_00006150
	.4byte str_kemuri_test_dou_00006154
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
	.4byte zero_dou_00006150
	.4byte str_kemuri_test_dou_00006154
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
	.4byte zero_dou_00006150
	.4byte str_kemuri_test_dou_00006154
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

# .data:0x184C | 0x159AC | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1864 | 0x159C4 | size: 0x4
.obj gap_04_000159C4_data, global
.hidden gap_04_000159C4_data
	.4byte 0x00000000
.endobj gap_04_000159C4_data
