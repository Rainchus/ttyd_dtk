.include "macros.inc"
.file "mri_01.o"

# 0x00002344..0x00002B18 | size: 0x7D4
.text
.balign 4

# .text:0x0 | 0x2344 | size: 0x198
.fn evtflash, local
/* 00002344 00002408  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00002348 0000240C  7C 08 02 A6 */	mflr r0
/* 0000234C 00002410  2C 04 00 00 */	cmpwi r4, 0x0
/* 00002350 00002414  90 01 00 24 */	stw r0, 0x24(r1)
/* 00002354 00002418  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 00002358 0000241C  7C 7F 1B 78 */	mr r31, r3
/* 0000235C 00002420  41 82 00 0C */	beq .L_00002368
/* 00002360 00002424  38 00 00 00 */	li r0, 0x0
/* 00002364 00002428  90 1F 00 80 */	stw r0, 0x80(r31)
.L_00002368:
/* 00002368 0000242C  80 DF 00 80 */	lwz r6, 0x80(r31)
/* 0000236C 00002430  2C 06 00 02 */	cmpwi r6, 0x2
/* 00002370 00002434  41 82 00 B8 */	beq .L_00002428
/* 00002374 00002438  40 80 00 14 */	bge .L_00002388
/* 00002378 0000243C  2C 06 00 00 */	cmpwi r6, 0x0
/* 0000237C 00002440  41 82 00 1C */	beq .L_00002398
/* 00002380 00002444  40 80 00 44 */	bge .L_000023C4
/* 00002384 00002448  48 00 01 40 */	b .L_000024C4
.L_00002388:
/* 00002388 0000244C  2C 06 00 04 */	cmpwi r6, 0x4
/* 0000238C 00002450  41 82 01 1C */	beq .L_000024A8
/* 00002390 00002454  40 80 01 34 */	bge .L_000024C4
/* 00002394 00002458  48 00 00 E8 */	b .L_0000247C
.L_00002398:
/* 00002398 0000245C  3C 60 00 00 */	lis r3, dat_mri_00020fc0@ha
/* 0000239C 00002460  38 A1 00 0C */	addi r5, r1, 0xc
/* 000023A0 00002464  38 83 00 00 */	addi r4, r3, dat_mri_00020fc0@l
/* 000023A4 00002468  38 60 00 0A */	li r3, 0xa
/* 000023A8 0000246C  80 04 00 00 */	lwz r0, 0x0(r4)
/* 000023AC 00002470  38 80 00 14 */	li r4, 0x14
/* 000023B0 00002474  90 01 00 0C */	stw r0, 0xc(r1)
/* 000023B4 00002478  4B FF DE A5 */	bl fadeEntry
/* 000023B8 0000247C  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 000023BC 00002480  38 03 00 01 */	addi r0, r3, 0x1
/* 000023C0 00002484  90 1F 00 80 */	stw r0, 0x80(r31)
.L_000023C4:
/* 000023C4 00002488  4B FF DE 95 */	bl fadeIsFinish
/* 000023C8 0000248C  2C 03 00 01 */	cmpwi r3, 0x1
/* 000023CC 00002490  41 82 00 0C */	beq .L_000023D8
/* 000023D0 00002494  38 60 00 00 */	li r3, 0x0
/* 000023D4 00002498  48 00 00 F4 */	b .L_000024C8
.L_000023D8:
/* 000023D8 0000249C  38 00 00 32 */	li r0, 0x32
/* 000023DC 000024A0  3C 60 00 00 */	lis r3, gp@ha
/* 000023E0 000024A4  90 1F 00 78 */	stw r0, 0x78(r31)
/* 000023E4 000024A8  38 63 00 00 */	addi r3, r3, gp@l
/* 000023E8 000024AC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000023EC 000024B0  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 000023F0 000024B4  90 7F 01 9C */	stw r3, 0x19c(r31)
/* 000023F4 000024B8  7C 60 FE 70 */	srawi r0, r3, 31
/* 000023F8 000024BC  90 1F 01 98 */	stw r0, 0x198(r31)
/* 000023FC 000024C0  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 00002400 000024C4  38 03 00 01 */	addi r0, r3, 0x1
/* 00002404 000024C8  90 1F 00 80 */	stw r0, 0x80(r31)
/* 00002408 000024CC  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 0000240C 000024D0  2C 00 00 00 */	cmpwi r0, 0x0
/* 00002410 000024D4  40 82 00 10 */	bne .L_00002420
/* 00002414 000024D8  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 00002418 000024DC  38 03 00 01 */	addi r0, r3, 0x1
/* 0000241C 000024E0  90 1F 00 80 */	stw r0, 0x80(r31)
.L_00002420:
/* 00002420 000024E4  38 60 00 00 */	li r3, 0x0
/* 00002424 000024E8  48 00 00 A4 */	b .L_000024C8
.L_00002428:
/* 00002428 000024EC  3C 60 80 00 */	lis r3, 0x8000
/* 0000242C 000024F0  3C 80 00 00 */	lis r4, gp@ha
/* 00002430 000024F4  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 00002434 000024F8  38 84 00 00 */	addi r4, r4, gp@l
/* 00002438 000024FC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000243C 00002500  38 00 03 E8 */	li r0, 0x3e8
/* 00002440 00002504  54 63 F0 BE */	srwi r3, r3, 2
/* 00002444 00002508  80 BF 01 9C */	lwz r5, 0x19c(r31)
/* 00002448 0000250C  7C 63 03 96 */	divwu r3, r3, r0
/* 0000244C 00002510  80 84 00 3C */	lwz r4, 0x3c(r4)
/* 00002450 00002514  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 00002454 00002518  7C 85 20 50 */	subf r4, r5, r4
/* 00002458 0000251C  7C 64 1B 96 */	divwu r3, r4, r3
/* 0000245C 00002520  7C 03 00 40 */	cmplw r3, r0
/* 00002460 00002524  40 80 00 0C */	bge .L_0000246C
/* 00002464 00002528  38 60 00 00 */	li r3, 0x0
/* 00002468 0000252C  48 00 00 60 */	b .L_000024C8
.L_0000246C:
/* 0000246C 00002530  38 06 00 01 */	addi r0, r6, 0x1
/* 00002470 00002534  38 60 00 00 */	li r3, 0x0
/* 00002474 00002538  90 1F 00 80 */	stw r0, 0x80(r31)
/* 00002478 0000253C  48 00 00 50 */	b .L_000024C8
.L_0000247C:
/* 0000247C 00002540  3C 60 00 00 */	lis r3, dat_mri_00020fc4@ha
/* 00002480 00002544  38 A1 00 08 */	addi r5, r1, 0x8
/* 00002484 00002548  38 83 00 00 */	addi r4, r3, dat_mri_00020fc4@l
/* 00002488 0000254C  38 60 00 09 */	li r3, 0x9
/* 0000248C 00002550  80 04 00 00 */	lwz r0, 0x0(r4)
/* 00002490 00002554  38 80 00 50 */	li r4, 0x50
/* 00002494 00002558  90 01 00 08 */	stw r0, 0x8(r1)
/* 00002498 0000255C  4B FF DD C1 */	bl fadeEntry
/* 0000249C 00002560  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 000024A0 00002564  38 03 00 01 */	addi r0, r3, 0x1
/* 000024A4 00002568  90 1F 00 80 */	stw r0, 0x80(r31)
.L_000024A8:
/* 000024A8 0000256C  4B FF DD B1 */	bl fadeIsFinish
/* 000024AC 00002570  2C 03 00 01 */	cmpwi r3, 0x1
/* 000024B0 00002574  41 82 00 0C */	beq .L_000024BC
/* 000024B4 00002578  38 60 00 00 */	li r3, 0x0
/* 000024B8 0000257C  48 00 00 10 */	b .L_000024C8
.L_000024BC:
/* 000024BC 00002580  38 60 00 02 */	li r3, 0x2
/* 000024C0 00002584  48 00 00 08 */	b .L_000024C8
.L_000024C4:
/* 000024C4 00002588  38 60 00 02 */	li r3, 0x2
.L_000024C8:
/* 000024C8 0000258C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000024CC 00002590  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 000024D0 00002594  7C 08 03 A6 */	mtlr r0
/* 000024D4 00002598  38 21 00 20 */	addi r1, r1, 0x20
/* 000024D8 0000259C  4E 80 00 20 */	blr
.endfn evtflash

# .text:0x198 | 0x24DC | size: 0xEC
.fn elder_talk_sub_punicheck, local
/* 000024DC 000025A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 000024E0 000025A4  7C 08 02 A6 */	mflr r0
/* 000024E4 000025A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 000024E8 000025AC  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 000024EC 000025B0  7C 7A 1B 78 */	mr r26, r3
/* 000024F0 000025B4  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 000024F4 000025B8  48 00 2B B9 */	bl puniGetPunigp_18_text_50AC
/* 000024F8 000025BC  7C 7F 1B 78 */	mr r31, r3
/* 000024FC 000025C0  3B 80 00 00 */	li r28, 0x0
/* 00002500 000025C4  3B 60 00 00 */	li r27, 0x0
/* 00002504 000025C8  3B A0 00 01 */	li r29, 0x1
.L_00002508:
/* 00002508 000025CC  48 00 2B 95 */	bl puniGetPunidat_18_text_509C
/* 0000250C 000025D0  2C 1D 00 01 */	cmpwi r29, 0x1
/* 00002510 000025D4  40 82 00 14 */	bne .L_00002524
/* 00002514 000025D8  38 60 0B 14 */	li r3, 0xb14
/* 00002518 000025DC  4B FF DD 41 */	bl swGet
/* 0000251C 000025E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 00002520 000025E4  40 82 00 58 */	bne .L_00002578
.L_00002524:
/* 00002524 000025E8  3C 60 F7 0F */	lis r3, 0xf70f
/* 00002528 000025EC  38 9D FF FF */	subi r4, r29, 0x1
/* 0000252C 000025F0  38 63 2E 80 */	addi r3, r3, 0x2e80
/* 00002530 000025F4  38 A1 00 08 */	addi r5, r1, 0x8
/* 00002534 000025F8  38 C1 00 10 */	addi r6, r1, 0x10
/* 00002538 000025FC  48 00 5F 89 */	bl puniswGetindex_18_text_84C0
/* 0000253C 00002600  7F A3 EB 78 */	mr r3, r29
/* 00002540 00002604  38 81 00 0C */	addi r4, r1, 0xc
/* 00002544 00002608  48 00 61 91 */	bl puniswTrapGetindex_18_text_86D4
/* 00002548 0000260C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 0000254C 00002610  2C 00 00 00 */	cmpwi r0, 0x0
/* 00002550 00002614  41 82 00 0C */	beq .L_0000255C
/* 00002554 00002618  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00002558 0000261C  48 00 00 20 */	b .L_00002578
.L_0000255C:
/* 0000255C 00002620  80 61 00 08 */	lwz r3, 0x8(r1)
/* 00002560 00002624  2C 03 00 00 */	cmpwi r3, 0x0
/* 00002564 00002628  41 82 00 14 */	beq .L_00002578
/* 00002568 0000262C  80 1F 03 28 */	lwz r0, 0x328(r31)
/* 0000256C 00002630  7C 03 00 00 */	cmpw r3, r0
/* 00002570 00002634  41 82 00 08 */	beq .L_00002578
/* 00002574 00002638  3B 7B 00 01 */	addi r27, r27, 0x1
.L_00002578:
/* 00002578 0000263C  3B BD 00 01 */	addi r29, r29, 0x1
/* 0000257C 00002640  2C 1D 00 67 */	cmpwi r29, 0x67
/* 00002580 00002644  41 80 FF 88 */	blt .L_00002508
/* 00002584 00002648  2C 1B 00 00 */	cmpwi r27, 0x0
/* 00002588 0000264C  38 A0 00 01 */	li r5, 0x1
/* 0000258C 00002650  41 82 00 0C */	beq .L_00002598
/* 00002590 00002654  38 A0 00 00 */	li r5, 0x0
/* 00002594 00002658  48 00 00 10 */	b .L_000025A4
.L_00002598:
/* 00002598 0000265C  2C 1C 00 00 */	cmpwi r28, 0x0
/* 0000259C 00002660  41 82 00 08 */	beq .L_000025A4
/* 000025A0 00002664  38 A0 00 02 */	li r5, 0x2
.L_000025A4:
/* 000025A4 00002668  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000025A8 0000266C  7F 43 D3 78 */	mr r3, r26
/* 000025AC 00002670  4B FF DC AD */	bl evtSetValue
/* 000025B0 00002674  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 000025B4 00002678  38 60 00 02 */	li r3, 0x2
/* 000025B8 0000267C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 000025BC 00002680  7C 08 03 A6 */	mtlr r0
/* 000025C0 00002684  38 21 00 40 */	addi r1, r1, 0x40
/* 000025C4 00002688  4E 80 00 20 */	blr
.endfn elder_talk_sub_punicheck

# .text:0x284 | 0x25C8 | size: 0x30
.fn elder_talk_sub_fadeoff, local
/* 000025C8 0000268C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000025CC 00002690  7C 08 02 A6 */	mflr r0
/* 000025D0 00002694  90 01 00 14 */	stw r0, 0x14(r1)
/* 000025D4 00002698  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000025D8 0000269C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000025DC 000026A0  4B FF DC 7D */	bl evtGetValue
/* 000025E0 000026A4  48 00 1D BD */	bl puniFadeOff_18_text_439C
/* 000025E4 000026A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000025E8 000026AC  38 60 00 02 */	li r3, 0x2
/* 000025EC 000026B0  7C 08 03 A6 */	mtlr r0
/* 000025F0 000026B4  38 21 00 10 */	addi r1, r1, 0x10
/* 000025F4 000026B8  4E 80 00 20 */	blr
.endfn elder_talk_sub_fadeoff

# .text:0x2B4 | 0x25F8 | size: 0x1B8
.fn bossrobot_batu, local
/* 000025F8 000026BC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 000025FC 000026C0  7C 08 02 A6 */	mflr r0
/* 00002600 000026C4  3C 60 00 00 */	lis r3, str_ボスロボット_mri_00021a4c@ha
/* 00002604 000026C8  90 01 00 84 */	stw r0, 0x84(r1)
/* 00002608 000026CC  38 63 00 00 */	addi r3, r3, str_ボスロボット_mri_00021a4c@l
/* 0000260C 000026D0  BF 81 00 70 */	stmw r28, 0x70(r1)
/* 00002610 000026D4  7C 9E 23 78 */	mr r30, r4
/* 00002614 000026D8  4B FF DC 45 */	bl npcNameToPtr
/* 00002618 000026DC  3C 80 00 00 */	lis r4, str_ボスロボットバツ_mri_00021a5c@ha
/* 0000261C 000026E0  7C 7D 1B 78 */	mr r29, r3
/* 00002620 000026E4  38 64 00 00 */	addi r3, r4, str_ボスロボットバツ_mri_00021a5c@l
/* 00002624 000026E8  4B FF DC 35 */	bl npcNameToPtr
/* 00002628 000026EC  7C 7F 1B 78 */	mr r31, r3
/* 0000262C 000026F0  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 00002630 000026F4  4B FF DC 29 */	bl animPoseGetAnimPosePtr
/* 00002634 000026F8  80 A3 01 64 */	lwz r5, 0x164(r3)
/* 00002638 000026FC  3C 60 00 00 */	lis r3, str_locator23_mri_00021a70@ha
/* 0000263C 00002700  38 83 00 00 */	addi r4, r3, str_locator23_mri_00021a70@l
/* 00002640 00002704  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 00002644 00002708  83 85 00 00 */	lwz r28, 0x0(r5)
/* 00002648 0000270C  4B FF DC 11 */	bl animPoseGetGroupIdx
/* 0000264C 00002710  1F A3 00 30 */	mulli r29, r3, 0x30
/* 00002650 00002714  38 81 00 40 */	addi r4, r1, 0x40
/* 00002654 00002718  38 A0 00 78 */	li r5, 0x78
/* 00002658 0000271C  38 C0 00 7A */	li r6, 0x7a
/* 0000265C 00002720  7C 7C EA 14 */	add r3, r28, r29
/* 00002660 00002724  4B FF DB F9 */	bl mtxGetRotationElement
/* 00002664 00002728  7C 9C EA 14 */	add r4, r28, r29
/* 00002668 0000272C  38 61 00 10 */	addi r3, r1, 0x10
/* 0000266C 00002730  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 00002670 00002734  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 00002674 00002738  C0 64 00 2C */	lfs f3, 0x2c(r4)
/* 00002678 0000273C  4B FF DB E1 */	bl PSMTXTrans
/* 0000267C 00002740  38 61 00 10 */	addi r3, r1, 0x10
/* 00002680 00002744  38 81 00 40 */	addi r4, r1, 0x40
/* 00002684 00002748  7C 65 1B 78 */	mr r5, r3
/* 00002688 0000274C  4B FF DB D1 */	bl PSMTXConcat
/* 0000268C 00002750  3C 60 00 00 */	lis r3, zero_mri_00021a7c@ha
/* 00002690 00002754  3C 80 00 00 */	lis r4, float_0p2_mri_00021a80@ha
/* 00002694 00002758  38 A3 00 00 */	addi r5, r3, zero_mri_00021a7c@l
/* 00002698 0000275C  C0 64 00 00 */	lfs f3, float_0p2_mri_00021a80@l(r4)
/* 0000269C 00002760  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000026A0 00002764  38 61 00 40 */	addi r3, r1, 0x40
/* 000026A4 00002768  FC 40 08 90 */	fmr f2, f1
/* 000026A8 0000276C  4B FF DB B1 */	bl PSMTXTrans
/* 000026AC 00002770  38 61 00 10 */	addi r3, r1, 0x10
/* 000026B0 00002774  38 81 00 40 */	addi r4, r1, 0x40
/* 000026B4 00002778  7C 65 1B 78 */	mr r5, r3
/* 000026B8 0000277C  4B FF DB A1 */	bl PSMTXConcat
/* 000026BC 00002780  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 000026C0 00002784  4B FF DB 99 */	bl animPosePeraOff
/* 000026C4 00002788  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 000026C8 0000278C  38 80 00 40 */	li r4, 0x40
/* 000026CC 00002790  4B FF DB 8D */	bl animPoseSetMaterialFlagOn
/* 000026D0 00002794  3C 60 00 00 */	lis r3, dat_mri_00021a48@ha
/* 000026D4 00002798  88 1E 00 00 */	lbz r0, 0x0(r30)
/* 000026D8 0000279C  38 63 00 00 */	addi r3, r3, dat_mri_00021a48@l
/* 000026DC 000027A0  38 81 00 0C */	addi r4, r1, 0xc
/* 000026E0 000027A4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000026E4 000027A8  90 61 00 08 */	stw r3, 0x8(r1)
/* 000026E8 000027AC  98 01 00 0B */	stb r0, 0xb(r1)
/* 000026EC 000027B0  80 01 00 08 */	lwz r0, 0x8(r1)
/* 000026F0 000027B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 000026F4 000027B8  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 000026F8 000027BC  4B FF DB 61 */	bl animPoseSetMaterialEvtColor
/* 000026FC 000027C0  4B FF DB 5D */	bl dispGetCurWork
/* 00002700 000027C4  88 03 00 01 */	lbz r0, 0x1(r3)
/* 00002704 000027C8  2C 00 00 01 */	cmpwi r0, 0x1
/* 00002708 000027CC  41 82 00 48 */	beq .L_00002750
/* 0000270C 000027D0  40 80 00 10 */	bge .L_0000271C
/* 00002710 000027D4  2C 00 00 00 */	cmpwi r0, 0x0
/* 00002714 000027D8  40 80 00 14 */	bge .L_00002728
/* 00002718 000027DC  48 00 00 84 */	b .L_0000279C
.L_0000271C:
/* 0000271C 000027E0  2C 00 00 03 */	cmpwi r0, 0x3
/* 00002720 000027E4  40 80 00 7C */	bge .L_0000279C
/* 00002724 000027E8  48 00 00 54 */	b .L_00002778
.L_00002728:
/* 00002728 000027EC  3C 60 00 00 */	lis r3, zero_mri_00021a7c@ha
/* 0000272C 000027F0  3C 80 00 00 */	lis r4, float_2_mri_00021a84@ha
/* 00002730 000027F4  38 A3 00 00 */	addi r5, r3, zero_mri_00021a7c@l
/* 00002734 000027F8  C0 44 00 00 */	lfs f2, float_2_mri_00021a84@l(r4)
/* 00002738 000027FC  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0000273C 00002800  38 81 00 10 */	addi r4, r1, 0x10
/* 00002740 00002804  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 00002744 00002808  38 A0 00 01 */	li r5, 0x1
/* 00002748 0000280C  4B FF DB 11 */	bl animPoseDrawMtx
/* 0000274C 00002810  48 00 00 50 */	b .L_0000279C
.L_00002750:
/* 00002750 00002814  3C 60 00 00 */	lis r3, zero_mri_00021a7c@ha
/* 00002754 00002818  3C 80 00 00 */	lis r4, float_2_mri_00021a84@ha
/* 00002758 0000281C  38 A3 00 00 */	addi r5, r3, zero_mri_00021a7c@l
/* 0000275C 00002820  C0 44 00 00 */	lfs f2, float_2_mri_00021a84@l(r4)
/* 00002760 00002824  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00002764 00002828  38 81 00 10 */	addi r4, r1, 0x10
/* 00002768 0000282C  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 0000276C 00002830  38 A0 00 02 */	li r5, 0x2
/* 00002770 00002834  4B FF DA E9 */	bl animPoseDrawMtx
/* 00002774 00002838  48 00 00 28 */	b .L_0000279C
.L_00002778:
/* 00002778 0000283C  3C 60 00 00 */	lis r3, zero_mri_00021a7c@ha
/* 0000277C 00002840  3C 80 00 00 */	lis r4, float_2_mri_00021a84@ha
/* 00002780 00002844  38 A3 00 00 */	addi r5, r3, zero_mri_00021a7c@l
/* 00002784 00002848  C0 44 00 00 */	lfs f2, float_2_mri_00021a84@l(r4)
/* 00002788 0000284C  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0000278C 00002850  38 81 00 10 */	addi r4, r1, 0x10
/* 00002790 00002854  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 00002794 00002858  38 A0 00 03 */	li r5, 0x3
/* 00002798 0000285C  4B FF DA C1 */	bl animPoseDrawMtx
.L_0000279C:
/* 0000279C 00002860  BB 81 00 70 */	lmw r28, 0x70(r1)
/* 000027A0 00002864  80 01 00 84 */	lwz r0, 0x84(r1)
/* 000027A4 00002868  7C 08 03 A6 */	mtlr r0
/* 000027A8 0000286C  38 21 00 80 */	addi r1, r1, 0x80
/* 000027AC 00002870  4E 80 00 20 */	blr
.endfn bossrobot_batu

# .text:0x46C | 0x27B0 | size: 0x20C
.fn bossrobot, local
/* 000027B0 00002874  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 000027B4 00002878  7C 08 02 A6 */	mflr r0
/* 000027B8 0000287C  90 01 00 54 */	stw r0, 0x54(r1)
/* 000027BC 00002880  BE E1 00 2C */	stmw r23, 0x2c(r1)
/* 000027C0 00002884  7C 97 23 78 */	mr r23, r4
/* 000027C4 00002888  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 000027C8 0000288C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000027CC 00002890  4B FF DA 8D */	bl evtGetValue
/* 000027D0 00002894  3C 80 00 00 */	lis r4, str_ボスロボット_mri_00021a4c@ha
/* 000027D4 00002898  54 7D 06 3E */	clrlwi r29, r3, 24
/* 000027D8 0000289C  38 64 00 00 */	addi r3, r4, str_ボスロボット_mri_00021a4c@l
/* 000027DC 000028A0  4B FF DA 7D */	bl npcNameToPtr
/* 000027E0 000028A4  3C 80 00 00 */	lis r4, str_ボスロボットバツ_mri_00021a5c@ha
/* 000027E4 000028A8  7C 7E 1B 78 */	mr r30, r3
/* 000027E8 000028AC  38 64 00 00 */	addi r3, r4, str_ボスロボットバツ_mri_00021a5c@l
/* 000027EC 000028B0  4B FF DA 6D */	bl npcNameToPtr
/* 000027F0 000028B4  3C 60 00 00 */	lis r3, str_ボスロボットマル_mri_00021aa0@ha
/* 000027F4 000028B8  38 63 00 00 */	addi r3, r3, str_ボスロボットマル_mri_00021aa0@l
/* 000027F8 000028BC  4B FF DA 61 */	bl npcNameToPtr
/* 000027FC 000028C0  2C 17 00 00 */	cmpwi r23, 0x0
/* 00002800 000028C4  7C 7F 1B 78 */	mr r31, r3
/* 00002804 000028C8  41 82 00 80 */	beq .L_00002884
/* 00002808 000028CC  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 0000280C 000028D0  38 80 00 01 */	li r4, 0x1
/* 00002810 000028D4  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 00002814 000028D8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00002818 000028DC  4B FF DA 41 */	bl _mapAlloc
/* 0000281C 000028E0  3C 80 00 00 */	lis r4, bp@ha
/* 00002820 000028E4  90 64 00 00 */	stw r3, bp@l(r4)
/* 00002824 000028E8  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 00002828 000028EC  4B FF DA 31 */	bl animPoseWorldMatrixEvalOn
/* 0000282C 000028F0  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 00002830 000028F4  4B FF DA 29 */	bl animPoseGetAnimPosePtr
/* 00002834 000028F8  7C 79 1B 78 */	mr r25, r3
/* 00002838 000028FC  3C 80 00 00 */	lis r4, zero_mri_00021a7c@ha
/* 0000283C 00002900  80 A3 01 64 */	lwz r5, 0x164(r3)
/* 00002840 00002904  3C 60 00 00 */	lis r3, float_neg1000_mri_00021ab4@ha
/* 00002844 00002908  3B 44 00 00 */	addi r26, r4, zero_mri_00021a7c@l
/* 00002848 0000290C  3A E0 00 00 */	li r23, 0x0
/* 0000284C 00002910  83 05 00 00 */	lwz r24, 0x0(r5)
/* 00002850 00002914  3B 63 00 00 */	addi r27, r3, float_neg1000_mri_00021ab4@l
/* 00002854 00002918  3B 80 00 00 */	li r28, 0x0
/* 00002858 0000291C  48 00 00 20 */	b .L_00002878
.L_0000285C:
/* 0000285C 00002920  C0 3A 00 00 */	lfs f1, 0x0(r26)
/* 00002860 00002924  7C 78 E2 14 */	add r3, r24, r28
/* 00002864 00002928  C0 5B 00 00 */	lfs f2, 0x0(r27)
/* 00002868 0000292C  FC 60 08 90 */	fmr f3, f1
/* 0000286C 00002930  4B FF D9 ED */	bl PSMTXTrans
/* 00002870 00002934  3A F7 00 01 */	addi r23, r23, 0x1
/* 00002874 00002938  3B 9C 00 30 */	addi r28, r28, 0x30
.L_00002878:
/* 00002878 0000293C  80 19 01 68 */	lwz r0, 0x168(r25)
/* 0000287C 00002940  7C 17 00 00 */	cmpw r23, r0
/* 00002880 00002944  41 80 FF DC */	blt .L_0000285C
.L_00002884:
/* 00002884 00002948  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 00002888 0000294C  4B FF D9 D1 */	bl animPoseGetAnimPosePtr
/* 0000288C 00002950  80 A3 01 64 */	lwz r5, 0x164(r3)
/* 00002890 00002954  3C 60 00 00 */	lis r3, str_locator17_mri_00021ab8@ha
/* 00002894 00002958  38 83 00 00 */	addi r4, r3, str_locator17_mri_00021ab8@l
/* 00002898 0000295C  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 0000289C 00002960  83 25 00 00 */	lwz r25, 0x0(r5)
/* 000028A0 00002964  4B FF D9 B9 */	bl animPoseGetGroupIdx
/* 000028A4 00002968  1C 03 00 30 */	mulli r0, r3, 0x30
/* 000028A8 0000296C  3C 60 00 00 */	lis r3, vec3_mri_00021a88@ha
/* 000028AC 00002970  3C 80 00 00 */	lis r4, vec3_mri_00021a94@ha
/* 000028B0 00002974  39 03 00 00 */	addi r8, r3, vec3_mri_00021a88@l
/* 000028B4 00002978  7C B9 02 14 */	add r5, r25, r0
/* 000028B8 0000297C  80 08 00 00 */	lwz r0, 0x0(r8)
/* 000028BC 00002980  80 C8 00 04 */	lwz r6, 0x4(r8)
/* 000028C0 00002984  3C 60 00 00 */	lis r3, bp@ha
/* 000028C4 00002988  90 01 00 08 */	stw r0, 0x8(r1)
/* 000028C8 0000298C  38 E4 00 00 */	addi r7, r4, vec3_mri_00021a94@l
/* 000028CC 00002990  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 000028D0 00002994  38 83 00 00 */	addi r4, r3, bp@l
/* 000028D4 00002998  80 08 00 08 */	lwz r0, 0x8(r8)
/* 000028D8 0000299C  38 61 00 14 */	addi r3, r1, 0x14
/* 000028DC 000029A0  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 000028E0 000029A4  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 000028E4 000029A8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 000028E8 000029AC  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 000028EC 000029B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 000028F0 000029B4  80 01 00 08 */	lwz r0, 0x8(r1)
/* 000028F4 000029B8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 000028F8 000029BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 000028FC 000029C0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00002900 000029C4  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 00002904 000029C8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 00002908 000029CC  90 BF 00 90 */	stw r5, 0x90(r31)
/* 0000290C 000029D0  90 1F 00 94 */	stw r0, 0x94(r31)
/* 00002910 000029D4  80 C7 00 00 */	lwz r6, 0x0(r7)
/* 00002914 000029D8  80 A7 00 04 */	lwz r5, 0x4(r7)
/* 00002918 000029DC  80 07 00 08 */	lwz r0, 0x8(r7)
/* 0000291C 000029E0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 00002920 000029E4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00002924 000029E8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 00002928 000029EC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 0000292C 000029F0  9B A4 00 00 */	stb r29, 0x0(r4)
/* 00002930 000029F4  4B FF D9 29 */	bl dispCalcZ
/* 00002934 000029F8  3C 60 00 00 */	lis r3, bp@ha
/* 00002938 000029FC  3C A0 00 00 */	lis r5, bossrobot_batu@ha
/* 0000293C 00002A00  38 83 00 00 */	addi r4, r3, bp@l
/* 00002940 00002A04  80 C4 00 00 */	lwz r6, 0x0(r4)
/* 00002944 00002A08  38 60 00 04 */	li r3, 0x4
/* 00002948 00002A0C  38 A5 00 00 */	addi r5, r5, bossrobot_batu@l
/* 0000294C 00002A10  38 80 00 00 */	li r4, 0x0
/* 00002950 00002A14  4B FF D9 09 */	bl dispEntry
/* 00002954 00002A18  38 61 00 14 */	addi r3, r1, 0x14
/* 00002958 00002A1C  4B FF D9 01 */	bl dispCalcZ
/* 0000295C 00002A20  3C 60 00 00 */	lis r3, bp@ha
/* 00002960 00002A24  3C A0 00 00 */	lis r5, bossrobot_batu@ha
/* 00002964 00002A28  38 83 00 00 */	addi r4, r3, bp@l
/* 00002968 00002A2C  80 C4 00 00 */	lwz r6, 0x0(r4)
/* 0000296C 00002A30  38 60 00 04 */	li r3, 0x4
/* 00002970 00002A34  38 A5 00 00 */	addi r5, r5, bossrobot_batu@l
/* 00002974 00002A38  38 80 00 01 */	li r4, 0x1
/* 00002978 00002A3C  4B FF D8 E1 */	bl dispEntry
/* 0000297C 00002A40  38 61 00 14 */	addi r3, r1, 0x14
/* 00002980 00002A44  4B FF D8 D9 */	bl dispCalcZ
/* 00002984 00002A48  3C 60 00 00 */	lis r3, bp@ha
/* 00002988 00002A4C  3C A0 00 00 */	lis r5, bossrobot_batu@ha
/* 0000298C 00002A50  38 83 00 00 */	addi r4, r3, bp@l
/* 00002990 00002A54  80 C4 00 00 */	lwz r6, 0x0(r4)
/* 00002994 00002A58  38 60 00 04 */	li r3, 0x4
/* 00002998 00002A5C  38 A5 00 00 */	addi r5, r5, bossrobot_batu@l
/* 0000299C 00002A60  38 80 00 02 */	li r4, 0x2
/* 000029A0 00002A64  4B FF D8 B9 */	bl dispEntry
/* 000029A4 00002A68  BA E1 00 2C */	lmw r23, 0x2c(r1)
/* 000029A8 00002A6C  38 60 00 00 */	li r3, 0x0
/* 000029AC 00002A70  80 01 00 54 */	lwz r0, 0x54(r1)
/* 000029B0 00002A74  7C 08 03 A6 */	mtlr r0
/* 000029B4 00002A78  38 21 00 50 */	addi r1, r1, 0x50
/* 000029B8 00002A7C  4E 80 00 20 */	blr
.endfn bossrobot

# .text:0x678 | 0x29BC | size: 0x24
.fn evt_countdown_stop, local
/* 000029BC 00002A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000029C0 00002A84  7C 08 02 A6 */	mflr r0
/* 000029C4 00002A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 000029C8 00002A8C  4B FF D8 91 */	bl countDownStop
/* 000029CC 00002A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000029D0 00002A94  38 60 00 02 */	li r3, 0x2
/* 000029D4 00002A98  7C 08 03 A6 */	mtlr r0
/* 000029D8 00002A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 000029DC 00002AA0  4E 80 00 20 */	blr
.endfn evt_countdown_stop

# .text:0x69C | 0x29E0 | size: 0xEC
.fn akari_charge_entry, local
/* 000029E0 00002AA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 000029E4 00002AA8  7C 08 02 A6 */	mflr r0
/* 000029E8 00002AAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 000029EC 00002AB0  39 61 00 40 */	addi r11, r1, 0x40
/* 000029F0 00002AB4  4B FF D8 69 */	bl _savefpr_28
/* 000029F4 00002AB8  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 000029F8 00002ABC  7C 7B 1B 78 */	mr r27, r3
/* 000029FC 00002AC0  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00002A00 00002AC4  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00002A04 00002AC8  4B FF D8 55 */	bl evtGetFloat
/* 00002A08 00002ACC  FF E0 08 90 */	fmr f31, f1
/* 00002A0C 00002AD0  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 00002A10 00002AD4  7F 63 DB 78 */	mr r3, r27
/* 00002A14 00002AD8  4B FF D8 45 */	bl evtGetFloat
/* 00002A18 00002ADC  FF C0 08 90 */	fmr f30, f1
/* 00002A1C 00002AE0  80 9C 00 08 */	lwz r4, 0x8(r28)
/* 00002A20 00002AE4  7F 63 DB 78 */	mr r3, r27
/* 00002A24 00002AE8  4B FF D8 35 */	bl evtGetFloat
/* 00002A28 00002AEC  FF A0 08 90 */	fmr f29, f1
/* 00002A2C 00002AF0  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 00002A30 00002AF4  7F 63 DB 78 */	mr r3, r27
/* 00002A34 00002AF8  4B FF D8 25 */	bl evtGetValue
/* 00002A38 00002AFC  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 00002A3C 00002B00  7C 7D 1B 78 */	mr r29, r3
/* 00002A40 00002B04  7F 63 DB 78 */	mr r3, r27
/* 00002A44 00002B08  4B FF D8 15 */	bl evtGetValue
/* 00002A48 00002B0C  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 00002A4C 00002B10  7C 7E 1B 78 */	mr r30, r3
/* 00002A50 00002B14  7F 63 DB 78 */	mr r3, r27
/* 00002A54 00002B18  4B FF D8 05 */	bl evtGetValue
/* 00002A58 00002B1C  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 00002A5C 00002B20  7C 7F 1B 78 */	mr r31, r3
/* 00002A60 00002B24  7F 63 DB 78 */	mr r3, r27
/* 00002A64 00002B28  4B FF D7 F5 */	bl evtGetFloat
/* 00002A68 00002B2C  FF 80 08 90 */	fmr f28, f1
/* 00002A6C 00002B30  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 00002A70 00002B34  7F 63 DB 78 */	mr r3, r27
/* 00002A74 00002B38  4B FF D7 E5 */	bl evtGetValue
/* 00002A78 00002B3C  FC 20 F8 90 */	fmr f1, f31
/* 00002A7C 00002B40  7C 64 1B 78 */	mr r4, r3
/* 00002A80 00002B44  FC 40 F0 90 */	fmr f2, f30
/* 00002A84 00002B48  38 60 00 00 */	li r3, 0x0
/* 00002A88 00002B4C  FC 60 E8 90 */	fmr f3, f29
/* 00002A8C 00002B50  FC 80 E0 90 */	fmr f4, f28
/* 00002A90 00002B54  4B FF D7 C9 */	bl effAkariChargeN64Entry
/* 00002A94 00002B58  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00002A98 00002B5C  93 A4 00 18 */	stw r29, 0x18(r4)
/* 00002A9C 00002B60  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00002AA0 00002B64  93 C4 00 1C */	stw r30, 0x1c(r4)
/* 00002AA4 00002B68  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00002AA8 00002B6C  38 60 00 02 */	li r3, 0x2
/* 00002AAC 00002B70  93 E4 00 20 */	stw r31, 0x20(r4)
/* 00002AB0 00002B74  39 61 00 40 */	addi r11, r1, 0x40
/* 00002AB4 00002B78  4B FF D7 A5 */	bl _restfpr_28
/* 00002AB8 00002B7C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 00002ABC 00002B80  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00002AC0 00002B84  7C 08 03 A6 */	mtlr r0
/* 00002AC4 00002B88  38 21 00 40 */	addi r1, r1, 0x40
/* 00002AC8 00002B8C  4E 80 00 20 */	blr
.endfn akari_charge_entry

# .text:0x788 | 0x2ACC | size: 0x4C
.fn mri_stg3_012_cb, local
/* 00002ACC 00002B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002AD0 00002B94  7C 08 02 A6 */	mflr r0
/* 00002AD4 00002B98  2C 03 00 03 */	cmpwi r3, 0x3
/* 00002AD8 00002B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002ADC 00002BA0  80 64 00 00 */	lwz r3, 0x0(r4)
/* 00002AE0 00002BA4  41 82 00 08 */	beq .L_00002AE8
/* 00002AE4 00002BA8  48 00 00 24 */	b .L_00002B08
.L_00002AE8:
/* 00002AE8 00002BAC  A0 03 00 08 */	lhz r0, 0x8(r3)
/* 00002AEC 00002BB0  28 00 00 01 */	cmplwi r0, 0x1
/* 00002AF0 00002BB4  40 82 00 18 */	bne .L_00002B08
/* 00002AF4 00002BB8  3C 80 F9 72 */	lis r4, 0xf972
/* 00002AF8 00002BBC  38 60 00 00 */	li r3, 0x0
/* 00002AFC 00002BC0  38 84 88 82 */	subi r4, r4, 0x777e
/* 00002B00 00002BC4  38 A0 00 01 */	li r5, 0x1
/* 00002B04 00002BC8  4B FF D7 55 */	bl evtSetValue
.L_00002B08:
/* 00002B08 00002BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002B0C 00002BD0  7C 08 03 A6 */	mtlr r0
/* 00002B10 00002BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 00002B14 00002BD8  4E 80 00 20 */	blr
.endfn mri_stg3_012_cb

# 0x00000920..0x00001CC0 | size: 0x13A0
.rodata
.balign 8

# .rodata:0x0 | 0x920 | size: 0x4
.obj dat_mri_00020fc0, local
	.4byte 0xFFFFFFFF
.endobj dat_mri_00020fc0

# .rodata:0x4 | 0x924 | size: 0x4
.obj dat_mri_00020fc4, local
	.4byte 0xFFFFFFFF
.endobj dat_mri_00020fc4

# .rodata:0x8 | 0x928 | size: 0x3
.obj str_me_mri_00020fc8, local
	.string "me"
.endobj str_me_mri_00020fc8

# .rodata:0xB | 0x92B | size: 0x1
.obj gap_03_0000092B_rodata, global
.hidden gap_03_0000092B_rodata
	.byte 0x00
.endobj gap_03_0000092B_rodata

# .rodata:0xC | 0x92C | size: 0x10
.obj str_stg2_mri_re_002_mri_00020fcc, local
	.string "stg2_mri_re_002"
.endobj str_stg2_mri_re_002_mri_00020fcc

# .rodata:0x1C | 0x93C | size: 0x12
.obj str_stg2_mri_re_002_1_mri_00020fdc, local
	.string "stg2_mri_re_002_1"
.endobj str_stg2_mri_re_002_1_mri_00020fdc

# .rodata:0x2E | 0x94E | size: 0x2
.obj gap_03_0000094E_rodata, global
.hidden gap_03_0000094E_rodata
	.2byte 0x0000
.endobj gap_03_0000094E_rodata

# .rodata:0x30 | 0x950 | size: 0x10
.obj str_stg2_mri_e12_26_mri_00020ff0, local
	.string "stg2_mri_e12_26"
.endobj str_stg2_mri_e12_26_mri_00020ff0

# .rodata:0x40 | 0x960 | size: 0x19
.obj str_牢屋の前に待機しています_mri_00021000, local
	.4byte 0x985389AE
	.4byte 0x82CC914F
	.4byte 0x82C991D2
	.4byte 0x8B4082B5
	.4byte 0x82C482A2
	.4byte 0x82DC82B7
	.byte 0x00
.endobj str_牢屋の前に待機しています_mri_00021000

# .rodata:0x59 | 0x979 | size: 0x3
.obj gap_03_00000979_rodata, global
.hidden gap_03_00000979_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000979_rodata

# .rodata:0x5C | 0x97C | size: 0x19
.obj str_トラップにかかっています_mri_0002101c, local
	.4byte 0x83678389
	.4byte 0x83628376
	.4byte 0x82C982A9
	.4byte 0x82A982C1
	.4byte 0x82C482A2
	.4byte 0x82DC82B7
	.byte 0x00
.endobj str_トラップにかかっています_mri_0002101c

# .rodata:0x75 | 0x995 | size: 0x3
.obj gap_03_00000995_rodata, global
.hidden gap_03_00000995_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000995_rodata

# .rodata:0x78 | 0x998 | size: 0x23
.obj str_ここにいます＆仲間になっていません_mri_00021038, local
	.4byte 0x82B182B1
	.4byte 0x82C982A2
	.4byte 0x82DC82B7
	.4byte 0x81959287
	.4byte 0x8AD482C9
	.4byte 0x82C882C1
	.4byte 0x82C482A2
	.4byte 0x82DC82B9
	.byte 0x82, 0xF1, 0x00
.endobj str_ここにいます＆仲間になっていません_mri_00021038

# .rodata:0x9B | 0x9BB | size: 0x1
.obj gap_03_000009BB_rodata, global
.hidden gap_03_000009BB_rodata
	.byte 0x00
.endobj gap_03_000009BB_rodata

# .rodata:0x9C | 0x9BC | size: 0x13
.obj str_同じエリアにいます_mri_0002105c, local
	.4byte 0x93AF82B6
	.4byte 0x8347838A
	.4byte 0x834182C9
	.4byte 0x82A282DC
	.byte 0x82, 0xB7, 0x00
.endobj str_同じエリアにいます_mri_0002105c

# .rodata:0xAF | 0x9CF | size: 0x1
.obj gap_03_000009CF_rodata, global
.hidden gap_03_000009CF_rodata
	.byte 0x00
.endobj gap_03_000009CF_rodata

# .rodata:0xB0 | 0x9D0 | size: 0x17
.obj str_はぐれから合流しました_mri_00021070, local
	.4byte 0x82CD82AE
	.4byte 0x82EA82A9
	.4byte 0x82E78D87
	.4byte 0x97AC82B5
	.4byte 0x82DC82B5
	.byte 0x82, 0xBD, 0x00
.endobj str_はぐれから合流しました_mri_00021070

# .rodata:0xC7 | 0x9E7 | size: 0x1
.obj gap_03_000009E7_rodata, global
.hidden gap_03_000009E7_rodata
	.byte 0x00
.endobj gap_03_000009E7_rodata

# .rodata:0xC8 | 0x9E8 | size: 0x10
.obj str_stg2_mri_e15_22_mri_00021088, local
	.string "stg2_mri_e15_22"
.endobj str_stg2_mri_e15_22_mri_00021088

# .rodata:0xD8 | 0x9F8 | size: 0x14
.obj str_stg2_mri_e15_22_sel_mri_00021098, local
	.string "stg2_mri_e15_22_sel"
.endobj str_stg2_mri_e15_22_sel_mri_00021098

# .rodata:0xEC | 0xA0C | size: 0x10
.obj str_stg2_mri_e15_28_mri_000210ac, local
	.string "stg2_mri_e15_28"
.endobj str_stg2_mri_e15_28_mri_000210ac

# .rodata:0xFC | 0xA1C | size: 0x10
.obj str_stg2_mri_e15_23_mri_000210bc, local
	.string "stg2_mri_e15_23"
.endobj str_stg2_mri_e15_23_mri_000210bc

# .rodata:0x10C | 0xA2C | size: 0x4
.obj str_S_1_mri_000210cc, local
	.string "S_1"
.endobj str_S_1_mri_000210cc

# .rodata:0x110 | 0xA30 | size: 0x4
.obj str_T_2_mri_000210d0, local
	.string "T_2"
.endobj str_T_2_mri_000210d0

# .rodata:0x114 | 0xA34 | size: 0x1C
.obj str_SFX_STG2_CHOUROU_CAL_mri_000210d4, local
	.string "SFX_STG2_CHOUROU_CALL_PUNI1"
.endobj str_SFX_STG2_CHOUROU_CAL_mri_000210d4

# .rodata:0x130 | 0xA50 | size: 0x10
.obj str_stg2_mri_e15_24_mri_000210f0, local
	.string "stg2_mri_e15_24"
.endobj str_stg2_mri_e15_24_mri_000210f0

# .rodata:0x140 | 0xA60 | size: 0x4
.obj str_T_1_mri_00021100, local
	.string "T_1"
.endobj str_T_1_mri_00021100

# .rodata:0x144 | 0xA64 | size: 0x10
.obj str_stg2_mri_e15_25_mri_00021104, local
	.string "stg2_mri_e15_25"
.endobj str_stg2_mri_e15_25_mri_00021104

# .rodata:0x154 | 0xA74 | size: 0x10
.obj str_stg2_mri_e15_26_mri_00021114, local
	.string "stg2_mri_e15_26"
.endobj str_stg2_mri_e15_26_mri_00021114

# .rodata:0x164 | 0xA84 | size: 0x10
.obj str_stg2_mri_e15_27_mri_00021124, local
	.string "stg2_mri_e15_27"
.endobj str_stg2_mri_e15_27_mri_00021124

# .rodata:0x174 | 0xA94 | size: 0x10
.obj str_stg2_mri_e15_29_mri_00021134, local
	.string "stg2_mri_e15_29"
.endobj str_stg2_mri_e15_29_mri_00021134

# .rodata:0x184 | 0xAA4 | size: 0x10
.obj str_stg2_mri_e15_30_mri_00021144, local
	.string "stg2_mri_e15_30"
.endobj str_stg2_mri_e15_30_mri_00021144

# .rodata:0x194 | 0xAB4 | size: 0x17
.obj str_SFX_VOICE_MARIO_SLEE_mri_00021154, local
	.string "SFX_VOICE_MARIO_SLEEP1"
.endobj str_SFX_VOICE_MARIO_SLEE_mri_00021154

# .rodata:0x1AB | 0xACB | size: 0x1
.obj gap_03_00000ACB_rodata, global
.hidden gap_03_00000ACB_rodata
	.byte 0x00
.endobj gap_03_00000ACB_rodata

# .rodata:0x1AC | 0xACC | size: 0x10
.obj str_stg2_mri_e15_31_mri_0002116c, local
	.string "stg2_mri_e15_31"
.endobj str_stg2_mri_e15_31_mri_0002116c

# .rodata:0x1BC | 0xADC | size: 0x17
.obj str_SFX_VOICE_MARIO_AWAK_mri_0002117c, local
	.string "SFX_VOICE_MARIO_AWAKE1"
.endobj str_SFX_VOICE_MARIO_AWAK_mri_0002117c

# .rodata:0x1D3 | 0xAF3 | size: 0x1
.obj gap_03_00000AF3_rodata, global
.hidden gap_03_00000AF3_rodata
	.byte 0x00
.endobj gap_03_00000AF3_rodata

# .rodata:0x1D4 | 0xAF4 | size: 0x6
.obj str_M_N_2_mri_00021194, local
	.string "M_N_2"
.endobj str_M_N_2_mri_00021194

# .rodata:0x1DA | 0xAFA | size: 0x2
.obj gap_03_00000AFA_rodata, global
.hidden gap_03_00000AFA_rodata
	.2byte 0x0000
.endobj gap_03_00000AFA_rodata

# .rodata:0x1DC | 0xAFC | size: 0xB
.obj str_irai_10_01_mri_0002119c, local
	.string "irai_10_01"
.endobj str_irai_10_01_mri_0002119c

# .rodata:0x1E7 | 0xB07 | size: 0x1
.obj gap_03_00000B07_rodata, global
.hidden gap_03_00000B07_rodata
	.byte 0x00
.endobj gap_03_00000B07_rodata

# .rodata:0x1E8 | 0xB08 | size: 0xB
.obj str_irai_10_02_mri_000211a8, local
	.string "irai_10_02"
.endobj str_irai_10_02_mri_000211a8

# .rodata:0x1F3 | 0xB13 | size: 0x1
.obj gap_03_00000B13_rodata, global
.hidden gap_03_00000B13_rodata
	.byte 0x00
.endobj gap_03_00000B13_rodata

# .rodata:0x1F4 | 0xB14 | size: 0x13
.obj str_sys_request_finish_mri_000211b4, local
	.string "sys_request_finish"
.endobj str_sys_request_finish_mri_000211b4

# .rodata:0x207 | 0xB27 | size: 0x1
.obj gap_03_00000B27_rodata, global
.hidden gap_03_00000B27_rodata
	.byte 0x00
.endobj gap_03_00000B27_rodata

# .rodata:0x208 | 0xB28 | size: 0xB
.obj str_irai_10_00_mri_000211c8, local
	.string "irai_10_00"
.endobj str_irai_10_00_mri_000211c8

# .rodata:0x213 | 0xB33 | size: 0x1
.obj gap_03_00000B33_rodata, global
.hidden gap_03_00000B33_rodata
	.byte 0x00
.endobj gap_03_00000B33_rodata

# .rodata:0x214 | 0xB34 | size: 0xB
.obj str_irai_17_00_mri_000211d4, local
	.string "irai_17_00"
.endobj str_irai_17_00_mri_000211d4

# .rodata:0x21F | 0xB3F | size: 0x1
.obj gap_03_00000B3F_rodata, global
.hidden gap_03_00000B3F_rodata
	.byte 0x00
.endobj gap_03_00000B3F_rodata

# .rodata:0x220 | 0xB40 | size: 0xB
.obj str_irai_17_01_mri_000211e0, local
	.string "irai_17_01"
.endobj str_irai_17_01_mri_000211e0

# .rodata:0x22B | 0xB4B | size: 0x1
.obj gap_03_00000B4B_rodata, global
.hidden gap_03_00000B4B_rodata
	.byte 0x00
.endobj gap_03_00000B4B_rodata

# .rodata:0x22C | 0xB4C | size: 0xA
.obj str_kairanban_mri_000211ec, local
	.string "kairanban"
.endobj str_kairanban_mri_000211ec

# .rodata:0x236 | 0xB56 | size: 0x2
.obj gap_03_00000B56_rodata, global
.hidden gap_03_00000B56_rodata
	.2byte 0x0000
.endobj gap_03_00000B56_rodata

# .rodata:0x238 | 0xB58 | size: 0xB
.obj str_irai_17_02_mri_000211f8, local
	.string "irai_17_02"
.endobj str_irai_17_02_mri_000211f8

# .rodata:0x243 | 0xB63 | size: 0x1
.obj gap_03_00000B63_rodata, global
.hidden gap_03_00000B63_rodata
	.byte 0x00
.endobj gap_03_00000B63_rodata

# .rodata:0x244 | 0xB64 | size: 0xB
.obj str_irai_17_03_mri_00021204, local
	.string "irai_17_03"
.endobj str_irai_17_03_mri_00021204

# .rodata:0x24F | 0xB6F | size: 0x1
.obj gap_03_00000B6F_rodata, global
.hidden gap_03_00000B6F_rodata
	.byte 0x00
.endobj gap_03_00000B6F_rodata

# .rodata:0x250 | 0xB70 | size: 0x10
.obj str_stg2_mri_re_001_mri_00021210, local
	.string "stg2_mri_re_001"
.endobj str_stg2_mri_re_001_mri_00021210

# .rodata:0x260 | 0xB80 | size: 0x12
.obj str_stg2_mri_re_001_1_mri_00021220, local
	.string "stg2_mri_re_001_1"
.endobj str_stg2_mri_re_001_1_mri_00021220

# .rodata:0x272 | 0xB92 | size: 0x2
.obj gap_03_00000B92_rodata, global
.hidden gap_03_00000B92_rodata
	.2byte 0x0000
.endobj gap_03_00000B92_rodata

# .rodata:0x274 | 0xB94 | size: 0x10
.obj str_stg2_mri_re_000_mri_00021234, local
	.string "stg2_mri_re_000"
.endobj str_stg2_mri_re_000_mri_00021234

# .rodata:0x284 | 0xBA4 | size: 0x12
.obj str_stg2_mri_re_000_1_mri_00021244, local
	.string "stg2_mri_re_000_1"
.endobj str_stg2_mri_re_000_1_mri_00021244

# .rodata:0x296 | 0xBB6 | size: 0x2
.obj gap_03_00000BB6_rodata, global
.hidden gap_03_00000BB6_rodata
	.2byte 0x0000
.endobj gap_03_00000BB6_rodata

# .rodata:0x298 | 0xBB8 | size: 0x14
.obj str_stg2_mri_re_000_1_1_mri_00021258, local
	.string "stg2_mri_re_000_1_1"
.endobj str_stg2_mri_re_000_1_1_mri_00021258

# .rodata:0x2AC | 0xBCC | size: 0x10
.obj str_stg2_mri_re_017_mri_0002126c, local
	.string "stg2_mri_re_017"
.endobj str_stg2_mri_re_017_mri_0002126c

# .rodata:0x2BC | 0xBDC | size: 0x12
.obj str_stg2_mri_re_017_1_mri_0002127c, local
	.string "stg2_mri_re_017_1"
.endobj str_stg2_mri_re_017_1_mri_0002127c

# .rodata:0x2CE | 0xBEE | size: 0x2
.obj gap_03_00000BEE_rodata, global
.hidden gap_03_00000BEE_rodata
	.2byte 0x0000
.endobj gap_03_00000BEE_rodata

# .rodata:0x2D0 | 0xBF0 | size: 0xD
.obj str_kpa_stg3_006_mri_00021290, local
	.string "kpa_stg3_006"
.endobj str_kpa_stg3_006_mri_00021290

# .rodata:0x2DD | 0xBFD | size: 0x3
.obj gap_03_00000BFD_rodata, global
.hidden gap_03_00000BFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000BFD_rodata

# .rodata:0x2E0 | 0xC00 | size: 0x14
.obj str_SFX_STG2_PUNI_JUMP1_mri_000212a0, local
	.string "SFX_STG2_PUNI_JUMP1"
.endobj str_SFX_STG2_PUNI_JUMP1_mri_000212a0

# .rodata:0x2F4 | 0xC14 | size: 0x10
.obj str_stg2_mri_re_015_mri_000212b4, local
	.string "stg2_mri_re_015"
.endobj str_stg2_mri_re_015_mri_000212b4

# .rodata:0x304 | 0xC24 | size: 0x10
.obj str_stg2_mri_re_003_mri_000212c4, local
	.string "stg2_mri_re_003"
.endobj str_stg2_mri_re_003_mri_000212c4

# .rodata:0x314 | 0xC34 | size: 0x12
.obj str_stg2_mri_re_016_1_mri_000212d4, local
	.string "stg2_mri_re_016_1"
.endobj str_stg2_mri_re_016_1_mri_000212d4

# .rodata:0x326 | 0xC46 | size: 0x2
.obj gap_03_00000C46_rodata, global
.hidden gap_03_00000C46_rodata
	.2byte 0x0000
.endobj gap_03_00000C46_rodata

# .rodata:0x328 | 0xC48 | size: 0x10
.obj str_stg2_mri_re_004_mri_000212e8, local
	.string "stg2_mri_re_004"
.endobj str_stg2_mri_re_004_mri_000212e8

# .rodata:0x338 | 0xC58 | size: 0x10
.obj str_stg2_mri_re_005_mri_000212f8, local
	.string "stg2_mri_re_005"
.endobj str_stg2_mri_re_005_mri_000212f8

# .rodata:0x348 | 0xC68 | size: 0x10
.obj str_stg2_mri_re_006_mri_00021308, local
	.string "stg2_mri_re_006"
.endobj str_stg2_mri_re_006_mri_00021308

# .rodata:0x358 | 0xC78 | size: 0x10
.obj str_stg2_mri_re_007_mri_00021318, local
	.string "stg2_mri_re_007"
.endobj str_stg2_mri_re_007_mri_00021318

# .rodata:0x368 | 0xC88 | size: 0x10
.obj str_stg2_mri_re_008_mri_00021328, local
	.string "stg2_mri_re_008"
.endobj str_stg2_mri_re_008_mri_00021328

# .rodata:0x378 | 0xC98 | size: 0x10
.obj str_stg2_mri_re_009_mri_00021338, local
	.string "stg2_mri_re_009"
.endobj str_stg2_mri_re_009_mri_00021338

# .rodata:0x388 | 0xCA8 | size: 0x10
.obj str_stg2_mri_re_010_mri_00021348, local
	.string "stg2_mri_re_010"
.endobj str_stg2_mri_re_010_mri_00021348

# .rodata:0x398 | 0xCB8 | size: 0x10
.obj str_stg2_mri_re_011_mri_00021358, local
	.string "stg2_mri_re_011"
.endobj str_stg2_mri_re_011_mri_00021358

# .rodata:0x3A8 | 0xCC8 | size: 0x6
.obj str_M_S_1_mri_00021368, local
	.string "M_S_1"
.endobj str_M_S_1_mri_00021368

# .rodata:0x3AE | 0xCCE | size: 0x2
.obj gap_03_00000CCE_rodata, global
.hidden gap_03_00000CCE_rodata
	.2byte 0x0000
.endobj gap_03_00000CCE_rodata

# .rodata:0x3B0 | 0xCD0 | size: 0x10
.obj str_stg2_mri_re_012_mri_00021370, local
	.string "stg2_mri_re_012"
.endobj str_stg2_mri_re_012_mri_00021370

# .rodata:0x3C0 | 0xCE0 | size: 0x10
.obj str_stg2_mri_re_014_mri_00021380, local
	.string "stg2_mri_re_014"
.endobj str_stg2_mri_re_014_mri_00021380

# .rodata:0x3D0 | 0xCF0 | size: 0xC
.obj str_puniko_item_mri_00021390, local
	.string "puniko_item"
.endobj str_puniko_item_mri_00021390

# .rodata:0x3DC | 0xCFC | size: 0x10
.obj str_stg2_mri_re_013_mri_0002139c, local
	.string "stg2_mri_re_013"
.endobj str_stg2_mri_re_013_mri_0002139c

# .rodata:0x3EC | 0xD0C | size: 0x10
.obj str_stg2_mri_re_016_mri_000213ac, local
	.string "stg2_mri_re_016"
.endobj str_stg2_mri_re_016_mri_000213ac

# .rodata:0x3FC | 0xD1C | size: 0x7
.obj str_ガイド_mri_000213bc, local
	.4byte 0x834B8343
	.byte 0x83, 0x68, 0x00
.endobj str_ガイド_mri_000213bc

# .rodata:0x403 | 0xD23 | size: 0x1
.obj gap_03_00000D23_rodata, global
.hidden gap_03_00000D23_rodata
	.byte 0x00
.endobj gap_03_00000D23_rodata

# .rodata:0x404 | 0xD24 | size: 0x9
.obj str_ライバル_mri_000213c4, local
	.4byte 0x83898343
	.4byte 0x836F838B
	.byte 0x00
.endobj str_ライバル_mri_000213c4

# .rodata:0x40D | 0xD2D | size: 0x3
.obj gap_03_00000D2D_rodata, global
.hidden gap_03_00000D2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D2D_rodata

# .rodata:0x410 | 0xD30 | size: 0xB
.obj str_プニ族長老_mri_000213d0, local
	.4byte 0x8376836A
	.4byte 0x91B092B7
	.byte 0x98, 0x56, 0x00
.endobj str_プニ族長老_mri_000213d0

# .rodata:0x41B | 0xD3B | size: 0x1
.obj gap_03_00000D3B_rodata, global
.hidden gap_03_00000D3B_rodata
	.byte 0x00
.endobj gap_03_00000D3B_rodata

# .rodata:0x41C | 0xD3C | size: 0x9
.obj str_プニ族１_mri_000213dc, local
	.4byte 0x8376836A
	.4byte 0x91B08250
	.byte 0x00
.endobj str_プニ族１_mri_000213dc

# .rodata:0x425 | 0xD45 | size: 0x3
.obj gap_03_00000D45_rodata, global
.hidden gap_03_00000D45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D45_rodata

# .rodata:0x428 | 0xD48 | size: 0x9
.obj str_プニ族２_mri_000213e8, local
	.4byte 0x8376836A
	.4byte 0x91B08251
	.byte 0x00
.endobj str_プニ族２_mri_000213e8

# .rodata:0x431 | 0xD51 | size: 0x3
.obj gap_03_00000D51_rodata, global
.hidden gap_03_00000D51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D51_rodata

# .rodata:0x434 | 0xD54 | size: 0x7
.obj str_プニ族_mri_000213f4, local
	.4byte 0x8376836A
	.byte 0x91, 0xB0, 0x00
.endobj str_プニ族_mri_000213f4

# .rodata:0x43B | 0xD5B | size: 0x1
.obj gap_03_00000D5B_rodata, global
.hidden gap_03_00000D5B_rodata
	.byte 0x00
.endobj gap_03_00000D5B_rodata

# .rodata:0x43C | 0xD5C | size: 0x8
.obj str_プニ族B_mri_000213fc, local
	.4byte 0x8376836A
	.4byte 0x91B04200
.endobj str_プニ族B_mri_000213fc

# .rodata:0x444 | 0xD64 | size: 0x9
.obj str_ガイド妹_mri_00021404, local
	.4byte 0x834B8343
	.4byte 0x83689685
	.byte 0x00
.endobj str_ガイド妹_mri_00021404

# .rodata:0x44D | 0xD6D | size: 0x3
.obj gap_03_00000D6D_rodata, global
.hidden gap_03_00000D6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D6D_rodata

# .rodata:0x450 | 0xD70 | size: 0xA
.obj str_S_doa_l_a_mri_00021410, local
	.string "S_doa_l_a"
.endobj str_S_doa_l_a_mri_00021410

# .rodata:0x45A | 0xD7A | size: 0x2
.obj gap_03_00000D7A_rodata, global
.hidden gap_03_00000D7A_rodata
	.2byte 0x0000
.endobj gap_03_00000D7A_rodata

# .rodata:0x45C | 0xD7C | size: 0xA
.obj str_S_doa_r_a_mri_0002141c, local
	.string "S_doa_r_a"
.endobj str_S_doa_r_a_mri_0002141c

# .rodata:0x466 | 0xD86 | size: 0x2
.obj gap_03_00000D86_rodata, global
.hidden gap_03_00000D86_rodata
	.2byte 0x0000
.endobj gap_03_00000D86_rodata

# .rodata:0x468 | 0xD88 | size: 0x7
.obj str_w_bero_mri_00021428, local
	.string "w_bero"
.endobj str_w_bero_mri_00021428

# .rodata:0x46F | 0xD8F | size: 0x1
.obj gap_03_00000D8F_rodata, global
.hidden gap_03_00000D8F_rodata
	.byte 0x00
.endobj gap_03_00000D8F_rodata

# .rodata:0x470 | 0xD90 | size: 0x7
.obj str_mri_00_mri_00021430, local
	.string "mri_00"
.endobj str_mri_00_mri_00021430

# .rodata:0x477 | 0xD97 | size: 0x1
.obj gap_03_00000D97_rodata, global
.hidden gap_03_00000D97_rodata
	.byte 0x00
.endobj gap_03_00000D97_rodata

# .rodata:0x478 | 0xD98 | size: 0x8
.obj str_ne_bero_mri_00021438, local
	.string "ne_bero"
.endobj str_ne_bero_mri_00021438

# .rodata:0x480 | 0xDA0 | size: 0x7
.obj str_e_bero_mri_00021440, local
	.string "e_bero"
.endobj str_e_bero_mri_00021440

# .rodata:0x487 | 0xDA7 | size: 0x1
.obj gap_03_00000DA7_rodata, global
.hidden gap_03_00000DA7_rodata
	.byte 0x00
.endobj gap_03_00000DA7_rodata

# .rodata:0x488 | 0xDA8 | size: 0x7
.obj str_mri_05_mri_00021448, local
	.string "mri_05"
.endobj str_mri_05_mri_00021448

# .rodata:0x48F | 0xDAF | size: 0x1
.obj gap_03_00000DAF_rodata, global
.hidden gap_03_00000DAF_rodata
	.byte 0x00
.endobj gap_03_00000DAF_rodata

# .rodata:0x490 | 0xDB0 | size: 0x6
.obj str_dokan_mri_00021450, local
	.string "dokan"
.endobj str_dokan_mri_00021450

# .rodata:0x496 | 0xDB6 | size: 0x2
.obj gap_03_00000DB6_rodata, global
.hidden gap_03_00000DB6_rodata
	.2byte 0x0000
.endobj gap_03_00000DB6_rodata

# .rodata:0x498 | 0xDB8 | size: 0x7
.obj str_mri_02_mri_00021458, local
	.string "mri_02"
.endobj str_mri_02_mri_00021458

# .rodata:0x49F | 0xDBF | size: 0x1
.obj gap_03_00000DBF_rodata, global
.hidden gap_03_00000DBF_rodata
	.byte 0x00
.endobj gap_03_00000DBF_rodata

# .rodata:0x4A0 | 0xDC0 | size: 0x7
.obj str_dokan1_mri_00021460, local
	.string "dokan1"
.endobj str_dokan1_mri_00021460

# .rodata:0x4A7 | 0xDC7 | size: 0x1
.obj gap_03_00000DC7_rodata, global
.hidden gap_03_00000DC7_rodata
	.byte 0x00
.endobj gap_03_00000DC7_rodata

# .rodata:0x4A8 | 0xDC8 | size: 0x10
.obj str_stg2_mri_e11_00_mri_00021468, local
	.string "stg2_mri_e11_00"
.endobj str_stg2_mri_e11_00_mri_00021468

# .rodata:0x4B8 | 0xDD8 | size: 0x10
.obj str_stg2_mri_e11_01_mri_00021478, local
	.string "stg2_mri_e11_01"
.endobj str_stg2_mri_e11_01_mri_00021478

# .rodata:0x4C8 | 0xDE8 | size: 0xB
.obj str_S_lights_r_mri_00021488, local
	.string "S_lights_r"
.endobj str_S_lights_r_mri_00021488

# .rodata:0x4D3 | 0xDF3 | size: 0x1
.obj gap_03_00000DF3_rodata, global
.hidden gap_03_00000DF3_rodata
	.byte 0x00
.endobj gap_03_00000DF3_rodata

# .rodata:0x4D4 | 0xDF4 | size: 0x15
.obj str_SFX_STG2_DOOR_UNLOCK_mri_00021494, local
	.string "SFX_STG2_DOOR_UNLOCK"
.endobj str_SFX_STG2_DOOR_UNLOCK_mri_00021494

# .rodata:0x4E9 | 0xE09 | size: 0x3
.obj gap_03_00000E09_rodata, global
.hidden gap_03_00000E09_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000E09_rodata

# .rodata:0x4EC | 0xE0C | size: 0x13
.obj str_SFX_STG2_DOOR_LAMP_mri_000214ac, local
	.string "SFX_STG2_DOOR_LAMP"
.endobj str_SFX_STG2_DOOR_LAMP_mri_000214ac

# .rodata:0x4FF | 0xE1F | size: 0x1
.obj gap_03_00000E1F_rodata, global
.hidden gap_03_00000E1F_rodata
	.byte 0x00
.endobj gap_03_00000E1F_rodata

# .rodata:0x500 | 0xE20 | size: 0xB
.obj str_doalight01_mri_000214c0, local
	.string "doalight01"
.endobj str_doalight01_mri_000214c0

# .rodata:0x50B | 0xE2B | size: 0x1
.obj gap_03_00000E2B_rodata, global
.hidden gap_03_00000E2B_rodata
	.byte 0x00
.endobj gap_03_00000E2B_rodata

# .rodata:0x50C | 0xE2C | size: 0xF
.obj str_第三勢力部下Ａ_mri_000214cc, local
	.4byte 0x91E68E4F
	.4byte 0x90A897CD
	.4byte 0x959489BA
	.byte 0x82, 0x60, 0x00
.endobj str_第三勢力部下Ａ_mri_000214cc

# .rodata:0x51B | 0xE3B | size: 0x1
.obj gap_03_00000E3B_rodata, global
.hidden gap_03_00000E3B_rodata
	.byte 0x00
.endobj gap_03_00000E3B_rodata

# .rodata:0x51C | 0xE3C | size: 0xF
.obj str_第三勢力部下Ｂ_mri_000214dc, local
	.4byte 0x91E68E4F
	.4byte 0x90A897CD
	.4byte 0x959489BA
	.byte 0x82, 0x61, 0x00
.endobj str_第三勢力部下Ｂ_mri_000214dc

# .rodata:0x52B | 0xE4B | size: 0x1
.obj gap_03_00000E4B_rodata, global
.hidden gap_03_00000E4B_rodata
	.byte 0x00
.endobj gap_03_00000E4B_rodata

# .rodata:0x52C | 0xE4C | size: 0x10
.obj str_BGM_EVT_DANGER2_mri_000214ec, local
	.string "BGM_EVT_DANGER2"
.endobj str_BGM_EVT_DANGER2_mri_000214ec

# .rodata:0x53C | 0xE5C | size: 0x1
.obj zero_mri_000214fc, local
	.byte 0x00
.endobj zero_mri_000214fc

# .rodata:0x53D | 0xE5D | size: 0x3
.obj gap_03_00000E5D_rodata, global
.hidden gap_03_00000E5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000E5D_rodata

# .rodata:0x540 | 0xE60 | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_mri_00021500, local
	.string "SFX_VOICE_MARIO_FIND1_3"
.endobj str_SFX_VOICE_MARIO_FIND_mri_00021500

# .rodata:0x558 | 0xE78 | size: 0x10
.obj str_stg2_mri_e11_02_mri_00021518, local
	.string "stg2_mri_e11_02"
.endobj str_stg2_mri_e11_02_mri_00021518

# .rodata:0x568 | 0xE88 | size: 0x10
.obj str_stg2_mri_e11_03_mri_00021528, local
	.string "stg2_mri_e11_03"
.endobj str_stg2_mri_e11_03_mri_00021528

# .rodata:0x578 | 0xE98 | size: 0x10
.obj str_stg2_mri_e11_04_mri_00021538, local
	.string "stg2_mri_e11_04"
.endobj str_stg2_mri_e11_04_mri_00021538

# .rodata:0x588 | 0xEA8 | size: 0x10
.obj str_stg2_mri_e11_05_mri_00021548, local
	.string "stg2_mri_e11_05"
.endobj str_stg2_mri_e11_05_mri_00021548

# .rodata:0x598 | 0xEB8 | size: 0x10
.obj str_stg2_mri_e11_06_mri_00021558, local
	.string "stg2_mri_e11_06"
.endobj str_stg2_mri_e11_06_mri_00021558

# .rodata:0x5A8 | 0xEC8 | size: 0x10
.obj str_stg2_mri_e11_07_mri_00021568, local
	.string "stg2_mri_e11_07"
.endobj str_stg2_mri_e11_07_mri_00021568

# .rodata:0x5B8 | 0xED8 | size: 0x10
.obj str_stg2_mri_e11_08_mri_00021578, local
	.string "stg2_mri_e11_08"
.endobj str_stg2_mri_e11_08_mri_00021578

# .rodata:0x5C8 | 0xEE8 | size: 0x10
.obj str_stg2_mri_e11_09_mri_00021588, local
	.string "stg2_mri_e11_09"
.endobj str_stg2_mri_e11_09_mri_00021588

# .rodata:0x5D8 | 0xEF8 | size: 0x10
.obj str_stg2_mri_e11_10_mri_00021598, local
	.string "stg2_mri_e11_10"
.endobj str_stg2_mri_e11_10_mri_00021598

# .rodata:0x5E8 | 0xF08 | size: 0xB
.obj str_doalight02_mri_000215a8, local
	.string "doalight02"
.endobj str_doalight02_mri_000215a8

# .rodata:0x5F3 | 0xF13 | size: 0x1
.obj gap_03_00000F13_rodata, global
.hidden gap_03_00000F13_rodata
	.byte 0x00
.endobj gap_03_00000F13_rodata

# .rodata:0x5F4 | 0xF14 | size: 0xE
.obj str_BGM_STG2_MRI1_mri_000215b4, local
	.string "BGM_STG2_MRI1"
.endobj str_BGM_STG2_MRI1_mri_000215b4

# .rodata:0x602 | 0xF22 | size: 0x2
.obj gap_03_00000F22_rodata, global
.hidden gap_03_00000F22_rodata
	.2byte 0x0000
.endobj gap_03_00000F22_rodata

# .rodata:0x604 | 0xF24 | size: 0x10
.obj str_stg2_mri_e12_00_mri_000215c4, local
	.string "stg2_mri_e12_00"
.endobj str_stg2_mri_e12_00_mri_000215c4

# .rodata:0x614 | 0xF34 | size: 0x13
.obj str_BGM_EVT_STG2_PUNI1_mri_000215d4, local
	.string "BGM_EVT_STG2_PUNI1"
.endobj str_BGM_EVT_STG2_PUNI1_mri_000215d4

# .rodata:0x627 | 0xF47 | size: 0x1
.obj gap_03_00000F47_rodata, global
.hidden gap_03_00000F47_rodata
	.byte 0x00
.endobj gap_03_00000F47_rodata

# .rodata:0x628 | 0xF48 | size: 0x10
.obj str_stg2_mri_e12_01_mri_000215e8, local
	.string "stg2_mri_e12_01"
.endobj str_stg2_mri_e12_01_mri_000215e8

# .rodata:0x638 | 0xF58 | size: 0x10
.obj str_stg2_mri_e12_02_mri_000215f8, local
	.string "stg2_mri_e12_02"
.endobj str_stg2_mri_e12_02_mri_000215f8

# .rodata:0x648 | 0xF68 | size: 0x10
.obj str_stg2_mri_e12_03_mri_00021608, local
	.string "stg2_mri_e12_03"
.endobj str_stg2_mri_e12_03_mri_00021608

# .rodata:0x658 | 0xF78 | size: 0x10
.obj str_stg2_mri_e12_04_mri_00021618, local
	.string "stg2_mri_e12_04"
.endobj str_stg2_mri_e12_04_mri_00021618

# .rodata:0x668 | 0xF88 | size: 0x14
.obj str_SFX_STG2_PUNI_HIDE1_mri_00021628, local
	.string "SFX_STG2_PUNI_HIDE1"
.endobj str_SFX_STG2_PUNI_HIDE1_mri_00021628

# .rodata:0x67C | 0xF9C | size: 0x10
.obj str_stg2_mri_e12_05_mri_0002163c, local
	.string "stg2_mri_e12_05"
.endobj str_stg2_mri_e12_05_mri_0002163c

# .rodata:0x68C | 0xFAC | size: 0x10
.obj str_stg2_mri_e12_10_mri_0002164c, local
	.string "stg2_mri_e12_10"
.endobj str_stg2_mri_e12_10_mri_0002164c

# .rodata:0x69C | 0xFBC | size: 0x10
.obj str_stg2_mri_e12_09_mri_0002165c, local
	.string "stg2_mri_e12_09"
.endobj str_stg2_mri_e12_09_mri_0002165c

# .rodata:0x6AC | 0xFCC | size: 0x10
.obj str_stg2_mri_e12_07_mri_0002166c, local
	.string "stg2_mri_e12_07"
.endobj str_stg2_mri_e12_07_mri_0002166c

# .rodata:0x6BC | 0xFDC | size: 0x10
.obj str_stg2_mri_e12_08_mri_0002167c, local
	.string "stg2_mri_e12_08"
.endobj str_stg2_mri_e12_08_mri_0002167c

# .rodata:0x6CC | 0xFEC | size: 0x10
.obj str_stg2_mri_e12_11_mri_0002168c, local
	.string "stg2_mri_e12_11"
.endobj str_stg2_mri_e12_11_mri_0002168c

# .rodata:0x6DC | 0xFFC | size: 0x10
.obj str_stg2_mri_e12_06_mri_0002169c, local
	.string "stg2_mri_e12_06"
.endobj str_stg2_mri_e12_06_mri_0002169c

# .rodata:0x6EC | 0x100C | size: 0x10
.obj str_stg2_mri_e12_12_mri_000216ac, local
	.string "stg2_mri_e12_12"
.endobj str_stg2_mri_e12_12_mri_000216ac

# .rodata:0x6FC | 0x101C | size: 0x10
.obj str_stg2_mri_e12_13_mri_000216bc, local
	.string "stg2_mri_e12_13"
.endobj str_stg2_mri_e12_13_mri_000216bc

# .rodata:0x70C | 0x102C | size: 0x13
.obj str_stg2_mri_e12_13_01_mri_000216cc, local
	.string "stg2_mri_e12_13_01"
.endobj str_stg2_mri_e12_13_01_mri_000216cc

# .rodata:0x71F | 0x103F | size: 0x1
.obj gap_03_0000103F_rodata, global
.hidden gap_03_0000103F_rodata
	.byte 0x00
.endobj gap_03_0000103F_rodata

# .rodata:0x720 | 0x1040 | size: 0x10
.obj str_stg2_mri_e12_14_mri_000216e0, local
	.string "stg2_mri_e12_14"
.endobj str_stg2_mri_e12_14_mri_000216e0

# .rodata:0x730 | 0x1050 | size: 0x10
.obj str_stg2_mri_e12_15_mri_000216f0, local
	.string "stg2_mri_e12_15"
.endobj str_stg2_mri_e12_15_mri_000216f0

# .rodata:0x740 | 0x1060 | size: 0x10
.obj str_stg2_mri_e12_16_mri_00021700, local
	.string "stg2_mri_e12_16"
.endobj str_stg2_mri_e12_16_mri_00021700

# .rodata:0x750 | 0x1070 | size: 0x10
.obj str_stg2_mri_e12_17_mri_00021710, local
	.string "stg2_mri_e12_17"
.endobj str_stg2_mri_e12_17_mri_00021710

# .rodata:0x760 | 0x1080 | size: 0x13
.obj str_stg2_mri_e12_17_02_mri_00021720, local
	.string "stg2_mri_e12_17_02"
.endobj str_stg2_mri_e12_17_02_mri_00021720

# .rodata:0x773 | 0x1093 | size: 0x1
.obj gap_03_00001093_rodata, global
.hidden gap_03_00001093_rodata
	.byte 0x00
.endobj gap_03_00001093_rodata

# .rodata:0x774 | 0x1094 | size: 0x10
.obj str_stg2_mri_e12_18_mri_00021734, local
	.string "stg2_mri_e12_18"
.endobj str_stg2_mri_e12_18_mri_00021734

# .rodata:0x784 | 0x10A4 | size: 0x10
.obj str_stg2_mri_e12_19_mri_00021744, local
	.string "stg2_mri_e12_19"
.endobj str_stg2_mri_e12_19_mri_00021744

# .rodata:0x794 | 0x10B4 | size: 0x10
.obj str_stg2_mri_e12_20_mri_00021754, local
	.string "stg2_mri_e12_20"
.endobj str_stg2_mri_e12_20_mri_00021754

# .rodata:0x7A4 | 0x10C4 | size: 0x10
.obj str_stg2_mri_e12_21_mri_00021764, local
	.string "stg2_mri_e12_21"
.endobj str_stg2_mri_e12_21_mri_00021764

# .rodata:0x7B4 | 0x10D4 | size: 0x10
.obj str_stg2_mri_e12_22_mri_00021774, local
	.string "stg2_mri_e12_22"
.endobj str_stg2_mri_e12_22_mri_00021774

# .rodata:0x7C4 | 0x10E4 | size: 0x10
.obj str_stg2_mri_e12_23_mri_00021784, local
	.string "stg2_mri_e12_23"
.endobj str_stg2_mri_e12_23_mri_00021784

# .rodata:0x7D4 | 0x10F4 | size: 0x10
.obj str_stg2_mri_e12_24_mri_00021794, local
	.string "stg2_mri_e12_24"
.endobj str_stg2_mri_e12_24_mri_00021794

# .rodata:0x7E4 | 0x1104 | size: 0x13
.obj str_stg2_mri_e12_24_00_mri_000217a4, local
	.string "stg2_mri_e12_24_00"
.endobj str_stg2_mri_e12_24_00_mri_000217a4

# .rodata:0x7F7 | 0x1117 | size: 0x1
.obj gap_03_00001117_rodata, global
.hidden gap_03_00001117_rodata
	.byte 0x00
.endobj gap_03_00001117_rodata

# .rodata:0x7F8 | 0x1118 | size: 0x13
.obj str_stg2_mri_e12_24_01_mri_000217b8, local
	.string "stg2_mri_e12_24_01"
.endobj str_stg2_mri_e12_24_01_mri_000217b8

# .rodata:0x80B | 0x112B | size: 0x1
.obj gap_03_0000112B_rodata, global
.hidden gap_03_0000112B_rodata
	.byte 0x00
.endobj gap_03_0000112B_rodata

# .rodata:0x80C | 0x112C | size: 0x10
.obj str_stg2_mri_e12_25_mri_000217cc, local
	.string "stg2_mri_e12_25"
.endobj str_stg2_mri_e12_25_mri_000217cc

# .rodata:0x81C | 0x113C | size: 0xE
.obj str_ENV_STG2_MRI1_mri_000217dc, local
	.string "ENV_STG2_MRI1"
.endobj str_ENV_STG2_MRI1_mri_000217dc

# .rodata:0x82A | 0x114A | size: 0x2
.obj gap_03_0000114A_rodata, global
.hidden gap_03_0000114A_rodata
	.2byte 0x0000
.endobj gap_03_0000114A_rodata

# .rodata:0x82C | 0x114C | size: 0x10
.obj str_stg2_mri_e15_00_mri_000217ec, local
	.string "stg2_mri_e15_00"
.endobj str_stg2_mri_e15_00_mri_000217ec

# .rodata:0x83C | 0x115C | size: 0x10
.obj str_stg2_mri_e15_01_mri_000217fc, local
	.string "stg2_mri_e15_01"
.endobj str_stg2_mri_e15_01_mri_000217fc

# .rodata:0x84C | 0x116C | size: 0x10
.obj str_stg2_mri_e15_02_mri_0002180c, local
	.string "stg2_mri_e15_02"
.endobj str_stg2_mri_e15_02_mri_0002180c

# .rodata:0x85C | 0x117C | size: 0x16
.obj str_SFX_STG2_CHOUROU_BIG_mri_0002181c, local
	.string "SFX_STG2_CHOUROU_BIG1"
.endobj str_SFX_STG2_CHOUROU_BIG_mri_0002181c

# .rodata:0x872 | 0x1192 | size: 0x2
.obj gap_03_00001192_rodata, global
.hidden gap_03_00001192_rodata
	.2byte 0x0000
.endobj gap_03_00001192_rodata

# .rodata:0x874 | 0x1194 | size: 0x10
.obj str_stg2_mri_e15_03_mri_00021834, local
	.string "stg2_mri_e15_03"
.endobj str_stg2_mri_e15_03_mri_00021834

# .rodata:0x884 | 0x11A4 | size: 0x13
.obj str_stg2_mri_e15_03_01_mri_00021844, local
	.string "stg2_mri_e15_03_01"
.endobj str_stg2_mri_e15_03_01_mri_00021844

# .rodata:0x897 | 0x11B7 | size: 0x1
.obj gap_03_000011B7_rodata, global
.hidden gap_03_000011B7_rodata
	.byte 0x00
.endobj gap_03_000011B7_rodata

# .rodata:0x898 | 0x11B8 | size: 0x10
.obj str_stg2_mri_e15_04_mri_00021858, local
	.string "stg2_mri_e15_04"
.endobj str_stg2_mri_e15_04_mri_00021858

# .rodata:0x8A8 | 0x11C8 | size: 0x10
.obj str_stg2_mri_e15_05_mri_00021868, local
	.string "stg2_mri_e15_05"
.endobj str_stg2_mri_e15_05_mri_00021868

# .rodata:0x8B8 | 0x11D8 | size: 0x10
.obj str_stg2_mri_e15_06_mri_00021878, local
	.string "stg2_mri_e15_06"
.endobj str_stg2_mri_e15_06_mri_00021878

# .rodata:0x8C8 | 0x11E8 | size: 0x10
.obj str_stg2_mri_e15_07_mri_00021888, local
	.string "stg2_mri_e15_07"
.endobj str_stg2_mri_e15_07_mri_00021888

# .rodata:0x8D8 | 0x11F8 | size: 0x10
.obj str_stg2_mri_e15_08_mri_00021898, local
	.string "stg2_mri_e15_08"
.endobj str_stg2_mri_e15_08_mri_00021898

# .rodata:0x8E8 | 0x1208 | size: 0x10
.obj str_stg2_mri_e15_09_mri_000218a8, local
	.string "stg2_mri_e15_09"
.endobj str_stg2_mri_e15_09_mri_000218a8

# .rodata:0x8F8 | 0x1218 | size: 0x10
.obj str_FF_GET_KEYITEM1_mri_000218b8, local
	.string "FF_GET_KEYITEM1"
.endobj str_FF_GET_KEYITEM1_mri_000218b8

# .rodata:0x908 | 0x1228 | size: 0x12
.obj str_BGM_FF_GET_PARTY1_mri_000218c8, local
	.string "BGM_FF_GET_PARTY1"
.endobj str_BGM_FF_GET_PARTY1_mri_000218c8

# .rodata:0x91A | 0x123A | size: 0x2
.obj gap_03_0000123A_rodata, global
.hidden gap_03_0000123A_rodata
	.2byte 0x0000
.endobj gap_03_0000123A_rodata

# .rodata:0x91C | 0x123C | size: 0x10
.obj str_stg2_mri_e15_11_mri_000218dc, local
	.string "stg2_mri_e15_11"
.endobj str_stg2_mri_e15_11_mri_000218dc

# .rodata:0x92C | 0x124C | size: 0x10
.obj str_stg2_mri_e15_12_mri_000218ec, local
	.string "stg2_mri_e15_12"
.endobj str_stg2_mri_e15_12_mri_000218ec

# .rodata:0x93C | 0x125C | size: 0x10
.obj str_stg2_mri_e15_13_mri_000218fc, local
	.string "stg2_mri_e15_13"
.endobj str_stg2_mri_e15_13_mri_000218fc

# .rodata:0x94C | 0x126C | size: 0x10
.obj str_stg2_mri_e15_14_mri_0002190c, local
	.string "stg2_mri_e15_14"
.endobj str_stg2_mri_e15_14_mri_0002190c

# .rodata:0x95C | 0x127C | size: 0x10
.obj str_stg2_mri_e15_15_mri_0002191c, local
	.string "stg2_mri_e15_15"
.endobj str_stg2_mri_e15_15_mri_0002191c

# .rodata:0x96C | 0x128C | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_mri_0002192c, local
	.string "SFX_VOICE_MARIO_NOD1_4"
.endobj str_SFX_VOICE_MARIO_NOD1_mri_0002192c

# .rodata:0x983 | 0x12A3 | size: 0x1
.obj gap_03_000012A3_rodata, global
.hidden gap_03_000012A3_rodata
	.byte 0x00
.endobj gap_03_000012A3_rodata

# .rodata:0x984 | 0x12A4 | size: 0x10
.obj str_stg2_mri_e15_16_mri_00021944, local
	.string "stg2_mri_e15_16"
.endobj str_stg2_mri_e15_16_mri_00021944

# .rodata:0x994 | 0x12B4 | size: 0x1B
.obj str_SFX_STG2_CHOUROU_PUN_mri_00021954, local
	.string "SFX_STG2_CHOUROU_PUNIDAMA1"
.endobj str_SFX_STG2_CHOUROU_PUN_mri_00021954

# .rodata:0x9AF | 0x12CF | size: 0x1
.obj gap_03_000012CF_rodata, global
.hidden gap_03_000012CF_rodata
	.byte 0x00
.endobj gap_03_000012CF_rodata

# .rodata:0x9B0 | 0x12D0 | size: 0x7
.obj str_item00_mri_00021970, local
	.string "item00"
.endobj str_item00_mri_00021970

# .rodata:0x9B7 | 0x12D7 | size: 0x1
.obj gap_03_000012D7_rodata, global
.hidden gap_03_000012D7_rodata
	.byte 0x00
.endobj gap_03_000012D7_rodata

# .rodata:0x9B8 | 0x12D8 | size: 0x13
.obj str_stg2_mri_e15_16_01_mri_00021978, local
	.string "stg2_mri_e15_16_01"
.endobj str_stg2_mri_e15_16_01_mri_00021978

# .rodata:0x9CB | 0x12EB | size: 0x1
.obj gap_03_000012EB_rodata, global
.hidden gap_03_000012EB_rodata
	.byte 0x00
.endobj gap_03_000012EB_rodata

# .rodata:0x9CC | 0x12EC | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_mri_0002198c, local
	.string "SFX_VOICE_MARIO_HAND_UP1_2"
.endobj str_SFX_VOICE_MARIO_HAND_mri_0002198c

# .rodata:0x9E7 | 0x1307 | size: 0x1
.obj gap_03_00001307_rodata, global
.hidden gap_03_00001307_rodata
	.byte 0x00
.endobj gap_03_00001307_rodata

# .rodata:0x9E8 | 0x1308 | size: 0x6
.obj str_M_C_3_mri_000219a8, local
	.string "M_C_3"
.endobj str_M_C_3_mri_000219a8

# .rodata:0x9EE | 0x130E | size: 0x2
.obj gap_03_0000130E_rodata, global
.hidden gap_03_0000130E_rodata
	.2byte 0x0000
.endobj gap_03_0000130E_rodata

# .rodata:0x9F0 | 0x1310 | size: 0x10
.obj str_stg2_mri_e15_18_mri_000219b0, local
	.string "stg2_mri_e15_18"
.endobj str_stg2_mri_e15_18_mri_000219b0

# .rodata:0xA00 | 0x1320 | size: 0xE
.obj str_ENV_STG2_MRI3_mri_000219c0, local
	.string "ENV_STG2_MRI3"
.endobj str_ENV_STG2_MRI3_mri_000219c0

# .rodata:0xA0E | 0x132E | size: 0x2
.obj gap_03_0000132E_rodata, global
.hidden gap_03_0000132E_rodata
	.2byte 0x0000
.endobj gap_03_0000132E_rodata

# .rodata:0xA10 | 0x1330 | size: 0x10
.obj str_stg2_mri_e15_19_mri_000219d0, local
	.string "stg2_mri_e15_19"
.endobj str_stg2_mri_e15_19_mri_000219d0

# .rodata:0xA20 | 0x1340 | size: 0x1D
.obj str_SFX_VOICE_MARIO_LAND_mri_000219e0, local
	.string "SFX_VOICE_MARIO_LAND_DAMAGE1"
.endobj str_SFX_VOICE_MARIO_LAND_mri_000219e0

# .rodata:0xA3D | 0x135D | size: 0x3
.obj gap_03_0000135D_rodata, global
.hidden gap_03_0000135D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000135D_rodata

# .rodata:0xA40 | 0x1360 | size: 0x16
.obj str_SFX_MARIO_FALL_CRUSH_mri_00021a00, local
	.string "SFX_MARIO_FALL_CRUSH1"
.endobj str_SFX_MARIO_FALL_CRUSH_mri_00021a00

# .rodata:0xA56 | 0x1376 | size: 0x2
.obj gap_03_00001376_rodata, global
.hidden gap_03_00001376_rodata
	.2byte 0x0000
.endobj gap_03_00001376_rodata

# .rodata:0xA58 | 0x1378 | size: 0x6
.obj str_M_D_8_mri_00021a18, local
	.string "M_D_8"
.endobj str_M_D_8_mri_00021a18

# .rodata:0xA5E | 0x137E | size: 0x2
.obj gap_03_0000137E_rodata, global
.hidden gap_03_0000137E_rodata
	.2byte 0x0000
.endobj gap_03_0000137E_rodata

# .rodata:0xA60 | 0x1380 | size: 0x6
.obj str_M_U_3_mri_00021a20, local
	.string "M_U_3"
.endobj str_M_U_3_mri_00021a20

# .rodata:0xA66 | 0x1386 | size: 0x2
.obj gap_03_00001386_rodata, global
.hidden gap_03_00001386_rodata
	.2byte 0x0000
.endobj gap_03_00001386_rodata

# .rodata:0xA68 | 0x1388 | size: 0x10
.obj str_stg2_mri_e15_20_mri_00021a28, local
	.string "stg2_mri_e15_20"
.endobj str_stg2_mri_e15_20_mri_00021a28

# .rodata:0xA78 | 0x1398 | size: 0x10
.obj str_stg2_mri_e15_21_mri_00021a38, local
	.string "stg2_mri_e15_21"
.endobj str_stg2_mri_e15_21_mri_00021a38

# .rodata:0xA88 | 0x13A8 | size: 0x4
.obj dat_mri_00021a48, local
	.4byte 0xFFFFFF00
.endobj dat_mri_00021a48

# .rodata:0xA8C | 0x13AC | size: 0xD
.obj str_ボスロボット_mri_00021a4c, local
	.4byte 0x837B8358
	.4byte 0x838D837B
	.4byte 0x83628367
	.byte 0x00
.endobj str_ボスロボット_mri_00021a4c

# .rodata:0xA99 | 0x13B9 | size: 0x3
.obj gap_03_000013B9_rodata, global
.hidden gap_03_000013B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013B9_rodata

# .rodata:0xA9C | 0x13BC | size: 0x11
.obj str_ボスロボットバツ_mri_00021a5c, local
	.4byte 0x837B8358
	.4byte 0x838D837B
	.4byte 0x83628367
	.4byte 0x836F8363
	.byte 0x00
.endobj str_ボスロボットバツ_mri_00021a5c

# .rodata:0xAAD | 0x13CD | size: 0x3
.obj gap_03_000013CD_rodata, global
.hidden gap_03_000013CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013CD_rodata

# .rodata:0xAB0 | 0x13D0 | size: 0xA
.obj str_locator23_mri_00021a70, local
	.string "locator23"
.endobj str_locator23_mri_00021a70
	.2byte 0x0000

# .rodata:0xABC | 0x13DC | size: 0x4
.obj zero_mri_00021a7c, local
	.float 0
.endobj zero_mri_00021a7c

# .rodata:0xAC0 | 0x13E0 | size: 0x4
.obj float_0p2_mri_00021a80, local
	.float 0.2
.endobj float_0p2_mri_00021a80

# .rodata:0xAC4 | 0x13E4 | size: 0x4
.obj float_2_mri_00021a84, local
	.float 2
.endobj float_2_mri_00021a84

# .rodata:0xAC8 | 0x13E8 | size: 0xC
.obj vec3_mri_00021a88, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_mri_00021a88

# .rodata:0xAD4 | 0x13F4 | size: 0xC
.obj vec3_mri_00021a94, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_mri_00021a94

# .rodata:0xAE0 | 0x1400 | size: 0x11
.obj str_ボスロボットマル_mri_00021aa0, local
	.4byte 0x837B8358
	.4byte 0x838D837B
	.4byte 0x83628367
	.4byte 0x837D838B
	.byte 0x00
.endobj str_ボスロボットマル_mri_00021aa0
	.byte 0x00, 0x00, 0x00

# .rodata:0xAF4 | 0x1414 | size: 0x4
.obj float_neg1000_mri_00021ab4, local
	.float -1000
.endobj float_neg1000_mri_00021ab4

# .rodata:0xAF8 | 0x1418 | size: 0xA
.obj str_locator17_mri_00021ab8, local
	.string "locator17"
.endobj str_locator17_mri_00021ab8

# .rodata:0xB02 | 0x1422 | size: 0x2
.obj gap_03_00001422_rodata, global
.hidden gap_03_00001422_rodata
	.2byte 0x0000
.endobj gap_03_00001422_rodata

# .rodata:0xB04 | 0x1424 | size: 0xD
.obj str_第三勢力幹部_mri_00021ac4, local
	.4byte 0x91E68E4F
	.4byte 0x90A897CD
	.4byte 0x8AB29594
	.byte 0x00
.endobj str_第三勢力幹部_mri_00021ac4

# .rodata:0xB11 | 0x1431 | size: 0x3
.obj gap_03_00001431_rodata, global
.hidden gap_03_00001431_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001431_rodata

# .rodata:0xB14 | 0x1434 | size: 0xC
.obj str_c_kanbu_ibt_mri_00021ad4, local
	.string "c_kanbu_ibt"
.endobj str_c_kanbu_ibt_mri_00021ad4

# .rodata:0xB20 | 0x1440 | size: 0xD
.obj str_c_mb_robo_1a_mri_00021ae0, local
	.string "c_mb_robo_1a"
.endobj str_c_mb_robo_1a_mri_00021ae0

# .rodata:0xB2D | 0x144D | size: 0x3
.obj gap_03_0000144D_rodata, global
.hidden gap_03_0000144D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000144D_rodata

# .rodata:0xB30 | 0x1450 | size: 0xC
.obj str_c_mb_robo_c_mri_00021af0, local
	.string "c_mb_robo_c"
.endobj str_c_mb_robo_c_mri_00021af0

# .rodata:0xB3C | 0x145C | size: 0x4
.obj str_L_1_mri_00021afc, local
	.string "L_1"
.endobj str_L_1_mri_00021afc

# .rodata:0xB40 | 0x1460 | size: 0x7
.obj str_部下１_mri_00021b00, local
	.4byte 0x959489BA
	.byte 0x82, 0x50, 0x00
.endobj str_部下１_mri_00021b00

# .rodata:0xB47 | 0x1467 | size: 0x1
.obj gap_03_00001467_rodata, global
.hidden gap_03_00001467_rodata
	.byte 0x00
.endobj gap_03_00001467_rodata

# .rodata:0xB48 | 0x1468 | size: 0x9
.obj str_c_zako_n_mri_00021b08, local
	.string "c_zako_n"
.endobj str_c_zako_n_mri_00021b08

# .rodata:0xB51 | 0x1471 | size: 0x3
.obj gap_03_00001471_rodata, global
.hidden gap_03_00001471_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001471_rodata

# .rodata:0xB54 | 0x1474 | size: 0xD
.obj str_第三勢力部下_mri_00021b14, local
	.4byte 0x91E68E4F
	.4byte 0x90A897CD
	.4byte 0x959489BA
	.byte 0x00
.endobj str_第三勢力部下_mri_00021b14

# .rodata:0xB61 | 0x1481 | size: 0x3
.obj gap_03_00001481_rodata, global
.hidden gap_03_00001481_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001481_rodata

# .rodata:0xB64 | 0x1484 | size: 0x7
.obj str_部下２_mri_00021b24, local
	.4byte 0x959489BA
	.byte 0x82, 0x51, 0x00
.endobj str_部下２_mri_00021b24

# .rodata:0xB6B | 0x148B | size: 0x1
.obj gap_03_0000148B_rodata, global
.hidden gap_03_0000148B_rodata
	.byte 0x00
.endobj gap_03_0000148B_rodata

# .rodata:0xB6C | 0x148C | size: 0x7
.obj str_部下３_mri_00021b2c, local
	.4byte 0x959489BA
	.byte 0x82, 0x52, 0x00
.endobj str_部下３_mri_00021b2c

# .rodata:0xB73 | 0x1493 | size: 0x1
.obj gap_03_00001493_rodata, global
.hidden gap_03_00001493_rodata
	.byte 0x00
.endobj gap_03_00001493_rodata

# .rodata:0xB74 | 0x1494 | size: 0x7
.obj str_部下４_mri_00021b34, local
	.4byte 0x959489BA
	.byte 0x82, 0x53, 0x00
.endobj str_部下４_mri_00021b34

# .rodata:0xB7B | 0x149B | size: 0x1
.obj gap_03_0000149B_rodata, global
.hidden gap_03_0000149B_rodata
	.byte 0x00
.endobj gap_03_0000149B_rodata

# .rodata:0xB7C | 0x149C | size: 0x7
.obj str_部下５_mri_00021b3c, local
	.4byte 0x959489BA
	.byte 0x82, 0x54, 0x00
.endobj str_部下５_mri_00021b3c

# .rodata:0xB83 | 0x14A3 | size: 0x1
.obj gap_03_000014A3_rodata, global
.hidden gap_03_000014A3_rodata
	.byte 0x00
.endobj gap_03_000014A3_rodata

# .rodata:0xB84 | 0x14A4 | size: 0x7
.obj str_ダミー_mri_00021b44, local
	.4byte 0x835F837E
	.byte 0x81, 0x5B, 0x00
.endobj str_ダミー_mri_00021b44

# .rodata:0xB8B | 0x14AB | size: 0x1
.obj gap_03_000014AB_rodata, global
.hidden gap_03_000014AB_rodata
	.byte 0x00
.endobj gap_03_000014AB_rodata

# .rodata:0xB8C | 0x14AC | size: 0xB
.obj str_OFF_d_xten_mri_00021b4c, local
	.string "OFF_d_xten"
.endobj str_OFF_d_xten_mri_00021b4c

# .rodata:0xB97 | 0x14B7 | size: 0x1
.obj gap_03_000014B7_rodata, global
.hidden gap_03_000014B7_rodata
	.byte 0x00
.endobj gap_03_000014B7_rodata

# .rodata:0xB98 | 0x14B8 | size: 0x4
.obj str_img_mri_00021b58, local
	.string "img"
.endobj str_img_mri_00021b58

# .rodata:0xB9C | 0x14BC | size: 0x4
.obj str_A_1_mri_00021b5c, local
	.string "A_1"
.endobj str_A_1_mri_00021b5c

# .rodata:0xBA0 | 0x14C0 | size: 0x10
.obj str_stg2_mri_e24_00_mri_00021b60, local
	.string "stg2_mri_e24_00"
.endobj str_stg2_mri_e24_00_mri_00021b60

# .rodata:0xBB0 | 0x14D0 | size: 0x10
.obj str_stg2_mri_e24_01_mri_00021b70, local
	.string "stg2_mri_e24_01"
.endobj str_stg2_mri_e24_01_mri_00021b70

# .rodata:0xBC0 | 0x14E0 | size: 0x16
.obj str_SFX_STG2_KANBU_SMALL_mri_00021b80, local
	.string "SFX_STG2_KANBU_SMALL1"
.endobj str_SFX_STG2_KANBU_SMALL_mri_00021b80

# .rodata:0xBD6 | 0x14F6 | size: 0x2
.obj gap_03_000014F6_rodata, global
.hidden gap_03_000014F6_rodata
	.2byte 0x0000
.endobj gap_03_000014F6_rodata

# .rodata:0xBD8 | 0x14F8 | size: 0x10
.obj str_stg2_mri_e24_02_mri_00021b98, local
	.string "stg2_mri_e24_02"
.endobj str_stg2_mri_e24_02_mri_00021b98

# .rodata:0xBE8 | 0x1508 | size: 0x10
.obj str_stg2_mri_e24_03_mri_00021ba8, local
	.string "stg2_mri_e24_03"
.endobj str_stg2_mri_e24_03_mri_00021ba8

# .rodata:0xBF8 | 0x1518 | size: 0x10
.obj str_stg2_mri_e24_04_mri_00021bb8, local
	.string "stg2_mri_e24_04"
.endobj str_stg2_mri_e24_04_mri_00021bb8

# .rodata:0xC08 | 0x1528 | size: 0x18
.obj str_SFX_STG2_CHOUROU_WAI_mri_00021bc8, local
	.string "SFX_STG2_CHOUROU_WAIST1"
.endobj str_SFX_STG2_CHOUROU_WAI_mri_00021bc8

# .rodata:0xC20 | 0x1540 | size: 0x4
.obj str_D_1_mri_00021be0, local
	.string "D_1"
.endobj str_D_1_mri_00021be0

# .rodata:0xC24 | 0x1544 | size: 0x13
.obj str_stg2_mri_e24_04_00_mri_00021be4, local
	.string "stg2_mri_e24_04_00"
.endobj str_stg2_mri_e24_04_00_mri_00021be4

# .rodata:0xC37 | 0x1557 | size: 0x1
.obj gap_03_00001557_rodata, global
.hidden gap_03_00001557_rodata
	.byte 0x00
.endobj gap_03_00001557_rodata

# .rodata:0xC38 | 0x1558 | size: 0x13
.obj str_stg2_mri_e24_04_01_mri_00021bf8, local
	.string "stg2_mri_e24_04_01"
.endobj str_stg2_mri_e24_04_01_mri_00021bf8

# .rodata:0xC4B | 0x156B | size: 0x1
.obj gap_03_0000156B_rodata, global
.hidden gap_03_0000156B_rodata
	.byte 0x00
.endobj gap_03_0000156B_rodata

# .rodata:0xC4C | 0x156C | size: 0x4
.obj str_S_2_mri_00021c0c, local
	.string "S_2"
.endobj str_S_2_mri_00021c0c

# .rodata:0xC50 | 0x1570 | size: 0x13
.obj str_stg2_mri_e24_04_02_mri_00021c10, local
	.string "stg2_mri_e24_04_02"
.endobj str_stg2_mri_e24_04_02_mri_00021c10

# .rodata:0xC63 | 0x1583 | size: 0x1
.obj gap_03_00001583_rodata, global
.hidden gap_03_00001583_rodata
	.byte 0x00
.endobj gap_03_00001583_rodata

# .rodata:0xC64 | 0x1584 | size: 0x10
.obj str_stg2_mri_e24_05_mri_00021c24, local
	.string "stg2_mri_e24_05"
.endobj str_stg2_mri_e24_05_mri_00021c24

# .rodata:0xC74 | 0x1594 | size: 0x6
.obj str_M_I_Y_mri_00021c34, local
	.string "M_I_Y"
.endobj str_M_I_Y_mri_00021c34

# .rodata:0xC7A | 0x159A | size: 0x2
.obj gap_03_0000159A_rodata, global
.hidden gap_03_0000159A_rodata
	.2byte 0x0000
.endobj gap_03_0000159A_rodata

# .rodata:0xC7C | 0x159C | size: 0x13
.obj str_stg2_mri_e24_05_01_mri_00021c3c, local
	.string "stg2_mri_e24_05_01"
.endobj str_stg2_mri_e24_05_01_mri_00021c3c

# .rodata:0xC8F | 0x15AF | size: 0x1
.obj gap_03_000015AF_rodata, global
.hidden gap_03_000015AF_rodata
	.byte 0x00
.endobj gap_03_000015AF_rodata

# .rodata:0xC90 | 0x15B0 | size: 0x10
.obj str_stg2_mri_e24_06_mri_00021c50, local
	.string "stg2_mri_e24_06"
.endobj str_stg2_mri_e24_06_mri_00021c50

# .rodata:0xCA0 | 0x15C0 | size: 0x1D
.obj str_SFX_STG2_BOMB_SWITCH_mri_00021c60, local
	.string "SFX_STG2_BOMB_SWITCH_APPEAR1"
.endobj str_SFX_STG2_BOMB_SWITCH_mri_00021c60

# .rodata:0xCBD | 0x15DD | size: 0x3
.obj gap_03_000015DD_rodata, global
.hidden gap_03_000015DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000015DD_rodata

# .rodata:0xCC0 | 0x15E0 | size: 0x4
.obj str_I_6_mri_00021c80, local
	.string "I_6"
.endobj str_I_6_mri_00021c80

# .rodata:0xCC4 | 0x15E4 | size: 0x19
.obj str_SFX_STG2_BOMB_TIMER__mri_00021c84, local
	.string "SFX_STG2_BOMB_TIMER_SET1"
.endobj str_SFX_STG2_BOMB_TIMER__mri_00021c84

# .rodata:0xCDD | 0x15FD | size: 0x3
.obj gap_03_000015FD_rodata, global
.hidden gap_03_000015FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000015FD_rodata

# .rodata:0xCE0 | 0x1600 | size: 0x4
.obj str_I_7_mri_00021ca0, local
	.string "I_7"
.endobj str_I_7_mri_00021ca0

# .rodata:0xCE4 | 0x1604 | size: 0x1B
.obj str_SFX_STG2_BOMB_SWITCH_mri_00021ca4, local
	.string "SFX_STG2_BOMB_SWITCH_AWAY1"
.endobj str_SFX_STG2_BOMB_SWITCH_mri_00021ca4

# .rodata:0xCFF | 0x161F | size: 0x1
.obj gap_03_0000161F_rodata, global
.hidden gap_03_0000161F_rodata
	.byte 0x00
.endobj gap_03_0000161F_rodata

# .rodata:0xD00 | 0x1620 | size: 0x4
.obj str_I_8_mri_00021cc0, local
	.string "I_8"
.endobj str_I_8_mri_00021cc0

# .rodata:0xD04 | 0x1624 | size: 0x10
.obj str_stg2_mri_e24_07_mri_00021cc4, local
	.string "stg2_mri_e24_07"
.endobj str_stg2_mri_e24_07_mri_00021cc4

# .rodata:0xD14 | 0x1634 | size: 0x4
.obj str_Z_1_mri_00021cd4, local
	.string "Z_1"
.endobj str_Z_1_mri_00021cd4

# .rodata:0xD18 | 0x1638 | size: 0x16
.obj str_SFX_STG2_BOSS_APPEAR_mri_00021cd8, local
	.string "SFX_STG2_BOSS_APPEAR1"
.endobj str_SFX_STG2_BOSS_APPEAR_mri_00021cd8

# .rodata:0xD2E | 0x164E | size: 0x2
.obj gap_03_0000164E_rodata, global
.hidden gap_03_0000164E_rodata
	.2byte 0x0000
.endobj gap_03_0000164E_rodata

# .rodata:0xD30 | 0x1650 | size: 0x18
.obj str_SFX_FLD_NPC_KANBU_JU_mri_00021cf0, local
	.string "SFX_FLD_NPC_KANBU_JUMP1"
.endobj str_SFX_FLD_NPC_KANBU_JU_mri_00021cf0

# .rodata:0xD48 | 0x1668 | size: 0x4
.obj str_R_1_mri_00021d08, local
	.string "R_1"
.endobj str_R_1_mri_00021d08

# .rodata:0xD4C | 0x166C | size: 0x14
.obj str_BGM_EVT_MAGNUM_APP1_mri_00021d0c, local
	.string "BGM_EVT_MAGNUM_APP1"
.endobj str_BGM_EVT_MAGNUM_APP1_mri_00021d0c

# .rodata:0xD60 | 0x1680 | size: 0x16
.obj str_SFX_STG2_BOSS_APPEAR_mri_00021d20, local
	.string "SFX_STG2_BOSS_APPEAR2"
.endobj str_SFX_STG2_BOSS_APPEAR_mri_00021d20

# .rodata:0xD76 | 0x1696 | size: 0x2
.obj gap_03_00001696_rodata, global
.hidden gap_03_00001696_rodata
	.2byte 0x0000
.endobj gap_03_00001696_rodata

# .rodata:0xD78 | 0x1698 | size: 0x10
.obj str_stg2_mri_e24_08_mri_00021d38, local
	.string "stg2_mri_e24_08"
.endobj str_stg2_mri_e24_08_mri_00021d38

# .rodata:0xD88 | 0x16A8 | size: 0x15
.obj str_SFX_STG2_BOSS_LIGHT1_mri_00021d48, local
	.string "SFX_STG2_BOSS_LIGHT1"
.endobj str_SFX_STG2_BOSS_LIGHT1_mri_00021d48

# .rodata:0xD9D | 0x16BD | size: 0x3
.obj gap_03_000016BD_rodata, global
.hidden gap_03_000016BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016BD_rodata

# .rodata:0xDA0 | 0x16C0 | size: 0x13
.obj str_SFX_STG2_BOSS_SET1_mri_00021d60, local
	.string "SFX_STG2_BOSS_SET1"
.endobj str_SFX_STG2_BOSS_SET1_mri_00021d60

# .rodata:0xDB3 | 0x16D3 | size: 0x1
.obj gap_03_000016D3_rodata, global
.hidden gap_03_000016D3_rodata
	.byte 0x00
.endobj gap_03_000016D3_rodata

# .rodata:0xDB4 | 0x16D4 | size: 0x13
.obj str_SFX_STG2_BOSS_SET2_mri_00021d74, local
	.string "SFX_STG2_BOSS_SET2"
.endobj str_SFX_STG2_BOSS_SET2_mri_00021d74

# .rodata:0xDC7 | 0x16E7 | size: 0x1
.obj gap_03_000016E7_rodata, global
.hidden gap_03_000016E7_rodata
	.byte 0x00
.endobj gap_03_000016E7_rodata

# .rodata:0xDC8 | 0x16E8 | size: 0x17
.obj str_SFX_STG2_BOSS_LANDIN_mri_00021d88, local
	.string "SFX_STG2_BOSS_LANDING1"
.endobj str_SFX_STG2_BOSS_LANDIN_mri_00021d88

# .rodata:0xDDF | 0x16FF | size: 0x1
.obj gap_03_000016FF_rodata, global
.hidden gap_03_000016FF_rodata
	.byte 0x00
.endobj gap_03_000016FF_rodata

# .rodata:0xDE0 | 0x1700 | size: 0x4
.obj str_C_1_mri_00021da0, local
	.string "C_1"
.endobj str_C_1_mri_00021da0

# .rodata:0xDE4 | 0x1704 | size: 0x4
.obj str_S_3_mri_00021da4, local
	.string "S_3"
.endobj str_S_3_mri_00021da4

# .rodata:0xDE8 | 0x1708 | size: 0x17
.obj str_SFX_STG2_3RD_EXPLSIO_mri_00021da8, local
	.string "SFX_STG2_3RD_EXPLSION1"
.endobj str_SFX_STG2_3RD_EXPLSIO_mri_00021da8

# .rodata:0xDFF | 0x171F | size: 0x1
.obj gap_03_0000171F_rodata, global
.hidden gap_03_0000171F_rodata
	.byte 0x00
.endobj gap_03_0000171F_rodata

# .rodata:0xE00 | 0x1720 | size: 0x17
.obj str_SFX_STG2_3RD_EXPLSIO_mri_00021dc0, local
	.string "SFX_STG2_3RD_EXPLSION3"
.endobj str_SFX_STG2_3RD_EXPLSIO_mri_00021dc0

# .rodata:0xE17 | 0x1737 | size: 0x1
.obj gap_03_00001737_rodata, global
.hidden gap_03_00001737_rodata
	.byte 0x00
.endobj gap_03_00001737_rodata

# .rodata:0xE18 | 0x1738 | size: 0xC
.obj str_kemuri_test_mri_00021dd8, local
	.string "kemuri_test"
.endobj str_kemuri_test_mri_00021dd8

# .rodata:0xE24 | 0x1744 | size: 0x9
.obj str_ガイドsp_mri_00021de4, local
	.4byte 0x834B8343
	.4byte 0x83687370
	.byte 0x00
.endobj str_ガイドsp_mri_00021de4

# .rodata:0xE2D | 0x174D | size: 0x3
.obj gap_03_0000174D_rodata, global
.hidden gap_03_0000174D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000174D_rodata

# .rodata:0xE30 | 0x1750 | size: 0xB
.obj str_ガイド妹sp_mri_00021df0, local
	.4byte 0x834B8343
	.4byte 0x83689685
	.byte 0x73, 0x70, 0x00
.endobj str_ガイド妹sp_mri_00021df0

# .rodata:0xE3B | 0x175B | size: 0x1
.obj gap_03_0000175B_rodata, global
.hidden gap_03_0000175B_rodata
	.byte 0x00
.endobj gap_03_0000175B_rodata

# .rodata:0xE3C | 0x175C | size: 0xB
.obj str_ライバルsp_mri_00021dfc, local
	.4byte 0x83898343
	.4byte 0x836F838B
	.byte 0x73, 0x70, 0x00
.endobj str_ライバルsp_mri_00021dfc

# .rodata:0xE47 | 0x1767 | size: 0x1
.obj gap_03_00001767_rodata, global
.hidden gap_03_00001767_rodata
	.byte 0x00
.endobj gap_03_00001767_rodata

# .rodata:0xE48 | 0x1768 | size: 0x17
.obj str_SFX_STG2_3RD_EXPLSIO_mri_00021e08, local
	.string "SFX_STG2_3RD_EXPLSION2"
.endobj str_SFX_STG2_3RD_EXPLSIO_mri_00021e08

# .rodata:0xE5F | 0x177F | size: 0x1
.obj gap_03_0000177F_rodata, global
.hidden gap_03_0000177F_rodata
	.byte 0x00
.endobj gap_03_0000177F_rodata

# .rodata:0xE60 | 0x1780 | size: 0xB
.obj str_eff_hikari_mri_00021e20, local
	.string "eff_hikari"
.endobj str_eff_hikari_mri_00021e20

# .rodata:0xE6B | 0x178B | size: 0x1
.obj gap_03_0000178B_rodata, global
.hidden gap_03_0000178B_rodata
	.byte 0x00
.endobj gap_03_0000178B_rodata

# .rodata:0xE6C | 0x178C | size: 0xE
.obj str_radiation_n64_mri_00021e2c, local
	.string "radiation_n64"
.endobj str_radiation_n64_mri_00021e2c

# .rodata:0xE7A | 0x179A | size: 0x2
.obj gap_03_0000179A_rodata, global
.hidden gap_03_0000179A_rodata
	.2byte 0x0000
.endobj gap_03_0000179A_rodata

# .rodata:0xE7C | 0x179C | size: 0x16
.obj str_SFX_STG2_KANBU_ROUND_mri_00021e3c, local
	.string "SFX_STG2_KANBU_ROUND1"
.endobj str_SFX_STG2_KANBU_ROUND_mri_00021e3c

# .rodata:0xE92 | 0x17B2 | size: 0x2
.obj gap_03_000017B2_rodata, global
.hidden gap_03_000017B2_rodata
	.2byte 0x0000
.endobj gap_03_000017B2_rodata

# .rodata:0xE94 | 0x17B4 | size: 0x16
.obj str_SFX_STG2_KANBU_STICK_mri_00021e54, local
	.string "SFX_STG2_KANBU_STICK1"
.endobj str_SFX_STG2_KANBU_STICK_mri_00021e54

# .rodata:0xEAA | 0x17CA | size: 0x2
.obj gap_03_000017CA_rodata, global
.hidden gap_03_000017CA_rodata
	.2byte 0x0000
.endobj gap_03_000017CA_rodata

# .rodata:0xEAC | 0x17CC | size: 0x18
.obj str_SFX_EVT_STARSTONE_JU_mri_00021e6c, local
	.string "SFX_EVT_STARSTONE_JUMP1"
.endobj str_SFX_EVT_STARSTONE_JU_mri_00021e6c

# .rodata:0xEC4 | 0x17E4 | size: 0xF
.obj str_BGM_EVT_HAPPY1_mri_00021e84, local
	.string "BGM_EVT_HAPPY1"
.endobj str_BGM_EVT_HAPPY1_mri_00021e84

# .rodata:0xED3 | 0x17F3 | size: 0x1
.obj gap_03_000017F3_rodata, global
.hidden gap_03_000017F3_rodata
	.byte 0x00
.endobj gap_03_000017F3_rodata

# .rodata:0xED4 | 0x17F4 | size: 0x13
.obj str_stg2_mri_e25_00_00_mri_00021e94, local
	.string "stg2_mri_e25_00_00"
.endobj str_stg2_mri_e25_00_00_mri_00021e94

# .rodata:0xEE7 | 0x1807 | size: 0x1
.obj gap_03_00001807_rodata, global
.hidden gap_03_00001807_rodata
	.byte 0x00
.endobj gap_03_00001807_rodata

# .rodata:0xEE8 | 0x1808 | size: 0x13
.obj str_stg2_mri_e25_00_01_mri_00021ea8, local
	.string "stg2_mri_e25_00_01"
.endobj str_stg2_mri_e25_00_01_mri_00021ea8

# .rodata:0xEFB | 0x181B | size: 0x1
.obj gap_03_0000181B_rodata, global
.hidden gap_03_0000181B_rodata
	.byte 0x00
.endobj gap_03_0000181B_rodata

# .rodata:0xEFC | 0x181C | size: 0x17
.obj str_SFX_STG2_KANBU_ESCAP_mri_00021ebc, local
	.string "SFX_STG2_KANBU_ESCAPE1"
.endobj str_SFX_STG2_KANBU_ESCAP_mri_00021ebc

# .rodata:0xF13 | 0x1833 | size: 0x1
.obj gap_03_00001833_rodata, global
.hidden gap_03_00001833_rodata
	.byte 0x00
.endobj gap_03_00001833_rodata

# .rodata:0xF14 | 0x1834 | size: 0x13
.obj str_stg2_mri_e25_00_02_mri_00021ed4, local
	.string "stg2_mri_e25_00_02"
.endobj str_stg2_mri_e25_00_02_mri_00021ed4

# .rodata:0xF27 | 0x1847 | size: 0x1
.obj gap_03_00001847_rodata, global
.hidden gap_03_00001847_rodata
	.byte 0x00
.endobj gap_03_00001847_rodata

# .rodata:0xF28 | 0x1848 | size: 0x13
.obj str_stg2_mri_e25_00_03_mri_00021ee8, local
	.string "stg2_mri_e25_00_03"
.endobj str_stg2_mri_e25_00_03_mri_00021ee8

# .rodata:0xF3B | 0x185B | size: 0x1
.obj gap_03_0000185B_rodata, global
.hidden gap_03_0000185B_rodata
	.byte 0x00
.endobj gap_03_0000185B_rodata

# .rodata:0xF3C | 0x185C | size: 0x13
.obj str_stg2_mri_e25_00_04_mri_00021efc, local
	.string "stg2_mri_e25_00_04"
.endobj str_stg2_mri_e25_00_04_mri_00021efc

# .rodata:0xF4F | 0x186F | size: 0x1
.obj gap_03_0000186F_rodata, global
.hidden gap_03_0000186F_rodata
	.byte 0x00
.endobj gap_03_0000186F_rodata

# .rodata:0xF50 | 0x1870 | size: 0x13
.obj str_stg2_mri_e25_00_05_mri_00021f10, local
	.string "stg2_mri_e25_00_05"
.endobj str_stg2_mri_e25_00_05_mri_00021f10

# .rodata:0xF63 | 0x1883 | size: 0x1
.obj gap_03_00001883_rodata, global
.hidden gap_03_00001883_rodata
	.byte 0x00
.endobj gap_03_00001883_rodata

# .rodata:0xF64 | 0x1884 | size: 0x13
.obj str_stg2_mri_e25_00_06_mri_00021f24, local
	.string "stg2_mri_e25_00_06"
.endobj str_stg2_mri_e25_00_06_mri_00021f24

# .rodata:0xF77 | 0x1897 | size: 0x1
.obj gap_03_00001897_rodata, global
.hidden gap_03_00001897_rodata
	.byte 0x00
.endobj gap_03_00001897_rodata

# .rodata:0xF78 | 0x1898 | size: 0x4
.obj str_D_4_mri_00021f38, local
	.string "D_4"
.endobj str_D_4_mri_00021f38

# .rodata:0xF7C | 0x189C | size: 0x14
.obj str_SFX_STG2_3RD1_MISS1_mri_00021f3c, local
	.string "SFX_STG2_3RD1_MISS1"
.endobj str_SFX_STG2_3RD1_MISS1_mri_00021f3c

# .rodata:0xF90 | 0x18B0 | size: 0x10
.obj str_stg2_mri_e25_00_mri_00021f50, local
	.string "stg2_mri_e25_00"
.endobj str_stg2_mri_e25_00_mri_00021f50

# .rodata:0xFA0 | 0x18C0 | size: 0x10
.obj str_stg2_mri_e25_01_mri_00021f60, local
	.string "stg2_mri_e25_01"
.endobj str_stg2_mri_e25_01_mri_00021f60

# .rodata:0xFB0 | 0x18D0 | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_mri_00021f70, local
	.string "SFX_VOICE_MARIO_NOD1_2"
.endobj str_SFX_VOICE_MARIO_NOD1_mri_00021f70

# .rodata:0xFC7 | 0x18E7 | size: 0x1
.obj gap_03_000018E7_rodata, global
.hidden gap_03_000018E7_rodata
	.byte 0x00
.endobj gap_03_000018E7_rodata

# .rodata:0xFC8 | 0x18E8 | size: 0x10
.obj str_stg2_mri_e25_02_mri_00021f88, local
	.string "stg2_mri_e25_02"
.endobj str_stg2_mri_e25_02_mri_00021f88

# .rodata:0xFD8 | 0x18F8 | size: 0x7
.obj str_item01_mri_00021f98, local
	.string "item01"
.endobj str_item01_mri_00021f98

# .rodata:0xFDF | 0x18FF | size: 0x1
.obj gap_03_000018FF_rodata, global
.hidden gap_03_000018FF_rodata
	.byte 0x00
.endobj gap_03_000018FF_rodata

# .rodata:0xFE0 | 0x1900 | size: 0x16
.obj str_SFX_STG2_PUNI_MOVE2__mri_00021fa0, local
	.string "SFX_STG2_PUNI_MOVE2_1"
.endobj str_SFX_STG2_PUNI_MOVE2__mri_00021fa0

# .rodata:0xFF6 | 0x1916 | size: 0x2
.obj gap_03_00001916_rodata, global
.hidden gap_03_00001916_rodata
	.2byte 0x0000
.endobj gap_03_00001916_rodata

# .rodata:0xFF8 | 0x1918 | size: 0xD
.obj str_kpa_stg3_005_mri_00021fb8, local
	.string "kpa_stg3_005"
.endobj str_kpa_stg3_005_mri_00021fb8

# .rodata:0x1005 | 0x1925 | size: 0x3
.obj gap_03_00001925_rodata, global
.hidden gap_03_00001925_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001925_rodata

# .rodata:0x1008 | 0x1928 | size: 0xD
.obj str_kpa_stg3_003_mri_00021fc8, local
	.string "kpa_stg3_003"
.endobj str_kpa_stg3_003_mri_00021fc8

# .rodata:0x1015 | 0x1935 | size: 0x3
.obj gap_03_00001935_rodata, global
.hidden gap_03_00001935_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001935_rodata

# .rodata:0x1018 | 0x1938 | size: 0xD
.obj str_kpa_stg3_004_mri_00021fd8, local
	.string "kpa_stg3_004"
.endobj str_kpa_stg3_004_mri_00021fd8

# .rodata:0x1025 | 0x1945 | size: 0x3
.obj gap_03_00001945_rodata, global
.hidden gap_03_00001945_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001945_rodata

# .rodata:0x1028 | 0x1948 | size: 0xF
.obj str_kpa_stg3_006_2_mri_00021fe8, local
	.string "kpa_stg3_006_2"
.endobj str_kpa_stg3_006_2_mri_00021fe8

# .rodata:0x1037 | 0x1957 | size: 0x1
.obj gap_03_00001957_rodata, global
.hidden gap_03_00001957_rodata
	.byte 0x00
.endobj gap_03_00001957_rodata

# .rodata:0x1038 | 0x1958 | size: 0xD
.obj str_item_ueki_03_mri_00021ff8, local
	.string "item_ueki_03"
.endobj str_item_ueki_03_mri_00021ff8

# .rodata:0x1045 | 0x1965 | size: 0x3
.obj gap_03_00001965_rodata, global
.hidden gap_03_00001965_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001965_rodata

# .rodata:0x1048 | 0x1968 | size: 0x9
.obj str_A_ueki01_mri_00022008, local
	.string "A_ueki01"
.endobj str_A_ueki01_mri_00022008

# .rodata:0x1051 | 0x1971 | size: 0x3
.obj gap_03_00001971_rodata, global
.hidden gap_03_00001971_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001971_rodata

# .rodata:0x1054 | 0x1974 | size: 0x9
.obj str_S_ueki01_mri_00022014, local
	.string "S_ueki01"
.endobj str_S_ueki01_mri_00022014

# .rodata:0x105D | 0x197D | size: 0x3
.obj gap_03_0000197D_rodata, global
.hidden gap_03_0000197D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000197D_rodata

# .rodata:0x1060 | 0x1980 | size: 0x9
.obj str_A_ueki02_mri_00022020, local
	.string "A_ueki02"
.endobj str_A_ueki02_mri_00022020

# .rodata:0x1069 | 0x1989 | size: 0x3
.obj gap_03_00001989_rodata, global
.hidden gap_03_00001989_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001989_rodata

# .rodata:0x106C | 0x198C | size: 0x9
.obj str_S_ueki02_mri_0002202c, local
	.string "S_ueki02"
.endobj str_S_ueki02_mri_0002202c

# .rodata:0x1075 | 0x1995 | size: 0x3
.obj gap_03_00001995_rodata, global
.hidden gap_03_00001995_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001995_rodata

# .rodata:0x1078 | 0x1998 | size: 0x9
.obj str_A_ueki03_mri_00022038, local
	.string "A_ueki03"
.endobj str_A_ueki03_mri_00022038

# .rodata:0x1081 | 0x19A1 | size: 0x3
.obj gap_03_000019A1_rodata, global
.hidden gap_03_000019A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000019A1_rodata

# .rodata:0x1084 | 0x19A4 | size: 0x9
.obj str_S_ueki03_mri_00022044, local
	.string "S_ueki03"
.endobj str_S_ueki03_mri_00022044

# .rodata:0x108D | 0x19AD | size: 0x3
.obj gap_03_000019AD_rodata, global
.hidden gap_03_000019AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000019AD_rodata

# .rodata:0x1090 | 0x19B0 | size: 0x9
.obj str_A_ueki08_mri_00022050, local
	.string "A_ueki08"
.endobj str_A_ueki08_mri_00022050

# .rodata:0x1099 | 0x19B9 | size: 0x3
.obj gap_03_000019B9_rodata, global
.hidden gap_03_000019B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000019B9_rodata

# .rodata:0x109C | 0x19BC | size: 0x9
.obj str_S_ueki08_mri_0002205c, local
	.string "S_ueki08"
.endobj str_S_ueki08_mri_0002205c

# .rodata:0x10A5 | 0x19C5 | size: 0x3
.obj gap_03_000019C5_rodata, global
.hidden gap_03_000019C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000019C5_rodata

# .rodata:0x10A8 | 0x19C8 | size: 0x5
.obj str_ババ_mri_00022068, local
	.4byte 0x836F836F
	.byte 0x00
.endobj str_ババ_mri_00022068

# .rodata:0x10AD | 0x19CD | size: 0x3
.obj gap_03_000019CD_rodata, global
.hidden gap_03_000019CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000019CD_rodata

# .rodata:0x10B0 | 0x19D0 | size: 0xD
.obj str_kpa_stg3_000_mri_00022070, local
	.string "kpa_stg3_000"
.endobj str_kpa_stg3_000_mri_00022070

# .rodata:0x10BD | 0x19DD | size: 0x3
.obj gap_03_000019DD_rodata, global
.hidden gap_03_000019DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000019DD_rodata

# .rodata:0x10C0 | 0x19E0 | size: 0x6
.obj str_mario_mri_00022080, local
	.string "mario"
.endobj str_mario_mri_00022080

# .rodata:0x10C6 | 0x19E6 | size: 0x2
.obj gap_03_000019E6_rodata, global
.hidden gap_03_000019E6_rodata
	.2byte 0x0000
.endobj gap_03_000019E6_rodata

# .rodata:0x10C8 | 0x19E8 | size: 0x8
.obj str_KPA_S_1_mri_00022088, local
	.string "KPA_S_1"
.endobj str_KPA_S_1_mri_00022088

# .rodata:0x10D0 | 0x19F0 | size: 0x8
.obj str_KPA_T_1_mri_00022090, local
	.string "KPA_T_1"
.endobj str_KPA_T_1_mri_00022090

# .rodata:0x10D8 | 0x19F8 | size: 0x10
.obj str_kpa_stg3_000_01_mri_00022098, local
	.string "kpa_stg3_000_01"
.endobj str_kpa_stg3_000_01_mri_00022098

# .rodata:0x10E8 | 0x1A08 | size: 0xF
.obj str_BGM_EVT_KUPPA1_mri_000220a8, local
	.string "BGM_EVT_KUPPA1"
.endobj str_BGM_EVT_KUPPA1_mri_000220a8

# .rodata:0x10F7 | 0x1A17 | size: 0x1
.obj gap_03_00001A17_rodata, global
.hidden gap_03_00001A17_rodata
	.byte 0x00
.endobj gap_03_00001A17_rodata

# .rodata:0x10F8 | 0x1A18 | size: 0x10
.obj str_kpa_stg3_000_02_mri_000220b8, local
	.string "kpa_stg3_000_02"
.endobj str_kpa_stg3_000_02_mri_000220b8

# .rodata:0x1108 | 0x1A28 | size: 0x10
.obj str_kpa_stg3_000_03_mri_000220c8, local
	.string "kpa_stg3_000_03"
.endobj str_kpa_stg3_000_03_mri_000220c8

# .rodata:0x1118 | 0x1A38 | size: 0xD
.obj str_kpa_stg3_001_mri_000220d8, local
	.string "kpa_stg3_001"
.endobj str_kpa_stg3_001_mri_000220d8

# .rodata:0x1125 | 0x1A45 | size: 0x3
.obj gap_03_00001A45_rodata, global
.hidden gap_03_00001A45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A45_rodata

# .rodata:0x1128 | 0x1A48 | size: 0xD
.obj str_kpa_stg3_002_mri_000220e8, local
	.string "kpa_stg3_002"
.endobj str_kpa_stg3_002_mri_000220e8

# .rodata:0x1135 | 0x1A55 | size: 0x3
.obj gap_03_00001A55_rodata, global
.hidden gap_03_00001A55_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A55_rodata

# .rodata:0x1138 | 0x1A58 | size: 0x1D
.obj str_SFX_VOICE_KOOPA_SURP_mri_000220f8, local
	.string "SFX_VOICE_KOOPA_SURPRISED1_1"
.endobj str_SFX_VOICE_KOOPA_SURP_mri_000220f8

# .rodata:0x1155 | 0x1A75 | size: 0x3
.obj gap_03_00001A75_rodata, global
.hidden gap_03_00001A75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A75_rodata

# .rodata:0x1158 | 0x1A78 | size: 0x8
.obj str_KPA_O_1_mri_00022118, local
	.string "KPA_O_1"
.endobj str_KPA_O_1_mri_00022118

# .rodata:0x1160 | 0x1A80 | size: 0xD
.obj str_kpa_stg3_008_mri_00022120, local
	.string "kpa_stg3_008"
.endobj str_kpa_stg3_008_mri_00022120

# .rodata:0x116D | 0x1A8D | size: 0x3
.obj gap_03_00001A8D_rodata, global
.hidden gap_03_00001A8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A8D_rodata

# .rodata:0x1170 | 0x1A90 | size: 0xD
.obj str_kpa_stg3_010_mri_00022130, local
	.string "kpa_stg3_010"
.endobj str_kpa_stg3_010_mri_00022130

# .rodata:0x117D | 0x1A9D | size: 0x3
.obj gap_03_00001A9D_rodata, global
.hidden gap_03_00001A9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A9D_rodata

# .rodata:0x1180 | 0x1AA0 | size: 0x5
.obj str_A_1B_mri_00022140, local
	.string "A_1B"
.endobj str_A_1B_mri_00022140

# .rodata:0x1185 | 0x1AA5 | size: 0x3
.obj gap_03_00001AA5_rodata, global
.hidden gap_03_00001AA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AA5_rodata

# .rodata:0x1188 | 0x1AA8 | size: 0x4
.obj str_T_4_mri_00022148, local
	.string "T_4"
.endobj str_T_4_mri_00022148

# .rodata:0x118C | 0x1AAC | size: 0xD
.obj str_kpa_stg3_011_mri_0002214c, local
	.string "kpa_stg3_011"
.endobj str_kpa_stg3_011_mri_0002214c

# .rodata:0x1199 | 0x1AB9 | size: 0x3
.obj gap_03_00001AB9_rodata, global
.hidden gap_03_00001AB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AB9_rodata

# .rodata:0x119C | 0x1ABC | size: 0x4
.obj str_P_1_mri_0002215c, local
	.string "P_1"
.endobj str_P_1_mri_0002215c

# .rodata:0x11A0 | 0x1AC0 | size: 0xD
.obj str_kpa_stg3_012_mri_00022160, local
	.string "kpa_stg3_012"
.endobj str_kpa_stg3_012_mri_00022160

# .rodata:0x11AD | 0x1ACD | size: 0x3
.obj gap_03_00001ACD_rodata, global
.hidden gap_03_00001ACD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001ACD_rodata

# .rodata:0x11B0 | 0x1AD0 | size: 0x4
.obj str_K_1_mri_00022170, local
	.string "K_1"
.endobj str_K_1_mri_00022170

# .rodata:0x11B4 | 0x1AD4 | size: 0x4
.obj str_T_7_mri_00022174, local
	.string "T_7"
.endobj str_T_7_mri_00022174

# .rodata:0x11B8 | 0x1AD8 | size: 0xD
.obj str_kpa_stg3_013_mri_00022178, local
	.string "kpa_stg3_013"
.endobj str_kpa_stg3_013_mri_00022178

# .rodata:0x11C5 | 0x1AE5 | size: 0x3
.obj gap_03_00001AE5_rodata, global
.hidden gap_03_00001AE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AE5_rodata

# .rodata:0x11C8 | 0x1AE8 | size: 0x19
.obj str_SFX_VOICE_KOOPA_THIN_mri_00022188, local
	.string "SFX_VOICE_KOOPA_THINK1_2"
.endobj str_SFX_VOICE_KOOPA_THIN_mri_00022188

# .rodata:0x11E1 | 0x1B01 | size: 0x3
.obj gap_03_00001B01_rodata, global
.hidden gap_03_00001B01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B01_rodata

# .rodata:0x11E4 | 0x1B04 | size: 0x8
.obj str_KPA_N_1_mri_000221a4, local
	.string "KPA_N_1"
.endobj str_KPA_N_1_mri_000221a4

# .rodata:0x11EC | 0x1B0C | size: 0xD
.obj str_kpa_stg3_014_mri_000221ac, local
	.string "kpa_stg3_014"
.endobj str_kpa_stg3_014_mri_000221ac

# .rodata:0x11F9 | 0x1B19 | size: 0x3
.obj gap_03_00001B19_rodata, global
.hidden gap_03_00001B19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B19_rodata

# .rodata:0x11FC | 0x1B1C | size: 0x8
.obj str_KPA_S_7_mri_000221bc, local
	.string "KPA_S_7"
.endobj str_KPA_S_7_mri_000221bc

# .rodata:0x1204 | 0x1B24 | size: 0xD
.obj str_kpa_stg3_016_mri_000221c4, local
	.string "kpa_stg3_016"
.endobj str_kpa_stg3_016_mri_000221c4

# .rodata:0x1211 | 0x1B31 | size: 0x3
.obj gap_03_00001B31_rodata, global
.hidden gap_03_00001B31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B31_rodata

# .rodata:0x1214 | 0x1B34 | size: 0xD
.obj str_kpa_stg3_017_mri_000221d4, local
	.string "kpa_stg3_017"
.endobj str_kpa_stg3_017_mri_000221d4

# .rodata:0x1221 | 0x1B41 | size: 0x3
.obj gap_03_00001B41_rodata, global
.hidden gap_03_00001B41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B41_rodata

# .rodata:0x1224 | 0x1B44 | size: 0xD
.obj str_kpa_stg3_018_mri_000221e4, local
	.string "kpa_stg3_018"
.endobj str_kpa_stg3_018_mri_000221e4

# .rodata:0x1231 | 0x1B51 | size: 0x3
.obj gap_03_00001B51_rodata, global
.hidden gap_03_00001B51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B51_rodata

# .rodata:0x1234 | 0x1B54 | size: 0x8
.obj str_KPA_S_4_mri_000221f4, local
	.string "KPA_S_4"
.endobj str_KPA_S_4_mri_000221f4

# .rodata:0x123C | 0x1B5C | size: 0x8
.obj str_KPA_T_3_mri_000221fc, local
	.string "KPA_T_3"
.endobj str_KPA_T_3_mri_000221fc

# .rodata:0x1244 | 0x1B64 | size: 0xF
.obj str_kpa_stg3_018_1_mri_00022204, local
	.string "kpa_stg3_018_1"
.endobj str_kpa_stg3_018_1_mri_00022204

# .rodata:0x1253 | 0x1B73 | size: 0x1
.obj gap_03_00001B73_rodata, global
.hidden gap_03_00001B73_rodata
	.byte 0x00
.endobj gap_03_00001B73_rodata

# .rodata:0x1254 | 0x1B74 | size: 0xD
.obj str_kpa_stg3_019_mri_00022214, local
	.string "kpa_stg3_019"
.endobj str_kpa_stg3_019_mri_00022214

# .rodata:0x1261 | 0x1B81 | size: 0x3
.obj gap_03_00001B81_rodata, global
.hidden gap_03_00001B81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B81_rodata

# .rodata:0x1264 | 0x1B84 | size: 0x16
.obj str_BGM_FF_ENV_SURPRISED_mri_00022224, local
	.string "BGM_FF_ENV_SURPRISED3"
.endobj str_BGM_FF_ENV_SURPRISED_mri_00022224

# .rodata:0x127A | 0x1B9A | size: 0x2
.obj gap_03_00001B9A_rodata, global
.hidden gap_03_00001B9A_rodata
	.2byte 0x0000
.endobj gap_03_00001B9A_rodata

# .rodata:0x127C | 0x1B9C | size: 0x1D
.obj str_SFX_VOICE_KOOPA_SURP_mri_0002223c, local
	.string "SFX_VOICE_KOOPA_SURPRISED2_1"
.endobj str_SFX_VOICE_KOOPA_SURP_mri_0002223c

# .rodata:0x1299 | 0x1BB9 | size: 0x3
.obj gap_03_00001BB9_rodata, global
.hidden gap_03_00001BB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BB9_rodata

# .rodata:0x129C | 0x1BBC | size: 0x8
.obj str_KPA_S_5_mri_0002225c, local
	.string "KPA_S_5"
.endobj str_KPA_S_5_mri_0002225c

# .rodata:0x12A4 | 0x1BC4 | size: 0x8
.obj str_KPA_T_5_mri_00022264, local
	.string "KPA_T_5"
.endobj str_KPA_T_5_mri_00022264

# .rodata:0x12AC | 0x1BCC | size: 0xD
.obj str_kpa_stg3_020_mri_0002226c, local
	.string "kpa_stg3_020"
.endobj str_kpa_stg3_020_mri_0002226c

# .rodata:0x12B9 | 0x1BD9 | size: 0x3
.obj gap_03_00001BD9_rodata, global
.hidden gap_03_00001BD9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BD9_rodata

# .rodata:0x12BC | 0x1BDC | size: 0xD
.obj str_kpa_stg3_021_mri_0002227c, local
	.string "kpa_stg3_021"
.endobj str_kpa_stg3_021_mri_0002227c

# .rodata:0x12C9 | 0x1BE9 | size: 0x3
.obj gap_03_00001BE9_rodata, global
.hidden gap_03_00001BE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BE9_rodata

# .rodata:0x12CC | 0x1BEC | size: 0xD
.obj str_kpa_stg3_022_mri_0002228c, local
	.string "kpa_stg3_022"
.endobj str_kpa_stg3_022_mri_0002228c

# .rodata:0x12D9 | 0x1BF9 | size: 0x3
.obj gap_03_00001BF9_rodata, global
.hidden gap_03_00001BF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BF9_rodata

# .rodata:0x12DC | 0x1BFC | size: 0xD
.obj str_kpa_stg3_023_mri_0002229c, local
	.string "kpa_stg3_023"
.endobj str_kpa_stg3_023_mri_0002229c

# .rodata:0x12E9 | 0x1C09 | size: 0x3
.obj gap_03_00001C09_rodata, global
.hidden gap_03_00001C09_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C09_rodata

# .rodata:0x12EC | 0x1C0C | size: 0x7
.obj str_tou_02_mri_000222ac, local
	.string "tou_02"
.endobj str_tou_02_mri_000222ac

# .rodata:0x12F3 | 0x1C13 | size: 0x1
.obj gap_03_00001C13_rodata, global
.hidden gap_03_00001C13_rodata
	.byte 0x00
.endobj gap_03_00001C13_rodata

# .rodata:0x12F4 | 0x1C14 | size: 0x8
.obj str_mizu_01_mri_000222b4, local
	.string "mizu_01"
.endobj str_mizu_01_mri_000222b4

# .rodata:0x12FC | 0x1C1C | size: 0x8
.obj str_mizu_02_mri_000222bc, local
	.string "mizu_02"
.endobj str_mizu_02_mri_000222bc

# .rodata:0x1304 | 0x1C24 | size: 0x7
.obj str_awa_01_mri_000222c4, local
	.string "awa_01"
.endobj str_awa_01_mri_000222c4

# .rodata:0x130B | 0x1C2B | size: 0x1
.obj gap_03_00001C2B_rodata, global
.hidden gap_03_00001C2B_rodata
	.byte 0x00
.endobj gap_03_00001C2B_rodata

# .rodata:0x130C | 0x1C2C | size: 0x7
.obj str_awa_02_mri_000222cc, local
	.string "awa_02"
.endobj str_awa_02_mri_000222cc

# .rodata:0x1313 | 0x1C33 | size: 0x1
.obj gap_03_00001C33_rodata, global
.hidden gap_03_00001C33_rodata
	.byte 0x00
.endobj gap_03_00001C33_rodata

# .rodata:0x1314 | 0x1C34 | size: 0x8
.obj str_kawa_01_mri_000222d4, local
	.string "kawa_01"
.endobj str_kawa_01_mri_000222d4

# .rodata:0x131C | 0x1C3C | size: 0x8
.obj str_kawa_02_mri_000222dc, local
	.string "kawa_02"
.endobj str_kawa_02_mri_000222dc

# .rodata:0x1324 | 0x1C44 | size: 0xD
.obj str_kawa_sibu_01_mri_000222e4, local
	.string "kawa_sibu_01"
.endobj str_kawa_sibu_01_mri_000222e4

# .rodata:0x1331 | 0x1C51 | size: 0x3
.obj gap_03_00001C51_rodata, global
.hidden gap_03_00001C51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C51_rodata

# .rodata:0x1334 | 0x1C54 | size: 0x10
.obj str_BGM_EVT_DANGER4_mri_000222f4, local
	.string "BGM_EVT_DANGER4"
.endobj str_BGM_EVT_DANGER4_mri_000222f4

# .rodata:0x1344 | 0x1C64 | size: 0xE
.obj str_ENV_STG2_MRI9_mri_00022304, local
	.string "ENV_STG2_MRI9"
.endobj str_ENV_STG2_MRI9_mri_00022304

# .rodata:0x1352 | 0x1C72 | size: 0x2
.obj gap_03_00001C72_rodata, global
.hidden gap_03_00001C72_rodata
	.2byte 0x0000
.endobj gap_03_00001C72_rodata

# .rodata:0x1354 | 0x1C74 | size: 0xA
.obj str_mobj_save_mri_00022314, local
	.string "mobj_save"
.endobj str_mobj_save_mri_00022314

# .rodata:0x135E | 0x1C7E | size: 0x2
.obj gap_03_00001C7E_rodata, global
.hidden gap_03_00001C7E_rodata
	.2byte 0x0000
.endobj gap_03_00001C7E_rodata

# .rodata:0x1360 | 0x1C80 | size: 0xD
.obj str_mobj_recover_mri_00022320, local
	.string "mobj_recover"
.endobj str_mobj_recover_mri_00022320

# .rodata:0x136D | 0x1C8D | size: 0x3
.obj gap_03_00001C8D_rodata, global
.hidden gap_03_00001C8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C8D_rodata

# .rodata:0x1370 | 0x1C90 | size: 0xB
.obj str_c_kamek_be_mri_00022330, local
	.string "c_kamek_be"
.endobj str_c_kamek_be_mri_00022330

# .rodata:0x137B | 0x1C9B | size: 0x1
.obj gap_03_00001C9B_rodata, global
.hidden gap_03_00001C9B_rodata
	.byte 0x00
.endobj gap_03_00001C9B_rodata

# .rodata:0x137C | 0x1C9C | size: 0x15
.obj str_カメックババ（地上）_mri_0002233c, local
	.4byte 0x834A8381
	.4byte 0x8362834E
	.4byte 0x836F836F
	.4byte 0x8169926E
	.4byte 0x8FE3816A
	.byte 0x00
.endobj str_カメックババ（地上）_mri_0002233c

# .rodata:0x1391 | 0x1CB1 | size: 0x3
.obj gap_03_00001CB1_rodata, global
.hidden gap_03_00001CB1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001CB1_rodata

# .rodata:0x1394 | 0x1CB4 | size: 0x7
.obj str_player_mri_00022354, local
	.string "player"
.endobj str_player_mri_00022354

# .rodata:0x139B | 0x1CBB | size: 0x5
.obj gap_03_00001CBB_rodata, global
.hidden gap_03_00001CBB_rodata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_03_00001CBB_rodata

# 0x00004978..0x0000FB10 | size: 0xB198
.data
.balign 8

# .data:0x0 | 0x4978 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4980 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4984 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4988 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x498C | size: 0x4
.obj gap_04_0000498C_data, global
.hidden gap_04_0000498C_data
	.4byte 0x00000000
.endobj gap_04_0000498C_data

# .data:0x18 | 0x4990 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4998 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x499C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x49A0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x49A8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x49AC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x49B0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x49B4 | size: 0x4
.obj gap_04_000049B4_data, global
.hidden gap_04_000049B4_data
	.4byte 0x00000000
.endobj gap_04_000049B4_data

# .data:0x40 | 0x49B8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x49C0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x49C4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x49C8 | size: 0x74
.obj guide_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000A9
	.4byte 0x000000AB
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_me_mri_00020fc8
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00010029
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF84066C4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00020fc8
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_mri_00020fc8
	.4byte 0x0000010E
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj guide_init

# .data:0xC4 | 0x4A3C | size: 0x50
.obj guide_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_002_mri_00020fcc
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_002_1_mri_00020fdc
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj guide_talk

# .data:0x114 | 0x4A8C | size: 0x78
.obj rival_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000005A
	.4byte 0x0000005D
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00020fc8
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x00010024
	.4byte 0x0000005E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00020fc8
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x00000026
	.4byte 0x0002002F
	.4byte 0x000000A9
	.4byte 0x000000AB
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_me_mri_00020fc8
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj rival_init

# .data:0x18C | 0x4B04 | size: 0x20
.obj rival_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_26_mri_00020ff0
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj rival_talk

# .data:0x1AC | 0x4B24 | size: 0x9C
.obj elder_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000005E
	.4byte 0x0000006C
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00020fc8
	.4byte 0xFFFFFFB2
	.4byte 0x00000000
	.4byte 0x00000026
	.4byte 0x0002002F
	.4byte 0x000000A9
	.4byte 0x000000AB
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_mri_00020fc8
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_me_mri_00020fc8
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00010029
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF84066C4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00020fc8
	.4byte 0xFFFFFFB2
	.4byte 0x00000000
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj elder_init

# .data:0x248 | 0x4BC0 | size: 0x330
.obj puni_return_data, local
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0000000A
	.4byte 0x000000C8
	.4byte 0x00000014
	.4byte 0x000000C8
	.4byte 0x0000001E
	.4byte 0x000000C8
	.4byte 0x00000028
	.4byte 0x000000C8
	.4byte 0x00000032
	.4byte 0x000000C8
	.4byte 0x0000003C
	.4byte 0x000000C8
	.4byte 0x00000046
	.4byte 0x000000C8
	.4byte 0x00000050
	.4byte 0x000000C8
	.4byte 0x0000005A
	.4byte 0x000000D2
	.4byte 0x0000005A
	.4byte 0x000000D2
	.4byte 0x00000050
	.4byte 0x000000D2
	.4byte 0x00000046
	.4byte 0x000000D2
	.4byte 0x0000003C
	.4byte 0x000000D2
	.4byte 0x00000032
	.4byte 0x000000D2
	.4byte 0x00000028
	.4byte 0x000000D2
	.4byte 0x0000001E
	.4byte 0x000000D2
	.4byte 0x00000014
	.4byte 0x000000D2
	.4byte 0x0000000A
	.4byte 0x000000D2
	.4byte 0x00000000
	.4byte 0x000000DC
	.4byte 0x00000000
	.4byte 0x000000DC
	.4byte 0x0000000A
	.4byte 0x000000DC
	.4byte 0x00000014
	.4byte 0x000000DC
	.4byte 0x0000001E
	.4byte 0x000000DC
	.4byte 0x00000028
	.4byte 0x000000DC
	.4byte 0x00000032
	.4byte 0x000000DC
	.4byte 0x0000003C
	.4byte 0x000000DC
	.4byte 0x00000046
	.4byte 0x000000DC
	.4byte 0x00000050
	.4byte 0x000000DC
	.4byte 0x0000005A
	.4byte 0x000000E6
	.4byte 0x0000005A
	.4byte 0x000000E6
	.4byte 0x00000050
	.4byte 0x000000E6
	.4byte 0x00000046
	.4byte 0x000000E6
	.4byte 0x0000003C
	.4byte 0x000000E6
	.4byte 0x00000032
	.4byte 0x000000E6
	.4byte 0x00000028
	.4byte 0x000000E6
	.4byte 0x0000001E
	.4byte 0x000000E6
	.4byte 0x00000014
	.4byte 0x000000E6
	.4byte 0x0000000A
	.4byte 0x000000E6
	.4byte 0x00000000
	.4byte 0x000000F0
	.4byte 0x00000000
	.4byte 0x000000F0
	.4byte 0x0000000A
	.4byte 0x000000F0
	.4byte 0x00000014
	.4byte 0x000000F0
	.4byte 0x0000001E
	.4byte 0x000000F0
	.4byte 0x00000028
	.4byte 0x000000F0
	.4byte 0x00000032
	.4byte 0x000000F0
	.4byte 0x0000003C
	.4byte 0x000000F0
	.4byte 0x00000046
	.4byte 0x000000F0
	.4byte 0x00000050
	.4byte 0x000000F0
	.4byte 0x0000005A
	.4byte 0x000000FA
	.4byte 0x0000005A
	.4byte 0x000000FA
	.4byte 0x00000050
	.4byte 0x000000FA
	.4byte 0x00000046
	.4byte 0x000000FA
	.4byte 0x0000003C
	.4byte 0x000000FA
	.4byte 0x00000032
	.4byte 0x000000FA
	.4byte 0x00000028
	.4byte 0x000000FA
	.4byte 0x0000001E
	.4byte 0x000000FA
	.4byte 0x00000014
	.4byte 0x000000FA
	.4byte 0x0000000A
	.4byte 0x000000FA
	.4byte 0x00000000
	.4byte 0x00000104
	.4byte 0x00000000
	.4byte 0x00000104
	.4byte 0x0000000A
	.4byte 0x00000104
	.4byte 0x00000014
	.4byte 0x00000104
	.4byte 0x0000001E
	.4byte 0x00000104
	.4byte 0x00000028
	.4byte 0x00000104
	.4byte 0x00000032
	.4byte 0x00000104
	.4byte 0x0000003C
	.4byte 0x00000104
	.4byte 0x00000046
	.4byte 0x00000104
	.4byte 0x00000050
	.4byte 0x00000104
	.4byte 0x0000005A
	.4byte 0x0000010E
	.4byte 0x0000005A
	.4byte 0x0000010E
	.4byte 0x00000050
	.4byte 0x0000010E
	.4byte 0x00000046
	.4byte 0x0000010E
	.4byte 0x0000003C
	.4byte 0x0000010E
	.4byte 0x00000032
	.4byte 0x0000010E
	.4byte 0x00000028
	.4byte 0x0000010E
	.4byte 0x0000001E
	.4byte 0x0000010E
	.4byte 0x00000014
	.4byte 0x0000010E
	.4byte 0x0000000A
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000118
	.4byte 0x00000000
	.4byte 0x00000118
	.4byte 0x0000000A
	.4byte 0x00000118
	.4byte 0x00000014
	.4byte 0x00000118
	.4byte 0x0000001E
	.4byte 0x00000118
	.4byte 0x00000028
	.4byte 0x00000118
	.4byte 0x00000032
	.4byte 0x00000118
	.4byte 0x0000003C
	.4byte 0x00000118
	.4byte 0x00000046
	.4byte 0x00000118
	.4byte 0x00000050
	.4byte 0x00000118
	.4byte 0x0000005A
	.4byte 0x00000122
	.4byte 0x0000005A
	.4byte 0x00000122
	.4byte 0x00000050
	.4byte 0x00000122
	.4byte 0x00000046
	.4byte 0x00000122
	.4byte 0x0000003C
	.4byte 0x00000122
	.4byte 0x00000032
	.4byte 0x00000122
	.4byte 0x00000028
	.4byte 0x00000122
	.4byte 0x0000001E
	.4byte 0x00000122
	.4byte 0x00000014
	.4byte 0x00000122
	.4byte 0x0000000A
	.4byte 0x00000122
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x0000000A
.endobj puni_return_data

# .data:0x578 | 0x4EF0 | size: 0x18C
.obj puni_return, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0001003E
	.4byte puni_return_data
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte evt_puni_get_lsw_index_18_text_19D54
	.4byte 0xF70F2E80
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_puni_get_flag_18_text_19BE4
	.4byte 0xFE363C8A
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_puni_get_trap_index_18_text_1A0A8
	.4byte 0xFE363C8A
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406694
	.4byte 0x00000001
	.4byte 0x00010071
	.4byte str_牢屋の前に待機しています_mri_00021000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00010071
	.4byte str_トラップにかかっています_mri_0002101c
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010071
	.4byte str_ここにいます＆仲間になっていません_mri_00021038
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0002001E
	.4byte 0xFE363C84
	.4byte 0x00000400
	.4byte 0x00010071
	.4byte str_同じエリアにいます_mri_0002105c
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x00010071
	.4byte str_はぐれから合流しました_mri_00021070
	.4byte 0x00020040
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x0007005B
	.4byte evt_puni_set_lsw_index_18_text_19F08
	.4byte 0xF70F2E80
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000064
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_return

# .data:0x704 | 0x507C | size: 0x5E0
.obj elder_talk_sub, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_22_mri_00021088
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_22_sel_mri_00021098
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_28_mri_000210ac
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte elder_talk_sub_punicheck
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_23_mri_000210bc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x0000004D
	.4byte 0x0000012F
	.4byte 0xFFFFFFB5
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_me_mri_00020fc8
	.4byte str_S_1_mri_000210cc
	.4byte str_T_2_mri_000210d0
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_mri_00020fc8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CHOUROU_CAL_mri_000210d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000055
	.4byte 0x0000015F
	.4byte 0xFFFFFFB5
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x0000004D
	.4byte 0x0000012F
	.4byte 0xFFFFFFB5
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000055
	.4byte 0x0000015F
	.4byte 0xFFFFFFB5
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x0000004D
	.4byte 0x0000012F
	.4byte 0xFFFFFFB5
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000055
	.4byte 0x0000015F
	.4byte 0xFFFFFFB5
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x0000004D
	.4byte 0x0000012F
	.4byte 0xFFFFFFB5
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_env_blur_on
	.4byte 0x00000001
	.4byte 0x00000258
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_24_mri_000210f0
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte puni_return
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_me_mri_00020fc8
	.4byte str_S_1_mri_000210cc
	.4byte str_T_1_mri_00021100
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_25_mri_00021104
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_26_mri_00021114
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_27_mri_00021124
	.4byte 0x00000031
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0002005B
	.4byte evt_puni_all_movestop_18_text_1A358
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x0000004D
	.4byte 0x0000012F
	.4byte 0xFFFFFFB5
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_29_mri_00021134
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x0002005B
	.4byte elder_talk_sub_fadeoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x000005DC
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x000000FF
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_30_mri_00021144
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00020032
	.4byte 0xFAA2B583
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SLEE_mri_00021154
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000008C
	.4byte 0x00020018
	.4byte 0xFAA2B583
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001005B
	.4byte evt_mario_sleep_on
	.4byte 0x0002005B
	.4byte evt_party_sleep_on
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000005DC
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x000000FF
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte elder_talk_sub_fadeoff
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_31_mri_0002116c
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00020032
	.4byte 0xFAA2B583
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_AWAK_mri_0002117c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_sleep_off
	.4byte 0x0002005B
	.4byte evt_party_sleep_off
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_mri_00021194
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_puni_all_movestop_18_text_1A358
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj elder_talk_sub

# .data:0xCE4 | 0x565C | size: 0x8
.obj irai_item_tbl, local
	.4byte 0x00000097
	.4byte 0xFFFFFFFF
.endobj irai_item_tbl

# .data:0xCEC | 0x5664 | size: 0x8
.obj iri_17_item_tbl, local
	.4byte 0x00000062
	.4byte 0xFFFFFFFF
.endobj iri_17_item_tbl

# .data:0xCF4 | 0x566C | size: 0x2C4
.obj elder_talk, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000097
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_10_01_mri_0002119c
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte irai_item_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_10_02_mri_000211a8
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x0002005B
	.4byte evt_sub_get_coin
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000097
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xF5DE070C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8407088
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_sys_request_finish_mri_000211b4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_10_00_mri_000211c8
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x00000011
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF840709E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_17_00_mri_000211d4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte iri_17_item_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000062
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_17_01_mri_000211e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_kairanban_mri_000211ec
	.4byte 0x00000062
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_kairanban_mri_000211ec
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_kairanban_mri_000211ec
	.4byte 0x00020032
	.4byte 0xF840709E
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF840709F
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_17_02_mri_000211f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_17_03_mri_00021204
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000005F
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF840668D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_28_mri_000210ac
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte elder_talk_sub
	.4byte 0x00000021
	.4byte 0x0002002F
	.4byte 0x00000076
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_001_mri_00021210
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_001_1_mri_00021220
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj elder_talk

# .data:0xFB8 | 0x5930 | size: 0x60
.obj puni_1_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000A9
	.4byte 0x000000AB
	.4byte 0x00010029
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF84066C4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00020fc8
	.4byte 0xFFFFFEE8
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_mri_00020fc8
	.4byte 0x0000010E
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_1_init

# .data:0x1018 | 0x5990 | size: 0xAC
.obj puni_1_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000162
	.4byte 0x00000162
	.4byte 0x00020018
	.4byte 0xF8406AA7
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_000_mri_00021234
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_000_1_mri_00021244
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00020032
	.4byte 0xF8406AB1
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_000_mri_00021234
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_000_1_1_mri_00021258
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_1_talk

# .data:0x10C4 | 0x5A3C | size: 0x60
.obj puni_2_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000A9
	.4byte 0x000000AB
	.4byte 0x00010029
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF84066C4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00020fc8
	.4byte 0x00000154
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_mri_00020fc8
	.4byte 0x0000010E
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_2_init

# .data:0x1124 | 0x5A9C | size: 0x50
.obj puni_2_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_017_mri_0002126c
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_017_1_mri_0002127c
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_2_talk

# .data:0x1174 | 0x5AEC | size: 0x24
.obj puni_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_mri_00020fc8
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_init

# .data:0x1198 | 0x5B10 | size: 0x24
.obj baba_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_mri_00020fc8
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj baba_init

# .data:0x11BC | 0x5B34 | size: 0x20
.obj baba_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_006_mri_00021290
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj baba_talk

# .data:0x11DC | 0x5B54 | size: 0x7C
.obj sister_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000A9
	.4byte 0x000000AB
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_me_mri_00020fc8
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00010029
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF84066C4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00020fc8
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sister_init

# .data:0x1258 | 0x5BD0 | size: 0xC0
.obj sister_jump, local
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_mri_00020fc8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_mri_00020fc8
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_000212a0
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_me_mri_00020fc8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x00020018
	.4byte 0xFAA2B58B
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sister_jump

# .data:0x1318 | 0x5C90 | size: 0x398
.obj sister_talk, local
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000001
	.4byte 0x0001000B
	.4byte 0xFAA2B58A
	.4byte 0x00020018
	.4byte 0xF840668B
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_015_mri_000212b4
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_003_mri_000212c4
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_016_1_mri_000212d4
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg2_mri_re_004_mri_000212e8
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg2_mri_re_005_mri_000212f8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_006_mri_00021308
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg2_mri_re_007_mri_00021318
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg2_mri_re_008_mri_00021328
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg2_mri_re_009_mri_00021338
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg2_mri_re_010_mri_00021348
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_011_mri_00021358
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_mri_00021194
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_mri_00021368
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_mri_00020fc8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_mri_00020fc8
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_000212a0
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_me_mri_00020fc8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_mri_00020fc8
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_000212a0
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_me_mri_00020fc8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_012_mri_00021370
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_014_mri_00021380
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_puniko_item_mri_00021390
	.4byte 0x000000A8
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_puniko_item_mri_00021390
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_015_mri_000212b4
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00020032
	.4byte 0xF840668B
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_013_mri_0002139c
	.4byte 0x00000000
	.4byte str_me_mri_00020fc8
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg2_mri_re_016_mri_000213ac
	.4byte 0x0001005C
	.4byte sister_jump
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sister_talk

# .data:0x16B0 | 0x6028 | size: 0x33C
.obj npcEnt, local
	.4byte str_ガイド_mri_000213bc
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte guide_init
	.4byte 0x00000000
	.4byte guide_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ライバル_mri_000213c4
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte rival_init
	.4byte 0x00000000
	.4byte rival_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte elder_init
	.4byte 0x00000000
	.4byte elder_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_プニ族１_mri_000213dc
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte puni_1_init
	.4byte 0x00000000
	.4byte puni_1_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_プニ族２_mri_000213e8
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte puni_2_init
	.4byte 0x00000000
	.4byte puni_2_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_プニ族_mri_000213f4
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte puni_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_プニ族B_mri_000213fc
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte puni_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガイド妹_mri_00021404
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte sister_init
	.4byte 0x00000000
	.4byte sister_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npcEnt

# .data:0x19EC | 0x6364 | size: 0x28
.obj bero_00_doa_close, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_doa_l_a_mri_00021410
	.4byte 0x0001005C
	.4byte evt_mri_door_close_18_data_3B4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_00_doa_close

# .data:0x1A14 | 0x638C | size: 0x28
.obj bero_00_doa_open, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_doa_l_a_mri_00021410
	.4byte 0x0001005C
	.4byte evt_mri_door_open_18_data_1DC
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_00_doa_open

# .data:0x1A3C | 0x63B4 | size: 0x28
.obj bero_01_doa_close, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_doa_r_a_mri_0002141c
	.4byte 0x0001005C
	.4byte evt_mri_door_close_18_data_3B4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_01_doa_close

# .data:0x1A64 | 0x63DC | size: 0x28
.obj bero_01_doa_open, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_doa_r_a_mri_0002141c
	.4byte 0x0001005C
	.4byte evt_mri_door_open_18_data_1DC
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_01_doa_open

# .data:0x1A8C | 0x6404 | size: 0x14
.obj out_mri_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj out_mri_event

# .data:0x1AA0 | 0x6418 | size: 0xF0
.obj bero_entry_data, local
	.4byte str_w_bero_mri_00021428
	.4byte 0x00010000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte out_mri_event
	.4byte str_mri_00_mri_00021430
	.4byte str_ne_bero_mri_00021438
	.4byte 0x00040004
	.4byte bero_00_doa_close
	.4byte bero_00_doa_open
	.4byte str_e_bero_mri_00021440
	.4byte 0x00010000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_mri_05_mri_00021448
	.4byte str_w_bero_mri_00021428
	.4byte 0x00040004
	.4byte bero_01_doa_close
	.4byte bero_01_doa_open
	.4byte str_dokan_mri_00021450
	.4byte 0x00020000
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte str_mri_02_mri_00021458
	.4byte str_dokan1_mri_00021460
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

# .data:0x1B90 | 0x6508 | size: 0xB78
.obj bigtree_firstbattle, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFFFFFF88
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_party_use_check
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFE4
	.4byte 0x00000098
	.4byte 0x00000224
	.4byte 0xFFFFFFE4
	.4byte 0x00000039
	.4byte 0x00000007
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_000213bc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_mario_clear_party
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x40000620
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFEC
	.4byte 0x00000049
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000001C2
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e11_00_mri_00021468
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000049
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e11_01_mri_00021478
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000015E
	.4byte 0x00000073
	.4byte 0x00000190
	.4byte 0x0000015E
	.4byte 0x0000002D
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0001000A
	.4byte 0x00000244
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_lights_r_mri_00021488
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_DOOR_UNLOCK_mri_00021494
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_DOOR_LAMP_mri_000214ac
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_doalight01_mri_000214c0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000244
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_doa_r_a_mri_0002141c
	.4byte 0x0001005C
	.4byte evt_mri_door_open_pure_18_data_60
	.4byte 0x0001000A
	.4byte 0x0000062C
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_000213bc
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_doa_r_a_mri_0002141c
	.4byte 0x0001005C
	.4byte evt_mri_door_close_pure_18_data_214
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_第三勢力部下Ａ_mri_000214cc
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte str_第三勢力部下Ｂ_mri_000214dc
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x40000620
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x000001BD
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x00000133
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C8B
	.4byte 0x40000620
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8B
	.4byte 0x000001BD
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8B
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8B
	.4byte 0x00000151
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER2_mri_000214ec
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_000214fc
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_000214fc
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x000000C8
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24E3A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8B
	.4byte 0x000000C8
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24E3A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x00000082
	.4byte 0x000001C2
	.4byte 0xFFFFFFEC
	.4byte 0x00000032
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x000000AA
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x00000028
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24E3A80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8B
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8B
	.4byte 0x00000046
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24E3A80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガイド_mri_000213bc
	.4byte 0xFFFFFFC4
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_mri_00021500
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_mri_000214fc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte zero_mri_000214fc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_000214fc
	.4byte str_ガイド_mri_000213bc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e11_02_mri_00021518
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_000214fc
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000034
	.4byte 0x00000055
	.4byte 0x0000012F
	.4byte 0x00000032
	.4byte 0x00000023
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e11_03_mri_00021528
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e11_04_mri_00021538
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e11_05_mri_00021548
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e11_06_mri_00021558
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e11_07_mri_00021568
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e11_08_mri_00021578
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x00000087
	.4byte 0x000001F4
	.4byte 0xFFFFFFEC
	.4byte 0x00000032
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD8
	.4byte 0x00000087
	.4byte 0x000001F4
	.4byte 0xFFFFFFD8
	.4byte 0x00000032
	.4byte 0x00000007
	.4byte 0x000002BC
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFE4
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFF7
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0002005B
	.4byte evt_npc_release_filednpc
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte 0xFE363C8A
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000059
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_第三勢力部下Ａ_mri_000214cc
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte str_第三勢力部下Ｂ_mri_000214dc
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_000213bc
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイド_mri_000213bc
	.4byte 0x40000620
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x40000620
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8B
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C8B
	.4byte 0x40000620
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_doalight01_mri_000214c0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x0000007D
	.4byte 0x000001C2
	.4byte 0xFFFFFFEC
	.4byte 0x0000002D
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001005C
	.4byte meet_rival
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bigtree_firstbattle

# .data:0x2708 | 0x7080 | size: 0x231C
.obj meet_rival, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0xFE363C8F
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00800000
	.4byte 0x00020035
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_第三勢力部下Ａ_mri_000214cc
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte str_第三勢力部下Ｂ_mri_000214dc
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_000213bc
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイド_mri_000213bc
	.4byte 0x40000620
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x40000620
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8B
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C8B
	.4byte 0x40000620
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_doalight01_mri_000214c0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x0000007D
	.4byte 0x000001C2
	.4byte 0xFFFFFFEC
	.4byte 0x0000002D
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e11_09_mri_00021588
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8B
	.4byte 0x00000015
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e11_10_mri_00021598
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_doa_r_a_mri_0002141c
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000015E
	.4byte 0x00000073
	.4byte 0x00000190
	.4byte 0x0000015E
	.4byte 0x0000002D
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_doa_r_a_mri_0002141c
	.4byte 0x0001005E
	.4byte evt_mri_door_close_pure_18_data_214
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_lights_r_mri_00021488
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_DOOR_UNLOCK_mri_00021494
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_DOOR_LAMP_mri_000214ac
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_doalight02_mri_000215a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_000215b4
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x00000133
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24E3A80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x000001BD
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24E3A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8B
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8B
	.4byte 0x00000151
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24E3A80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8B
	.4byte 0x000001BD
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24E3A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_ガイド_mri_000213bc
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte str_ライバル_mri_000213c4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x0000008D
	.4byte 0x000001F4
	.4byte 0xFFFFFFEC
	.4byte 0x00000037
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFC4
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_00_mri_000215c4
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000101
	.4byte str_BGM_EVT_STG2_PUNI1_mri_000215d4
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000005
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000005
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xFFFFFFBE
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000005
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFBE
	.4byte 0xF24CD280
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000005
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_000214fc
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000005
	.4byte 0x0000000E
	.4byte 0xFFFFFFBE
	.4byte 0xF24CD280
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000096
	.4byte 0x0000005A
	.4byte 0x00000113
	.4byte 0x00000028
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x00000018
	.4byte 0xFFFFFFDA
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_01_mri_000215e8
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000005
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000005
	.4byte 0xFFFFFFF1
	.4byte 0x00000014
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x00000096
	.4byte 0x00000226
	.4byte 0xFFFFFFEC
	.4byte 0x00000037
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFF6
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFF2
	.4byte 0x00000038
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte evt_puni_korokoro_18_text_192A0
	.4byte 0x00000005
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000005
	.4byte 0xFFFFFFD8
	.4byte 0x00000014
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_02_mri_000215f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000006
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0xFFFFFFBE
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000006
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000006
	.4byte 0x0000001E
	.4byte 0xFFFFFFBE
	.4byte 0xF24D4A80
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_03_mri_00021608
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_000214fc
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_04_mri_00021618
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000007
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000007
	.4byte 0x00000037
	.4byte 0x0000001E
	.4byte 0xFFFFFFBD
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_HIDE1_mri_00021628
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000007
	.4byte 0x0000005A
	.4byte 0xFFFFFFBD
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001C2
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000008
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000008
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000008
	.4byte 0x0000002E
	.4byte 0x00000026
	.4byte 0xFFFFFFC1
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000008
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_HIDE1_mri_00021628
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000008
	.4byte 0x00000024
	.4byte 0xFFFFFFC1
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000009
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000009
	.4byte 0xFFFFFFE6
	.4byte 0x00000024
	.4byte 0xFFFFFF95
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_HIDE1_mri_00021628
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000009
	.4byte 0x00000004
	.4byte 0xFFFFFF95
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000A
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x0000000A
	.4byte 0xFFFFFFED
	.4byte 0x0000000A
	.4byte 0xFFFFFFAD
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_HIDE1_mri_00021628
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000A
	.4byte 0xFFFFFFCF
	.4byte 0xFFFFFFAD
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000B
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x0000000B
	.4byte 0xFFFFFF91
	.4byte 0x0000002F
	.4byte 0xFFFFFFB2
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_HIDE1_mri_00021628
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000B
	.4byte 0xFFFFFFAF
	.4byte 0xFFFFFFB2
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000C
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000C
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x0000000C
	.4byte 0xFFFFFF8D
	.4byte 0x0000003C
	.4byte 0xFFFFFFAF
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x0000000C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_HIDE1_mri_00021628
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000C
	.4byte 0xFFFFFF83
	.4byte 0xFFFFFFAF
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000D
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x0000000D
	.4byte 0xFFFFFF8B
	.4byte 0x0000001A
	.4byte 0xFFFFFFBE
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x0000000D
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_HIDE1_mri_00021628
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000D
	.4byte 0xFFFFFF6D
	.4byte 0xFFFFFFBE
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_05_mri_0002163c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x0000000C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_10_mri_0002164c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_09_mri_0002165c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_07_mri_0002166c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_08_mri_0002167c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x0000000D
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_11_mri_0002168c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000008
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_06_mri_0002169c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_000212a0
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_000212a0
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_12_mri_000216ac
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000015E
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000006
	.4byte 0x0000003C
	.4byte 0xFFFFFFBE
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000007
	.4byte 0x00000037
	.4byte 0xFFFFFFBD
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001C2
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000008
	.4byte 0x00000037
	.4byte 0xFFFFFFC1
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000009
	.4byte 0xFFFFFFE6
	.4byte 0xFFFFFF95
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000A
	.4byte 0xFFFFFFED
	.4byte 0xFFFFFFAD
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000B
	.4byte 0xFFFFFF91
	.4byte 0xFFFFFFB2
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000C
	.4byte 0xFFFFFF8D
	.4byte 0xFFFFFFAF
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000D
	.4byte 0xFFFFFF8B
	.4byte 0xFFFFFFBE
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000006
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000006
	.4byte 0xFFFFFFC7
	.4byte 0x00000000
	.4byte 0xFFFFFFBC
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000006
	.4byte 0xFFFFFFD8
	.4byte 0x0000005D
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000006
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000007
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000007
	.4byte 0xFFFFFFC7
	.4byte 0x00000000
	.4byte 0xFFFFFFBC
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000007
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000007
	.4byte 0x0000001D
	.4byte 0x0000000A
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000007
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000008
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000008
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000008
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0xFFFFFFBF
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000008
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000008
	.4byte 0x00000032
	.4byte 0x00000012
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000008
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000009
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000009
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xFFFFFFBF
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000009
	.4byte 0x00000034
	.4byte 0x00000042
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000009
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000A
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x0000000A
	.4byte 0xFFFFFFC7
	.4byte 0x00000000
	.4byte 0xFFFFFFBC
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x0000000A
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000A
	.4byte 0xFFFFFFC9
	.4byte 0x00000037
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000A
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000002EE
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000B
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0xFFFFFFBF
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x0000000B
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000B
	.4byte 0x00000026
	.4byte 0x0000002E
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000B
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000C
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000C
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x0000000C
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xFFFFFFBF
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x0000000C
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000C
	.4byte 0x00000018
	.4byte 0x0000005C
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000C
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000D
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x0000000D
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xFFFFFFBF
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x0000000D
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000D
	.4byte 0x00000047
	.4byte 0x00000027
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000D
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_13_mri_000216bc
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_13_01_mri_000216cc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8B
	.4byte 0x0000002F
	.4byte 0x00000000
	.4byte 0xFFFFFFAE
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000014
	.4byte 0x0000005A
	.4byte 0x0000012F
	.4byte 0x00000014
	.4byte 0x00000028
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8B
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C8B
	.4byte 0x40000620
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8B
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8B
	.4byte 0x00000014
	.4byte 0xFFFFFFEB
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_14_mri_000216e0
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000003
	.4byte 0x00000047
	.4byte 0x000000E2
	.4byte 0x00000003
	.4byte 0x00000031
	.4byte 0x00000068
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_15_mri_000216f0
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_16_mri_00021700
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00000400
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000400
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8B
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFF1
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFE4
	.4byte 0x00000098
	.4byte 0x00000224
	.4byte 0xFFFFFFE4
	.4byte 0x00000039
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_17_mri_00021710
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x0000000F
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8B
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_17_02_mri_00021720
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000135
	.4byte 0x00000000
	.4byte 0x0000001C
	.4byte 0x00000009
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_18_mri_00021734
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_000212a0
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x00000050
	.4byte 0x00000135
	.4byte 0xFFFFFFEC
	.4byte 0x0000001C
	.4byte 0x00000009
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8B
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFDD
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFF6
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFB
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_19_mri_00021744
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_20_mri_00021754
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_21_mri_00021764
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_000212a0
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_000212a0
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_22_mri_00021774
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_23_mri_00021784
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_24_mri_00021794
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_24_00_mri_000217a4
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFDD
	.4byte 0x0000005F
	.4byte 0x00000160
	.4byte 0xFFFFFFDD
	.4byte 0x00000023
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8B
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_24_01_mri_000217b8
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_25_mri_000217cc
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI1_mri_000217dc
	.4byte 0x00020032
	.4byte 0xF84066BC
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x40000020
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000004
	.4byte 0x0000000E
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000005
	.4byte 0x0000000E
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000006
	.4byte 0x0000000E
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000007
	.4byte 0x0000000E
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000008
	.4byte 0x0000000E
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000009
	.4byte 0x0000000E
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x0000000A
	.4byte 0x0000000E
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x0000000B
	.4byte 0x0000000E
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x0000000C
	.4byte 0x0000000E
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000005A
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000005
	.4byte 0xFFFFFFC7
	.4byte 0xFFFFFFBC
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000006
	.4byte 0xFFFFFFC7
	.4byte 0xFFFFFFBC
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000007
	.4byte 0x00000039
	.4byte 0xFFFFFFBC
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000008
	.4byte 0x0000000C
	.4byte 0xFFFFFFBF
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000009
	.4byte 0x0000001E
	.4byte 0xFFFFFFBF
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000A
	.4byte 0xFFFFFFC7
	.4byte 0xFFFFFFBC
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0xFFFFFFBF
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000C
	.4byte 0x0000001E
	.4byte 0xFFFFFFBF
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x0000000D
	.4byte 0x0000001E
	.4byte 0xFFFFFFBF
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj meet_rival

# .data:0x4A24 | 0x939C | size: 0x11C4
.obj rival_nakama, local
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000005
	.4byte 0x0000000E
	.4byte 0xFFFFFFA7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00800000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000005
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000006
	.4byte 0x0000000E
	.4byte 0xFFFFFFC1
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00800000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000006
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000007
	.4byte 0x0000000E
	.4byte 0xFFFFFF8C
	.4byte 0x00000000
	.4byte 0x00000036
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00800000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000007
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000008
	.4byte 0x0000000E
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0x00000056
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00800000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000008
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000009
	.4byte 0x0000000E
	.4byte 0xFFFFFF97
	.4byte 0x00000000
	.4byte 0x00000054
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x00800000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000009
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x0000000A
	.4byte 0x0000000E
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00800000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000A
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x0000000B
	.4byte 0x0000000E
	.4byte 0xFFFFFF7A
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00800000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000B
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x0000000C
	.4byte 0x0000000E
	.4byte 0xFFFFFF69
	.4byte 0x00000000
	.4byte 0x00000048
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x00800000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000C
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0xFFFFFF78
	.4byte 0x00000000
	.4byte 0xFFFFFFED
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x00800000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x0000000D
	.4byte 0x0000005A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte mri_guide_goryu_18_data_E6C
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_000213bc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイド_mri_000213bc
	.4byte 0x40000620
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_000214fc
	.4byte str_ライバル_mri_000213c4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFFB
	.4byte 0x0000005F
	.4byte 0x00000160
	.4byte 0xFFFFFFFB
	.4byte 0x00000023
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0000000A
	.4byte 0x00000026
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_00_mri_000217ec
	.4byte 0x00000000
	.4byte str_ライバル_mri_000213c4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_01_mri_000217fc
	.4byte 0x00000000
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ライバル_mri_000213c4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ライバル_mri_000213c4
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_000212a0
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ライバル_mri_000213c4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ライバル_mri_000213c4
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_000212a0
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ライバル_mri_000213c4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_02_mri_0002180c
	.4byte 0x00000000
	.4byte str_ライバル_mri_000213c4
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD3
	.4byte 0x0000005F
	.4byte 0x00000160
	.4byte 0xFFFFFFD3
	.4byte 0x00000023
	.4byte 0x00000007
	.4byte 0x000000C8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xF249C680
	.4byte 0xF24BEF4C
	.4byte 0xF24FD280
	.4byte 0xF249C680
	.4byte 0xF24B0680
	.4byte 0xF24A9680
	.4byte 0x000003E8
	.4byte 0x00000009
	.4byte 0x0001000A
	.4byte 0x00000384
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD3
	.4byte 0x0000005F
	.4byte 0x00000160
	.4byte 0xFFFFFFD3
	.4byte 0x00000023
	.4byte 0x00000007
	.4byte 0x000000C8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG2_PUNI1_mri_000215d4
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI1_mri_000217dc
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CHOUROU_BIG_mri_0002181c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000002
	.4byte 0xF24A7E80
	.4byte 0xF24A8680
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ライバル_mri_000213c4
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_03_mri_00021834
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0xF24A8680
	.4byte 0xF24A7E80
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_03_01_mri_00021844
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_04_mri_00021858
	.4byte 0x00000000
	.4byte str_ライバル_mri_000213c4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_05_mri_00021868
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000028
	.4byte 0x0000005F
	.4byte 0x00000160
	.4byte 0x00000028
	.4byte 0x00000023
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_06_mri_00021878
	.4byte 0x00000000
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD3
	.4byte 0x0000005F
	.4byte 0x00000160
	.4byte 0xFFFFFFD3
	.4byte 0x00000023
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_07_mri_00021888
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_08_mri_00021898
	.4byte 0x00000000
	.4byte str_ライバル_mri_000213c4
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_puni_jump_position_18_text_19804
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0000006D
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD9
	.4byte 0x00000098
	.4byte 0x00000224
	.4byte 0xFFFFFFD9
	.4byte 0x00000039
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_09_mri_000218a8
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003C
	.4byte 0x00000073
	.4byte 0x00000190
	.4byte 0x0000003C
	.4byte 0x0000002D
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00800000
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_FF_GET_KEYITEM1_mri_000218b8
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_GET_PARTY1_mri_000218c8
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
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_11_mri_000218dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_puni_all_movestop_18_text_1A358
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ライバル_mri_000213c4
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_12_mri_000218ec
	.4byte 0x00000000
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFCE
	.4byte 0x00000073
	.4byte 0x00000190
	.4byte 0xFFFFFFCE
	.4byte 0x0000002D
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガイド_mri_000213bc
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFEC
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFEC
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガイド_mri_000213bc
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0000005A
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ライバル_mri_000213c4
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFEC
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFEC
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ライバル_mri_000213c4
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ライバル_mri_000213c4
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_party_flg_onoff
	.4byte 0x00000000
	.4byte 0x01000000
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x00000025
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_flg_onoff
	.4byte 0x00000000
	.4byte 0x01000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000019
	.4byte 0x00000025
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_mri_e15_13_mri_000218fc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000045
	.4byte 0x000000FD
	.4byte 0xFFFFFFB5
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_14_mri_0002190c
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ライバル_mri_000213c4
	.4byte 0x40000020
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFE7
	.4byte 0x00000073
	.4byte 0x00000190
	.4byte 0xFFFFFFE7
	.4byte 0x0000002D
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_15_mri_0002191c
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_mri_0002192c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_mri_00021194
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_mri_00021368
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_000214fc
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000045
	.4byte 0x000000FD
	.4byte 0xFFFFFFB5
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_16_mri_00021944
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ライバル_mri_000213c4
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CHOUROU_PUN_mri_00021954
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000005
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFE
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_mri_00021970
	.4byte 0x00000040
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_mri_00021970
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000008
	.4byte 0x0007005B
	.4byte evt_item_move_3d_position
	.4byte str_item00_mri_00021970
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD8
	.4byte 0x00000073
	.4byte 0x00000190
	.4byte 0xFFFFFFD8
	.4byte 0x0000002D
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0000000A
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFD0
	.4byte 0x00000025
	.4byte 0xF24C5A80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_16_01_mri_00021978
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_HAND_mri_0002198c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_C_3_mri_000219a8
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item00_mri_00021970
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000019
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガイド_mri_000213bc
	.4byte 0xFFFFFFED
	.4byte 0x00000038
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_18_mri_000219b0
	.4byte 0x00000000
	.4byte str_ガイド_mri_000213bc
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_puni_jump_position_18_text_19804
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0000006D
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_puni_all_movestop_18_text_1A358
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_000215b4
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI3_mri_000219c0
	.4byte 0x00020032
	.4byte 0xF84066BF
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE040B
	.4byte 0x00000009
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ライバル_mri_000213c4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ライバル_mri_000213c4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガイド_mri_000213bc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_000213bc
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000005F
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte elder_kaisetsu
	.4byte 0x00000002
	.4byte 0x00000001
.endobj rival_nakama

# .data:0x5BE8 | 0xA560 | size: 0x338
.obj elder_kaisetsu, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_19_mri_000219d0
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_mario_get_mov_spd
	.4byte 0xFE363C8A
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xFE363C8A
	.4byte 0x0002003C
	.4byte 0xFE363C8B
	.4byte 0xF24A7BB3
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C8B
	.4byte 0x0002001C
	.4byte 0xFE363C82
	.4byte 0xFFFFFFF1
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFF6
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C82
	.4byte 0x0000006E
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000069
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_LAND_mri_000219e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A8A
	.4byte 0x000001F4
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MARIO_FALL_CRUSH_mri_00021a00
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_D_8_mri_00021a18
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_U_3_mri_00021a20
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFE7
	.4byte 0x00000098
	.4byte 0x00000224
	.4byte 0xFFFFFFE7
	.4byte 0x00000039
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0xFFFFFFF1
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_20_mri_00021a28
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x0000004D
	.4byte 0x0000012F
	.4byte 0xFFFFFFB5
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e15_21_mri_00021a38
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF840668D
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj elder_kaisetsu

# .data:0x5F20 | 0xA898 | size: 0x1DC
.obj puni_taiki, local
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000005
	.4byte 0x0000000E
	.4byte 0xFFFFFFC9
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00900000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000006
	.4byte 0x0000000E
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0x0000005D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00900000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000007
	.4byte 0x0000000E
	.4byte 0x00000013
	.4byte 0x00000000
	.4byte 0x00000034
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00900000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000008
	.4byte 0x0000000E
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000012
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00900000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000009
	.4byte 0x0000000E
	.4byte 0x00000034
	.4byte 0x00000000
	.4byte 0x00000042
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x00900000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x0000000A
	.4byte 0x0000000E
	.4byte 0xFFFFFFDD
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00900000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x0000000B
	.4byte 0x0000000E
	.4byte 0x00000026
	.4byte 0x00000000
	.4byte 0x0000002E
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00900000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x0000000C
	.4byte 0x0000000E
	.4byte 0x00000018
	.4byte 0x00000000
	.4byte 0x0000005C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x00900000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x00000047
	.4byte 0x00000000
	.4byte 0x00000027
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x00900000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_taiki

# .data:0x60FC | 0xAA74 | size: 0x198
.obj puni_position, local
	.4byte 0x0125FFF7
	.4byte 0x016A005A
	.4byte 0x017EFFF6
	.4byte 0x012F0015
	.4byte 0x013D0032
	.4byte 0x0170FFFD
	.4byte 0x0140FFF4
	.4byte 0x016B0031
	.4byte 0x017EFFF6
	.4byte 0x01120048
	.4byte 0x01190073
	.4byte 0x01150033
	.4byte 0x01240051
	.4byte 0x016F000E
	.4byte 0x0151FFE6
	.4byte 0x013DFFEF
	.4byte 0x0123FFF4
	.4byte 0x013C006A
	.4byte 0x0130002B
	.4byte 0x0155FFEC
	.4byte 0x01500066
	.4byte 0x01490025
	.4byte 0x0153FFD7
	.4byte 0x015B000D
	.4byte 0x014BFFDF
	.4byte 0x012FFFDD
	.4byte 0x01510014
	.4byte 0x011F0000
	.4byte 0x01350059
	.4byte 0x01600028
	.4byte 0x01290004
	.4byte 0x018B0005
	.4byte 0x01480051
	.4byte 0x0152004A
	.4byte 0x0185002C
	.4byte 0x0110FFF4
	.4byte 0x01420058
	.4byte 0x01950048
	.4byte 0x01760036
	.4byte 0x0169001D
	.4byte 0x01660044
	.4byte 0x015D0016
	.4byte 0x00FD0021
	.4byte 0x01140000
	.4byte 0x0117005A
	.4byte 0x01750020
	.4byte 0x0141FFE0
	.4byte 0x0140007E
	.4byte 0x01390044
	.4byte 0x014DFFFD
	.4byte 0x012CFFD7
	.4byte 0x01370026
	.4byte 0x0130000C
	.4byte 0x01180027
	.4byte 0x01570002
	.4byte 0x01460010
	.4byte 0x0135FFEB
	.4byte 0x01350007
	.4byte 0x0168006E
	.4byte 0x010F0015
	.4byte 0x017A000A
	.4byte 0x01620000
	.4byte 0x014F0001
	.4byte 0x012FFFE7
	.4byte 0x0127002A
	.4byte 0x01550078
	.4byte 0x0138001E
	.4byte 0x0182001A
	.4byte 0x011A0046
	.4byte 0x00F80034
	.4byte 0x01090036
	.4byte 0x0146FFF8
	.4byte 0x00FC0046
	.4byte 0x017C004F
	.4byte 0x010A0022
	.4byte 0x013EFFD6
	.4byte 0x015C0055
	.4byte 0x0138FFF9
	.4byte 0x01200022
	.4byte 0x01270065
	.4byte 0x0156FFEE
	.4byte 0x01250039
	.4byte 0x011D0013
	.4byte 0x0193001B
	.4byte 0x0146003C
	.4byte 0x013EFFDB
	.4byte 0x016AFFEB
	.4byte 0x01960032
	.4byte 0x0133004B
	.4byte 0x0173005B
	.4byte 0x0154005F
	.4byte 0x010B0068
	.4byte 0x01720046
	.4byte 0x01510028
	.4byte 0x0184003F
	.4byte 0x012D0079
	.4byte 0x01260017
	.4byte 0x01030057
	.4byte 0x0161FFF2
	.4byte 0x015A003B
	.4byte 0x010A000D
	.4byte 0x013D0003
.endobj puni_position

# .data:0x6294 | 0xAC0C | size: 0x35C
.obj boss_battle_init, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte str_c_kanbu_ibt_mri_00021ad4
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x00080000
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ボスロボット_mri_00021a4c
	.4byte str_c_mb_robo_1a_mri_00021ae0
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ボスロボット_mri_00021a4c
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0x40080020
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ボスロボットバツ_mri_00021a5c
	.4byte str_c_mb_robo_c_mri_00021af0
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ボスロボットバツ_mri_00021a5c
	.4byte str_ボスロボットバツ_mri_00021a5c
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボスロボットバツ_mri_00021a5c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ボスロボットバツ_mri_00021a5c
	.4byte 0x000C0000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ボスロボットバツ_mri_00021a5c
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ボスロボットマル_mri_00021aa0
	.4byte str_c_mb_robo_1a_mri_00021ae0
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ボスロボットマル_mri_00021aa0
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボスロボットマル_mri_00021aa0
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ボスロボットマル_mri_00021aa0
	.4byte 0x000C0000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ボスロボットマル_mri_00021aa0
	.4byte str_L_1_mri_00021afc
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ボスロボットマル_mri_00021aa0
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_部下１_mri_00021b00
	.4byte str_c_zako_n_mri_00021b08
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_部下１_mri_00021b00
	.4byte str_第三勢力部下_mri_00021b14
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_部下１_mri_00021b00
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_部下１_mri_00021b00
	.4byte 0x40000420
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_部下２_mri_00021b24
	.4byte str_c_zako_n_mri_00021b08
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_部下２_mri_00021b24
	.4byte str_第三勢力部下_mri_00021b14
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_部下２_mri_00021b24
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_部下２_mri_00021b24
	.4byte 0x40000420
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_部下３_mri_00021b2c
	.4byte str_c_zako_n_mri_00021b08
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_部下３_mri_00021b2c
	.4byte str_第三勢力部下_mri_00021b14
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_部下３_mri_00021b2c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_部下３_mri_00021b2c
	.4byte 0x40000420
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_部下４_mri_00021b34
	.4byte str_c_zako_n_mri_00021b08
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_部下４_mri_00021b34
	.4byte str_第三勢力部下_mri_00021b14
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_部下４_mri_00021b34
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_部下４_mri_00021b34
	.4byte 0x40000420
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_部下５_mri_00021b3c
	.4byte str_c_zako_n_mri_00021b08
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_部下５_mri_00021b3c
	.4byte str_第三勢力部下_mri_00021b14
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_部下５_mri_00021b3c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_部下５_mri_00021b3c
	.4byte 0x40000420
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ダミー_mri_00021b44
	.4byte str_c_zako_n_mri_00021b08
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ダミー_mri_00021b44
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ダミー_mri_00021b44
	.4byte 0x400000A0
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0x0001006C
	.4byte 0xFD050F8B
	.4byte 0x00010063
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte bossrobot
	.4byte 0xFD050F8A
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj boss_battle_init

# .data:0x65F0 | 0xAF68 | size: 0x144
.obj dai3kanbu_suikomare, local
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001006C
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_npc_get_rotate
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xF24B1A80
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x00000096
	.4byte 0x0000003C
	.4byte 0x0000001E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dai3kanbu_suikomare

# .data:0x6734 | 0xB0AC | size: 0x88
.obj boss_robot_pera, local
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_xten_mri_00021b4c
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_mri_00021b58
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_mri_00021b58
	.4byte str_OFF_d_xten_mri_00021b4c
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_mri_00021b58
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_mri_00021b58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000260
	.4byte 0x000001E0
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_mri_00021b58
	.4byte str_A_1_mri_00021b5c
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_mri_00021b58
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj boss_robot_pera

# .data:0x67BC | 0xB134 | size: 0x4C
.obj boss_robot_pera_after, local
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_mri_00021b58
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_img_mri_00021b58
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_mri_00021b58
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_mri_00021b58
	.4byte 0x0002005B
	.4byte evt_paper_delete
	.4byte str_OFF_d_xten_mri_00021b4c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj boss_robot_pera_after

# .data:0x6808 | 0xB180 | size: 0x1320
.obj boss_battle, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFFFFFEC0
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x40000020
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x40000620
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_puni_puninum_onoff_18_text_1A88C
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEE3
	.4byte 0x00000098
	.4byte 0x00000224
	.4byte 0xFFFFFEE3
	.4byte 0x00000039
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e24_00_mri_00021b60
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e24_01_mri_00021b70
	.4byte 0x00000000
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xF2460680
	.4byte 0xF24CD34C
	.4byte 0xF252E3B3
	.4byte 0xF2460680
	.4byte 0xF24B5E80
	.4byte 0xF24A9680
	.4byte 0x000003E8
	.4byte 0x00000009
	.4byte 0x0001000A
	.4byte 0x00000384
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEE3
	.4byte 0x00000098
	.4byte 0x00000224
	.4byte 0xFFFFFEE3
	.4byte 0x00000039
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CHOUROU_BIG_mri_0002181c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000002
	.4byte 0xF24A7E80
	.4byte 0xF24A8680
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B582
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_SMALL_mri_00021b80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7DB3
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_SMALL_mri_00021b80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7D2E
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x0001000B
	.4byte 0xFAA2B581
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_SMALL_mri_00021b80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7C9E
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x0001000B
	.4byte 0xFAA2B582
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_SMALL_mri_00021b80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7C19
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e24_02_mri_00021b98
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0xF24A8680
	.4byte 0xF24A7E80
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00020032
	.4byte 0xFAA2B582
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF10
	.4byte 0x00000056
	.4byte 0x0000012E
	.4byte 0xFFFFFF10
	.4byte 0x00000023
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e24_03_mri_00021ba8
	.4byte 0x00000000
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEED
	.4byte 0x00000056
	.4byte 0x0000012E
	.4byte 0xFFFFFEED
	.4byte 0x00000023
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e24_04_mri_00021bb8
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A80
	.4byte 0x00000032
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CHOUROU_WAI_mri_00021bc8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_プニ族長老_mri_000213d0
	.4byte str_D_1_mri_00021be0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e24_04_00_mri_00021be4
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_プニ族長老_mri_000213d0
	.4byte str_D_1_mri_00021be0
	.4byte str_D_1_mri_00021be0
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e24_04_01_mri_00021bf8
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_プニ族長老_mri_000213d0
	.4byte str_S_2_mri_00021c0c
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_プニ族長老_mri_000213d0
	.4byte str_S_1_mri_000210cc
	.4byte str_T_1_mri_00021100
	.4byte 0x0001000A
	.4byte 0x0000014D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e24_04_02_mri_00021c10
	.4byte 0x00000000
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_mri_e24_05_mri_00021c24
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_000214fc
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF4C
	.4byte 0x00000098
	.4byte 0x00000224
	.4byte 0xFFFFFF4C
	.4byte 0x00000039
	.4byte 0x00000007
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF88
	.4byte 0x0000001E
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF6A
	.4byte 0x0000001E
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Y_mri_00021c34
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_mri_e24_05_01_mri_00021c3c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF1A
	.4byte 0x00000058
	.4byte 0x000000FD
	.4byte 0xFFFFFF1A
	.4byte 0x0000002D
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e24_06_mri_00021c50
	.4byte 0x00000000
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_BOMB_SWITCH_mri_00021c60
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte str_I_6_mri_00021c80
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_BOMB_TIMER__mri_00021c84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte str_I_7_mri_00021ca0
	.4byte 0x0003005B
	.4byte evt_sub_countdown_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x0001005B
	.4byte evt_countdown_stop
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_countdown_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_sub_countdown_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0001005B
	.4byte evt_sub_countdown_end
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_BOMB_SWITCH_mri_00021ca4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte str_I_8_mri_00021cc0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF4C
	.4byte 0x00000098
	.4byte 0x00000224
	.4byte 0xFFFFFF4C
	.4byte 0x00000039
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000014D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e24_07_mri_00021cc4
	.4byte 0x00000000
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_BOMB_SWITCH_mri_00021c60
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte str_I_6_mri_00021c80
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_BOMB_TIMER__mri_00021c84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte str_I_7_mri_00021ca0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000096
	.4byte 0x000000BA
	.4byte 0x00000225
	.4byte 0x00000096
	.4byte 0x0000005A
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_BOMB_SWITCH_mri_00021ca4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte str_I_8_mri_00021cc0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF6A
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_Z_1_mri_00021cd4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000096
	.4byte 0x000000F0
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00080000
	.4byte 0x0003005B
	.4byte evt_npc_set_width
	.4byte 0xFE363C8A
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte 0xFE363C8A
	.4byte str_S_1_mri_000210cc
	.4byte str_T_1_mri_00021100
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_BOSS_APPEAR_mri_00021cd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C89
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0007005B
	.4byte evt_npc_sound_data_set
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte 0xFE363C8A
	.4byte 0x00000096
	.4byte 0x00000064
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x00000096
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_FLD_NPC_KANBU_JU_mri_00021cf0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte dai3kanbu_suikomare
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_R_1_mri_00021d08
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_S_1_mri_000210cc
	.4byte 0x0002005B
	.4byte evt_npc_sound_data_reset
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_MAGNUM_APP1_mri_00021d0c
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_BOSS_APPEAR_mri_00021d20
	.4byte 0xFE363C89
	.4byte 0x0001005E
	.4byte boss_robot_pera
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_S_2_mri_00021c0c
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte 0xFE363C8A
	.4byte str_S_2_mri_00021c0c
	.4byte str_T_2_mri_000210d0
	.4byte 0x0001005E
	.4byte boss_robot_pera_after
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000096
	.4byte 0x000000B9
	.4byte 0x00000190
	.4byte 0x00000096
	.4byte 0x00000073
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e24_08_mri_00021d38
	.4byte 0x00000000
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000091
	.4byte 0x000000BA
	.4byte 0x00000225
	.4byte 0x00000091
	.4byte 0x0000005A
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_BOSS_LIGHT1_mri_00021d48
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evtflash
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000002EE
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_BOSS_SET1_mri_00021d60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003A5
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_BOSS_SET1_mri_00021d60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000016E
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_BOSS_SET1_mri_00021d60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_BOSS_SET2_mri_00021d74
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000970
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_BOSS_LANDIN_mri_00021d88
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_C_1_mri_00021da0
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000EF6
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x0000029A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00001130
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000091
	.4byte 0x000000A7
	.4byte 0x00000225
	.4byte 0x00000096
	.4byte 0x00000047
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000011F8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A9E
	.4byte 0x000001F4
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte 0xFE363C8A
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0x0000001E
	.4byte 0x000005DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_S_3_mri_00021da4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x000000A7
	.4byte 0x00000225
	.4byte 0xFFFFFFEC
	.4byte 0x00000047
	.4byte 0x00000007
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0x00000400
	.4byte 0x0001006C
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFEC
	.4byte 0x0000001E
	.4byte 0x000005DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000514
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000006F
	.4byte 0x0002005B
	.4byte evt_npc_release_filednpc
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0x00000014
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI3_mri_000219c0
	.4byte 0x0001005F
	.4byte 0xFE363C8C
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000046
	.4byte 0x0000009C
	.4byte 0x00000225
	.4byte 0x00000046
	.4byte 0x0000003C
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte boss_battle_win
	.4byte 0x00000002
	.4byte 0x00000001
.endobj boss_battle

# .data:0x7B28 | 0xC4A0 | size: 0x4C
.obj starstone_item, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj starstone_item

# .data:0x7B74 | 0xC4EC | size: 0xAC
.obj boss_robot_electro, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_3RD_EXPLSIO_mri_00021da8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000005A
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte akari_charge_entry
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000032
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24A8080
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj boss_robot_electro

# .data:0x7C20 | 0xC598 | size: 0xC4
.obj boss_robot_kemuri, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_3RD_EXPLSIO_mri_00021dc0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000004B
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000046
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_mri_000214fc
	.4byte str_kemuri_test_mri_00021dd8
	.4byte 0x00000008
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8180
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj boss_robot_kemuri

# .data:0x7CE4 | 0xC65C | size: 0xC4
.obj boss_battle_win_init, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000002
	.4byte 0x00000001
.endobj boss_battle_win_init

# .data:0x7DA8 | 0xC720 | size: 0x1754
.obj boss_battle_win, local
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000046
	.4byte 0x0000009C
	.4byte 0x00000225
	.4byte 0x00000046
	.4byte 0x0000003C
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_puni_wait_systemmode_18_text_16CBC
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_puni_puninum_onoff_18_text_1A88C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x000000FF
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFF1
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFF6
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFF1
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x0000001C
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFE2
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFEC
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFF1
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000033
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFD8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFE2
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFF1
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000047
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFC9
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFD8
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFF1
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x0000005B
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFFFFFF6A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFCE
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFF1
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020018
	.4byte 0xF84066BE
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000003
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000003
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000003
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00040000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイドsp_mri_00021de4
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイドsp_mri_00021de4
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ガイドsp_mri_00021de4
	.4byte str_S_1_mri_000210cc
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00040000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000002
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド妹sp_mri_00021df0
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド妹sp_mri_00021df0
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ガイド妹sp_mri_00021df0
	.4byte str_S_1_mri_000210cc
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00040000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000004
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ライバルsp_mri_00021dfc
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ライバルsp_mri_00021dfc
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ライバルsp_mri_00021dfc
	.4byte str_S_1_mri_000210cc
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0x0002005D
	.4byte boss_robot_electro
	.4byte 0xFE363C8F
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A80
	.4byte 0x00000064
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000005A
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_3RD_EXPLSIO_mri_00021e08
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C89
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_eff_hikari_mri_00021e20
	.4byte str_radiation_n64_mri_00021e2c
	.4byte 0x00000002
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
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0x0002005D
	.4byte boss_robot_kemuri
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_eff_hikari_mri_00021e20
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000514
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000006A4
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x0000006D
	.4byte 0x0001005F
	.4byte 0xFD050F8B
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボスロボット_mri_00021a4c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボスロボットマル_mri_00021aa0
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボスロボットバツ_mri_00021a5c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000064
	.4byte 0x00000028
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x40000620
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイドsp_mri_00021de4
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド妹sp_mri_00021df0
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ライバルsp_mri_00021dfc
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate_offset
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x00000000
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000708
	.4byte 0x00000357
	.4byte 0x000002BC
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_第三勢力幹部_mri_00021ac4
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
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF38
	.4byte 0x00000099
	.4byte 0x00000225
	.4byte 0xFFFFFF38
	.4byte 0x00000039
	.4byte 0x00000007
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_ROUND_mri_00021e3c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000226
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A8A
	.4byte 0x000001F4
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C8A
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x000002BC
	.4byte 0x00000046
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_STICK_mri_00021e54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_00021ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFCE
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C8E
	.4byte 0x00020036
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFE363C8A
	.4byte 0x00020037
	.4byte 0xFE363C8B
	.4byte 0x00000005
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFE363C8A
	.4byte 0x00020037
	.4byte 0xFE363C8C
	.4byte 0x00000007
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFE363C8A
	.4byte 0x00020037
	.4byte 0xFE363C8D
	.4byte 0x00000009
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ダミー_mri_00021b44
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_mri_00021970
	.4byte 0x00000073
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_ダミー_mri_00021b44
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_item00_mri_00021970
	.4byte 0x0002005D
	.4byte starstone_item
	.4byte 0xFE363C8F
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ダミー_mri_00021b44
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000271
	.4byte 0xF24AF280
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_STARSTONE_JU_mri_00021e6c
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ダミー_mri_00021b44
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x000000FA
	.4byte 0xF24AB680
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_STARSTONE_JU_mri_00021e6c
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ダミー_mri_00021b44
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x000000FA
	.4byte 0xF24A9880
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_STARSTONE_JU_mri_00021e6c
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ダミー_mri_00021b44
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000007D
	.4byte 0xF24A8780
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_STARSTONE_JU_mri_00021e6c
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ダミー_mri_00021b44
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_off
	.4byte str_item00_mri_00021970
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_item00_mri_00021970
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_HAPPY1_mri_00021e84
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e25_00_00_mri_00021e94
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF38
	.4byte 0x00000058
	.4byte 0x000000FD
	.4byte 0xFFFFFF38
	.4byte 0x0000002D
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x00000341
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e25_00_01_mri_00021ea8
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFE70
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_ESCAP_mri_00021ebc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_部下１_mri_00021b00
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte str_部下２_mri_00021b24
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte str_部下３_mri_00021b2c
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte str_部下４_mri_00021b34
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte str_部下５_mri_00021b3c
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8B
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000041
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8C
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8D
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000023
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイドsp_mri_00021de4
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド妹sp_mri_00021df0
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ライバルsp_mri_00021dfc
	.4byte 0x0000005A
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e25_00_02_mri_00021ed4
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_ESCAP_mri_00021ebc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8B
	.4byte 0xFFFFFE70
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_ESCAP_mri_00021ebc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8C
	.4byte 0xFFFFFE70
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_ESCAP_mri_00021ebc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8D
	.4byte 0xFFFFFE70
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_ESCAP_mri_00021ebc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8E
	.4byte 0xFFFFFE70
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFB0
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e25_00_03_mri_00021ee8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFB0
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e25_00_04_mri_00021efc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFB0
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e25_00_05_mri_00021f10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFB0
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e25_00_06_mri_00021f24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_ESCAP_mri_00021ebc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_D_4_mri_00021f38
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x0000000F
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A8A
	.4byte 0x000001F4
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_3RD1_MISS1_mri_00021f3c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000400
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_ESCAP_mri_00021ebc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFE70
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイドsp_mri_00021de4
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド妹sp_mri_00021df0
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ライバルsp_mri_00021dfc
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFCE
	.4byte 0x00000073
	.4byte 0x00000190
	.4byte 0xFFFFFFCE
	.4byte 0x0000002D
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイドsp_mri_00021de4
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド妹sp_mri_00021df0
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ライバルsp_mri_00021dfc
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_HAPPY1_mri_00021e84
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_mri_e25_00_mri_00021f50
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e25_01_mri_00021f60
	.4byte 0x00000000
	.4byte str_ガイドsp_mri_00021de4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_mri_00021f70
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_mri_00021194
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e25_02_mri_00021f88
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_ry_lr
	.4byte str_ライバルsp_mri_00021dfc
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0xFFFFFFCE
	.4byte 0x0000003C
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte str_item00_mri_00021970
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_item00_mri_00021970
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_item01_mri_00021f98
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte 0xFE363C8A
	.4byte 0x00000073
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0001005E
	.4byte evt_sub_starstone
	.4byte 0x00000002
	.4byte 0x00000001
.endobj boss_battle_win

# .data:0x94FC | 0xDE74 | size: 0x44
.obj door_switch_init, local
	.4byte 0x00020018
	.4byte 0xF8406699
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_mri_00021440
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_doalight01_mri_000214c0
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_switch_init

# .data:0x9540 | 0xDEB8 | size: 0x190
.obj ueki_puni_nigeru, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_プニ族_mri_000213f4
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_プニ族_mri_000213f4
	.4byte 0x00000080
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_プニ族_mri_000213f4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte str_プニ族_mri_000213f4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_プニ族_mri_000213f4
	.4byte 0x00000080
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族_mri_000213f4
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_000212a0
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_プニ族_mri_000213f4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0000012C
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0001006C
	.4byte 0xFE363C89
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族_mri_000213f4
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_MOVE2__mri_00021fa0
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_プニ族_mri_000213f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_プニ族_mri_000213f4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_プニ族_mri_000213f4
	.4byte 0x00000020
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ueki_puni_nigeru

# .data:0x96D0 | 0xE048 | size: 0x48
.obj evt_ueki_01, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000AA
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_005_mri_00021fb8
	.4byte 0x00000000
	.4byte str_ライバル_mri_000213c4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ueki_01

# .data:0x9718 | 0xE090 | size: 0x60
.obj evt_ueki_02, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000AA
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_003_mri_00021fc8
	.4byte 0x00000000
	.4byte str_ガイド妹_mri_00021404
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_004_mri_00021fd8
	.4byte 0x00000000
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ueki_02

# .data:0x9778 | 0xE0F0 | size: 0xC4
.obj evt_ueki_03, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000AA
	.4byte 0x00020018
	.4byte 0xF84066C3
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFF0B
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFFF1
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_kpa_stg3_006_2_mri_00021fe8
	.4byte 0x0001005E
	.4byte ueki_puni_nigeru
	.4byte 0x00020032
	.4byte 0xF84066C3
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_ueki_03_mri_00021ff8
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_ueki_03_mri_00021ff8
	.4byte 0x00000079
	.4byte 0xFFFFFF10
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x00000004
	.4byte 0xF840668C
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ueki_03

# .data:0x983C | 0xE1B4 | size: 0x20
.obj evt_ueki_08, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000AA
	.4byte 0x0001005C
	.4byte mri_01_koopa_second_evt
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ueki_08

# .data:0x985C | 0xE1D4 | size: 0x50
.obj ueki_access_data, local
	.4byte 0x00000001
	.4byte str_A_ueki01_mri_00022008
	.4byte str_S_ueki01_mri_00022014
	.4byte evt_ueki_01
	.4byte 0x00000001
	.4byte str_A_ueki02_mri_00022020
	.4byte str_S_ueki02_mri_0002202c
	.4byte evt_ueki_02
	.4byte 0x00000001
	.4byte str_A_ueki03_mri_00022038
	.4byte str_S_ueki03_mri_00022044
	.4byte evt_ueki_03
	.4byte 0x00000001
	.4byte str_A_ueki08_mri_00022050
	.4byte str_S_ueki08_mri_0002205c
	.4byte evt_ueki_08
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj ueki_access_data

# .data:0x98AC | 0xE224 | size: 0xC4
.obj puni_mario_wait, local
	.4byte 0x0002005B
	.4byte evt_puni_wait_systemmode_18_text_16CBC
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000003C
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFEE8
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000028
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_get_trap_index_18_text_1A0A8
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000001
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
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_mario_wait

# .data:0x9970 | 0xE2E8 | size: 0x640
.obj mri_01_koopa_first_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFE61
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_mri_00022068
	.4byte 0xFFFFFE61
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ババ_mri_00022068
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_mri_00022068
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_プニ族_mri_000213f4
	.4byte 0xFFFFFF82
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_プニ族B_mri_000213fc
	.4byte 0xFFFFFFA1
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_プニ族_mri_000213f4
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_プニ族B_mri_000213fc
	.4byte 0x0000010E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF82
	.4byte 0x00000086
	.4byte 0x0000018F
	.4byte 0xFFFFFF82
	.4byte 0x00000041
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_mri_00021428
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_mri_00021440
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_dokan_mri_00021450
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_mri_00022068
	.4byte 0xFFFFFE9D
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFEE8
	.4byte 0x0000001E
	.4byte 0xF24B6A80
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_000214fc
	.4byte str_プニ族_mri_000213f4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_000214fc
	.4byte str_プニ族B_mri_000213fc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_プニ族_mri_000213f4
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族_mri_000213f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族_mri_000213f4
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_000212a0
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_プニ族_mri_000213f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_000_mri_00022070
	.4byte 0x00000000
	.4byte str_プニ族_mri_000213f4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族B_mri_000213fc
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000096
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_プニ族B_mri_000213fc
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_プニ族B_mri_000213fc
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_プニ族B_mri_000213fc
	.4byte 0x000000A0
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族_mri_000213f4
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000096
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_プニ族_mri_000213f4
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_プニ族_mri_000213f4
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_プニ族_mri_000213f4
	.4byte 0x000000A0
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_mri_00022080
	.4byte str_KPA_S_1_mri_00022088
	.4byte str_KPA_T_1_mri_00022090
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_000_01_mri_00022098
	.4byte 0x00000000
	.4byte str_mario_mri_00022080
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF5B
	.4byte 0x00000087
	.4byte 0x0000016D
	.4byte 0xFFFFFECA
	.4byte 0x00000041
	.4byte 0x00000007
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_KUPPA1_mri_000220a8
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_000_02_mri_000220b8
	.4byte 0x00000000
	.4byte str_ババ_mri_00022068
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_000_03_mri_000220c8
	.4byte 0x00000000
	.4byte str_mario_mri_00022080
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_mri_00022080
	.4byte str_KPA_S_1_mri_00022088
	.4byte str_KPA_T_1_mri_00022090
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_001_mri_000220d8
	.4byte 0x00000000
	.4byte str_mario_mri_00022080
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_002_mri_000220e8
	.4byte 0x00000000
	.4byte str_ババ_mri_00022068
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ババ_mri_00022068
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000AA
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ライバル_mri_000213c4
	.4byte 0xFFFFFF3A
	.4byte 0xFFFFFFFB
	.4byte 0x00000035
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ライバル_mri_000213c4
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ライバル_mri_000213c4
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_000213bc
	.4byte 0xFFFFFF36
	.4byte 0x00000005
	.4byte 0xFFFFFFC5
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド妹_mri_00021404
	.4byte 0xFFFFFF3C
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFBB
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド妹_mri_00021404
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイド_mri_000213bc
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイド妹_mri_00021404
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x00000105
	.4byte 0x00000000
	.4byte 0x0000003E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mri_01_koopa_first_evt

# .data:0x9FB0 | 0xE928 | size: 0xAA8
.obj mri_01_koopa_second_evt, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cam3d_evt_zoom_in
	.4byte 0x0000000F
	.4byte 0x00000320
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0000010E
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0000005A
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000000B2
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000152
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000001
	.4byte 0xFFFFFC18
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_SURP_mri_000220f8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_O_1_mri_00022118
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CHOUROU_BIG_mri_0002181c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000002
	.4byte 0xF24A7E80
	.4byte 0xF24A8680
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_008_mri_00022120
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0002005B
	.4byte evt_fade_out
	.4byte 0x000002BC
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG2_PUNI1_mri_000215d4
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_mri_00022068
	.4byte 0xFFFFFFCA
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000019
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_000213bc
	.4byte 0x00000083
	.4byte 0x00000000
	.4byte 0x0000001B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド妹_mri_00021404
	.4byte 0x00000091
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド妹_mri_00021404
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ライバル_mri_000213c4
	.4byte 0x00000079
	.4byte 0x00000000
	.4byte 0x0000000D
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ライバル_mri_000213c4
	.4byte 0x0000010E
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_S_1_mri_00022088
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000002D
	.4byte 0x00000097
	.4byte 0x000001F4
	.4byte 0x0000002D
	.4byte 0x00000043
	.4byte 0x0000001B
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_fade_in
	.4byte 0x000002BC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_010_mri_00022130
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ババ_mri_00022068
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_mri_00022068
	.4byte 0x00000014
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_mri_00022068
	.4byte str_A_1B_mri_00022140
	.4byte str_T_4_mri_00022148
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_011_mri_0002214c
	.4byte 0x00000000
	.4byte str_ババ_mri_00022068
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CHOUROU_BIG_mri_0002181c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000002
	.4byte 0xF24A7E80
	.4byte 0xF24A8680
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ババ_mri_00022068
	.4byte 0xFFFFFFB7
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x000000C8
	.4byte 0x00000014
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_mri_00022068
	.4byte str_P_1_mri_0002215c
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xF9718882
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xF9718882
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0xF24A8680
	.4byte 0xF24A7E80
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x00000097
	.4byte 0x000001F4
	.4byte 0xFFFFFFEC
	.4byte 0x00000043
	.4byte 0x0000001B
	.4byte 0x000000C8
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_012_mri_00022160
	.4byte mri_stg3_012_cb
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_mri_00022068
	.4byte str_K_1_mri_00022170
	.4byte str_T_7_mri_00022174
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_013_mri_00022178
	.4byte 0x00000000
	.4byte str_ババ_mri_00022068
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_mri_00022068
	.4byte str_S_1_mri_000210cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000011
	.4byte 0x00000083
	.4byte 0x00000184
	.4byte 0x00000011
	.4byte 0x00000043
	.4byte 0x0000001B
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_THIN_mri_00022188
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_N_1_mri_000221a4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_kpa_stg3_014_mri_000221ac
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x00000097
	.4byte 0x000001F4
	.4byte 0xFFFFFFEC
	.4byte 0x00000043
	.4byte 0x0000001B
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_mri_00022080
	.4byte str_KPA_S_7_mri_000221bc
	.4byte str_KPA_S_7_mri_000221bc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_016_mri_000221c4
	.4byte 0x00000000
	.4byte str_mario_mri_00022080
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_mri_00022068
	.4byte str_S_1_mri_000210cc
	.4byte str_T_1_mri_00021100
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_017_mri_000221d4
	.4byte 0x00000000
	.4byte str_ババ_mri_00022068
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_S_1_mri_00022088
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_mri_00022080
	.4byte str_KPA_S_1_mri_00022088
	.4byte str_KPA_T_1_mri_00022090
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_018_mri_000221e4
	.4byte 0x00000000
	.4byte str_mario_mri_00022080
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000002D
	.4byte 0x00000097
	.4byte 0x000001F4
	.4byte 0x0000002D
	.4byte 0x00000043
	.4byte 0x0000001B
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_mri_00022080
	.4byte str_KPA_S_4_mri_000221f4
	.4byte str_KPA_T_3_mri_000221fc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_018_1_mri_00022204
	.4byte 0x00000000
	.4byte str_mario_mri_00022080
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_019_mri_00022214
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_O_1_mri_00022118
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000014
	.4byte 0x0000007D
	.4byte 0x00000161
	.4byte 0x00000014
	.4byte 0x00000043
	.4byte 0x0000001B
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SURPRISED_mri_00022224
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_SURP_mri_0002223c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_mri_00022080
	.4byte str_KPA_S_5_mri_0002225c
	.4byte str_KPA_T_5_mri_00022264
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_020_mri_0002226c
	.4byte 0x00000000
	.4byte str_mario_mri_00022080
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000002D
	.4byte 0x00000097
	.4byte 0x000001F4
	.4byte 0x0000002D
	.4byte 0x00000043
	.4byte 0x0000001B
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_021_mri_0002227c
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x00000097
	.4byte 0x000001F4
	.4byte 0xFFFFFFEC
	.4byte 0x00000043
	.4byte 0x0000001B
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_022_mri_0002228c
	.4byte 0x00000000
	.4byte str_ババ_mri_00022068
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_S_4_mri_000221f4
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000FA
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_mri_00022080
	.4byte str_KPA_S_4_mri_000221f4
	.4byte str_KPA_T_3_mri_000221fc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg3_023_mri_0002229c
	.4byte 0x00000000
	.4byte str_mario_mri_00022080
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000AB
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000006
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000009
	.4byte 0x0001005E
	.4byte unk_evt_803bac3c
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x0000003A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_02_mri_000222ac
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mri_01_koopa_second_evt

# .data:0xAA58 | 0xF3D0 | size: 0x740
.obj mri_01_init_evt_18_data_F3D0, global
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000A9
	.4byte 0x0002001C
	.4byte 0xF5DE0180
	.4byte 0x000000AA
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_puni_mem_init_18_text_15D70
	.4byte 0x0008005B
	.4byte evt_puni_set_yuka_18_text_15FA0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFECA
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_puni_set_hamari_18_text_16134
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
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
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte puni_disp_info_18_data_245F0
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte mri_countdown_18_data_A7C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte ueki_access_data
	.4byte 0x0001005E
	.4byte evt_sub_kusa_access_entry
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_01_mri_000222b4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_02_mri_000222bc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_01_mri_000222c4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_02_mri_000222cc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_kawa_01_mri_000222d4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_kawa_02_mri_000222dc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_kawa_sibu_01_mri_000222e4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_kawa_01_mri_000222d4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000006E
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFD3
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A7E80
	.4byte 0x0001005C
	.4byte mri_waterfall_effect_18_data_D3C
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000006D
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER4_mri_000222f4
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI9_mri_00022304
	.4byte 0x0002002F
	.4byte 0x000000A9
	.4byte 0x000000AA
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG2_PUNI1_mri_000215d4
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_ENV_STG2_MRI3_mri_000219c0
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_000215b4
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI3_mri_000219c0
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_mri_00022314
	.4byte 0x0000014A
	.4byte 0x0000003C
	.4byte 0xFFFFFFE7
	.4byte mri_puni_save_18_data_770
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_recovery_blk
	.4byte str_mobj_recover_mri_00022320
	.4byte 0x00000008
	.4byte 0x00000104
	.4byte 0x0000003C
	.4byte 0xFFFFFFE7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000058
	.4byte 0x0001005C
	.4byte bigtree_firstbattle
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000059
	.4byte 0x0001005C
	.4byte meet_rival
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000005E
	.4byte 0x0001005C
	.4byte rival_nakama
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000006E
	.4byte 0x0001005E
	.4byte boss_battle_init
	.4byte 0x0001005C
	.4byte boss_battle
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000006F
	.4byte 0x0001005E
	.4byte boss_battle_init
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte boss_battle_win_init
	.4byte 0x0001005C
	.4byte boss_battle_win
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte door_switch_init
	.4byte 0x00020018
	.4byte 0xF5DE0419
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xF5DE041A
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte puni_mario_wait
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000005F
	.4byte 0x00020018
	.4byte 0xF840668D
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte elder_kaisetsu
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A9
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ババ_mri_00022068
	.4byte str_c_kamek_be_mri_00022330
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ババ_mri_00022068
	.4byte str_カメックババ（地上）_mri_0002233c
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ババ_mri_00022068
	.4byte 0x40000600
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ババ_mri_00022068
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_mri_00022068
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_mri_00022068
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ババ_mri_00022068
	.4byte 0x00000006
	.4byte baba_talk
	.4byte 0x0001005C
	.4byte mri_01_koopa_first_evt
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000AA
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ババ_mri_00022068
	.4byte str_c_kamek_be_mri_00022330
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ババ_mri_00022068
	.4byte str_カメックババ（地上）_mri_0002233c
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ババ_mri_00022068
	.4byte 0x40000600
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ババ_mri_00022068
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_mri_00022068
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_mri_00022068
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ババ_mri_00022068
	.4byte 0x00000006
	.4byte baba_talk
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_mri_00021428
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_mri_00021440
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_dokan_mri_00021450
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ライバル_mri_000213c4
	.4byte 0xFFFFFF3A
	.4byte 0xFFFFFFFB
	.4byte 0x00000035
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ライバル_mri_000213c4
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ライバル_mri_000213c4
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_000213bc
	.4byte 0xFFFFFF36
	.4byte 0x00000005
	.4byte 0xFFFFFFC5
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド妹_mri_00021404
	.4byte 0xFFFFFF3C
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFBB
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド_mri_000213bc
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド妹_mri_00021404
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイド_mri_000213bc
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイド妹_mri_00021404
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x00000105
	.4byte 0x00000000
	.4byte 0x0000003E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_プニ族長老_mri_000213d0
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_player_mri_00022354
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFEE8
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_mri_00022068
	.4byte 0xFFFFFE9D
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_mri_00022068
	.4byte 0x0000005A
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x000000E2
	.4byte 0x00000000
	.4byte 0x00000030
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001005C
	.4byte mri_01_koopa_second_evt
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_system_flag
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00001000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_mri_00021428
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mri_01_init_evt_18_data_F3D0

# 0x00000008..0x00000010 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x8 | size: 0x4
.obj bp, local
	.skip 0x4
.endobj bp

# .bss:0x4 | 0xC | size: 0x4
.obj gap_05_0000000C_bss, global
.hidden gap_05_0000000C_bss
	.skip 0x4
.endobj gap_05_0000000C_bss
