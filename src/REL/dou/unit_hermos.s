.include "macros.inc"
.file "unit_hermos.o"

# 0x0000226C..0x0000273C | size: 0x4D0
.text
.balign 4

# .text:0x0 | 0x226C | size: 0x21C
.fn eff_all_fire, local
/* 0000226C 00002330  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 00002270 00002334  7C 08 02 A6 */	mflr r0
/* 00002274 00002338  90 01 00 74 */	stw r0, 0x74(r1)
/* 00002278 0000233C  BF 81 00 60 */	stmw r28, 0x60(r1)
/* 0000227C 00002340  7C 9E 23 78 */	mr r30, r4
/* 00002280 00002344  7C 7D 1B 78 */	mr r29, r3
/* 00002284 00002348  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00002288 0000234C  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 0000228C 00002350  4B FF DD E1 */	bl evtGetValue
/* 00002290 00002354  7C 64 1B 78 */	mr r4, r3
/* 00002294 00002358  7F A3 EB 78 */	mr r3, r29
/* 00002298 0000235C  4B FF DD D5 */	bl BattleTransID
/* 0000229C 00002360  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 000022A0 00002364  7C 7C 1B 78 */	mr r28, r3
/* 000022A4 00002368  7F A3 EB 78 */	mr r3, r29
/* 000022A8 0000236C  4B FF DD C5 */	bl evtGetValue
/* 000022AC 00002370  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000022B0 00002374  7C 7F 1B 78 */	mr r31, r3
/* 000022B4 00002378  38 64 00 00 */	addi r3, r4, _battleWorkPointer@l
/* 000022B8 0000237C  7F 84 E3 78 */	mr r4, r28
/* 000022BC 00002380  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000022C0 00002384  4B FF DD AD */	bl BattleGetUnitPtr
/* 000022C4 00002388  3C 80 00 00 */	lis r4, dat_dou_00006580@ha
/* 000022C8 0000238C  38 00 00 05 */	li r0, 0x5
/* 000022CC 00002390  38 84 00 00 */	addi r4, r4, dat_dou_00006580@l
/* 000022D0 00002394  7C 7D 1B 78 */	mr r29, r3
/* 000022D4 00002398  38 A1 00 1C */	addi r5, r1, 0x1c
/* 000022D8 0000239C  38 84 FF FC */	subi r4, r4, 0x4
/* 000022DC 000023A0  7C 09 03 A6 */	mtctr r0
.L_000022E0:
/* 000022E0 000023A4  80 64 00 04 */	lwz r3, 0x4(r4)
/* 000022E4 000023A8  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 000022E8 000023AC  90 65 00 04 */	stw r3, 0x4(r5)
/* 000022EC 000023B0  94 05 00 08 */	stwu r0, 0x8(r5)
/* 000022F0 000023B4  42 00 FF F0 */	bdnz .L_000022E0
/* 000022F4 000023B8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 000022F8 000023BC  41 82 00 70 */	beq .L_00002368
/* 000022FC 000023C0  3C 60 00 00 */	lis r3, zero_dou_000065d4@ha
/* 00002300 000023C4  3C 80 00 00 */	lis r4, float_neg1000_dou_000065d8@ha
/* 00002304 000023C8  38 A3 00 00 */	addi r5, r3, zero_dou_000065d4@l
/* 00002308 000023CC  C0 44 00 00 */	lfs f2, float_neg1000_dou_000065d8@l(r4)
/* 0000230C 000023D0  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00002310 000023D4  3C 60 00 00 */	lis r3, float_1_dou_000065dc@ha
/* 00002314 000023D8  C0 83 00 00 */	lfs f4, float_1_dou_000065dc@l(r3)
/* 00002318 000023DC  38 60 00 06 */	li r3, 0x6
/* 0000231C 000023E0  FC 60 08 90 */	fmr f3, f1
/* 00002320 000023E4  38 80 00 78 */	li r4, 0x78
/* 00002324 000023E8  4B FF DD 49 */	bl effFireEntry
/* 00002328 000023EC  3C C0 00 00 */	lis r6, eff2@ha
/* 0000232C 000023F0  3C A0 00 00 */	lis r5, float_2_dou_000065e0@ha
/* 00002330 000023F4  57 E0 10 3A */	slwi r0, r31, 2
/* 00002334 000023F8  C0 05 00 00 */	lfs f0, float_2_dou_000065e0@l(r5)
/* 00002338 000023FC  38 C6 00 00 */	addi r6, r6, eff2@l
/* 0000233C 00002400  38 81 00 20 */	addi r4, r1, 0x20
/* 00002340 00002404  7C 66 01 2E */	stwx r3, r6, r0
/* 00002344 00002408  7C 66 00 2E */	lwzx r3, r6, r0
/* 00002348 0000240C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 0000234C 00002410  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 00002350 00002414  7C 66 00 2E */	lwzx r3, r6, r0
/* 00002354 00002418  C0 3D 01 14 */	lfs f1, 0x114(r29)
/* 00002358 0000241C  7C 04 04 2E */	lfsx f0, r4, r0
/* 0000235C 00002420  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00002360 00002424  EC 01 00 32 */	fmuls f0, f1, f0
/* 00002364 00002428  D0 03 00 7C */	stfs f0, 0x7c(r3)
.L_00002368:
/* 00002368 0000242C  3C 60 00 00 */	lis r3, eff2@ha
/* 0000236C 00002430  57 FE 10 3A */	slwi r30, r31, 2
/* 00002370 00002434  38 63 00 00 */	addi r3, r3, eff2@l
/* 00002374 00002438  7C 63 F0 2E */	lwzx r3, r3, r30
/* 00002378 0000243C  83 83 00 0C */	lwz r28, 0xc(r3)
/* 0000237C 00002440  28 1C 00 00 */	cmplwi r28, 0x0
/* 00002380 00002444  41 82 00 F0 */	beq .L_00002470
/* 00002384 00002448  7F A3 EB 78 */	mr r3, r29
/* 00002388 0000244C  38 81 00 10 */	addi r4, r1, 0x10
/* 0000238C 00002450  38 A1 00 0C */	addi r5, r1, 0xc
/* 00002390 00002454  38 C1 00 08 */	addi r6, r1, 0x8
/* 00002394 00002458  4B FF DC D9 */	bl BtlUnit_GetPos
/* 00002398 0000245C  88 7D 01 89 */	lbz r3, 0x189(r29)
/* 0000239C 00002460  3C A0 43 30 */	lis r5, 0x4330
/* 000023A0 00002464  3C 80 00 00 */	lis r4, double_to_int_dou_000065f0@ha
/* 000023A4 00002468  38 1F 00 01 */	addi r0, r31, 0x1
/* 000023A8 0000246C  7C 63 07 74 */	extsb r3, r3
/* 000023AC 00002470  3C E0 00 00 */	lis r7, float_24_dou_000065e4@ha
/* 000023B0 00002474  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 000023B4 00002478  38 C4 00 00 */	addi r6, r4, double_to_int_dou_000065f0@l
/* 000023B8 0000247C  90 61 00 4C */	stw r3, 0x4c(r1)
/* 000023BC 00002480  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 000023C0 00002484  3C 60 00 00 */	lis r3, float_15_dou_000065e8@ha
/* 000023C4 00002488  C8 A6 00 00 */	lfd f5, 0x0(r6)
/* 000023C8 0000248C  90 A1 00 48 */	stw r5, 0x48(r1)
/* 000023CC 00002490  38 83 00 00 */	addi r4, r3, float_15_dou_000065e8@l
/* 000023D0 00002494  3C 60 00 00 */	lis r3, vec3_dou_000065a8@ha
/* 000023D4 00002498  C0 87 00 00 */	lfs f4, float_24_dou_000065e4@l(r7)
/* 000023D8 0000249C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 000023DC 000024A0  39 03 00 00 */	addi r8, r3, vec3_dou_000065a8@l
/* 000023E0 000024A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 000023E4 000024A8  3C 60 00 00 */	lis r3, float_2_dou_000065e0@ha
/* 000023E8 000024AC  EC 60 28 28 */	fsubs f3, f0, f5
/* 000023EC 000024B0  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 000023F0 000024B4  90 A1 00 50 */	stw r5, 0x50(r1)
/* 000023F4 000024B8  38 C3 00 00 */	addi r6, r3, float_2_dou_000065e0@l
/* 000023F8 000024BC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 000023FC 000024C0  38 A1 00 20 */	addi r5, r1, 0x20
/* 00002400 000024C4  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 00002404 000024C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 00002408 000024CC  80 08 00 04 */	lwz r0, 0x4(r8)
/* 0000240C 000024D0  EC 84 00 F2 */	fmuls f4, f4, f3
/* 00002410 000024D4  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 00002414 000024D8  3C 60 00 00 */	lis r3, float_10_dou_000065ec@ha
/* 00002418 000024DC  80 88 00 08 */	lwz r4, 0x8(r8)
/* 0000241C 000024E0  EC 62 28 28 */	fsubs f3, f2, f5
/* 00002420 000024E4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 00002424 000024E8  7C 25 F4 2E */	lfsx f1, r5, r30
/* 00002428 000024EC  90 E1 00 14 */	stw r7, 0x14(r1)
/* 0000242C 000024F0  EC 64 10 FA */	fmadds f3, f4, f3, f2
/* 00002430 000024F4  C0 46 00 00 */	lfs f2, 0x0(r6)
/* 00002434 000024F8  90 01 00 18 */	stw r0, 0x18(r1)
/* 00002438 000024FC  EC 42 00 7C */	fnmsubs f2, f2, f1, f0
/* 0000243C 00002500  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 00002440 00002504  C0 03 00 00 */	lfs f0, float_10_dou_000065ec@l(r3)
/* 00002444 00002508  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 00002448 0000250C  EC 01 00 28 */	fsubs f0, f1, f0
/* 0000244C 00002510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002450 00002514  90 81 00 1C */	stw r4, 0x1c(r1)
/* 00002454 00002518  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 00002458 0000251C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 0000245C 00002520  80 61 00 18 */	lwz r3, 0x18(r1)
/* 00002460 00002524  90 1C 00 04 */	stw r0, 0x4(r28)
/* 00002464 00002528  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 00002468 0000252C  90 7C 00 08 */	stw r3, 0x8(r28)
/* 0000246C 00002530  90 1C 00 0C */	stw r0, 0xc(r28)
.L_00002470:
/* 00002470 00002534  BB 81 00 60 */	lmw r28, 0x60(r1)
/* 00002474 00002538  38 60 00 00 */	li r3, 0x0
/* 00002478 0000253C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 0000247C 00002540  7C 08 03 A6 */	mtlr r0
/* 00002480 00002544  38 21 00 70 */	addi r1, r1, 0x70
/* 00002484 00002548  4E 80 00 20 */	blr
.endfn eff_all_fire

# .text:0x21C | 0x2488 | size: 0x1A0
.fn eff_fire, local
/* 00002488 0000254C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000248C 00002550  7C 08 02 A6 */	mflr r0
/* 00002490 00002554  90 01 00 34 */	stw r0, 0x34(r1)
/* 00002494 00002558  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00002498 0000255C  7C 9D 23 78 */	mr r29, r4
/* 0000249C 00002560  7C 7E 1B 78 */	mr r30, r3
/* 000024A0 00002564  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000024A4 00002568  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000024A8 0000256C  4B FF DB C5 */	bl evtGetValue
/* 000024AC 00002570  7C 64 1B 78 */	mr r4, r3
/* 000024B0 00002574  7F C3 F3 78 */	mr r3, r30
/* 000024B4 00002578  4B FF DB B9 */	bl BattleTransID
/* 000024B8 0000257C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000024BC 00002580  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000024C0 00002584  7C 64 1B 78 */	mr r4, r3
/* 000024C4 00002588  80 65 00 00 */	lwz r3, 0x0(r5)
/* 000024C8 0000258C  4B FF DB A5 */	bl BattleGetUnitPtr
/* 000024CC 00002590  7C 7F 1B 78 */	mr r31, r3
/* 000024D0 00002594  38 80 00 02 */	li r4, 0x2
/* 000024D4 00002598  4B FF DB 99 */	bl BtlUnit_GetPartsPtr
/* 000024D8 0000259C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 000024DC 000025A0  7C 7E 1B 78 */	mr r30, r3
/* 000024E0 000025A4  41 82 00 54 */	beq .L_00002534
/* 000024E4 000025A8  3C 60 00 00 */	lis r3, zero_dou_000065d4@ha
/* 000024E8 000025AC  3C 80 00 00 */	lis r4, float_neg1000_dou_000065d8@ha
/* 000024EC 000025B0  38 A3 00 00 */	addi r5, r3, zero_dou_000065d4@l
/* 000024F0 000025B4  C0 44 00 00 */	lfs f2, float_neg1000_dou_000065d8@l(r4)
/* 000024F4 000025B8  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000024F8 000025BC  3C 60 00 00 */	lis r3, float_1_dou_000065dc@ha
/* 000024FC 000025C0  C0 83 00 00 */	lfs f4, float_1_dou_000065dc@l(r3)
/* 00002500 000025C4  38 60 00 06 */	li r3, 0x6
/* 00002504 000025C8  FC 60 08 90 */	fmr f3, f1
/* 00002508 000025CC  38 80 00 6A */	li r4, 0x6a
/* 0000250C 000025D0  4B FF DB 61 */	bl effFireEntry
/* 00002510 000025D4  3C A0 00 00 */	lis r5, eff@ha
/* 00002514 000025D8  94 65 00 00 */	stwu r3, eff@l(r5)
/* 00002518 000025DC  3C 80 00 00 */	lis r4, zero_dou_000065d4@ha
/* 0000251C 000025E0  C0 04 00 00 */	lfs f0, zero_dou_000065d4@l(r4)
/* 00002520 000025E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00002524 000025E8  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 00002528 000025EC  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000252C 000025F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00002530 000025F4  D0 03 00 7C */	stfs f0, 0x7c(r3)
.L_00002534:
/* 00002534 000025F8  3C 60 00 00 */	lis r3, eff@ha
/* 00002538 000025FC  38 63 00 00 */	addi r3, r3, eff@l
/* 0000253C 00002600  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00002540 00002604  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 00002544 00002608  28 1D 00 00 */	cmplwi r29, 0x0
/* 00002548 0000260C  41 82 00 C8 */	beq .L_00002610
/* 0000254C 00002610  7F C3 F3 78 */	mr r3, r30
/* 00002550 00002614  38 81 00 10 */	addi r4, r1, 0x10
/* 00002554 00002618  38 A1 00 0C */	addi r5, r1, 0xc
/* 00002558 0000261C  38 C1 00 08 */	addi r6, r1, 0x8
/* 0000255C 00002620  4B FF DB 11 */	bl BtlUnit_GetPartsPos
/* 00002560 00002624  3C 80 00 00 */	lis r4, vec3_dou_00006534@ha
/* 00002564 00002628  3C 60 00 00 */	lis r3, float_0p1_dou_000065f8@ha
/* 00002568 0000262C  38 A4 00 00 */	addi r5, r4, vec3_dou_00006534@l
/* 0000256C 00002630  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00002570 00002634  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00002574 00002638  80 85 00 04 */	lwz r4, 0x4(r5)
/* 00002578 0000263C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000257C 00002640  80 05 00 08 */	lwz r0, 0x8(r5)
/* 00002580 00002644  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 00002584 00002648  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00002588 0000264C  90 81 00 18 */	stw r4, 0x18(r1)
/* 0000258C 00002650  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00002590 00002654  90 01 00 1C */	stw r0, 0x1c(r1)
/* 00002594 00002658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002598 0000265C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 0000259C 00002660  C0 43 00 00 */	lfs f2, float_0p1_dou_000065f8@l(r3)
/* 000025A0 00002664  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 000025A4 00002668  80 61 00 18 */	lwz r3, 0x18(r1)
/* 000025A8 0000266C  90 1D 00 04 */	stw r0, 0x4(r29)
/* 000025AC 00002670  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 000025B0 00002674  90 7D 00 08 */	stw r3, 0x8(r29)
/* 000025B4 00002678  90 1D 00 0C */	stw r0, 0xc(r29)
/* 000025B8 0000267C  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 000025BC 00002680  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 000025C0 00002684  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 000025C4 00002688  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 000025C8 0000268C  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 000025CC 00002690  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 000025D0 00002694  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 000025D4 00002698  4C 41 13 82 */	cror eq, gt, eq
/* 000025D8 0000269C  40 82 00 08 */	bne .L_000025E0
/* 000025DC 000026A0  D0 3D 00 78 */	stfs f1, 0x78(r29)
.L_000025E0:
/* 000025E0 000026A4  3C 60 00 00 */	lis r3, float_0p1_dou_000065f8@ha
/* 000025E4 000026A8  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 000025E8 000026AC  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 000025EC 000026B0  C0 43 00 00 */	lfs f2, float_0p1_dou_000065f8@l(r3)
/* 000025F0 000026B4  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 000025F4 000026B8  D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 000025F8 000026BC  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 000025FC 000026C0  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 00002600 000026C4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 00002604 000026C8  4C 41 13 82 */	cror eq, gt, eq
/* 00002608 000026CC  40 82 00 08 */	bne .L_00002610
/* 0000260C 000026D0  D0 3D 00 7C */	stfs f1, 0x7c(r29)
.L_00002610:
/* 00002610 000026D4  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00002614 000026D8  38 60 00 00 */	li r3, 0x0
/* 00002618 000026DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000261C 000026E0  7C 08 03 A6 */	mtlr r0
/* 00002620 000026E4  38 21 00 30 */	addi r1, r1, 0x30
/* 00002624 000026E8  4E 80 00 20 */	blr
.endfn eff_fire

# .text:0x3BC | 0x2628 | size: 0x114
.fn bubble_copy_status, local
/* 00002628 000026EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000262C 000026F0  7C 08 02 A6 */	mflr r0
/* 00002630 000026F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 00002634 000026F8  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00002638 000026FC  7C 7D 1B 78 */	mr r29, r3
/* 0000263C 00002700  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00002640 00002704  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00002644 00002708  4B FF DA 29 */	bl evtGetValue
/* 00002648 0000270C  7C 64 1B 78 */	mr r4, r3
/* 0000264C 00002710  7F A3 EB 78 */	mr r3, r29
/* 00002650 00002714  4B FF DA 1D */	bl BattleTransID
/* 00002654 00002718  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00002658 0000271C  7C 7F 1B 78 */	mr r31, r3
/* 0000265C 00002720  7F A3 EB 78 */	mr r3, r29
/* 00002660 00002724  4B FF DA 0D */	bl evtGetValue
/* 00002664 00002728  7C 64 1B 78 */	mr r4, r3
/* 00002668 0000272C  7F A3 EB 78 */	mr r3, r29
/* 0000266C 00002730  4B FF DA 01 */	bl BattleTransID
/* 00002670 00002734  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00002674 00002738  7C 7E 1B 78 */	mr r30, r3
/* 00002678 0000273C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000267C 00002740  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00002680 00002744  7F E4 FB 78 */	mr r4, r31
/* 00002684 00002748  7C 1D 03 78 */	mr r29, r0
/* 00002688 0000274C  7C 03 03 78 */	mr r3, r0
/* 0000268C 00002750  4B FF D9 E1 */	bl BattleGetUnitPtr
/* 00002690 00002754  7C 7F 1B 78 */	mr r31, r3
/* 00002694 00002758  7F A3 EB 78 */	mr r3, r29
/* 00002698 0000275C  7F C4 F3 78 */	mr r4, r30
/* 0000269C 00002760  4B FF D9 D1 */	bl BattleGetUnitPtr
/* 000026A0 00002764  A8 1F 01 0C */	lha r0, 0x10c(r31)
/* 000026A4 00002768  B0 03 01 0C */	sth r0, 0x10c(r3)
/* 000026A8 0000276C  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 000026AC 00002770  A8 83 01 08 */	lha r4, 0x108(r3)
/* 000026B0 00002774  7C 00 20 00 */	cmpw r0, r4
/* 000026B4 00002778  40 81 00 08 */	ble .L_000026BC
/* 000026B8 0000277C  B0 83 01 0C */	sth r4, 0x10c(r3)
.L_000026BC:
/* 000026BC 00002780  88 BF 01 23 */	lbz r5, 0x123(r31)
/* 000026C0 00002784  3C 00 43 30 */	lis r0, 0x4330
/* 000026C4 00002788  3C 80 00 00 */	lis r4, double_to_int_dou_000065f0@ha
/* 000026C8 0000278C  90 01 00 08 */	stw r0, 0x8(r1)
/* 000026CC 00002790  C8 44 00 00 */	lfd f2, double_to_int_dou_000065f0@l(r4)
/* 000026D0 00002794  98 A3 01 23 */	stb r5, 0x123(r3)
/* 000026D4 00002798  88 9F 01 24 */	lbz r4, 0x124(r31)
/* 000026D8 0000279C  90 01 00 10 */	stw r0, 0x10(r1)
/* 000026DC 000027A0  98 83 01 24 */	stb r4, 0x124(r3)
/* 000026E0 000027A4  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 000026E4 000027A8  90 03 02 08 */	stw r0, 0x208(r3)
/* 000026E8 000027AC  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 000026EC 000027B0  90 03 02 0C */	stw r0, 0x20c(r3)
/* 000026F0 000027B4  A8 83 01 0C */	lha r4, 0x10c(r3)
/* 000026F4 000027B8  A8 03 01 08 */	lha r0, 0x108(r3)
/* 000026F8 000027BC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 000026FC 000027C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00002700 000027C4  90 81 00 0C */	stw r4, 0xc(r1)
/* 00002704 000027C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002708 000027CC  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 0000270C 000027D0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00002710 000027D4  EC 21 10 28 */	fsubs f1, f1, f2
/* 00002714 000027D8  EC 00 10 28 */	fsubs f0, f0, f2
/* 00002718 000027DC  EC 01 00 24 */	fdivs f0, f1, f0
/* 0000271C 000027E0  D0 03 02 14 */	stfs f0, 0x214(r3)
/* 00002720 000027E4  D0 03 02 10 */	stfs f0, 0x210(r3)
/* 00002724 000027E8  38 60 00 02 */	li r3, 0x2
/* 00002728 000027EC  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 0000272C 000027F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00002730 000027F4  7C 08 03 A6 */	mtlr r0
/* 00002734 000027F8  38 21 00 30 */	addi r1, r1, 0x30
/* 00002738 000027FC  4E 80 00 20 */	blr
.endfn bubble_copy_status

# 0x00002788..0x00002970 | size: 0x1E8
.rodata
.balign 8

# .rodata:0x0 | 0x2788 | size: 0xE
.obj str_btl_un_hermos_dou_00006418, local
	.string "btl_un_hermos"
.endobj str_btl_un_hermos_dou_00006418

# .rodata:0xE | 0x2796 | size: 0x2
.obj gap_03_00002796_rodata, global
.hidden gap_03_00002796_rodata
	.2byte 0x0000
.endobj gap_03_00002796_rodata

# .rodata:0x10 | 0x2798 | size: 0x18
.obj str_SFX_ENM_BUBBLE_DAMAG_dou_00006428, local
	.string "SFX_ENM_BUBBLE_DAMAGED1"
.endobj str_SFX_ENM_BUBBLE_DAMAG_dou_00006428

# .rodata:0x28 | 0x27B0 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_dou_00006440, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_dou_00006440

# .rodata:0x3D | 0x27C5 | size: 0x3
.obj gap_03_000027C5_rodata, global
.hidden gap_03_000027C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000027C5_rodata

# .rodata:0x40 | 0x27C8 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_dou_00006458, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_dou_00006458

# .rodata:0x54 | 0x27DC | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_dou_0000646c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_dou_0000646c

# .rodata:0x6D | 0x27F5 | size: 0x3
.obj gap_03_000027F5_rodata, global
.hidden gap_03_000027F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000027F5_rodata

# .rodata:0x70 | 0x27F8 | size: 0x4
.obj str_N_1_dou_00006488, local
	.string "N_1"
.endobj str_N_1_dou_00006488

# .rodata:0x74 | 0x27FC | size: 0x4
.obj str_Y_1_dou_0000648c, local
	.string "Y_1"
.endobj str_Y_1_dou_0000648c

# .rodata:0x78 | 0x2800 | size: 0x4
.obj str_K_1_dou_00006490, local
	.string "K_1"
.endobj str_K_1_dou_00006490

# .rodata:0x7C | 0x2804 | size: 0x4
.obj str_X_1_dou_00006494, local
	.string "X_1"
.endobj str_X_1_dou_00006494

# .rodata:0x80 | 0x2808 | size: 0x4
.obj str_S_1_dou_00006498, local
	.string "S_1"
.endobj str_S_1_dou_00006498

# .rodata:0x84 | 0x280C | size: 0x4
.obj str_Q_1_dou_0000649c, local
	.string "Q_1"
.endobj str_Q_1_dou_0000649c

# .rodata:0x88 | 0x2810 | size: 0x5
.obj str_A_2B_dou_000064a0, local
	.string "A_2B"
.endobj str_A_2B_dou_000064a0

# .rodata:0x8D | 0x2815 | size: 0x3
.obj gap_03_00002815_rodata, global
.hidden gap_03_00002815_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002815_rodata

# .rodata:0x90 | 0x2818 | size: 0x4
.obj str_D_1_dou_000064a8, local
	.string "D_1"
.endobj str_D_1_dou_000064a8

# .rodata:0x94 | 0x281C | size: 0x4
.obj str_A_1_dou_000064ac, local
	.string "A_1"
.endobj str_A_1_dou_000064ac

# .rodata:0x98 | 0x2820 | size: 0x4
.obj str_R_1_dou_000064b0, local
	.string "R_1"
.endobj str_R_1_dou_000064b0

# .rodata:0x9C | 0x2824 | size: 0x4
.obj str_W_1_dou_000064b4, local
	.string "W_1"
.endobj str_W_1_dou_000064b4

# .rodata:0xA0 | 0x2828 | size: 0x4
.obj str_T_1_dou_000064b8, local
	.string "T_1"
.endobj str_T_1_dou_000064b8

# .rodata:0xA4 | 0x282C | size: 0x8
.obj str_c_elmos_dou_000064bc, local
	.string "c_elmos"
.endobj str_c_elmos_dou_000064bc

# .rodata:0xAC | 0x2834 | size: 0x15
.obj str_SFX_ENM_BUBBLE_FIRE1_dou_000064c4, local
	.string "SFX_ENM_BUBBLE_FIRE1"
.endobj str_SFX_ENM_BUBBLE_FIRE1_dou_000064c4

# .rodata:0xC1 | 0x2849 | size: 0x3
.obj gap_03_00002849_rodata, global
.hidden gap_03_00002849_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002849_rodata

# .rodata:0xC4 | 0x284C | size: 0x16
.obj str_SFX_ENM_BUBBLE_SPLIT_dou_000064dc, local
	.string "SFX_ENM_BUBBLE_SPLIT1"
.endobj str_SFX_ENM_BUBBLE_SPLIT_dou_000064dc

# .rodata:0xDA | 0x2862 | size: 0x2
.obj gap_03_00002862_rodata, global
.hidden gap_03_00002862_rodata
	.2byte 0x0000
.endobj gap_03_00002862_rodata

# .rodata:0xDC | 0x2864 | size: 0x15
.obj str_SFX_ENM_BUBBLE_MOVE1_dou_000064f4, local
	.string "SFX_ENM_BUBBLE_MOVE1"
.endobj str_SFX_ENM_BUBBLE_MOVE1_dou_000064f4

# .rodata:0xF1 | 0x2879 | size: 0x3
.obj gap_03_00002879_rodata, global
.hidden gap_03_00002879_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002879_rodata

# .rodata:0xF4 | 0x287C | size: 0x5
.obj str_A_1A_dou_0000650c, local
	.string "A_1A"
.endobj str_A_1A_dou_0000650c

# .rodata:0xF9 | 0x2881 | size: 0x3
.obj gap_03_00002881_rodata, global
.hidden gap_03_00002881_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002881_rodata

# .rodata:0xFC | 0x2884 | size: 0x5
.obj str_A_1B_dou_00006514, local
	.string "A_1B"
.endobj str_A_1B_dou_00006514

# .rodata:0x101 | 0x2889 | size: 0x3
.obj gap_03_00002889_rodata, global
.hidden gap_03_00002889_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002889_rodata

# .rodata:0x104 | 0x288C | size: 0x15
.obj str_SFX_ENM_BUBBLE_MOVE2_dou_0000651c, local
	.string "SFX_ENM_BUBBLE_MOVE2"
.endobj str_SFX_ENM_BUBBLE_MOVE2_dou_0000651c

# .rodata:0x119 | 0x28A1 | size: 0x3
.obj gap_03_000028A1_rodata, global
.hidden gap_03_000028A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000028A1_rodata

# .rodata:0x11C | 0x28A4 | size: 0xC
.obj vec3_dou_00006534, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_dou_00006534

# .rodata:0x128 | 0x28B0 | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_dou_00006540, local
	.string "SFX_ENM_BUBBLE_ATTACK2"
.endobj str_SFX_ENM_BUBBLE_ATTAC_dou_00006540

# .rodata:0x13F | 0x28C7 | size: 0x1
.obj gap_03_000028C7_rodata, global
.hidden gap_03_000028C7_rodata
	.byte 0x00
.endobj gap_03_000028C7_rodata

# .rodata:0x140 | 0x28C8 | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_dou_00006558, local
	.string "SFX_ENM_BUBBLE_ATTACK3"
.endobj str_SFX_ENM_BUBBLE_ATTAC_dou_00006558

# .rodata:0x157 | 0x28DF | size: 0x1
.obj gap_03_000028DF_rodata, global
.hidden gap_03_000028DF_rodata
	.byte 0x00
.endobj gap_03_000028DF_rodata

# .rodata:0x158 | 0x28E0 | size: 0x1
.obj zero_dou_00006570, local
	.byte 0x00
.endobj zero_dou_00006570

# .rodata:0x159 | 0x28E1 | size: 0x3
.obj gap_03_000028E1_rodata, global
.hidden gap_03_000028E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000028E1_rodata

# .rodata:0x15C | 0x28E4 | size: 0xC
.obj str_kemuri_test_dou_00006574, local
	.string "kemuri_test"
.endobj str_kemuri_test_dou_00006574

# .rodata:0x168 | 0x28F0 | size: 0x28
.obj dat_dou_00006580, local
	.4byte 0x3F800000
	.4byte 0x3FA00000
	.4byte 0x3FC00000
	.4byte 0x3FE00000
	.4byte 0x40000000
	.4byte 0x40100000
	.4byte 0x40000000
	.4byte 0x3FE00000
	.4byte 0x3FC00000
	.4byte 0x3FA00000
.endobj dat_dou_00006580

# .rodata:0x190 | 0x2918 | size: 0xC
.obj vec3_dou_000065a8, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_dou_000065a8

# .rodata:0x19C | 0x2924 | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_dou_000065b4, local
	.string "SFX_ENM_BUBBLE_ATTACK4"
.endobj str_SFX_ENM_BUBBLE_ATTAC_dou_000065b4

# .rodata:0x1B3 | 0x293B | size: 0x1
.obj gap_03_0000293B_rodata, global
.hidden gap_03_0000293B_rodata
	.byte 0x00
.endobj gap_03_0000293B_rodata

# .rodata:0x1B4 | 0x293C | size: 0x5
.obj str_A_2A_dou_000065cc, local
	.string "A_2A"
.endobj str_A_2A_dou_000065cc
	.byte 0x00, 0x00, 0x00

# .rodata:0x1BC | 0x2944 | size: 0x4
.obj zero_dou_000065d4, local
	.float 0
.endobj zero_dou_000065d4

# .rodata:0x1C0 | 0x2948 | size: 0x4
.obj float_neg1000_dou_000065d8, local
	.float -1000
.endobj float_neg1000_dou_000065d8

# .rodata:0x1C4 | 0x294C | size: 0x4
.obj float_1_dou_000065dc, local
	.float 1
.endobj float_1_dou_000065dc

# .rodata:0x1C8 | 0x2950 | size: 0x4
.obj float_2_dou_000065e0, local
	.float 2
.endobj float_2_dou_000065e0

# .rodata:0x1CC | 0x2954 | size: 0x4
.obj float_24_dou_000065e4, local
	.float 24
.endobj float_24_dou_000065e4

# .rodata:0x1D0 | 0x2958 | size: 0x4
.obj float_15_dou_000065e8, local
	.float 15
.endobj float_15_dou_000065e8

# .rodata:0x1D4 | 0x295C | size: 0x4
.obj float_10_dou_000065ec, local
	.float 10
.endobj float_10_dou_000065ec

# .rodata:0x1D8 | 0x2960 | size: 0x8
.obj double_to_int_dou_000065f0, local
	.double 4503601774854144
.endobj double_to_int_dou_000065f0

# .rodata:0x1E0 | 0x2968 | size: 0x4
.obj float_0p1_dou_000065f8, local
	.float 0.1
.endobj float_0p1_dou_000065f8

# .rodata:0x1E4 | 0x296C | size: 0x4
.obj gap_03_0000296C_rodata, global
.hidden gap_03_0000296C_rodata
	.4byte 0x00000000
.endobj gap_03_0000296C_rodata

# 0x000170F0..0x00018C98 | size: 0x1BA8
.data
.balign 8

# .data:0x0 | 0x170F0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x170F8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x170FC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x17100 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x17104 | size: 0x4
.obj gap_04_00017104_data, global
.hidden gap_04_00017104_data
	.4byte 0x00000000
.endobj gap_04_00017104_data

# .data:0x18 | 0x17108 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x17110 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x17114 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x17118 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x17120 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x17124 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x17128 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1712C | size: 0x4
.obj gap_04_0001712C_data, global
.hidden gap_04_0001712C_data
	.4byte 0x00000000
.endobj gap_04_0001712C_data

# .data:0x40 | 0x17130 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x17138 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1713C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x17140 | size: 0xC4
.obj unit_hermos_5_data_17140, global
	.4byte 0x00000054
	.4byte str_btl_un_hermos_dou_00006418
	.4byte 0x00080000
	.4byte 0x01011400
	.4byte 0x03460132
	.4byte 0x270F001A
	.4byte 0x00240008
	.4byte 0x00180000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x0000FFFD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x41BB3333
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x42100000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_BUBBLE_DAMAG_dou_00006428
	.4byte str_SFX_BTL_DAMAGE_FIRE1_dou_00006440
	.4byte str_SFX_BTL_DAMAGE_ICE1_dou_00006458
	.4byte str_SFX_BTL_DAMAGE_BIRIB_dou_0000646c
	.4byte 0x00000004
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_hermos_5_data_17140

# .data:0x114 | 0x17204 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x17209 | size: 0x3
.obj gap_04_00017209_data, global
.hidden gap_04_00017209_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00017209_data

# .data:0x11C | 0x1720C | size: 0x5
.obj defence_attr, local
	.4byte 0x00030101
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x17211 | size: 0x3
.obj gap_04_00017211_data, global
.hidden gap_04_00017211_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00017211_data

# .data:0x124 | 0x17214 | size: 0x16
.obj regist, local
	.4byte 0x325A6964
	.4byte 0x4B640032
	.4byte 0x645A645A
	.4byte 0x645F4B32
	.4byte 0x5A644B64
	.2byte 0x645F
.endobj regist

# .data:0x13A | 0x1722A | size: 0x2
.obj gap_04_0001722A_data, global
.hidden gap_04_0001722A_data
	.2byte 0x0000
.endobj gap_04_0001722A_data

# .data:0x13C | 0x1722C | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_dou_00006488
	.4byte 0x00000002
	.4byte str_Y_1_dou_0000648c
	.4byte 0x00000009
	.4byte str_Y_1_dou_0000648c
	.4byte 0x00000005
	.4byte str_K_1_dou_00006490
	.4byte 0x00000004
	.4byte str_X_1_dou_00006494
	.4byte 0x00000003
	.4byte str_X_1_dou_00006494
	.4byte 0x0000001C
	.4byte str_S_1_dou_00006498
	.4byte 0x0000001D
	.4byte str_Q_1_dou_0000649c
	.4byte 0x0000001E
	.4byte str_Q_1_dou_0000649c
	.4byte 0x0000001F
	.4byte str_A_2B_dou_000064a0
	.4byte 0x00000027
	.4byte str_D_1_dou_000064a8
	.4byte 0x00000032
	.4byte str_A_1_dou_000064ac
	.4byte 0x0000002A
	.4byte str_R_1_dou_000064b0
	.4byte 0x00000028
	.4byte str_W_1_dou_000064b4
	.4byte 0x00000038
	.4byte str_X_1_dou_00006494
	.4byte 0x00000039
	.4byte str_X_1_dou_00006494
	.4byte 0x00000041
	.4byte str_T_1_dou_000064b8
	.4byte 0x00000045
	.4byte str_S_1_dou_00006498
.endobj pose_table

# .data:0x1CC | 0x172BC | size: 0x20
.obj data_table, local
	.4byte 0x0000000B
	.4byte damage_fire_explosion_event
	.4byte 0x00000028
	.4byte avoid_fire_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1EC | 0x172DC | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_hermos_dou_00006418
	.4byte str_c_elmos_dou_000064bc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000109
	.4byte 0x00000010
	.4byte pose_table
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte str_c_elmos_dou_000064bc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F000F
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x284 | 0x17374 | size: 0xC0
.obj weapon_bubble_attack, local
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
	.4byte 0x20000000
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000070
	.4byte 0x00002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03000000
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
.endobj weapon_bubble_attack

# .data:0x344 | 0x17434 | size: 0xC0
.obj weapon_bubble_fire_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
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
	.4byte 0x20000000
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x000000C7
	.4byte 0x000007FF
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0x03000000
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
.endobj weapon_bubble_fire_attack

# .data:0x404 | 0x174F4 | size: 0xC0
.obj weapon_bubble_all_fire_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
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
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x000000C7
	.4byte 0x000007FF
	.4byte 0x80000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0x03000000
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
.endobj weapon_bubble_all_fire_attack

# .data:0x4C4 | 0x175B4 | size: 0x30
.obj entry_bubble, local
	.4byte unit_hermos_5_data_17140
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
.endobj entry_bubble

# .data:0x4F4 | 0x175E4 | size: 0x9C
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
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x590 | 0x17680 | size: 0x28
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

# .data:0x5B8 | 0x176A8 | size: 0x40
.obj avoid_fire_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_dou_000064c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_dou_000064a0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj avoid_fire_event

# .data:0x5F8 | 0x176E8 | size: 0x19C
.obj damage_fire_explosion_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_dou_000064a0
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0xFE363C80
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
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x0000000A
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
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_fire_explosion_event

# .data:0x794 | 0x17884 | size: 0x18C
.obj friend_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_S_1_dou_00006498
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_bubble
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte bubble_copy_status
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_SPLIT_dou_000064dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x00000028
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
	.4byte 0x00000002
	.4byte 0x00000001
.endobj friend_event

# .data:0x920 | 0x17A10 | size: 0x11C
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
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bubble_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bubble_fire_attack
	.4byte 0x0001005E
	.4byte fire_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bubble_all_fire_attack
	.4byte 0x0001005E
	.4byte all_fire_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0xA3C | 0x17B2C | size: 0x670
.obj normal_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
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
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_dou_000064f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_dou_0000650c
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000D
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_dou_000064c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_dou_00006514
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_dou_000064c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_dou_00006514
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
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_dou_00006514
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE2_dou_0000651c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_dou_0000650c
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000019
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_dou_00006498
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x10AC | 0x1819C | size: 0x5B4
.obj fire_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_T_1_dou_000064b8
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_dou_00006498
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_dou_00006540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x02000000
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
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_fire
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
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
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C8A
	.4byte 0xF24A7D4C
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xF24A7CE6
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C8A
	.4byte 0xF24A7C19
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xF24A7C19
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_dou_00006558
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x02000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
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
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_dou_00006570
	.4byte str_kemuri_test_dou_00006574
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fire_attack_event

# .data:0x1660 | 0x18750 | size: 0x28
.obj all_fire_attackEvent_sub, local
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte eff_all_fire
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x00000002
	.4byte 0x00000001
.endobj all_fire_attackEvent_sub

# .data:0x1688 | 0x18778 | size: 0x504
.obj all_fire_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
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
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
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
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_dou_0000650c
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_dou_000064f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFD8
	.4byte 0xFE363C81
	.4byte 0xFFFFFFF1
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_dou_000065b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_dou_000065cc
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_AddPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddPos
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0000006E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0001005C
	.4byte all_fire_attackEvent_sub
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_dou_00006540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_dou_000064a0
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
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
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x00000061
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
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010009
	.4byte 0x000000B4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_dou_0000650c
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_dou_000064f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj all_fire_attack_event

# .data:0x1B8C | 0x18C7C | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1BA4 | 0x18C94 | size: 0x4
.obj gap_04_00018C94_data, global
.hidden gap_04_00018C94_data
	.4byte 0x00000000
.endobj gap_04_00018C94_data

# 0x00000060..0x000000B8 | size: 0x58
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x60 | size: 0x28
.obj step, local
	.skip 0x28
.endobj step

# .bss:0x28 | 0x88 | size: 0x28
.obj eff2, local
	.skip 0x28
.endobj eff2

# .bss:0x50 | 0xB0 | size: 0x4
.obj eff, local
	.skip 0x4
.endobj eff

# .bss:0x54 | 0xB4 | size: 0x4
.obj gap_05_000000B4_bss, global
.hidden gap_05_000000B4_bss
	.skip 0x4
.endobj gap_05_000000B4_bss
