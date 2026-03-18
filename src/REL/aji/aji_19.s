.include "macros.inc"
.file "aji_19.o"

# 0x000083C8..0x00008AA0 | size: 0x6D8
.text
.balign 4

# .text:0x0 | 0x83C8 | size: 0x184
.fn mario_chk, local
/* 000083C8 0000848C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000083CC 00008490  7C 08 02 A6 */	mflr r0
/* 000083D0 00008494  90 01 00 14 */	stw r0, 0x14(r1)
/* 000083D4 00008498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000083D8 0000849C  4B FF DE 65 */	bl marioGetPtr
/* 000083DC 000084A0  7C 7F 1B 79 */	mr. r31, r3
/* 000083E0 000084A4  41 82 00 6C */	beq .L_0000844C
/* 000083E4 000084A8  80 1F 01 E8 */	lwz r0, 0x1e8(r31)
/* 000083E8 000084AC  28 00 00 00 */	cmplwi r0, 0x0
/* 000083EC 000084B0  41 82 00 60 */	beq .L_0000844C
/* 000083F0 000084B4  3C 60 00 00 */	lis r3, str_A_b_ue_aji_00016e00@ha
/* 000083F4 000084B8  38 63 00 00 */	addi r3, r3, str_A_b_ue_aji_00016e00@l
/* 000083F8 000084BC  4B FF DE 45 */	bl hitNameToPtr
/* 000083FC 000084C0  7C 64 1B 78 */	mr r4, r3
/* 00008400 000084C4  80 7F 01 E8 */	lwz r3, 0x1e8(r31)
/* 00008404 000084C8  48 00 01 49 */	bl hitIsGroup
/* 00008408 000084CC  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000840C 000084D0  41 82 00 14 */	beq .L_00008420
/* 00008410 000084D4  3C 60 00 00 */	lis r3, float_1_aji_00016e08@ha
/* 00008414 000084D8  C0 03 00 00 */	lfs f0, float_1_aji_00016e08@l(r3)
/* 00008418 000084DC  D0 1F 01 74 */	stfs f0, 0x174(r31)
/* 0000841C 000084E0  48 00 00 30 */	b .L_0000844C
.L_00008420:
/* 00008420 000084E4  3C 60 00 00 */	lis r3, str_A_b_shita_aji_00016e0c@ha
/* 00008424 000084E8  38 63 00 00 */	addi r3, r3, str_A_b_shita_aji_00016e0c@l
/* 00008428 000084EC  4B FF DE 15 */	bl hitNameToPtr
/* 0000842C 000084F0  7C 64 1B 78 */	mr r4, r3
/* 00008430 000084F4  80 7F 01 E8 */	lwz r3, 0x1e8(r31)
/* 00008434 000084F8  48 00 01 19 */	bl hitIsGroup
/* 00008438 000084FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000843C 00008500  41 82 00 10 */	beq .L_0000844C
/* 00008440 00008504  3C 60 00 00 */	lis r3, float_neg1_aji_00016e18@ha
/* 00008444 00008508  C0 03 00 00 */	lfs f0, float_neg1_aji_00016e18@l(r3)
/* 00008448 0000850C  D0 1F 01 74 */	stfs f0, 0x174(r31)
.L_0000844C:
/* 0000844C 00008510  4B FF DD F1 */	bl marioGetPartyId
/* 00008450 00008514  4B FF DD ED */	bl partyGetPtr
/* 00008454 00008518  7C 7F 1B 79 */	mr. r31, r3
/* 00008458 0000851C  41 82 00 68 */	beq .L_000084C0
/* 0000845C 00008520  80 1F 01 38 */	lwz r0, 0x138(r31)
/* 00008460 00008524  28 00 00 00 */	cmplwi r0, 0x0
/* 00008464 00008528  41 82 00 5C */	beq .L_000084C0
/* 00008468 0000852C  3C 60 00 00 */	lis r3, str_A_b_ue_aji_00016e00@ha
/* 0000846C 00008530  38 63 00 00 */	addi r3, r3, str_A_b_ue_aji_00016e00@l
/* 00008470 00008534  4B FF DD CD */	bl hitNameToPtr
/* 00008474 00008538  7C 64 1B 78 */	mr r4, r3
/* 00008478 0000853C  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 0000847C 00008540  48 00 00 D1 */	bl hitIsGroup
/* 00008480 00008544  2C 03 00 00 */	cmpwi r3, 0x0
/* 00008484 00008548  41 82 00 10 */	beq .L_00008494
/* 00008488 0000854C  3C 60 00 00 */	lis r3, float_1_aji_00016e08@ha
/* 0000848C 00008550  C0 03 00 00 */	lfs f0, float_1_aji_00016e08@l(r3)
/* 00008490 00008554  D0 1F 00 AC */	stfs f0, 0xac(r31)
.L_00008494:
/* 00008494 00008558  3C 60 00 00 */	lis r3, str_A_b_shita_aji_00016e0c@ha
/* 00008498 0000855C  38 63 00 00 */	addi r3, r3, str_A_b_shita_aji_00016e0c@l
/* 0000849C 00008560  4B FF DD A1 */	bl hitNameToPtr
/* 000084A0 00008564  7C 64 1B 78 */	mr r4, r3
/* 000084A4 00008568  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 000084A8 0000856C  48 00 00 A5 */	bl hitIsGroup
/* 000084AC 00008570  2C 03 00 00 */	cmpwi r3, 0x0
/* 000084B0 00008574  41 82 00 10 */	beq .L_000084C0
/* 000084B4 00008578  3C 60 00 00 */	lis r3, float_neg1_aji_00016e18@ha
/* 000084B8 0000857C  C0 03 00 00 */	lfs f0, float_neg1_aji_00016e18@l(r3)
/* 000084BC 00008580  D0 1F 00 AC */	stfs f0, 0xac(r31)
.L_000084C0:
/* 000084C0 00008584  4B FF DD 7D */	bl marioGetExtraPartyId
/* 000084C4 00008588  4B FF DD 79 */	bl partyGetPtr
/* 000084C8 0000858C  7C 7F 1B 79 */	mr. r31, r3
/* 000084CC 00008590  41 82 00 68 */	beq .L_00008534
/* 000084D0 00008594  80 1F 01 38 */	lwz r0, 0x138(r31)
/* 000084D4 00008598  28 00 00 00 */	cmplwi r0, 0x0
/* 000084D8 0000859C  41 82 00 5C */	beq .L_00008534
/* 000084DC 000085A0  3C 60 00 00 */	lis r3, str_A_b_ue_aji_00016e00@ha
/* 000084E0 000085A4  38 63 00 00 */	addi r3, r3, str_A_b_ue_aji_00016e00@l
/* 000084E4 000085A8  4B FF DD 59 */	bl hitNameToPtr
/* 000084E8 000085AC  7C 64 1B 78 */	mr r4, r3
/* 000084EC 000085B0  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 000084F0 000085B4  48 00 00 5D */	bl hitIsGroup
/* 000084F4 000085B8  2C 03 00 00 */	cmpwi r3, 0x0
/* 000084F8 000085BC  41 82 00 10 */	beq .L_00008508
/* 000084FC 000085C0  3C 60 00 00 */	lis r3, float_1_aji_00016e08@ha
/* 00008500 000085C4  C0 03 00 00 */	lfs f0, float_1_aji_00016e08@l(r3)
/* 00008504 000085C8  D0 1F 00 AC */	stfs f0, 0xac(r31)
.L_00008508:
/* 00008508 000085CC  3C 60 00 00 */	lis r3, str_A_b_shita_aji_00016e0c@ha
/* 0000850C 000085D0  38 63 00 00 */	addi r3, r3, str_A_b_shita_aji_00016e0c@l
/* 00008510 000085D4  4B FF DD 2D */	bl hitNameToPtr
/* 00008514 000085D8  7C 64 1B 78 */	mr r4, r3
/* 00008518 000085DC  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 0000851C 000085E0  48 00 00 31 */	bl hitIsGroup
/* 00008520 000085E4  2C 03 00 00 */	cmpwi r3, 0x0
/* 00008524 000085E8  41 82 00 10 */	beq .L_00008534
/* 00008528 000085EC  3C 60 00 00 */	lis r3, float_neg1_aji_00016e18@ha
/* 0000852C 000085F0  C0 03 00 00 */	lfs f0, float_neg1_aji_00016e18@l(r3)
/* 00008530 000085F4  D0 1F 00 AC */	stfs f0, 0xac(r31)
.L_00008534:
/* 00008534 000085F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00008538 000085FC  38 60 00 00 */	li r3, 0x0
/* 0000853C 00008600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00008540 00008604  7C 08 03 A6 */	mtlr r0
/* 00008544 00008608  38 21 00 10 */	addi r1, r1, 0x10
/* 00008548 0000860C  4E 80 00 20 */	blr
.endfn mario_chk

# .text:0x184 | 0x854C | size: 0x24
.fn hitIsGroup, local
/* 0000854C 00008610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00008550 00008614  7C 08 02 A6 */	mflr r0
/* 00008554 00008618  38 A0 00 00 */	li r5, 0x0
/* 00008558 0000861C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000855C 00008620  48 00 00 15 */	bl _hitIsGroupSub
/* 00008560 00008624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00008564 00008628  7C 08 03 A6 */	mtlr r0
/* 00008568 0000862C  38 21 00 10 */	addi r1, r1, 0x10
/* 0000856C 00008630  4E 80 00 20 */	blr
.endfn hitIsGroup

# .text:0x1A8 | 0x8570 | size: 0x530
.fn _hitIsGroupSub, local
/* 00008570 00008634  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00008574 00008638  7C 08 02 A6 */	mflr r0
/* 00008578 0000863C  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000857C 00008640  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 00008580 00008644  7C 7F 1B 78 */	mr r31, r3
/* 00008584 00008648  7C 9C 23 78 */	mr r28, r4
/* 00008588 0000864C  7C BD 2B 78 */	mr r29, r5
/* 0000858C 00008650  80 63 00 08 */	lwz r3, 0x8(r3)
/* 00008590 00008654  80 84 00 08 */	lwz r4, 0x8(r4)
/* 00008594 00008658  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00008598 0000865C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000859C 00008660  4B FF DC A1 */	bl strcmp
/* 000085A0 00008664  2C 03 00 00 */	cmpwi r3, 0x0
/* 000085A4 00008668  40 82 00 0C */	bne .L_000085B0
/* 000085A8 0000866C  38 60 00 01 */	li r3, 0x1
/* 000085AC 00008670  48 00 04 E0 */	b .L_00008A8C
.L_000085B0:
/* 000085B0 00008674  83 DC 00 D8 */	lwz r30, 0xd8(r28)
/* 000085B4 00008678  28 1E 00 00 */	cmplwi r30, 0x0
/* 000085B8 0000867C  41 82 02 60 */	beq .L_00008818
/* 000085BC 00008680  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 000085C0 00008684  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 000085C4 00008688  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000085C8 0000868C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000085CC 00008690  4B FF DC 71 */	bl strcmp
/* 000085D0 00008694  2C 03 00 00 */	cmpwi r3, 0x0
/* 000085D4 00008698  40 82 00 0C */	bne .L_000085E0
/* 000085D8 0000869C  38 60 00 01 */	li r3, 0x1
/* 000085DC 000086A0  48 00 04 B0 */	b .L_00008A8C
.L_000085E0:
/* 000085E0 000086A4  83 BE 00 D8 */	lwz r29, 0xd8(r30)
/* 000085E4 000086A8  28 1D 00 00 */	cmplwi r29, 0x0
/* 000085E8 000086AC  41 82 01 10 */	beq .L_000086F8
/* 000085EC 000086B0  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 000085F0 000086B4  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 000085F4 000086B8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000085F8 000086BC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000085FC 000086C0  4B FF DC 41 */	bl strcmp
/* 00008600 000086C4  2C 03 00 00 */	cmpwi r3, 0x0
/* 00008604 000086C8  40 82 00 0C */	bne .L_00008610
/* 00008608 000086CC  38 60 00 01 */	li r3, 0x1
/* 0000860C 000086D0  48 00 04 80 */	b .L_00008A8C
.L_00008610:
/* 00008610 000086D4  83 DD 00 D8 */	lwz r30, 0xd8(r29)
/* 00008614 000086D8  28 1E 00 00 */	cmplwi r30, 0x0
/* 00008618 000086DC  41 82 00 68 */	beq .L_00008680
/* 0000861C 000086E0  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 00008620 000086E4  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00008624 000086E8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00008628 000086EC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000862C 000086F0  4B FF DC 11 */	bl strcmp
/* 00008630 000086F4  2C 03 00 00 */	cmpwi r3, 0x0
/* 00008634 000086F8  40 82 00 0C */	bne .L_00008640
/* 00008638 000086FC  38 60 00 01 */	li r3, 0x1
/* 0000863C 00008700  48 00 04 50 */	b .L_00008A8C
.L_00008640:
/* 00008640 00008704  80 9E 00 D8 */	lwz r4, 0xd8(r30)
/* 00008644 00008708  28 04 00 00 */	cmplwi r4, 0x0
/* 00008648 0000870C  41 82 00 14 */	beq .L_0000865C
/* 0000864C 00008710  7F E3 FB 78 */	mr r3, r31
/* 00008650 00008714  38 A0 00 01 */	li r5, 0x1
/* 00008654 00008718  4B FF FF 1D */	bl _hitIsGroupSub
/* 00008658 0000871C  48 00 04 34 */	b .L_00008A8C
.L_0000865C:
/* 0000865C 00008720  80 9E 00 DC */	lwz r4, 0xdc(r30)
/* 00008660 00008724  28 04 00 00 */	cmplwi r4, 0x0
/* 00008664 00008728  41 82 00 14 */	beq .L_00008678
/* 00008668 0000872C  7F E3 FB 78 */	mr r3, r31
/* 0000866C 00008730  38 A0 00 01 */	li r5, 0x1
/* 00008670 00008734  4B FF FF 01 */	bl _hitIsGroupSub
/* 00008674 00008738  48 00 04 18 */	b .L_00008A8C
.L_00008678:
/* 00008678 0000873C  38 60 00 00 */	li r3, 0x0
/* 0000867C 00008740  48 00 04 10 */	b .L_00008A8C
.L_00008680:
/* 00008680 00008744  83 BD 00 DC */	lwz r29, 0xdc(r29)
/* 00008684 00008748  28 1D 00 00 */	cmplwi r29, 0x0
/* 00008688 0000874C  41 82 00 68 */	beq .L_000086F0
/* 0000868C 00008750  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 00008690 00008754  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00008694 00008758  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00008698 0000875C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000869C 00008760  4B FF DB A1 */	bl strcmp
/* 000086A0 00008764  2C 03 00 00 */	cmpwi r3, 0x0
/* 000086A4 00008768  40 82 00 0C */	bne .L_000086B0
/* 000086A8 0000876C  38 60 00 01 */	li r3, 0x1
/* 000086AC 00008770  48 00 03 E0 */	b .L_00008A8C
.L_000086B0:
/* 000086B0 00008774  80 9D 00 D8 */	lwz r4, 0xd8(r29)
/* 000086B4 00008778  28 04 00 00 */	cmplwi r4, 0x0
/* 000086B8 0000877C  41 82 00 14 */	beq .L_000086CC
/* 000086BC 00008780  7F E3 FB 78 */	mr r3, r31
/* 000086C0 00008784  38 A0 00 01 */	li r5, 0x1
/* 000086C4 00008788  4B FF FE AD */	bl _hitIsGroupSub
/* 000086C8 0000878C  48 00 03 C4 */	b .L_00008A8C
.L_000086CC:
/* 000086CC 00008790  80 9D 00 DC */	lwz r4, 0xdc(r29)
/* 000086D0 00008794  28 04 00 00 */	cmplwi r4, 0x0
/* 000086D4 00008798  41 82 00 14 */	beq .L_000086E8
/* 000086D8 0000879C  7F E3 FB 78 */	mr r3, r31
/* 000086DC 000087A0  38 A0 00 01 */	li r5, 0x1
/* 000086E0 000087A4  4B FF FE 91 */	bl _hitIsGroupSub
/* 000086E4 000087A8  48 00 03 A8 */	b .L_00008A8C
.L_000086E8:
/* 000086E8 000087AC  38 60 00 00 */	li r3, 0x0
/* 000086EC 000087B0  48 00 03 A0 */	b .L_00008A8C
.L_000086F0:
/* 000086F0 000087B4  38 60 00 00 */	li r3, 0x0
/* 000086F4 000087B8  48 00 03 98 */	b .L_00008A8C
.L_000086F8:
/* 000086F8 000087BC  83 BE 00 DC */	lwz r29, 0xdc(r30)
/* 000086FC 000087C0  28 1D 00 00 */	cmplwi r29, 0x0
/* 00008700 000087C4  41 82 01 10 */	beq .L_00008810
/* 00008704 000087C8  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 00008708 000087CC  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 0000870C 000087D0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00008710 000087D4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00008714 000087D8  4B FF DB 29 */	bl strcmp
/* 00008718 000087DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000871C 000087E0  40 82 00 0C */	bne .L_00008728
/* 00008720 000087E4  38 60 00 01 */	li r3, 0x1
/* 00008724 000087E8  48 00 03 68 */	b .L_00008A8C
.L_00008728:
/* 00008728 000087EC  83 DD 00 D8 */	lwz r30, 0xd8(r29)
/* 0000872C 000087F0  28 1E 00 00 */	cmplwi r30, 0x0
/* 00008730 000087F4  41 82 00 68 */	beq .L_00008798
/* 00008734 000087F8  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 00008738 000087FC  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 0000873C 00008800  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00008740 00008804  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00008744 00008808  4B FF DA F9 */	bl strcmp
/* 00008748 0000880C  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000874C 00008810  40 82 00 0C */	bne .L_00008758
/* 00008750 00008814  38 60 00 01 */	li r3, 0x1
/* 00008754 00008818  48 00 03 38 */	b .L_00008A8C
.L_00008758:
/* 00008758 0000881C  80 9E 00 D8 */	lwz r4, 0xd8(r30)
/* 0000875C 00008820  28 04 00 00 */	cmplwi r4, 0x0
/* 00008760 00008824  41 82 00 14 */	beq .L_00008774
/* 00008764 00008828  7F E3 FB 78 */	mr r3, r31
/* 00008768 0000882C  38 A0 00 01 */	li r5, 0x1
/* 0000876C 00008830  4B FF FE 05 */	bl _hitIsGroupSub
/* 00008770 00008834  48 00 03 1C */	b .L_00008A8C
.L_00008774:
/* 00008774 00008838  80 9E 00 DC */	lwz r4, 0xdc(r30)
/* 00008778 0000883C  28 04 00 00 */	cmplwi r4, 0x0
/* 0000877C 00008840  41 82 00 14 */	beq .L_00008790
/* 00008780 00008844  7F E3 FB 78 */	mr r3, r31
/* 00008784 00008848  38 A0 00 01 */	li r5, 0x1
/* 00008788 0000884C  4B FF FD E9 */	bl _hitIsGroupSub
/* 0000878C 00008850  48 00 03 00 */	b .L_00008A8C
.L_00008790:
/* 00008790 00008854  38 60 00 00 */	li r3, 0x0
/* 00008794 00008858  48 00 02 F8 */	b .L_00008A8C
.L_00008798:
/* 00008798 0000885C  83 BD 00 DC */	lwz r29, 0xdc(r29)
/* 0000879C 00008860  28 1D 00 00 */	cmplwi r29, 0x0
/* 000087A0 00008864  41 82 00 68 */	beq .L_00008808
/* 000087A4 00008868  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 000087A8 0000886C  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 000087AC 00008870  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000087B0 00008874  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000087B4 00008878  4B FF DA 89 */	bl strcmp
/* 000087B8 0000887C  2C 03 00 00 */	cmpwi r3, 0x0
/* 000087BC 00008880  40 82 00 0C */	bne .L_000087C8
/* 000087C0 00008884  38 60 00 01 */	li r3, 0x1
/* 000087C4 00008888  48 00 02 C8 */	b .L_00008A8C
.L_000087C8:
/* 000087C8 0000888C  80 9D 00 D8 */	lwz r4, 0xd8(r29)
/* 000087CC 00008890  28 04 00 00 */	cmplwi r4, 0x0
/* 000087D0 00008894  41 82 00 14 */	beq .L_000087E4
/* 000087D4 00008898  7F E3 FB 78 */	mr r3, r31
/* 000087D8 0000889C  38 A0 00 01 */	li r5, 0x1
/* 000087DC 000088A0  4B FF FD 95 */	bl _hitIsGroupSub
/* 000087E0 000088A4  48 00 02 AC */	b .L_00008A8C
.L_000087E4:
/* 000087E4 000088A8  80 9D 00 DC */	lwz r4, 0xdc(r29)
/* 000087E8 000088AC  28 04 00 00 */	cmplwi r4, 0x0
/* 000087EC 000088B0  41 82 00 14 */	beq .L_00008800
/* 000087F0 000088B4  7F E3 FB 78 */	mr r3, r31
/* 000087F4 000088B8  38 A0 00 01 */	li r5, 0x1
/* 000087F8 000088BC  4B FF FD 79 */	bl _hitIsGroupSub
/* 000087FC 000088C0  48 00 02 90 */	b .L_00008A8C
.L_00008800:
/* 00008800 000088C4  38 60 00 00 */	li r3, 0x0
/* 00008804 000088C8  48 00 02 88 */	b .L_00008A8C
.L_00008808:
/* 00008808 000088CC  38 60 00 00 */	li r3, 0x0
/* 0000880C 000088D0  48 00 02 80 */	b .L_00008A8C
.L_00008810:
/* 00008810 000088D4  38 60 00 00 */	li r3, 0x0
/* 00008814 000088D8  48 00 02 78 */	b .L_00008A8C
.L_00008818:
/* 00008818 000088DC  2C 1D 00 00 */	cmpwi r29, 0x0
/* 0000881C 000088E0  41 82 02 6C */	beq .L_00008A88
/* 00008820 000088E4  83 BC 00 DC */	lwz r29, 0xdc(r28)
/* 00008824 000088E8  28 1D 00 00 */	cmplwi r29, 0x0
/* 00008828 000088EC  41 82 02 60 */	beq .L_00008A88
/* 0000882C 000088F0  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 00008830 000088F4  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00008834 000088F8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00008838 000088FC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000883C 00008900  4B FF DA 01 */	bl strcmp
/* 00008840 00008904  2C 03 00 00 */	cmpwi r3, 0x0
/* 00008844 00008908  40 82 00 0C */	bne .L_00008850
/* 00008848 0000890C  38 60 00 01 */	li r3, 0x1
/* 0000884C 00008910  48 00 02 40 */	b .L_00008A8C
.L_00008850:
/* 00008850 00008914  83 DD 00 D8 */	lwz r30, 0xd8(r29)
/* 00008854 00008918  28 1E 00 00 */	cmplwi r30, 0x0
/* 00008858 0000891C  41 82 01 10 */	beq .L_00008968
/* 0000885C 00008920  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 00008860 00008924  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00008864 00008928  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00008868 0000892C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000886C 00008930  4B FF D9 D1 */	bl strcmp
/* 00008870 00008934  2C 03 00 00 */	cmpwi r3, 0x0
/* 00008874 00008938  40 82 00 0C */	bne .L_00008880
/* 00008878 0000893C  38 60 00 01 */	li r3, 0x1
/* 0000887C 00008940  48 00 02 10 */	b .L_00008A8C
.L_00008880:
/* 00008880 00008944  83 BE 00 D8 */	lwz r29, 0xd8(r30)
/* 00008884 00008948  28 1D 00 00 */	cmplwi r29, 0x0
/* 00008888 0000894C  41 82 00 68 */	beq .L_000088F0
/* 0000888C 00008950  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 00008890 00008954  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00008894 00008958  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00008898 0000895C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000889C 00008960  4B FF D9 A1 */	bl strcmp
/* 000088A0 00008964  2C 03 00 00 */	cmpwi r3, 0x0
/* 000088A4 00008968  40 82 00 0C */	bne .L_000088B0
/* 000088A8 0000896C  38 60 00 01 */	li r3, 0x1
/* 000088AC 00008970  48 00 01 E0 */	b .L_00008A8C
.L_000088B0:
/* 000088B0 00008974  80 9D 00 D8 */	lwz r4, 0xd8(r29)
/* 000088B4 00008978  28 04 00 00 */	cmplwi r4, 0x0
/* 000088B8 0000897C  41 82 00 14 */	beq .L_000088CC
/* 000088BC 00008980  7F E3 FB 78 */	mr r3, r31
/* 000088C0 00008984  38 A0 00 01 */	li r5, 0x1
/* 000088C4 00008988  4B FF FC AD */	bl _hitIsGroupSub
/* 000088C8 0000898C  48 00 01 C4 */	b .L_00008A8C
.L_000088CC:
/* 000088CC 00008990  80 9D 00 DC */	lwz r4, 0xdc(r29)
/* 000088D0 00008994  28 04 00 00 */	cmplwi r4, 0x0
/* 000088D4 00008998  41 82 00 14 */	beq .L_000088E8
/* 000088D8 0000899C  7F E3 FB 78 */	mr r3, r31
/* 000088DC 000089A0  38 A0 00 01 */	li r5, 0x1
/* 000088E0 000089A4  4B FF FC 91 */	bl _hitIsGroupSub
/* 000088E4 000089A8  48 00 01 A8 */	b .L_00008A8C
.L_000088E8:
/* 000088E8 000089AC  38 60 00 00 */	li r3, 0x0
/* 000088EC 000089B0  48 00 01 A0 */	b .L_00008A8C
.L_000088F0:
/* 000088F0 000089B4  83 BE 00 DC */	lwz r29, 0xdc(r30)
/* 000088F4 000089B8  28 1D 00 00 */	cmplwi r29, 0x0
/* 000088F8 000089BC  41 82 00 68 */	beq .L_00008960
/* 000088FC 000089C0  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 00008900 000089C4  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00008904 000089C8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00008908 000089CC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000890C 000089D0  4B FF D9 31 */	bl strcmp
/* 00008910 000089D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 00008914 000089D8  40 82 00 0C */	bne .L_00008920
/* 00008918 000089DC  38 60 00 01 */	li r3, 0x1
/* 0000891C 000089E0  48 00 01 70 */	b .L_00008A8C
.L_00008920:
/* 00008920 000089E4  80 9D 00 D8 */	lwz r4, 0xd8(r29)
/* 00008924 000089E8  28 04 00 00 */	cmplwi r4, 0x0
/* 00008928 000089EC  41 82 00 14 */	beq .L_0000893C
/* 0000892C 000089F0  7F E3 FB 78 */	mr r3, r31
/* 00008930 000089F4  38 A0 00 01 */	li r5, 0x1
/* 00008934 000089F8  4B FF FC 3D */	bl _hitIsGroupSub
/* 00008938 000089FC  48 00 01 54 */	b .L_00008A8C
.L_0000893C:
/* 0000893C 00008A00  80 9D 00 DC */	lwz r4, 0xdc(r29)
/* 00008940 00008A04  28 04 00 00 */	cmplwi r4, 0x0
/* 00008944 00008A08  41 82 00 14 */	beq .L_00008958
/* 00008948 00008A0C  7F E3 FB 78 */	mr r3, r31
/* 0000894C 00008A10  38 A0 00 01 */	li r5, 0x1
/* 00008950 00008A14  4B FF FC 21 */	bl _hitIsGroupSub
/* 00008954 00008A18  48 00 01 38 */	b .L_00008A8C
.L_00008958:
/* 00008958 00008A1C  38 60 00 00 */	li r3, 0x0
/* 0000895C 00008A20  48 00 01 30 */	b .L_00008A8C
.L_00008960:
/* 00008960 00008A24  38 60 00 00 */	li r3, 0x0
/* 00008964 00008A28  48 00 01 28 */	b .L_00008A8C
.L_00008968:
/* 00008968 00008A2C  83 BD 00 DC */	lwz r29, 0xdc(r29)
/* 0000896C 00008A30  28 1D 00 00 */	cmplwi r29, 0x0
/* 00008970 00008A34  41 82 01 10 */	beq .L_00008A80
/* 00008974 00008A38  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 00008978 00008A3C  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 0000897C 00008A40  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00008980 00008A44  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00008984 00008A48  4B FF D8 B9 */	bl strcmp
/* 00008988 00008A4C  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000898C 00008A50  40 82 00 0C */	bne .L_00008998
/* 00008990 00008A54  38 60 00 01 */	li r3, 0x1
/* 00008994 00008A58  48 00 00 F8 */	b .L_00008A8C
.L_00008998:
/* 00008998 00008A5C  83 DD 00 D8 */	lwz r30, 0xd8(r29)
/* 0000899C 00008A60  28 1E 00 00 */	cmplwi r30, 0x0
/* 000089A0 00008A64  41 82 00 68 */	beq .L_00008A08
/* 000089A4 00008A68  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 000089A8 00008A6C  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 000089AC 00008A70  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000089B0 00008A74  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000089B4 00008A78  4B FF D8 89 */	bl strcmp
/* 000089B8 00008A7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 000089BC 00008A80  40 82 00 0C */	bne .L_000089C8
/* 000089C0 00008A84  38 60 00 01 */	li r3, 0x1
/* 000089C4 00008A88  48 00 00 C8 */	b .L_00008A8C
.L_000089C8:
/* 000089C8 00008A8C  80 9E 00 D8 */	lwz r4, 0xd8(r30)
/* 000089CC 00008A90  28 04 00 00 */	cmplwi r4, 0x0
/* 000089D0 00008A94  41 82 00 14 */	beq .L_000089E4
/* 000089D4 00008A98  7F E3 FB 78 */	mr r3, r31
/* 000089D8 00008A9C  38 A0 00 01 */	li r5, 0x1
/* 000089DC 00008AA0  4B FF FB 95 */	bl _hitIsGroupSub
/* 000089E0 00008AA4  48 00 00 AC */	b .L_00008A8C
.L_000089E4:
/* 000089E4 00008AA8  80 9E 00 DC */	lwz r4, 0xdc(r30)
/* 000089E8 00008AAC  28 04 00 00 */	cmplwi r4, 0x0
/* 000089EC 00008AB0  41 82 00 14 */	beq .L_00008A00
/* 000089F0 00008AB4  7F E3 FB 78 */	mr r3, r31
/* 000089F4 00008AB8  38 A0 00 01 */	li r5, 0x1
/* 000089F8 00008ABC  4B FF FB 79 */	bl _hitIsGroupSub
/* 000089FC 00008AC0  48 00 00 90 */	b .L_00008A8C
.L_00008A00:
/* 00008A00 00008AC4  38 60 00 00 */	li r3, 0x0
/* 00008A04 00008AC8  48 00 00 88 */	b .L_00008A8C
.L_00008A08:
/* 00008A08 00008ACC  83 BD 00 DC */	lwz r29, 0xdc(r29)
/* 00008A0C 00008AD0  28 1D 00 00 */	cmplwi r29, 0x0
/* 00008A10 00008AD4  41 82 00 68 */	beq .L_00008A78
/* 00008A14 00008AD8  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 00008A18 00008ADC  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00008A1C 00008AE0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00008A20 00008AE4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00008A24 00008AE8  4B FF D8 19 */	bl strcmp
/* 00008A28 00008AEC  2C 03 00 00 */	cmpwi r3, 0x0
/* 00008A2C 00008AF0  40 82 00 0C */	bne .L_00008A38
/* 00008A30 00008AF4  38 60 00 01 */	li r3, 0x1
/* 00008A34 00008AF8  48 00 00 58 */	b .L_00008A8C
.L_00008A38:
/* 00008A38 00008AFC  80 9D 00 D8 */	lwz r4, 0xd8(r29)
/* 00008A3C 00008B00  28 04 00 00 */	cmplwi r4, 0x0
/* 00008A40 00008B04  41 82 00 14 */	beq .L_00008A54
/* 00008A44 00008B08  7F E3 FB 78 */	mr r3, r31
/* 00008A48 00008B0C  38 A0 00 01 */	li r5, 0x1
/* 00008A4C 00008B10  4B FF FB 25 */	bl _hitIsGroupSub
/* 00008A50 00008B14  48 00 00 3C */	b .L_00008A8C
.L_00008A54:
/* 00008A54 00008B18  80 9D 00 DC */	lwz r4, 0xdc(r29)
/* 00008A58 00008B1C  28 04 00 00 */	cmplwi r4, 0x0
/* 00008A5C 00008B20  41 82 00 14 */	beq .L_00008A70
/* 00008A60 00008B24  7F E3 FB 78 */	mr r3, r31
/* 00008A64 00008B28  38 A0 00 01 */	li r5, 0x1
/* 00008A68 00008B2C  4B FF FB 09 */	bl _hitIsGroupSub
/* 00008A6C 00008B30  48 00 00 20 */	b .L_00008A8C
.L_00008A70:
/* 00008A70 00008B34  38 60 00 00 */	li r3, 0x0
/* 00008A74 00008B38  48 00 00 18 */	b .L_00008A8C
.L_00008A78:
/* 00008A78 00008B3C  38 60 00 00 */	li r3, 0x0
/* 00008A7C 00008B40  48 00 00 10 */	b .L_00008A8C
.L_00008A80:
/* 00008A80 00008B44  38 60 00 00 */	li r3, 0x0
/* 00008A84 00008B48  48 00 00 08 */	b .L_00008A8C
.L_00008A88:
/* 00008A88 00008B4C  38 60 00 00 */	li r3, 0x0
.L_00008A8C:
/* 00008A8C 00008B50  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00008A90 00008B54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00008A94 00008B58  7C 08 03 A6 */	mtlr r0
/* 00008A98 00008B5C  38 21 00 20 */	addi r1, r1, 0x20
/* 00008A9C 00008B60  4E 80 00 20 */	blr
.endfn _hitIsGroupSub

# 0x00005EE0..0x00005FB8 | size: 0xD8
.rodata
.balign 8

# .rodata:0x0 | 0x5EE0 | size: 0xA
.obj str_S_door1_1_aji_00016d48, local
	.string "S_door1_1"
.endobj str_S_door1_1_aji_00016d48

# .rodata:0xA | 0x5EEA | size: 0x2
.obj gap_03_00005EEA_rodata, global
.hidden gap_03_00005EEA_rodata
	.2byte 0x0000
.endobj gap_03_00005EEA_rodata

# .rodata:0xC | 0x5EEC | size: 0xA
.obj str_S_door1_2_aji_00016d54, local
	.string "S_door1_2"
.endobj str_S_door1_2_aji_00016d54

# .rodata:0x16 | 0x5EF6 | size: 0x2
.obj gap_03_00005EF6_rodata, global
.hidden gap_03_00005EF6_rodata
	.2byte 0x0000
.endobj gap_03_00005EF6_rodata

# .rodata:0x18 | 0x5EF8 | size: 0xA
.obj str_S_door2_1_aji_00016d60, local
	.string "S_door2_1"
.endobj str_S_door2_1_aji_00016d60

# .rodata:0x22 | 0x5F02 | size: 0x2
.obj gap_03_00005F02_rodata, global
.hidden gap_03_00005F02_rodata
	.2byte 0x0000
.endobj gap_03_00005F02_rodata

# .rodata:0x24 | 0x5F04 | size: 0xA
.obj str_S_door2_2_aji_00016d6c, local
	.string "S_door2_2"
.endobj str_S_door2_2_aji_00016d6c

# .rodata:0x2E | 0x5F0E | size: 0x2
.obj gap_03_00005F0E_rodata, global
.hidden gap_03_00005F0E_rodata
	.2byte 0x0000
.endobj gap_03_00005F0E_rodata

# .rodata:0x30 | 0x5F10 | size: 0x7
.obj str_w_bero_aji_00016d78, local
	.string "w_bero"
.endobj str_w_bero_aji_00016d78

# .rodata:0x37 | 0x5F17 | size: 0x1
.obj gap_03_00005F17_rodata, global
.hidden gap_03_00005F17_rodata
	.byte 0x00
.endobj gap_03_00005F17_rodata

# .rodata:0x38 | 0x5F18 | size: 0x7
.obj str_moo_02_aji_00016d80, local
	.string "moo_02"
.endobj str_moo_02_aji_00016d80

# .rodata:0x3F | 0x5F1F | size: 0x1
.obj gap_03_00005F1F_rodata, global
.hidden gap_03_00005F1F_rodata
	.byte 0x00
.endobj gap_03_00005F1F_rodata

# .rodata:0x40 | 0x5F20 | size: 0x7
.obj str_n_bero_aji_00016d88, local
	.string "n_bero"
.endobj str_n_bero_aji_00016d88

# .rodata:0x47 | 0x5F27 | size: 0x1
.obj gap_03_00005F27_rodata, global
.hidden gap_03_00005F27_rodata
	.byte 0x00
.endobj gap_03_00005F27_rodata

# .rodata:0x48 | 0x5F28 | size: 0x7
.obj str_e_bero_aji_00016d90, local
	.string "e_bero"
.endobj str_e_bero_aji_00016d90

# .rodata:0x4F | 0x5F2F | size: 0x1
.obj gap_03_00005F2F_rodata, global
.hidden gap_03_00005F2F_rodata
	.byte 0x00
.endobj gap_03_00005F2F_rodata

# .rodata:0x50 | 0x5F30 | size: 0x7
.obj str_aji_00_aji_00016d98, local
	.string "aji_00"
.endobj str_aji_00_aji_00016d98

# .rodata:0x57 | 0x5F37 | size: 0x1
.obj gap_03_00005F37_rodata, global
.hidden gap_03_00005F37_rodata
	.byte 0x00
.endobj gap_03_00005F37_rodata

# .rodata:0x58 | 0x5F38 | size: 0x12
.obj str_stg7_aji_00_00_01_aji_00016da0, local
	.string "stg7_aji_00_00_01"
.endobj str_stg7_aji_00_00_01_aji_00016da0

# .rodata:0x6A | 0x5F4A | size: 0x2
.obj gap_03_00005F4A_rodata, global
.hidden gap_03_00005F4A_rodata
	.2byte 0x0000
.endobj gap_03_00005F4A_rodata

# .rodata:0x6C | 0x5F4C | size: 0xE
.obj str_BGM_STG7_DUN1_aji_00016db4, local
	.string "BGM_STG7_DUN1"
.endobj str_BGM_STG7_DUN1_aji_00016db4

# .rodata:0x7A | 0x5F5A | size: 0x2
.obj gap_03_00005F5A_rodata, global
.hidden gap_03_00005F5A_rodata
	.2byte 0x0000
.endobj gap_03_00005F5A_rodata

# .rodata:0x7C | 0x5F5C | size: 0xE
.obj str_ENV_STG7_AJI1_aji_00016dc4, local
	.string "ENV_STG7_AJI1"
.endobj str_ENV_STG7_AJI1_aji_00016dc4

# .rodata:0x8A | 0x5F6A | size: 0x2
.obj gap_03_00005F6A_rodata, global
.hidden gap_03_00005F6A_rodata
	.2byte 0x0000
.endobj gap_03_00005F6A_rodata

# .rodata:0x8C | 0x5F6C | size: 0x8
.obj str_hosi_01_aji_00016dd4, local
	.string "hosi_01"
.endobj str_hosi_01_aji_00016dd4

# .rodata:0x94 | 0x5F74 | size: 0x8
.obj str_hosi_02_aji_00016ddc, local
	.string "hosi_02"
.endobj str_hosi_02_aji_00016ddc

# .rodata:0x9C | 0x5F7C | size: 0x8
.obj str_hosi_03_aji_00016de4, local
	.string "hosi_03"
.endobj str_hosi_03_aji_00016de4

# .rodata:0xA4 | 0x5F84 | size: 0x5
.obj str_yuka_aji_00016dec, local
	.string "yuka"
.endobj str_yuka_aji_00016dec

# .rodata:0xA9 | 0x5F89 | size: 0x3
.obj gap_03_00005F89_rodata, global
.hidden gap_03_00005F89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005F89_rodata

# .rodata:0xAC | 0x5F8C | size: 0x9
.obj str_kanaami2_aji_00016df4, local
	.string "kanaami2"
.endobj str_kanaami2_aji_00016df4

# .rodata:0xB5 | 0x5F95 | size: 0x3
.obj gap_03_00005F95_rodata, global
.hidden gap_03_00005F95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005F95_rodata

# .rodata:0xB8 | 0x5F98 | size: 0x7
.obj str_A_b_ue_aji_00016e00, local
	.string "A_b_ue"
.endobj str_A_b_ue_aji_00016e00
	.byte 0x00

# .rodata:0xC0 | 0x5FA0 | size: 0x4
.obj float_1_aji_00016e08, local
	.float 1
.endobj float_1_aji_00016e08

# .rodata:0xC4 | 0x5FA4 | size: 0xA
.obj str_A_b_shita_aji_00016e0c, local
	.string "A_b_shita"
.endobj str_A_b_shita_aji_00016e0c
	.2byte 0x0000

# .rodata:0xD0 | 0x5FB0 | size: 0x4
.obj float_neg1_aji_00016e18, local
	.float -1
.endobj float_neg1_aji_00016e18

# .rodata:0xD4 | 0x5FB4 | size: 0x4
.obj gap_03_00005FB4_rodata, global
.hidden gap_03_00005FB4_rodata
	.4byte 0x00000000
.endobj gap_03_00005FB4_rodata

# 0x0002E650..0x0002EA18 | size: 0x3C8
.data
.balign 8

# .data:0x0 | 0x2E650 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2E658 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2E65C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2E660 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2E664 | size: 0x4
.obj gap_04_0002E664_data, global
.hidden gap_04_0002E664_data
	.4byte 0x00000000
.endobj gap_04_0002E664_data

# .data:0x18 | 0x2E668 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2E670 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2E674 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2E678 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2E680 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2E684 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2E688 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2E68C | size: 0x4
.obj gap_04_0002E68C_data, global
.hidden gap_04_0002E68C_data
	.4byte 0x00000000
.endobj gap_04_0002E68C_data

# .data:0x40 | 0x2E690 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2E698 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2E69C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2E6A0 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00016d48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00016d54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x2E6F8 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00016d48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00016d54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x2E750 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7980
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door2_1_aji_00016d60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door2_2_aji_00016d6c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0x158 | 0x2E7A8 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7980
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door2_1_aji_00016d60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door2_2_aji_00016d6c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x1B0 | 0x2E800 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_aji_00016d78
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_moo_02_aji_00016d80
	.4byte str_n_bero_aji_00016d88
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_e_bero_aji_00016d90
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_00_aji_00016d98
	.4byte str_w_bero_aji_00016d78
	.4byte 0x00050005
	.4byte e_door_close
	.4byte e_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x264 | 0x2E8B4 | size: 0x84
.obj evt_hajimete, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg7_aji_00_00_01_aji_00016da0
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000168
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_telop_entry
	.4byte 0x0000000F
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_hajimete

# .data:0x2E8 | 0x2E938 | size: 0xE0
.obj aji_19_init_evt_2_data_2E938, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN1_aji_00016db4
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI1_aji_00016dc4
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_01_aji_00016dd4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_02_aji_00016ddc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_03_aji_00016de4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_yuka_aji_00016dec
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte mario_chk
	.4byte 0x0000006D
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000168
	.4byte 0x0001005C
	.4byte evt_hajimete
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_kanaami2_aji_00016df4
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_19_init_evt_2_data_2E938
