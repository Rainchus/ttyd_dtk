.include "macros.inc"
.file "evt_shuryolight.o"

# 0x0000B330..0x0000BDA4 | size: 0xA74
.text
.balign 4

# .text:0x0 | 0xB330 | size: 0x114
.fn evt_shuryolight_delete, local
/* 0000B330 0000B3F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000B334 0000B3F8  7C 08 02 A6 */	mflr r0
/* 0000B338 0000B3FC  3C 60 00 00 */	lis r3, slhp@ha
/* 0000B33C 0000B400  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000B340 0000B404  38 63 00 00 */	addi r3, r3, slhp@l
/* 0000B344 0000B408  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000B348 0000B40C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B34C 0000B410  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B350 0000B414  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000B354 0000B418  41 82 00 1C */	beq .L_0000B370
/* 0000B358 0000B41C  4B FF AE E5 */	bl evtDeleteID
/* 0000B35C 0000B420  3C 60 00 00 */	lis r3, slhp@ha
/* 0000B360 0000B424  38 00 00 00 */	li r0, 0x0
/* 0000B364 0000B428  38 63 00 00 */	addi r3, r3, slhp@l
/* 0000B368 0000B42C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B36C 0000B430  90 03 00 00 */	stw r0, 0x0(r3)
.L_0000B370:
/* 0000B370 0000B434  3C 60 00 00 */	lis r3, slhp@ha
/* 0000B374 0000B438  38 63 00 00 */	addi r3, r3, slhp@l
/* 0000B378 0000B43C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B37C 0000B440  80 63 00 04 */	lwz r3, 0x4(r3)
/* 0000B380 0000B444  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000B384 0000B448  41 82 00 1C */	beq .L_0000B3A0
/* 0000B388 0000B44C  4B FF AE B5 */	bl evtDeleteID
/* 0000B38C 0000B450  3C 60 00 00 */	lis r3, slhp@ha
/* 0000B390 0000B454  38 00 00 00 */	li r0, 0x0
/* 0000B394 0000B458  38 63 00 00 */	addi r3, r3, slhp@l
/* 0000B398 0000B45C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B39C 0000B460  90 03 00 04 */	stw r0, 0x4(r3)
.L_0000B3A0:
/* 0000B3A0 0000B464  3C 60 00 00 */	lis r3, slhp@ha
/* 0000B3A4 0000B468  38 63 00 00 */	addi r3, r3, slhp@l
/* 0000B3A8 0000B46C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B3AC 0000B470  80 63 00 08 */	lwz r3, 0x8(r3)
/* 0000B3B0 0000B474  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000B3B4 0000B478  41 82 00 1C */	beq .L_0000B3D0
/* 0000B3B8 0000B47C  4B FF AE 85 */	bl evtDeleteID
/* 0000B3BC 0000B480  3C 60 00 00 */	lis r3, slhp@ha
/* 0000B3C0 0000B484  38 00 00 00 */	li r0, 0x0
/* 0000B3C4 0000B488  38 63 00 00 */	addi r3, r3, slhp@l
/* 0000B3C8 0000B48C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B3CC 0000B490  90 03 00 08 */	stw r0, 0x8(r3)
.L_0000B3D0:
/* 0000B3D0 0000B494  3C 60 00 00 */	lis r3, slhp@ha
/* 0000B3D4 0000B498  3B A0 00 00 */	li r29, 0x0
/* 0000B3D8 0000B49C  3B C3 00 00 */	addi r30, r3, slhp@l
/* 0000B3DC 0000B4A0  3B E0 00 00 */	li r31, 0x0
.L_0000B3E0:
/* 0000B3E0 0000B4A4  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 0000B3E4 0000B4A8  38 1F 00 0C */	addi r0, r31, 0xc
/* 0000B3E8 0000B4AC  7C 63 00 2E */	lwzx r3, r3, r0
/* 0000B3EC 0000B4B0  4B FF AE 51 */	bl npcDeleteGroup
/* 0000B3F0 0000B4B4  3B BD 00 01 */	addi r29, r29, 0x1
/* 0000B3F4 0000B4B8  3B FF 00 14 */	addi r31, r31, 0x14
/* 0000B3F8 0000B4BC  2C 1D 00 05 */	cmpwi r29, 0x5
/* 0000B3FC 0000B4C0  41 80 FF E4 */	blt .L_0000B3E0
/* 0000B400 0000B4C4  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 0000B404 0000B4C8  3C 60 00 00 */	lis r3, slhp@ha
/* 0000B408 0000B4CC  38 A4 00 00 */	addi r5, r4, mapalloc_base_ptr@l
/* 0000B40C 0000B4D0  38 83 00 00 */	addi r4, r3, slhp@l
/* 0000B410 0000B4D4  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000B414 0000B4D8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B418 0000B4DC  4B FF AE 25 */	bl _mapFree
/* 0000B41C 0000B4E0  3C 60 00 00 */	lis r3, slhp@ha
/* 0000B420 0000B4E4  38 00 00 00 */	li r0, 0x0
/* 0000B424 0000B4E8  38 83 00 00 */	addi r4, r3, slhp@l
/* 0000B428 0000B4EC  38 60 00 02 */	li r3, 0x2
/* 0000B42C 0000B4F0  90 04 00 00 */	stw r0, 0x0(r4)
/* 0000B430 0000B4F4  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 0000B434 0000B4F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000B438 0000B4FC  7C 08 03 A6 */	mtlr r0
/* 0000B43C 0000B500  38 21 00 20 */	addi r1, r1, 0x20
/* 0000B440 0000B504  4E 80 00 20 */	blr
.endfn evt_shuryolight_delete

# .text:0x114 | 0xB444 | size: 0x88
.fn evt_shuryolight_run_tue_evt, local
/* 0000B444 0000B508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000B448 0000B50C  7C 08 02 A6 */	mflr r0
/* 0000B44C 0000B510  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000B450 0000B514  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000B454 0000B518  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000B458 0000B51C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B45C 0000B520  4B FF AD E1 */	bl evtGetValue
/* 0000B460 0000B524  3C 80 00 00 */	lis r4, slhp@ha
/* 0000B464 0000B528  7C 7E 1B 78 */	mr r30, r3
/* 0000B468 0000B52C  38 84 00 00 */	addi r4, r4, slhp@l
/* 0000B46C 0000B530  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B470 0000B534  83 E4 00 08 */	lwz r31, 0x8(r4)
/* 0000B474 0000B538  7F E3 FB 78 */	mr r3, r31
/* 0000B478 0000B53C  4B FF AD C5 */	bl evtCheckID
/* 0000B47C 0000B540  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000B480 0000B544  41 82 00 0C */	beq .L_0000B48C
/* 0000B484 0000B548  7F E3 FB 78 */	mr r3, r31
/* 0000B488 0000B54C  4B FF AD B5 */	bl evtDeleteID
.L_0000B48C:
/* 0000B48C 0000B550  7F C3 F3 78 */	mr r3, r30
/* 0000B490 0000B554  38 80 00 00 */	li r4, 0x0
/* 0000B494 0000B558  38 A0 00 00 */	li r5, 0x0
/* 0000B498 0000B55C  38 C0 00 00 */	li r6, 0x0
/* 0000B49C 0000B560  4B FF AD A1 */	bl evtEntryType
/* 0000B4A0 0000B564  3C 80 00 00 */	lis r4, slhp@ha
/* 0000B4A4 0000B568  80 03 01 5C */	lwz r0, 0x15c(r3)
/* 0000B4A8 0000B56C  38 84 00 00 */	addi r4, r4, slhp@l
/* 0000B4AC 0000B570  38 60 00 02 */	li r3, 0x2
/* 0000B4B0 0000B574  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B4B4 0000B578  90 04 00 08 */	stw r0, 0x8(r4)
/* 0000B4B8 0000B57C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000B4BC 0000B580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000B4C0 0000B584  7C 08 03 A6 */	mtlr r0
/* 0000B4C4 0000B588  38 21 00 10 */	addi r1, r1, 0x10
/* 0000B4C8 0000B58C  4E 80 00 20 */	blr
.endfn evt_shuryolight_run_tue_evt

# .text:0x19C | 0xB4CC | size: 0x88
.fn evt_shuryolight_run_head_evt, local
/* 0000B4CC 0000B590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000B4D0 0000B594  7C 08 02 A6 */	mflr r0
/* 0000B4D4 0000B598  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000B4D8 0000B59C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000B4DC 0000B5A0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000B4E0 0000B5A4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B4E4 0000B5A8  4B FF AD 59 */	bl evtGetValue
/* 0000B4E8 0000B5AC  3C 80 00 00 */	lis r4, slhp@ha
/* 0000B4EC 0000B5B0  7C 7E 1B 78 */	mr r30, r3
/* 0000B4F0 0000B5B4  38 84 00 00 */	addi r4, r4, slhp@l
/* 0000B4F4 0000B5B8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B4F8 0000B5BC  83 E4 00 04 */	lwz r31, 0x4(r4)
/* 0000B4FC 0000B5C0  7F E3 FB 78 */	mr r3, r31
/* 0000B500 0000B5C4  4B FF AD 3D */	bl evtCheckID
/* 0000B504 0000B5C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000B508 0000B5CC  41 82 00 0C */	beq .L_0000B514
/* 0000B50C 0000B5D0  7F E3 FB 78 */	mr r3, r31
/* 0000B510 0000B5D4  4B FF AD 2D */	bl evtDeleteID
.L_0000B514:
/* 0000B514 0000B5D8  7F C3 F3 78 */	mr r3, r30
/* 0000B518 0000B5DC  38 80 00 00 */	li r4, 0x0
/* 0000B51C 0000B5E0  38 A0 00 00 */	li r5, 0x0
/* 0000B520 0000B5E4  38 C0 00 00 */	li r6, 0x0
/* 0000B524 0000B5E8  4B FF AD 19 */	bl evtEntryType
/* 0000B528 0000B5EC  3C 80 00 00 */	lis r4, slhp@ha
/* 0000B52C 0000B5F0  80 03 01 5C */	lwz r0, 0x15c(r3)
/* 0000B530 0000B5F4  38 84 00 00 */	addi r4, r4, slhp@l
/* 0000B534 0000B5F8  38 60 00 02 */	li r3, 0x2
/* 0000B538 0000B5FC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B53C 0000B600  90 04 00 04 */	stw r0, 0x4(r4)
/* 0000B540 0000B604  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000B544 0000B608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000B548 0000B60C  7C 08 03 A6 */	mtlr r0
/* 0000B54C 0000B610  38 21 00 10 */	addi r1, r1, 0x10
/* 0000B550 0000B614  4E 80 00 20 */	blr
.endfn evt_shuryolight_run_head_evt

# .text:0x224 | 0xB554 | size: 0x88
.fn evt_shuryolight_run_power_evt, local
/* 0000B554 0000B618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000B558 0000B61C  7C 08 02 A6 */	mflr r0
/* 0000B55C 0000B620  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000B560 0000B624  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000B564 0000B628  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000B568 0000B62C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B56C 0000B630  4B FF AC D1 */	bl evtGetValue
/* 0000B570 0000B634  3C 80 00 00 */	lis r4, slhp@ha
/* 0000B574 0000B638  7C 7E 1B 78 */	mr r30, r3
/* 0000B578 0000B63C  38 84 00 00 */	addi r4, r4, slhp@l
/* 0000B57C 0000B640  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B580 0000B644  83 E4 00 00 */	lwz r31, 0x0(r4)
/* 0000B584 0000B648  7F E3 FB 78 */	mr r3, r31
/* 0000B588 0000B64C  4B FF AC B5 */	bl evtCheckID
/* 0000B58C 0000B650  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000B590 0000B654  41 82 00 0C */	beq .L_0000B59C
/* 0000B594 0000B658  7F E3 FB 78 */	mr r3, r31
/* 0000B598 0000B65C  4B FF AC A5 */	bl evtDeleteID
.L_0000B59C:
/* 0000B59C 0000B660  7F C3 F3 78 */	mr r3, r30
/* 0000B5A0 0000B664  38 80 00 00 */	li r4, 0x0
/* 0000B5A4 0000B668  38 A0 00 00 */	li r5, 0x0
/* 0000B5A8 0000B66C  38 C0 00 00 */	li r6, 0x0
/* 0000B5AC 0000B670  4B FF AC 91 */	bl evtEntryType
/* 0000B5B0 0000B674  3C 80 00 00 */	lis r4, slhp@ha
/* 0000B5B4 0000B678  80 03 01 5C */	lwz r0, 0x15c(r3)
/* 0000B5B8 0000B67C  38 84 00 00 */	addi r4, r4, slhp@l
/* 0000B5BC 0000B680  38 60 00 02 */	li r3, 0x2
/* 0000B5C0 0000B684  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B5C4 0000B688  90 04 00 00 */	stw r0, 0x0(r4)
/* 0000B5C8 0000B68C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000B5CC 0000B690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000B5D0 0000B694  7C 08 03 A6 */	mtlr r0
/* 0000B5D4 0000B698  38 21 00 10 */	addi r1, r1, 0x10
/* 0000B5D8 0000B69C  4E 80 00 20 */	blr
.endfn evt_shuryolight_run_power_evt

# .text:0x2AC | 0xB5DC | size: 0x164
.fn evt_shuryolight_run_evt_2_text_B5DC, global
/* 0000B5DC 0000B6A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000B5E0 0000B6A4  7C 08 02 A6 */	mflr r0
/* 0000B5E4 0000B6A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000B5E8 0000B6AC  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 0000B5EC 0000B6B0  7C 7F 1B 78 */	mr r31, r3
/* 0000B5F0 0000B6B4  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 0000B5F4 0000B6B8  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 0000B5F8 0000B6BC  4B FF AC 45 */	bl evtGetValue
/* 0000B5FC 0000B6C0  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 0000B600 0000B6C4  7C 7D 1B 78 */	mr r29, r3
/* 0000B604 0000B6C8  7F E3 FB 78 */	mr r3, r31
/* 0000B608 0000B6CC  4B FF AC 35 */	bl evtGetValue
/* 0000B60C 0000B6D0  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 0000B610 0000B6D4  7C 7C 1B 78 */	mr r28, r3
/* 0000B614 0000B6D8  7F E3 FB 78 */	mr r3, r31
/* 0000B618 0000B6DC  4B FF AC 25 */	bl evtGetValue
/* 0000B61C 0000B6E0  28 1D 00 00 */	cmplwi r29, 0x0
/* 0000B620 0000B6E4  7C 7F 1B 78 */	mr r31, r3
/* 0000B624 0000B6E8  41 82 00 54 */	beq .L_0000B678
/* 0000B628 0000B6EC  3C 60 00 00 */	lis r3, slhp@ha
/* 0000B62C 0000B6F0  38 63 00 00 */	addi r3, r3, slhp@l
/* 0000B630 0000B6F4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B634 0000B6F8  83 C3 00 00 */	lwz r30, 0x0(r3)
/* 0000B638 0000B6FC  7F C3 F3 78 */	mr r3, r30
/* 0000B63C 0000B700  4B FF AC 01 */	bl evtCheckID
/* 0000B640 0000B704  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000B644 0000B708  41 82 00 0C */	beq .L_0000B650
/* 0000B648 0000B70C  7F C3 F3 78 */	mr r3, r30
/* 0000B64C 0000B710  4B FF AB F1 */	bl evtDeleteID
.L_0000B650:
/* 0000B650 0000B714  7F A3 EB 78 */	mr r3, r29
/* 0000B654 0000B718  38 80 00 00 */	li r4, 0x0
/* 0000B658 0000B71C  38 A0 00 00 */	li r5, 0x0
/* 0000B65C 0000B720  38 C0 00 00 */	li r6, 0x0
/* 0000B660 0000B724  4B FF AB DD */	bl evtEntryType
/* 0000B664 0000B728  3C 80 00 00 */	lis r4, slhp@ha
/* 0000B668 0000B72C  80 03 01 5C */	lwz r0, 0x15c(r3)
/* 0000B66C 0000B730  38 64 00 00 */	addi r3, r4, slhp@l
/* 0000B670 0000B734  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B674 0000B738  90 03 00 00 */	stw r0, 0x0(r3)
.L_0000B678:
/* 0000B678 0000B73C  28 1C 00 00 */	cmplwi r28, 0x0
/* 0000B67C 0000B740  41 82 00 54 */	beq .L_0000B6D0
/* 0000B680 0000B744  3C 60 00 00 */	lis r3, slhp@ha
/* 0000B684 0000B748  38 63 00 00 */	addi r3, r3, slhp@l
/* 0000B688 0000B74C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B68C 0000B750  83 C3 00 04 */	lwz r30, 0x4(r3)
/* 0000B690 0000B754  7F C3 F3 78 */	mr r3, r30
/* 0000B694 0000B758  4B FF AB A9 */	bl evtCheckID
/* 0000B698 0000B75C  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000B69C 0000B760  41 82 00 0C */	beq .L_0000B6A8
/* 0000B6A0 0000B764  7F C3 F3 78 */	mr r3, r30
/* 0000B6A4 0000B768  4B FF AB 99 */	bl evtDeleteID
.L_0000B6A8:
/* 0000B6A8 0000B76C  7F 83 E3 78 */	mr r3, r28
/* 0000B6AC 0000B770  38 80 00 00 */	li r4, 0x0
/* 0000B6B0 0000B774  38 A0 00 00 */	li r5, 0x0
/* 0000B6B4 0000B778  38 C0 00 00 */	li r6, 0x0
/* 0000B6B8 0000B77C  4B FF AB 85 */	bl evtEntryType
/* 0000B6BC 0000B780  3C 80 00 00 */	lis r4, slhp@ha
/* 0000B6C0 0000B784  80 03 01 5C */	lwz r0, 0x15c(r3)
/* 0000B6C4 0000B788  38 64 00 00 */	addi r3, r4, slhp@l
/* 0000B6C8 0000B78C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B6CC 0000B790  90 03 00 04 */	stw r0, 0x4(r3)
.L_0000B6D0:
/* 0000B6D0 0000B794  28 1F 00 00 */	cmplwi r31, 0x0
/* 0000B6D4 0000B798  41 82 00 54 */	beq .L_0000B728
/* 0000B6D8 0000B79C  3C 60 00 00 */	lis r3, slhp@ha
/* 0000B6DC 0000B7A0  38 63 00 00 */	addi r3, r3, slhp@l
/* 0000B6E0 0000B7A4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B6E4 0000B7A8  83 C3 00 08 */	lwz r30, 0x8(r3)
/* 0000B6E8 0000B7AC  7F C3 F3 78 */	mr r3, r30
/* 0000B6EC 0000B7B0  4B FF AB 51 */	bl evtCheckID
/* 0000B6F0 0000B7B4  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000B6F4 0000B7B8  41 82 00 0C */	beq .L_0000B700
/* 0000B6F8 0000B7BC  7F C3 F3 78 */	mr r3, r30
/* 0000B6FC 0000B7C0  4B FF AB 41 */	bl evtDeleteID
.L_0000B700:
/* 0000B700 0000B7C4  7F E3 FB 78 */	mr r3, r31
/* 0000B704 0000B7C8  38 80 00 00 */	li r4, 0x0
/* 0000B708 0000B7CC  38 A0 00 00 */	li r5, 0x0
/* 0000B70C 0000B7D0  38 C0 00 00 */	li r6, 0x0
/* 0000B710 0000B7D4  4B FF AB 2D */	bl evtEntryType
/* 0000B714 0000B7D8  3C 80 00 00 */	lis r4, slhp@ha
/* 0000B718 0000B7DC  80 03 01 5C */	lwz r0, 0x15c(r3)
/* 0000B71C 0000B7E0  38 64 00 00 */	addi r3, r4, slhp@l
/* 0000B720 0000B7E4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B724 0000B7E8  90 03 00 08 */	stw r0, 0x8(r3)
.L_0000B728:
/* 0000B728 0000B7EC  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 0000B72C 0000B7F0  38 60 00 02 */	li r3, 0x2
/* 0000B730 0000B7F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000B734 0000B7F8  7C 08 03 A6 */	mtlr r0
/* 0000B738 0000B7FC  38 21 00 20 */	addi r1, r1, 0x20
/* 0000B73C 0000B800  4E 80 00 20 */	blr
.endfn evt_shuryolight_run_evt_2_text_B5DC

# .text:0x410 | 0xB740 | size: 0x58
.fn evt_shuryolight_get_status, local
/* 0000B740 0000B804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000B744 0000B808  7C 08 02 A6 */	mflr r0
/* 0000B748 0000B80C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000B74C 0000B810  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000B750 0000B814  7C 7E 1B 78 */	mr r30, r3
/* 0000B754 0000B818  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000B758 0000B81C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000B75C 0000B820  4B FF AA E1 */	bl evtGetValue
/* 0000B760 0000B824  1C A3 00 14 */	mulli r5, r3, 0x14
/* 0000B764 0000B828  3C C0 00 00 */	lis r6, slhp@ha
/* 0000B768 0000B82C  80 C6 00 00 */	lwz r6, slhp@l(r6)
/* 0000B76C 0000B830  7F C3 F3 78 */	mr r3, r30
/* 0000B770 0000B834  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000B774 0000B838  38 05 00 14 */	addi r0, r5, 0x14
/* 0000B778 0000B83C  7C A6 00 2E */	lwzx r5, r6, r0
/* 0000B77C 0000B840  4B FF AA C1 */	bl evtSetValue
/* 0000B780 0000B844  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000B784 0000B848  38 60 00 02 */	li r3, 0x2
/* 0000B788 0000B84C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000B78C 0000B850  7C 08 03 A6 */	mtlr r0
/* 0000B790 0000B854  38 21 00 10 */	addi r1, r1, 0x10
/* 0000B794 0000B858  4E 80 00 20 */	blr
.endfn evt_shuryolight_get_status

# .text:0x468 | 0xB798 | size: 0x9C
.fn evt_shuryolight_get_anim_time, local
/* 0000B798 0000B85C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000B79C 0000B860  7C 08 02 A6 */	mflr r0
/* 0000B7A0 0000B864  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000B7A4 0000B868  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000B7A8 0000B86C  7C 7E 1B 78 */	mr r30, r3
/* 0000B7AC 0000B870  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000B7B0 0000B874  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000B7B4 0000B878  4B FF AA 89 */	bl evtGetValue
/* 0000B7B8 0000B87C  1C 63 00 14 */	mulli r3, r3, 0x14
/* 0000B7BC 0000B880  3C 80 00 00 */	lis r4, slhp@ha
/* 0000B7C0 0000B884  38 84 00 00 */	addi r4, r4, slhp@l
/* 0000B7C4 0000B888  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B7C8 0000B88C  38 03 00 0C */	addi r0, r3, 0xc
/* 0000B7CC 0000B890  7C 64 00 2E */	lwzx r3, r4, r0
/* 0000B7D0 0000B894  80 63 01 04 */	lwz r3, 0x104(r3)
/* 0000B7D4 0000B898  4B FF AA 69 */	bl animPoseGetAnimDataPtr
/* 0000B7D8 0000B89C  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 0000B7DC 0000B8A0  3C 80 00 00 */	lis r4, float_1000_aji_000179c0@ha
/* 0000B7E0 0000B8A4  C0 64 00 00 */	lfs f3, float_1000_aji_000179c0@l(r4)
/* 0000B7E4 0000B8A8  3C 60 00 00 */	lis r3, float_60_aji_000179c4@ha
/* 0000B7E8 0000B8AC  C0 45 00 08 */	lfs f2, 0x8(r5)
/* 0000B7EC 0000B8B0  38 83 00 00 */	addi r4, r3, float_60_aji_000179c4@l
/* 0000B7F0 0000B8B4  C0 25 00 04 */	lfs f1, 0x4(r5)
/* 0000B7F4 0000B8B8  7F C3 F3 78 */	mr r3, r30
/* 0000B7F8 0000B8BC  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 0000B7FC 0000B8C0  EC 22 08 28 */	fsubs f1, f2, f1
/* 0000B800 0000B8C4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000B804 0000B8C8  EC 23 00 72 */	fmuls f1, f3, f1
/* 0000B808 0000B8CC  EC 01 00 24 */	fdivs f0, f1, f0
/* 0000B80C 0000B8D0  FC 00 00 1E */	fctiwz f0, f0
/* 0000B810 0000B8D4  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000B814 0000B8D8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 0000B818 0000B8DC  4B FF AA 25 */	bl evtSetValue
/* 0000B81C 0000B8E0  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0000B820 0000B8E4  38 60 00 02 */	li r3, 0x2
/* 0000B824 0000B8E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000B828 0000B8EC  7C 08 03 A6 */	mtlr r0
/* 0000B82C 0000B8F0  38 21 00 20 */	addi r1, r1, 0x20
/* 0000B830 0000B8F4  4E 80 00 20 */	blr
.endfn evt_shuryolight_get_anim_time

# .text:0x504 | 0xB834 | size: 0x64
.fn evt_shuryolight_wait_anim_end, local
/* 0000B834 0000B8F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000B838 0000B8FC  7C 08 02 A6 */	mflr r0
/* 0000B83C 0000B900  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000B840 0000B904  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000B844 0000B908  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B848 0000B90C  4B FF A9 F5 */	bl evtGetValue
/* 0000B84C 0000B910  1C 63 00 14 */	mulli r3, r3, 0x14
/* 0000B850 0000B914  3C 80 00 00 */	lis r4, slhp@ha
/* 0000B854 0000B918  38 84 00 00 */	addi r4, r4, slhp@l
/* 0000B858 0000B91C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B85C 0000B920  38 03 00 0C */	addi r0, r3, 0xc
/* 0000B860 0000B924  7C 64 00 2E */	lwzx r3, r4, r0
/* 0000B864 0000B928  80 63 01 04 */	lwz r3, 0x104(r3)
/* 0000B868 0000B92C  4B FF A9 D5 */	bl animPoseGetLoopTimes
/* 0000B86C 0000B930  3C 60 00 00 */	lis r3, float_1_aji_000179c8@ha
/* 0000B870 0000B934  C0 03 00 00 */	lfs f0, float_1_aji_000179c8@l(r3)
/* 0000B874 0000B938  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 0000B878 0000B93C  40 80 00 0C */	bge .L_0000B884
/* 0000B87C 0000B940  38 60 00 00 */	li r3, 0x0
/* 0000B880 0000B944  48 00 00 08 */	b .L_0000B888
.L_0000B884:
/* 0000B884 0000B948  38 60 00 02 */	li r3, 0x2
.L_0000B888:
/* 0000B888 0000B94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000B88C 0000B950  7C 08 03 A6 */	mtlr r0
/* 0000B890 0000B954  38 21 00 10 */	addi r1, r1, 0x10
/* 0000B894 0000B958  4E 80 00 20 */	blr
.endfn evt_shuryolight_wait_anim_end

# .text:0x568 | 0xB898 | size: 0x7C
.fn evt_shuryolight_set_anim, local
/* 0000B898 0000B95C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000B89C 0000B960  7C 08 02 A6 */	mflr r0
/* 0000B8A0 0000B964  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000B8A4 0000B968  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000B8A8 0000B96C  7C 7E 1B 78 */	mr r30, r3
/* 0000B8AC 0000B970  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000B8B0 0000B974  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000B8B4 0000B978  4B FF A9 89 */	bl evtGetValue
/* 0000B8B8 0000B97C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000B8BC 0000B980  7C 7F 1B 78 */	mr r31, r3
/* 0000B8C0 0000B984  7F C3 F3 78 */	mr r3, r30
/* 0000B8C4 0000B988  4B FF A9 79 */	bl evtGetValue
/* 0000B8C8 0000B98C  1C 9F 00 14 */	mulli r4, r31, 0x14
/* 0000B8CC 0000B990  3C A0 00 00 */	lis r5, slhp@ha
/* 0000B8D0 0000B994  80 C5 00 00 */	lwz r6, slhp@l(r5)
/* 0000B8D4 0000B998  54 60 10 3A */	slwi r0, r3, 2
/* 0000B8D8 0000B99C  38 A0 00 01 */	li r5, 0x1
/* 0000B8DC 0000B9A0  38 84 00 0C */	addi r4, r4, 0xc
/* 0000B8E0 0000B9A4  7C 86 22 14 */	add r4, r6, r4
/* 0000B8E4 0000B9A8  90 64 00 08 */	stw r3, 0x8(r4)
/* 0000B8E8 0000B9AC  80 64 00 00 */	lwz r3, 0x0(r4)
/* 0000B8EC 0000B9B0  80 84 00 04 */	lwz r4, 0x4(r4)
/* 0000B8F0 0000B9B4  80 63 01 04 */	lwz r3, 0x104(r3)
/* 0000B8F4 0000B9B8  7C 84 00 2E */	lwzx r4, r4, r0
/* 0000B8F8 0000B9BC  4B FF A9 45 */	bl animPoseSetAnim
/* 0000B8FC 0000B9C0  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000B900 0000B9C4  38 60 00 02 */	li r3, 0x2
/* 0000B904 0000B9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000B908 0000B9CC  7C 08 03 A6 */	mtlr r0
/* 0000B90C 0000B9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 0000B910 0000B9D4  4E 80 00 20 */	blr
.endfn evt_shuryolight_set_anim

# .text:0x5E4 | 0xB914 | size: 0x364
.fn evt_shuryolight_init_2_text_B914, global
/* 0000B914 0000B9D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000B918 0000B9DC  7C 08 02 A6 */	mflr r0
/* 0000B91C 0000B9E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000B920 0000B9E4  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000B924 0000B9E8  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000B928 0000B9EC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B92C 0000B9F0  4B FF A9 11 */	bl evtGetValue
/* 0000B930 0000B9F4  4B FF A9 0D */	bl npcNameToPtr
/* 0000B934 0000B9F8  3C 80 00 00 */	lis r4, str_c_shuryo_aji_000179d8@ha
/* 0000B938 0000B9FC  3C A0 00 00 */	lis r5, str_light_power_aji_000179cc@ha
/* 0000B93C 0000BA00  7C 7F 1B 78 */	mr r31, r3
/* 0000B940 0000BA04  38 84 00 00 */	addi r4, r4, str_c_shuryo_aji_000179d8@l
/* 0000B944 0000BA08  38 65 00 00 */	addi r3, r5, str_light_power_aji_000179cc@l
/* 0000B948 0000BA0C  4B FF A8 F5 */	bl npcEntry
/* 0000B94C 0000BA10  3C 60 00 00 */	lis r3, str_light_head_1_aji_000179e4@ha
/* 0000B950 0000BA14  3C 80 00 00 */	lis r4, str_c_shuryo_aji_000179d8@ha
/* 0000B954 0000BA18  38 63 00 00 */	addi r3, r3, str_light_head_1_aji_000179e4@l
/* 0000B958 0000BA1C  38 84 00 00 */	addi r4, r4, str_c_shuryo_aji_000179d8@l
/* 0000B95C 0000BA20  4B FF A8 E1 */	bl npcEntry
/* 0000B960 0000BA24  3C 60 00 00 */	lis r3, str_light_head_2_aji_000179f4@ha
/* 0000B964 0000BA28  3C 80 00 00 */	lis r4, str_c_shuryo_aji_000179d8@ha
/* 0000B968 0000BA2C  38 63 00 00 */	addi r3, r3, str_light_head_2_aji_000179f4@l
/* 0000B96C 0000BA30  38 84 00 00 */	addi r4, r4, str_c_shuryo_aji_000179d8@l
/* 0000B970 0000BA34  4B FF A8 CD */	bl npcEntry
/* 0000B974 0000BA38  3C 60 00 00 */	lis r3, str_light_head_3_aji_00017a04@ha
/* 0000B978 0000BA3C  3C 80 00 00 */	lis r4, str_c_shuryo_aji_000179d8@ha
/* 0000B97C 0000BA40  38 63 00 00 */	addi r3, r3, str_light_head_3_aji_00017a04@l
/* 0000B980 0000BA44  38 84 00 00 */	addi r4, r4, str_c_shuryo_aji_000179d8@l
/* 0000B984 0000BA48  4B FF A8 B9 */	bl npcEntry
/* 0000B988 0000BA4C  3C 60 00 00 */	lis r3, str_light_tue_1_aji_00017a14@ha
/* 0000B98C 0000BA50  3C 80 00 00 */	lis r4, str_c_shuryo_aji_000179d8@ha
/* 0000B990 0000BA54  38 63 00 00 */	addi r3, r3, str_light_tue_1_aji_00017a14@l
/* 0000B994 0000BA58  38 84 00 00 */	addi r4, r4, str_c_shuryo_aji_000179d8@l
/* 0000B998 0000BA5C  4B FF A8 A5 */	bl npcEntry
/* 0000B99C 0000BA60  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 0000B9A0 0000BA64  38 80 00 70 */	li r4, 0x70
/* 0000B9A4 0000BA68  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000B9A8 0000BA6C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B9AC 0000BA70  4B FF A8 91 */	bl _mapAlloc
/* 0000B9B0 0000BA74  3C A0 00 00 */	lis r5, slhp@ha
/* 0000B9B4 0000BA78  3C 80 00 00 */	lis r4, str_light_power_aji_000179cc@ha
/* 0000B9B8 0000BA7C  38 C5 00 00 */	addi r6, r5, slhp@l
/* 0000B9BC 0000BA80  38 A0 00 00 */	li r5, 0x0
/* 0000B9C0 0000BA84  90 66 00 00 */	stw r3, 0x0(r6)
/* 0000B9C4 0000BA88  38 04 00 00 */	addi r0, r4, str_light_power_aji_000179cc@l
/* 0000B9C8 0000BA8C  90 A3 00 00 */	stw r5, 0x0(r3)
/* 0000B9CC 0000BA90  7C 03 03 78 */	mr r3, r0
/* 0000B9D0 0000BA94  80 86 00 00 */	lwz r4, 0x0(r6)
/* 0000B9D4 0000BA98  90 A4 00 04 */	stw r5, 0x4(r4)
/* 0000B9D8 0000BA9C  80 86 00 00 */	lwz r4, 0x0(r6)
/* 0000B9DC 0000BAA0  90 A4 00 08 */	stw r5, 0x8(r4)
/* 0000B9E0 0000BAA4  80 86 00 00 */	lwz r4, 0x0(r6)
/* 0000B9E4 0000BAA8  3B C4 00 0C */	addi r30, r4, 0xc
/* 0000B9E8 0000BAAC  4B FF A8 55 */	bl npcNameToPtr
/* 0000B9EC 0000BAB0  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 0000B9F0 0000BAB4  7C 7D 1B 78 */	mr r29, r3
/* 0000B9F4 0000BAB8  3C 60 00 00 */	lis r3, str_locator6_aji_00017a20@ha
/* 0000B9F8 0000BABC  3C A0 00 00 */	lis r5, green_light_anim@ha
/* 0000B9FC 0000BAC0  38 83 00 00 */	addi r4, r3, str_locator6_aji_00017a20@l
/* 0000BA00 0000BAC4  60 C3 00 A0 */	ori r3, r6, 0xa0
/* 0000BA04 0000BAC8  38 05 00 00 */	addi r0, r5, green_light_anim@l
/* 0000BA08 0000BACC  90 7D 00 00 */	stw r3, 0x0(r29)
/* 0000BA0C 0000BAD0  93 BE 00 00 */	stw r29, 0x0(r30)
/* 0000BA10 0000BAD4  90 1E 00 04 */	stw r0, 0x4(r30)
/* 0000BA14 0000BAD8  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 0000BA18 0000BADC  4B FF A8 25 */	bl animPoseGetGroupIdx
/* 0000BA1C 0000BAE0  90 7E 00 0C */	stw r3, 0xc(r30)
/* 0000BA20 0000BAE4  3C 60 00 00 */	lis r3, str_pPlaneShape34_aji_00017a2c@ha
/* 0000BA24 0000BAE8  38 83 00 00 */	addi r4, r3, str_pPlaneShape34_aji_00017a2c@l
/* 0000BA28 0000BAEC  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 0000BA2C 0000BAF0  4B FF A8 11 */	bl animPoseGetShapeIdx
/* 0000BA30 0000BAF4  90 7E 00 10 */	stw r3, 0x10(r30)
/* 0000BA34 0000BAF8  3C 80 00 00 */	lis r4, slhp@ha
/* 0000BA38 0000BAFC  38 00 00 01 */	li r0, 0x1
/* 0000BA3C 0000BB00  38 A0 00 01 */	li r5, 0x1
/* 0000BA40 0000BB04  80 84 00 00 */	lwz r4, slhp@l(r4)
/* 0000BA44 0000BB08  90 04 00 14 */	stw r0, 0x14(r4)
/* 0000BA48 0000BB0C  80 64 00 0C */	lwz r3, 0xc(r4)
/* 0000BA4C 0000BB10  80 84 00 10 */	lwz r4, 0x10(r4)
/* 0000BA50 0000BB14  80 63 01 04 */	lwz r3, 0x104(r3)
/* 0000BA54 0000BB18  80 84 00 04 */	lwz r4, 0x4(r4)
/* 0000BA58 0000BB1C  4B FF A7 E5 */	bl animPoseSetAnim
/* 0000BA5C 0000BB20  3C 60 00 00 */	lis r3, str_light_head_1_aji_000179e4@ha
/* 0000BA60 0000BB24  38 63 00 00 */	addi r3, r3, str_light_head_1_aji_000179e4@l
/* 0000BA64 0000BB28  4B FF A7 D9 */	bl npcNameToPtr
/* 0000BA68 0000BB2C  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 0000BA6C 0000BB30  7C 7D 1B 78 */	mr r29, r3
/* 0000BA70 0000BB34  3C 60 00 00 */	lis r3, str_locator9_aji_00017a3c@ha
/* 0000BA74 0000BB38  3C A0 00 00 */	lis r5, orange_light_anim@ha
/* 0000BA78 0000BB3C  38 83 00 00 */	addi r4, r3, str_locator9_aji_00017a3c@l
/* 0000BA7C 0000BB40  60 C3 00 A0 */	ori r3, r6, 0xa0
/* 0000BA80 0000BB44  38 05 00 00 */	addi r0, r5, orange_light_anim@l
/* 0000BA84 0000BB48  90 7D 00 00 */	stw r3, 0x0(r29)
/* 0000BA88 0000BB4C  93 BE 00 14 */	stw r29, 0x14(r30)
/* 0000BA8C 0000BB50  90 1E 00 18 */	stw r0, 0x18(r30)
/* 0000BA90 0000BB54  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 0000BA94 0000BB58  4B FF A7 A9 */	bl animPoseGetGroupIdx
/* 0000BA98 0000BB5C  90 7E 00 20 */	stw r3, 0x20(r30)
/* 0000BA9C 0000BB60  3C 60 00 00 */	lis r3, str_pPlaneShape37_aji_00017a48@ha
/* 0000BAA0 0000BB64  38 83 00 00 */	addi r4, r3, str_pPlaneShape37_aji_00017a48@l
/* 0000BAA4 0000BB68  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 0000BAA8 0000BB6C  4B FF A7 95 */	bl animPoseGetShapeIdx
/* 0000BAAC 0000BB70  90 7E 00 24 */	stw r3, 0x24(r30)
/* 0000BAB0 0000BB74  3C 80 00 00 */	lis r4, slhp@ha
/* 0000BAB4 0000BB78  38 00 00 03 */	li r0, 0x3
/* 0000BAB8 0000BB7C  38 A0 00 01 */	li r5, 0x1
/* 0000BABC 0000BB80  80 84 00 00 */	lwz r4, slhp@l(r4)
/* 0000BAC0 0000BB84  90 04 00 28 */	stw r0, 0x28(r4)
/* 0000BAC4 0000BB88  80 64 00 20 */	lwz r3, 0x20(r4)
/* 0000BAC8 0000BB8C  80 84 00 24 */	lwz r4, 0x24(r4)
/* 0000BACC 0000BB90  80 63 01 04 */	lwz r3, 0x104(r3)
/* 0000BAD0 0000BB94  80 84 00 0C */	lwz r4, 0xc(r4)
/* 0000BAD4 0000BB98  4B FF A7 69 */	bl animPoseSetAnim
/* 0000BAD8 0000BB9C  3C 60 00 00 */	lis r3, str_light_head_2_aji_000179f4@ha
/* 0000BADC 0000BBA0  38 63 00 00 */	addi r3, r3, str_light_head_2_aji_000179f4@l
/* 0000BAE0 0000BBA4  4B FF A7 5D */	bl npcNameToPtr
/* 0000BAE4 0000BBA8  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 0000BAE8 0000BBAC  7C 7D 1B 78 */	mr r29, r3
/* 0000BAEC 0000BBB0  3C 60 00 00 */	lis r3, str_locator8_aji_00017a58@ha
/* 0000BAF0 0000BBB4  3C A0 00 00 */	lis r5, red_light_anim@ha
/* 0000BAF4 0000BBB8  38 83 00 00 */	addi r4, r3, str_locator8_aji_00017a58@l
/* 0000BAF8 0000BBBC  60 C3 00 A0 */	ori r3, r6, 0xa0
/* 0000BAFC 0000BBC0  38 05 00 00 */	addi r0, r5, red_light_anim@l
/* 0000BB00 0000BBC4  90 7D 00 00 */	stw r3, 0x0(r29)
/* 0000BB04 0000BBC8  93 BE 00 28 */	stw r29, 0x28(r30)
/* 0000BB08 0000BBCC  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 0000BB0C 0000BBD0  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 0000BB10 0000BBD4  4B FF A7 2D */	bl animPoseGetGroupIdx
/* 0000BB14 0000BBD8  90 7E 00 34 */	stw r3, 0x34(r30)
/* 0000BB18 0000BBDC  3C 60 00 00 */	lis r3, str_pPlaneShape36_aji_00017a64@ha
/* 0000BB1C 0000BBE0  38 83 00 00 */	addi r4, r3, str_pPlaneShape36_aji_00017a64@l
/* 0000BB20 0000BBE4  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 0000BB24 0000BBE8  4B FF A7 19 */	bl animPoseGetShapeIdx
/* 0000BB28 0000BBEC  90 7E 00 38 */	stw r3, 0x38(r30)
/* 0000BB2C 0000BBF0  3C 80 00 00 */	lis r4, slhp@ha
/* 0000BB30 0000BBF4  38 00 00 03 */	li r0, 0x3
/* 0000BB34 0000BBF8  38 A0 00 01 */	li r5, 0x1
/* 0000BB38 0000BBFC  80 84 00 00 */	lwz r4, slhp@l(r4)
/* 0000BB3C 0000BC00  90 04 00 3C */	stw r0, 0x3c(r4)
/* 0000BB40 0000BC04  80 64 00 34 */	lwz r3, 0x34(r4)
/* 0000BB44 0000BC08  80 84 00 38 */	lwz r4, 0x38(r4)
/* 0000BB48 0000BC0C  80 63 01 04 */	lwz r3, 0x104(r3)
/* 0000BB4C 0000BC10  80 84 00 0C */	lwz r4, 0xc(r4)
/* 0000BB50 0000BC14  4B FF A6 ED */	bl animPoseSetAnim
/* 0000BB54 0000BC18  3C 60 00 00 */	lis r3, str_light_head_3_aji_00017a04@ha
/* 0000BB58 0000BC1C  38 63 00 00 */	addi r3, r3, str_light_head_3_aji_00017a04@l
/* 0000BB5C 0000BC20  4B FF A6 E1 */	bl npcNameToPtr
/* 0000BB60 0000BC24  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 0000BB64 0000BC28  7C 7D 1B 78 */	mr r29, r3
/* 0000BB68 0000BC2C  3C 60 00 00 */	lis r3, str_locator7_aji_00017a74@ha
/* 0000BB6C 0000BC30  3C A0 00 00 */	lis r5, yellow_light_anim@ha
/* 0000BB70 0000BC34  38 83 00 00 */	addi r4, r3, str_locator7_aji_00017a74@l
/* 0000BB74 0000BC38  60 C3 00 A0 */	ori r3, r6, 0xa0
/* 0000BB78 0000BC3C  38 05 00 00 */	addi r0, r5, yellow_light_anim@l
/* 0000BB7C 0000BC40  90 7D 00 00 */	stw r3, 0x0(r29)
/* 0000BB80 0000BC44  93 BE 00 3C */	stw r29, 0x3c(r30)
/* 0000BB84 0000BC48  90 1E 00 40 */	stw r0, 0x40(r30)
/* 0000BB88 0000BC4C  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 0000BB8C 0000BC50  4B FF A6 B1 */	bl animPoseGetGroupIdx
/* 0000BB90 0000BC54  90 7E 00 48 */	stw r3, 0x48(r30)
/* 0000BB94 0000BC58  3C 60 00 00 */	lis r3, str_pPlaneShape35_aji_00017a80@ha
/* 0000BB98 0000BC5C  38 83 00 00 */	addi r4, r3, str_pPlaneShape35_aji_00017a80@l
/* 0000BB9C 0000BC60  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 0000BBA0 0000BC64  4B FF A6 9D */	bl animPoseGetShapeIdx
/* 0000BBA4 0000BC68  90 7E 00 4C */	stw r3, 0x4c(r30)
/* 0000BBA8 0000BC6C  3C 80 00 00 */	lis r4, slhp@ha
/* 0000BBAC 0000BC70  38 00 00 03 */	li r0, 0x3
/* 0000BBB0 0000BC74  38 A0 00 01 */	li r5, 0x1
/* 0000BBB4 0000BC78  80 84 00 00 */	lwz r4, slhp@l(r4)
/* 0000BBB8 0000BC7C  90 04 00 50 */	stw r0, 0x50(r4)
/* 0000BBBC 0000BC80  80 64 00 48 */	lwz r3, 0x48(r4)
/* 0000BBC0 0000BC84  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 0000BBC4 0000BC88  80 63 01 04 */	lwz r3, 0x104(r3)
/* 0000BBC8 0000BC8C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 0000BBCC 0000BC90  4B FF A6 71 */	bl animPoseSetAnim
/* 0000BBD0 0000BC94  3C 60 00 00 */	lis r3, str_light_tue_1_aji_00017a14@ha
/* 0000BBD4 0000BC98  38 63 00 00 */	addi r3, r3, str_light_tue_1_aji_00017a14@l
/* 0000BBD8 0000BC9C  4B FF A6 65 */	bl npcNameToPtr
/* 0000BBDC 0000BCA0  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 0000BBE0 0000BCA4  7C 7D 1B 78 */	mr r29, r3
/* 0000BBE4 0000BCA8  3C 60 00 00 */	lis r3, str_locator5_aji_00017a90@ha
/* 0000BBE8 0000BCAC  3C A0 00 00 */	lis r5, red_light_anim@ha
/* 0000BBEC 0000BCB0  38 83 00 00 */	addi r4, r3, str_locator5_aji_00017a90@l
/* 0000BBF0 0000BCB4  60 C3 00 A0 */	ori r3, r6, 0xa0
/* 0000BBF4 0000BCB8  38 05 00 00 */	addi r0, r5, red_light_anim@l
/* 0000BBF8 0000BCBC  90 7D 00 00 */	stw r3, 0x0(r29)
/* 0000BBFC 0000BCC0  93 BE 00 50 */	stw r29, 0x50(r30)
/* 0000BC00 0000BCC4  90 1E 00 54 */	stw r0, 0x54(r30)
/* 0000BC04 0000BCC8  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 0000BC08 0000BCCC  4B FF A6 35 */	bl animPoseGetGroupIdx
/* 0000BC0C 0000BCD0  90 7E 00 5C */	stw r3, 0x5c(r30)
/* 0000BC10 0000BCD4  3C 60 00 00 */	lis r3, str_pPlaneShape36_aji_00017a64@ha
/* 0000BC14 0000BCD8  38 83 00 00 */	addi r4, r3, str_pPlaneShape36_aji_00017a64@l
/* 0000BC18 0000BCDC  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 0000BC1C 0000BCE0  4B FF A6 21 */	bl animPoseGetShapeIdx
/* 0000BC20 0000BCE4  90 7E 00 60 */	stw r3, 0x60(r30)
/* 0000BC24 0000BCE8  3C 80 00 00 */	lis r4, slhp@ha
/* 0000BC28 0000BCEC  38 00 00 01 */	li r0, 0x1
/* 0000BC2C 0000BCF0  38 A0 00 01 */	li r5, 0x1
/* 0000BC30 0000BCF4  80 84 00 00 */	lwz r4, slhp@l(r4)
/* 0000BC34 0000BCF8  90 04 00 64 */	stw r0, 0x64(r4)
/* 0000BC38 0000BCFC  80 64 00 5C */	lwz r3, 0x5c(r4)
/* 0000BC3C 0000BD00  80 84 00 60 */	lwz r4, 0x60(r4)
/* 0000BC40 0000BD04  80 63 01 04 */	lwz r3, 0x104(r3)
/* 0000BC44 0000BD08  80 84 00 04 */	lwz r4, 0x4(r4)
/* 0000BC48 0000BD0C  4B FF A5 F5 */	bl animPoseSetAnim
/* 0000BC4C 0000BD10  3C 80 00 00 */	lis r4, shuryolight_callback@ha
/* 0000BC50 0000BD14  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 0000BC54 0000BD18  38 84 00 00 */	addi r4, r4, shuryolight_callback@l
/* 0000BC58 0000BD1C  7F C5 F3 78 */	mr r5, r30
/* 0000BC5C 0000BD20  4B FF A5 E1 */	bl animPoseSetDispCallBack
/* 0000BC60 0000BD24  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 0000BC64 0000BD28  38 60 00 02 */	li r3, 0x2
/* 0000BC68 0000BD2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000BC6C 0000BD30  7C 08 03 A6 */	mtlr r0
/* 0000BC70 0000BD34  38 21 00 20 */	addi r1, r1, 0x20
/* 0000BC74 0000BD38  4E 80 00 20 */	blr
.endfn evt_shuryolight_init_2_text_B914

# .text:0x948 | 0xBC78 | size: 0x5C
.fn shuryolightRunEvt, local
/* 0000BC78 0000BD3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000BC7C 0000BD40  7C 08 02 A6 */	mflr r0
/* 0000BC80 0000BD44  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000BC84 0000BD48  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000BC88 0000BD4C  7C 9F 23 78 */	mr r31, r4
/* 0000BC8C 0000BD50  7C 7E 1B 78 */	mr r30, r3
/* 0000BC90 0000BD54  7F E3 FB 78 */	mr r3, r31
/* 0000BC94 0000BD58  4B FF A5 A9 */	bl evtCheckID
/* 0000BC98 0000BD5C  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000BC9C 0000BD60  41 82 00 0C */	beq .L_0000BCA8
/* 0000BCA0 0000BD64  7F E3 FB 78 */	mr r3, r31
/* 0000BCA4 0000BD68  4B FF A5 99 */	bl evtDeleteID
.L_0000BCA8:
/* 0000BCA8 0000BD6C  7F C3 F3 78 */	mr r3, r30
/* 0000BCAC 0000BD70  38 80 00 00 */	li r4, 0x0
/* 0000BCB0 0000BD74  38 A0 00 00 */	li r5, 0x0
/* 0000BCB4 0000BD78  38 C0 00 00 */	li r6, 0x0
/* 0000BCB8 0000BD7C  4B FF A5 85 */	bl evtEntryType
/* 0000BCBC 0000BD80  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000BCC0 0000BD84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000BCC4 0000BD88  80 63 01 5C */	lwz r3, 0x15c(r3)
/* 0000BCC8 0000BD8C  7C 08 03 A6 */	mtlr r0
/* 0000BCCC 0000BD90  38 21 00 10 */	addi r1, r1, 0x10
/* 0000BCD0 0000BD94  4E 80 00 20 */	blr
.endfn shuryolightRunEvt

# .text:0x9A4 | 0xBCD4 | size: 0x50
.fn shuryolightSetAnim, local
/* 0000BCD4 0000BD98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000BCD8 0000BD9C  7C 08 02 A6 */	mflr r0
/* 0000BCDC 0000BDA0  1C 63 00 14 */	mulli r3, r3, 0x14
/* 0000BCE0 0000BDA4  3C A0 00 00 */	lis r5, slhp@ha
/* 0000BCE4 0000BDA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000BCE8 0000BDAC  54 80 10 3A */	slwi r0, r4, 2
/* 0000BCEC 0000BDB0  80 C5 00 00 */	lwz r6, slhp@l(r5)
/* 0000BCF0 0000BDB4  38 E3 00 0C */	addi r7, r3, 0xc
/* 0000BCF4 0000BDB8  38 A0 00 01 */	li r5, 0x1
/* 0000BCF8 0000BDBC  7C E6 3A 14 */	add r7, r6, r7
/* 0000BCFC 0000BDC0  90 87 00 08 */	stw r4, 0x8(r7)
/* 0000BD00 0000BDC4  80 67 00 00 */	lwz r3, 0x0(r7)
/* 0000BD04 0000BDC8  80 87 00 04 */	lwz r4, 0x4(r7)
/* 0000BD08 0000BDCC  80 63 01 04 */	lwz r3, 0x104(r3)
/* 0000BD0C 0000BDD0  7C 84 00 2E */	lwzx r4, r4, r0
/* 0000BD10 0000BDD4  4B FF A5 2D */	bl animPoseSetAnim
/* 0000BD14 0000BDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000BD18 0000BDDC  7C 08 03 A6 */	mtlr r0
/* 0000BD1C 0000BDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 0000BD20 0000BDE4  4E 80 00 20 */	blr
.endfn shuryolightSetAnim

# .text:0x9F4 | 0xBD24 | size: 0x80
.fn shuryolight_callback, local
/* 0000BD24 0000BDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000BD28 0000BDEC  7C 08 02 A6 */	mflr r0
/* 0000BD2C 0000BDF0  38 A0 00 00 */	li r5, 0x0
/* 0000BD30 0000BDF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000BD34 0000BDF8  38 00 00 05 */	li r0, 0x5
/* 0000BD38 0000BDFC  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000BD3C 0000BE00  7C 7E 1B 78 */	mr r30, r3
/* 0000BD40 0000BE04  38 60 00 00 */	li r3, 0x0
/* 0000BD44 0000BE08  7C 09 03 A6 */	mtctr r0
.L_0000BD48:
/* 0000BD48 0000BE0C  38 03 00 0C */	addi r0, r3, 0xc
/* 0000BD4C 0000BE10  7C 1E 00 2E */	lwzx r0, r30, r0
/* 0000BD50 0000BE14  7C 04 00 00 */	cmpw r4, r0
/* 0000BD54 0000BE18  41 82 00 10 */	beq .L_0000BD64
/* 0000BD58 0000BE1C  38 A5 00 01 */	addi r5, r5, 0x1
/* 0000BD5C 0000BE20  38 63 00 14 */	addi r3, r3, 0x14
/* 0000BD60 0000BE24  42 00 FF E8 */	bdnz .L_0000BD48
.L_0000BD64:
/* 0000BD64 0000BE28  2C 05 00 05 */	cmpwi r5, 0x5
/* 0000BD68 0000BE2C  41 82 00 28 */	beq .L_0000BD90
/* 0000BD6C 0000BE30  1F E5 00 14 */	mulli r31, r5, 0x14
/* 0000BD70 0000BE34  7C 7E F8 2E */	lwzx r3, r30, r31
/* 0000BD74 0000BE38  80 63 01 04 */	lwz r3, 0x104(r3)
/* 0000BD78 0000BE3C  4B FF A4 C5 */	bl animPoseMain
/* 0000BD7C 0000BE40  7C BE F8 2E */	lwzx r5, r30, r31
/* 0000BD80 0000BE44  7C 7E FA 14 */	add r3, r30, r31
/* 0000BD84 0000BE48  80 83 00 10 */	lwz r4, 0x10(r3)
/* 0000BD88 0000BE4C  80 65 01 04 */	lwz r3, 0x104(r5)
/* 0000BD8C 0000BE50  4B FF A4 B1 */	bl animPoseDrawShape
.L_0000BD90:
/* 0000BD90 0000BE54  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000BD94 0000BE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000BD98 0000BE5C  7C 08 03 A6 */	mtlr r0
/* 0000BD9C 0000BE60  38 21 00 10 */	addi r1, r1, 0x10
/* 0000BDA0 0000BE64  4E 80 00 20 */	blr
.endfn shuryolight_callback

# 0x00006AB8..0x00006C38 | size: 0x180
.rodata
.balign 8

# .rodata:0x0 | 0x6AB8 | size: 0x5
.obj str_L_1C_aji_00017920, local
	.string "L_1C"
.endobj str_L_1C_aji_00017920

# .rodata:0x5 | 0x6ABD | size: 0x3
.obj gap_03_00006ABD_rodata, global
.hidden gap_03_00006ABD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006ABD_rodata

# .rodata:0x8 | 0x6AC0 | size: 0x5
.obj str_L_1B_aji_00017928, local
	.string "L_1B"
.endobj str_L_1B_aji_00017928

# .rodata:0xD | 0x6AC5 | size: 0x3
.obj gap_03_00006AC5_rodata, global
.hidden gap_03_00006AC5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006AC5_rodata

# .rodata:0x10 | 0x6AC8 | size: 0x5
.obj str_L_1D_aji_00017930, local
	.string "L_1D"
.endobj str_L_1D_aji_00017930

# .rodata:0x15 | 0x6ACD | size: 0x3
.obj gap_03_00006ACD_rodata, global
.hidden gap_03_00006ACD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006ACD_rodata

# .rodata:0x18 | 0x6AD0 | size: 0x5
.obj str_L_1A_aji_00017938, local
	.string "L_1A"
.endobj str_L_1A_aji_00017938

# .rodata:0x1D | 0x6AD5 | size: 0x3
.obj gap_03_00006AD5_rodata, global
.hidden gap_03_00006AD5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006AD5_rodata

# .rodata:0x20 | 0x6AD8 | size: 0x5
.obj str_L_1E_aji_00017940, local
	.string "L_1E"
.endobj str_L_1E_aji_00017940

# .rodata:0x25 | 0x6ADD | size: 0x3
.obj gap_03_00006ADD_rodata, global
.hidden gap_03_00006ADD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006ADD_rodata

# .rodata:0x28 | 0x6AE0 | size: 0x5
.obj str_L_2C_aji_00017948, local
	.string "L_2C"
.endobj str_L_2C_aji_00017948

# .rodata:0x2D | 0x6AE5 | size: 0x3
.obj gap_03_00006AE5_rodata, global
.hidden gap_03_00006AE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006AE5_rodata

# .rodata:0x30 | 0x6AE8 | size: 0x5
.obj str_L_2B_aji_00017950, local
	.string "L_2B"
.endobj str_L_2B_aji_00017950

# .rodata:0x35 | 0x6AED | size: 0x3
.obj gap_03_00006AED_rodata, global
.hidden gap_03_00006AED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006AED_rodata

# .rodata:0x38 | 0x6AF0 | size: 0x5
.obj str_L_2D_aji_00017958, local
	.string "L_2D"
.endobj str_L_2D_aji_00017958

# .rodata:0x3D | 0x6AF5 | size: 0x3
.obj gap_03_00006AF5_rodata, global
.hidden gap_03_00006AF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006AF5_rodata

# .rodata:0x40 | 0x6AF8 | size: 0x5
.obj str_L_2A_aji_00017960, local
	.string "L_2A"
.endobj str_L_2A_aji_00017960

# .rodata:0x45 | 0x6AFD | size: 0x3
.obj gap_03_00006AFD_rodata, global
.hidden gap_03_00006AFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006AFD_rodata

# .rodata:0x48 | 0x6B00 | size: 0x5
.obj str_L_2E_aji_00017968, local
	.string "L_2E"
.endobj str_L_2E_aji_00017968

# .rodata:0x4D | 0x6B05 | size: 0x3
.obj gap_03_00006B05_rodata, global
.hidden gap_03_00006B05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B05_rodata

# .rodata:0x50 | 0x6B08 | size: 0x5
.obj str_L_3C_aji_00017970, local
	.string "L_3C"
.endobj str_L_3C_aji_00017970

# .rodata:0x55 | 0x6B0D | size: 0x3
.obj gap_03_00006B0D_rodata, global
.hidden gap_03_00006B0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B0D_rodata

# .rodata:0x58 | 0x6B10 | size: 0x5
.obj str_L_3B_aji_00017978, local
	.string "L_3B"
.endobj str_L_3B_aji_00017978

# .rodata:0x5D | 0x6B15 | size: 0x3
.obj gap_03_00006B15_rodata, global
.hidden gap_03_00006B15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B15_rodata

# .rodata:0x60 | 0x6B18 | size: 0x5
.obj str_L_3D_aji_00017980, local
	.string "L_3D"
.endobj str_L_3D_aji_00017980

# .rodata:0x65 | 0x6B1D | size: 0x3
.obj gap_03_00006B1D_rodata, global
.hidden gap_03_00006B1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B1D_rodata

# .rodata:0x68 | 0x6B20 | size: 0x5
.obj str_L_3A_aji_00017988, local
	.string "L_3A"
.endobj str_L_3A_aji_00017988

# .rodata:0x6D | 0x6B25 | size: 0x3
.obj gap_03_00006B25_rodata, global
.hidden gap_03_00006B25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B25_rodata

# .rodata:0x70 | 0x6B28 | size: 0x5
.obj str_L_3E_aji_00017990, local
	.string "L_3E"
.endobj str_L_3E_aji_00017990

# .rodata:0x75 | 0x6B2D | size: 0x3
.obj gap_03_00006B2D_rodata, global
.hidden gap_03_00006B2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B2D_rodata

# .rodata:0x78 | 0x6B30 | size: 0x5
.obj str_L_4C_aji_00017998, local
	.string "L_4C"
.endobj str_L_4C_aji_00017998

# .rodata:0x7D | 0x6B35 | size: 0x3
.obj gap_03_00006B35_rodata, global
.hidden gap_03_00006B35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B35_rodata

# .rodata:0x80 | 0x6B38 | size: 0x5
.obj str_L_4B_aji_000179a0, local
	.string "L_4B"
.endobj str_L_4B_aji_000179a0

# .rodata:0x85 | 0x6B3D | size: 0x3
.obj gap_03_00006B3D_rodata, global
.hidden gap_03_00006B3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B3D_rodata

# .rodata:0x88 | 0x6B40 | size: 0x5
.obj str_L_4D_aji_000179a8, local
	.string "L_4D"
.endobj str_L_4D_aji_000179a8

# .rodata:0x8D | 0x6B45 | size: 0x3
.obj gap_03_00006B45_rodata, global
.hidden gap_03_00006B45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B45_rodata

# .rodata:0x90 | 0x6B48 | size: 0x5
.obj str_L_4A_aji_000179b0, local
	.string "L_4A"
.endobj str_L_4A_aji_000179b0

# .rodata:0x95 | 0x6B4D | size: 0x3
.obj gap_03_00006B4D_rodata, global
.hidden gap_03_00006B4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B4D_rodata

# .rodata:0x98 | 0x6B50 | size: 0x5
.obj str_L_4E_aji_000179b8, local
	.string "L_4E"
.endobj str_L_4E_aji_000179b8
	.byte 0x00, 0x00, 0x00

# .rodata:0xA0 | 0x6B58 | size: 0x4
.obj float_1000_aji_000179c0, local
	.float 1000
.endobj float_1000_aji_000179c0

# .rodata:0xA4 | 0x6B5C | size: 0x4
.obj float_60_aji_000179c4, local
	.float 60
.endobj float_60_aji_000179c4

# .rodata:0xA8 | 0x6B60 | size: 0x4
.obj float_1_aji_000179c8, local
	.float 1
.endobj float_1_aji_000179c8

# .rodata:0xAC | 0x6B64 | size: 0xC
.obj str_light_power_aji_000179cc, local
	.string "light_power"
.endobj str_light_power_aji_000179cc

# .rodata:0xB8 | 0x6B70 | size: 0x9
.obj str_c_shuryo_aji_000179d8, local
	.string "c_shuryo"
.endobj str_c_shuryo_aji_000179d8

# .rodata:0xC1 | 0x6B79 | size: 0x3
.obj gap_03_00006B79_rodata, global
.hidden gap_03_00006B79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B79_rodata

# .rodata:0xC4 | 0x6B7C | size: 0xD
.obj str_light_head_1_aji_000179e4, local
	.string "light_head_1"
.endobj str_light_head_1_aji_000179e4

# .rodata:0xD1 | 0x6B89 | size: 0x3
.obj gap_03_00006B89_rodata, global
.hidden gap_03_00006B89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B89_rodata

# .rodata:0xD4 | 0x6B8C | size: 0xD
.obj str_light_head_2_aji_000179f4, local
	.string "light_head_2"
.endobj str_light_head_2_aji_000179f4

# .rodata:0xE1 | 0x6B99 | size: 0x3
.obj gap_03_00006B99_rodata, global
.hidden gap_03_00006B99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B99_rodata

# .rodata:0xE4 | 0x6B9C | size: 0xD
.obj str_light_head_3_aji_00017a04, local
	.string "light_head_3"
.endobj str_light_head_3_aji_00017a04

# .rodata:0xF1 | 0x6BA9 | size: 0x3
.obj gap_03_00006BA9_rodata, global
.hidden gap_03_00006BA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006BA9_rodata

# .rodata:0xF4 | 0x6BAC | size: 0xC
.obj str_light_tue_1_aji_00017a14, local
	.string "light_tue_1"
.endobj str_light_tue_1_aji_00017a14

# .rodata:0x100 | 0x6BB8 | size: 0x9
.obj str_locator6_aji_00017a20, local
	.string "locator6"
.endobj str_locator6_aji_00017a20

# .rodata:0x109 | 0x6BC1 | size: 0x3
.obj gap_03_00006BC1_rodata, global
.hidden gap_03_00006BC1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006BC1_rodata

# .rodata:0x10C | 0x6BC4 | size: 0xE
.obj str_pPlaneShape34_aji_00017a2c, local
	.string "pPlaneShape34"
.endobj str_pPlaneShape34_aji_00017a2c

# .rodata:0x11A | 0x6BD2 | size: 0x2
.obj gap_03_00006BD2_rodata, global
.hidden gap_03_00006BD2_rodata
	.2byte 0x0000
.endobj gap_03_00006BD2_rodata

# .rodata:0x11C | 0x6BD4 | size: 0x9
.obj str_locator9_aji_00017a3c, local
	.string "locator9"
.endobj str_locator9_aji_00017a3c

# .rodata:0x125 | 0x6BDD | size: 0x3
.obj gap_03_00006BDD_rodata, global
.hidden gap_03_00006BDD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006BDD_rodata

# .rodata:0x128 | 0x6BE0 | size: 0xE
.obj str_pPlaneShape37_aji_00017a48, local
	.string "pPlaneShape37"
.endobj str_pPlaneShape37_aji_00017a48

# .rodata:0x136 | 0x6BEE | size: 0x2
.obj gap_03_00006BEE_rodata, global
.hidden gap_03_00006BEE_rodata
	.2byte 0x0000
.endobj gap_03_00006BEE_rodata

# .rodata:0x138 | 0x6BF0 | size: 0x9
.obj str_locator8_aji_00017a58, local
	.string "locator8"
.endobj str_locator8_aji_00017a58

# .rodata:0x141 | 0x6BF9 | size: 0x3
.obj gap_03_00006BF9_rodata, global
.hidden gap_03_00006BF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006BF9_rodata

# .rodata:0x144 | 0x6BFC | size: 0xE
.obj str_pPlaneShape36_aji_00017a64, local
	.string "pPlaneShape36"
.endobj str_pPlaneShape36_aji_00017a64

# .rodata:0x152 | 0x6C0A | size: 0x2
.obj gap_03_00006C0A_rodata, global
.hidden gap_03_00006C0A_rodata
	.2byte 0x0000
.endobj gap_03_00006C0A_rodata

# .rodata:0x154 | 0x6C0C | size: 0x9
.obj str_locator7_aji_00017a74, local
	.string "locator7"
.endobj str_locator7_aji_00017a74

# .rodata:0x15D | 0x6C15 | size: 0x3
.obj gap_03_00006C15_rodata, global
.hidden gap_03_00006C15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C15_rodata

# .rodata:0x160 | 0x6C18 | size: 0xE
.obj str_pPlaneShape35_aji_00017a80, local
	.string "pPlaneShape35"
.endobj str_pPlaneShape35_aji_00017a80

# .rodata:0x16E | 0x6C26 | size: 0x2
.obj gap_03_00006C26_rodata, global
.hidden gap_03_00006C26_rodata
	.2byte 0x0000
.endobj gap_03_00006C26_rodata

# .rodata:0x170 | 0x6C28 | size: 0x9
.obj str_locator5_aji_00017a90, local
	.string "locator5"
.endobj str_locator5_aji_00017a90

# .rodata:0x179 | 0x6C31 | size: 0x7
.obj gap_03_00006C31_rodata, global
.hidden gap_03_00006C31_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C31_rodata

# 0x00037008..0x00037350 | size: 0x348
.data
.balign 8

# .data:0x0 | 0x37008 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x37010 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x37014 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x37018 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3701C | size: 0x4
.obj gap_04_0003701C_data, global
.hidden gap_04_0003701C_data
	.4byte 0x00000000
.endobj gap_04_0003701C_data

# .data:0x18 | 0x37020 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x37028 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3702C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x37030 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x37038 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3703C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x37040 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x37044 | size: 0x4
.obj gap_04_00037044_data, global
.hidden gap_04_00037044_data
	.4byte 0x00000000
.endobj gap_04_00037044_data

# .data:0x40 | 0x37048 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x37050 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x37054 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x37058 | size: 0x14
.obj green_light_anim, local
	.4byte str_L_1C_aji_00017920
	.4byte str_L_1B_aji_00017928
	.4byte str_L_1D_aji_00017930
	.4byte str_L_1A_aji_00017938
	.4byte str_L_1E_aji_00017940
.endobj green_light_anim

# .data:0x64 | 0x3706C | size: 0x14
.obj yellow_light_anim, local
	.4byte str_L_2C_aji_00017948
	.4byte str_L_2B_aji_00017950
	.4byte str_L_2D_aji_00017958
	.4byte str_L_2A_aji_00017960
	.4byte str_L_2E_aji_00017968
.endobj yellow_light_anim

# .data:0x78 | 0x37080 | size: 0x14
.obj red_light_anim, local
	.4byte str_L_3C_aji_00017970
	.4byte str_L_3B_aji_00017978
	.4byte str_L_3D_aji_00017980
	.4byte str_L_3A_aji_00017988
	.4byte str_L_3E_aji_00017990
.endobj red_light_anim

# .data:0x8C | 0x37094 | size: 0x14
.obj orange_light_anim, local
	.4byte str_L_4C_aji_00017998
	.4byte str_L_4B_aji_000179a0
	.4byte str_L_4D_aji_000179a8
	.4byte str_L_4A_aji_000179b0
	.4byte str_L_4E_aji_000179b8
.endobj orange_light_anim

# .data:0xA0 | 0x370A8 | size: 0xB0
.obj shuryolight_pow_normal_2_data_370A8, global
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000BB8
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000BB8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000064
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0001000A
	.4byte 0x00000050
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000050
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shuryolight_pow_normal_2_data_370A8

# .data:0x150 | 0x37158 | size: 0x7C
.obj shuryolight_pow_tenmetu, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000BB8
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000003E8
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000002BC
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shuryolight_pow_tenmetu

# .data:0x1CC | 0x371D4 | size: 0x78
.obj shuryolight_head_normal_2_data_371D4, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shuryolight_head_normal_2_data_371D4

# .data:0x244 | 0x3724C | size: 0x50
.obj shuryolight_head_tenmetu, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte evt_shuryolight_wait_anim_end
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shuryolight_head_tenmetu

# .data:0x294 | 0x3729C | size: 0x38
.obj shuryolight_head_off, local
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shuryolight_head_off

# .data:0x2CC | 0x372D4 | size: 0x7C
.obj shuryolight_tue_normal_2_data_372D4, global
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_shuryolight_wait_anim_end
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_shuryolight_wait_anim_end
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shuryolight_tue_normal_2_data_372D4

# 0x000001B8..0x000001C0 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x1B8 | size: 0x4
.obj slhp, local
	.skip 0x4
.endobj slhp

# .bss:0x4 | 0x1BC | size: 0x4
.obj gap_05_000001BC_bss, global
.hidden gap_05_000001BC_bss
	.skip 0x4
.endobj gap_05_000001BC_bss
