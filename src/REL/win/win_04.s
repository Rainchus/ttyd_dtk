.include "macros.inc"
.file "win_04.o"

# 0x000004D8..0x00000D88 | size: 0x8B0
.text
.balign 4

# .text:0x0 | 0x4D8 | size: 0x20
.fn flower_pos_report, local
/* 000004D8 0000059C  80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 000004DC 000005A0  80 03 00 00 */	lwz r0, 0x0(r3)
/* 000004E0 000005A4  7C 09 03 A6 */	mtctr r0
/* 000004E4 000005A8  2C 00 00 00 */	cmpwi r0, 0x0
/* 000004E8 000005AC  40 81 00 08 */	ble .L_000004F0
.L_000004EC:
/* 000004EC 000005B0  42 00 00 00 */	bdnz .L_000004EC
.L_000004F0:
/* 000004F0 000005B4  38 60 00 02 */	li r3, 0x2
/* 000004F4 000005B8  4E 80 00 20 */	blr
.endfn flower_pos_report

# .text:0x20 | 0x4F8 | size: 0xA8
.fn evt_flower_end_main, local
/* 000004F8 000005BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000004FC 000005C0  7C 08 02 A6 */	mflr r0
/* 00000500 000005C4  38 E0 00 00 */	li r7, 0x0
/* 00000504 000005C8  38 80 00 00 */	li r4, 0x0
/* 00000508 000005CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000050C 000005D0  80 C3 00 C4 */	lwz r6, 0xc4(r3)
/* 00000510 000005D4  80 A6 00 04 */	lwz r5, 0x4(r6)
/* 00000514 000005D8  48 00 00 50 */	b .L_00000564
.L_00000518:
/* 00000518 000005DC  A8 05 00 00 */	lha r0, 0x0(r5)
/* 0000051C 000005E0  2C 00 00 01 */	cmpwi r0, 0x1
/* 00000520 000005E4  41 82 00 3C */	beq .L_0000055C
/* 00000524 000005E8  40 80 00 38 */	bge .L_0000055C
/* 00000528 000005EC  2C 00 00 00 */	cmpwi r0, 0x0
/* 0000052C 000005F0  40 80 00 08 */	bge .L_00000534
/* 00000530 000005F4  48 00 00 2C */	b .L_0000055C
.L_00000534:
/* 00000534 000005F8  80 65 00 14 */	lwz r3, 0x14(r5)
/* 00000538 000005FC  38 03 FF F6 */	subi r0, r3, 0xa
/* 0000053C 00000600  90 05 00 14 */	stw r0, 0x14(r5)
/* 00000540 00000604  80 05 00 14 */	lwz r0, 0x14(r5)
/* 00000544 00000608  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000548 0000060C  40 80 00 14 */	bge .L_0000055C
/* 0000054C 00000610  90 85 00 14 */	stw r4, 0x14(r5)
/* 00000550 00000614  A8 65 00 00 */	lha r3, 0x0(r5)
/* 00000554 00000618  38 03 00 01 */	addi r0, r3, 0x1
/* 00000558 0000061C  B0 05 00 00 */	sth r0, 0x0(r5)
.L_0000055C:
/* 0000055C 00000620  38 E7 00 01 */	addi r7, r7, 0x1
/* 00000560 00000624  38 A5 00 18 */	addi r5, r5, 0x18
.L_00000564:
/* 00000564 00000628  80 06 00 00 */	lwz r0, 0x0(r6)
/* 00000568 0000062C  7C 07 00 00 */	cmpw r7, r0
/* 0000056C 00000630  41 80 FF AC */	blt .L_00000518
/* 00000570 00000634  3C 80 00 00 */	lis r4, float_1000_win_00004ab0@ha
/* 00000574 00000638  3C 60 00 00 */	lis r3, flower_disp@ha
/* 00000578 0000063C  C0 24 00 00 */	lfs f1, float_1000_win_00004ab0@l(r4)
/* 0000057C 00000640  38 A3 00 00 */	addi r5, r3, flower_disp@l
/* 00000580 00000644  38 60 00 08 */	li r3, 0x8
/* 00000584 00000648  38 80 00 00 */	li r4, 0x0
/* 00000588 0000064C  48 00 08 01 */	bl dispEntry
/* 0000058C 00000650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000590 00000654  38 60 00 02 */	li r3, 0x2
/* 00000594 00000658  7C 08 03 A6 */	mtlr r0
/* 00000598 0000065C  38 21 00 10 */	addi r1, r1, 0x10
/* 0000059C 00000660  4E 80 00 20 */	blr
.endfn evt_flower_end_main

# .text:0xC8 | 0x5A0 | size: 0x34
.fn evt_flower_end, local
/* 000005A0 00000664  80 83 00 C4 */	lwz r4, 0xc4(r3)
/* 000005A4 00000668  38 C0 00 00 */	li r6, 0x0
/* 000005A8 0000066C  38 60 00 00 */	li r3, 0x0
/* 000005AC 00000670  80 A4 00 04 */	lwz r5, 0x4(r4)
/* 000005B0 00000674  48 00 00 10 */	b .L_000005C0
.L_000005B4:
/* 000005B4 00000678  B0 65 00 00 */	sth r3, 0x0(r5)
/* 000005B8 0000067C  38 C6 00 01 */	addi r6, r6, 0x1
/* 000005BC 00000680  38 A5 00 18 */	addi r5, r5, 0x18
.L_000005C0:
/* 000005C0 00000684  80 04 00 00 */	lwz r0, 0x0(r4)
/* 000005C4 00000688  7C 06 00 00 */	cmpw r6, r0
/* 000005C8 0000068C  41 80 FF EC */	blt .L_000005B4
/* 000005CC 00000690  38 60 00 02 */	li r3, 0x2
/* 000005D0 00000694  4E 80 00 20 */	blr
.endfn evt_flower_end

# .text:0xFC | 0x5D4 | size: 0x170
.fn evt_flower, local
/* 000005D4 00000698  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000005D8 0000069C  7C 08 02 A6 */	mflr r0
/* 000005DC 000006A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 000005E0 000006A4  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 000005E4 000006A8  3B A0 00 00 */	li r29, 0x0
/* 000005E8 000006AC  3B 80 00 00 */	li r28, 0x0
/* 000005EC 000006B0  83 E3 00 C4 */	lwz r31, 0xc4(r3)
/* 000005F0 000006B4  83 DF 00 04 */	lwz r30, 0x4(r31)
/* 000005F4 000006B8  48 00 01 0C */	b .L_00000700
.L_000005F8:
/* 000005F8 000006BC  A8 1E 00 00 */	lha r0, 0x0(r30)
/* 000005FC 000006C0  2C 00 00 01 */	cmpwi r0, 0x1
/* 00000600 000006C4  41 82 00 48 */	beq .L_00000648
/* 00000604 000006C8  40 80 00 10 */	bge .L_00000614
/* 00000608 000006CC  2C 00 00 00 */	cmpwi r0, 0x0
/* 0000060C 000006D0  40 80 00 14 */	bge .L_00000620
/* 00000610 000006D4  48 00 00 E4 */	b .L_000006F4
.L_00000614:
/* 00000614 000006D8  2C 00 00 03 */	cmpwi r0, 0x3
/* 00000618 000006DC  40 80 00 DC */	bge .L_000006F4
/* 0000061C 000006E0  48 00 00 80 */	b .L_0000069C
.L_00000620:
/* 00000620 000006E4  48 00 07 69 */	bl rand
/* 00000624 000006E8  38 80 00 64 */	li r4, 0x64
/* 00000628 000006EC  7C 03 23 D6 */	divw r0, r3, r4
/* 0000062C 000006F0  7C 00 21 D6 */	mullw r0, r0, r4
/* 00000630 000006F4  7C 00 18 50 */	subf r0, r0, r3
/* 00000634 000006F8  B0 1E 00 02 */	sth r0, 0x2(r30)
/* 00000638 000006FC  A8 7E 00 00 */	lha r3, 0x0(r30)
/* 0000063C 00000700  38 03 00 01 */	addi r0, r3, 0x1
/* 00000640 00000704  B0 1E 00 00 */	sth r0, 0x0(r30)
/* 00000644 00000708  48 00 00 B0 */	b .L_000006F4
.L_00000648:
/* 00000648 0000070C  A8 7E 00 02 */	lha r3, 0x2(r30)
/* 0000064C 00000710  38 63 FF FF */	subi r3, r3, 0x1
/* 00000650 00000714  7C 60 07 35 */	extsh. r0, r3
/* 00000654 00000718  B0 7E 00 02 */	sth r3, 0x2(r30)
/* 00000658 0000071C  40 80 00 9C */	bge .L_000006F4
/* 0000065C 00000720  3C 80 00 00 */	lis r4, rose_table_direct@ha
/* 00000660 00000724  3C 60 00 00 */	lis r3, zero_win_00004ab4@ha
/* 00000664 00000728  38 04 00 00 */	addi r0, r4, rose_table_direct@l
/* 00000668 0000072C  C0 03 00 00 */	lfs f0, zero_win_00004ab4@l(r3)
/* 0000066C 00000730  7C 80 E2 14 */	add r4, r0, r28
/* 00000670 00000734  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 00000674 00000738  D0 3E 00 04 */	stfs f1, 0x4(r30)
/* 00000678 0000073C  C0 24 00 04 */	lfs f1, 0x4(r4)
/* 0000067C 00000740  D0 3E 00 08 */	stfs f1, 0x8(r30)
/* 00000680 00000744  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 00000684 00000748  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 00000688 0000074C  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 0000068C 00000750  A8 7E 00 00 */	lha r3, 0x0(r30)
/* 00000690 00000754  38 03 00 01 */	addi r0, r3, 0x1
/* 00000694 00000758  B0 1E 00 00 */	sth r0, 0x0(r30)
/* 00000698 0000075C  48 00 00 5C */	b .L_000006F4
.L_0000069C:
/* 0000069C 00000760  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 000006A0 00000764  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 000006A4 00000768  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000006A8 0000076C  40 80 00 18 */	bge .L_000006C0
/* 000006AC 00000770  3C 60 00 00 */	lis r3, float_0p08_win_00004ab8@ha
/* 000006B0 00000774  C0 03 00 00 */	lfs f0, float_0p08_win_00004ab8@l(r3)
/* 000006B4 00000778  EC 01 00 2A */	fadds f0, f1, f0
/* 000006B8 0000077C  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 000006BC 00000780  48 00 00 18 */	b .L_000006D4
.L_000006C0:
/* 000006C0 00000784  38 00 00 00 */	li r0, 0x0
/* 000006C4 00000788  B0 1E 00 02 */	sth r0, 0x2(r30)
/* 000006C8 0000078C  A8 7E 00 00 */	lha r3, 0x0(r30)
/* 000006CC 00000790  38 03 00 01 */	addi r0, r3, 0x1
/* 000006D0 00000794  B0 1E 00 00 */	sth r0, 0x0(r30)
.L_000006D4:
/* 000006D4 00000798  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 000006D8 0000079C  38 03 00 14 */	addi r0, r3, 0x14
/* 000006DC 000007A0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 000006E0 000007A4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 000006E4 000007A8  2C 00 00 FF */	cmpwi r0, 0xff
/* 000006E8 000007AC  40 81 00 0C */	ble .L_000006F4
/* 000006EC 000007B0  38 00 00 FF */	li r0, 0xff
/* 000006F0 000007B4  90 1E 00 14 */	stw r0, 0x14(r30)
.L_000006F4:
/* 000006F4 000007B8  3B BD 00 01 */	addi r29, r29, 0x1
/* 000006F8 000007BC  3B 9C 00 0C */	addi r28, r28, 0xc
/* 000006FC 000007C0  3B DE 00 18 */	addi r30, r30, 0x18
.L_00000700:
/* 00000700 000007C4  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 00000704 000007C8  7C 1D 00 00 */	cmpw r29, r0
/* 00000708 000007CC  41 80 FE F0 */	blt .L_000005F8
/* 0000070C 000007D0  3C 80 00 00 */	lis r4, float_1000_win_00004ab0@ha
/* 00000710 000007D4  3C 60 00 00 */	lis r3, flower_disp@ha
/* 00000714 000007D8  C0 24 00 00 */	lfs f1, float_1000_win_00004ab0@l(r4)
/* 00000718 000007DC  38 A3 00 00 */	addi r5, r3, flower_disp@l
/* 0000071C 000007E0  7F E6 FB 78 */	mr r6, r31
/* 00000720 000007E4  38 60 00 08 */	li r3, 0x8
/* 00000724 000007E8  38 80 00 00 */	li r4, 0x0
/* 00000728 000007EC  48 00 06 61 */	bl dispEntry
/* 0000072C 000007F0  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00000730 000007F4  38 60 00 02 */	li r3, 0x2
/* 00000734 000007F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000738 000007FC  7C 08 03 A6 */	mtlr r0
/* 0000073C 00000800  38 21 00 20 */	addi r1, r1, 0x20
/* 00000740 00000804  4E 80 00 20 */	blr
.endfn evt_flower

# .text:0x26C | 0x744 | size: 0x6C
.fn evt_flower_init, local
/* 00000744 00000808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000748 0000080C  7C 08 02 A6 */	mflr r0
/* 0000074C 00000810  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 00000750 00000814  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000754 00000818  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000758 0000081C  7C 7E 1B 78 */	mr r30, r3
/* 0000075C 00000820  38 64 00 00 */	addi r3, r4, mapalloc_base_ptr@l
/* 00000760 00000824  38 80 00 08 */	li r4, 0x8
/* 00000764 00000828  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00000768 0000082C  48 00 06 21 */	bl _mapAlloc
/* 0000076C 00000830  7C 7F 1B 78 */	mr r31, r3
/* 00000770 00000834  38 00 00 37 */	li r0, 0x37
/* 00000774 00000838  90 03 00 00 */	stw r0, 0x0(r3)
/* 00000778 0000083C  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 0000077C 00000840  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 00000780 00000844  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 00000784 00000848  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00000788 0000084C  1C 80 00 18 */	mulli r4, r0, 0x18
/* 0000078C 00000850  48 00 05 FD */	bl _mapAlloc
/* 00000790 00000854  90 7F 00 04 */	stw r3, 0x4(r31)
/* 00000794 00000858  38 60 00 02 */	li r3, 0x2
/* 00000798 0000085C  93 FE 00 C4 */	stw r31, 0xc4(r30)
/* 0000079C 00000860  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000007A0 00000864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000007A4 00000868  7C 08 03 A6 */	mtlr r0
/* 000007A8 0000086C  38 21 00 10 */	addi r1, r1, 0x10
/* 000007AC 00000870  4E 80 00 20 */	blr
.endfn evt_flower_init

# .text:0x2D8 | 0x7B0 | size: 0x7C
.fn randf, local
/* 000007B0 00000874  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000007B4 00000878  7C 08 02 A6 */	mflr r0
/* 000007B8 0000087C  90 01 00 34 */	stw r0, 0x34(r1)
/* 000007BC 00000880  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 000007C0 00000884  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 000007C4 00000888  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 000007C8 0000088C  F3 C1 00 18 */	psq_st f30, 0x18(r1), 0, qr0
/* 000007CC 00000890  FF C0 08 90 */	fmr f30, f1
/* 000007D0 00000894  FF E0 10 90 */	fmr f31, f2
/* 000007D4 00000898  48 00 05 B5 */	bl rand
/* 000007D8 0000089C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 000007DC 000008A0  3C 00 43 30 */	lis r0, 0x4330
/* 000007E0 000008A4  90 61 00 0C */	stw r3, 0xc(r1)
/* 000007E4 000008A8  3C 80 00 00 */	lis r4, double_to_int_win_00004ac0@ha
/* 000007E8 000008AC  3C 60 00 00 */	lis r3, float_32767_win_00004abc@ha
/* 000007EC 000008B0  C8 64 00 00 */	lfd f3, double_to_int_win_00004ac0@l(r4)
/* 000007F0 000008B4  90 01 00 08 */	stw r0, 0x8(r1)
/* 000007F4 000008B8  EC 1F F0 28 */	fsubs f0, f31, f30
/* 000007F8 000008BC  C0 23 00 00 */	lfs f1, float_32767_win_00004abc@l(r3)
/* 000007FC 000008C0  C8 41 00 08 */	lfd f2, 0x8(r1)
/* 00000800 000008C4  EC 42 18 28 */	fsubs f2, f2, f3
/* 00000804 000008C8  EC 22 08 24 */	fdivs f1, f2, f1
/* 00000808 000008CC  EC 21 F0 3A */	fmadds f1, f1, f0, f30
/* 0000080C 000008D0  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 00000810 000008D4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 00000814 000008D8  E3 C1 00 18 */	psq_l f30, 0x18(r1), 0, qr0
/* 00000818 000008DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000081C 000008E0  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 00000820 000008E4  7C 08 03 A6 */	mtlr r0
/* 00000824 000008E8  38 21 00 30 */	addi r1, r1, 0x30
/* 00000828 000008EC  4E 80 00 20 */	blr
.endfn randf

# .text:0x354 | 0x82C | size: 0x3C8
.fn flower_disp, local
/* 0000082C 000008F0  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 00000830 000008F4  7C 08 02 A6 */	mflr r0
/* 00000834 000008F8  90 01 01 24 */	stw r0, 0x124(r1)
/* 00000838 000008FC  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 0000083C 00000900  F3 E1 01 18 */	psq_st f31, 0x118(r1), 0, qr0
/* 00000840 00000904  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 00000844 00000908  F3 C1 01 08 */	psq_st f30, 0x108(r1), 0, qr0
/* 00000848 0000090C  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 0000084C 00000910  F3 A1 00 F8 */	psq_st f29, 0xf8(r1), 0, qr0
/* 00000850 00000914  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 00000854 00000918  F3 81 00 E8 */	psq_st f28, 0xe8(r1), 0, qr0
/* 00000858 0000091C  BF 01 00 C0 */	stmw r24, 0xc0(r1)
/* 0000085C 00000920  7C 9E 23 78 */	mr r30, r4
/* 00000860 00000924  48 00 05 29 */	bl camGetPtr
/* 00000864 00000928  7C 7F 1B 78 */	mr r31, r3
/* 00000868 0000092C  38 60 00 01 */	li r3, 0x1
/* 0000086C 00000930  38 80 00 04 */	li r4, 0x4
/* 00000870 00000934  38 A0 00 05 */	li r5, 0x5
/* 00000874 00000938  38 C0 00 00 */	li r6, 0x0
/* 00000878 0000093C  48 00 05 11 */	bl GXSetBlendMode
/* 0000087C 00000940  38 60 00 01 */	li r3, 0x1
/* 00000880 00000944  48 00 05 09 */	bl GXSetZCompLoc
/* 00000884 00000948  38 60 00 07 */	li r3, 0x7
/* 00000888 0000094C  38 80 00 00 */	li r4, 0x0
/* 0000088C 00000950  38 A0 00 00 */	li r5, 0x0
/* 00000890 00000954  38 C0 00 07 */	li r6, 0x7
/* 00000894 00000958  38 E0 00 00 */	li r7, 0x0
/* 00000898 0000095C  48 00 04 F1 */	bl GXSetAlphaCompare
/* 0000089C 00000960  38 60 00 00 */	li r3, 0x0
/* 000008A0 00000964  38 80 00 07 */	li r4, 0x7
/* 000008A4 00000968  38 A0 00 00 */	li r5, 0x0
/* 000008A8 0000096C  48 00 04 E1 */	bl GXSetZMode
/* 000008AC 00000970  38 60 00 01 */	li r3, 0x1
/* 000008B0 00000974  48 00 04 D9 */	bl GXSetNumTevStages
/* 000008B4 00000978  38 60 00 00 */	li r3, 0x0
/* 000008B8 0000097C  38 80 00 00 */	li r4, 0x0
/* 000008BC 00000980  38 A0 00 00 */	li r5, 0x0
/* 000008C0 00000984  38 C0 00 04 */	li r6, 0x4
/* 000008C4 00000988  48 00 04 C5 */	bl GXSetTevOrder
/* 000008C8 0000098C  38 60 00 00 */	li r3, 0x0
/* 000008CC 00000990  38 80 00 00 */	li r4, 0x0
/* 000008D0 00000994  38 A0 00 00 */	li r5, 0x0
/* 000008D4 00000998  38 C0 00 00 */	li r6, 0x0
/* 000008D8 0000099C  38 E0 00 01 */	li r7, 0x1
/* 000008DC 000009A0  39 00 00 00 */	li r8, 0x0
/* 000008E0 000009A4  48 00 04 A9 */	bl GXSetTevColorOp
/* 000008E4 000009A8  38 60 00 00 */	li r3, 0x0
/* 000008E8 000009AC  38 80 00 00 */	li r4, 0x0
/* 000008EC 000009B0  38 A0 00 00 */	li r5, 0x0
/* 000008F0 000009B4  38 C0 00 00 */	li r6, 0x0
/* 000008F4 000009B8  38 E0 00 01 */	li r7, 0x1
/* 000008F8 000009BC  39 00 00 00 */	li r8, 0x0
/* 000008FC 000009C0  48 00 04 8D */	bl GXSetTevAlphaOp
/* 00000900 000009C4  38 60 00 00 */	li r3, 0x0
/* 00000904 000009C8  38 80 00 0F */	li r4, 0xf
/* 00000908 000009CC  38 A0 00 08 */	li r5, 0x8
/* 0000090C 000009D0  38 C0 00 0A */	li r6, 0xa
/* 00000910 000009D4  38 E0 00 0F */	li r7, 0xf
/* 00000914 000009D8  48 00 04 75 */	bl GXSetTevColorIn
/* 00000918 000009DC  38 60 00 00 */	li r3, 0x0
/* 0000091C 000009E0  38 80 00 07 */	li r4, 0x7
/* 00000920 000009E4  38 A0 00 04 */	li r5, 0x4
/* 00000924 000009E8  38 C0 00 05 */	li r6, 0x5
/* 00000928 000009EC  38 E0 00 07 */	li r7, 0x7
/* 0000092C 000009F0  48 00 04 5D */	bl GXSetTevAlphaIn
/* 00000930 000009F4  38 60 00 01 */	li r3, 0x1
/* 00000934 000009F8  48 00 04 55 */	bl GXSetNumChans
/* 00000938 000009FC  38 60 00 04 */	li r3, 0x4
/* 0000093C 00000A00  38 80 00 00 */	li r4, 0x0
/* 00000940 00000A04  38 A0 00 00 */	li r5, 0x0
/* 00000944 00000A08  38 C0 00 00 */	li r6, 0x0
/* 00000948 00000A0C  38 E0 00 00 */	li r7, 0x0
/* 0000094C 00000A10  39 00 00 00 */	li r8, 0x0
/* 00000950 00000A14  39 20 00 02 */	li r9, 0x2
/* 00000954 00000A18  48 00 04 35 */	bl GXSetChanCtrl
/* 00000958 00000A1C  38 60 00 00 */	li r3, 0x0
/* 0000095C 00000A20  48 00 04 2D */	bl GXSetCullMode
/* 00000960 00000A24  48 00 04 29 */	bl GXClearVtxDesc
/* 00000964 00000A28  38 60 00 09 */	li r3, 0x9
/* 00000968 00000A2C  38 80 00 01 */	li r4, 0x1
/* 0000096C 00000A30  48 00 04 1D */	bl GXSetVtxDesc
/* 00000970 00000A34  38 60 00 0D */	li r3, 0xd
/* 00000974 00000A38  38 80 00 01 */	li r4, 0x1
/* 00000978 00000A3C  48 00 04 11 */	bl GXSetVtxDesc
/* 0000097C 00000A40  38 60 00 00 */	li r3, 0x0
/* 00000980 00000A44  38 80 00 09 */	li r4, 0x9
/* 00000984 00000A48  38 A0 00 01 */	li r5, 0x1
/* 00000988 00000A4C  38 C0 00 04 */	li r6, 0x4
/* 0000098C 00000A50  38 E0 00 00 */	li r7, 0x0
/* 00000990 00000A54  48 00 03 F9 */	bl GXSetVtxAttrFmt
/* 00000994 00000A58  38 60 00 00 */	li r3, 0x0
/* 00000998 00000A5C  38 80 00 0D */	li r4, 0xd
/* 0000099C 00000A60  38 A0 00 01 */	li r5, 0x1
/* 000009A0 00000A64  38 C0 00 04 */	li r6, 0x4
/* 000009A4 00000A68  38 E0 00 00 */	li r7, 0x0
/* 000009A8 00000A6C  48 00 03 E1 */	bl GXSetVtxAttrFmt
/* 000009AC 00000A70  38 60 00 01 */	li r3, 0x1
/* 000009B0 00000A74  48 00 03 D9 */	bl GXSetNumTexGens
/* 000009B4 00000A78  38 60 00 00 */	li r3, 0x0
/* 000009B8 00000A7C  38 80 00 01 */	li r4, 0x1
/* 000009BC 00000A80  38 A0 00 04 */	li r5, 0x4
/* 000009C0 00000A84  38 C0 00 3C */	li r6, 0x3c
/* 000009C4 00000A88  38 E0 00 00 */	li r7, 0x0
/* 000009C8 00000A8C  39 00 00 7D */	li r8, 0x7d
/* 000009CC 00000A90  48 00 03 BD */	bl GXSetTexCoordGen2
/* 000009D0 00000A94  3C 80 00 00 */	lis r4, texture_0@ha
/* 000009D4 00000A98  38 61 00 10 */	addi r3, r1, 0x10
/* 000009D8 00000A9C  38 84 00 00 */	addi r4, r4, texture_0@l
/* 000009DC 00000AA0  38 A0 00 65 */	li r5, 0x65
/* 000009E0 00000AA4  38 C0 00 5C */	li r6, 0x5c
/* 000009E4 00000AA8  38 E0 00 0E */	li r7, 0xe
/* 000009E8 00000AAC  39 00 00 00 */	li r8, 0x0
/* 000009EC 00000AB0  39 20 00 00 */	li r9, 0x0
/* 000009F0 00000AB4  39 40 00 00 */	li r10, 0x0
/* 000009F4 00000AB8  48 00 03 95 */	bl GXInitTexObj
/* 000009F8 00000ABC  3C 80 00 00 */	lis r4, zero_win_00004ab4@ha
/* 000009FC 00000AC0  38 61 00 10 */	addi r3, r1, 0x10
/* 00000A00 00000AC4  38 A4 00 00 */	addi r5, r4, zero_win_00004ab4@l
/* 00000A04 00000AC8  38 80 00 01 */	li r4, 0x1
/* 00000A08 00000ACC  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00000A0C 00000AD0  38 A0 00 01 */	li r5, 0x1
/* 00000A10 00000AD4  38 C0 00 00 */	li r6, 0x0
/* 00000A14 00000AD8  38 E0 00 00 */	li r7, 0x0
/* 00000A18 00000ADC  FC 40 08 90 */	fmr f2, f1
/* 00000A1C 00000AE0  39 00 00 00 */	li r8, 0x0
/* 00000A20 00000AE4  FC 60 08 90 */	fmr f3, f1
/* 00000A24 00000AE8  48 00 03 65 */	bl GXInitTexObjLOD
/* 00000A28 00000AEC  38 61 00 10 */	addi r3, r1, 0x10
/* 00000A2C 00000AF0  38 80 00 00 */	li r4, 0x0
/* 00000A30 00000AF4  48 00 03 59 */	bl GXLoadTexObj
/* 00000A34 00000AF8  3C 60 00 00 */	lis r3, float_101_win_00004ac8@ha
/* 00000A38 00000AFC  3C 80 00 00 */	lis r4, float_92_win_00004acc@ha
/* 00000A3C 00000B00  38 A3 00 00 */	addi r5, r3, float_101_win_00004ac8@l
/* 00000A40 00000B04  C0 24 00 00 */	lfs f1, float_92_win_00004acc@l(r4)
/* 00000A44 00000B08  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00000A48 00000B0C  3C 80 00 00 */	lis r4, float_46_win_00004ad4@ha
/* 00000A4C 00000B10  38 A4 00 00 */	addi r5, r4, float_46_win_00004ad4@l
/* 00000A50 00000B14  3C E0 00 00 */	lis r7, dat_win_00004a78@ha
/* 00000A54 00000B18  3C 60 00 00 */	lis r3, float_0p5_win_00004ad0@ha
/* 00000A58 00000B1C  FC 40 00 50 */	fneg f2, f0
/* 00000A5C 00000B20  C0 03 00 00 */	lfs f0, float_0p5_win_00004ad0@l(r3)
/* 00000A60 00000B24  FC 20 08 50 */	fneg f1, f1
/* 00000A64 00000B28  3C 60 00 00 */	lis r3, float_50p5_win_00004adc@ha
/* 00000A68 00000B2C  3C C0 00 00 */	lis r6, zero_win_00004ab4@ha
/* 00000A6C 00000B30  EF A2 00 32 */	fmuls f29, f2, f0
/* 00000A70 00000B34  3C 80 00 00 */	lis r4, float_1_win_00004ad8@ha
/* 00000A74 00000B38  EF 81 00 32 */	fmuls f28, f1, f0
/* 00000A78 00000B3C  83 3E 00 04 */	lwz r25, 0x4(r30)
/* 00000A7C 00000B40  3B 47 00 00 */	addi r26, r7, dat_win_00004a78@l
/* 00000A80 00000B44  C3 C5 00 00 */	lfs f30, 0x0(r5)
/* 00000A84 00000B48  C3 E3 00 00 */	lfs f31, float_50p5_win_00004adc@l(r3)
/* 00000A88 00000B4C  3B 66 00 00 */	addi r27, r6, zero_win_00004ab4@l
/* 00000A8C 00000B50  3B A4 00 00 */	addi r29, r4, float_1_win_00004ad8@l
/* 00000A90 00000B54  3B 00 00 00 */	li r24, 0x0
/* 00000A94 00000B58  3F 80 CC 01 */	lis r28, 0xcc01
/* 00000A98 00000B5C  48 00 01 1C */	b .L_00000BB4
.L_00000A9C:
/* 00000A9C 00000B60  80 BA 00 00 */	lwz r5, 0x0(r26)
/* 00000AA0 00000B64  38 81 00 0C */	addi r4, r1, 0xc
/* 00000AA4 00000B68  80 19 00 14 */	lwz r0, 0x14(r25)
/* 00000AA8 00000B6C  38 60 00 04 */	li r3, 0x4
/* 00000AAC 00000B70  90 A1 00 08 */	stw r5, 0x8(r1)
/* 00000AB0 00000B74  98 01 00 0B */	stb r0, 0xb(r1)
/* 00000AB4 00000B78  80 01 00 08 */	lwz r0, 0x8(r1)
/* 00000AB8 00000B7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 00000ABC 00000B80  48 00 02 CD */	bl GXSetChanMatColor
/* 00000AC0 00000B84  C0 39 00 04 */	lfs f1, 0x4(r25)
/* 00000AC4 00000B88  38 61 00 90 */	addi r3, r1, 0x90
/* 00000AC8 00000B8C  C0 59 00 08 */	lfs f2, 0x8(r25)
/* 00000ACC 00000B90  C0 7B 00 00 */	lfs f3, 0x0(r27)
/* 00000AD0 00000B94  48 00 02 B9 */	bl PSMTXTrans
/* 00000AD4 00000B98  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 00000AD8 00000B9C  38 61 00 60 */	addi r3, r1, 0x60
/* 00000ADC 00000BA0  FC 40 08 90 */	fmr f2, f1
/* 00000AE0 00000BA4  FC 60 08 90 */	fmr f3, f1
/* 00000AE4 00000BA8  48 00 02 A5 */	bl PSMTXScale
/* 00000AE8 00000BAC  38 7F 01 1C */	addi r3, r31, 0x11c
/* 00000AEC 00000BB0  38 81 00 90 */	addi r4, r1, 0x90
/* 00000AF0 00000BB4  38 A1 00 30 */	addi r5, r1, 0x30
/* 00000AF4 00000BB8  48 00 02 95 */	bl PSMTXConcat
/* 00000AF8 00000BBC  38 61 00 30 */	addi r3, r1, 0x30
/* 00000AFC 00000BC0  38 81 00 60 */	addi r4, r1, 0x60
/* 00000B00 00000BC4  7C 65 1B 78 */	mr r5, r3
/* 00000B04 00000BC8  48 00 02 85 */	bl PSMTXConcat
/* 00000B08 00000BCC  38 61 00 30 */	addi r3, r1, 0x30
/* 00000B0C 00000BD0  38 80 00 00 */	li r4, 0x0
/* 00000B10 00000BD4  48 00 02 79 */	bl GXLoadPosMtxImm
/* 00000B14 00000BD8  38 60 00 00 */	li r3, 0x0
/* 00000B18 00000BDC  48 00 02 71 */	bl GXSetCurrentMtx
/* 00000B1C 00000BE0  38 60 00 80 */	li r3, 0x80
/* 00000B20 00000BE4  38 80 00 00 */	li r4, 0x0
/* 00000B24 00000BE8  38 A0 00 04 */	li r5, 0x4
/* 00000B28 00000BEC  48 00 02 61 */	bl GXBegin
/* 00000B2C 00000BF0  D3 BC 80 00 */	stfs f29, -0x8000(r28)
/* 00000B30 00000BF4  3B 18 00 01 */	addi r24, r24, 0x1
/* 00000B34 00000BF8  3B 39 00 18 */	addi r25, r25, 0x18
/* 00000B38 00000BFC  D3 DC 80 00 */	stfs f30, -0x8000(r28)
/* 00000B3C 00000C00  C0 1B 00 00 */	lfs f0, 0x0(r27)
/* 00000B40 00000C04  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 00000B44 00000C08  C0 1B 00 00 */	lfs f0, 0x0(r27)
/* 00000B48 00000C0C  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 00000B4C 00000C10  C0 1B 00 00 */	lfs f0, 0x0(r27)
/* 00000B50 00000C14  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 00000B54 00000C18  D3 BC 80 00 */	stfs f29, -0x8000(r28)
/* 00000B58 00000C1C  D3 9C 80 00 */	stfs f28, -0x8000(r28)
/* 00000B5C 00000C20  C0 1B 00 00 */	lfs f0, 0x0(r27)
/* 00000B60 00000C24  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 00000B64 00000C28  C0 1B 00 00 */	lfs f0, 0x0(r27)
/* 00000B68 00000C2C  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 00000B6C 00000C30  C0 1D 00 00 */	lfs f0, 0x0(r29)
/* 00000B70 00000C34  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 00000B74 00000C38  D3 FC 80 00 */	stfs f31, -0x8000(r28)
/* 00000B78 00000C3C  D3 9C 80 00 */	stfs f28, -0x8000(r28)
/* 00000B7C 00000C40  C0 1B 00 00 */	lfs f0, 0x0(r27)
/* 00000B80 00000C44  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 00000B84 00000C48  C0 1D 00 00 */	lfs f0, 0x0(r29)
/* 00000B88 00000C4C  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 00000B8C 00000C50  C0 1D 00 00 */	lfs f0, 0x0(r29)
/* 00000B90 00000C54  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 00000B94 00000C58  D3 FC 80 00 */	stfs f31, -0x8000(r28)
/* 00000B98 00000C5C  D3 DC 80 00 */	stfs f30, -0x8000(r28)
/* 00000B9C 00000C60  C0 1B 00 00 */	lfs f0, 0x0(r27)
/* 00000BA0 00000C64  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 00000BA4 00000C68  C0 1D 00 00 */	lfs f0, 0x0(r29)
/* 00000BA8 00000C6C  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 00000BAC 00000C70  C0 1B 00 00 */	lfs f0, 0x0(r27)
/* 00000BB0 00000C74  D0 1C 80 00 */	stfs f0, -0x8000(r28)
.L_00000BB4:
/* 00000BB4 00000C78  80 1E 00 00 */	lwz r0, 0x0(r30)
/* 00000BB8 00000C7C  7C 18 00 00 */	cmpw r24, r0
/* 00000BBC 00000C80  41 80 FE E0 */	blt .L_00000A9C
/* 00000BC0 00000C84  E3 E1 01 18 */	psq_l f31, 0x118(r1), 0, qr0
/* 00000BC4 00000C88  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 00000BC8 00000C8C  E3 C1 01 08 */	psq_l f30, 0x108(r1), 0, qr0
/* 00000BCC 00000C90  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 00000BD0 00000C94  E3 A1 00 F8 */	psq_l f29, 0xf8(r1), 0, qr0
/* 00000BD4 00000C98  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 00000BD8 00000C9C  E3 81 00 E8 */	psq_l f28, 0xe8(r1), 0, qr0
/* 00000BDC 00000CA0  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 00000BE0 00000CA4  BB 01 00 C0 */	lmw r24, 0xc0(r1)
/* 00000BE4 00000CA8  80 01 01 24 */	lwz r0, 0x124(r1)
/* 00000BE8 00000CAC  7C 08 03 A6 */	mtlr r0
/* 00000BEC 00000CB0  38 21 01 20 */	addi r1, r1, 0x120
/* 00000BF0 00000CB4  4E 80 00 20 */	blr
.endfn flower_disp

# .text:0x71C | 0xBF4 | size: 0x28
.fn mirror_ball, local
/* 00000BF4 00000CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000BF8 00000CBC  7C 08 02 A6 */	mflr r0
/* 00000BFC 00000CC0  7C 64 1B 78 */	mr r4, r3
/* 00000C00 00000CC4  38 60 00 0A */	li r3, 0xa
/* 00000C04 00000CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000C08 00000CCC  48 00 01 81 */	bl envAddTev
/* 00000C0C 00000CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000C10 00000CD4  7C 08 03 A6 */	mtlr r0
/* 00000C14 00000CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 00000C18 00000CDC  4E 80 00 20 */	blr
.endfn mirror_ball

# .text:0x744 | 0xC1C | size: 0x9C
.fn fade_alpha, local
/* 00000C1C 00000CE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000C20 00000CE4  7C 08 02 A6 */	mflr r0
/* 00000C24 00000CE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000C28 00000CEC  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 00000C2C 00000CF0  7C 7C 1B 78 */	mr r28, r3
/* 00000C30 00000CF4  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000C34 00000CF8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000C38 00000CFC  48 00 01 51 */	bl evtGetValue
/* 00000C3C 00000D00  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000C40 00000D04  7C 7D 1B 78 */	mr r29, r3
/* 00000C44 00000D08  7F 83 E3 78 */	mr r3, r28
/* 00000C48 00000D0C  48 00 01 41 */	bl evtGetValue
/* 00000C4C 00000D10  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00000C50 00000D14  7C 7E 1B 78 */	mr r30, r3
/* 00000C54 00000D18  7F 83 E3 78 */	mr r3, r28
/* 00000C58 00000D1C  48 00 01 31 */	bl evtGetValue
/* 00000C5C 00000D20  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00000C60 00000D24  7C 7F 1B 78 */	mr r31, r3
/* 00000C64 00000D28  7F 83 E3 78 */	mr r3, r28
/* 00000C68 00000D2C  48 00 01 21 */	bl evtGetValue
/* 00000C6C 00000D30  3C 80 00 00 */	lis r4, zero_win_00004770@ha
/* 00000C70 00000D34  38 A1 00 0C */	addi r5, r1, 0xc
/* 00000C74 00000D38  80 04 00 00 */	lwz r0, zero_win_00004770@l(r4)
/* 00000C78 00000D3C  38 80 00 00 */	li r4, 0x0
/* 00000C7C 00000D40  90 01 00 08 */	stw r0, 0x8(r1)
/* 00000C80 00000D44  98 61 00 0B */	stb r3, 0xb(r1)
/* 00000C84 00000D48  38 60 00 0D */	li r3, 0xd
/* 00000C88 00000D4C  9B A1 00 08 */	stb r29, 0x8(r1)
/* 00000C8C 00000D50  9B C1 00 09 */	stb r30, 0x9(r1)
/* 00000C90 00000D54  9B E1 00 0A */	stb r31, 0xa(r1)
/* 00000C94 00000D58  80 01 00 08 */	lwz r0, 0x8(r1)
/* 00000C98 00000D5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 00000C9C 00000D60  48 00 00 ED */	bl fadeEntry
/* 00000CA0 00000D64  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00000CA4 00000D68  38 60 00 02 */	li r3, 0x2
/* 00000CA8 00000D6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000CAC 00000D70  7C 08 03 A6 */	mtlr r0
/* 00000CB0 00000D74  38 21 00 20 */	addi r1, r1, 0x20
/* 00000CB4 00000D78  4E 80 00 20 */	blr
.endfn fade_alpha

# .text:0x7E0 | 0xCB8 | size: 0x58
.fn ss_ch_set, local
/* 00000CB8 00000D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000CBC 00000D80  7C 08 02 A6 */	mflr r0
/* 00000CC0 00000D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000CC4 00000D88  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000CC8 00000D8C  7C 7E 1B 78 */	mr r30, r3
/* 00000CCC 00000D90  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000CD0 00000D94  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000CD4 00000D98  48 00 00 B5 */	bl evtGetValue
/* 00000CD8 00000D9C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000CDC 00000DA0  7C 7F 1B 78 */	mr r31, r3
/* 00000CE0 00000DA4  7F C3 F3 78 */	mr r3, r30
/* 00000CE4 00000DA8  48 00 00 A5 */	bl evtGetValue
/* 00000CE8 00000DAC  3C 80 00 00 */	lis r4, ssf@ha
/* 00000CEC 00000DB0  57 E0 10 3A */	slwi r0, r31, 2
/* 00000CF0 00000DB4  38 84 00 00 */	addi r4, r4, ssf@l
/* 00000CF4 00000DB8  7C 64 01 2E */	stwx r3, r4, r0
/* 00000CF8 00000DBC  38 60 00 02 */	li r3, 0x2
/* 00000CFC 00000DC0  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00000D00 00000DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000D04 00000DC8  7C 08 03 A6 */	mtlr r0
/* 00000D08 00000DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 00000D0C 00000DD0  4E 80 00 20 */	blr
.endfn ss_ch_set

# .text:0x838 | 0xD10 | size: 0x78
.fn ss_ch_check, local
/* 00000D10 00000DD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000D14 00000DD8  7C 08 02 A6 */	mflr r0
/* 00000D18 00000DDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000D1C 00000DE0  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00000D20 00000DE4  7C 7E 1B 78 */	mr r30, r3
/* 00000D24 00000DE8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000D28 00000DEC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000D2C 00000DF0  48 00 00 5D */	bl evtGetValue
/* 00000D30 00000DF4  3C 80 00 00 */	lis r4, ssf@ha
/* 00000D34 00000DF8  54 65 10 3A */	slwi r5, r3, 2
/* 00000D38 00000DFC  38 84 00 00 */	addi r4, r4, ssf@l
/* 00000D3C 00000E00  3C 00 43 30 */	lis r0, 0x4330
/* 00000D40 00000E04  7C A4 28 2E */	lwzx r5, r4, r5
/* 00000D44 00000E08  3C 60 00 00 */	lis r3, double_to_int_win_00004ac0@ha
/* 00000D48 00000E0C  38 C3 00 00 */	addi r6, r3, double_to_int_win_00004ac0@l
/* 00000D4C 00000E10  90 01 00 08 */	stw r0, 0x8(r1)
/* 00000D50 00000E14  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 00000D54 00000E18  C8 26 00 00 */	lfd f1, 0x0(r6)
/* 00000D58 00000E1C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 00000D5C 00000E20  7F C3 F3 78 */	mr r3, r30
/* 00000D60 00000E24  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000D64 00000E28  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00000D68 00000E2C  EC 20 08 28 */	fsubs f1, f0, f1
/* 00000D6C 00000E30  48 00 00 1D */	bl evtSetFloat
/* 00000D70 00000E34  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00000D74 00000E38  38 60 00 02 */	li r3, 0x2
/* 00000D78 00000E3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000D7C 00000E40  7C 08 03 A6 */	mtlr r0
/* 00000D80 00000E44  38 21 00 20 */	addi r1, r1, 0x20
/* 00000D84 00000E48  4E 80 00 20 */	blr
.endfn ss_ch_check

# 0x00000DC8..0x00001398 | size: 0x5D0
.rodata
.balign 8

# .rodata:0x0 | 0xDC8 | size: 0xA
.obj str_S_doa_w_l_win_00004510, local
	.string "S_doa_w_l"
.endobj str_S_doa_w_l_win_00004510

# .rodata:0xA | 0xDD2 | size: 0x2
.obj gap_03_00000DD2_rodata, global
.hidden gap_03_00000DD2_rodata
	.2byte 0x0000
.endobj gap_03_00000DD2_rodata

# .rodata:0xC | 0xDD4 | size: 0xA
.obj str_S_doa_w_r_win_0000451c, local
	.string "S_doa_w_r"
.endobj str_S_doa_w_r_win_0000451c

# .rodata:0x16 | 0xDDE | size: 0x2
.obj gap_03_00000DDE_rodata, global
.hidden gap_03_00000DDE_rodata
	.2byte 0x0000
.endobj gap_03_00000DDE_rodata

# .rodata:0x18 | 0xDE0 | size: 0xA
.obj str_S_doa_e_l_win_00004528, local
	.string "S_doa_e_l"
.endobj str_S_doa_e_l_win_00004528

# .rodata:0x22 | 0xDEA | size: 0x2
.obj gap_03_00000DEA_rodata, global
.hidden gap_03_00000DEA_rodata
	.2byte 0x0000
.endobj gap_03_00000DEA_rodata

# .rodata:0x24 | 0xDEC | size: 0xA
.obj str_S_doa_e_r_win_00004534, local
	.string "S_doa_e_r"
.endobj str_S_doa_e_r_win_00004534

# .rodata:0x2E | 0xDF6 | size: 0x2
.obj gap_03_00000DF6_rodata, global
.hidden gap_03_00000DF6_rodata
	.2byte 0x0000
.endobj gap_03_00000DF6_rodata

# .rodata:0x30 | 0xDF8 | size: 0x7
.obj str_w_bero_win_00004540, local
	.string "w_bero"
.endobj str_w_bero_win_00004540

# .rodata:0x37 | 0xDFF | size: 0x1
.obj gap_03_00000DFF_rodata, global
.hidden gap_03_00000DFF_rodata
	.byte 0x00
.endobj gap_03_00000DFF_rodata

# .rodata:0x38 | 0xE00 | size: 0x7
.obj str_win_00_win_00004548, local
	.string "win_00"
.endobj str_win_00_win_00004548

# .rodata:0x3F | 0xE07 | size: 0x1
.obj gap_03_00000E07_rodata, global
.hidden gap_03_00000E07_rodata
	.byte 0x00
.endobj gap_03_00000E07_rodata

# .rodata:0x40 | 0xE08 | size: 0x1
.obj zero_win_00004550, local
	.byte 0x00
.endobj zero_win_00004550

# .rodata:0x41 | 0xE09 | size: 0x3
.obj gap_03_00000E09_rodata, global
.hidden gap_03_00000E09_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000E09_rodata

# .rodata:0x44 | 0xE0C | size: 0x7
.obj str_win_03_win_00004554, local
	.string "win_03"
.endobj str_win_03_win_00004554

# .rodata:0x4B | 0xE13 | size: 0x1
.obj gap_03_00000E13_rodata, global
.hidden gap_03_00000E13_rodata
	.byte 0x00
.endobj gap_03_00000E13_rodata

# .rodata:0x4C | 0xE14 | size: 0x7
.obj str_n_bero_win_0000455c, local
	.string "n_bero"
.endobj str_n_bero_win_0000455c

# .rodata:0x53 | 0xE1B | size: 0x1
.obj gap_03_00000E1B_rodata, global
.hidden gap_03_00000E1B_rodata
	.byte 0x00
.endobj gap_03_00000E1B_rodata

# .rodata:0x54 | 0xE1C | size: 0x7
.obj str_e_bero_win_00004564, local
	.string "e_bero"
.endobj str_e_bero_win_00004564

# .rodata:0x5B | 0xE23 | size: 0x1
.obj gap_03_00000E23_rodata, global
.hidden gap_03_00000E23_rodata
	.byte 0x00
.endobj gap_03_00000E23_rodata

# .rodata:0x5C | 0xE24 | size: 0x7
.obj str_win_05_win_0000456c, local
	.string "win_05"
.endobj str_win_05_win_0000456c

# .rodata:0x63 | 0xE2B | size: 0x1
.obj gap_03_00000E2B_rodata, global
.hidden gap_03_00000E2B_rodata
	.byte 0x00
.endobj gap_03_00000E2B_rodata

# .rodata:0x64 | 0xE2C | size: 0x13
.obj str_stg2_win_e05_00_00_win_00004574, local
	.string "stg2_win_e05_00_00"
.endobj str_stg2_win_e05_00_00_win_00004574

# .rodata:0x77 | 0xE3F | size: 0x1
.obj gap_03_00000E3F_rodata, global
.hidden gap_03_00000E3F_rodata
	.byte 0x00
.endobj gap_03_00000E3F_rodata

# .rodata:0x78 | 0xE40 | size: 0x9
.obj str_extparty_win_00004588, local
	.string "extparty"
.endobj str_extparty_win_00004588

# .rodata:0x81 | 0xE49 | size: 0x3
.obj gap_03_00000E49_rodata, global
.hidden gap_03_00000E49_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000E49_rodata

# .rodata:0x84 | 0xE4C | size: 0x13
.obj str_stg2_win_e05_00_01_win_00004594, local
	.string "stg2_win_e05_00_01"
.endobj str_stg2_win_e05_00_01_win_00004594

# .rodata:0x97 | 0xE5F | size: 0x1
.obj gap_03_00000E5F_rodata, global
.hidden gap_03_00000E5F_rodata
	.byte 0x00
.endobj gap_03_00000E5F_rodata

# .rodata:0x98 | 0xE60 | size: 0x13
.obj str_stg2_win_e05_00_02_win_000045a8, local
	.string "stg2_win_e05_00_02"
.endobj str_stg2_win_e05_00_02_win_000045a8

# .rodata:0xAB | 0xE73 | size: 0x1
.obj gap_03_00000E73_rodata, global
.hidden gap_03_00000E73_rodata
	.byte 0x00
.endobj gap_03_00000E73_rodata

# .rodata:0xAC | 0xE74 | size: 0x10
.obj str_stg2_win_e04_03_win_000045bc, local
	.string "stg2_win_e04_03"
.endobj str_stg2_win_e04_03_win_000045bc

# .rodata:0xBC | 0xE84 | size: 0x10
.obj str_stg2_win_e04_04_win_000045cc, local
	.string "stg2_win_e04_04"
.endobj str_stg2_win_e04_04_win_000045cc

# .rodata:0xCC | 0xE94 | size: 0x13
.obj str_stg2_win_e05_00_03_win_000045dc, local
	.string "stg2_win_e05_00_03"
.endobj str_stg2_win_e05_00_03_win_000045dc

# .rodata:0xDF | 0xEA7 | size: 0x1
.obj gap_03_00000EA7_rodata, global
.hidden gap_03_00000EA7_rodata
	.byte 0x00
.endobj gap_03_00000EA7_rodata

# .rodata:0xE0 | 0xEA8 | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_win_000045f0, local
	.string "SFX_VOICE_MARIO_FIND1_3"
.endobj str_SFX_VOICE_MARIO_FIND_win_000045f0

# .rodata:0xF8 | 0xEC0 | size: 0x13
.obj str_stg2_win_e05_00_04_win_00004608, local
	.string "stg2_win_e05_00_04"
.endobj str_stg2_win_e05_00_04_win_00004608

# .rodata:0x10B | 0xED3 | size: 0x1
.obj gap_03_00000ED3_rodata, global
.hidden gap_03_00000ED3_rodata
	.byte 0x00
.endobj gap_03_00000ED3_rodata

# .rodata:0x10C | 0xED4 | size: 0x13
.obj str_stg2_win_e05_00_05_win_0000461c, local
	.string "stg2_win_e05_00_05"
.endobj str_stg2_win_e05_00_05_win_0000461c

# .rodata:0x11F | 0xEE7 | size: 0x1
.obj gap_03_00000EE7_rodata, global
.hidden gap_03_00000EE7_rodata
	.byte 0x00
.endobj gap_03_00000EE7_rodata

# .rodata:0x120 | 0xEE8 | size: 0x13
.obj str_stg2_win_e05_00_06_win_00004630, local
	.string "stg2_win_e05_00_06"
.endobj str_stg2_win_e05_00_06_win_00004630

# .rodata:0x133 | 0xEFB | size: 0x1
.obj gap_03_00000EFB_rodata, global
.hidden gap_03_00000EFB_rodata
	.byte 0x00
.endobj gap_03_00000EFB_rodata

# .rodata:0x134 | 0xEFC | size: 0x13
.obj str_stg2_win_e05_00_07_win_00004644, local
	.string "stg2_win_e05_00_07"
.endobj str_stg2_win_e05_00_07_win_00004644

# .rodata:0x147 | 0xF0F | size: 0x1
.obj gap_03_00000F0F_rodata, global
.hidden gap_03_00000F0F_rodata
	.byte 0x00
.endobj gap_03_00000F0F_rodata

# .rodata:0x148 | 0xF10 | size: 0x13
.obj str_stg2_win_e05_00_08_win_00004658, local
	.string "stg2_win_e05_00_08"
.endobj str_stg2_win_e05_00_08_win_00004658

# .rodata:0x15B | 0xF23 | size: 0x1
.obj gap_03_00000F23_rodata, global
.hidden gap_03_00000F23_rodata
	.byte 0x00
.endobj gap_03_00000F23_rodata

# .rodata:0x15C | 0xF24 | size: 0x13
.obj str_stg2_win_e05_00_09_win_0000466c, local
	.string "stg2_win_e05_00_09"
.endobj str_stg2_win_e05_00_09_win_0000466c

# .rodata:0x16F | 0xF37 | size: 0x1
.obj gap_03_00000F37_rodata, global
.hidden gap_03_00000F37_rodata
	.byte 0x00
.endobj gap_03_00000F37_rodata

# .rodata:0x170 | 0xF38 | size: 0x13
.obj str_stg2_win_e05_00_10_win_00004680, local
	.string "stg2_win_e05_00_10"
.endobj str_stg2_win_e05_00_10_win_00004680

# .rodata:0x183 | 0xF4B | size: 0x1
.obj gap_03_00000F4B_rodata, global
.hidden gap_03_00000F4B_rodata
	.byte 0x00
.endobj gap_03_00000F4B_rodata

# .rodata:0x184 | 0xF4C | size: 0x13
.obj str_stg2_win_e05_00_11_win_00004694, local
	.string "stg2_win_e05_00_11"
.endobj str_stg2_win_e05_00_11_win_00004694

# .rodata:0x197 | 0xF5F | size: 0x1
.obj gap_03_00000F5F_rodata, global
.hidden gap_03_00000F5F_rodata
	.byte 0x00
.endobj gap_03_00000F5F_rodata

# .rodata:0x198 | 0xF60 | size: 0x13
.obj str_stg2_win_e05_00_12_win_000046a8, local
	.string "stg2_win_e05_00_12"
.endobj str_stg2_win_e05_00_12_win_000046a8

# .rodata:0x1AB | 0xF73 | size: 0x1
.obj gap_03_00000F73_rodata, global
.hidden gap_03_00000F73_rodata
	.byte 0x00
.endobj gap_03_00000F73_rodata

# .rodata:0x1AC | 0xF74 | size: 0x16
.obj str_stg2_win_e05_00_12_y_win_000046bc, local
	.string "stg2_win_e05_00_12_yn"
.endobj str_stg2_win_e05_00_12_y_win_000046bc

# .rodata:0x1C2 | 0xF8A | size: 0x2
.obj gap_03_00000F8A_rodata, global
.hidden gap_03_00000F8A_rodata
	.2byte 0x0000
.endobj gap_03_00000F8A_rodata

# .rodata:0x1C4 | 0xF8C | size: 0x13
.obj str_stg2_win_e05_00_14_win_000046d4, local
	.string "stg2_win_e05_00_14"
.endobj str_stg2_win_e05_00_14_win_000046d4

# .rodata:0x1D7 | 0xF9F | size: 0x1
.obj gap_03_00000F9F_rodata, global
.hidden gap_03_00000F9F_rodata
	.byte 0x00
.endobj gap_03_00000F9F_rodata

# .rodata:0x1D8 | 0xFA0 | size: 0x15
.obj str_SFX_VOICE_MARIO_NOD1_win_000046e8, local
	.string "SFX_VOICE_MARIO_NOD1"
.endobj str_SFX_VOICE_MARIO_NOD1_win_000046e8

# .rodata:0x1ED | 0xFB5 | size: 0x3
.obj gap_03_00000FB5_rodata, global
.hidden gap_03_00000FB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000FB5_rodata

# .rodata:0x1F0 | 0xFB8 | size: 0x6
.obj str_M_N_2_win_00004700, local
	.string "M_N_2"
.endobj str_M_N_2_win_00004700

# .rodata:0x1F6 | 0xFBE | size: 0x2
.obj gap_03_00000FBE_rodata, global
.hidden gap_03_00000FBE_rodata
	.2byte 0x0000
.endobj gap_03_00000FBE_rodata

# .rodata:0x1F8 | 0xFC0 | size: 0x13
.obj str_stg2_win_e05_00_13_win_00004708, local
	.string "stg2_win_e05_00_13"
.endobj str_stg2_win_e05_00_13_win_00004708

# .rodata:0x20B | 0xFD3 | size: 0x1
.obj gap_03_00000FD3_rodata, global
.hidden gap_03_00000FD3_rodata
	.byte 0x00
.endobj gap_03_00000FD3_rodata

# .rodata:0x20C | 0xFD4 | size: 0x13
.obj str_stg2_win_e05_00_15_win_0000471c, local
	.string "stg2_win_e05_00_15"
.endobj str_stg2_win_e05_00_15_win_0000471c

# .rodata:0x21F | 0xFE7 | size: 0x1
.obj gap_03_00000FE7_rodata, global
.hidden gap_03_00000FE7_rodata
	.byte 0x00
.endobj gap_03_00000FE7_rodata

# .rodata:0x220 | 0xFE8 | size: 0x10
.obj str_stg2_win_e05_19_win_00004730, local
	.string "stg2_win_e05_19"
.endobj str_stg2_win_e05_19_win_00004730

# .rodata:0x230 | 0xFF8 | size: 0x16
.obj str_SFX_STG2_CRAUD_LIGHT_win_00004740, local
	.string "SFX_STG2_CRAUD_LIGHT2"
.endobj str_SFX_STG2_CRAUD_LIGHT_win_00004740

# .rodata:0x246 | 0x100E | size: 0x2
.obj gap_03_0000100E_rodata, global
.hidden gap_03_0000100E_rodata
	.2byte 0x0000
.endobj gap_03_0000100E_rodata

# .rodata:0x248 | 0x1010 | size: 0x8
.obj str_S_mirre_win_00004758, local
	.string "S_mirre"
.endobj str_S_mirre_win_00004758

# .rodata:0x250 | 0x1018 | size: 0x7
.obj str_dummy1_win_00004760, local
	.string "dummy1"
.endobj str_dummy1_win_00004760

# .rodata:0x257 | 0x101F | size: 0x1
.obj gap_03_0000101F_rodata, global
.hidden gap_03_0000101F_rodata
	.byte 0x00
.endobj gap_03_0000101F_rodata

# .rodata:0x258 | 0x1020 | size: 0x7
.obj str_dummy2_win_00004768, local
	.string "dummy2"
.endobj str_dummy2_win_00004768

# .rodata:0x25F | 0x1027 | size: 0x1
.obj gap_03_00001027_rodata, global
.hidden gap_03_00001027_rodata
	.byte 0x00
.endobj gap_03_00001027_rodata

# .rodata:0x260 | 0x1028 | size: 0x4
.obj zero_win_00004770, local
	.4byte 0x00000000
.endobj zero_win_00004770

# .rodata:0x264 | 0x102C | size: 0x9
.obj str_クラウダ_win_00004774, local
	.4byte 0x834E8389
	.4byte 0x8345835F
	.byte 0x00
.endobj str_クラウダ_win_00004774

# .rodata:0x26D | 0x1035 | size: 0x3
.obj gap_03_00001035_rodata, global
.hidden gap_03_00001035_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001035_rodata

# .rodata:0x270 | 0x1038 | size: 0x13
.obj str_stg2_win_e09_00_01_win_00004780, local
	.string "stg2_win_e09_00_01"
.endobj str_stg2_win_e09_00_01_win_00004780

# .rodata:0x283 | 0x104B | size: 0x1
.obj gap_03_0000104B_rodata, global
.hidden gap_03_0000104B_rodata
	.byte 0x00
.endobj gap_03_0000104B_rodata

# .rodata:0x284 | 0x104C | size: 0x10
.obj str_stg2_win_e09_00_win_00004794, local
	.string "stg2_win_e09_00"
.endobj str_stg2_win_e09_00_win_00004794

# .rodata:0x294 | 0x105C | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_win_000047a4, local
	.string "SFX_VOICE_MARIO_NOD1_4"
.endobj str_SFX_VOICE_MARIO_NOD1_win_000047a4

# .rodata:0x2AB | 0x1073 | size: 0x1
.obj gap_03_00001073_rodata, global
.hidden gap_03_00001073_rodata
	.byte 0x00
.endobj gap_03_00001073_rodata

# .rodata:0x2AC | 0x1074 | size: 0x9
.obj str_necklace_win_000047bc, local
	.string "necklace"
.endobj str_necklace_win_000047bc

# .rodata:0x2B5 | 0x107D | size: 0x3
.obj gap_03_0000107D_rodata, global
.hidden gap_03_0000107D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000107D_rodata

# .rodata:0x2B8 | 0x1080 | size: 0x10
.obj str_stg2_win_e09_01_win_000047c8, local
	.string "stg2_win_e09_01"
.endobj str_stg2_win_e09_01_win_000047c8

# .rodata:0x2C8 | 0x1090 | size: 0x16
.obj str_SFX_STG2_CRAUD_LIGHT_win_000047d8, local
	.string "SFX_STG2_CRAUD_LIGHT1"
.endobj str_SFX_STG2_CRAUD_LIGHT_win_000047d8

# .rodata:0x2DE | 0x10A6 | size: 0x2
.obj gap_03_000010A6_rodata, global
.hidden gap_03_000010A6_rodata
	.2byte 0x0000
.endobj gap_03_000010A6_rodata

# .rodata:0x2E0 | 0x10A8 | size: 0x7
.obj str_S_syan_win_000047f0, local
	.string "S_syan"
.endobj str_S_syan_win_000047f0

# .rodata:0x2E7 | 0x10AF | size: 0x1
.obj gap_03_000010AF_rodata, global
.hidden gap_03_000010AF_rodata
	.byte 0x00
.endobj gap_03_000010AF_rodata

# .rodata:0x2E8 | 0x10B0 | size: 0x1A
.obj str_SFX_VOICE_MARIO_QUES_win_000047f8, local
	.string "SFX_VOICE_MARIO_QUESTION1"
.endobj str_SFX_VOICE_MARIO_QUES_win_000047f8

# .rodata:0x302 | 0x10CA | size: 0x2
.obj gap_03_000010CA_rodata, global
.hidden gap_03_000010CA_rodata
	.2byte 0x0000
.endobj gap_03_000010CA_rodata

# .rodata:0x304 | 0x10CC | size: 0x6
.obj str_M_N_3_win_00004814, local
	.string "M_N_3"
.endobj str_M_N_3_win_00004814

# .rodata:0x30A | 0x10D2 | size: 0x2
.obj gap_03_000010D2_rodata, global
.hidden gap_03_000010D2_rodata
	.2byte 0x0000
.endobj gap_03_000010D2_rodata

# .rodata:0x30C | 0x10D4 | size: 0x2
.obj str_S_win_0000481c, local
	.string "S"
.endobj str_S_win_0000481c

# .rodata:0x30E | 0x10D6 | size: 0x2
.obj gap_03_000010D6_rodata, global
.hidden gap_03_000010D6_rodata
	.2byte 0x0000
.endobj gap_03_000010D6_rodata

# .rodata:0x310 | 0x10D8 | size: 0x6
.obj str_hika_win_00004820, local
	.string "hika_"
.endobj str_hika_win_00004820

# .rodata:0x316 | 0x10DE | size: 0x2
.obj gap_03_000010DE_rodata, global
.hidden gap_03_000010DE_rodata
	.2byte 0x0000
.endobj gap_03_000010DE_rodata

# .rodata:0x318 | 0x10E0 | size: 0x6
.obj str_mario_win_00004828, local
	.string "mario"
.endobj str_mario_win_00004828

# .rodata:0x31E | 0x10E6 | size: 0x2
.obj gap_03_000010E6_rodata, global
.hidden gap_03_000010E6_rodata
	.2byte 0x0000
.endobj gap_03_000010E6_rodata

# .rodata:0x320 | 0x10E8 | size: 0x6
.obj str_party_win_00004830, local
	.string "party"
.endobj str_party_win_00004830

# .rodata:0x326 | 0x10EE | size: 0x2
.obj gap_03_000010EE_rodata, global
.hidden gap_03_000010EE_rodata
	.2byte 0x0000
.endobj gap_03_000010EE_rodata

# .rodata:0x328 | 0x10F0 | size: 0x9
.obj str_kirakira_win_00004838, local
	.string "kirakira"
.endobj str_kirakira_win_00004838

# .rodata:0x331 | 0x10F9 | size: 0x3
.obj gap_03_000010F9_rodata, global
.hidden gap_03_000010F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000010F9_rodata

# .rodata:0x334 | 0x10FC | size: 0x10
.obj str_BGM_EVT_CLOUDA1_win_00004844, local
	.string "BGM_EVT_CLOUDA1"
.endobj str_BGM_EVT_CLOUDA1_win_00004844

# .rodata:0x344 | 0x110C | size: 0x8
.obj str_PWD_A_7_win_00004854, local
	.string "PWD_A_7"
.endobj str_PWD_A_7_win_00004854

# .rodata:0x34C | 0x1114 | size: 0x15
.obj str_SFX_STG2_CRAUD_WINK1_win_0000485c, local
	.string "SFX_STG2_CRAUD_WINK1"
.endobj str_SFX_STG2_CRAUD_WINK1_win_0000485c

# .rodata:0x361 | 0x1129 | size: 0x3
.obj gap_03_00001129_rodata, global
.hidden gap_03_00001129_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001129_rodata

# .rodata:0x364 | 0x112C | size: 0x5
.obj str_kiss_win_00004874, local
	.string "kiss"
.endobj str_kiss_win_00004874

# .rodata:0x369 | 0x1131 | size: 0x3
.obj gap_03_00001131_rodata, global
.hidden gap_03_00001131_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001131_rodata

# .rodata:0x36C | 0x1134 | size: 0x10
.obj str_stg2_win_e09_02_win_0000487c, local
	.string "stg2_win_e09_02"
.endobj str_stg2_win_e09_02_win_0000487c

# .rodata:0x37C | 0x1144 | size: 0x1C
.obj str_SFX_VOICE_MARIO_QUES_win_0000488c, local
	.string "SFX_VOICE_MARIO_QUESTION1_2"
.endobj str_SFX_VOICE_MARIO_QUES_win_0000488c

# .rodata:0x398 | 0x1160 | size: 0x6
.obj str_M_I_G_win_000048a8, local
	.string "M_I_G"
.endobj str_M_I_G_win_000048a8

# .rodata:0x39E | 0x1166 | size: 0x2
.obj gap_03_00001166_rodata, global
.hidden gap_03_00001166_rodata
	.2byte 0x0000
.endobj gap_03_00001166_rodata

# .rodata:0x3A0 | 0x1168 | size: 0x10
.obj str_stg2_win_e09_03_win_000048b0, local
	.string "stg2_win_e09_03"
.endobj str_stg2_win_e09_03_win_000048b0

# .rodata:0x3B0 | 0x1178 | size: 0x7
.obj str_M_N_5B_win_000048c0, local
	.string "M_N_5B"
.endobj str_M_N_5B_win_000048c0

# .rodata:0x3B7 | 0x117F | size: 0x1
.obj gap_03_0000117F_rodata, global
.hidden gap_03_0000117F_rodata
	.byte 0x00
.endobj gap_03_0000117F_rodata

# .rodata:0x3B8 | 0x1180 | size: 0x14
.obj str_SFX_VOICE_MARIO_NO2_win_000048c8, local
	.string "SFX_VOICE_MARIO_NO2"
.endobj str_SFX_VOICE_MARIO_NO2_win_000048c8

# .rodata:0x3CC | 0x1194 | size: 0x6
.obj str_M_N_C_win_000048dc, local
	.string "M_N_C"
.endobj str_M_N_C_win_000048dc

# .rodata:0x3D2 | 0x119A | size: 0x2
.obj gap_03_0000119A_rodata, global
.hidden gap_03_0000119A_rodata
	.2byte 0x0000
.endobj gap_03_0000119A_rodata

# .rodata:0x3D4 | 0x119C | size: 0x10
.obj str_stg2_win_e09_05_win_000048e4, local
	.string "stg2_win_e09_05"
.endobj str_stg2_win_e09_05_win_000048e4

# .rodata:0x3E4 | 0x11AC | size: 0x1B
.obj str_SFX_VOICE_MARIO_SURP_win_000048f4, local
	.string "SFX_VOICE_MARIO_SURPRISED1"
.endobj str_SFX_VOICE_MARIO_SURP_win_000048f4

# .rodata:0x3FF | 0x11C7 | size: 0x1
.obj gap_03_000011C7_rodata, global
.hidden gap_03_000011C7_rodata
	.byte 0x00
.endobj gap_03_000011C7_rodata

# .rodata:0x400 | 0x11C8 | size: 0x6
.obj str_M_N_7_win_00004910, local
	.string "M_N_7"
.endobj str_M_N_7_win_00004910

# .rodata:0x406 | 0x11CE | size: 0x2
.obj gap_03_000011CE_rodata, global
.hidden gap_03_000011CE_rodata
	.2byte 0x0000
.endobj gap_03_000011CE_rodata

# .rodata:0x408 | 0x11D0 | size: 0x9
.obj str_c_pguide_win_00004918, local
	.string "c_pguide"
.endobj str_c_pguide_win_00004918

# .rodata:0x411 | 0x11D9 | size: 0x3
.obj gap_03_000011D9_rodata, global
.hidden gap_03_000011D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000011D9_rodata

# .rodata:0x414 | 0x11DC | size: 0x17
.obj str_SFX_STG2_CRAUD_ATTAC_win_00004924, local
	.string "SFX_STG2_CRAUD_ATTACK1"
.endobj str_SFX_STG2_CRAUD_ATTAC_win_00004924

# .rodata:0x42B | 0x11F3 | size: 0x1
.obj gap_03_000011F3_rodata, global
.hidden gap_03_000011F3_rodata
	.byte 0x00
.endobj gap_03_000011F3_rodata

# .rodata:0x42C | 0x11F4 | size: 0x8
.obj str_PKR_R_1_win_0000493c, local
	.string "PKR_R_1"
.endobj str_PKR_R_1_win_0000493c

# .rodata:0x434 | 0x11FC | size: 0x8
.obj str_PNK_D_1_win_00004944, local
	.string "PNK_D_1"
.endobj str_PNK_D_1_win_00004944

# .rodata:0x43C | 0x1204 | size: 0x8
.obj str_PKR_D_4_win_0000494c, local
	.string "PKR_D_4"
.endobj str_PKR_D_4_win_0000494c

# .rodata:0x444 | 0x120C | size: 0x8
.obj str_PNK_D_4_win_00004954, local
	.string "PNK_D_4"
.endobj str_PNK_D_4_win_00004954

# .rodata:0x44C | 0x1214 | size: 0x4
.obj str_R_1_win_0000495c, local
	.string "R_1"
.endobj str_R_1_win_0000495c

# .rodata:0x450 | 0x1218 | size: 0x4
.obj str_D_2_win_00004960, local
	.string "D_2"
.endobj str_D_2_win_00004960

# .rodata:0x454 | 0x121C | size: 0x9
.obj str_PWD_A3_1_win_00004964, local
	.string "PWD_A3_1"
.endobj str_PWD_A3_1_win_00004964

# .rodata:0x45D | 0x1225 | size: 0x3
.obj gap_03_00001225_rodata, global
.hidden gap_03_00001225_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001225_rodata

# .rodata:0x460 | 0x1228 | size: 0x9
.obj str_PWD_A3_2_win_00004970, local
	.string "PWD_A3_2"
.endobj str_PWD_A3_2_win_00004970

# .rodata:0x469 | 0x1231 | size: 0x3
.obj gap_03_00001231_rodata, global
.hidden gap_03_00001231_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001231_rodata

# .rodata:0x46C | 0x1234 | size: 0x15
.obj str_SFX_STG2_CRAUD_KISS1_win_0000497c, local
	.string "SFX_STG2_CRAUD_KISS1"
.endobj str_SFX_STG2_CRAUD_KISS1_win_0000497c

# .rodata:0x481 | 0x1249 | size: 0x3
.obj gap_03_00001249_rodata, global
.hidden gap_03_00001249_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001249_rodata

# .rodata:0x484 | 0x124C | size: 0x9
.obj str_PWD_A3_3_win_00004994, local
	.string "PWD_A3_3"
.endobj str_PWD_A3_3_win_00004994

# .rodata:0x48D | 0x1255 | size: 0x3
.obj gap_03_00001255_rodata, global
.hidden gap_03_00001255_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001255_rodata

# .rodata:0x490 | 0x1258 | size: 0x16
.obj str_SFX_VOICE_MARIO_DOWN_win_000049a0, local
	.string "SFX_VOICE_MARIO_DOWN1"
.endobj str_SFX_VOICE_MARIO_DOWN_win_000049a0

# .rodata:0x4A6 | 0x126E | size: 0x2
.obj gap_03_0000126E_rodata, global
.hidden gap_03_0000126E_rodata
	.2byte 0x0000
.endobj gap_03_0000126E_rodata

# .rodata:0x4A8 | 0x1270 | size: 0x6
.obj str_M_I_S_win_000049b8, local
	.string "M_I_S"
.endobj str_M_I_S_win_000049b8

# .rodata:0x4AE | 0x1276 | size: 0x2
.obj gap_03_00001276_rodata, global
.hidden gap_03_00001276_rodata
	.2byte 0x0000
.endobj gap_03_00001276_rodata

# .rodata:0x4B0 | 0x1278 | size: 0x16
.obj str_SFX_MARIO_FALL_CRUSH_win_000049c0, local
	.string "SFX_MARIO_FALL_CRUSH1"
.endobj str_SFX_MARIO_FALL_CRUSH_win_000049c0

# .rodata:0x4C6 | 0x128E | size: 0x2
.obj gap_03_0000128E_rodata, global
.hidden gap_03_0000128E_rodata
	.2byte 0x0000
.endobj gap_03_0000128E_rodata

# .rodata:0x4C8 | 0x1290 | size: 0x6
.obj str_M_D_2_win_000049d8, local
	.string "M_D_2"
.endobj str_M_D_2_win_000049d8

# .rodata:0x4CE | 0x1296 | size: 0x2
.obj gap_03_00001296_rodata, global
.hidden gap_03_00001296_rodata
	.2byte 0x0000
.endobj gap_03_00001296_rodata

# .rodata:0x4D0 | 0x1298 | size: 0x8
.obj str_PWD_S_1_win_000049e0, local
	.string "PWD_S_1"
.endobj str_PWD_S_1_win_000049e0

# .rodata:0x4D8 | 0x12A0 | size: 0x10
.obj str_stg2_win_e09_06_win_000049e8, local
	.string "stg2_win_e09_06"
.endobj str_stg2_win_e09_06_win_000049e8

# .rodata:0x4E8 | 0x12B0 | size: 0x6
.obj str_M_U_3_win_000049f8, local
	.string "M_U_3"
.endobj str_M_U_3_win_000049f8

# .rodata:0x4EE | 0x12B6 | size: 0x2
.obj gap_03_000012B6_rodata, global
.hidden gap_03_000012B6_rodata
	.2byte 0x0000
.endobj gap_03_000012B6_rodata

# .rodata:0x4F0 | 0x12B8 | size: 0x6
.obj str_M_S_1_win_00004a00, local
	.string "M_S_1"
.endobj str_M_S_1_win_00004a00

# .rodata:0x4F6 | 0x12BE | size: 0x2
.obj gap_03_000012BE_rodata, global
.hidden gap_03_000012BE_rodata
	.2byte 0x0000
.endobj gap_03_000012BE_rodata

# .rodata:0x4F8 | 0x12C0 | size: 0x8
.obj str_PKR_S_1_win_00004a08, local
	.string "PKR_S_1"
.endobj str_PKR_S_1_win_00004a08

# .rodata:0x500 | 0x12C8 | size: 0x8
.obj str_PNK_S_1_win_00004a10, local
	.string "PNK_S_1"
.endobj str_PNK_S_1_win_00004a10

# .rodata:0x508 | 0x12D0 | size: 0x4
.obj str_S_1_win_00004a18, local
	.string "S_1"
.endobj str_S_1_win_00004a18

# .rodata:0x50C | 0x12D4 | size: 0x10
.obj str_stg2_win_e09_07_win_00004a1c, local
	.string "stg2_win_e09_07"
.endobj str_stg2_win_e09_07_win_00004a1c

# .rodata:0x51C | 0x12E4 | size: 0x6
.obj str_M_I_N_win_00004a2c, local
	.string "M_I_N"
.endobj str_M_I_N_win_00004a2c

# .rodata:0x522 | 0x12EA | size: 0x2
.obj gap_03_000012EA_rodata, global
.hidden gap_03_000012EA_rodata
	.2byte 0x0000
.endobj gap_03_000012EA_rodata

# .rodata:0x524 | 0x12EC | size: 0x13
.obj str_stg2_win_e09_07_01_win_00004a34, local
	.string "stg2_win_e09_07_01"
.endobj str_stg2_win_e09_07_01_win_00004a34

# .rodata:0x537 | 0x12FF | size: 0x1
.obj gap_03_000012FF_rodata, global
.hidden gap_03_000012FF_rodata
	.byte 0x00
.endobj gap_03_000012FF_rodata

# .rodata:0x538 | 0x1300 | size: 0x10
.obj str_stg2_win_e09_09_win_00004a48, local
	.string "stg2_win_e09_09"
.endobj str_stg2_win_e09_09_win_00004a48

# .rodata:0x548 | 0x1310 | size: 0xE
.obj str_BGM_STG2_WIN1_win_00004a58, local
	.string "BGM_STG2_WIN1"
.endobj str_BGM_STG2_WIN1_win_00004a58

# .rodata:0x556 | 0x131E | size: 0x2
.obj gap_03_0000131E_rodata, global
.hidden gap_03_0000131E_rodata
	.2byte 0x0000
.endobj gap_03_0000131E_rodata

# .rodata:0x558 | 0x1320 | size: 0xE
.obj str_ENV_STG2_WIN2_win_00004a68, local
	.string "ENV_STG2_WIN2"
.endobj str_ENV_STG2_WIN2_win_00004a68

# .rodata:0x566 | 0x132E | size: 0x2
.obj gap_03_0000132E_rodata, global
.hidden gap_03_0000132E_rodata
	.2byte 0x0000
.endobj gap_03_0000132E_rodata

# .rodata:0x568 | 0x1330 | size: 0x4
.obj dat_win_00004a78, local
	.4byte 0xFFFFFF00
.endobj dat_win_00004a78

# .rodata:0x56C | 0x1334 | size: 0x13
.obj str_stg2_win_e04_00_02_win_00004a7c, local
	.string "stg2_win_e04_00_02"
.endobj str_stg2_win_e04_00_02_win_00004a7c

# .rodata:0x57F | 0x1347 | size: 0x1
.obj gap_03_00001347_rodata, global
.hidden gap_03_00001347_rodata
	.byte 0x00
.endobj gap_03_00001347_rodata

# .rodata:0x580 | 0x1348 | size: 0x13
.obj str_stg2_win_e04_00_03_win_00004a90, local
	.string "stg2_win_e04_00_03"
.endobj str_stg2_win_e04_00_03_win_00004a90

# .rodata:0x593 | 0x135B | size: 0x1
.obj gap_03_0000135B_rodata, global
.hidden gap_03_0000135B_rodata
	.byte 0x00
.endobj gap_03_0000135B_rodata

# .rodata:0x594 | 0x135C | size: 0xA
.obj str_mobj_save_win_00004aa4, local
	.string "mobj_save"
.endobj str_mobj_save_win_00004aa4
	.2byte 0x0000

# .rodata:0x5A0 | 0x1368 | size: 0x4
.obj float_1000_win_00004ab0, local
	.float 1000
.endobj float_1000_win_00004ab0

# .rodata:0x5A4 | 0x136C | size: 0x4
.obj zero_win_00004ab4, local
	.float 0
.endobj zero_win_00004ab4

# .rodata:0x5A8 | 0x1370 | size: 0x4
.obj float_0p08_win_00004ab8, local
	.float 0.08
.endobj float_0p08_win_00004ab8

# .rodata:0x5AC | 0x1374 | size: 0x4
.obj float_32767_win_00004abc, local
	.float 32767
.endobj float_32767_win_00004abc

# .rodata:0x5B0 | 0x1378 | size: 0x8
.obj double_to_int_win_00004ac0, local
	.double 4503601774854144
.endobj double_to_int_win_00004ac0

# .rodata:0x5B8 | 0x1380 | size: 0x4
.obj float_101_win_00004ac8, local
	.float 101
.endobj float_101_win_00004ac8

# .rodata:0x5BC | 0x1384 | size: 0x4
.obj float_92_win_00004acc, local
	.float 92
.endobj float_92_win_00004acc

# .rodata:0x5C0 | 0x1388 | size: 0x4
.obj float_0p5_win_00004ad0, local
	.float 0.5
.endobj float_0p5_win_00004ad0

# .rodata:0x5C4 | 0x138C | size: 0x4
.obj float_46_win_00004ad4, local
	.float 46
.endobj float_46_win_00004ad4

# .rodata:0x5C8 | 0x1390 | size: 0x4
.obj float_1_win_00004ad8, local
	.float 1
.endobj float_1_win_00004ad8

# .rodata:0x5CC | 0x1394 | size: 0x4
.obj float_50p5_win_00004adc, local
	.float 50.5
.endobj float_50p5_win_00004adc

# 0x000055C0..0x00009AB0 | size: 0x44F0
.data
.balign 8

# .data:0x0 | 0x55C0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x55C8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x55CC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x55D0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x55D4 | size: 0x4
.obj gap_04_000055D4_data, global
.hidden gap_04_000055D4_data
	.4byte 0x00000000
.endobj gap_04_000055D4_data

# .data:0x18 | 0x55D8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x55E0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x55E4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x55E8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x55F0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x55F4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x55F8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x55FC | size: 0x4
.obj gap_04_000055FC_data, global
.hidden gap_04_000055FC_data
	.4byte 0x00000000
.endobj gap_04_000055FC_data

# .data:0x40 | 0x5600 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x5608 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x560C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x5610 | size: 0x28
.obj win_04w_door_open, local
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_S_doa_w_l_win_00004510
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_S_doa_w_r_win_0000451c
	.4byte 0x0001005C
	.4byte evt_win_door_open_28_data_A090
	.4byte 0x00000002
	.4byte 0x00000001
.endobj win_04w_door_open

# .data:0x78 | 0x5638 | size: 0x28
.obj win_04w_door_close, local
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_S_doa_w_l_win_00004510
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_S_doa_w_r_win_0000451c
	.4byte 0x0001005C
	.4byte evt_win_door_close_28_data_A1D8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj win_04w_door_close

# .data:0xA0 | 0x5660 | size: 0x28
.obj win_04e_door_open, local
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_S_doa_e_l_win_00004528
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_S_doa_e_r_win_00004534
	.4byte 0x0001005C
	.4byte evt_win_door_open_28_data_A090
	.4byte 0x00000002
	.4byte 0x00000001
.endobj win_04e_door_open

# .data:0xC8 | 0x5688 | size: 0x28
.obj win_04e_door_close, local
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_S_doa_e_l_win_00004528
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_S_doa_e_r_win_00004534
	.4byte 0x0001005C
	.4byte evt_win_door_close_28_data_A1D8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj win_04e_door_close

# .data:0xF0 | 0x56B0 | size: 0x30
.obj out_w_bero, local
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x000001F4
	.4byte 0x00000001
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj out_w_bero

# .data:0x120 | 0x56E0 | size: 0x3C
.obj bero_witchtrio, local
	.4byte str_w_bero_win_00004540
	.4byte 0x00010000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte out_w_bero
	.4byte str_win_00_win_00004548
	.4byte zero_win_00004550
	.4byte 0x00040004
	.4byte win_04w_door_close
	.4byte win_04w_door_open
.endobj bero_witchtrio

# .data:0x15C | 0x571C | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_win_00004540
	.4byte 0x00010000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_win_03_win_00004554
	.4byte str_n_bero_win_0000455c
	.4byte 0x00040004
	.4byte win_04w_door_close
	.4byte win_04w_door_open
	.4byte str_e_bero_win_00004564
	.4byte 0x00010000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_win_05_win_0000456c
	.4byte str_w_bero_win_00004540
	.4byte 0x00040004
	.4byte win_04e_door_close
	.4byte win_04e_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x210 | 0x57D0 | size: 0x130
.obj meet_clouda, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0xFFFFFF92
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e05_00_00_win_00004574
	.4byte 0x00000000
	.4byte str_extparty_win_00004588
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000BA
	.4byte 0x000000CA
	.4byte 0x0000021B
	.4byte 0x000000BA
	.4byte 0x0000006A
	.4byte 0xFFFFFFFD
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF74
	.4byte 0x00000064
	.4byte 0x00000155
	.4byte 0xFFFFFF74
	.4byte 0x00000028
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e05_00_01_win_00004594
	.4byte 0x00000000
	.4byte str_extparty_win_00004588
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000051
	.4byte 0x0001005C
	.4byte meet_clouda2
	.4byte 0x00000002
	.4byte 0x00000001
.endobj meet_clouda

# .data:0x340 | 0x5900 | size: 0x22C
.obj meet_clouda2, local
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
	.4byte 0x00000096
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000033
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte evt_party_force_reset_outofscreen
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0002001A
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000032
	.4byte 0x00000020
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000082
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_party_force_reset_outofscreen
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0002001A
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000032
	.4byte 0x00000020
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0x000000A0
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002006A
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e05_00_02_win_000045a8
	.4byte 0x00000000
	.4byte str_extparty_win_00004588
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000052
	.4byte 0x00000002
	.4byte 0x00000001
.endobj meet_clouda2

# .data:0x56C | 0x5B2C | size: 0x44
.obj clouda_inai, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e04_03_win_000045bc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_win_e04_04_win_000045cc
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj clouda_inai

# .data:0x5B0 | 0x5B70 | size: 0x6F0
.obj clouda_irai, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte evt_party_force_reset_outofscreen
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0001006C
	.4byte 0xFE363C8B
	.4byte 0x0002005B
	.4byte evt_party_force_reset_outofscreen
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0x000000E1
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002006A
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002006A
	.4byte 0xFE363C8B
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000015E
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e05_00_03_win_000045dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_win_000045f0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_win_00004550
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
	.4byte zero_win_00004550
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
	.4byte 0x00000004
	.4byte zero_win_00004550
	.4byte 0x00000000
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
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000100
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000032
	.4byte 0x0000005A
	.4byte 0x00000134
	.4byte 0x000000F8
	.4byte 0x00000069
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0x000000E6
	.4byte 0x0000000F
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x000000F0
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0001000B
	.4byte 0xFAA2B581
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e05_00_04_win_00004608
	.4byte 0x00000000
	.4byte str_extparty_win_00004588
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000015E
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e05_00_05_win_0000461c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e05_00_06_win_00004630
	.4byte 0x00000000
	.4byte str_extparty_win_00004588
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000015E
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e05_00_07_win_00004644
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_win_e05_00_08_win_00004658
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000015E
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e05_00_09_win_0000466c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x00000078
	.4byte 0x000000C2
	.4byte 0x000000C8
	.4byte 0x00000055
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_win_e05_00_10_win_00004680
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000006E
	.4byte 0x000000C7
	.4byte 0x00000101
	.4byte 0x00000189
	.4byte 0x00000048
	.4byte 0xFFFFFF79
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000015E
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e05_00_11_win_00004694
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000DC
	.4byte 0x00000082
	.4byte 0x000000F3
	.4byte 0x000000DC
	.4byte 0x00000057
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e05_00_12_win_000046a8
	.4byte 0x00000000
	.4byte str_extparty_win_00004588
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg2_win_e05_00_12_y_win_000046bc
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e05_00_14_win_000046d4
	.4byte 0x00000000
	.4byte str_extparty_win_00004588
	.4byte 0x00000020
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_win_000046e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_win_00004700
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e05_00_13_win_00004708
	.4byte 0x00000000
	.4byte str_extparty_win_00004588
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000015E
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e05_00_15_win_0000471c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000053
	.4byte 0x00020032
	.4byte 0xF84065F9
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_win_00004540
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_w_bero_win_00004540
	.4byte bero_witchtrio
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_win_00004540
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000002
	.4byte 0x00000001
.endobj clouda_irai

# .data:0xCA0 | 0x6260 | size: 0x50
.obj clouda_irai_ato, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000015E
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e05_19_win_00004730
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj clouda_irai_ato

# .data:0xCF0 | 0x62B0 | size: 0x8C
.obj mirror_trans, local
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CRAUD_LIGHT_win_00004740
	.4byte 0x000000AA
	.4byte 0x00000032
	.4byte 0x0000000A
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x000005DC
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mirror_trans

# .data:0xD7C | 0x633C | size: 0xA4
.obj mirror_rotate, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000168
	.4byte 0x00001770
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_mirre_win_00004758
	.4byte 0x00000000
	.4byte 0xFD050F81
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_mirre_win_00004758
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mirror_rotate

# .data:0xE20 | 0x63E0 | size: 0xFC
.obj mario_move_wait, local
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFE363C86
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_move_wait

# .data:0xF1C | 0x64DC | size: 0x68
.obj dummy1_jump, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_dummy1_win_00004760
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFA6
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFE2
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_dummy1_win_00004760
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000320
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte ss_ch_set
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dummy1_jump

# .data:0xF84 | 0x6544 | size: 0x80
.obj dummy2_jump, local
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_dummy2_win_00004768
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFA6
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_dummy2_win_00004768
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000320
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte ss_ch_set
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dummy2_jump

# .data:0x1004 | 0x65C4 | size: 0x8
.obj item_list, local
	.4byte 0x0000003F
	.4byte 0xFFFFFFFF
.endobj item_list

# .data:0x100C | 0x65CC | size: 0x1850
.obj clouda_nakama, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_クラウダ_win_00004774
	.4byte 0x00000600
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte item_list
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000015E
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e09_00_01_win_00004780
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000BA
	.4byte 0x000000C9
	.4byte 0x0000021A
	.4byte 0x000000BA
	.4byte 0x0000006A
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000015E
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e09_00_win_00004794
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_win_000047a4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_win_00004700
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x000000FF
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_necklace_win_000047bc
	.4byte 0x0000003F
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_necklace_win_000047bc
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_necklace_win_000047bc
	.4byte 0x00000118
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_dump_item
	.4byte 0x0000003F
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x000000B9
	.4byte 0xFFFFFFEC
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0x000000D2
	.4byte 0xFFFFFFE7
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000100
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x0001005E
	.4byte mario_move_wait
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_S_doa_e_l_win_00004528
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_S_doa_e_r_win_00004534
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000001F4
	.4byte 0x0001005C
	.4byte evt_win_door_open_pure_28_data_9F40
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte str_necklace_win_000047bc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0007005B
	.4byte evt_item_move_3d_position
	.4byte str_necklace_win_000047bc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_necklace_win_000047bc
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_S_doa_e_l_win_00004528
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_S_doa_e_r_win_00004534
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000001F4
	.4byte 0x0001005C
	.4byte evt_win_door_open_pure_28_data_9F40
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000015E
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e09_01_win_000047c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CRAUD_LIGHT_win_000047d8
	.4byte 0x000000AA
	.4byte 0x00000032
	.4byte 0x0000000A
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x000005DC
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_syan_win_000047f0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x000005DC
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte fade_alpha
	.4byte 0x00000000
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
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_QUES_win_000047f8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_win_00004550
	.4byte 0x00000000
	.4byte 0x00000001
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
	.4byte zero_win_00004550
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000004
	.4byte zero_win_00004550
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_3_win_00004814
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000AF
	.4byte 0x00000096
	.4byte 0x00000129
	.4byte 0x000000AF
	.4byte 0x0000009B
	.4byte 0xFFFFFFFD
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_win_0000481c
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_hika_win_00004820
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_mario_win_00004828
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_party_win_00004830
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_extparty_win_00004588
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_クラウダ_win_00004774
	.4byte 0x00000800
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_hika_win_00004820
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_kirakira_win_00004838
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
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
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001005C
	.4byte mirror_ball_event
	.4byte 0x0002005D
	.4byte mirror_rotate
	.4byte 0xFD050F8A
	.4byte 0x0001005E
	.4byte mirror_trans
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_CLOUDA1_win_00004844
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x000005DC
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000078
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte fade_alpha
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000078
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000006E
	.4byte 0x00000080
	.4byte 0x00000133
	.4byte 0x000000FA
	.4byte 0x0000006E
	.4byte 0x00000005
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_クラウダ_win_00004774
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クラウダ_win_00004774
	.4byte 0x0000015E
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_S_doa_e_l_win_00004528
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_S_doa_e_r_win_00004534
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000001F4
	.4byte 0x0001005C
	.4byte evt_win_door_open_pure_28_data_9F40
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000110
	.4byte 0x0000004B
	.4byte 0x000000AF
	.4byte 0x00000110
	.4byte 0x0000004B
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_クラウダ_win_00004774
	.4byte 0x40000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_クラウダ_win_00004774
	.4byte 0x00000600
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_クラウダ_win_00004774
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_S_doa_e_l_win_00004528
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_S_doa_e_r_win_00004534
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000001F4
	.4byte 0x0001005C
	.4byte evt_win_door_open_pure_28_data_9F40
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0001005C
	.4byte flower_event
	.4byte 0x0001000A
	.4byte 0x000009C4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クラウダ_win_00004774
	.4byte str_PWD_A_7_win_00004854
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_クラウダ_win_00004774
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CRAUD_WINK1_win_0000485c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFF1
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kiss_win_00004874
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFFFFFFD3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x000005DC
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_syan_win_000047f0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_hika_win_00004820
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_map_pauseanim
	.4byte 0x00000000
	.4byte str_kirakira_win_00004838
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_mirre_win_00004758
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFD050F8A
	.4byte 0x0005005B
	.4byte fade_alpha
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000E1
	.4byte 0x000000AA
	.4byte 0x00000187
	.4byte 0x000000E1
	.4byte 0x00000064
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFF1
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000001
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE7
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000001
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_win_00004550
	.4byte str_クラウダ_win_00004774
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
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_クラウダ_win_00004774
	.4byte 0x00000600
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e09_02_win_0000487c
	.4byte 0x00000000
	.4byte str_クラウダ_win_00004774
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_QUES_win_0000488c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_G_win_000048a8
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000010E
	.4byte 0x00000086
	.4byte 0x000000F5
	.4byte 0x0000010E
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e09_03_win_000048b0
	.4byte 0x00000000
	.4byte str_クラウダ_win_00004774
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000096
	.4byte 0x00000086
	.4byte 0x000000F5
	.4byte 0x00000096
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_win_000048c0
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
	.4byte str_SFX_VOICE_MARIO_NO2_win_000048c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_C_win_000048dc
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000010E
	.4byte 0x00000086
	.4byte 0x000000F5
	.4byte 0x0000010E
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_クラウダ_win_00004774
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
	.4byte str_stg2_win_e09_05_win_000048e4
	.4byte 0x00000000
	.4byte str_クラウダ_win_00004774
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_win_000048f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_7_win_00004910
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_dummy1_win_00004760
	.4byte str_c_pguide_win_00004918
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_dummy1_win_00004760
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_dummy1_win_00004760
	.4byte 0x00000080
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_dummy1_win_00004760
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_クラウダ_win_00004774
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CRAUD_ATTAC_win_00004924
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C8A
	.4byte 0x00010022
	.4byte 0xFE363C8A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PKR_R_1_win_0000493c
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_D_1_win_00004944
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte ss_ch_set
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte dummy1_jump
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_dummy1_win_00004760
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte ss_ch_check
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010022
	.4byte 0xFE363C8A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PKR_D_4_win_0000494c
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_D_4_win_00004954
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte evt_npc_delete
	.4byte str_dummy1_win_00004760
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_dummy2_win_00004768
	.4byte str_c_pguide_win_00004918
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_dummy2_win_00004768
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_dummy2_win_00004768
	.4byte 0x00000080
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_dummy2_win_00004768
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_クラウダ_win_00004774
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000001
	.4byte str_R_1_win_0000495c
	.4byte 0x0003005B
	.4byte ss_ch_set
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte dummy2_jump
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_dummy2_win_00004768
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte ss_ch_check
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000001
	.4byte str_D_2_win_00004960
	.4byte 0x0002005B
	.4byte evt_npc_delete
	.4byte str_dummy2_win_00004768
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000096
	.4byte 0x0000008F
	.4byte 0x00000124
	.4byte 0x00000096
	.4byte 0x0000005A
	.4byte 0xFFFFFFFD
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000005
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFD
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_クラウダ_win_00004774
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クラウダ_win_00004774
	.4byte str_PWD_A3_1_win_00004964
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クラウダ_win_00004774
	.4byte str_PWD_A3_2_win_00004970
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CRAUD_KISS1_win_0000497c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kiss_win_00004874
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFFFFFFD3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000006A4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クラウダ_win_00004774
	.4byte str_PWD_A3_3_win_00004994
	.4byte 0x0003005B
	.4byte ss_ch_set
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_DOWN_win_000049a0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_S_win_000049b8
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MARIO_FALL_CRUSH_win_000049c0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_D_2_win_000049d8
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte ss_ch_set
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xF24D0F4C
	.4byte 0xF24CB680
	.4byte 0xF24F0A80
	.4byte 0xF24D0F4C
	.4byte 0xF24BE280
	.4byte 0xF24A6E80
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_クラウダ_win_00004774
	.4byte 0x00000600
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_クラウダ_win_00004774
	.4byte 0x000000CD
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クラウダ_win_00004774
	.4byte str_PWD_S_1_win_000049e0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte ss_ch_check
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_クラウダ_win_00004774
	.4byte 0x00000600
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e09_06_win_000049e8
	.4byte 0x00000000
	.4byte str_クラウダ_win_00004774
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_U_3_win_000049f8
	.4byte 0x0001000A
	.4byte 0x0000028A
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_C_win_000048dc
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_win_00004a00
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C8A
	.4byte 0x00010022
	.4byte 0xFE363C8A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PKR_S_1_win_00004a08
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_S_1_win_00004a10
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000001
	.4byte str_S_1_win_00004a18
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e09_07_win_00004a1c
	.4byte 0x00000000
	.4byte str_クラウダ_win_00004774
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_N_win_00004a2c
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000CD
	.4byte 0x0000008F
	.4byte 0x00000124
	.4byte 0x000000CD
	.4byte 0x0000005A
	.4byte 0xFFFFFFFD
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e09_07_01_win_00004a34
	.4byte 0x00000000
	.4byte str_クラウダ_win_00004774
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クラウダ_win_00004774
	.4byte str_PWD_A_7_win_00004854
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_win_000048c0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_クラウダ_win_00004774
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte all_party_lecture_28_data_19304
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0x00000094
	.4byte 0x0000001E
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e09_09_win_00004a48
	.4byte 0x00000000
	.4byte str_extparty_win_00004588
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF84065FA
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000057
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_WIN1_win_00004a58
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00005800
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_WIN2_win_00004a68
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj clouda_nakama

# .data:0x285C | 0x7E1C | size: 0x9C
.obj touch_door, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000052
	.4byte 0x0001005E
	.4byte clouda_inai
	.4byte 0x00010024
	.4byte 0x00000052
	.4byte 0x0001005E
	.4byte clouda_irai
	.4byte 0x0002002F
	.4byte 0x00000053
	.4byte 0x00000055
	.4byte 0x0001005E
	.4byte clouda_irai_ato
	.4byte 0x00010024
	.4byte 0x00000056
	.4byte 0x0003005B
	.4byte evt_mario_check_key_item
	.4byte 0x0000003F
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte clouda_irai_ato
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte clouda_nakama
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj touch_door

# .data:0x28F8 | 0x7EB8 | size: 0x48
.obj mirror_ball_event, local
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte mirror_ball
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_mirre_win_00004758
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_mirre_win_00004758
	.4byte 0x00000100
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mirror_ball_event

# .data:0x2940 | 0x7F00 | size: 0x1380
.obj texture_0, local
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x7841AB2C
	.4byte 0xFFFFDF8B
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0xF4578103
	.4byte 0x55C37050
	.4byte 0x7861CB91
	.4byte 0xBF2F0289
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x91E79A29
	.4byte 0xFFFFFFFE
	.4byte 0x8104EB74
	.4byte 0xFF800055
	.4byte 0xEB7480E3
	.4byte 0xD55CC000
	.4byte 0x81038905
	.4byte 0xFFFFFFAA
	.4byte 0x70009A08
	.4byte 0xFFFFFFA9
	.4byte 0x8104EB75
	.4byte 0x00555555
	.4byte 0x8104EB75
	.4byte 0x00555555
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x70A1E373
	.4byte 0x0B825856
	.4byte 0x78009208
	.4byte 0xFFFF7F2A
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x78009208
	.4byte 0xFFFDD849
	.4byte 0x7861CB91
	.4byte 0xFEF88209
	.4byte 0x6040EB54
	.4byte 0x25955555
	.4byte 0x8904EB55
	.4byte 0xFF000055
	.4byte 0x80E3E333
	.4byte 0xFF020056
	.4byte 0xEB34EA54
	.4byte 0x00022BAD
	.4byte 0xEAF4E9B3
	.4byte 0x002AAFF5
	.4byte 0x78009208
	.4byte 0xFFFFA7A1
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0xFA569907
	.4byte 0x0D00AAAA
	.4byte 0x7000B1EB
	.4byte 0x9F4A6061
	.4byte 0x91E79A29
	.4byte 0xFFFFFFFE
	.4byte 0x8104AAEB
	.4byte 0xFFFFFF2F
	.4byte 0xF45778C3
	.4byte 0xD55CC000
	.4byte 0x78A2DC14
	.4byte 0x0B6F8F2F
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x8945FC57
	.4byte 0x05C1C1C1
	.4byte 0xEBB57903
	.4byte 0x3030D050
	.4byte 0x80A2EC15
	.4byte 0xC1E0F0F0
	.4byte 0xEB7580E3
	.4byte 0x507040C0
	.4byte 0xEB95EB54
	.4byte 0xAAAAAAAB
	.4byte 0xEB75EB34
	.4byte 0x00022AA5
	.4byte 0xEB75EAF4
	.4byte 0x000A2BAD
	.4byte 0xEB14EA13
	.4byte 0x00022BAD
	.4byte 0xEB55EAF4
	.4byte 0x000AABF5
	.4byte 0xEB54EAB4
	.4byte 0x00AABF55
	.4byte 0xEAB4E932
	.4byte 0x000AAFF5
	.4byte 0xEA53E8D2
	.4byte 0x00AAFF55
	.4byte 0xEB135800
	.4byte 0x0002090F
	.4byte 0xE3746000
	.4byte 0xDF608000
	.4byte 0xFB3788C4
	.4byte 0xB794D4D4
	.4byte 0xEB75EB14
	.4byte 0x0A2BABAD
	.4byte 0xEB546941
	.4byte 0xC0000000
	.4byte 0xEB34EA13
	.4byte 0x020A2BAD
	.4byte 0xEB34EA54
	.4byte 0x0A2BADB5
	.4byte 0xEA74E8F2
	.4byte 0x0A2BADB5
	.4byte 0xEA74E912
	.4byte 0x022BADB5
	.4byte 0xE993E851
	.4byte 0x0AAFFDD5
	.4byte 0xE932E031
	.4byte 0x0B2DB5D5
	.4byte 0xE031C80F
	.4byte 0x0002BD55
	.4byte 0xF0729967
	.4byte 0xAA010101
	.4byte 0xF4577081
	.4byte 0xDC7040C0
	.4byte 0xD00F79C3
	.4byte 0x070F0F0D
	.4byte 0xFC57F458
	.4byte 0xAAAAAAAA
	.4byte 0xF45778C2
	.4byte 0x03010D05
	.4byte 0x70009A08
	.4byte 0xBFBF7FFF
	.4byte 0x7081EC36
	.4byte 0x62635260
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x80E3E374
	.4byte 0xE2C1C1C1
	.4byte 0xEB75EB14
	.4byte 0x0A2B2BAD
	.4byte 0x8104EB54
	.4byte 0xC1C1C1C1
	.4byte 0xEB54EA94
	.4byte 0x0B2B2DAD
	.4byte 0xEB34EA33
	.4byte 0x0A2BADB5
	.4byte 0xEA53E0B2
	.4byte 0x0A2BADB5
	.4byte 0xEA74E0F1
	.4byte 0x0B2B2DB5
	.4byte 0xF133C82F
	.4byte 0x2DB5D555
	.4byte 0xE933D830
	.4byte 0x0AAFF555
	.4byte 0x4BA0E051
	.4byte 0x55555556
	.4byte 0xC00D81A3
	.4byte 0x0000071A
	.4byte 0x980692E8
	.4byte 0x38C30C30
	.4byte 0xE2B38002
	.4byte 0xFCF7F7DB
	.4byte 0xA82B9B07
	.4byte 0x7AAAC000
	.4byte 0xC02E89E5
	.4byte 0xD0000007
	.4byte 0xC02E81C4
	.4byte 0x00077FD0
	.4byte 0xB80D79A2
	.4byte 0xFDFE0100
	.4byte 0xD89189E6
	.4byte 0x8040D034
	.4byte 0xC02D79A3
	.4byte 0x0040FF1E
	.4byte 0x90058AE7
	.4byte 0x330AA002
	.4byte 0xD850C00F
	.4byte 0x2DD55555
	.4byte 0xC82EC00F
	.4byte 0xFFFFFFFF
	.4byte 0xC00D89E5
	.4byte 0x0001DE47
	.4byte 0x8A059006
	.4byte 0x2A5A6591
	.4byte 0xB00BA38A
	.4byte 0x0D0B0A0A
	.4byte 0xFC57F458
	.4byte 0xAAAAAAAA
	.4byte 0x90058AE7
	.4byte 0xCA22E00E
	.4byte 0xFC576860
	.4byte 0x0000C070
	.4byte 0x8965FC57
	.4byte 0x50504343
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x8945FC57
	.4byte 0x53434343
	.4byte 0x78009208
	.4byte 0xFFFFFF6A
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x81038905
	.4byte 0xFFFFFFAA
	.4byte 0x8104AAEB
	.4byte 0xFFFFFF2F
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x91E79A29
	.4byte 0xFFFFFFFE
	.4byte 0x8103D331
	.4byte 0xE1F2F0F8
	.4byte 0xEAF4D0D0
	.4byte 0x020B090D
	.4byte 0x78A2DB53
	.4byte 0xFCF88025
	.4byte 0xEAF35800
	.4byte 0xFF7F8000
	.4byte 0xE172C00F
	.4byte 0x2DB55555
	.4byte 0xC00E89E5
	.4byte 0x0001060D
	.4byte 0xE2925840
	.4byte 0xFEFD0200
	.4byte 0xEB9488A4
	.4byte 0x745C5070
	.4byte 0xDB526800
	.4byte 0x95778F0F
	.4byte 0xC02F82E4
	.4byte 0xC0000000
	.4byte 0xE3736000
	.4byte 0x0F0F0D27
	.4byte 0x8205A008
	.4byte 0x5451A696
	.4byte 0xB80C81A3
	.4byte 0x0D1C6CEC
	.4byte 0xC02F82E4
	.4byte 0x00000003
	.4byte 0xEB9578C2
	.4byte 0x57CD0300
	.4byte 0xCB127801
	.4byte 0xF9E6DC9C
	.4byte 0xCA538002
	.4byte 0xFFED9555
	.4byte 0x91067800
	.4byte 0x52545501
	.4byte 0xEB7580E3
	.4byte 0x550D0103
	.4byte 0xE3536000
	.4byte 0x03038976
	.4byte 0xB82D81C4
	.4byte 0x004090A4
	.4byte 0xB82D79A2
	.4byte 0x190F0F0F
	.4byte 0xDB537000
	.4byte 0x5F5EE303
	.4byte 0xCB117800
	.4byte 0xE7F5DD63
	.4byte 0xC850C02E
	.4byte 0xFFFFFFFF
	.4byte 0xF45790C6
	.4byte 0x50D0705C
	.4byte 0xC02F81C3
	.4byte 0x0040C0C0
	.4byte 0xDB326800
	.4byte 0xF79DF3F3
	.4byte 0xFC5988A4
	.4byte 0x15171FDF
	.4byte 0xEA948904
	.4byte 0x55000080
	.4byte 0xE0D16860
	.4byte 0x70707070
	.4byte 0xEA53E8F2
	.4byte 0xE0F87E5E
	.4byte 0x8104EB34
	.4byte 0x00555555
	.4byte 0xE3536000
	.4byte 0xDE2D0200
	.4byte 0xEB14EA33
	.4byte 0x80E06878
	.4byte 0xEB75EB34
	.4byte 0xA0E86868
	.4byte 0x7800B3EF
	.4byte 0xFFBF2F8B
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x6020EB94
	.4byte 0x62585655
	.4byte 0x7800B3EF
	.4byte 0xFFBF2F8B
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x91E79A29
	.4byte 0xFFFFFFFE
	.4byte 0x6820DB73
	.4byte 0xF8E28925
	.4byte 0x7000A20A
	.4byte 0xF4FAD1E5
	.4byte 0xEAB4B1CB
	.4byte 0x4000022A
	.4byte 0xEAF4A1EA
	.4byte 0x40000002
	.4byte 0xEAB4E952
	.4byte 0x020AAFB5
	.4byte 0xEA94E932
	.4byte 0x0A2BBDF5
	.4byte 0xE973E871
	.4byte 0x0B2DB5D5
	.4byte 0xE9938124
	.4byte 0x03010101
	.4byte 0xEB7480E3
	.4byte 0x40434D45
	.4byte 0xE83159E0
	.4byte 0x03030300
	.4byte 0xDB527000
	.4byte 0x765C58F0
	.4byte 0x6020EB94
	.4byte 0x89259555
	.4byte 0x7060EB74
	.4byte 0x60585655
	.4byte 0xEB94EB75
	.4byte 0xFFFFFFFF
	.4byte 0xEB94EB75
	.4byte 0xFFFFFFFF
	.4byte 0xEB9578C2
	.4byte 0x00C070D0
	.4byte 0xEB9578C2
	.4byte 0x14370D03
	.4byte 0xEB748103
	.4byte 0x1C340705
	.4byte 0xEB94EB75
	.4byte 0xFFFFFFFF
	.4byte 0xEB757903
	.4byte 0x0000C040
	.4byte 0xDB526800
	.4byte 0xD8F0DFD6
	.4byte 0xDB526800
	.4byte 0xE09F3536
	.4byte 0x7061EB74
	.4byte 0x09259555
	.4byte 0xEB9578C2
	.4byte 0x35D77000
	.4byte 0xEB756941
	.4byte 0xC3000000
	.4byte 0xEB94EB75
	.4byte 0xFFFFFFFF
	.4byte 0xEB757923
	.4byte 0x0000000D
	.4byte 0xA32AA008
	.4byte 0x65F5B62D
	.4byte 0xEB747923
	.4byte 0x73C04040
	.4byte 0x7040E394
	.4byte 0x50628925
	.4byte 0xEB756941
	.4byte 0xC0000000
	.4byte 0xE0308124
	.4byte 0xD0505074
	.4byte 0xE973E871
	.4byte 0x78785E5E
	.4byte 0xA0A8EB75
	.4byte 0x40404040
	.4byte 0xE8B2E031
	.4byte 0x785C5E5E
	.4byte 0xEAB4E972
	.4byte 0xE0E07878
	.4byte 0xEB54EAF4
	.4byte 0xE0E07078
	.4byte 0xEA33E8D2
	.4byte 0xE0787878
	.4byte 0xEB34EA94
	.4byte 0xE0707878
	.4byte 0xEB95EB54
	.4byte 0xEAEAEAEA
	.4byte 0x7081E374
	.4byte 0x43625856
	.4byte 0xEB95EB54
	.4byte 0xFA7A7A7A
	.4byte 0xEB94EB75
	.4byte 0xFFFFFFFF
	.4byte 0x7800B3EF
	.4byte 0xFFFFBF2F
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x6860E394
	.4byte 0x8B625856
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x78009208
	.4byte 0xFFFFF6D1
	.4byte 0x8104EAF4
	.4byte 0xFF800055
	.4byte 0x80E4E353
	.4byte 0xC1C2F0FF
	.4byte 0x68C2E2F3
	.4byte 0x556982F8
	.4byte 0xE2325860
	.4byte 0xB0608000
	.4byte 0xE9F3E8B2
	.4byte 0x022BBDD5
	.4byte 0xF1B490C6
	.4byte 0x020A0B55
	.4byte 0xD830A209
	.4byte 0x80000040
	.4byte 0xE952E851
	.4byte 0x0BAFF555
	.4byte 0xE811E071
	.4byte 0x7AE8A8A0
	.4byte 0xE831D810
	.4byte 0x02AAEA5F
	.4byte 0xE811E011
	.4byte 0xAAAAAAFF
	.4byte 0xE811D810
	.4byte 0x0002082D
	.4byte 0xEB748103
	.4byte 0x507040C0
	.4byte 0x53E0D810
	.4byte 0x56565555
	.4byte 0xEB148104
	.4byte 0x40407050
	.4byte 0xEB95EB54
	.4byte 0xAAAAAAFE
	.4byte 0xEB94EB75
	.4byte 0xFFFFFF5F
	.4byte 0xEB54EAD4
	.4byte 0x0080EA7F
	.4byte 0xEB75EB34
	.4byte 0x00A0FA5E
	.4byte 0xEB7578C2
	.4byte 0x0D010300
	.4byte 0xE3536000
	.4byte 0x80C062DD
	.4byte 0xEB95EB54
	.4byte 0xAAAAEA7F
	.4byte 0xEB758104
	.4byte 0xD5000000
	.4byte 0xE3735800
	.4byte 0x98F060C0
	.4byte 0xEB94EB75
	.4byte 0xFFFFFFFF
	.4byte 0x6084E394
	.4byte 0x09825856
	.4byte 0x4084EB75
	.4byte 0x55559526
	.4byte 0x5840EB94
	.4byte 0x55565862
	.4byte 0xEB5478E3
	.4byte 0xD570C000
	.4byte 0xEAF47945
	.4byte 0x1CD07040
	.4byte 0xEAF4E9D3
	.4byte 0x002AAFD5
	.4byte 0xEB346962
	.4byte 0xC0000000
	.4byte 0xEB75EB34
	.4byte 0x00A8FA57
	.4byte 0xEAD4E9B3
	.4byte 0x00AAFF55
	.4byte 0xEB14E9F3
	.4byte 0x00A0FA5E
	.4byte 0x98C8EB75
	.4byte 0x40404040
	.4byte 0xE831C80F
	.4byte 0xE0606070
	.4byte 0xBB2F980A
	.4byte 0x3D3D39B5
	.4byte 0xE031B80D
	.4byte 0xE0E0E0E0
	.4byte 0xE9D3E891
	.4byte 0x78787878
	.4byte 0xEB34EA33
	.4byte 0x68787878
	.4byte 0xE9B3E871
	.4byte 0x78787878
	.4byte 0xEB14EA33
	.4byte 0x78787878
	.4byte 0xEB75EB34
	.4byte 0xA0E0E8E0
	.4byte 0xEB94EB75
	.4byte 0xFFFFFFFF
	.4byte 0xEB75EB34
	.4byte 0x686868E0
	.4byte 0xEB94EB75
	.4byte 0xFFFFFFFF
	.4byte 0x78E3E374
	.4byte 0x5850525B
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x78C3DB72
	.4byte 0x63438B0F
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x78009208
	.4byte 0x40D2F6FD
	.4byte 0xF45778E3
	.4byte 0x57350370
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x78A2E415
	.4byte 0x85C9C280
	.4byte 0xB80CA36A
	.4byte 0x00C0AC73
	.4byte 0xE011C80F
	.4byte 0x827D5555
	.4byte 0xFC576860
	.4byte 0x0D030000
	.4byte 0xB00B9B68
	.4byte 0xC080EA7B
	.4byte 0xD00FA82D
	.4byte 0x2AAAAAAA
	.4byte 0xC00DA1EA
	.4byte 0xF57B361C
	.4byte 0xEC75B04B
	.4byte 0x5555F503
	.4byte 0xB80C7180
	.4byte 0x0D0FFAFF
	.4byte 0xEAB4D8B0
	.4byte 0x0080EA7A
	.4byte 0xEB14EA33
	.4byte 0x00A0FA5F
	.4byte 0xC00EA1E8
	.4byte 0x0B0240B4
	.4byte 0xE9F3C82F
	.4byte 0x00E05E55
	.4byte 0xEB54EAD4
	.4byte 0x00A8FE57
	.4byte 0xEB75EB14
	.4byte 0x88AAFE57
	.4byte 0xEA74E0F1
	.4byte 0x00A8EA5F
	.4byte 0xEAD4E9D3
	.4byte 0x00A8FF55
	.4byte 0xEB75EB34
	.4byte 0x00A2EA55
	.4byte 0xE3545022
	.4byte 0x9D2F0000
	.4byte 0xEB14EA13
	.4byte 0x00AAFF55
	.4byte 0xEB14EA13
	.4byte 0x00AAFF55
	.4byte 0xF3158105
	.4byte 0x4A5E3503
	.4byte 0xD02FC9EF
	.4byte 0x7FEA4010
	.4byte 0xEB14EA13
	.4byte 0x00A8FE57
	.4byte 0xC2CE9808
	.4byte 0xB5393D26
	.4byte 0xF9B3D030
	.4byte 0xAAFF5555
	.4byte 0xD9F1C82F
	.4byte 0x80E87C57
	.4byte 0xC82EC00F
	.4byte 0xFFFFFFFF
	.4byte 0xA80982E6
	.4byte 0x0C0A33CC
	.4byte 0xC00E69C4
	.4byte 0xF0D0C0C0
	.4byte 0xE872C80F
	.4byte 0x7A787878
	.4byte 0x9208C00E
	.4byte 0x15555555
	.4byte 0xF133D02F
	.4byte 0x5E5E7878
	.4byte 0xE9F3E892
	.4byte 0x787878E0
	.4byte 0xEB34EA54
	.4byte 0x787878E8
	.4byte 0xEA94E972
	.4byte 0x5E7878E0
	.4byte 0xEB54EAB4
	.4byte 0x7878E8A0
	.4byte 0xEB75EB54
	.4byte 0x78686868
	.4byte 0xEB7578E2
	.4byte 0x00030D05
	.4byte 0xEB95EB54
	.4byte 0x7AFAFAEA
	.4byte 0x80E3E374
	.4byte 0x50506243
	.4byte 0x8104AAEB
	.4byte 0x2F3FBFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x78009208
	.4byte 0xFFFDFEFE
	.4byte 0xEB748104
	.4byte 0x71414340
	.4byte 0x78009208
	.4byte 0xF4FAFAFA
	.4byte 0xEB756941
	.4byte 0xC0000000
	.4byte 0xF45778C2
	.4byte 0xC0405CD5
	.4byte 0xFC5760C0
	.4byte 0x000000C0
	.4byte 0xEAF47923
	.4byte 0x0D000000
	.4byte 0xFBD99085
	.4byte 0x5CD7BDBD
	.4byte 0xFC57F458
	.4byte 0xAAAAAAAA
	.4byte 0xFC57F458
	.4byte 0xAAAAAAAA
	.4byte 0xF45778C2
	.4byte 0x000070D7
	.4byte 0xFC57F458
	.4byte 0xAAAAAAAA
	.4byte 0xF4578103
	.4byte 0xD5030000
	.4byte 0xF4569888
	.4byte 0xD55D3503
	.4byte 0xFC57F458
	.4byte 0xAAAAAAAA
	.4byte 0xFC57F458
	.4byte 0xAAAAAAAA
	.4byte 0xC00E91E7
	.4byte 0x02004090
	.4byte 0xE953C80F
	.4byte 0x00FA5755
	.4byte 0xF4578083
	.4byte 0xDD370D00
	.4byte 0xB80E89C4
	.4byte 0x0000F47D
	.4byte 0xE993D830
	.4byte 0x00AAFF55
	.4byte 0xE973E051
	.4byte 0x00AAFF55
	.4byte 0xC00E81C4
	.4byte 0x000000F4
	.4byte 0xD030C00E
	.4byte 0xA0FF5755
	.4byte 0xE993E051
	.4byte 0x00AAFF55
	.4byte 0xE9936080
	.4byte 0x0F0F0FAD
	.4byte 0x63E0C80F
	.4byte 0x55555556
	.4byte 0xC00E78E2
	.4byte 0x0705055F
	.4byte 0xB80C89E6
	.4byte 0x010619F4
	.4byte 0xC00E91E6
	.4byte 0x90400000
	.4byte 0xC00E79C2
	.4byte 0x400000FF
	.4byte 0xC82F6160
	.4byte 0x000000FF
	.4byte 0xE0D1C80F
	.4byte 0x5557565C
	.4byte 0xEA33E091
	.4byte 0x5E7AE8E0
	.4byte 0xE1F2D850
	.4byte 0x5E7AE000
	.4byte 0xEB14E9F3
	.4byte 0x5E7AE8A0
	.4byte 0xEB14EA13
	.4byte 0x78E8E080
	.4byte 0xEB75EB14
	.4byte 0x78E8A8A0
	.4byte 0xEB347923
	.4byte 0x0000000D
	.4byte 0xEB7480E3
	.4byte 0x00003557
	.4byte 0x6020EB74
	.4byte 0x55555658
	.4byte 0x78A2D371
	.4byte 0x4B8F2FBF
	.4byte 0x7060D392
	.4byte 0x628B2FFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x70009A08
	.4byte 0xFAF6FEFE
	.4byte 0xEB757903
	.4byte 0x0000C040
	.4byte 0x91E79A29
	.4byte 0xFEFFFFFF
	.4byte 0x7080E374
	.4byte 0x152589E2
	.4byte 0xEB54EAD4
	.4byte 0x2D2D0B0B
	.4byte 0xEA94D04F
	.4byte 0x2D0B0A02
	.4byte 0xEB75EB34
	.4byte 0xAD2B0A02
	.4byte 0xEB34EA54
	.4byte 0xAD2B0A02
	.4byte 0xC82FA1E8
	.4byte 0x1E0180E8
	.4byte 0xF4569887
	.4byte 0x70557555
	.4byte 0xEAB4E132
	.4byte 0xB5AD2B0A
	.4byte 0xE973D00F
	.4byte 0xD5BD2B0A
	.4byte 0xF45788E5
	.4byte 0x00C05575
	.4byte 0x8104FC57
	.4byte 0x55550000
	.4byte 0xE872C80F
	.4byte 0x55D5AF2A
	.4byte 0xE011B80D
	.4byte 0xFFFFAA00
	.4byte 0xF45798C7
	.4byte 0x003555D5
	.4byte 0xF45778C2
	.4byte 0x00C057D5
	.4byte 0xE011B80D
	.4byte 0xFFFFAA00
	.4byte 0xE011C00E
	.4byte 0x5455FD2B
	.4byte 0xF45780E3
	.4byte 0xD50D00D5
	.4byte 0x8B068804
	.4byte 0x957FD55F
	.4byte 0xB80D79A2
	.4byte 0x1E03060F
	.4byte 0xFC5778A1
	.4byte 0x7040C000
	.4byte 0xF45780C3
	.4byte 0xD55C4055
	.4byte 0xFC578104
	.4byte 0x550000C0
	.4byte 0xDC939066
	.4byte 0xD515DD75
	.4byte 0xC00E71A1
	.4byte 0xFF1F0000
	.4byte 0x8104FC57
	.4byte 0x00555555
	.4byte 0x8104FC57
	.4byte 0x00555555
	.4byte 0xF456A0A8
	.4byte 0xC0557555
	.4byte 0x98A8FC57
	.4byte 0x55000000
	.4byte 0xFC5780E3
	.4byte 0x55D50000
	.4byte 0xF4577020
	.4byte 0xEFF50D35
	.4byte 0xFBFAA0A7
	.4byte 0x35557F5F
	.4byte 0xEAB48904
	.4byte 0x55C08080
	.4byte 0x78009208
	.4byte 0xA002072F
	.4byte 0x7800B3EF
	.4byte 0x2FBFFFFF
	.4byte 0x8104E334
	.4byte 0x0F4B4343
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x7800B3F0
	.4byte 0xF8FEFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x78C3DB73
	.4byte 0x2509E2FC
	.4byte 0xEB546164
	.4byte 0x000000C0
	.4byte 0x8A099209
	.4byte 0xFEFFFFFF
	.4byte 0xEB757925
	.4byte 0x40C07050
	.4byte 0xEB34EA94
	.4byte 0xB52D0B02
	.4byte 0xEA94E952
	.4byte 0xB52D2B0A
	.4byte 0xEB75EB34
	.4byte 0xBD2B0A02
	.4byte 0xEB34EA94
	.4byte 0xB52D0A00
	.4byte 0xE993E871
	.4byte 0xD5B52F0A
	.4byte 0xE8F2E831
	.4byte 0x55D5BF0A
	.4byte 0xEAD4E9B3
	.4byte 0xF5AF0A00
	.4byte 0xEA94E952
	.4byte 0x55FFAA00
	.4byte 0xE831E0F2
	.4byte 0x0000AAFF
	.4byte 0xE932E031
	.4byte 0x555FFAA0
	.4byte 0xE9B38144
	.4byte 0x00000035
	.4byte 0xD9F17020
	.4byte 0x022D9557
	.4byte 0xF45690A6
	.4byte 0x7754DCD0
	.4byte 0xF4777842
	.4byte 0x030D37DD
	.4byte 0x78009208
	.4byte 0x0A022A7E
	.4byte 0xB0CBE293
	.4byte 0x206A5595
	.4byte 0xC82F89E5
	.4byte 0xC0400000
	.4byte 0xE811C80F
	.4byte 0x7FEA8000
	.4byte 0xEA13E0B1
	.4byte 0x55BD2F0A
	.4byte 0xE952E831
	.4byte 0x55FFAA00
	.4byte 0xE831D810
	.4byte 0x55FFAAA0
	.4byte 0xE8F2E031
	.4byte 0x55577EF8
	.4byte 0xE993E871
	.4byte 0x555FFAA0
	.4byte 0xEA33E8D2
	.4byte 0x577EE880
	.4byte 0xEA33E8B2
	.4byte 0x5E7AF8E0
	.4byte 0xEB34EA54
	.4byte 0x7878E8E0
	.4byte 0xF2948905
	.4byte 0xA08000D5
	.4byte 0xEB335800
	.4byte 0x000203BD
	.4byte 0x8103E333
	.4byte 0x43434B8F
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x78009208
	.4byte 0xAF1FBFBF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x70A1E374
	.4byte 0x85C9E1F9
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x91E79A29
	.4byte 0xFAFEFFFF
	.4byte 0xEB756941
	.4byte 0x00000003
	.4byte 0xEB545800
	.4byte 0x00002FDF
	.4byte 0x78C2DB72
	.4byte 0x5802AFFF
	.4byte 0x8104AAEB
	.4byte 0x2FFFFFFF
	.4byte 0x78C2EB14
	.4byte 0x5555020B
	.4byte 0x78E2E2F3
	.4byte 0x566080FF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x78009208
	.4byte 0x800A9FFF
	.4byte 0x78009208
	.4byte 0x277FFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x91E79A29
	.4byte 0xFEFFFFFF
	.4byte 0x78E3D2F1
	.4byte 0x09E0F8FF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0xE2725840
	.4byte 0x00807FBF
	.4byte 0x8104EA13
	.4byte 0x55550000
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x8104EA13
	.4byte 0x55550000
	.4byte 0x7000B20C
	.4byte 0x56602A7F
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x78009208
	.4byte 0x0200AAFF
	.4byte 0x78A2E373
	.4byte 0x609400E0
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x91E79A29
	.4byte 0xFEFFFFFF
	.4byte 0x78009208
	.4byte 0xBFBF1F2F
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x78009209
	.4byte 0x2F5FFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj texture_0

# .data:0x3CC0 | 0x9280 | size: 0x294
.obj rose_table_direct, local
	.float -196.61
	.float 223.94
	.float 0.78
	.float -141.56
	.float 219.43
	.float 0.76
	.float -73.39
	.float 236.15
	.float 0.7
	.float -21.96
	.float 242.71
	.float 0.7
	.float 87.9
	.float 241.39
	.float 0.98
	.float 133.93
	.float 223.66
	.float 0.84
	.float 173.11
	.float 215.57
	.float 0.78
	.float -119.22
	.float -213.95
	.float 0.85
	.float -71.22
	.float -227.94
	.float 0.82
	.float -23.4
	.float -216.1
	.float 0.75
	.float 29.64
	.float -222.83
	.float 0.76
	.float 127.21
	.float -233.98
	.float 0.81
	.float 192.32
	.float -207.1
	.float 0.72
	.float -195.15
	.float -179.61
	.float 0.96
	.float -84.81
	.float -169.72
	.float 0.94
	.float -25.53
	.float -155.86
	.float 0.79
	.float 32.81
	.float -174.25
	.float 0.74
	.float 86.01
	.float -155.31
	.float 0.82
	.float 188.71
	.float -157.01
	.float 0.84
	.float -225.99
	.float 232.6
	.float 0.71
	.float -254.44
	.float 95.68
	.float 0.75
	.float -246.33
	.float 35.15
	.float 0.92
	.float -245.52
	.float -40.32
	.float 0.87
	.float -229.69
	.float -92.09
	.float 0.84
	.float -243.1
	.float -214.08
	.float 0.95
	.float 241.17
	.float 215.65
	.float 0.95
	.float 253.63
	.float 153.26
	.float 0.93
	.float 242.99
	.float 105.34
	.float 0.73
	.float 252.56
	.float 23.3
	.float 0.86
	.float 242.58
	.float -86.44
	.float 0.84
	.float 239.01
	.float -156.48
	.float 0.84
	.float 247.68
	.float -207.16
	.float 0.73
	.float -280.63
	.float 164.94
	.float 0.74
	.float -284.82
	.float 93.31
	.float 0.98
	.float -283.27
	.float -18.97
	.float 0.87
	.float -268.18
	.float -95.94
	.float 0.73
	.float -270.89
	.float -145.05
	.float 0.94
	.float -292.4
	.float -226.47
	.float 0.84
	.float 275.47
	.float 237.61
	.float 0.93
	.float 288.59
	.float 156.75
	.float 0.9
	.float 288.65
	.float 109.74
	.float 0.99
	.float 282.48
	.float -12.99
	.float 0.7
	.float 268.08
	.float -77.21
	.float 0.73
	.float 268.48
	.float -141.41
	.float 0.94
	.float -187.86
	.float 269.48
	.float 0.78
	.float -180.2
	.float -245.88
	.float 0.72
	.float 192.61
	.float -266
	.float 0.92
	.float -175.99
	.float 186.6
	.float 0.8
	.float -202.86
	.float 146.75
	.float 1
	.float 189.17
	.float 178.65
	.float 0.95
	.float 210.63
	.float 120.26
	.float 0.93
	.float 235.63
	.float 80.26
	.float 0.8
	.float -170.63
	.float -120.26
	.float 0.93
	.float 189.63
	.float -100.26
	.float 0.9
	.float 173.63
	.float -125.26
	.float 0.72
.endobj rose_table_direct

# .data:0x3F54 | 0x9514 | size: 0x1E0
.obj rose_table, local
	.4byte 0xC33AAAAB
	.4byte 0x43660000
	.4byte 0xC3055556
	.4byte 0x43660000
	.4byte 0xC2A00000
	.4byte 0x43660000
	.4byte 0xC1D55558
	.4byte 0x43660000
	.4byte 0x41D55550
	.4byte 0x43660000
	.4byte 0x42A00000
	.4byte 0x43660000
	.4byte 0x43055556
	.4byte 0x43660000
	.4byte 0x433AAAAA
	.4byte 0x43660000
	.4byte 0xC33AAAAB
	.4byte 0xC35C0000
	.4byte 0xC3055556
	.4byte 0xC35C0000
	.4byte 0xC2A00000
	.4byte 0xC35C0000
	.4byte 0xC1D55558
	.4byte 0xC35C0000
	.4byte 0x41D55550
	.4byte 0xC35C0000
	.4byte 0x42A00000
	.4byte 0xC35C0000
	.4byte 0x43055556
	.4byte 0xC35C0000
	.4byte 0x433AAAAA
	.4byte 0xC35C0000
	.4byte 0xC33AAAAB
	.4byte 0xC32A0000
	.4byte 0xC3055556
	.4byte 0xC32A0000
	.4byte 0xC2A00000
	.4byte 0xC32A0000
	.4byte 0xC1D55558
	.4byte 0xC32A0000
	.4byte 0x41D55550
	.4byte 0xC32A0000
	.4byte 0x42A00000
	.4byte 0xC32A0000
	.4byte 0x43055556
	.4byte 0xC32A0000
	.4byte 0x433AAAAA
	.4byte 0xC32A0000
	.4byte 0xC3700000
	.4byte 0x43660000
	.4byte 0xC3700000
	.4byte 0x4325B6DC
	.4byte 0xC3700000
	.4byte 0x42CADB6E
	.4byte 0xC3700000
	.4byte 0x42149248
	.4byte 0xC3700000
	.4byte 0xC1D92490
	.4byte 0xC3700000
	.4byte 0xC2B6DB6C
	.4byte 0xC3700000
	.4byte 0xC31BB6DC
	.4byte 0xC3700000
	.4byte 0xC35C0000
	.4byte 0x43700000
	.4byte 0x43660000
	.4byte 0x43700000
	.4byte 0x4325B6DC
	.4byte 0x43700000
	.4byte 0x42CADB6E
	.4byte 0x43700000
	.4byte 0x42149248
	.4byte 0x43700000
	.4byte 0xC1D92490
	.4byte 0x43700000
	.4byte 0xC2B6DB6C
	.4byte 0x43700000
	.4byte 0xC31BB6DC
	.4byte 0x43700000
	.4byte 0xC35C0000
	.4byte 0xC38C0000
	.4byte 0x43660000
	.4byte 0xC38C0000
	.4byte 0x4325B6DC
	.4byte 0xC38C0000
	.4byte 0x42CADB6E
	.4byte 0xC38C0000
	.4byte 0x42149248
	.4byte 0xC38C0000
	.4byte 0xC1D92490
	.4byte 0xC38C0000
	.4byte 0xC2B6DB6C
	.4byte 0xC38C0000
	.4byte 0xC31BB6DC
	.4byte 0xC38C0000
	.4byte 0xC35C0000
	.4byte 0x438C0000
	.4byte 0x43660000
	.4byte 0x438C0000
	.4byte 0x4325B6DC
	.4byte 0x438C0000
	.4byte 0x42CADB6E
	.4byte 0x438C0000
	.4byte 0x42149248
	.4byte 0x438C0000
	.4byte 0xC1D92490
	.4byte 0x438C0000
	.4byte 0xC2B6DB6C
	.4byte 0x438C0000
	.4byte 0xC31BB6DC
	.4byte 0x438C0000
	.4byte 0xC35C0000
	.4byte 0xC33E0000
	.4byte 0x43870000
	.4byte 0xC33E0000
	.4byte 0xC3820000
	.4byte 0x433E0000
	.4byte 0x43870000
	.4byte 0x433E0000
	.4byte 0xC3820000
.endobj rose_table

# .data:0x4134 | 0x96F4 | size: 0x70
.obj flower_event, local
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_flower_init
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_flower
	.4byte 0x00020018
	.4byte 0xFD050F80
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_flower_end
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_flower_end_main
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj flower_event

# .data:0x41A4 | 0x9764 | size: 0x54
.obj flower_disp_pos, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_key_get_button
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002004E
	.4byte 0xFE363C80
	.4byte 0x00000100
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte flower_pos_report
	.4byte 0x00000002
	.4byte 0x00000001
.endobj flower_disp_pos

# .data:0x41F8 | 0x97B8 | size: 0x17C
.obj cloud_toujou, local
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
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004B
	.4byte 0x000000CD
	.4byte 0x0000021B
	.4byte 0x0000004B
	.4byte 0x0000006E
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e04_00_02_win_00004a7c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003C
	.4byte 0x00000078
	.4byte 0x00000160
	.4byte 0x00000114
	.4byte 0x00000078
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000012C
	.4byte 0x00000050
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e04_00_03_win_00004a90
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x000001F4
	.4byte 0x00000001
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_win_05_win_0000456c
	.4byte zero_win_00004550
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cloud_toujou

# .data:0x4374 | 0x9934 | size: 0x178
.obj win_04_init_evt_28_data_9934, global
	.4byte 0x00020032
	.4byte 0xF8405C7D
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_WIN1_win_00004a58
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_WIN2_win_00004a68
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00005800
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_win_00004aa4
	.4byte 0xFFFFFF83
	.4byte 0x0000003C
	.4byte 0xFFFFFFA1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000050
	.4byte 0x0001005C
	.4byte meet_clouda
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000051
	.4byte 0x0001005C
	.4byte meet_clouda2
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000053
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_win_00004540
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_w_bero_win_00004540
	.4byte bero_witchtrio
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_win_00004540
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xF5DE0180
	.4byte 0x00000056
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_win_00004564
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_e_bero_win_00004564
	.4byte 0x00000000
	.4byte touch_door
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000004C
	.4byte 0x0001005C
	.4byte cloud_toujou
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_hika_win_00004820
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj win_04_init_evt_28_data_9934

# .data:0x44EC | 0x9AAC | size: 0x4
.obj gap_04_00009AAC_data, global
.hidden gap_04_00009AAC_data
	.4byte 0x00000000
.endobj gap_04_00009AAC_data

# 0x00000000..0x00000010 | size: 0x10
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x0 | size: 0xC
.obj ssf, local
	.skip 0xC
.endobj ssf

# .bss:0xC | 0xC | size: 0x4
.obj gap_05_0000000C_bss, global
.hidden gap_05_0000000C_bss
	.skip 0x4
.endobj gap_05_0000000C_bss
