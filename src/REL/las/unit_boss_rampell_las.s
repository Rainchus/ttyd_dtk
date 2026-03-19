.include "macros.inc"
.file "unit_boss_rampell_las.o"

# 0x0000846C..0x00008770 | size: 0x304
.text
.balign 4

# .text:0x0 | 0x846C | size: 0x118
.fn _krb_get_dir, local
/* 0000846C 00008538  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00008470 0000853C  7C 08 02 A6 */	mflr r0
/* 00008474 00008540  90 01 00 64 */	stw r0, 0x64(r1)
/* 00008478 00008544  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 0000847C 00008548  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00008480 0000854C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00008484 00008550  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00008488 00008554  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 0000848C 00008558  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00008490 0000855C  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00008494 00008560  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00008498 00008564  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000849C 00008568  7C 7E 1B 78 */	mr r30, r3
/* 000084A0 0000856C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000084A4 00008570  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000084A8 00008574  4B FF 7C 95 */	bl evtGetFloat
/* 000084AC 00008578  FF 80 08 90 */	fmr f28, f1
/* 000084B0 0000857C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000084B4 00008580  7F C3 F3 78 */	mr r3, r30
/* 000084B8 00008584  4B FF 7C 85 */	bl evtGetFloat
/* 000084BC 00008588  FF A0 08 90 */	fmr f29, f1
/* 000084C0 0000858C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000084C4 00008590  7F C3 F3 78 */	mr r3, r30
/* 000084C8 00008594  4B FF 7C 75 */	bl evtGetFloat
/* 000084CC 00008598  FF C0 08 90 */	fmr f30, f1
/* 000084D0 0000859C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000084D4 000085A0  7F C3 F3 78 */	mr r3, r30
/* 000084D8 000085A4  4B FF 7C 65 */	bl evtGetFloat
/* 000084DC 000085A8  FF E0 08 90 */	fmr f31, f1
/* 000084E0 000085AC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000084E4 000085B0  7F C3 F3 78 */	mr r3, r30
/* 000084E8 000085B4  4B FF 7C 55 */	bl evtGetValue
/* 000084EC 000085B8  3C 80 00 00 */	lis r4, zero_las_0001816c@ha
/* 000084F0 000085BC  EC 3E E0 28 */	fsubs f1, f30, f28
/* 000084F4 000085C0  C0 04 00 00 */	lfs f0, zero_las_0001816c@l(r4)
/* 000084F8 000085C4  EC 5F E8 28 */	fsubs f2, f31, f29
/* 000084FC 000085C8  7C 65 1B 78 */	mr r5, r3
/* 00008500 000085CC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00008504 000085D0  40 82 00 20 */	bne .L_00008524
/* 00008508 000085D4  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 0000850C 000085D8  40 82 00 18 */	bne .L_00008524
/* 00008510 000085DC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00008514 000085E0  7F C3 F3 78 */	mr r3, r30
/* 00008518 000085E4  4B FF 7C 25 */	bl evtSetValue
/* 0000851C 000085E8  38 60 00 02 */	li r3, 0x2
/* 00008520 000085EC  48 00 00 30 */	b .L_00008550
.L_00008524:
/* 00008524 000085F0  3C 60 00 00 */	lis r3, zero_las_0001816c@ha
/* 00008528 000085F4  C0 63 00 00 */	lfs f3, zero_las_0001816c@l(r3)
/* 0000852C 000085F8  FC 80 18 90 */	fmr f4, f3
/* 00008530 000085FC  4B FF 7C 0D */	bl angleABf_1
/* 00008534 00008600  FC 00 08 1E */	fctiwz f0, f1
/* 00008538 00008604  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000853C 00008608  7F C3 F3 78 */	mr r3, r30
/* 00008540 0000860C  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00008544 00008610  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00008548 00008614  4B FF 7B F5 */	bl evtSetValue
/* 0000854C 00008618  38 60 00 02 */	li r3, 0x2
.L_00008550:
/* 00008550 0000861C  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00008554 00008620  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00008558 00008624  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 0000855C 00008628  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00008560 0000862C  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00008564 00008630  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00008568 00008634  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 0000856C 00008638  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00008570 0000863C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00008574 00008640  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00008578 00008644  7C 08 03 A6 */	mtlr r0
/* 0000857C 00008648  38 21 00 60 */	addi r1, r1, 0x60
/* 00008580 0000864C  4E 80 00 20 */	blr
.endfn _krb_get_dir

# .text:0x118 | 0x8584 | size: 0x6C
.fn unk_las_00008650, local
/* 00008584 00008650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00008588 00008654  7C 08 02 A6 */	mflr r0
/* 0000858C 00008658  90 01 00 14 */	stw r0, 0x14(r1)
/* 00008590 0000865C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00008594 00008660  7C 7F 1B 78 */	mr r31, r3
/* 00008598 00008664  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000859C 00008668  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000085A0 0000866C  4B FF 7B 9D */	bl evtGetValue
/* 000085A4 00008670  7C 60 1B 78 */	mr r0, r3
/* 000085A8 00008674  7F E3 FB 78 */	mr r3, r31
/* 000085AC 00008678  7C 04 03 78 */	mr r4, r0
/* 000085B0 0000867C  4B FF 7B 8D */	bl BattleTransID
/* 000085B4 00008680  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000085B8 00008684  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000085BC 00008688  7C 64 1B 78 */	mr r4, r3
/* 000085C0 0000868C  80 65 00 00 */	lwz r3, 0x0(r5)
/* 000085C4 00008690  4B FF 7B 79 */	bl BattleGetUnitPtr
/* 000085C8 00008694  28 03 00 00 */	cmplwi r3, 0x0
/* 000085CC 00008698  41 82 00 0C */	beq .L_000085D8
/* 000085D0 0000869C  88 03 00 22 */	lbz r0, 0x22(r3)
/* 000085D4 000086A0  98 03 00 23 */	stb r0, 0x23(r3)
.L_000085D8:
/* 000085D8 000086A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000085DC 000086A8  38 60 00 02 */	li r3, 0x2
/* 000085E0 000086AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000085E4 000086B0  7C 08 03 A6 */	mtlr r0
/* 000085E8 000086B4  38 21 00 10 */	addi r1, r1, 0x10
/* 000085EC 000086B8  4E 80 00 20 */	blr
.endfn unk_las_00008650

# .text:0x184 | 0x85F0 | size: 0x30
.fn vivian_comeback, local
/* 000085F0 000086BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000085F4 000086C0  7C 08 02 A6 */	mflr r0
/* 000085F8 000086C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 000085FC 000086C8  4B FF 7B 41 */	bl pouchGetPtr
/* 00008600 000086CC  A0 03 00 54 */	lhz r0, 0x54(r3)
/* 00008604 000086D0  54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 00008608 000086D4  B0 03 00 54 */	sth r0, 0x54(r3)
/* 0000860C 000086D8  38 60 00 01 */	li r3, 0x1
/* 00008610 000086DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00008614 000086E0  7C 08 03 A6 */	mtlr r0
/* 00008618 000086E4  38 21 00 10 */	addi r1, r1, 0x10
/* 0000861C 000086E8  4E 80 00 20 */	blr
.endfn vivian_comeback

# .text:0x1B4 | 0x8620 | size: 0x70
.fn unk_las_000086ec, local
/* 00008620 000086EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00008624 000086F0  7C 08 02 A6 */	mflr r0
/* 00008628 000086F4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000862C 000086F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00008630 000086FC  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00008634 00008700  7C 7E 1B 78 */	mr r30, r3
/* 00008638 00008704  38 64 00 00 */	addi r3, r4, _battleWorkPointer@l
/* 0000863C 00008708  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 00008640 0000870C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00008644 00008710  4B FF 7A F9 */	bl BattleGetMarioPtr
/* 00008648 00008714  4B FF 7A F5 */	bl BtlUnit_CheckShadowGuard
/* 0000864C 00008718  2C 03 00 01 */	cmpwi r3, 0x1
/* 00008650 0000871C  40 82 00 18 */	bne .L_00008668
/* 00008654 00008720  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00008658 00008724  7F C3 F3 78 */	mr r3, r30
/* 0000865C 00008728  38 A0 00 01 */	li r5, 0x1
/* 00008660 0000872C  4B FF 7A DD */	bl evtSetValue
/* 00008664 00008730  48 00 00 14 */	b .L_00008678
.L_00008668:
/* 00008668 00008734  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000866C 00008738  7F C3 F3 78 */	mr r3, r30
/* 00008670 0000873C  38 A0 00 00 */	li r5, 0x0
/* 00008674 00008740  4B FF 7A C9 */	bl evtSetValue
.L_00008678:
/* 00008678 00008744  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000867C 00008748  38 60 00 02 */	li r3, 0x2
/* 00008680 0000874C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00008684 00008750  7C 08 03 A6 */	mtlr r0
/* 00008688 00008754  38 21 00 10 */	addi r1, r1, 0x10
/* 0000868C 00008758  4E 80 00 20 */	blr
.endfn unk_las_000086ec

# .text:0x224 | 0x8690 | size: 0xE0
.fn eff_scanning, local
/* 00008690 0000875C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 00008694 00008760  7C 08 02 A6 */	mflr r0
/* 00008698 00008764  90 01 00 54 */	stw r0, 0x54(r1)
/* 0000869C 00008768  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 000086A0 0000876C  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 000086A4 00008770  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 000086A8 00008774  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 000086AC 00008778  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 000086B0 0000877C  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 000086B4 00008780  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000086B8 00008784  7C 7D 1B 78 */	mr r29, r3
/* 000086BC 00008788  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000086C0 0000878C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000086C4 00008790  4B FF 7A 79 */	bl evtGetValue
/* 000086C8 00008794  7C 64 1B 78 */	mr r4, r3
/* 000086CC 00008798  7F A3 EB 78 */	mr r3, r29
/* 000086D0 0000879C  4B FF 7A 6D */	bl BattleTransID
/* 000086D4 000087A0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000086D8 000087A4  7C 7E 1B 78 */	mr r30, r3
/* 000086DC 000087A8  7F A3 EB 78 */	mr r3, r29
/* 000086E0 000087AC  4B FF 7A 5D */	bl evtGetFloat
/* 000086E4 000087B0  FF E0 08 90 */	fmr f31, f1
/* 000086E8 000087B4  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000086EC 000087B8  7F A3 EB 78 */	mr r3, r29
/* 000086F0 000087BC  4B FF 7A 4D */	bl evtGetFloat
/* 000086F4 000087C0  FF C0 08 90 */	fmr f30, f1
/* 000086F8 000087C4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000086FC 000087C8  7F A3 EB 78 */	mr r3, r29
/* 00008700 000087CC  4B FF 7A 3D */	bl evtGetFloat
/* 00008704 000087D0  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 00008708 000087D4  FF A0 08 90 */	fmr f29, f1
/* 0000870C 000087D8  38 63 00 00 */	addi r3, r3, _battleWorkPointer@l
/* 00008710 000087DC  7F C4 F3 78 */	mr r4, r30
/* 00008714 000087E0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00008718 000087E4  4B FF 7A 25 */	bl BattleGetUnitPtr
/* 0000871C 000087E8  FC 20 F8 90 */	fmr f1, f31
/* 00008720 000087EC  7C 7F 1B 78 */	mr r31, r3
/* 00008724 000087F0  FC 40 F0 90 */	fmr f2, f30
/* 00008728 000087F4  38 60 00 00 */	li r3, 0x0
/* 0000872C 000087F8  FC 60 E8 90 */	fmr f3, f29
/* 00008730 000087FC  4B FF 7A 0D */	bl effScanningEntry
/* 00008734 00008800  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00008738 00008804  38 60 00 02 */	li r3, 0x2
/* 0000873C 00008808  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00008740 0000880C  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 00008744 00008810  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 00008748 00008814  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 0000874C 00008818  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 00008750 0000881C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 00008754 00008820  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 00008758 00008824  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 0000875C 00008828  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00008760 0000882C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 00008764 00008830  7C 08 03 A6 */	mtlr r0
/* 00008768 00008834  38 21 00 50 */	addi r1, r1, 0x50
/* 0000876C 00008838  4E 80 00 20 */	blr
.endfn eff_scanning

# 0x00005EF8..0x00006708 | size: 0x810
.rodata
.balign 8

# .rodata:0x0 | 0x5EF8 | size: 0xF
.obj str_btl_un_rampell_las_00017960, local
	.string "btl_un_rampell"
.endobj str_btl_un_rampell_las_00017960

# .rodata:0xF | 0x5F07 | size: 0x1
.obj gap_03_00005F07_rodata, global
.hidden gap_03_00005F07_rodata
	.byte 0x00
.endobj gap_03_00005F07_rodata

# .rodata:0x10 | 0x5F08 | size: 0x17
.obj str_SFX_BOSS_RNPL_DAMAGE_las_00017970, local
	.string "SFX_BOSS_RNPL_DAMAGED1"
.endobj str_SFX_BOSS_RNPL_DAMAGE_las_00017970

# .rodata:0x27 | 0x5F1F | size: 0x1
.obj gap_03_00005F1F_rodata, global
.hidden gap_03_00005F1F_rodata
	.byte 0x00
.endobj gap_03_00005F1F_rodata

# .rodata:0x28 | 0x5F20 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_las_00017988, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_las_00017988

# .rodata:0x3D | 0x5F35 | size: 0x3
.obj gap_03_00005F35_rodata, global
.hidden gap_03_00005F35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005F35_rodata

# .rodata:0x40 | 0x5F38 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_las_000179a0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_las_000179a0

# .rodata:0x54 | 0x5F4C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_las_000179b4, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_las_000179b4

# .rodata:0x6D | 0x5F65 | size: 0x3
.obj gap_03_00005F65_rodata, global
.hidden gap_03_00005F65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005F65_rodata

# .rodata:0x70 | 0x5F68 | size: 0x4
.obj str_N_1_las_000179d0, local
	.string "N_1"
.endobj str_N_1_las_000179d0

# .rodata:0x74 | 0x5F6C | size: 0x4
.obj str_Y_1_las_000179d4, local
	.string "Y_1"
.endobj str_Y_1_las_000179d4

# .rodata:0x78 | 0x5F70 | size: 0x4
.obj str_K_1_las_000179d8, local
	.string "K_1"
.endobj str_K_1_las_000179d8

# .rodata:0x7C | 0x5F74 | size: 0x4
.obj str_X_1_las_000179dc, local
	.string "X_1"
.endobj str_X_1_las_000179dc

# .rodata:0x80 | 0x5F78 | size: 0x4
.obj str_S_1_las_000179e0, local
	.string "S_1"
.endobj str_S_1_las_000179e0

# .rodata:0x84 | 0x5F7C | size: 0x4
.obj str_Q_1_las_000179e4, local
	.string "Q_1"
.endobj str_Q_1_las_000179e4

# .rodata:0x88 | 0x5F80 | size: 0x4
.obj str_D_1_las_000179e8, local
	.string "D_1"
.endobj str_D_1_las_000179e8

# .rodata:0x8C | 0x5F84 | size: 0x4
.obj str_A_2_las_000179ec, local
	.string "A_2"
.endobj str_A_2_las_000179ec

# .rodata:0x90 | 0x5F88 | size: 0x4
.obj str_R_1_las_000179f0, local
	.string "R_1"
.endobj str_R_1_las_000179f0

# .rodata:0x94 | 0x5F8C | size: 0x4
.obj str_W_1_las_000179f4, local
	.string "W_1"
.endobj str_W_1_las_000179f4

# .rodata:0x98 | 0x5F90 | size: 0x4
.obj str_T_1_las_000179f8, local
	.string "T_1"
.endobj str_T_1_las_000179f8

# .rodata:0x9C | 0x5F94 | size: 0x9
.obj str_c_ranpel_las_000179fc, local
	.string "c_ranpel"
.endobj str_c_ranpel_las_000179fc

# .rodata:0xA5 | 0x5F9D | size: 0x3
.obj gap_03_00005F9D_rodata, global
.hidden gap_03_00005F9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005F9D_rodata

# .rodata:0xA8 | 0x5FA0 | size: 0x16
.obj str_SFX_BOSS_RNPL_ARM_UP_las_00017a08, local
	.string "SFX_BOSS_RNPL_ARM_UP1"
.endobj str_SFX_BOSS_RNPL_ARM_UP_las_00017a08

# .rodata:0xBE | 0x5FB6 | size: 0x2
.obj gap_03_00005FB6_rodata, global
.hidden gap_03_00005FB6_rodata
	.2byte 0x0000
.endobj gap_03_00005FB6_rodata

# .rodata:0xC0 | 0x5FB8 | size: 0x5
.obj str_A_3A_las_00017a20, local
	.string "A_3A"
.endobj str_A_3A_las_00017a20

# .rodata:0xC5 | 0x5FBD | size: 0x3
.obj gap_03_00005FBD_rodata, global
.hidden gap_03_00005FBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005FBD_rodata

# .rodata:0xC8 | 0x5FC0 | size: 0x15
.obj str_SFX_BOSS_RNPL_LAUGH1_las_00017a28, local
	.string "SFX_BOSS_RNPL_LAUGH1"
.endobj str_SFX_BOSS_RNPL_LAUGH1_las_00017a28

# .rodata:0xDD | 0x5FD5 | size: 0x3
.obj gap_03_00005FD5_rodata, global
.hidden gap_03_00005FD5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005FD5_rodata

# .rodata:0xE0 | 0x5FD8 | size: 0x5
.obj str_A_3B_las_00017a40, local
	.string "A_3B"
.endobj str_A_3B_las_00017a40

# .rodata:0xE5 | 0x5FDD | size: 0x3
.obj gap_03_00005FDD_rodata, global
.hidden gap_03_00005FDD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005FDD_rodata

# .rodata:0xE8 | 0x5FE0 | size: 0x19
.obj str_SFX_BOSS_RNPL_EYE_SH_las_00017a48, local
	.string "SFX_BOSS_RNPL_EYE_SHINE1"
.endobj str_SFX_BOSS_RNPL_EYE_SH_las_00017a48

# .rodata:0x101 | 0x5FF9 | size: 0x3
.obj gap_03_00005FF9_rodata, global
.hidden gap_03_00005FF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005FF9_rodata

# .rodata:0x104 | 0x5FFC | size: 0x1
.obj zero_las_00017a64, local
	.byte 0x00
.endobj zero_las_00017a64

# .rodata:0x105 | 0x5FFD | size: 0x3
.obj gap_03_00005FFD_rodata, global
.hidden gap_03_00005FFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005FFD_rodata

# .rodata:0x108 | 0x6000 | size: 0xB
.obj str_toge_flush_las_00017a68, local
	.string "toge_flush"
.endobj str_toge_flush_las_00017a68

# .rodata:0x113 | 0x600B | size: 0x1
.obj gap_03_0000600B_rodata, global
.hidden gap_03_0000600B_rodata
	.byte 0x00
.endobj gap_03_0000600B_rodata

# .rodata:0x114 | 0x600C | size: 0x19
.obj str_SFX_BOSS_RNPL_TRANSF_las_00017a74, local
	.string "SFX_BOSS_RNPL_TRANSFORM4"
.endobj str_SFX_BOSS_RNPL_TRANSF_las_00017a74

# .rodata:0x12D | 0x6025 | size: 0x3
.obj gap_03_00006025_rodata, global
.hidden gap_03_00006025_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006025_rodata

# .rodata:0x130 | 0x6028 | size: 0xC
.obj str_kemuri_test_las_00017a90, local
	.string "kemuri_test"
.endobj str_kemuri_test_las_00017a90

# .rodata:0x13C | 0x6034 | size: 0x19
.obj str_SFX_BOSS_RNPL_TRANSF_las_00017a9c, local
	.string "SFX_BOSS_RNPL_TRANSFORM2"
.endobj str_SFX_BOSS_RNPL_TRANSF_las_00017a9c

# .rodata:0x155 | 0x604D | size: 0x3
.obj gap_03_0000604D_rodata, global
.hidden gap_03_0000604D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000604D_rodata

# .rodata:0x158 | 0x6050 | size: 0x19
.obj str_SFX_BOSS_RNPL_TRANSF_las_00017ab8, local
	.string "SFX_BOSS_RNPL_TRANSFORM1"
.endobj str_SFX_BOSS_RNPL_TRANSF_las_00017ab8

# .rodata:0x171 | 0x6069 | size: 0x3
.obj gap_03_00006069_rodata, global
.hidden gap_03_00006069_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006069_rodata

# .rodata:0x174 | 0x606C | size: 0x19
.obj str_SFX_BOSS_RNPL_TRANSF_las_00017ad4, local
	.string "SFX_BOSS_RNPL_TRANSFORM3"
.endobj str_SFX_BOSS_RNPL_TRANSF_las_00017ad4

# .rodata:0x18D | 0x6085 | size: 0x3
.obj gap_03_00006085_rodata, global
.hidden gap_03_00006085_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006085_rodata

# .rodata:0x190 | 0x6088 | size: 0x15
.obj str_SFX_BOSS_RNPL_MOVE1L_las_00017af0, local
	.string "SFX_BOSS_RNPL_MOVE1L"
.endobj str_SFX_BOSS_RNPL_MOVE1L_las_00017af0

# .rodata:0x1A5 | 0x609D | size: 0x3
.obj gap_03_0000609D_rodata, global
.hidden gap_03_0000609D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000609D_rodata

# .rodata:0x1A8 | 0x60A0 | size: 0x15
.obj str_SFX_BOSS_RNPL_MOVE1R_las_00017b08, local
	.string "SFX_BOSS_RNPL_MOVE1R"
.endobj str_SFX_BOSS_RNPL_MOVE1R_las_00017b08

# .rodata:0x1BD | 0x60B5 | size: 0x3
.obj gap_03_000060B5_rodata, global
.hidden gap_03_000060B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000060B5_rodata

# .rodata:0x1C0 | 0x60B8 | size: 0xD
.obj str_btl_majo3_00_las_00017b20, local
	.string "btl_majo3_00"
.endobj str_btl_majo3_00_las_00017b20

# .rodata:0x1CD | 0x60C5 | size: 0x3
.obj gap_03_000060C5_rodata, global
.hidden gap_03_000060C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000060C5_rodata

# .rodata:0x1D0 | 0x60C8 | size: 0xD
.obj str_btl_majo3_01_las_00017b30, local
	.string "btl_majo3_01"
.endobj str_btl_majo3_01_las_00017b30

# .rodata:0x1DD | 0x60D5 | size: 0x3
.obj gap_03_000060D5_rodata, global
.hidden gap_03_000060D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000060D5_rodata

# .rodata:0x1E0 | 0x60D8 | size: 0xD
.obj str_btl_majo3_02_las_00017b40, local
	.string "btl_majo3_02"
.endobj str_btl_majo3_02_las_00017b40

# .rodata:0x1ED | 0x60E5 | size: 0x3
.obj gap_03_000060E5_rodata, global
.hidden gap_03_000060E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000060E5_rodata

# .rodata:0x1F0 | 0x60E8 | size: 0x4
.obj str_D_2_las_00017b50, local
	.string "D_2"
.endobj str_D_2_las_00017b50

# .rodata:0x1F4 | 0x60EC | size: 0xD
.obj str_btl_majo3_13_las_00017b54, local
	.string "btl_majo3_13"
.endobj str_btl_majo3_13_las_00017b54

# .rodata:0x201 | 0x60F9 | size: 0x3
.obj gap_03_000060F9_rodata, global
.hidden gap_03_000060F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000060F9_rodata

# .rodata:0x204 | 0x60FC | size: 0xD
.obj str_btl_majo3_10_las_00017b64, local
	.string "btl_majo3_10"
.endobj str_btl_majo3_10_las_00017b64

# .rodata:0x211 | 0x6109 | size: 0x3
.obj gap_03_00006109_rodata, global
.hidden gap_03_00006109_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006109_rodata

# .rodata:0x214 | 0x610C | size: 0x1B
.obj str_ランペル_ユニゾンフェーズ_las_00017b74, local
	.4byte 0x83898393
	.4byte 0x8379838B
	.4byte 0x81408386
	.4byte 0x836A835D
	.4byte 0x83938374
	.4byte 0x8346815B
	.byte 0x83, 0x59, 0x00
.endobj str_ランペル_ユニゾンフェーズ_las_00017b74

# .rodata:0x22F | 0x6127 | size: 0x1
.obj gap_03_00006127_rodata, global
.hidden gap_03_00006127_rodata
	.byte 0x00
.endobj gap_03_00006127_rodata

# .rodata:0x230 | 0x6128 | size: 0x1F
.obj str_ランペル_ユニゾンフェーズ終了_las_00017b90, local
	.4byte 0x83898393
	.4byte 0x8379838B
	.4byte 0x81408386
	.4byte 0x836A835D
	.4byte 0x83938374
	.4byte 0x8346815B
	.4byte 0x83598F49
	.byte 0x97, 0xB9, 0x00
.endobj str_ランペル_ユニゾンフェーズ終了_las_00017b90

# .rodata:0x24F | 0x6147 | size: 0x1
.obj gap_03_00006147_rodata, global
.hidden gap_03_00006147_rodata
	.byte 0x00
.endobj gap_03_00006147_rodata

# .rodata:0x250 | 0x6148 | size: 0x5
.obj str_A_1A_las_00017bb0, local
	.string "A_1A"
.endobj str_A_1A_las_00017bb0

# .rodata:0x255 | 0x614D | size: 0x3
.obj gap_03_0000614D_rodata, global
.hidden gap_03_0000614D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000614D_rodata

# .rodata:0x258 | 0x6150 | size: 0x5
.obj str_A_1B_las_00017bb8, local
	.string "A_1B"
.endobj str_A_1B_las_00017bb8

# .rodata:0x25D | 0x6155 | size: 0x3
.obj gap_03_00006155_rodata, global
.hidden gap_03_00006155_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006155_rodata

# .rodata:0x260 | 0x6158 | size: 0x13
.obj str_SFX_BOSS_RNPL_FLY1_las_00017bc0, local
	.string "SFX_BOSS_RNPL_FLY1"
.endobj str_SFX_BOSS_RNPL_FLY1_las_00017bc0

# .rodata:0x273 | 0x616B | size: 0x1
.obj gap_03_0000616B_rodata, global
.hidden gap_03_0000616B_rodata
	.byte 0x00
.endobj gap_03_0000616B_rodata

# .rodata:0x274 | 0x616C | size: 0x14
.obj str_SFX_BOSS_RNPL_FALL1_las_00017bd4, local
	.string "SFX_BOSS_RNPL_FALL1"
.endobj str_SFX_BOSS_RNPL_FALL1_las_00017bd4

# .rodata:0x288 | 0x6180 | size: 0x14
.obj str_SFX_BOSS_RNPL_DOWN1_las_00017be8, local
	.string "SFX_BOSS_RNPL_DOWN1"
.endobj str_SFX_BOSS_RNPL_DOWN1_las_00017be8

# .rodata:0x29C | 0x6194 | size: 0x4
.obj str_O_1_las_00017bfc, local
	.string "O_1"
.endobj str_O_1_las_00017bfc

# .rodata:0x2A0 | 0x6198 | size: 0x4
.obj str_R_2_las_00017c00, local
	.string "R_2"
.endobj str_R_2_las_00017c00

# .rodata:0x2A4 | 0x619C | size: 0x5
.obj str_J_1B_las_00017c04, local
	.string "J_1B"
.endobj str_J_1B_las_00017c04

# .rodata:0x2A9 | 0x61A1 | size: 0x3
.obj gap_03_000061A1_rodata, global
.hidden gap_03_000061A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000061A1_rodata

# .rodata:0x2AC | 0x61A4 | size: 0x17
.obj str_SFX_BOSS_RNPL_LANDIN_las_00017c0c, local
	.string "SFX_BOSS_RNPL_LANDING1"
.endobj str_SFX_BOSS_RNPL_LANDIN_las_00017c0c

# .rodata:0x2C3 | 0x61BB | size: 0x1
.obj gap_03_000061BB_rodata, global
.hidden gap_03_000061BB_rodata
	.byte 0x00
.endobj gap_03_000061BB_rodata

# .rodata:0x2C4 | 0x61BC | size: 0x7
.obj str_EM_N_1_las_00017c24, local
	.string "EM_N_1"
.endobj str_EM_N_1_las_00017c24

# .rodata:0x2CB | 0x61C3 | size: 0x1
.obj gap_03_000061C3_rodata, global
.hidden gap_03_000061C3_rodata
	.byte 0x00
.endobj gap_03_000061C3_rodata

# .rodata:0x2CC | 0x61C4 | size: 0x7
.obj str_EM_Y_2_las_00017c2c, local
	.string "EM_Y_2"
.endobj str_EM_Y_2_las_00017c2c

# .rodata:0x2D3 | 0x61CB | size: 0x1
.obj gap_03_000061CB_rodata, global
.hidden gap_03_000061CB_rodata
	.byte 0x00
.endobj gap_03_000061CB_rodata

# .rodata:0x2D4 | 0x61CC | size: 0x7
.obj str_EM_K_1_las_00017c34, local
	.string "EM_K_1"
.endobj str_EM_K_1_las_00017c34

# .rodata:0x2DB | 0x61D3 | size: 0x1
.obj gap_03_000061D3_rodata, global
.hidden gap_03_000061D3_rodata
	.byte 0x00
.endobj gap_03_000061D3_rodata

# .rodata:0x2DC | 0x61D4 | size: 0x7
.obj str_EM_S_1_las_00017c3c, local
	.string "EM_S_1"
.endobj str_EM_S_1_las_00017c3c

# .rodata:0x2E3 | 0x61DB | size: 0x1
.obj gap_03_000061DB_rodata, global
.hidden gap_03_000061DB_rodata
	.byte 0x00
.endobj gap_03_000061DB_rodata

# .rodata:0x2E4 | 0x61DC | size: 0x7
.obj str_EM_D_1_las_00017c44, local
	.string "EM_D_1"
.endobj str_EM_D_1_las_00017c44

# .rodata:0x2EB | 0x61E3 | size: 0x1
.obj gap_03_000061E3_rodata, global
.hidden gap_03_000061E3_rodata
	.byte 0x00
.endobj gap_03_000061E3_rodata

# .rodata:0x2EC | 0x61E4 | size: 0x7
.obj str_EM_A_1_las_00017c4c, local
	.string "EM_A_1"
.endobj str_EM_A_1_las_00017c4c

# .rodata:0x2F3 | 0x61EB | size: 0x1
.obj gap_03_000061EB_rodata, global
.hidden gap_03_000061EB_rodata
	.byte 0x00
.endobj gap_03_000061EB_rodata

# .rodata:0x2F4 | 0x61EC | size: 0x7
.obj str_EM_R_1_las_00017c54, local
	.string "EM_R_1"
.endobj str_EM_R_1_las_00017c54

# .rodata:0x2FB | 0x61F3 | size: 0x1
.obj gap_03_000061F3_rodata, global
.hidden gap_03_000061F3_rodata
	.byte 0x00
.endobj gap_03_000061F3_rodata

# .rodata:0x2FC | 0x61F4 | size: 0x7
.obj str_EM_W_1_las_00017c5c, local
	.string "EM_W_1"
.endobj str_EM_W_1_las_00017c5c

# .rodata:0x303 | 0x61FB | size: 0x1
.obj gap_03_000061FB_rodata, global
.hidden gap_03_000061FB_rodata
	.byte 0x00
.endobj gap_03_000061FB_rodata

# .rodata:0x304 | 0x61FC | size: 0x7
.obj str_EM_D_3_las_00017c64, local
	.string "EM_D_3"
.endobj str_EM_D_3_las_00017c64

# .rodata:0x30B | 0x6203 | size: 0x1
.obj gap_03_00006203_rodata, global
.hidden gap_03_00006203_rodata
	.byte 0x00
.endobj gap_03_00006203_rodata

# .rodata:0x30C | 0x6204 | size: 0x7
.obj str_EM_T_1_las_00017c6c, local
	.string "EM_T_1"
.endobj str_EM_T_1_las_00017c6c

# .rodata:0x313 | 0x620B | size: 0x1
.obj gap_03_0000620B_rodata, global
.hidden gap_03_0000620B_rodata
	.byte 0x00
.endobj gap_03_0000620B_rodata

# .rodata:0x314 | 0x620C | size: 0x8
.obj str_c_mario_las_00017c74, local
	.string "c_mario"
.endobj str_c_mario_las_00017c74

# .rodata:0x31C | 0x6214 | size: 0x13
.obj str_SFX_BOSS_NM_MOVE1L_las_00017c7c, local
	.string "SFX_BOSS_NM_MOVE1L"
.endobj str_SFX_BOSS_NM_MOVE1L_las_00017c7c

# .rodata:0x32F | 0x6227 | size: 0x1
.obj gap_03_00006227_rodata, global
.hidden gap_03_00006227_rodata
	.byte 0x00
.endobj gap_03_00006227_rodata

# .rodata:0x330 | 0x6228 | size: 0x13
.obj str_SFX_BOSS_NM_MOVE1R_las_00017c90, local
	.string "SFX_BOSS_NM_MOVE1R"
.endobj str_SFX_BOSS_NM_MOVE1R_las_00017c90

# .rodata:0x343 | 0x623B | size: 0x1
.obj gap_03_0000623B_rodata, global
.hidden gap_03_0000623B_rodata
	.byte 0x00
.endobj gap_03_0000623B_rodata

# .rodata:0x344 | 0x623C | size: 0x12
.obj str_SFX_BOSS_NM_DOWN2_las_00017ca4, local
	.string "SFX_BOSS_NM_DOWN2"
.endobj str_SFX_BOSS_NM_DOWN2_las_00017ca4

# .rodata:0x356 | 0x624E | size: 0x2
.obj gap_03_0000624E_rodata, global
.hidden gap_03_0000624E_rodata
	.2byte 0x0000
.endobj gap_03_0000624E_rodata

# .rodata:0x358 | 0x6250 | size: 0x7
.obj str_EM_D_2_las_00017cb8, local
	.string "EM_D_2"
.endobj str_EM_D_2_las_00017cb8

# .rodata:0x35F | 0x6257 | size: 0x1
.obj gap_03_00006257_rodata, global
.hidden gap_03_00006257_rodata
	.byte 0x00
.endobj gap_03_00006257_rodata

# .rodata:0x360 | 0x6258 | size: 0x18
.obj str_SFX_BOSS_VOICE_NM_AC_las_00017cc0, local
	.string "SFX_BOSS_VOICE_NM_AC1_1"
.endobj str_SFX_BOSS_VOICE_NM_AC_las_00017cc0

# .rodata:0x378 | 0x6270 | size: 0x18
.obj str_SFX_BOSS_VOICE_NM_AC_las_00017cd8, local
	.string "SFX_BOSS_VOICE_NM_AC1_2"
.endobj str_SFX_BOSS_VOICE_NM_AC_las_00017cd8

# .rodata:0x390 | 0x6288 | size: 0x18
.obj str_SFX_BOSS_VOICE_NM_AC_las_00017cf0, local
	.string "SFX_BOSS_VOICE_NM_AC1_5"
.endobj str_SFX_BOSS_VOICE_NM_AC_las_00017cf0

# .rodata:0x3A8 | 0x62A0 | size: 0x8
.obj str_EM_J_1B_las_00017d08, local
	.string "EM_J_1B"
.endobj str_EM_J_1B_las_00017d08

# .rodata:0x3B0 | 0x62A8 | size: 0x12
.obj str_SFX_BOSS_NM_JUMP1_las_00017d10, local
	.string "SFX_BOSS_NM_JUMP1"
.endobj str_SFX_BOSS_NM_JUMP1_las_00017d10

# .rodata:0x3C2 | 0x62BA | size: 0x2
.obj gap_03_000062BA_rodata, global
.hidden gap_03_000062BA_rodata
	.2byte 0x0000
.endobj gap_03_000062BA_rodata

# .rodata:0x3C4 | 0x62BC | size: 0x12
.obj str_SFX_BOSS_NM_DOWN1_las_00017d24, local
	.string "SFX_BOSS_NM_DOWN1"
.endobj str_SFX_BOSS_NM_DOWN1_las_00017d24

# .rodata:0x3D6 | 0x62CE | size: 0x2
.obj gap_03_000062CE_rodata, global
.hidden gap_03_000062CE_rodata
	.2byte 0x0000
.endobj gap_03_000062CE_rodata

# .rodata:0x3D8 | 0x62D0 | size: 0x7
.obj str_EM_Z_2_las_00017d38, local
	.string "EM_Z_2"
.endobj str_EM_Z_2_las_00017d38

# .rodata:0x3DF | 0x62D7 | size: 0x1
.obj gap_03_000062D7_rodata, global
.hidden gap_03_000062D7_rodata
	.byte 0x00
.endobj gap_03_000062D7_rodata

# .rodata:0x3E0 | 0x62D8 | size: 0x1A
.obj str_SFX_BOSS_NM_JUMP_KUR_las_00017d40, local
	.string "SFX_BOSS_NM_JUMP_KURURIN1"
.endobj str_SFX_BOSS_NM_JUMP_KUR_las_00017d40

# .rodata:0x3FA | 0x62F2 | size: 0x2
.obj gap_03_000062F2_rodata, global
.hidden gap_03_000062F2_rodata
	.2byte 0x0000
.endobj gap_03_000062F2_rodata

# .rodata:0x3FC | 0x62F4 | size: 0x8
.obj str_EM_A_1A_las_00017d5c, local
	.string "EM_A_1A"
.endobj str_EM_A_1A_las_00017d5c

# .rodata:0x404 | 0x62FC | size: 0x19
.obj str_SFX_BOSS_NM_HAMMER_F_las_00017d64, local
	.string "SFX_BOSS_NM_HAMMER_FURU2"
.endobj str_SFX_BOSS_NM_HAMMER_F_las_00017d64

# .rodata:0x41D | 0x6315 | size: 0x3
.obj gap_03_00006315_rodata, global
.hidden gap_03_00006315_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006315_rodata

# .rodata:0x420 | 0x6318 | size: 0x8
.obj str_EM_A_1B_las_00017d80, local
	.string "EM_A_1B"
.endobj str_EM_A_1B_las_00017d80

# .rodata:0x428 | 0x6320 | size: 0x8
.obj str_EM_A_1C_las_00017d88, local
	.string "EM_A_1C"
.endobj str_EM_A_1C_las_00017d88

# .rodata:0x430 | 0x6328 | size: 0x18
.obj str_SFX_BOSS_NM_HAMMER_D_las_00017d90, local
	.string "SFX_BOSS_NM_HAMMER_DON2"
.endobj str_SFX_BOSS_NM_HAMMER_D_las_00017d90

# .rodata:0x448 | 0x6340 | size: 0x6
.obj str_c_pkr_las_00017da8, local
	.string "c_pkr"
.endobj str_c_pkr_las_00017da8

# .rodata:0x44E | 0x6346 | size: 0x2
.obj gap_03_00006346_rodata, global
.hidden gap_03_00006346_rodata
	.2byte 0x0000
.endobj gap_03_00006346_rodata

# .rodata:0x450 | 0x6348 | size: 0x18
.obj str_SFX_PARTY_BATTLE_MOV_las_00017db0, local
	.string "SFX_PARTY_BATTLE_MOVE1L"
.endobj str_SFX_PARTY_BATTLE_MOV_las_00017db0

# .rodata:0x468 | 0x6360 | size: 0x18
.obj str_SFX_PARTY_BATTLE_MOV_las_00017dc8, local
	.string "SFX_PARTY_BATTLE_MOVE1R"
.endobj str_SFX_PARTY_BATTLE_MOV_las_00017dc8

# .rodata:0x480 | 0x6378 | size: 0x17
.obj str_SFX_PARTY_BATTLE_JUM_las_00017de0, local
	.string "SFX_PARTY_BATTLE_JUMP1"
.endobj str_SFX_PARTY_BATTLE_JUM_las_00017de0

# .rodata:0x497 | 0x638F | size: 0x1
.obj gap_03_0000638F_rodata, global
.hidden gap_03_0000638F_rodata
	.byte 0x00
.endobj gap_03_0000638F_rodata

# .rodata:0x498 | 0x6390 | size: 0x1A
.obj str_SFX_PARTY_BATTLE_LAN_las_00017df8, local
	.string "SFX_PARTY_BATTLE_LANDING1"
.endobj str_SFX_PARTY_BATTLE_LAN_las_00017df8

# .rodata:0x4B2 | 0x63AA | size: 0x2
.obj gap_03_000063AA_rodata, global
.hidden gap_03_000063AA_rodata
	.2byte 0x0000
.endobj gap_03_000063AA_rodata

# .rodata:0x4B4 | 0x63AC | size: 0x12
.obj str_SFX_BOSS_NM_DOWN3_las_00017e14, local
	.string "SFX_BOSS_NM_DOWN3"
.endobj str_SFX_BOSS_NM_DOWN3_las_00017e14

# .rodata:0x4C6 | 0x63BE | size: 0x2
.obj gap_03_000063BE_rodata, global
.hidden gap_03_000063BE_rodata
	.2byte 0x0000
.endobj gap_03_000063BE_rodata

# .rodata:0x4C8 | 0x63C0 | size: 0x8
.obj str_PKR_D_3_las_00017e28, local
	.string "PKR_D_3"
.endobj str_PKR_D_3_las_00017e28

# .rodata:0x4D0 | 0x63C8 | size: 0x16
.obj str_SFX_PARTY_BATTLE_DIE_las_00017e30, local
	.string "SFX_PARTY_BATTLE_DIE1"
.endobj str_SFX_PARTY_BATTLE_DIE_las_00017e30

# .rodata:0x4E6 | 0x63DE | size: 0x2
.obj gap_03_000063DE_rodata, global
.hidden gap_03_000063DE_rodata
	.2byte 0x0000
.endobj gap_03_000063DE_rodata

# .rodata:0x4E8 | 0x63E0 | size: 0x9
.obj str_PKR_A_2B_las_00017e48, local
	.string "PKR_A_2B"
.endobj str_PKR_A_2B_las_00017e48

# .rodata:0x4F1 | 0x63E9 | size: 0x3
.obj gap_03_000063E9_rodata, global
.hidden gap_03_000063E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000063E9_rodata

# .rodata:0x4F4 | 0x63EC | size: 0x9
.obj str_PKR_J_1A_las_00017e54, local
	.string "PKR_J_1A"
.endobj str_PKR_J_1A_las_00017e54

# .rodata:0x4FD | 0x63F5 | size: 0x3
.obj gap_03_000063F5_rodata, global
.hidden gap_03_000063F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000063F5_rodata

# .rodata:0x500 | 0x63F8 | size: 0x15
.obj str_SFX_BTL_KURI_ATTACK1_las_00017e60, local
	.string "SFX_BTL_KURI_ATTACK1"
.endobj str_SFX_BTL_KURI_ATTACK1_las_00017e60

# .rodata:0x515 | 0x640D | size: 0x3
.obj gap_03_0000640D_rodata, global
.hidden gap_03_0000640D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000640D_rodata

# .rodata:0x518 | 0x6410 | size: 0x8
.obj str_PKR_S_1_las_00017e78, local
	.string "PKR_S_1"
.endobj str_PKR_S_1_las_00017e78

# .rodata:0x520 | 0x6418 | size: 0x6
.obj str_c_pnk_las_00017e80, local
	.string "c_pnk"
.endobj str_c_pnk_las_00017e80

# .rodata:0x526 | 0x641E | size: 0x2
.obj gap_03_0000641E_rodata, global
.hidden gap_03_0000641E_rodata
	.2byte 0x0000
.endobj gap_03_0000641E_rodata

# .rodata:0x528 | 0x6420 | size: 0x8
.obj str_PNK_D_1_las_00017e88, local
	.string "PNK_D_1"
.endobj str_PNK_D_1_las_00017e88

# .rodata:0x530 | 0x6428 | size: 0x10
.obj str_SFX_ENM_INSIDE1_las_00017e90, local
	.string "SFX_ENM_INSIDE1"
.endobj str_SFX_ENM_INSIDE1_las_00017e90

# .rodata:0x540 | 0x6438 | size: 0x8
.obj str_PNK_S_1_las_00017ea0, local
	.string "PNK_S_1"
.endobj str_PNK_S_1_las_00017ea0

# .rodata:0x548 | 0x6440 | size: 0x8
.obj str_PNK_D_3_las_00017ea8, local
	.string "PNK_D_3"
.endobj str_PNK_D_3_las_00017ea8

# .rodata:0x550 | 0x6448 | size: 0x8
.obj str_PNK_K_2_las_00017eb0, local
	.string "PNK_K_2"
.endobj str_PNK_K_2_las_00017eb0

# .rodata:0x558 | 0x6450 | size: 0x8
.obj str_PNK_K_1_las_00017eb8, local
	.string "PNK_K_1"
.endobj str_PNK_K_1_las_00017eb8

# .rodata:0x560 | 0x6458 | size: 0x15
.obj str_SFX_BTL_NOKO_ATTACK1_las_00017ec0, local
	.string "SFX_BTL_NOKO_ATTACK1"
.endobj str_SFX_BTL_NOKO_ATTACK1_las_00017ec0

# .rodata:0x575 | 0x646D | size: 0x3
.obj gap_03_0000646D_rodata, global
.hidden gap_03_0000646D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000646D_rodata

# .rodata:0x578 | 0x6470 | size: 0x15
.obj str_SFX_BTL_NOKO_ATTACK2_las_00017ed8, local
	.string "SFX_BTL_NOKO_ATTACK2"
.endobj str_SFX_BTL_NOKO_ATTACK2_las_00017ed8

# .rodata:0x58D | 0x6485 | size: 0x3
.obj gap_03_00006485_rodata, global
.hidden gap_03_00006485_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006485_rodata

# .rodata:0x590 | 0x6488 | size: 0x17
.obj str_SFX_BTL_NOKO_SHUBIBI_las_00017ef0, local
	.string "SFX_BTL_NOKO_SHUBIBIN1"
.endobj str_SFX_BTL_NOKO_SHUBIBI_las_00017ef0

# .rodata:0x5A7 | 0x649F | size: 0x1
.obj gap_03_0000649F_rodata, global
.hidden gap_03_0000649F_rodata
	.byte 0x00
.endobj gap_03_0000649F_rodata

# .rodata:0x5A8 | 0x64A0 | size: 0x17
.obj str_SFX_BTL_NOKO_SHUBIBI_las_00017f08, local
	.string "SFX_BTL_NOKO_SHUBIBIN2"
.endobj str_SFX_BTL_NOKO_SHUBIBI_las_00017f08

# .rodata:0x5BF | 0x64B7 | size: 0x1
.obj gap_03_000064B7_rodata, global
.hidden gap_03_000064B7_rodata
	.byte 0x00
.endobj gap_03_000064B7_rodata

# .rodata:0x5C0 | 0x64B8 | size: 0x8
.obj str_c_windy_las_00017f20, local
	.string "c_windy"
.endobj str_c_windy_las_00017f20

# .rodata:0x5C8 | 0x64C0 | size: 0x17
.obj str_SFX_PARTY_BATTLE_HAN_las_00017f28, local
	.string "SFX_PARTY_BATTLE_HANG1"
.endobj str_SFX_PARTY_BATTLE_HAN_las_00017f28

# .rodata:0x5DF | 0x64D7 | size: 0x1
.obj gap_03_000064D7_rodata, global
.hidden gap_03_000064D7_rodata
	.byte 0x00
.endobj gap_03_000064D7_rodata

# .rodata:0x5E0 | 0x64D8 | size: 0x8
.obj str_PWD_D_3_las_00017f40, local
	.string "PWD_D_3"
.endobj str_PWD_D_3_las_00017f40

# .rodata:0x5E8 | 0x64E0 | size: 0x9
.obj str_PWD_A1_1_las_00017f48, local
	.string "PWD_A1_1"
.endobj str_PWD_A1_1_las_00017f48

# .rodata:0x5F1 | 0x64E9 | size: 0x3
.obj gap_03_000064E9_rodata, global
.hidden gap_03_000064E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000064E9_rodata

# .rodata:0x5F4 | 0x64EC | size: 0x16
.obj str_SFX_BTL_CLAUD_ATTACK_las_00017f54, local
	.string "SFX_BTL_CLAUD_ATTACK1"
.endobj str_SFX_BTL_CLAUD_ATTACK_las_00017f54

# .rodata:0x60A | 0x6502 | size: 0x2
.obj gap_03_00006502_rodata, global
.hidden gap_03_00006502_rodata
	.2byte 0x0000
.endobj gap_03_00006502_rodata

# .rodata:0x60C | 0x6504 | size: 0x9
.obj str_PWD_A1_2_las_00017f6c, local
	.string "PWD_A1_2"
.endobj str_PWD_A1_2_las_00017f6c

# .rodata:0x615 | 0x650D | size: 0x3
.obj gap_03_0000650D_rodata, global
.hidden gap_03_0000650D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000650D_rodata

# .rodata:0x618 | 0x6510 | size: 0x16
.obj str_SFX_BTL_CLAUD_ATTACK_las_00017f78, local
	.string "SFX_BTL_CLAUD_ATTACK2"
.endobj str_SFX_BTL_CLAUD_ATTACK_las_00017f78

# .rodata:0x62E | 0x6526 | size: 0x2
.obj gap_03_00006526_rodata, global
.hidden gap_03_00006526_rodata
	.2byte 0x0000
.endobj gap_03_00006526_rodata

# .rodata:0x630 | 0x6528 | size: 0xC
.obj str_c_babyyoshi_las_00017f90, local
	.string "c_babyyoshi"
.endobj str_c_babyyoshi_las_00017f90

# .rodata:0x63C | 0x6534 | size: 0x8
.obj str_PYS_D_3_las_00017f9c, local
	.string "PYS_D_3"
.endobj str_PYS_D_3_las_00017f9c

# .rodata:0x644 | 0x653C | size: 0x8
.obj str_PYS_R_5_las_00017fa4, local
	.string "PYS_R_5"
.endobj str_PYS_R_5_las_00017fa4

# .rodata:0x64C | 0x6544 | size: 0x9
.obj str_PYS_J_1A_las_00017fac, local
	.string "PYS_J_1A"
.endobj str_PYS_J_1A_las_00017fac

# .rodata:0x655 | 0x654D | size: 0x3
.obj gap_03_0000654D_rodata, global
.hidden gap_03_0000654D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000654D_rodata

# .rodata:0x658 | 0x6550 | size: 0x8
.obj str_PYS_A_3_las_00017fb8, local
	.string "PYS_A_3"
.endobj str_PYS_A_3_las_00017fb8

# .rodata:0x660 | 0x6558 | size: 0x9
.obj str_PYS_J_1B_las_00017fc0, local
	.string "PYS_J_1B"
.endobj str_PYS_J_1B_las_00017fc0

# .rodata:0x669 | 0x6561 | size: 0x3
.obj gap_03_00006561_rodata, global
.hidden gap_03_00006561_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006561_rodata

# .rodata:0x66C | 0x6564 | size: 0x16
.obj str_SFX_BTL_YOSHI_ATTACK_las_00017fcc, local
	.string "SFX_BTL_YOSHI_ATTACK1"
.endobj str_SFX_BTL_YOSHI_ATTACK_las_00017fcc

# .rodata:0x682 | 0x657A | size: 0x2
.obj gap_03_0000657A_rodata, global
.hidden gap_03_0000657A_rodata
	.2byte 0x0000
.endobj gap_03_0000657A_rodata

# .rodata:0x684 | 0x657C | size: 0x8
.obj str_PYS_A_1_las_00017fe4, local
	.string "PYS_A_1"
.endobj str_PYS_A_1_las_00017fe4

# .rodata:0x68C | 0x6584 | size: 0x8
.obj str_PYS_D_1_las_00017fec, local
	.string "PYS_D_1"
.endobj str_PYS_D_1_las_00017fec

# .rodata:0x694 | 0x658C | size: 0x8
.obj str_PYS_A_5_las_00017ff4, local
	.string "PYS_A_5"
.endobj str_PYS_A_5_las_00017ff4

# .rodata:0x69C | 0x6594 | size: 0x9
.obj str_c_vivian_las_00017ffc, local
	.string "c_vivian"
.endobj str_c_vivian_las_00017ffc

# .rodata:0x6A5 | 0x659D | size: 0x3
.obj gap_03_0000659D_rodata, global
.hidden gap_03_0000659D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000659D_rodata

# .rodata:0x6A8 | 0x65A0 | size: 0x16
.obj str_SFX_BOSS_VIVI_SHADOW_las_00018008, local
	.string "SFX_BOSS_VIVI_SHADOW1"
.endobj str_SFX_BOSS_VIVI_SHADOW_las_00018008

# .rodata:0x6BE | 0x65B6 | size: 0x2
.obj gap_03_000065B6_rodata, global
.hidden gap_03_000065B6_rodata
	.2byte 0x0000
.endobj gap_03_000065B6_rodata

# .rodata:0x6C0 | 0x65B8 | size: 0x16
.obj str_SFX_BOSS_VIVI_SHADOW_las_00018020, local
	.string "SFX_BOSS_VIVI_SHADOW2"
.endobj str_SFX_BOSS_VIVI_SHADOW_las_00018020

# .rodata:0x6D6 | 0x65CE | size: 0x2
.obj gap_03_000065CE_rodata, global
.hidden gap_03_000065CE_rodata
	.2byte 0x0000
.endobj gap_03_000065CE_rodata

# .rodata:0x6D8 | 0x65D0 | size: 0x8
.obj str_PTR_D_3_las_00018038, local
	.string "PTR_D_3"
.endobj str_PTR_D_3_las_00018038

# .rodata:0x6E0 | 0x65D8 | size: 0x9
.obj str_PTR_A2_2_las_00018040, local
	.string "PTR_A2_2"
.endobj str_PTR_A2_2_las_00018040

# .rodata:0x6E9 | 0x65E1 | size: 0x3
.obj gap_03_000065E1_rodata, global
.hidden gap_03_000065E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000065E1_rodata

# .rodata:0x6EC | 0x65E4 | size: 0x16
.obj str_SFX_BOSS_VIVI_ATTACK_las_0001804c, local
	.string "SFX_BOSS_VIVI_ATTACK4"
.endobj str_SFX_BOSS_VIVI_ATTACK_las_0001804c

# .rodata:0x702 | 0x65FA | size: 0x2
.obj gap_03_000065FA_rodata, global
.hidden gap_03_000065FA_rodata
	.2byte 0x0000
.endobj gap_03_000065FA_rodata

# .rodata:0x704 | 0x65FC | size: 0x9
.obj str_c_bomt_n_las_00018064, local
	.string "c_bomt_n"
.endobj str_c_bomt_n_las_00018064

# .rodata:0x70D | 0x6605 | size: 0x3
.obj gap_03_00006605_rodata, global
.hidden gap_03_00006605_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006605_rodata

# .rodata:0x710 | 0x6608 | size: 0x4
.obj str_D_3_las_00018070, local
	.string "D_3"
.endobj str_D_3_las_00018070

# .rodata:0x714 | 0x660C | size: 0x19
.obj str_SFX_BTL_THUNDERS_ATT_las_00018074, local
	.string "SFX_BTL_THUNDERS_ATTACK1"
.endobj str_SFX_BTL_THUNDERS_ATT_las_00018074

# .rodata:0x72D | 0x6625 | size: 0x3
.obj gap_03_00006625_rodata, global
.hidden gap_03_00006625_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006625_rodata

# .rodata:0x730 | 0x6628 | size: 0x19
.obj str_SFX_BTL_THUNDERS_ATT_las_00018090, local
	.string "SFX_BTL_THUNDERS_ATTACK2"
.endobj str_SFX_BTL_THUNDERS_ATT_las_00018090

# .rodata:0x749 | 0x6641 | size: 0x3
.obj gap_03_00006641_rodata, global
.hidden gap_03_00006641_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006641_rodata

# .rodata:0x74C | 0x6644 | size: 0x4
.obj str_A_3_las_000180ac, local
	.string "A_3"
.endobj str_A_3_las_000180ac

# .rodata:0x750 | 0x6648 | size: 0x19
.obj str_SFX_BTL_THUNDERS_ATT_las_000180b0, local
	.string "SFX_BTL_THUNDERS_ATTACK3"
.endobj str_SFX_BTL_THUNDERS_ATT_las_000180b0

# .rodata:0x769 | 0x6661 | size: 0x3
.obj gap_03_00006661_rodata, global
.hidden gap_03_00006661_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006661_rodata

# .rodata:0x76C | 0x6664 | size: 0x9
.obj str_bomb_n64_las_000180cc, local
	.string "bomb_n64"
.endobj str_bomb_n64_las_000180cc

# .rodata:0x775 | 0x666D | size: 0x3
.obj gap_03_0000666D_rodata, global
.hidden gap_03_0000666D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000666D_rodata

# .rodata:0x778 | 0x6670 | size: 0x5
.obj str_J_1A_las_000180d8, local
	.string "J_1A"
.endobj str_J_1A_las_000180d8

# .rodata:0x77D | 0x6675 | size: 0x3
.obj gap_03_00006675_rodata, global
.hidden gap_03_00006675_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006675_rodata

# .rodata:0x780 | 0x6678 | size: 0x9
.obj str_c_tyutyu_las_000180e0, local
	.string "c_tyutyu"
.endobj str_c_tyutyu_las_000180e0

# .rodata:0x789 | 0x6681 | size: 0x3
.obj gap_03_00006681_rodata, global
.hidden gap_03_00006681_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006681_rodata

# .rodata:0x78C | 0x6684 | size: 0x8
.obj str_PCH_D_3_las_000180ec, local
	.string "PCH_D_3"
.endobj str_PCH_D_3_las_000180ec

# .rodata:0x794 | 0x668C | size: 0x9
.obj str_PCH_A1_1_las_000180f4, local
	.string "PCH_A1_1"
.endobj str_PCH_A1_1_las_000180f4

# .rodata:0x79D | 0x6695 | size: 0x3
.obj gap_03_00006695_rodata, global
.hidden gap_03_00006695_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006695_rodata

# .rodata:0x7A0 | 0x6698 | size: 0x9
.obj str_PCH_A1_2_las_00018100, local
	.string "PCH_A1_2"
.endobj str_PCH_A1_2_las_00018100

# .rodata:0x7A9 | 0x66A1 | size: 0x3
.obj gap_03_000066A1_rodata, global
.hidden gap_03_000066A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000066A1_rodata

# .rodata:0x7AC | 0x66A4 | size: 0x9
.obj str_PCH_A2_4_las_0001810c, local
	.string "PCH_A2_4"
.endobj str_PCH_A2_4_las_0001810c

# .rodata:0x7B5 | 0x66AD | size: 0x3
.obj gap_03_000066AD_rodata, global
.hidden gap_03_000066AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000066AD_rodata

# .rodata:0x7B8 | 0x66B0 | size: 0x1B
.obj str_SFX_BTL_CHUCHURINA_A_las_00018118, local
	.string "SFX_BTL_CHUCHURINA_ATTACK3"
.endobj str_SFX_BTL_CHUCHURINA_A_las_00018118

# .rodata:0x7D3 | 0x66CB | size: 0x1
.obj gap_03_000066CB_rodata, global
.hidden gap_03_000066CB_rodata
	.byte 0x00
.endobj gap_03_000066CB_rodata

# .rodata:0x7D4 | 0x66CC | size: 0x1B
.obj str_SFX_BTL_CHUCHURINA_A_las_00018134, local
	.string "SFX_BTL_CHUCHURINA_ATTACK2"
.endobj str_SFX_BTL_CHUCHURINA_A_las_00018134

# .rodata:0x7EF | 0x66E7 | size: 0x1
.obj gap_03_000066E7_rodata, global
.hidden gap_03_000066E7_rodata
	.byte 0x00
.endobj gap_03_000066E7_rodata

# .rodata:0x7F0 | 0x66E8 | size: 0x1B
.obj str_SFX_BTL_CHUCHURINA_A_las_00018150, local
	.string "SFX_BTL_CHUCHURINA_ATTACK1"
.endobj str_SFX_BTL_CHUCHURINA_A_las_00018150
	.byte 0x00

# .rodata:0x80C | 0x6704 | size: 0x4
.obj zero_las_0001816c, local
	.float 0
.endobj zero_las_0001816c

# 0x00029860..0x00033920 | size: 0xA0C0
.data
.balign 8

# .data:0x0 | 0x29860 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x29868 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2986C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x29870 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x29874 | size: 0x4
.obj gap_04_00029874_data, global
.hidden gap_04_00029874_data
	.4byte 0x00000000
.endobj gap_04_00029874_data

# .data:0x18 | 0x29878 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x29880 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x29884 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x29888 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x29890 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x29894 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x29898 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2989C | size: 0x4
.obj gap_04_0002989C_data, global
.hidden gap_04_0002989C_data
	.4byte 0x00000000
.endobj gap_04_0002989C_data

# .data:0x40 | 0x298A0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x298A8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x298AC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x298B0 | size: 0xC4
.obj unit_boss_rampell_las_16_data_298B0, global
	.4byte 0x00000087
	.4byte str_btl_un_rampell_las_00017960
	.4byte 0x00280000
	.4byte 0x01013900
	.4byte 0x00640032
	.4byte 0x00070032
	.4byte 0x00300004
	.4byte 0x00300000
	.4byte 0x00000000
	.4byte 0x41B00000
	.4byte 0x00000000
	.4byte 0x0000FFFD
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41400000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x40E00000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x42400000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_RNPL_DAMAGE_las_00017970
	.4byte str_SFX_BTL_DAMAGE_FIRE1_las_00017988
	.4byte str_SFX_BTL_DAMAGE_ICE1_las_000179a0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_las_000179b4
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_rampell_las_16_data_298B0

# .data:0x114 | 0x29974 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x29979 | size: 0x3
.obj gap_04_00029979_data, global
.hidden gap_04_00029979_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00029979_data

# .data:0x11C | 0x2997C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x29981 | size: 0x3
.obj gap_04_00029981_data, global
.hidden gap_04_00029981_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00029981_data

# .data:0x124 | 0x29984 | size: 0x16
.obj regist, local
	.4byte 0x28322864
	.4byte 0x2864641E
	.4byte 0x643C643C
	.4byte 0x64502800
	.4byte 0x00642864
	.2byte 0x6405
.endobj regist

# .data:0x13A | 0x2999A | size: 0x2
.obj gap_04_0002999A_data, global
.hidden gap_04_0002999A_data
	.2byte 0x0000
.endobj gap_04_0002999A_data

# .data:0x13C | 0x2999C | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_las_000179d0
	.4byte 0x00000002
	.4byte str_Y_1_las_000179d4
	.4byte 0x00000009
	.4byte str_Y_1_las_000179d4
	.4byte 0x00000005
	.4byte str_K_1_las_000179d8
	.4byte 0x00000004
	.4byte str_X_1_las_000179dc
	.4byte 0x00000003
	.4byte str_K_1_las_000179d8
	.4byte 0x0000001C
	.4byte str_S_1_las_000179e0
	.4byte 0x0000001D
	.4byte str_Q_1_las_000179e4
	.4byte 0x0000001E
	.4byte str_Q_1_las_000179e4
	.4byte 0x0000001F
	.4byte str_S_1_las_000179e0
	.4byte 0x00000027
	.4byte str_D_1_las_000179e8
	.4byte 0x00000032
	.4byte str_A_2_las_000179ec
	.4byte 0x0000002A
	.4byte str_R_1_las_000179f0
	.4byte 0x00000028
	.4byte str_W_1_las_000179f4
	.4byte 0x00000038
	.4byte str_X_1_las_000179dc
	.4byte 0x00000039
	.4byte str_X_1_las_000179dc
	.4byte 0x00000041
	.4byte str_T_1_las_000179f8
	.4byte 0x00000045
	.4byte str_S_1_las_000179e0
.endobj pose_table

# .data:0x1CC | 0x29A2C | size: 0x10
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1DC | 0x29A3C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_rampell_las_00017960
	.4byte str_c_ranpel_las_000179fc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
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

# .data:0x228 | 0x29A88 | size: 0xC0
.obj weapon_rampell_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000006
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
	.4byte 0x00011007
	.4byte 0x00000006
	.4byte 0x80000000
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
.endobj weapon_rampell_attack

# .data:0x2E8 | 0x29B48 | size: 0x30
.obj entry_marilyn, local
	.4byte unit_boss_marilyn_las_16_data_5A610
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_marilyn

# .data:0x318 | 0x29B78 | size: 0x30
.obj entry_majolyne, local
	.4byte unit_boss_majolyne_las_16_data_5B9B8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_majolyne

# .data:0x348 | 0x29BA8 | size: 0x920
.obj mutate_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000001
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C82
	.4byte 0x00010022
	.4byte 0xFE363C82
	.4byte 0x00010024
	.4byte 0x000000E0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x00010024
	.4byte 0x000000E1
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000003
	.4byte 0x00010024
	.4byte 0x000000E2
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000004
	.4byte 0x00010024
	.4byte 0x000000E3
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000005
	.4byte 0x00010024
	.4byte 0x000000E4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x00010024
	.4byte 0x000000E5
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000007
	.4byte 0x00010024
	.4byte 0x000000E6
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000008
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000001
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000E
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000E
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_ARM_UP_las_00017a08
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3A_las_00017a20
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_ARM_UP_las_00017a08
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3A_las_00017a20
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_ARM_UP_las_00017a08
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3A_las_00017a20
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_LAUGH1_las_00017a28
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3B_las_00017a40
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_EYE_SH_las_00017a48
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xF24A6280
	.4byte 0x0002003C
	.4byte 0xFE363C87
	.4byte 0xFE363C86
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xF24AFE80
	.4byte 0x0002003C
	.4byte 0xFE363C87
	.4byte 0xFE363C86
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C87
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_las_00017a64
	.4byte str_toge_flush_las_00017a68
	.4byte 0x00000003
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
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xF24A9680
	.4byte 0x0002003C
	.4byte 0xFE363C87
	.4byte 0xFE363C86
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xF24A7680
	.4byte 0x0002003C
	.4byte 0xFE363C87
	.4byte 0xFE363C86
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C87
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_las_00017a64
	.4byte str_toge_flush_las_00017a68
	.4byte 0x00000003
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
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_TRANSF_las_00017a74
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_las_00017a64
	.4byte str_kemuri_test_las_00017a90
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFFFFFF92
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0xFFFFFF92
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFB
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte eff_scanning
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_BOSS_RNPL_TRANSF_las_00017a9c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_BOSS_RNPL_TRANSF_las_00017ab8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x00000514
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_BOSS_RNPL_TRANSF_las_00017ad4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0001005E
	.4byte init_event_fmario
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFB
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte eff_scanning
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_BOSS_RNPL_TRANSF_las_00017a9c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_BOSS_RNPL_TRANSF_las_00017ab8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x00000514
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_BOSS_RNPL_TRANSF_las_00017ad4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x000000E0
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte init_event_christine
	.4byte 0x00010024
	.4byte 0x000000E1
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte init_event_nokotarou
	.4byte 0x00010024
	.4byte 0x000000E2
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0x00000004
	.4byte 0x0001005E
	.4byte init_event_yoshi
	.4byte 0x00010024
	.4byte 0x000000E3
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte init_event_clauda
	.4byte 0x00010024
	.4byte 0x000000E4
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0x00000006
	.4byte 0x0001005E
	.4byte init_event_vivian
	.4byte 0x00010024
	.4byte 0x000000E5
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0x00000007
	.4byte 0x0001005E
	.4byte init_event_sanders
	.4byte 0x00010024
	.4byte 0x000000E6
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0x00000008
	.4byte 0x0001005E
	.4byte init_event_chuchurina
	.4byte 0x00000031
	.4byte 0x00000031
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000041
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x0000002B
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mutate_event

# .data:0xC68 | 0x2A4C8 | size: 0x318
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
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventEntry
	.4byte 0xFFFFFFFE
	.4byte entry_event
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000E
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFD050F8A
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFD050F89
	.4byte entry_marilyn
	.4byte 0x00000000
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
	.4byte 0x00000037
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFD050F89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFD050F89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFD050F88
	.4byte entry_majolyne
	.4byte 0x00000000
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
	.4byte 0x0000006E
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFD050F88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFD050F88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F88
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F88
	.4byte 0x00000005
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F88
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F88
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8E
	.4byte 0x00000008
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_MOVE1L_las_00017af0
	.4byte str_SFX_BOSS_RNPL_MOVE1R_las_00017b08
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_MOVE1L_las_00017af0
	.4byte str_SFX_BOSS_RNPL_MOVE1R_las_00017b08
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xF80 | 0x2A7E0 | size: 0xB8
.obj entry_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0001005E
	.4byte btl_majolyne_zoom_16_data_5C224
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_00_las_00017b20
	.4byte 0x00000000
	.4byte 0xFD050F88
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001005E
	.4byte btl_marilyn_zoom_16_data_5C208
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_01_las_00017b30
	.4byte 0x00000000
	.4byte 0xFD050F89
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001005E
	.4byte btl_vivian_zoom_16_data_5C1EC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_02_las_00017b40
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj entry_event

# .data:0x1038 | 0x2A898 | size: 0x58
.obj damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000400
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8D
	.4byte 0x00000001
	.4byte 0x00000021
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

# .data:0x1090 | 0x2A8F0 | size: 0x414
.obj dead_event, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000087
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_las_00017a64
	.4byte str_kemuri_test_las_00017a90
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_TRANSF_las_00017a74
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte pose_table
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table
	.4byte 0x0005005B
	.4byte btlevtcmd_ReplaceParts
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte parts
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeKind
	.4byte 0xFFFFFFFE
	.4byte 0x00000087
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFFFFFFFE
	.4byte regist
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_D_2_las_00017b50
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_D_2_las_00017b50
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_D_2_las_00017b50
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00010022
	.4byte 0xFD050F8B
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFD050F8C
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F8C
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00000031
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F8B
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00010022
	.4byte 0xFD050F8C
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F8C
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btl_vivian_zoom_16_data_5C1EC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_13_las_00017b54
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000031
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btl_vivian_zoom_16_data_5C1EC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_10_las_00017b64
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00020032
	.4byte 0xFD050F8D
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core_nospin_norotate
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0x14A4 | 0x2AD04 | size: 0x15C
.obj unison_phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000003
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010071
	.4byte str_ランペル_ユニゾンフェーズ_las_00017b74
	.4byte 0x0001005E
	.4byte majo_unison_phase_event_16_data_5C534
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C84
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010022
	.4byte 0xFE363C84
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000037
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000069
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000009B
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte btlevtcmd_SortPhaseMoveTable
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00010071
	.4byte str_ランペル_ユニゾンフェーズ終了_las_00017b90
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unison_phase_event

# .data:0x1600 | 0x2AE60 | size: 0x110
.obj phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000003
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000D
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte unk_las_000086ec
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte mutate_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte mutate_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x1710 | 0x2AF70 | size: 0x74
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_rampell_attack
	.4byte 0x0001005E
	.4byte ogg_attack_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1784 | 0x2AFE4 | size: 0x7AC
.obj ogg_attack_event, local
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_las_000179f0
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
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8280
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_las_00017bb0
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_las_00017bb8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2_las_000179ec
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000078
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000046
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A8280
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A8080
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_FLY1_las_00017bc0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte 0x00000070
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000032
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A7D80
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_FALL1_las_00017bd4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x00000050
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A8280
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7A8A
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0xFFFFFFFF
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
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_DOWN1_las_00017be8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A8280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_D_2_las_00017b50
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_O_1_las_00017bfc
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_2_las_00017c00
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A8280
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x00000087
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1B_las_00017c04
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_LANDIN_las_00017c0c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_las_00017bb0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A8280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_las_000179f0
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_las_000179e0
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ogg_attack_event

# .data:0x1F30 | 0x2B790 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1F48 | 0x2B7A8 | size: 0x5
.obj defence_fmario, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_fmario

# .data:0x1F4D | 0x2B7AD | size: 0x3
.obj gap_04_0002B7AD_data, global
.hidden gap_04_0002B7AD_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002B7AD_data

# .data:0x1F50 | 0x2B7B0 | size: 0x5
.obj defence_attr_fmario, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_fmario

# .data:0x1F55 | 0x2B7B5 | size: 0x3
.obj gap_04_0002B7B5_data, global
.hidden gap_04_0002B7B5_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002B7B5_data

# .data:0x1F58 | 0x2B7B8 | size: 0x16
.obj regist_fmario, local
	.4byte 0x28322864
	.4byte 0x2864641E
	.4byte 0x643C643C
	.4byte 0x64502800
	.4byte 0x00642864
	.2byte 0x6405
.endobj regist_fmario

# .data:0x1F6E | 0x2B7CE | size: 0x2
.obj gap_04_0002B7CE_data, global
.hidden gap_04_0002B7CE_data
	.2byte 0x0000
.endobj gap_04_0002B7CE_data

# .data:0x1F70 | 0x2B7D0 | size: 0x78
.obj pose_table_fmario_stay, local
	.4byte 0x00000001
	.4byte str_EM_N_1_las_00017c24
	.4byte 0x00000002
	.4byte str_EM_Y_2_las_00017c2c
	.4byte 0x00000009
	.4byte str_EM_Y_2_las_00017c2c
	.4byte 0x00000005
	.4byte str_EM_K_1_las_00017c34
	.4byte 0x00000004
	.4byte str_EM_K_1_las_00017c34
	.4byte 0x00000003
	.4byte str_EM_K_1_las_00017c34
	.4byte 0x0000001C
	.4byte str_EM_S_1_las_00017c3c
	.4byte 0x00000027
	.4byte str_EM_D_1_las_00017c44
	.4byte 0x00000032
	.4byte str_EM_A_1_las_00017c4c
	.4byte 0x0000002A
	.4byte str_EM_R_1_las_00017c54
	.4byte 0x00000028
	.4byte str_EM_W_1_las_00017c5c
	.4byte 0x00000038
	.4byte str_EM_D_3_las_00017c64
	.4byte 0x00000039
	.4byte str_EM_D_3_las_00017c64
	.4byte 0x00000041
	.4byte str_EM_T_1_las_00017c6c
	.4byte 0x00000045
	.4byte str_EM_S_1_las_00017c3c
.endobj pose_table_fmario_stay

# .data:0x1FE8 | 0x2B848 | size: 0x10
.obj data_table_fmario, local
	.4byte 0x00000031
	.4byte dead_event_fmario
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_fmario

# .data:0x1FF8 | 0x2B858 | size: 0x4C
.obj parts_fmario, local
	.4byte 0x00000001
	.4byte str_btl_un_rampell_las_00017960
	.4byte str_c_mario_las_00017c74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40400000
	.4byte 0x41D80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence_fmario
	.4byte defence_attr_fmario
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table_fmario_stay
.endobj parts_fmario

# .data:0x2044 | 0x2B8A4 | size: 0xC0
.obj weapon_masao_jump, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000006
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
	.4byte 0x01001260
	.4byte 0x20001004
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00015807
	.4byte 0x0000000C
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
.endobj weapon_masao_jump

# .data:0x2104 | 0x2B964 | size: 0xC0
.obj weapon_masao_hammer, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000006
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
	.4byte 0x01001260
	.4byte 0x21002000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00010807
	.4byte 0x0000020C
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
.endobj weapon_masao_hammer

# .data:0x21C4 | 0x2BA24 | size: 0xC0
.obj weapon_masao_kururin_jump, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000008
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
	.4byte 0x01001260
	.4byte 0x20001004
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00015807
	.4byte 0x0000000C
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
.endobj weapon_masao_kururin_jump

# .data:0x2284 | 0x2BAE4 | size: 0xC0
.obj weapon_masao_kaiten_hammer, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000008
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
	.4byte 0x01001260
	.4byte 0x21002000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00010807
	.4byte 0x0000020C
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
.endobj weapon_masao_kaiten_hammer

# .data:0x2344 | 0x2BBA4 | size: 0x4C
.obj mario_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFFFFFF92
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0xFFFFFF92
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_zoom

# .data:0x2390 | 0x2BBF0 | size: 0x4C
.obj enemy_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000073
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0x00000073
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj enemy_zoom

# .data:0x23DC | 0x2BC3C | size: 0x4C
.obj fmario_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0x0000005A
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fmario_zoom

# .data:0x2428 | 0x2BC88 | size: 0x4C
.obj gparty_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000082
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0x00000082
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gparty_zoom

# .data:0x2474 | 0x2BCD4 | size: 0x118
.obj init_event_fmario, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte pose_table_fmario_stay
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_fmario
	.4byte 0x0005005B
	.4byte btlevtcmd_ReplaceParts
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte parts_fmario
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeKind
	.4byte 0xFFFFFFFE
	.4byte 0x00000088
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFFFFFFFE
	.4byte regist_fmario
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event_fmario
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_fmario
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFD050F91
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_MOVE1L_las_00017c7c
	.4byte str_SFX_BOSS_NM_MOVE1R_las_00017c90
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_MOVE1L_las_00017c7c
	.4byte str_SFX_BOSS_NM_MOVE1R_las_00017c90
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_fmario

# .data:0x258C | 0x2BDEC | size: 0x140
.obj dead_event_fmario, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_K_1_las_00017c34
	.4byte 0x00010009
	.4byte 0x00000098
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN2_las_00017ca4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_D_2_las_00017cb8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte dead_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event_fmario

# .data:0x26CC | 0x2BF2C | size: 0xD0
.obj attack_event_fmario, local
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
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_masao_jump
	.4byte 0x0001005E
	.4byte marioAttackEvent_NormalJump
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_masao_hammer
	.4byte 0x0001005E
	.4byte marioAttackEvent_NormalHammer
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_masao_kururin_jump
	.4byte 0x0001005E
	.4byte marioAttackEvent_KururinJump
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_masao_kaiten_hammer
	.4byte 0x0001005E
	.4byte marioAttackEvent_KaitenHammer
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_fmario

# .data:0x279C | 0x2BFFC | size: 0x90
.obj jump_attack_voice, local
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000002
	.4byte 0xFE363C8F
	.4byte 0x00010022
	.4byte 0xFE363C8F
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_VOICE_NM_AC_las_00017cc0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_VOICE_NM_AC_las_00017cd8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_VOICE_NM_AC_las_00017cf0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jump_attack_voice

# .data:0x282C | 0x2C08C | size: 0x560
.obj marioAttackEvent_NormalJump, local
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x0007005B
	.4byte btlevtcmd_GetTakeoffPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_las_00017d08
	.4byte 0x0001005E
	.4byte jump_attack_voice
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_JUMP1_las_00017d10
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0008005B
	.4byte btlevtcmd_MarioJumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN1_las_00017d24
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_D_2_las_00017cb8
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_las_00017d08
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7CE6
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000008
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_W_1_las_00017c5c
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marioAttackEvent_NormalJump

# .data:0x2D8C | 0x2C5EC | size: 0x754
.obj marioAttackEvent_KururinJump, local
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x0007005B
	.4byte btlevtcmd_GetTakeoffPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_las_00017d08
	.4byte 0x0001005E
	.4byte jump_attack_voice
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_JUMP1_las_00017d10
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0008005B
	.4byte btlevtcmd_MarioJumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN1_las_00017d24
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_D_2_las_00017cb8
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
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
	.4byte 0x0001006F
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_las_00017d08
	.4byte 0x0001005E
	.4byte jump_attack_voice
	.4byte 0x0008005B
	.4byte btlevtcmd_MarioJumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0001005F
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00020037
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFE2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_Z_2_las_00017d38
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_JUMP_KUR_las_00017d40
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x00010009
	.4byte 0x00000001
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
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_las_00017d08
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000001B
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7CE6
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000008
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_W_1_las_00017c5c
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marioAttackEvent_KururinJump

# .data:0x34E0 | 0x2CD40 | size: 0x4AC
.obj marioAttackEvent_NormalHammer, local
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000018
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1A_las_00017d5c
	.4byte 0x0001000A
	.4byte 0x00000042
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_HAMMER_F_las_00017d64
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000000E9
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1B_las_00017d80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1C_las_00017d88
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_HAMMER_D_las_00017d90
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x00000064
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
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_S_1_las_00017c3c
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_W_1_las_00017c5c
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marioAttackEvent_NormalHammer

# .data:0x398C | 0x2D1EC | size: 0x4AC
.obj marioAttackEvent_KaitenHammer, local
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000018
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1A_las_00017d5c
	.4byte 0x0001000A
	.4byte 0x00000042
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_HAMMER_F_las_00017d64
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000000E9
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1B_las_00017d80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1C_las_00017d88
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_HAMMER_D_las_00017d90
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x00000064
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
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_S_1_las_00017c3c
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_W_1_las_00017c5c
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marioAttackEvent_KaitenHammer

# .data:0x3E38 | 0x2D698 | size: 0x18
.obj wait_event_fmario, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event_fmario

# .data:0x3E50 | 0x2D6B0 | size: 0xC0
.obj enemyWeapon_ChristineNormalAttack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerFromGulliblePartyAttackLv
	.4byte 0x00000001
	.4byte 0x00000002
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
	.4byte 0x01001260
	.4byte 0x20001004
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00015017
	.4byte 0x0000000C
	.4byte 0x80002000
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
.endobj enemyWeapon_ChristineNormalAttack

# .data:0x3F10 | 0x2D770 | size: 0x5
.obj defence_christine, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_christine

# .data:0x3F15 | 0x2D775 | size: 0x3
.obj gap_04_0002D775_data, global
.hidden gap_04_0002D775_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002D775_data

# .data:0x3F18 | 0x2D778 | size: 0x5
.obj defence_attr_christine, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_christine

# .data:0x3F1D | 0x2D77D | size: 0x3
.obj gap_04_0002D77D_data, global
.hidden gap_04_0002D77D_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002D77D_data

# .data:0x3F20 | 0x2D780 | size: 0x16
.obj regist_christine, local
	.4byte 0x28322864
	.4byte 0x2864641E
	.4byte 0x643C643C
	.4byte 0x64502800
	.4byte 0x00642864
	.2byte 0x6405
.endobj regist_christine

# .data:0x3F36 | 0x2D796 | size: 0x2
.obj gap_04_0002D796_data, global
.hidden gap_04_0002D796_data
	.2byte 0x0000
.endobj gap_04_0002D796_data

# .data:0x3F38 | 0x2D798 | size: 0x10
.obj data_table_christine, local
	.4byte 0x00000031
	.4byte dead_event_christine
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_christine

# .data:0x3F48 | 0x2D7A8 | size: 0x4C
.obj parts_christine, local
	.4byte 0x00000001
	.4byte str_btl_un_rampell_las_00017960
	.4byte str_c_pkr_las_00017da8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence_christine
	.4byte defence_attr_christine
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table_christine_stay
.endobj parts_christine

# .data:0x3F94 | 0x2D7F4 | size: 0x4C
.obj fmario_zoom_christine, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000003A
	.4byte 0x000000E4
	.4byte 0x0000005A
	.4byte 0x00000026
	.4byte 0xFFFFFFEC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fmario_zoom_christine

# .data:0x3FE0 | 0x2D840 | size: 0x4C
.obj gparty_zoom_christine, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000082
	.4byte 0x0000003A
	.4byte 0x000000E4
	.4byte 0x00000082
	.4byte 0x00000026
	.4byte 0xFFFFFFEC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gparty_zoom_christine

# .data:0x402C | 0x2D88C | size: 0x120
.obj init_event_christine, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte pose_table_christine_stay
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_christine
	.4byte 0x0005005B
	.4byte btlevtcmd_ReplaceParts
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte parts_christine
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeKind
	.4byte 0xFFFFFFFE
	.4byte 0x00000089
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFFFFFFFE
	.4byte regist_christine
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event_christine
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_christine
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017db0
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017dc8
	.4byte 0x00000006
	.4byte 0x0000000C
	.4byte 0x00000010
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017db0
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017dc8
	.4byte 0x00000000
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_JUM_las_00017de0
	.4byte str_SFX_PARTY_BATTLE_LAN_las_00017df8
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_christine

# .data:0x414C | 0x2D9AC | size: 0x140
.obj dead_event_christine, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN3_las_00017e14
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKR_D_3_las_00017e28
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_DIE_las_00017e30
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte dead_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event_christine

# .data:0x428C | 0x2DAEC | size: 0xAC8
.obj attack_event_christine, local
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
	.4byte 0xFE363C8C
	.4byte enemyWeapon_ChristineNormalAttack
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
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
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x0007005B
	.4byte btlevtcmd_GetTakeoffPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0007005B
	.4byte btlevtcmd_GetMoveFrame
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte 0x0005005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000032
	.4byte 0x00000032
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000004
	.4byte 0xFE363C8B
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00100100
	.4byte 0xFE363C85
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x0001002B
	.4byte 0x00000002
	.4byte 0x0001002B
	.4byte 0x00000003
	.4byte 0x0001002B
	.4byte 0x00000006
	.4byte 0x0001002B
	.4byte 0x00000004
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000031
	.4byte 0x0002001C
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKR_A_2B_las_00017e48
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKR_J_1A_las_00017e54
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BTL_KURI_ATTACK1_las_00017e60
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE2
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0008005B
	.4byte btlevtcmd_MarioJumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000E
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000024
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0006005B
	.4byte _krb_get_dir
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte btlevtcmd_GetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C88
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xFE363C8C
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xFE363C8D
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0008005B
	.4byte btlevtcmd_MarioJumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKR_S_1_las_00017e78
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_MoveDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_MoveDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x0000005F
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7AD1
	.4byte 0xF24A7A06
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
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0xF24D0480
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_GetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xFE363C86
	.4byte 0x0002001A
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C86
	.4byte 0x0000000F
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x0000000F
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C86
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7CE6
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000008
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0x00010003
	.4byte 0x0000005F
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
.endobj attack_event_christine

# .data:0x4D54 | 0x2E5B4 | size: 0x18
.obj wait_event_christine, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event_christine

# .data:0x4D6C | 0x2E5CC | size: 0xC0
.obj enemyWeapon_NokotarouKouraAttack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerFromGulliblePartyAttackLv
	.4byte 0x00000002
	.4byte 0x00000003
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
	.4byte 0x01001260
	.4byte 0x21004004
	.4byte 0x00080302
	.4byte 0x00000000
	.4byte 0x00010087
	.4byte 0x000005FF
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
.endobj enemyWeapon_NokotarouKouraAttack

# .data:0x4E2C | 0x2E68C | size: 0xC0
.obj enemyWeapon_NokotarouShubibinAttack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerFromGulliblePartyAttackLv
	.4byte 0x00000002
	.4byte 0x00000003
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
	.4byte 0x02101260
	.4byte 0x20004004
	.4byte 0x00080302
	.4byte 0x00000000
	.4byte 0x00010087
	.4byte 0x000005FF
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
.endobj enemyWeapon_NokotarouShubibinAttack

# .data:0x4EEC | 0x2E74C | size: 0x5
.obj defence_nokotarou, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence_nokotarou

# .data:0x4EF1 | 0x2E751 | size: 0x3
.obj gap_04_0002E751_data, global
.hidden gap_04_0002E751_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002E751_data

# .data:0x4EF4 | 0x2E754 | size: 0x5
.obj defence_attr_nokotarou, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_nokotarou

# .data:0x4EF9 | 0x2E759 | size: 0x3
.obj gap_04_0002E759_data, global
.hidden gap_04_0002E759_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002E759_data

# .data:0x4EFC | 0x2E75C | size: 0x5
.obj defence_turn_nokotarou, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_turn_nokotarou

# .data:0x4F01 | 0x2E761 | size: 0x3
.obj gap_04_0002E761_data, global
.hidden gap_04_0002E761_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002E761_data

# .data:0x4F04 | 0x2E764 | size: 0x16
.obj regist_nokotarou, local
	.4byte 0x28322864
	.4byte 0x2864641E
	.4byte 0x643C643C
	.4byte 0x64642800
	.4byte 0x00642864
	.2byte 0x6405
.endobj regist_nokotarou

# .data:0x4F1A | 0x2E77A | size: 0x2
.obj gap_04_0002E77A_data, global
.hidden gap_04_0002E77A_data
	.2byte 0x0000
.endobj gap_04_0002E77A_data

# .data:0x4F1C | 0x2E77C | size: 0x18
.obj data_table_nokotarou, local
	.4byte 0x00000031
	.4byte dead_event_nokotarou
	.4byte 0x0000000D
	.4byte dmg_turn_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_nokotarou

# .data:0x4F34 | 0x2E794 | size: 0x4C
.obj parts_nokotarou, local
	.4byte 0x00000001
	.4byte str_btl_un_rampell_las_00017960
	.4byte str_c_pnk_las_00017e80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence_nokotarou
	.4byte defence_attr_nokotarou
	.4byte 0x00001009
	.4byte 0x00000000
	.4byte pose_table_nokotarou_stay
.endobj parts_nokotarou

# .data:0x4F80 | 0x2E7E0 | size: 0x100
.obj dmg_turn_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence_turn_nokotarou
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table_nokotarou_turn
	.4byte 0x0003005B
	.4byte btlevtcmd_OnStatusFlag
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetOverTurnCount
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_PNK_D_1_las_00017e88
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_INSIDE1_las_00017e90
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_turn_event

# .data:0x5080 | 0x2E8E0 | size: 0x10C
.obj wakeup_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetOverTurnCount
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetOverTurnCount
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence_nokotarou
	.4byte 0x0003005B
	.4byte btlevtcmd_OffStatusFlag
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table_nokotarou_stay
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_PNK_S_1_las_00017ea0
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wakeup_event

# .data:0x518C | 0x2E9EC | size: 0x170
.obj init_event_nokotarou, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte pose_table_nokotarou_stay
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_nokotarou
	.4byte 0x0005005B
	.4byte btlevtcmd_ReplaceParts
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte parts_nokotarou
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeKind
	.4byte 0xFFFFFFFE
	.4byte 0x0000008A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFFFFFFFE
	.4byte regist_nokotarou
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event_nokotarou
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_nokotarou
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event_nokotarou
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017db0
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017dc8
	.4byte 0x00000006
	.4byte 0x0000000C
	.4byte 0x00000010
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017db0
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017dc8
	.4byte 0x00000000
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_JUM_las_00017de0
	.4byte str_SFX_PARTY_BATTLE_LAN_las_00017df8
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_nokotarou

# .data:0x52FC | 0x2EB5C | size: 0x18
.obj damage_event_nokotarou, local
	.4byte 0x0001005E
	.4byte _koura_rotate_stop
	.4byte 0x0001005E
	.4byte damage_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event_nokotarou

# .data:0x5314 | 0x2EB74 | size: 0x140
.obj dead_event_nokotarou, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN3_las_00017e14
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PNK_D_3_las_00017ea8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_DIE_las_00017e30
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte dead_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event_nokotarou

# .data:0x5454 | 0x2ECB4 | size: 0x88
.obj _change_koura_pose, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PNK_K_2_las_00017eb0
	.4byte 0x00010005
	.4byte 0x00000012
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PNK_K_1_las_00017eb8
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _change_koura_pose

# .data:0x54DC | 0x2ED3C | size: 0x88
.obj _change_koura_pose_fast, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PNK_K_2_las_00017eb0
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000001B
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PNK_K_1_las_00017eb8
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _change_koura_pose_fast

# .data:0x5564 | 0x2EDC4 | size: 0xBC
.obj _restore_koura_pose, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PNK_K_1_las_00017eb8
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000002D
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PNK_K_2_las_00017eb0
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _restore_koura_pose

# .data:0x5620 | 0x2EE80 | size: 0x18C
.obj _koura_rotate_start, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C8B
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C8A
	.4byte 0x00020037
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFF
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C8A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C8A
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _koura_rotate_start

# .data:0x57AC | 0x2F00C | size: 0x34
.obj _koura_rotate_stop, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _koura_rotate_stop

# .data:0x57E0 | 0x2F040 | size: 0x84
.obj attack_event_nokotarou, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetOverTurnCount
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte wakeup_event
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000032
	.4byte 0x00000032
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte attack_event_nokotarou_koura
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte attack_event_nokotarou_shubibin
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_nokotarou

# .data:0x5864 | 0x2F0C4 | size: 0x624
.obj attack_event_nokotarou_koura, local
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
	.4byte 0xFE363C8C
	.4byte enemyWeapon_NokotarouKouraAttack
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
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00010009
	.4byte 0x00000014
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
	.4byte 0x0001005E
	.4byte _change_koura_pose
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BTL_NOKO_ATTACK1_las_00017ec0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x0000002D
	.4byte 0x0001005E
	.4byte _koura_rotate_start
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C86
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x00000190
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8D
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BTL_NOKO_ATTACK2_las_00017ed8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24AA280
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0007005B
	.4byte btlevtcmd_GetMoveFrame
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte _koura_rotate_stop
	.4byte 0x0001005E
	.4byte _restore_koura_pose
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000012
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7CE6
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000008
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte _restore_koura_pose
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x0000005F
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_nokotarou_koura

# .data:0x5E88 | 0x2F6E8 | size: 0x54C
.obj attack_event_nokotarou_shubibin, local
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
	.4byte 0xFE363C8C
	.4byte enemyWeapon_NokotarouShubibinAttack
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
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00010009
	.4byte 0x00000014
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
	.4byte 0x0001005E
	.4byte _change_koura_pose
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BTL_NOKO_SHUBIBI_las_00017ef0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x0000002D
	.4byte 0x0001005E
	.4byte _koura_rotate_start
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x00000190
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8D
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BTL_NOKO_SHUBIBI_las_00017f08
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_btl_camera_set_posoffset
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24AA280
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C86
	.4byte 0x00020019
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010003
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000050
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFE70
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte _koura_rotate_stop
	.4byte 0x0001005E
	.4byte _restore_koura_pose
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_nokotarou_shubibin

# .data:0x63D4 | 0x2FC34 | size: 0x18
.obj wait_event_nokotarou, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event_nokotarou

# .data:0x63EC | 0x2FC4C | size: 0xC0
.obj enemyWeapon_ClaudaNormalAttack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerFromGulliblePartyAttackLv
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000006
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
	.4byte 0x01001260
	.4byte 0x20001004
	.4byte 0x000A0302
	.4byte 0x00000000
	.4byte 0x00014087
	.4byte 0x0000000C
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
.endobj enemyWeapon_ClaudaNormalAttack

# .data:0x64AC | 0x2FD0C | size: 0x5
.obj defence_clauda, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_clauda

# .data:0x64B1 | 0x2FD11 | size: 0x3
.obj gap_04_0002FD11_data, global
.hidden gap_04_0002FD11_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002FD11_data

# .data:0x64B4 | 0x2FD14 | size: 0x5
.obj defence_attr_clauda, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_clauda

# .data:0x64B9 | 0x2FD19 | size: 0x3
.obj gap_04_0002FD19_data, global
.hidden gap_04_0002FD19_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002FD19_data

# .data:0x64BC | 0x2FD1C | size: 0x16
.obj regist_clauda, local
	.4byte 0x28326464
	.4byte 0x2864641E
	.4byte 0x643C643C
	.4byte 0x64502800
	.4byte 0x00642864
	.2byte 0x6405
.endobj regist_clauda

# .data:0x64D2 | 0x2FD32 | size: 0x2
.obj gap_04_0002FD32_data, global
.hidden gap_04_0002FD32_data
	.2byte 0x0000
.endobj gap_04_0002FD32_data

# .data:0x64D4 | 0x2FD34 | size: 0x10
.obj data_table_clauda, local
	.4byte 0x00000031
	.4byte dead_event_clauda
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_clauda

# .data:0x64E4 | 0x2FD44 | size: 0x4C
.obj parts_clauda, local
	.4byte 0x00000001
	.4byte str_btl_un_rampell_las_00017960
	.4byte str_c_windy_las_00017f20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence_clauda
	.4byte defence_attr_clauda
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table_clauda_stay
.endobj parts_clauda

# .data:0x6530 | 0x2FD90 | size: 0x140
.obj init_event_clauda, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte pose_table_clauda_stay
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_clauda
	.4byte 0x0005005B
	.4byte btlevtcmd_ReplaceParts
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte parts_clauda
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeKind
	.4byte 0xFFFFFFFE
	.4byte 0x0000008C
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFFFFFFFE
	.4byte regist_clauda
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event_clauda
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_clauda
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_HAN_las_00017f28
	.4byte str_SFX_PARTY_BATTLE_HAN_las_00017f28
	.4byte 0x00000006
	.4byte 0x0000000C
	.4byte 0x00000010
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_HAN_las_00017f28
	.4byte str_SFX_PARTY_BATTLE_HAN_las_00017f28
	.4byte 0x00000000
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_SetDiveSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_HAN_las_00017f28
	.4byte str_SFX_PARTY_BATTLE_HAN_las_00017f28
	.4byte 0x00000000
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_JUM_las_00017de0
	.4byte str_SFX_PARTY_BATTLE_LAN_las_00017df8
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_clauda

# .data:0x6670 | 0x2FED0 | size: 0x140
.obj dead_event_clauda, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN3_las_00017e14
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PWD_D_3_las_00017f40
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_DIE_las_00017e30
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte dead_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event_clauda

# .data:0x67B0 | 0x30010 | size: 0x624
.obj attack_event_clauda, local
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
	.4byte 0xFE363C8C
	.4byte enemyWeapon_ClaudaNormalAttack
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
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
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
	.4byte 0x00000190
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PWD_A1_1_las_00017f48
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BTL_CLAUD_ATTACK_las_00017f54
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B4C
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0002005B
	.4byte btlevtcmd_GetResultAC
	.4byte 0xFE363C85
	.4byte 0x0002001F
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000028
	.4byte 0xFE363C85
	.4byte 0x00020036
	.4byte 0xFE363C85
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C85
	.4byte 0x00020036
	.4byte 0xFE363C85
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C86
	.4byte 0x00020019
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PWD_A1_2_las_00017f6c
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PWD_D_3_las_00017f40
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010004
	.4byte 0x0000005F
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BTL_CLAUD_ATTACK_las_00017f78
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000D
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init_float
	.4byte 0x0000000B
	.4byte 0xF24A7E80
	.4byte 0xF24A7C19
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_float
	.4byte 0xFE363C85
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetScale
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init_float
	.4byte 0x0000000B
	.4byte 0xF24A7C19
	.4byte 0xF24A7E80
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_float
	.4byte 0xFE363C85
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetScale
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init_float
	.4byte 0x0000000B
	.4byte 0xF24A7E80
	.4byte 0xF24A8080
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_float
	.4byte 0xFE363C85
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetScale
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init_float
	.4byte 0x0000000B
	.4byte 0xF24A8080
	.4byte 0xF24A7E80
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_float
	.4byte 0xFE363C85
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetScale
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x00010003
	.4byte 0x0000005F
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
.endobj attack_event_clauda

# .data:0x6DD4 | 0x30634 | size: 0x18
.obj wait_event_clauda, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event_clauda

# .data:0x6DEC | 0x3064C | size: 0xC0
.obj enemyWeapon_YoshiNormalAttack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerFromGulliblePartyAttackLv
	.4byte 0x00000001
	.4byte 0x00000001
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
	.4byte 0x01001260
	.4byte 0x20001004
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00015097
	.4byte 0x0000000C
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
.endobj enemyWeapon_YoshiNormalAttack

# .data:0x6EAC | 0x3070C | size: 0x5
.obj defence_yoshi, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_yoshi

# .data:0x6EB1 | 0x30711 | size: 0x3
.obj gap_04_00030711_data, global
.hidden gap_04_00030711_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00030711_data

# .data:0x6EB4 | 0x30714 | size: 0x5
.obj defence_attr_yoshi, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_yoshi

# .data:0x6EB9 | 0x30719 | size: 0x3
.obj gap_04_00030719_data, global
.hidden gap_04_00030719_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00030719_data

# .data:0x6EBC | 0x3071C | size: 0x16
.obj regist_yoshi, local
	.4byte 0x28322864
	.4byte 0x2864641E
	.4byte 0x643C643C
	.4byte 0x64502800
	.4byte 0x00642864
	.2byte 0x6405
.endobj regist_yoshi

# .data:0x6ED2 | 0x30732 | size: 0x2
.obj gap_04_00030732_data, global
.hidden gap_04_00030732_data
	.2byte 0x0000
.endobj gap_04_00030732_data

# .data:0x6ED4 | 0x30734 | size: 0x10
.obj data_table_yoshi, local
	.4byte 0x00000031
	.4byte dead_event_yoshi
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_yoshi

# .data:0x6EE4 | 0x30744 | size: 0x4C
.obj parts_yoshi, local
	.4byte 0x00000001
	.4byte str_btl_un_rampell_las_00017960
	.4byte str_c_babyyoshi_las_00017f90
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence_yoshi
	.4byte defence_attr_yoshi
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table_yoshi_stay
.endobj parts_yoshi

# .data:0x6F30 | 0x30790 | size: 0xD8
.obj init_event_yoshi, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte pose_table_yoshi_stay
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_yoshi
	.4byte 0x0005005B
	.4byte btlevtcmd_ReplaceParts
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte parts_yoshi
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeKind
	.4byte 0xFFFFFFFE
	.4byte 0x0000008B
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFFFFFFFE
	.4byte regist_yoshi
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event_yoshi
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_yoshi
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0002005B
	.4byte yoshi_original_color_anim_set
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_yoshi

# .data:0x7008 | 0x30868 | size: 0x140
.obj dead_event_yoshi, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN3_las_00017e14
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PYS_D_3_las_00017f9c
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_DIE_las_00017e30
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte dead_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event_yoshi

# .data:0x7148 | 0x309A8 | size: 0xBB0
.obj attack_event_yoshi, local
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
	.4byte 0xFE363C8C
	.4byte enemyWeapon_YoshiNormalAttack
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
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
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
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
	.4byte 0x000000FA
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x0000015E
	.4byte 0x0001006C
	.4byte 0xFE363C8D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017db0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017dc8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PYS_R_5_las_00017fa4
	.4byte 0x00010009
	.4byte 0x00000019
	.4byte 0x0001005F
	.4byte 0xFE363C8D
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PYS_J_1A_las_00017fac
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7BB3
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
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000023
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_JUM_las_00017de0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PYS_A_3_las_00017fb8
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x00000028
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xF24A7E80
	.4byte 0x0001006C
	.4byte 0xFE363C8D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017db0
	.4byte 0xF1194D80
	.4byte 0x000000BE
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017dc8
	.4byte 0xF1194D80
	.4byte 0x0000017D
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017db0
	.4byte 0xF1194D80
	.4byte 0x0000029C
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017dc8
	.4byte 0xF1194D80
	.4byte 0x0000035B
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017db0
	.4byte 0xF1194D80
	.4byte 0x00000479
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017dc8
	.4byte 0xF1194D80
	.4byte 0x000004D9
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017db0
	.4byte 0xF1194D80
	.4byte 0x000005F7
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017dc8
	.4byte 0xF1194D80
	.4byte 0x00000716
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017db0
	.4byte 0xF1194D80
	.4byte 0x00000834
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017dc8
	.4byte 0xF1194D80
	.4byte 0x00000894
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017db0
	.4byte 0xF1194D80
	.4byte 0x000006CE
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_las_00017dc8
	.4byte 0xF1194D80
	.4byte 0x000005F7
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte btl_yoshi_yoroyoro_jump_calc_param
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C8A
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btl_yoshi_yoroyoro_jump_move
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C8A
	.4byte 0xFE363C89
	.4byte 0x0001005F
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000004
	.4byte 0xFE363C8B
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00100100
	.4byte 0xFE363C85
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x0001002B
	.4byte 0x00000002
	.4byte 0x0001002B
	.4byte 0x00000003
	.4byte 0x0001002B
	.4byte 0x00000006
	.4byte 0x0001002B
	.4byte 0x00000004
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x00000031
	.4byte 0x0002001C
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKR_A_2B_las_00017e48
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKR_J_1A_las_00017e54
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PYS_J_1B_las_00017fc0
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000009
	.4byte 0x00020037
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFD8
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BTL_YOSHI_ATTACK_las_00017fcc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
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
	.4byte str_PYS_A_1_las_00017fe4
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PYS_A_1_las_00017fe4
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00020019
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C8F
	.4byte 0xFE363C81
	.4byte 0x00020038
	.4byte 0xFE363C8F
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PYS_D_1_las_00017fec
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFFFFFFF9
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PYS_A_5_las_00017ff4
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000036
	.4byte 0x00010004
	.4byte 0x0000005F
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B4C
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PYS_D_1_las_00017fec
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00010003
	.4byte 0x0000005F
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
.endobj attack_event_yoshi

# .data:0x7CF8 | 0x31558 | size: 0x18
.obj wait_event_yoshi, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event_yoshi

# .data:0x7D10 | 0x31570 | size: 0x5
.obj defence_vivian, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_vivian

# .data:0x7D15 | 0x31575 | size: 0x3
.obj gap_04_00031575_data, global
.hidden gap_04_00031575_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00031575_data

# .data:0x7D18 | 0x31578 | size: 0x5
.obj defence_attr_vivian, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_vivian

# .data:0x7D1D | 0x3157D | size: 0x3
.obj gap_04_0003157D_data, global
.hidden gap_04_0003157D_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0003157D_data

# .data:0x7D20 | 0x31580 | size: 0x16
.obj regist_vivian, local
	.4byte 0x28322864
	.4byte 0x2864641E
	.4byte 0x643C643C
	.4byte 0x64502800
	.4byte 0x00642864
	.2byte 0x6405
.endobj regist_vivian

# .data:0x7D36 | 0x31596 | size: 0x2
.obj gap_04_00031596_data, global
.hidden gap_04_00031596_data
	.2byte 0x0000
.endobj gap_04_00031596_data

# .data:0x7D38 | 0x31598 | size: 0x10
.obj data_table_vivian, local
	.4byte 0x00000031
	.4byte dead_event_vivian
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_vivian

# .data:0x7D48 | 0x315A8 | size: 0x4C
.obj parts_vivian, local
	.4byte 0x00000001
	.4byte str_btl_un_rampell_las_00017960
	.4byte str_c_vivian_las_00017ffc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence_vivian
	.4byte defence_attr_vivian
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table_vivian_stay
.endobj parts_vivian

# .data:0x7D94 | 0x315F4 | size: 0xC0
.obj weapon_vivian_kagenuke_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerFromGulliblePartyAttackLv
	.4byte 0x00000003
	.4byte 0x00000004
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
	.4byte 0x01101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00014087
	.4byte 0x0000000C
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
.endobj weapon_vivian_kagenuke_attack

# .data:0x7E54 | 0x316B4 | size: 0x4C
.obj vivian_down, local
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_VIVI_SHADOW_las_00018008
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte battle_evt_majo_disp_off
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj vivian_down

# .data:0x7EA0 | 0x31700 | size: 0x6C
.obj vivian_up, local
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_VIVI_SHADOW_las_00018020
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte battle_evt_majo_disp_on
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x00000001
.endobj vivian_up

# .data:0x7F0C | 0x3176C | size: 0x100
.obj init_event_vivian, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte pose_table_vivian_stay
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_vivian
	.4byte 0x0005005B
	.4byte btlevtcmd_ReplaceParts
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte parts_vivian
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeKind
	.4byte 0xFFFFFFFE
	.4byte 0x0000008D
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFFFFFFFE
	.4byte regist_vivian
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event_vivian
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_vivian
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
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte vivian_shadow_tail_event
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000E
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_vivian

# .data:0x800C | 0x3186C | size: 0x140
.obj dead_event_vivian, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN3_las_00017e14
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PTR_D_3_las_00018038
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_DIE_las_00017e30
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte dead_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event_vivian

# .data:0x814C | 0x319AC | size: 0x378
.obj attack_event_vivian, local
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
	.4byte weapon_vivian_kagenuke_attack
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0001005E
	.4byte vivian_down
	.4byte 0x0001000A
	.4byte 0x0000012C
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
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte vivian_up
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PTR_A2_2_las_00018040
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_VIVI_ATTACK_las_0001804c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x0001005E
	.4byte vivian_down
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005E
	.4byte vivian_up
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_vivian

# .data:0x84C4 | 0x31D24 | size: 0x18
.obj wait_event_vivian, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event_vivian

# .data:0x84DC | 0x31D3C | size: 0x5
.obj defence_sanders, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_sanders

# .data:0x84E1 | 0x31D41 | size: 0x3
.obj gap_04_00031D41_data, global
.hidden gap_04_00031D41_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00031D41_data

# .data:0x84E4 | 0x31D44 | size: 0x5
.obj defence_attr_sanders, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_sanders

# .data:0x84E9 | 0x31D49 | size: 0x3
.obj gap_04_00031D49_data, global
.hidden gap_04_00031D49_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00031D49_data

# .data:0x84EC | 0x31D4C | size: 0x16
.obj regist_sanders, local
	.4byte 0x28322864
	.4byte 0x28646464
	.4byte 0x643C643C
	.4byte 0x64502800
	.4byte 0x00642864
	.2byte 0x6405
.endobj regist_sanders

# .data:0x8502 | 0x31D62 | size: 0x2
.obj gap_04_00031D62_data, global
.hidden gap_04_00031D62_data
	.2byte 0x0000
.endobj gap_04_00031D62_data

# .data:0x8504 | 0x31D64 | size: 0x10
.obj data_table_sanders, local
	.4byte 0x00000031
	.4byte dead_event_sanders
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_sanders

# .data:0x8514 | 0x31D74 | size: 0x4C
.obj parts_sanders, local
	.4byte 0x00000001
	.4byte str_btl_un_rampell_las_00017960
	.4byte str_c_bomt_n_las_00018064
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x41C00000
	.4byte 0x40A00000
	.4byte 0x00000000
	.4byte 0x41C00000
	.4byte 0x00000000
	.4byte 0x00140018
	.4byte 0x00FF0000
	.4byte defence_sanders
	.4byte defence_attr_sanders
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table_sanders_stay
.endobj parts_sanders

# .data:0x8560 | 0x31DC0 | size: 0xC0
.obj enemyWeapon_SandersNormalAttack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerFromGulliblePartyAttackLv
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
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
	.4byte 0x03000302
	.4byte 0x00000000
	.4byte 0x00014087
	.4byte 0x000007FB
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
.endobj enemyWeapon_SandersNormalAttack

# .data:0x8620 | 0x31E80 | size: 0xCC
.obj init_event_sanders, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte pose_table_sanders_stay
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_sanders
	.4byte 0x0005005B
	.4byte btlevtcmd_ReplaceParts
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte parts_sanders
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeKind
	.4byte 0xFFFFFFFE
	.4byte 0x0000008E
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFFFFFFFE
	.4byte regist_sanders
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event_sanders
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_sanders
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_sanders

# .data:0x86EC | 0x31F4C | size: 0x140
.obj dead_event_sanders, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN3_las_00017e14
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_D_3_las_00018070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_DIE_las_00017e30
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte dead_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event_sanders

# .data:0x882C | 0x3208C | size: 0x60
.obj attack_event_sanders, local
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
	.4byte 0xFE363C8C
	.4byte enemyWeapon_SandersNormalAttack
	.4byte 0x0001005E
	.4byte attack_event_sanders_normal
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_sanders

# .data:0x888C | 0x320EC | size: 0x514
.obj attack_event_sanders_normal, local
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
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_2_las_00017c00
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_GetWidth
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C8F
	.4byte 0x00020038
	.4byte 0xFE363C86
	.4byte 0x00000002
	.4byte 0x0002003C
	.4byte 0xFE363C8F
	.4byte 0x00000014
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
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte btlevtcmd_SetMoveSoundDataWork
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BTL_THUNDERS_ATT_las_00018074
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000005A
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BTL_THUNDERS_ATT_las_00018090
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3_las_000180ac
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BTL_THUNDERS_ATT_las_000180b0
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHeight
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x00020038
	.4byte 0xFE363C86
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_las_00017a64
	.4byte str_bomb_n64_las_000180cc
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C86
	.4byte 0x00020019
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x0000005C
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010003
	.4byte 0x0000005C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1A_las_000180d8
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1B_las_00017c04
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7C19
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x00010003
	.4byte 0x0000005F
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_sanders_normal

# .data:0x8DA0 | 0x32600 | size: 0x18
.obj wait_event_sanders, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event_sanders

# .data:0x8DB8 | 0x32618 | size: 0x5
.obj defence_chuchurina, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_chuchurina

# .data:0x8DBD | 0x3261D | size: 0x3
.obj gap_04_0003261D_data, global
.hidden gap_04_0003261D_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0003261D_data

# .data:0x8DC0 | 0x32620 | size: 0x5
.obj defence_attr_chuchurina, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_chuchurina

# .data:0x8DC5 | 0x32625 | size: 0x3
.obj gap_04_00032625_data, global
.hidden gap_04_00032625_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00032625_data

# .data:0x8DC8 | 0x32628 | size: 0x16
.obj regist_chuchurina, local
	.4byte 0x28322864
	.4byte 0x2864641E
	.4byte 0x643C643C
	.4byte 0x64502800
	.4byte 0x00642864
	.2byte 0x6405
.endobj regist_chuchurina

# .data:0x8DDE | 0x3263E | size: 0x2
.obj gap_04_0003263E_data, global
.hidden gap_04_0003263E_data
	.2byte 0x0000
.endobj gap_04_0003263E_data

# .data:0x8DE0 | 0x32640 | size: 0x10
.obj data_table_chuchurina, local
	.4byte 0x00000031
	.4byte dead_event_chuchurina
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_chuchurina

# .data:0x8DF0 | 0x32650 | size: 0x4C
.obj parts_chuchurina, local
	.4byte 0x00000001
	.4byte str_btl_un_rampell_las_00017960
	.4byte str_c_tyutyu_las_000180e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x41C00000
	.4byte 0x40A00000
	.4byte 0x00000000
	.4byte 0x41C00000
	.4byte 0x00000000
	.4byte 0x00140018
	.4byte 0x00FF0000
	.4byte defence_chuchurina
	.4byte defence_attr_chuchurina
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table_chuchurina_stay
.endobj parts_chuchurina

# .data:0x8E3C | 0x3269C | size: 0xC0
.obj enemyWeapon_ChuchurinaNormalAttackR, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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
	.4byte 0x21002000
	.4byte 0x00160302
	.4byte 0x00000000
	.4byte 0x000140C7
	.4byte 0x0000020C
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
.endobj enemyWeapon_ChuchurinaNormalAttackR

# .data:0x8EFC | 0x3275C | size: 0xC0
.obj enemyWeapon_ChuchurinaNormalAttackL, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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
	.4byte 0x21002000
	.4byte 0x00150302
	.4byte 0x00000000
	.4byte 0x000140C7
	.4byte 0x0000020C
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
.endobj enemyWeapon_ChuchurinaNormalAttackL

# .data:0x8FBC | 0x3281C | size: 0xC0
.obj enemyWeapon_ChuchurinaNormalAttackRlast, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerFromGulliblePartyAttackLv
	.4byte 0x00000002
	.4byte 0x00000003
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
	.4byte 0x00000000
	.4byte 0x01101260
	.4byte 0x21002000
	.4byte 0x00180302
	.4byte 0x00000000
	.4byte 0x000140C7
	.4byte 0x0000000C
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
.endobj enemyWeapon_ChuchurinaNormalAttackRlast

# .data:0x907C | 0x328DC | size: 0xC0
.obj enemyWeapon_ChuchurinaNormalAttackLlast, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerFromGulliblePartyAttackLv
	.4byte 0x00000002
	.4byte 0x00000003
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
	.4byte 0x00000000
	.4byte 0x01101260
	.4byte 0x21002000
	.4byte 0x00170302
	.4byte 0x00000000
	.4byte 0x000140C7
	.4byte 0x0000000C
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
.endobj enemyWeapon_ChuchurinaNormalAttackLlast

# .data:0x913C | 0x3299C | size: 0xCC
.obj init_event_chuchurina, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte pose_table_chuchurina_stay
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_chuchurina
	.4byte 0x0005005B
	.4byte btlevtcmd_ReplaceParts
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte parts_chuchurina
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeKind
	.4byte 0xFFFFFFFE
	.4byte 0x0000008F
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFFFFFFFE
	.4byte regist_chuchurina
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event_chuchurina
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_chuchurina
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_chuchurina

# .data:0x9208 | 0x32A68 | size: 0x140
.obj dead_event_chuchurina, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN3_las_00017e14
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PCH_D_3_las_000180ec
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_DIE_las_00017e30
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte dead_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event_chuchurina

# .data:0x9348 | 0x32BA8 | size: 0x60
.obj attack_event_chuchurina, local
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
	.4byte 0xFE363C8C
	.4byte enemyWeapon_ChuchurinaNormalAttackR
	.4byte 0x0001005E
	.4byte attack_event_chuchurina_normal
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_chuchurina

# .data:0x93A8 | 0x32C08 | size: 0xCFC
.obj attack_event_chuchurina_normal, local
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
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
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
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetWidth
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x00020038
	.4byte 0xFE363C86
	.4byte 0x00000002
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0x0000000C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x0000015E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PCH_A1_1_las_000180f4
	.4byte 0x0001006F
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020039
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7EB3
	.4byte 0xF24A7EB3
	.4byte 0xF24A7E80
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000FF
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x000000BE
	.4byte 0x00020037
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C82
	.4byte 0x00000064
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_SetRGB
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0xFE363C81
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005F
	.4byte 0xFE363C8E
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x0006005B
	.4byte btlevtcmd_SetRGB
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0001006F
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFFFFFFB5
	.4byte 0x0005005B
	.4byte btlevtcmd_GetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C80
	.4byte 0xF1194D80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x000000B4
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x00000008
	.4byte 0x00010005
	.4byte 0x00000008
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFFFFFFC4
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFFFFFFB5
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000B
	.4byte 0xFE363C89
	.4byte 0xFE363C88
	.4byte 0x00000004
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000002
	.4byte 0xFE363C8E
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000012
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PCH_A1_2_las_00018100
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00100100
	.4byte 0xFE363C86
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C86
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000012
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000024
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PCH_A2_4_las_0001810c
	.4byte 0x00010009
	.4byte 0x00000034
	.4byte 0x00010004
	.4byte 0x0000005F
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020039
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte enemyWeapon_ChuchurinaNormalAttackR
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte enemyWeapon_ChuchurinaNormalAttackRlast
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte enemyWeapon_ChuchurinaNormalAttackL
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte enemyWeapon_ChuchurinaNormalAttackLlast
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0xFE363C8E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BTL_CHUCHURINA_A_las_00018118
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002004D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BTL_CHUCHURINA_A_las_00018134
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BTL_CHUCHURINA_A_las_00018150
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFE363C8A
	.4byte 0x00010028
	.4byte 0x00000002
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C8D
	.4byte 0x0002001D
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x0000004B
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFFFFFFB5
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C80
	.4byte 0xF1194D80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x000000B4
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0000000E
	.4byte 0x00010005
	.4byte 0x0000000E
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C8D
	.4byte 0x0002001D
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x0000003C
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x0000004B
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFFFFFFC4
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFFFFFFB5
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000B
	.4byte 0xFE363C89
	.4byte 0xFE363C88
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C8D
	.4byte 0x0002001D
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x0000004B
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFFFFFFB5
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000B
	.4byte 0xFE363C89
	.4byte 0xFE363C88
	.4byte 0x0000000C
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8F
	.4byte 0x0000002A
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C88
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000168
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0002001D
	.4byte 0xFE363C88
	.4byte 0x000000B4
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x0000003C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0002001D
	.4byte 0xFE363C88
	.4byte 0x000000B4
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C87
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xFE363C87
	.4byte 0x00000014
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000031
	.4byte 0x00020037
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xFE363C8E
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000005F
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_chuchurina_normal

# .data:0xA0A4 | 0x33904 | size: 0x18
.obj wait_event_chuchurina, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event_chuchurina

# .data:0xA0BC | 0x3391C | size: 0x4
.obj gap_04_0003391C_data, global
.hidden gap_04_0003391C_data
	.4byte 0x00000000
.endobj gap_04_0003391C_data
