.include "macros.inc"
.file "pik_01.o"

# 0x0000055C..0x00000990 | size: 0x434
.text
.balign 4

# .text:0x0 | 0x55C | size: 0x28
.fn test_tev2, local
/* 0000055C 00000618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000560 0000061C  7C 08 02 A6 */	mflr r0
/* 00000564 00000620  7C 64 1B 78 */	mr r4, r3
/* 00000568 00000624  38 60 00 07 */	li r3, 0x7
/* 0000056C 00000628  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000570 0000062C  4B FF FA 91 */	bl envAddTev
/* 00000574 00000630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000578 00000634  7C 08 03 A6 */	mtlr r0
/* 0000057C 00000638  38 21 00 10 */	addi r1, r1, 0x10
/* 00000580 0000063C  4E 80 00 20 */	blr
.endfn test_tev2

# .text:0x28 | 0x584 | size: 0x28
.fn test_tev, local
/* 00000584 00000640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000588 00000644  7C 08 02 A6 */	mflr r0
/* 0000058C 00000648  7C 64 1B 78 */	mr r4, r3
/* 00000590 0000064C  38 60 00 04 */	li r3, 0x4
/* 00000594 00000650  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000598 00000654  4B FF FA 69 */	bl envAddTev
/* 0000059C 00000658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000005A0 0000065C  7C 08 03 A6 */	mtlr r0
/* 000005A4 00000660  38 21 00 10 */	addi r1, r1, 0x10
/* 000005A8 00000664  4E 80 00 20 */	blr
.endfn test_tev

# .text:0x50 | 0x5AC | size: 0x68
.fn kpa_lock_hit_scale, local
/* 000005AC 00000668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000005B0 0000066C  7C 08 02 A6 */	mflr r0
/* 000005B4 00000670  3C 60 00 00 */	lis r3, str_lock_pik_000022f4@ha
/* 000005B8 00000674  90 01 00 14 */	stw r0, 0x14(r1)
/* 000005BC 00000678  38 63 00 00 */	addi r3, r3, str_lock_pik_000022f4@l
/* 000005C0 0000067C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000005C4 00000680  4B FF FA 3D */	bl mobjNameToPtr
/* 000005C8 00000684  3C 80 00 00 */	lis r4, float_2_pik_00002b54@ha
/* 000005CC 00000688  C0 03 01 84 */	lfs f0, 0x184(r3)
/* 000005D0 0000068C  C0 24 00 00 */	lfs f1, float_2_pik_00002b54@l(r4)
/* 000005D4 00000690  7C 7F 1B 78 */	mr r31, r3
/* 000005D8 00000694  EC 00 00 72 */	fmuls f0, f0, f1
/* 000005DC 00000698  D0 03 01 84 */	stfs f0, 0x184(r3)
/* 000005E0 0000069C  C0 03 01 88 */	lfs f0, 0x188(r3)
/* 000005E4 000006A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 000005E8 000006A4  D0 03 01 88 */	stfs f0, 0x188(r3)
/* 000005EC 000006A8  4B FF FA 15 */	bl mobjCalcMtx2
/* 000005F0 000006AC  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 000005F4 000006B0  38 60 00 02 */	li r3, 0x2
/* 000005F8 000006B4  54 00 07 B8 */	rlwinm r0, r0, 0, 30, 28
/* 000005FC 000006B8  90 1F 00 00 */	stw r0, 0x0(r31)
/* 00000600 000006BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000604 000006C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000608 000006C4  7C 08 03 A6 */	mtlr r0
/* 0000060C 000006C8  38 21 00 10 */	addi r1, r1, 0x10
/* 00000610 000006CC  4E 80 00 20 */	blr
.endfn kpa_lock_hit_scale

# .text:0xB8 | 0x614 | size: 0x38
.fn set_r, local
/* 00000614 000006D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000618 000006D4  7C 08 02 A6 */	mflr r0
/* 0000061C 000006D8  3C 60 00 00 */	lis r3, str_lock_pik_000022f4@ha
/* 00000620 000006DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000624 000006E0  38 63 00 00 */	addi r3, r3, str_lock_pik_000022f4@l
/* 00000628 000006E4  4B FF F9 D9 */	bl mobjNameToPtr
/* 0000062C 000006E8  3C 80 00 00 */	lis r4, float_neg45_pik_00002b58@ha
/* 00000630 000006EC  C0 04 00 00 */	lfs f0, float_neg45_pik_00002b58@l(r4)
/* 00000634 000006F0  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 00000638 000006F4  38 60 00 02 */	li r3, 0x2
/* 0000063C 000006F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000640 000006FC  7C 08 03 A6 */	mtlr r0
/* 00000644 00000700  38 21 00 10 */	addi r1, r1, 0x10
/* 00000648 00000704  4E 80 00 20 */	blr
.endfn set_r

# .text:0xF0 | 0x64C | size: 0x64
.fn starstone_set_ry, local
/* 0000064C 00000708  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000650 0000070C  7C 08 02 A6 */	mflr r0
/* 00000654 00000710  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000658 00000714  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 0000065C 00000718  BF C1 00 10 */	stmw r30, 0x10(r1)
/* 00000660 0000071C  7C 7E 1B 78 */	mr r30, r3
/* 00000664 00000720  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000668 00000724  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000066C 00000728  4B FF F9 95 */	bl evtGetValue
/* 00000670 0000072C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000674 00000730  7C 7F 1B 78 */	mr r31, r3
/* 00000678 00000734  7F C3 F3 78 */	mr r3, r30
/* 0000067C 00000738  4B FF F9 85 */	bl evtGetFloat
/* 00000680 0000073C  FF E0 08 90 */	fmr f31, f1
/* 00000684 00000740  7F E3 FB 78 */	mr r3, r31
/* 00000688 00000744  4B FF F9 79 */	bl effNameToPtr
/* 0000068C 00000748  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000690 0000074C  38 60 00 02 */	li r3, 0x2
/* 00000694 00000750  D3 E4 00 1C */	stfs f31, 0x1c(r4)
/* 00000698 00000754  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 0000069C 00000758  BB C1 00 10 */	lmw r30, 0x10(r1)
/* 000006A0 0000075C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000006A4 00000760  7C 08 03 A6 */	mtlr r0
/* 000006A8 00000764  38 21 00 20 */	addi r1, r1, 0x20
/* 000006AC 00000768  4E 80 00 20 */	blr
.endfn starstone_set_ry

# .text:0x154 | 0x6B0 | size: 0x9C
.fn starstone_set_pos, local
/* 000006B0 0000076C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000006B4 00000770  7C 08 02 A6 */	mflr r0
/* 000006B8 00000774  90 01 00 34 */	stw r0, 0x34(r1)
/* 000006BC 00000778  39 61 00 30 */	addi r11, r1, 0x30
/* 000006C0 0000077C  4B FF F9 41 */	bl _savefpr_29
/* 000006C4 00000780  BF A1 00 0C */	stmw r29, 0xc(r1)
/* 000006C8 00000784  7C 7D 1B 78 */	mr r29, r3
/* 000006CC 00000788  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000006D0 0000078C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000006D4 00000790  4B FF F9 2D */	bl evtGetValue
/* 000006D8 00000794  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000006DC 00000798  7C 7E 1B 78 */	mr r30, r3
/* 000006E0 0000079C  7F A3 EB 78 */	mr r3, r29
/* 000006E4 000007A0  4B FF F9 1D */	bl evtGetFloat
/* 000006E8 000007A4  FF A0 08 90 */	fmr f29, f1
/* 000006EC 000007A8  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000006F0 000007AC  7F A3 EB 78 */	mr r3, r29
/* 000006F4 000007B0  4B FF F9 0D */	bl evtGetFloat
/* 000006F8 000007B4  FF C0 08 90 */	fmr f30, f1
/* 000006FC 000007B8  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00000700 000007BC  7F A3 EB 78 */	mr r3, r29
/* 00000704 000007C0  4B FF F8 FD */	bl evtGetFloat
/* 00000708 000007C4  FF E0 08 90 */	fmr f31, f1
/* 0000070C 000007C8  7F C3 F3 78 */	mr r3, r30
/* 00000710 000007CC  4B FF F8 F1 */	bl effNameToPtr
/* 00000714 000007D0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000718 000007D4  D3 A4 00 08 */	stfs f29, 0x8(r4)
/* 0000071C 000007D8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000720 000007DC  D3 C4 00 0C */	stfs f30, 0xc(r4)
/* 00000724 000007E0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000728 000007E4  38 60 00 02 */	li r3, 0x2
/* 0000072C 000007E8  D3 E4 00 10 */	stfs f31, 0x10(r4)
/* 00000730 000007EC  39 61 00 30 */	addi r11, r1, 0x30
/* 00000734 000007F0  4B FF F8 CD */	bl _restfpr_29
/* 00000738 000007F4  BB A1 00 0C */	lmw r29, 0xc(r1)
/* 0000073C 000007F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00000740 000007FC  7C 08 03 A6 */	mtlr r0
/* 00000744 00000800  38 21 00 30 */	addi r1, r1, 0x30
/* 00000748 00000804  4E 80 00 20 */	blr
.endfn starstone_set_pos

# .text:0x1F0 | 0x74C | size: 0xB0
.fn starstone_entry, local
/* 0000074C 00000808  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00000750 0000080C  7C 08 02 A6 */	mflr r0
/* 00000754 00000810  90 01 00 44 */	stw r0, 0x44(r1)
/* 00000758 00000814  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 0000075C 00000818  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 00000760 0000081C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 00000764 00000820  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 00000768 00000824  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000076C 00000828  7C 7D 1B 78 */	mr r29, r3
/* 00000770 0000082C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000774 00000830  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000778 00000834  4B FF F8 89 */	bl evtGetValue
/* 0000077C 00000838  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000780 0000083C  7C 7E 1B 78 */	mr r30, r3
/* 00000784 00000840  7F A3 EB 78 */	mr r3, r29
/* 00000788 00000844  4B FF F8 79 */	bl evtGetFloat
/* 0000078C 00000848  FF E0 08 90 */	fmr f31, f1
/* 00000790 0000084C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00000794 00000850  7F A3 EB 78 */	mr r3, r29
/* 00000798 00000854  4B FF F8 69 */	bl evtGetFloat
/* 0000079C 00000858  FF C0 08 90 */	fmr f30, f1
/* 000007A0 0000085C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000007A4 00000860  7F A3 EB 78 */	mr r3, r29
/* 000007A8 00000864  4B FF F8 59 */	bl evtGetFloat
/* 000007AC 00000868  FC 00 08 90 */	fmr f0, f1
/* 000007B0 0000086C  3C 60 00 00 */	lis r3, float_1_pik_00002b5c@ha
/* 000007B4 00000870  C0 83 00 00 */	lfs f4, float_1_pik_00002b5c@l(r3)
/* 000007B8 00000874  FC 20 F8 90 */	fmr f1, f31
/* 000007BC 00000878  FC 40 F0 90 */	fmr f2, f30
/* 000007C0 0000087C  38 60 00 05 */	li r3, 0x5
/* 000007C4 00000880  FC 60 00 90 */	fmr f3, f0
/* 000007C8 00000884  4B FF F8 39 */	bl effStarStoneEntry
/* 000007CC 00000888  7F C4 F3 78 */	mr r4, r30
/* 000007D0 0000088C  4B FF F8 31 */	bl effSetName
/* 000007D4 00000890  38 60 00 02 */	li r3, 0x2
/* 000007D8 00000894  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 000007DC 00000898  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 000007E0 0000089C  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 000007E4 000008A0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 000007E8 000008A4  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000007EC 000008A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 000007F0 000008AC  7C 08 03 A6 */	mtlr r0
/* 000007F4 000008B0  38 21 00 40 */	addi r1, r1, 0x40
/* 000007F8 000008B4  4E 80 00 20 */	blr
.endfn starstone_entry

# .text:0x2A0 | 0x7FC | size: 0x70
.fn anim_tevcallback, local
/* 000007FC 000008B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000800 000008BC  7C 08 02 A6 */	mflr r0
/* 00000804 000008C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000808 000008C4  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000080C 000008C8  7C 7D 1B 78 */	mr r29, r3
/* 00000810 000008CC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000814 000008D0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000818 000008D4  4B FF F7 E9 */	bl evtGetValue
/* 0000081C 000008D8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000820 000008DC  7C 7E 1B 78 */	mr r30, r3
/* 00000824 000008E0  7F A3 EB 78 */	mr r3, r29
/* 00000828 000008E4  4B FF F7 D9 */	bl evtGetValue
/* 0000082C 000008E8  7C 7F 1B 78 */	mr r31, r3
/* 00000830 000008EC  7F C3 F3 78 */	mr r3, r30
/* 00000834 000008F0  4B FF F7 CD */	bl npcNameToPtr_NoAssert
/* 00000838 000008F4  28 03 00 00 */	cmplwi r3, 0x0
/* 0000083C 000008F8  40 82 00 0C */	bne .L_00000848
/* 00000840 000008FC  38 60 00 02 */	li r3, 0x2
/* 00000844 00000900  48 00 00 14 */	b .L_00000858
.L_00000848:
/* 00000848 00000904  80 63 01 04 */	lwz r3, 0x104(r3)
/* 0000084C 00000908  57 E4 C1 0E */	clrlslwi r4, r31, 28, 24
/* 00000850 0000090C  4B FF F7 B1 */	bl animPoseSetMaterialFlagOn
/* 00000854 00000910  38 60 00 02 */	li r3, 0x2
.L_00000858:
/* 00000858 00000914  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 0000085C 00000918  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000860 0000091C  7C 08 03 A6 */	mtlr r0
/* 00000864 00000920  38 21 00 20 */	addi r1, r1, 0x20
/* 00000868 00000924  4E 80 00 20 */	blr
.endfn anim_tevcallback

# .text:0x310 | 0x86C | size: 0xC4
.fn yami_view, local
/* 0000086C 00000928  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 00000870 0000092C  7C 08 02 A6 */	mflr r0
/* 00000874 00000930  90 01 00 74 */	stw r0, 0x74(r1)
/* 00000878 00000934  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 0000087C 00000938  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00000880 0000093C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00000884 00000940  4B FF F7 7D */	bl evtGetFloat
/* 00000888 00000944  3C 60 00 00 */	lis r3, float_100_pik_00002b60@ha
/* 0000088C 00000948  3C A0 00 00 */	lis r5, vec3_pik_00002934@ha
/* 00000890 0000094C  38 A5 00 00 */	addi r5, r5, vec3_pik_00002934@l
/* 00000894 00000950  C0 03 00 00 */	lfs f0, float_100_pik_00002b60@l(r3)
/* 00000898 00000954  3C 80 00 00 */	lis r4, vec3_pik_0000291c@ha
/* 0000089C 00000958  3C 60 00 00 */	lis r3, vec3_pik_00002928@ha
/* 000008A0 0000095C  38 C3 00 00 */	addi r6, r3, vec3_pik_00002928@l
/* 000008A4 00000960  EC 00 08 2A */	fadds f0, f0, f1
/* 000008A8 00000964  39 04 00 00 */	addi r8, r4, vec3_pik_0000291c@l
/* 000008AC 00000968  80 85 00 08 */	lwz r4, 0x8(r5)
/* 000008B0 0000096C  80 08 00 08 */	lwz r0, 0x8(r8)
/* 000008B4 00000970  38 61 00 2C */	addi r3, r1, 0x2c
/* 000008B8 00000974  90 81 00 10 */	stw r4, 0x10(r1)
/* 000008BC 00000978  83 E5 00 00 */	lwz r31, 0x0(r5)
/* 000008C0 0000097C  38 81 00 20 */	addi r4, r1, 0x20
/* 000008C4 00000980  90 01 00 28 */	stw r0, 0x28(r1)
/* 000008C8 00000984  81 85 00 04 */	lwz r12, 0x4(r5)
/* 000008CC 00000988  38 A1 00 14 */	addi r5, r1, 0x14
/* 000008D0 0000098C  81 66 00 00 */	lwz r11, 0x0(r6)
/* 000008D4 00000990  81 46 00 04 */	lwz r10, 0x4(r6)
/* 000008D8 00000994  81 26 00 08 */	lwz r9, 0x8(r6)
/* 000008DC 00000998  38 C1 00 08 */	addi r6, r1, 0x8
/* 000008E0 0000099C  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 000008E4 000009A0  80 08 00 04 */	lwz r0, 0x4(r8)
/* 000008E8 000009A4  93 E1 00 08 */	stw r31, 0x8(r1)
/* 000008EC 000009A8  91 81 00 0C */	stw r12, 0xc(r1)
/* 000008F0 000009AC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 000008F4 000009B0  91 61 00 14 */	stw r11, 0x14(r1)
/* 000008F8 000009B4  91 41 00 18 */	stw r10, 0x18(r1)
/* 000008FC 000009B8  91 21 00 1C */	stw r9, 0x1c(r1)
/* 00000900 000009BC  90 E1 00 20 */	stw r7, 0x20(r1)
/* 00000904 000009C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000908 000009C4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 0000090C 000009C8  4B FF F6 F5 */	bl C_MTXLookAt
/* 00000910 000009CC  38 61 00 2C */	addi r3, r1, 0x2c
/* 00000914 000009D0  4B FF F6 ED */	bl envSetYamiView
/* 00000918 000009D4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 0000091C 000009D8  38 60 00 02 */	li r3, 0x2
/* 00000920 000009DC  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 00000924 000009E0  7C 08 03 A6 */	mtlr r0
/* 00000928 000009E4  38 21 00 70 */	addi r1, r1, 0x70
/* 0000092C 000009E8  4E 80 00 20 */	blr
.endfn yami_view

# .text:0x3D4 | 0x930 | size: 0x60
.fn chk_luigi_color, local
/* 00000930 000009EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000934 000009F0  7C 08 02 A6 */	mflr r0
/* 00000938 000009F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000093C 000009F8  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000940 000009FC  7C 7E 1B 78 */	mr r30, r3
/* 00000944 00000A00  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000948 00000A04  4B FF F6 B9 */	bl marioGetColor
/* 0000094C 00000A08  2C 03 00 01 */	cmpwi r3, 0x1
/* 00000950 00000A0C  40 82 00 18 */	bne .L_00000968
/* 00000954 00000A10  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000958 00000A14  7F C3 F3 78 */	mr r3, r30
/* 0000095C 00000A18  38 A0 00 01 */	li r5, 0x1
/* 00000960 00000A1C  4B FF F6 A1 */	bl evtSetValue
/* 00000964 00000A20  48 00 00 14 */	b .L_00000978
.L_00000968:
/* 00000968 00000A24  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000096C 00000A28  7F C3 F3 78 */	mr r3, r30
/* 00000970 00000A2C  38 A0 00 00 */	li r5, 0x0
/* 00000974 00000A30  4B FF F6 8D */	bl evtSetValue
.L_00000978:
/* 00000978 00000A34  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000097C 00000A38  38 60 00 02 */	li r3, 0x2
/* 00000980 00000A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000984 00000A40  7C 08 03 A6 */	mtlr r0
/* 00000988 00000A44  38 21 00 10 */	addi r1, r1, 0x10
/* 0000098C 00000A48  4E 80 00 20 */	blr
.endfn chk_luigi_color

# 0x00000C30..0x000016A0 | size: 0xA70
.rodata
.balign 8

# .rodata:0x0 | 0xC30 | size: 0x7
.obj str_mod_00_pik_000020f8, local
	.string "mod_00"
.endobj str_mod_00_pik_000020f8

# .rodata:0x7 | 0xC37 | size: 0x1
.obj gap_03_00000C37_rodata, global
.hidden gap_03_00000C37_rodata
	.byte 0x00
.endobj gap_03_00000C37_rodata

# .rodata:0x8 | 0xC38 | size: 0x7
.obj str_mod_01_pik_00002100, local
	.string "mod_01"
.endobj str_mod_01_pik_00002100

# .rodata:0xF | 0xC3F | size: 0x1
.obj gap_03_00000C3F_rodata, global
.hidden gap_03_00000C3F_rodata
	.byte 0x00
.endobj gap_03_00000C3F_rodata

# .rodata:0x10 | 0xC40 | size: 0x7
.obj str_mod_02_pik_00002108, local
	.string "mod_02"
.endobj str_mod_02_pik_00002108

# .rodata:0x17 | 0xC47 | size: 0x1
.obj gap_03_00000C47_rodata, global
.hidden gap_03_00000C47_rodata
	.byte 0x00
.endobj gap_03_00000C47_rodata

# .rodata:0x18 | 0xC48 | size: 0x7
.obj str_mod_03_pik_00002110, local
	.string "mod_03"
.endobj str_mod_03_pik_00002110

# .rodata:0x1F | 0xC4F | size: 0x1
.obj gap_03_00000C4F_rodata, global
.hidden gap_03_00000C4F_rodata
	.byte 0x00
.endobj gap_03_00000C4F_rodata

# .rodata:0x20 | 0xC50 | size: 0x7
.obj str_mod_04_pik_00002118, local
	.string "mod_04"
.endobj str_mod_04_pik_00002118

# .rodata:0x27 | 0xC57 | size: 0x1
.obj gap_03_00000C57_rodata, global
.hidden gap_03_00000C57_rodata
	.byte 0x00
.endobj gap_03_00000C57_rodata

# .rodata:0x28 | 0xC58 | size: 0x7
.obj str_mod_05_pik_00002120, local
	.string "mod_05"
.endobj str_mod_05_pik_00002120

# .rodata:0x2F | 0xC5F | size: 0x1
.obj gap_03_00000C5F_rodata, global
.hidden gap_03_00000C5F_rodata
	.byte 0x00
.endobj gap_03_00000C5F_rodata

# .rodata:0x30 | 0xC60 | size: 0x7
.obj str_mod_06_pik_00002128, local
	.string "mod_06"
.endobj str_mod_06_pik_00002128

# .rodata:0x37 | 0xC67 | size: 0x1
.obj gap_03_00000C67_rodata, global
.hidden gap_03_00000C67_rodata
	.byte 0x00
.endobj gap_03_00000C67_rodata

# .rodata:0x38 | 0xC68 | size: 0x7
.obj str_mod_07_pik_00002130, local
	.string "mod_07"
.endobj str_mod_07_pik_00002130

# .rodata:0x3F | 0xC6F | size: 0x1
.obj gap_03_00000C6F_rodata, global
.hidden gap_03_00000C6F_rodata
	.byte 0x00
.endobj gap_03_00000C6F_rodata

# .rodata:0x40 | 0xC70 | size: 0x9
.obj str_door_1_b_pik_00002138, local
	.string "door_1_b"
.endobj str_door_1_b_pik_00002138

# .rodata:0x49 | 0xC79 | size: 0x3
.obj gap_03_00000C79_rodata, global
.hidden gap_03_00000C79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C79_rodata

# .rodata:0x4C | 0xC7C | size: 0x9
.obj str_door_1_a_pik_00002144, local
	.string "door_1_a"
.endobj str_door_1_a_pik_00002144

# .rodata:0x55 | 0xC85 | size: 0x3
.obj gap_03_00000C85_rodata, global
.hidden gap_03_00000C85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C85_rodata

# .rodata:0x58 | 0xC88 | size: 0x8
.obj str_nw_bero_pik_00002150, local
	.string "nw_bero"
.endobj str_nw_bero_pik_00002150

# .rodata:0x60 | 0xC90 | size: 0x7
.obj str_pik_04_pik_00002158, local
	.string "pik_04"
.endobj str_pik_04_pik_00002158

# .rodata:0x67 | 0xC97 | size: 0x1
.obj gap_03_00000C97_rodata, global
.hidden gap_03_00000C97_rodata
	.byte 0x00
.endobj gap_03_00000C97_rodata

# .rodata:0x68 | 0xC98 | size: 0x8
.obj str_se_bero_pik_00002160, local
	.string "se_bero"
.endobj str_se_bero_pik_00002160

# .rodata:0x70 | 0xCA0 | size: 0x7
.obj str_n_bero_pik_00002168, local
	.string "n_bero"
.endobj str_n_bero_pik_00002168

# .rodata:0x77 | 0xCA7 | size: 0x1
.obj gap_03_00000CA7_rodata, global
.hidden gap_03_00000CA7_rodata
	.byte 0x00
.endobj gap_03_00000CA7_rodata

# .rodata:0x78 | 0xCA8 | size: 0x7
.obj str_pik_02_pik_00002170, local
	.string "pik_02"
.endobj str_pik_02_pik_00002170

# .rodata:0x7F | 0xCAF | size: 0x1
.obj gap_03_00000CAF_rodata, global
.hidden gap_03_00000CAF_rodata
	.byte 0x00
.endobj gap_03_00000CAF_rodata

# .rodata:0x80 | 0xCB0 | size: 0x7
.obj str_s_bero_pik_00002178, local
	.string "s_bero"
.endobj str_s_bero_pik_00002178

# .rodata:0x87 | 0xCB7 | size: 0x1
.obj gap_03_00000CB7_rodata, global
.hidden gap_03_00000CB7_rodata
	.byte 0x00
.endobj gap_03_00000CB7_rodata

# .rodata:0x88 | 0xCB8 | size: 0x8
.obj str_dokan_1_pik_00002180, local
	.string "dokan_1"
.endobj str_dokan_1_pik_00002180

# .rodata:0x90 | 0xCC0 | size: 0x7
.obj str_tik_17_pik_00002188, local
	.string "tik_17"
.endobj str_tik_17_pik_00002188

# .rodata:0x97 | 0xCC7 | size: 0x1
.obj gap_03_00000CC7_rodata, global
.hidden gap_03_00000CC7_rodata
	.byte 0x00
.endobj gap_03_00000CC7_rodata

# .rodata:0x98 | 0xCC8 | size: 0xB
.obj str_yajirusi_1_pik_00002190, local
	.string "yajirusi_1"
.endobj str_yajirusi_1_pik_00002190

# .rodata:0xA3 | 0xCD3 | size: 0x1
.obj gap_03_00000CD3_rodata, global
.hidden gap_03_00000CD3_rodata
	.byte 0x00
.endobj gap_03_00000CD3_rodata

# .rodata:0xA4 | 0xCD4 | size: 0xB
.obj str_yajirusi_2_pik_0000219c, local
	.string "yajirusi_2"
.endobj str_yajirusi_2_pik_0000219c

# .rodata:0xAF | 0xCDF | size: 0x1
.obj gap_03_00000CDF_rodata, global
.hidden gap_03_00000CDF_rodata
	.byte 0x00
.endobj gap_03_00000CDF_rodata

# .rodata:0xB0 | 0xCE0 | size: 0xC
.obj str_stg6_pik_06_pik_000021a8, local
	.string "stg6_pik_06"
.endobj str_stg6_pik_06_pik_000021a8

# .rodata:0xBC | 0xCEC | size: 0xB
.obj str_ポワン探偵_pik_000021b4, local
	.4byte 0x837C838F
	.4byte 0x83939254
	.byte 0x92, 0xE3, 0x00
.endobj str_ポワン探偵_pik_000021b4

# .rodata:0xC7 | 0xCF7 | size: 0x1
.obj gap_03_00000CF7_rodata, global
.hidden gap_03_00000CF7_rodata
	.byte 0x00
.endobj gap_03_00000CF7_rodata

# .rodata:0xC8 | 0xCF8 | size: 0xE
.obj str_stg6_pik_07_0_pik_000021c0, local
	.string "stg6_pik_07_0"
.endobj str_stg6_pik_07_0_pik_000021c0

# .rodata:0xD6 | 0xD06 | size: 0x2
.obj gap_03_00000D06_rodata, global
.hidden gap_03_00000D06_rodata
	.2byte 0x0000
.endobj gap_03_00000D06_rodata

# .rodata:0xD8 | 0xD08 | size: 0x6
.obj str_party_pik_000021d0, local
	.string "party"
.endobj str_party_pik_000021d0

# .rodata:0xDE | 0xD0E | size: 0x2
.obj gap_03_00000D0E_rodata, global
.hidden gap_03_00000D0E_rodata
	.2byte 0x0000
.endobj gap_03_00000D0E_rodata

# .rodata:0xE0 | 0xD10 | size: 0xE
.obj str_stg6_pik_07_1_pik_000021d8, local
	.string "stg6_pik_07_1"
.endobj str_stg6_pik_07_1_pik_000021d8

# .rodata:0xEE | 0xD1E | size: 0x2
.obj gap_03_00000D1E_rodata, global
.hidden gap_03_00000D1E_rodata
	.2byte 0x0000
.endobj gap_03_00000D1E_rodata

# .rodata:0xF0 | 0xD20 | size: 0xE
.obj str_stg6_pik_07_2_pik_000021e8, local
	.string "stg6_pik_07_2"
.endobj str_stg6_pik_07_2_pik_000021e8

# .rodata:0xFE | 0xD2E | size: 0x2
.obj gap_03_00000D2E_rodata, global
.hidden gap_03_00000D2E_rodata
	.2byte 0x0000
.endobj gap_03_00000D2E_rodata

# .rodata:0x100 | 0xD30 | size: 0xE
.obj str_stg6_pik_07_3_pik_000021f8, local
	.string "stg6_pik_07_3"
.endobj str_stg6_pik_07_3_pik_000021f8

# .rodata:0x10E | 0xD3E | size: 0x2
.obj gap_03_00000D3E_rodata, global
.hidden gap_03_00000D3E_rodata
	.2byte 0x0000
.endobj gap_03_00000D3E_rodata

# .rodata:0x110 | 0xD40 | size: 0xE
.obj str_stg6_pik_07_4_pik_00002208, local
	.string "stg6_pik_07_4"
.endobj str_stg6_pik_07_4_pik_00002208

# .rodata:0x11E | 0xD4E | size: 0x2
.obj gap_03_00000D4E_rodata, global
.hidden gap_03_00000D4E_rodata
	.2byte 0x0000
.endobj gap_03_00000D4E_rodata

# .rodata:0x120 | 0xD50 | size: 0xE
.obj str_stg6_pik_07_5_pik_00002218, local
	.string "stg6_pik_07_5"
.endobj str_stg6_pik_07_5_pik_00002218

# .rodata:0x12E | 0xD5E | size: 0x2
.obj gap_03_00000D5E_rodata, global
.hidden gap_03_00000D5E_rodata
	.2byte 0x0000
.endobj gap_03_00000D5E_rodata

# .rodata:0x130 | 0xD60 | size: 0xE
.obj str_stg6_pik_07_6_pik_00002228, local
	.string "stg6_pik_07_6"
.endobj str_stg6_pik_07_6_pik_00002228

# .rodata:0x13E | 0xD6E | size: 0x2
.obj gap_03_00000D6E_rodata, global
.hidden gap_03_00000D6E_rodata
	.2byte 0x0000
.endobj gap_03_00000D6E_rodata

# .rodata:0x140 | 0xD70 | size: 0x6
.obj str_mario_pik_00002238, local
	.string "mario"
.endobj str_mario_pik_00002238

# .rodata:0x146 | 0xD76 | size: 0x2
.obj gap_03_00000D76_rodata, global
.hidden gap_03_00000D76_rodata
	.2byte 0x0000
.endobj gap_03_00000D76_rodata

# .rodata:0x148 | 0xD78 | size: 0xC
.obj str_stg6_pik_08_pik_00002240, local
	.string "stg6_pik_08"
.endobj str_stg6_pik_08_pik_00002240

# .rodata:0x154 | 0xD84 | size: 0xF
.obj str_BGM_EVT_POWAN1_pik_0000224c, local
	.string "BGM_EVT_POWAN1"
.endobj str_BGM_EVT_POWAN1_pik_0000224c

# .rodata:0x163 | 0xD93 | size: 0x1
.obj gap_03_00000D93_rodata, global
.hidden gap_03_00000D93_rodata
	.byte 0x00
.endobj gap_03_00000D93_rodata

# .rodata:0x164 | 0xD94 | size: 0xE
.obj str_stg6_pik_09_0_pik_0000225c, local
	.string "stg6_pik_09_0"
.endobj str_stg6_pik_09_0_pik_0000225c

# .rodata:0x172 | 0xDA2 | size: 0x2
.obj gap_03_00000DA2_rodata, global
.hidden gap_03_00000DA2_rodata
	.2byte 0x0000
.endobj gap_03_00000DA2_rodata

# .rodata:0x174 | 0xDA4 | size: 0xE
.obj str_stg6_pik_09_1_pik_0000226c, local
	.string "stg6_pik_09_1"
.endobj str_stg6_pik_09_1_pik_0000226c

# .rodata:0x182 | 0xDB2 | size: 0x2
.obj gap_03_00000DB2_rodata, global
.hidden gap_03_00000DB2_rodata
	.2byte 0x0000
.endobj gap_03_00000DB2_rodata

# .rodata:0x184 | 0xDB4 | size: 0xE
.obj str_stg6_pik_09_2_pik_0000227c, local
	.string "stg6_pik_09_2"
.endobj str_stg6_pik_09_2_pik_0000227c

# .rodata:0x192 | 0xDC2 | size: 0x2
.obj gap_03_00000DC2_rodata, global
.hidden gap_03_00000DC2_rodata
	.2byte 0x0000
.endobj gap_03_00000DC2_rodata

# .rodata:0x194 | 0xDC4 | size: 0xE
.obj str_stg6_pik_09_3_pik_0000228c, local
	.string "stg6_pik_09_3"
.endobj str_stg6_pik_09_3_pik_0000228c

# .rodata:0x1A2 | 0xDD2 | size: 0x2
.obj gap_03_00000DD2_rodata, global
.hidden gap_03_00000DD2_rodata
	.2byte 0x0000
.endobj gap_03_00000DD2_rodata

# .rodata:0x1A4 | 0xDD4 | size: 0xE
.obj str_stg6_pik_09_4_pik_0000229c, local
	.string "stg6_pik_09_4"
.endobj str_stg6_pik_09_4_pik_0000229c

# .rodata:0x1B2 | 0xDE2 | size: 0x2
.obj gap_03_00000DE2_rodata, global
.hidden gap_03_00000DE2_rodata
	.2byte 0x0000
.endobj gap_03_00000DE2_rodata

# .rodata:0x1B4 | 0xDE4 | size: 0xE
.obj str_stg6_pik_09_5_pik_000022ac, local
	.string "stg6_pik_09_5"
.endobj str_stg6_pik_09_5_pik_000022ac

# .rodata:0x1C2 | 0xDF2 | size: 0x2
.obj gap_03_00000DF2_rodata, global
.hidden gap_03_00000DF2_rodata
	.2byte 0x0000
.endobj gap_03_00000DF2_rodata

# .rodata:0x1C4 | 0xDF4 | size: 0xE
.obj str_stg6_pik_09_6_pik_000022bc, local
	.string "stg6_pik_09_6"
.endobj str_stg6_pik_09_6_pik_000022bc

# .rodata:0x1D2 | 0xE02 | size: 0x2
.obj gap_03_00000E02_rodata, global
.hidden gap_03_00000E02_rodata
	.2byte 0x0000
.endobj gap_03_00000E02_rodata

# .rodata:0x1D4 | 0xE04 | size: 0xC
.obj str_stg6_pik_10_pik_000022cc, local
	.string "stg6_pik_10"
.endobj str_stg6_pik_10_pik_000022cc

# .rodata:0x1E0 | 0xE10 | size: 0x7
.obj str_M_N_5B_pik_000022d8, local
	.string "M_N_5B"
.endobj str_M_N_5B_pik_000022d8

# .rodata:0x1E7 | 0xE17 | size: 0x1
.obj gap_03_00000E17_rodata, global
.hidden gap_03_00000E17_rodata
	.byte 0x00
.endobj gap_03_00000E17_rodata

# .rodata:0x1E8 | 0xE18 | size: 0x6
.obj str_M_S_1_pik_000022e0, local
	.string "M_S_1"
.endobj str_M_S_1_pik_000022e0

# .rodata:0x1EE | 0xE1E | size: 0x2
.obj gap_03_00000E1E_rodata, global
.hidden gap_03_00000E1E_rodata
	.2byte 0x0000
.endobj gap_03_00000E1E_rodata

# .rodata:0x1F0 | 0xE20 | size: 0xC
.obj str_stg6_pik_11_pik_000022e8, local
	.string "stg6_pik_11"
.endobj str_stg6_pik_11_pik_000022e8

# .rodata:0x1FC | 0xE2C | size: 0x5
.obj str_lock_pik_000022f4, local
	.string "lock"
.endobj str_lock_pik_000022f4

# .rodata:0x201 | 0xE31 | size: 0x3
.obj gap_03_00000E31_rodata, global
.hidden gap_03_00000E31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000E31_rodata

# .rodata:0x204 | 0xE34 | size: 0x3
.obj str_me_pik_000022fc, local
	.string "me"
.endobj str_me_pik_000022fc

# .rodata:0x207 | 0xE37 | size: 0x1
.obj gap_03_00000E37_rodata, global
.hidden gap_03_00000E37_rodata
	.byte 0x00
.endobj gap_03_00000E37_rodata

# .rodata:0x208 | 0xE38 | size: 0xC
.obj str_irai_27_001_pik_00002300, local
	.string "irai_27_001"
.endobj str_irai_27_001_pik_00002300

# .rodata:0x214 | 0xE44 | size: 0x6
.obj str_M_I_G_pik_0000230c, local
	.string "M_I_G"
.endobj str_M_I_G_pik_0000230c

# .rodata:0x21A | 0xE4A | size: 0x2
.obj gap_03_00000E4A_rodata, global
.hidden gap_03_00000E4A_rodata
	.2byte 0x0000
.endobj gap_03_00000E4A_rodata

# .rodata:0x21C | 0xE4C | size: 0xE
.obj str_irai_27_001_1_pik_00002314, local
	.string "irai_27_001_1"
.endobj str_irai_27_001_1_pik_00002314

# .rodata:0x22A | 0xE5A | size: 0x2
.obj gap_03_00000E5A_rodata, global
.hidden gap_03_00000E5A_rodata
	.2byte 0x0000
.endobj gap_03_00000E5A_rodata

# .rodata:0x22C | 0xE5C | size: 0xC
.obj str_irai_27_002_pik_00002324, local
	.string "irai_27_002"
.endobj str_irai_27_002_pik_00002324

# .rodata:0x238 | 0xE68 | size: 0x7
.obj str_土産屋_pik_00002330, local
	.4byte 0x93798E59
	.byte 0x89, 0xAE, 0x00
.endobj str_土産屋_pik_00002330

# .rodata:0x23F | 0xE6F | size: 0x1
.obj gap_03_00000E6F_rodata, global
.hidden gap_03_00000E6F_rodata
	.byte 0x00
.endobj gap_03_00000E6F_rodata

# .rodata:0x240 | 0xE70 | size: 0xC
.obj str_irai_27_003_pik_00002338, local
	.string "irai_27_003"
.endobj str_irai_27_003_pik_00002338

# .rodata:0x24C | 0xE7C | size: 0x6
.obj str_M_I_2_pik_00002344, local
	.string "M_I_2"
.endobj str_M_I_2_pik_00002344

# .rodata:0x252 | 0xE82 | size: 0x2
.obj gap_03_00000E82_rodata, global
.hidden gap_03_00000E82_rodata
	.2byte 0x0000
.endobj gap_03_00000E82_rodata

# .rodata:0x254 | 0xE84 | size: 0xC
.obj str_irai_27_004_pik_0000234c, local
	.string "irai_27_004"
.endobj str_irai_27_004_pik_0000234c

# .rodata:0x260 | 0xE90 | size: 0x6
.obj str_M_I_Z_pik_00002358, local
	.string "M_I_Z"
.endobj str_M_I_Z_pik_00002358

# .rodata:0x266 | 0xE96 | size: 0x2
.obj gap_03_00000E96_rodata, global
.hidden gap_03_00000E96_rodata
	.2byte 0x0000
.endobj gap_03_00000E96_rodata

# .rodata:0x268 | 0xE98 | size: 0xC
.obj str_irai_27_005_pik_00002360, local
	.string "irai_27_005"
.endobj str_irai_27_005_pik_00002360

# .rodata:0x274 | 0xEA4 | size: 0xC
.obj str_irai_27_006_pik_0000236c, local
	.string "irai_27_006"
.endobj str_irai_27_006_pik_0000236c

# .rodata:0x280 | 0xEB0 | size: 0x3
.obj str_sc_pik_00002378, local
	.string "sc"
.endobj str_sc_pik_00002378

# .rodata:0x283 | 0xEB3 | size: 0x1
.obj gap_03_00000EB3_rodata, global
.hidden gap_03_00000EB3_rodata
	.byte 0x00
.endobj gap_03_00000EB3_rodata

# .rodata:0x284 | 0xEB4 | size: 0xE
.obj str_irai_27_007_1_pik_0000237c, local
	.string "irai_27_007_1"
.endobj str_irai_27_007_1_pik_0000237c

# .rodata:0x292 | 0xEC2 | size: 0x2
.obj gap_03_00000EC2_rodata, global
.hidden gap_03_00000EC2_rodata
	.2byte 0x0000
.endobj gap_03_00000EC2_rodata

# .rodata:0x294 | 0xEC4 | size: 0x7
.obj str_iri_27_pik_0000238c, local
	.string "iri_27"
.endobj str_iri_27_pik_0000238c

# .rodata:0x29B | 0xECB | size: 0x1
.obj gap_03_00000ECB_rodata, global
.hidden gap_03_00000ECB_rodata
	.byte 0x00
.endobj gap_03_00000ECB_rodata

# .rodata:0x29C | 0xECC | size: 0xE
.obj str_irai_27_007_2_pik_00002394, local
	.string "irai_27_007_2"
.endobj str_irai_27_007_2_pik_00002394

# .rodata:0x2AA | 0xEDA | size: 0x2
.obj gap_03_00000EDA_rodata, global
.hidden gap_03_00000EDA_rodata
	.2byte 0x0000
.endobj gap_03_00000EDA_rodata

# .rodata:0x2AC | 0xEDC | size: 0x9
.obj str_ルイージ_pik_000023a4, local
	.4byte 0x838B8343
	.4byte 0x815B8357
	.byte 0x00
.endobj str_ルイージ_pik_000023a4

# .rodata:0x2B5 | 0xEE5 | size: 0x3
.obj gap_03_00000EE5_rodata, global
.hidden gap_03_00000EE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000EE5_rodata

# .rodata:0x2B8 | 0xEE8 | size: 0xC
.obj str_irai_27_008_pik_000023b0, local
	.string "irai_27_008"
.endobj str_irai_27_008_pik_000023b0

# .rodata:0x2C4 | 0xEF4 | size: 0x1
.obj zero_pik_000023bc, local
	.byte 0x00
.endobj zero_pik_000023bc

# .rodata:0x2C5 | 0xEF5 | size: 0x3
.obj gap_03_00000EF5_rodata, global
.hidden gap_03_00000EF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000EF5_rodata

# .rodata:0x2C8 | 0xEF8 | size: 0xC
.obj str_irai_27_009_pik_000023c0, local
	.string "irai_27_009"
.endobj str_irai_27_009_pik_000023c0

# .rodata:0x2D4 | 0xF04 | size: 0xC
.obj str_irai_27_010_pik_000023cc, local
	.string "irai_27_010"
.endobj str_irai_27_010_pik_000023cc

# .rodata:0x2E0 | 0xF10 | size: 0x6
.obj str_M_N_1_pik_000023d8, local
	.string "M_N_1"
.endobj str_M_N_1_pik_000023d8

# .rodata:0x2E6 | 0xF16 | size: 0x2
.obj gap_03_00000F16_rodata, global
.hidden gap_03_00000F16_rodata
	.2byte 0x0000
.endobj gap_03_00000F16_rodata

# .rodata:0x2E8 | 0xF18 | size: 0xC
.obj str_irai_27_011_pik_000023e0, local
	.string "irai_27_011"
.endobj str_irai_27_011_pik_000023e0

# .rodata:0x2F4 | 0xF24 | size: 0xC
.obj str_irai_27_012_pik_000023ec, local
	.string "irai_27_012"
.endobj str_irai_27_012_pik_000023ec

# .rodata:0x300 | 0xF30 | size: 0xC
.obj str_irai_27_013_pik_000023f8, local
	.string "irai_27_013"
.endobj str_irai_27_013_pik_000023f8

# .rodata:0x30C | 0xF3C | size: 0xC
.obj str_irai_27_014_pik_00002404, local
	.string "irai_27_014"
.endobj str_irai_27_014_pik_00002404

# .rodata:0x318 | 0xF48 | size: 0x13
.obj str_sys_request_finish_pik_00002410, local
	.string "sys_request_finish"
.endobj str_sys_request_finish_pik_00002410

# .rodata:0x32B | 0xF5B | size: 0x1
.obj gap_03_00000F5B_rodata, global
.hidden gap_03_00000F5B_rodata
	.byte 0x00
.endobj gap_03_00000F5B_rodata

# .rodata:0x32C | 0xF5C | size: 0x12
.obj str_stg7_pik_clear_02_pik_00002424, local
	.string "stg7_pik_clear_02"
.endobj str_stg7_pik_clear_02_pik_00002424

# .rodata:0x33E | 0xF6E | size: 0x2
.obj gap_03_00000F6E_rodata, global
.hidden gap_03_00000F6E_rodata
	.2byte 0x0000
.endobj gap_03_00000F6E_rodata

# .rodata:0x340 | 0xF70 | size: 0x8
.obj str_KNF_S_2_pik_00002438, local
	.string "KNF_S_2"
.endobj str_KNF_S_2_pik_00002438

# .rodata:0x348 | 0xF78 | size: 0x8
.obj str_KNF_S_1_pik_00002440, local
	.string "KNF_S_1"
.endobj str_KNF_S_1_pik_00002440

# .rodata:0x350 | 0xF80 | size: 0x8
.obj str_KNF_T_2_pik_00002448, local
	.string "KNF_T_2"
.endobj str_KNF_T_2_pik_00002448

# .rodata:0x358 | 0xF88 | size: 0xD
.obj str_kpa_stg7_004_pik_00002450, local
	.string "kpa_stg7_004"
.endobj str_kpa_stg7_004_pik_00002450

# .rodata:0x365 | 0xF95 | size: 0x3
.obj gap_03_00000F95_rodata, global
.hidden gap_03_00000F95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000F95_rodata

# .rodata:0x368 | 0xF98 | size: 0xF
.obj str_kpa_stg7_004_1_pik_00002460, local
	.string "kpa_stg7_004_1"
.endobj str_kpa_stg7_004_1_pik_00002460

# .rodata:0x377 | 0xFA7 | size: 0x1
.obj gap_03_00000FA7_rodata, global
.hidden gap_03_00000FA7_rodata
	.byte 0x00
.endobj gap_03_00000FA7_rodata

# .rodata:0x378 | 0xFA8 | size: 0x12
.obj str_stg7_pik_clear_03_pik_00002470, local
	.string "stg7_pik_clear_03"
.endobj str_stg7_pik_clear_03_pik_00002470

# .rodata:0x38A | 0xFBA | size: 0x2
.obj gap_03_00000FBA_rodata, global
.hidden gap_03_00000FBA_rodata
	.2byte 0x0000
.endobj gap_03_00000FBA_rodata

# .rodata:0x38C | 0xFBC | size: 0x14
.obj str_stg7_pik_clear_03_0_pik_00002484, local
	.string "stg7_pik_clear_03_0"
.endobj str_stg7_pik_clear_03_0_pik_00002484

# .rodata:0x3A0 | 0xFD0 | size: 0x14
.obj str_stg7_pik_clear_03_1_pik_00002498, local
	.string "stg7_pik_clear_03_1"
.endobj str_stg7_pik_clear_03_1_pik_00002498

# .rodata:0x3B4 | 0xFE4 | size: 0x14
.obj str_stg7_pik_clear_03_2_pik_000024ac, local
	.string "stg7_pik_clear_03_2"
.endobj str_stg7_pik_clear_03_2_pik_000024ac

# .rodata:0x3C8 | 0xFF8 | size: 0xB
.obj str_irai_29_00_pik_000024c0, local
	.string "irai_29_00"
.endobj str_irai_29_00_pik_000024c0

# .rodata:0x3D3 | 0x1003 | size: 0x1
.obj gap_03_00001003_rodata, global
.hidden gap_03_00001003_rodata
	.byte 0x00
.endobj gap_03_00001003_rodata

# .rodata:0x3D4 | 0x1004 | size: 0xD
.obj str_irai_29_00_s_pik_000024cc, local
	.string "irai_29_00_s"
.endobj str_irai_29_00_s_pik_000024cc

# .rodata:0x3E1 | 0x1011 | size: 0x3
.obj gap_03_00001011_rodata, global
.hidden gap_03_00001011_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001011_rodata

# .rodata:0x3E4 | 0x1014 | size: 0xB
.obj str_irai_29_01_pik_000024dc, local
	.string "irai_29_01"
.endobj str_irai_29_01_pik_000024dc

# .rodata:0x3EF | 0x101F | size: 0x1
.obj gap_03_0000101F_rodata, global
.hidden gap_03_0000101F_rodata
	.byte 0x00
.endobj gap_03_0000101F_rodata

# .rodata:0x3F0 | 0x1020 | size: 0xB
.obj str_irai_29_11_pik_000024e8, local
	.string "irai_29_11"
.endobj str_irai_29_11_pik_000024e8

# .rodata:0x3FB | 0x102B | size: 0x1
.obj gap_03_0000102B_rodata, global
.hidden gap_03_0000102B_rodata
	.byte 0x00
.endobj gap_03_0000102B_rodata

# .rodata:0x3FC | 0x102C | size: 0xB
.obj str_irai_29_05_pik_000024f4, local
	.string "irai_29_05"
.endobj str_irai_29_05_pik_000024f4

# .rodata:0x407 | 0x1037 | size: 0x1
.obj gap_03_00001037_rodata, global
.hidden gap_03_00001037_rodata
	.byte 0x00
.endobj gap_03_00001037_rodata

# .rodata:0x408 | 0x1038 | size: 0xB
.obj str_irai_29_08_pik_00002500, local
	.string "irai_29_08"
.endobj str_irai_29_08_pik_00002500

# .rodata:0x413 | 0x1043 | size: 0x1
.obj gap_03_00001043_rodata, global
.hidden gap_03_00001043_rodata
	.byte 0x00
.endobj gap_03_00001043_rodata

# .rodata:0x414 | 0x1044 | size: 0x4
.obj str_pre_pik_0000250c, local
	.string "pre"
.endobj str_pre_pik_0000250c

# .rodata:0x418 | 0x1048 | size: 0xB
.obj str_irai_29_02_pik_00002510, local
	.string "irai_29_02"
.endobj str_irai_29_02_pik_00002510

# .rodata:0x423 | 0x1053 | size: 0x1
.obj gap_03_00001053_rodata, global
.hidden gap_03_00001053_rodata
	.byte 0x00
.endobj gap_03_00001053_rodata

# .rodata:0x424 | 0x1054 | size: 0xB
.obj str_irai_29_06_pik_0000251c, local
	.string "irai_29_06"
.endobj str_irai_29_06_pik_0000251c

# .rodata:0x42F | 0x105F | size: 0x1
.obj gap_03_0000105F_rodata, global
.hidden gap_03_0000105F_rodata
	.byte 0x00
.endobj gap_03_0000105F_rodata

# .rodata:0x430 | 0x1060 | size: 0xB
.obj str_irai_29_09_pik_00002528, local
	.string "irai_29_09"
.endobj str_irai_29_09_pik_00002528

# .rodata:0x43B | 0x106B | size: 0x1
.obj gap_03_0000106B_rodata, global
.hidden gap_03_0000106B_rodata
	.byte 0x00
.endobj gap_03_0000106B_rodata

# .rodata:0x43C | 0x106C | size: 0xB
.obj str_irai_29_03_pik_00002534, local
	.string "irai_29_03"
.endobj str_irai_29_03_pik_00002534

# .rodata:0x447 | 0x1077 | size: 0x1
.obj gap_03_00001077_rodata, global
.hidden gap_03_00001077_rodata
	.byte 0x00
.endobj gap_03_00001077_rodata

# .rodata:0x448 | 0x1078 | size: 0xB
.obj str_irai_29_07_pik_00002540, local
	.string "irai_29_07"
.endobj str_irai_29_07_pik_00002540

# .rodata:0x453 | 0x1083 | size: 0x1
.obj gap_03_00001083_rodata, global
.hidden gap_03_00001083_rodata
	.byte 0x00
.endobj gap_03_00001083_rodata

# .rodata:0x454 | 0x1084 | size: 0xB
.obj str_irai_29_10_pik_0000254c, local
	.string "irai_29_10"
.endobj str_irai_29_10_pik_0000254c

# .rodata:0x45F | 0x108F | size: 0x1
.obj gap_03_0000108F_rodata, global
.hidden gap_03_0000108F_rodata
	.byte 0x00
.endobj gap_03_0000108F_rodata

# .rodata:0x460 | 0x1090 | size: 0xB
.obj str_irai_29_04_pik_00002558, local
	.string "irai_29_04"
.endobj str_irai_29_04_pik_00002558

# .rodata:0x46B | 0x109B | size: 0x1
.obj gap_03_0000109B_rodata, global
.hidden gap_03_0000109B_rodata
	.byte 0x00
.endobj gap_03_0000109B_rodata

# .rodata:0x46C | 0x109C | size: 0xB
.obj str_irai_29_12_pik_00002564, local
	.string "irai_29_12"
.endobj str_irai_29_12_pik_00002564

# .rodata:0x477 | 0x10A7 | size: 0x1
.obj gap_03_000010A7_rodata, global
.hidden gap_03_000010A7_rodata
	.byte 0x00
.endobj gap_03_000010A7_rodata

# .rodata:0x478 | 0x10A8 | size: 0x6
.obj str_M_N_2_pik_00002570, local
	.string "M_N_2"
.endobj str_M_N_2_pik_00002570

# .rodata:0x47E | 0x10AE | size: 0x2
.obj gap_03_000010AE_rodata, global
.hidden gap_03_000010AE_rodata
	.2byte 0x0000
.endobj gap_03_000010AE_rodata

# .rodata:0x480 | 0x10B0 | size: 0xB
.obj str_irai_29_13_pik_00002578, local
	.string "irai_29_13"
.endobj str_irai_29_13_pik_00002578

# .rodata:0x48B | 0x10BB | size: 0x1
.obj gap_03_000010BB_rodata, global
.hidden gap_03_000010BB_rodata
	.byte 0x00
.endobj gap_03_000010BB_rodata

# .rodata:0x48C | 0x10BC | size: 0xB
.obj str_コナリキン_pik_00002584, local
	.4byte 0x83528369
	.4byte 0x838A834C
	.byte 0x83, 0x93, 0x00
.endobj str_コナリキン_pik_00002584

# .rodata:0x497 | 0x10C7 | size: 0x1
.obj gap_03_000010C7_rodata, global
.hidden gap_03_000010C7_rodata
	.byte 0x00
.endobj gap_03_000010C7_rodata

# .rodata:0x498 | 0x10C8 | size: 0xD
.obj str_kpa_stg7_005_pik_00002590, local
	.string "kpa_stg7_005"
.endobj str_kpa_stg7_005_pik_00002590

# .rodata:0x4A5 | 0x10D5 | size: 0x3
.obj gap_03_000010D5_rodata, global
.hidden gap_03_000010D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000010D5_rodata

# .rodata:0x4A8 | 0x10D8 | size: 0xF
.obj str_kpa_stg7_005_1_pik_000025a0, local
	.string "kpa_stg7_005_1"
.endobj str_kpa_stg7_005_1_pik_000025a0

# .rodata:0x4B7 | 0x10E7 | size: 0x1
.obj gap_03_000010E7_rodata, global
.hidden gap_03_000010E7_rodata
	.byte 0x00
.endobj gap_03_000010E7_rodata

# .rodata:0x4B8 | 0x10E8 | size: 0x8
.obj str_KPA_S_1_pik_000025b0, local
	.string "KPA_S_1"
.endobj str_KPA_S_1_pik_000025b0

# .rodata:0x4C0 | 0x10F0 | size: 0x8
.obj str_KPA_T_1_pik_000025b8, local
	.string "KPA_T_1"
.endobj str_KPA_T_1_pik_000025b8

# .rodata:0x4C8 | 0x10F8 | size: 0xD
.obj str_kpa_stg7_006_pik_000025c0, local
	.string "kpa_stg7_006"
.endobj str_kpa_stg7_006_pik_000025c0

# .rodata:0x4D5 | 0x1105 | size: 0x3
.obj gap_03_00001105_rodata, global
.hidden gap_03_00001105_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001105_rodata

# .rodata:0x4D8 | 0x1108 | size: 0x4
.obj str_C_1_pik_000025d0, local
	.string "C_1"
.endobj str_C_1_pik_000025d0

# .rodata:0x4DC | 0x110C | size: 0x4
.obj str_T_4_pik_000025d4, local
	.string "T_4"
.endobj str_T_4_pik_000025d4

# .rodata:0x4E0 | 0x1110 | size: 0xD
.obj str_kpa_stg7_007_pik_000025d8, local
	.string "kpa_stg7_007"
.endobj str_kpa_stg7_007_pik_000025d8

# .rodata:0x4ED | 0x111D | size: 0x3
.obj gap_03_0000111D_rodata, global
.hidden gap_03_0000111D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000111D_rodata

# .rodata:0x4F0 | 0x1120 | size: 0x4
.obj str_R_2_pik_000025e8, local
	.string "R_2"
.endobj str_R_2_pik_000025e8

# .rodata:0x4F4 | 0x1124 | size: 0x1C
.obj str_SFX_KUPPA_KONARIKIN__pik_000025ec, local
	.string "SFX_KUPPA_KONARIKIN_ESCAPE1"
.endobj str_SFX_KUPPA_KONARIKIN__pik_000025ec

# .rodata:0x510 | 0x1140 | size: 0xD
.obj str_kpa_stg7_008_pik_00002608, local
	.string "kpa_stg7_008"
.endobj str_kpa_stg7_008_pik_00002608

# .rodata:0x51D | 0x114D | size: 0x3
.obj gap_03_0000114D_rodata, global
.hidden gap_03_0000114D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000114D_rodata

# .rodata:0x520 | 0x1150 | size: 0xD
.obj str_kpa_stg7_009_pik_00002618, local
	.string "kpa_stg7_009"
.endobj str_kpa_stg7_009_pik_00002618

# .rodata:0x52D | 0x115D | size: 0x3
.obj gap_03_0000115D_rodata, global
.hidden gap_03_0000115D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000115D_rodata

# .rodata:0x530 | 0x1160 | size: 0xD
.obj str_kpa_stg7_010_pik_00002628, local
	.string "kpa_stg7_010"
.endobj str_kpa_stg7_010_pik_00002628

# .rodata:0x53D | 0x116D | size: 0x3
.obj gap_03_0000116D_rodata, global
.hidden gap_03_0000116D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000116D_rodata

# .rodata:0x540 | 0x1170 | size: 0xD
.obj str_kpa_stg7_011_pik_00002638, local
	.string "kpa_stg7_011"
.endobj str_kpa_stg7_011_pik_00002638

# .rodata:0x54D | 0x117D | size: 0x3
.obj gap_03_0000117D_rodata, global
.hidden gap_03_0000117D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000117D_rodata

# .rodata:0x550 | 0x1180 | size: 0xF
.obj str_kpa_stg7_011_3_pik_00002648, local
	.string "kpa_stg7_011_3"
.endobj str_kpa_stg7_011_3_pik_00002648

# .rodata:0x55F | 0x118F | size: 0x1
.obj gap_03_0000118F_rodata, global
.hidden gap_03_0000118F_rodata
	.byte 0x00
.endobj gap_03_0000118F_rodata

# .rodata:0x560 | 0x1190 | size: 0xD
.obj str_ナリキンパパ_pik_00002658, local
	.4byte 0x8369838A
	.4byte 0x834C8393
	.4byte 0x83708370
	.byte 0x00
.endobj str_ナリキンパパ_pik_00002658

# .rodata:0x56D | 0x119D | size: 0x3
.obj gap_03_0000119D_rodata, global
.hidden gap_03_0000119D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000119D_rodata

# .rodata:0x570 | 0x11A0 | size: 0xF
.obj str_kpa_stg7_011_4_pik_00002668, local
	.string "kpa_stg7_011_4"
.endobj str_kpa_stg7_011_4_pik_00002668

# .rodata:0x57F | 0x11AF | size: 0x1
.obj gap_03_000011AF_rodata, global
.hidden gap_03_000011AF_rodata
	.byte 0x00
.endobj gap_03_000011AF_rodata

# .rodata:0x580 | 0x11B0 | size: 0xD
.obj str_ナリキンママ_pik_00002678, local
	.4byte 0x8369838A
	.4byte 0x834C8393
	.4byte 0x837D837D
	.byte 0x00
.endobj str_ナリキンママ_pik_00002678

# .rodata:0x58D | 0x11BD | size: 0x3
.obj gap_03_000011BD_rodata, global
.hidden gap_03_000011BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000011BD_rodata

# .rodata:0x590 | 0x11C0 | size: 0xF
.obj str_kpa_stg7_011_5_pik_00002688, local
	.string "kpa_stg7_011_5"
.endobj str_kpa_stg7_011_5_pik_00002688

# .rodata:0x59F | 0x11CF | size: 0x1
.obj gap_03_000011CF_rodata, global
.hidden gap_03_000011CF_rodata
	.byte 0x00
.endobj gap_03_000011CF_rodata

# .rodata:0x5A0 | 0x11D0 | size: 0xF
.obj str_kpa_stg7_011_6_pik_00002698, local
	.string "kpa_stg7_011_6"
.endobj str_kpa_stg7_011_6_pik_00002698

# .rodata:0x5AF | 0x11DF | size: 0x1
.obj gap_03_000011DF_rodata, global
.hidden gap_03_000011DF_rodata
	.byte 0x00
.endobj gap_03_000011DF_rodata

# .rodata:0x5B0 | 0x11E0 | size: 0xF
.obj str_kpa_stg7_011_7_pik_000026a8, local
	.string "kpa_stg7_011_7"
.endobj str_kpa_stg7_011_7_pik_000026a8

# .rodata:0x5BF | 0x11EF | size: 0x1
.obj gap_03_000011EF_rodata, global
.hidden gap_03_000011EF_rodata
	.byte 0x00
.endobj gap_03_000011EF_rodata

# .rodata:0x5C0 | 0x11F0 | size: 0xF
.obj str_kpa_stg7_011_1_pik_000026b8, local
	.string "kpa_stg7_011_1"
.endobj str_kpa_stg7_011_1_pik_000026b8

# .rodata:0x5CF | 0x11FF | size: 0x1
.obj gap_03_000011FF_rodata, global
.hidden gap_03_000011FF_rodata
	.byte 0x00
.endobj gap_03_000011FF_rodata

# .rodata:0x5D0 | 0x1200 | size: 0xF
.obj str_kpa_stg7_011_2_pik_000026c8, local
	.string "kpa_stg7_011_2"
.endobj str_kpa_stg7_011_2_pik_000026c8

# .rodata:0x5DF | 0x120F | size: 0x1
.obj gap_03_0000120F_rodata, global
.hidden gap_03_0000120F_rodata
	.byte 0x00
.endobj gap_03_0000120F_rodata

# .rodata:0x5E0 | 0x1210 | size: 0xF
.obj str_kpa_stg7_003_1_pik_000026d8, local
	.string "kpa_stg7_003_1"
.endobj str_kpa_stg7_003_1_pik_000026d8

# .rodata:0x5EF | 0x121F | size: 0x1
.obj gap_03_0000121F_rodata, global
.hidden gap_03_0000121F_rodata
	.byte 0x00
.endobj gap_03_0000121F_rodata

# .rodata:0x5F0 | 0x1220 | size: 0xB
.obj str_ターくん４_pik_000026e8, local
	.4byte 0x835E815B
	.4byte 0x82AD82F1
	.byte 0x82, 0x53, 0x00
.endobj str_ターくん４_pik_000026e8

# .rodata:0x5FB | 0x122B | size: 0x1
.obj gap_03_0000122B_rodata, global
.hidden gap_03_0000122B_rodata
	.byte 0x00
.endobj gap_03_0000122B_rodata

# .rodata:0x5FC | 0x122C | size: 0x12
.obj str_stg7_pik_clear_04_pik_000026f4, local
	.string "stg7_pik_clear_04"
.endobj str_stg7_pik_clear_04_pik_000026f4

# .rodata:0x60E | 0x123E | size: 0x2
.obj gap_03_0000123E_rodata, global
.hidden gap_03_0000123E_rodata
	.2byte 0x0000
.endobj gap_03_0000123E_rodata

# .rodata:0x610 | 0x1240 | size: 0x11
.obj str_kpa_stg7_011_7_1_pik_00002708, local
	.string "kpa_stg7_011_7_1"
.endobj str_kpa_stg7_011_7_1_pik_00002708

# .rodata:0x621 | 0x1251 | size: 0x3
.obj gap_03_00001251_rodata, global
.hidden gap_03_00001251_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001251_rodata

# .rodata:0x624 | 0x1254 | size: 0x12
.obj str_stg7_pik_clear_05_pik_0000271c, local
	.string "stg7_pik_clear_05"
.endobj str_stg7_pik_clear_05_pik_0000271c

# .rodata:0x636 | 0x1266 | size: 0x2
.obj gap_03_00001266_rodata, global
.hidden gap_03_00001266_rodata
	.2byte 0x0000
.endobj gap_03_00001266_rodata

# .rodata:0x638 | 0x1268 | size: 0x14
.obj str_stg7_pik_clear_05_1_pik_00002730, local
	.string "stg7_pik_clear_05_1"
.endobj str_stg7_pik_clear_05_1_pik_00002730

# .rodata:0x64C | 0x127C | size: 0xB
.obj str_ターくん５_pik_00002744, local
	.4byte 0x835E815B
	.4byte 0x82AD82F1
	.byte 0x82, 0x54, 0x00
.endobj str_ターくん５_pik_00002744

# .rodata:0x657 | 0x1287 | size: 0x1
.obj gap_03_00001287_rodata, global
.hidden gap_03_00001287_rodata
	.byte 0x00
.endobj gap_03_00001287_rodata

# .rodata:0x658 | 0x1288 | size: 0x12
.obj str_stg7_pik_clear_06_pik_00002750, local
	.string "stg7_pik_clear_06"
.endobj str_stg7_pik_clear_06_pik_00002750

# .rodata:0x66A | 0x129A | size: 0x2
.obj gap_03_0000129A_rodata, global
.hidden gap_03_0000129A_rodata
	.2byte 0x0000
.endobj gap_03_0000129A_rodata

# .rodata:0x66C | 0x129C | size: 0x12
.obj str_stg7_pik_clear_07_pik_00002764, local
	.string "stg7_pik_clear_07"
.endobj str_stg7_pik_clear_07_pik_00002764

# .rodata:0x67E | 0x12AE | size: 0x2
.obj gap_03_000012AE_rodata, global
.hidden gap_03_000012AE_rodata
	.2byte 0x0000
.endobj gap_03_000012AE_rodata

# .rodata:0x680 | 0x12B0 | size: 0x14
.obj str_stg7_pik_clear_07_1_pik_00002778, local
	.string "stg7_pik_clear_07_1"
.endobj str_stg7_pik_clear_07_1_pik_00002778

# .rodata:0x694 | 0x12C4 | size: 0xB
.obj str_ターくん６_pik_0000278c, local
	.4byte 0x835E815B
	.4byte 0x82AD82F1
	.byte 0x82, 0x55, 0x00
.endobj str_ターくん６_pik_0000278c

# .rodata:0x69F | 0x12CF | size: 0x1
.obj gap_03_000012CF_rodata, global
.hidden gap_03_000012CF_rodata
	.byte 0x00
.endobj gap_03_000012CF_rodata

# .rodata:0x6A0 | 0x12D0 | size: 0x12
.obj str_stg7_pik_clear_08_pik_00002798, local
	.string "stg7_pik_clear_08"
.endobj str_stg7_pik_clear_08_pik_00002798

# .rodata:0x6B2 | 0x12E2 | size: 0x2
.obj gap_03_000012E2_rodata, global
.hidden gap_03_000012E2_rodata
	.2byte 0x0000
.endobj gap_03_000012E2_rodata

# .rodata:0x6B4 | 0x12E4 | size: 0x12
.obj str_stg7_pik_clear_09_pik_000027ac, local
	.string "stg7_pik_clear_09"
.endobj str_stg7_pik_clear_09_pik_000027ac

# .rodata:0x6C6 | 0x12F6 | size: 0x2
.obj gap_03_000012F6_rodata, global
.hidden gap_03_000012F6_rodata
	.2byte 0x0000
.endobj gap_03_000012F6_rodata

# .rodata:0x6C8 | 0x12F8 | size: 0x14
.obj str_stg7_pik_clear_09_1_pik_000027c0, local
	.string "stg7_pik_clear_09_1"
.endobj str_stg7_pik_clear_09_1_pik_000027c0

# .rodata:0x6DC | 0x130C | size: 0x7
.obj str_マダム_pik_000027d4, local
	.4byte 0x837D835F
	.byte 0x83, 0x80, 0x00
.endobj str_マダム_pik_000027d4

# .rodata:0x6E3 | 0x1313 | size: 0x1
.obj gap_03_00001313_rodata, global
.hidden gap_03_00001313_rodata
	.byte 0x00
.endobj gap_03_00001313_rodata

# .rodata:0x6E4 | 0x1314 | size: 0x5
.obj str_ババ_pik_000027dc, local
	.4byte 0x836F836F
	.byte 0x00
.endobj str_ババ_pik_000027dc

# .rodata:0x6E9 | 0x1319 | size: 0x3
.obj gap_03_00001319_rodata, global
.hidden gap_03_00001319_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001319_rodata

# .rodata:0x6EC | 0x131C | size: 0x17
.obj str_stg7_pik_clear_03_2__pik_000027e4, local
	.string "stg7_pik_clear_03_2_01"
.endobj str_stg7_pik_clear_03_2__pik_000027e4

# .rodata:0x703 | 0x1333 | size: 0x1
.obj gap_03_00001333_rodata, global
.hidden gap_03_00001333_rodata
	.byte 0x00
.endobj gap_03_00001333_rodata

# .rodata:0x704 | 0x1334 | size: 0x9
.obj str_レサレサ_pik_000027fc, local
	.4byte 0x838C8354
	.4byte 0x838C8354
	.byte 0x00
.endobj str_レサレサ_pik_000027fc

# .rodata:0x70D | 0x133D | size: 0x3
.obj gap_03_0000133D_rodata, global
.hidden gap_03_0000133D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000133D_rodata

# .rodata:0x710 | 0x1340 | size: 0xB
.obj str_c_resaresa_pik_00002808, local
	.string "c_resaresa"
.endobj str_c_resaresa_pik_00002808

# .rodata:0x71B | 0x134B | size: 0x1
.obj gap_03_0000134B_rodata, global
.hidden gap_03_0000134B_rodata
	.byte 0x00
.endobj gap_03_0000134B_rodata

# .rodata:0x71C | 0x134C | size: 0x17
.obj str_stg7_pik_clear_03_2__pik_00002814, local
	.string "stg7_pik_clear_03_2_02"
.endobj str_stg7_pik_clear_03_2__pik_00002814

# .rodata:0x733 | 0x1363 | size: 0x1
.obj gap_03_00001363_rodata, global
.hidden gap_03_00001363_rodata
	.byte 0x00
.endobj gap_03_00001363_rodata

# .rodata:0x734 | 0x1364 | size: 0xD
.obj str_セバスチャン_pik_0000282c, local
	.4byte 0x835A836F
	.4byte 0x83588360
	.4byte 0x83838393
	.byte 0x00
.endobj str_セバスチャン_pik_0000282c

# .rodata:0x741 | 0x1371 | size: 0x3
.obj gap_03_00001371_rodata, global
.hidden gap_03_00001371_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001371_rodata

# .rodata:0x744 | 0x1374 | size: 0xC
.obj str_c_sebaschan_pik_0000283c, local
	.string "c_sebaschan"
.endobj str_c_sebaschan_pik_0000283c

# .rodata:0x750 | 0x1380 | size: 0xD
.obj str_kpa_stg7_012_pik_00002848, local
	.string "kpa_stg7_012"
.endobj str_kpa_stg7_012_pik_00002848

# .rodata:0x75D | 0x138D | size: 0x3
.obj gap_03_0000138D_rodata, global
.hidden gap_03_0000138D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000138D_rodata

# .rodata:0x760 | 0x1390 | size: 0x8
.obj str_KPA_I_2_pik_00002858, local
	.string "KPA_I_2"
.endobj str_KPA_I_2_pik_00002858

# .rodata:0x768 | 0x1398 | size: 0x11
.obj str_SFX_KUPPA_ANGRY1_pik_00002860, local
	.string "SFX_KUPPA_ANGRY1"
.endobj str_SFX_KUPPA_ANGRY1_pik_00002860

# .rodata:0x779 | 0x13A9 | size: 0x3
.obj gap_03_000013A9_rodata, global
.hidden gap_03_000013A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013A9_rodata

# .rodata:0x77C | 0x13AC | size: 0x11
.obj str_SFX_KUPPA_ANGRY2_pik_00002874, local
	.string "SFX_KUPPA_ANGRY2"
.endobj str_SFX_KUPPA_ANGRY2_pik_00002874

# .rodata:0x78D | 0x13BD | size: 0x3
.obj gap_03_000013BD_rodata, global
.hidden gap_03_000013BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013BD_rodata

# .rodata:0x790 | 0x13C0 | size: 0x10
.obj str_kpa_stg7_012_01_pik_00002888, local
	.string "kpa_stg7_012_01"
.endobj str_kpa_stg7_012_01_pik_00002888

# .rodata:0x7A0 | 0x13D0 | size: 0x10
.obj str_kpa_stg7_012_02_pik_00002898, local
	.string "kpa_stg7_012_02"
.endobj str_kpa_stg7_012_02_pik_00002898

# .rodata:0x7B0 | 0x13E0 | size: 0x8
.obj str_KPA_S_6_pik_000028a8, local
	.string "KPA_S_6"
.endobj str_KPA_S_6_pik_000028a8

# .rodata:0x7B8 | 0x13E8 | size: 0x8
.obj str_KPA_T_6_pik_000028b0, local
	.string "KPA_T_6"
.endobj str_KPA_T_6_pik_000028b0

# .rodata:0x7C0 | 0x13F0 | size: 0xD
.obj str_kpa_stg7_013_pik_000028b8, local
	.string "kpa_stg7_013"
.endobj str_kpa_stg7_013_pik_000028b8

# .rodata:0x7CD | 0x13FD | size: 0x3
.obj gap_03_000013FD_rodata, global
.hidden gap_03_000013FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013FD_rodata

# .rodata:0x7D0 | 0x1400 | size: 0x18
.obj str_SFX_KUPPA_KAMEBABA_F_pik_000028c8, local
	.string "SFX_KUPPA_KAMEBABA_FLY1"
.endobj str_SFX_KUPPA_KAMEBABA_F_pik_000028c8

# .rodata:0x7E8 | 0x1418 | size: 0xD
.obj str_kpa_stg7_000_pik_000028e0, local
	.string "kpa_stg7_000"
.endobj str_kpa_stg7_000_pik_000028e0

# .rodata:0x7F5 | 0x1425 | size: 0x3
.obj gap_03_00001425_rodata, global
.hidden gap_03_00001425_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001425_rodata

# .rodata:0x7F8 | 0x1428 | size: 0xD
.obj str_kpa_stg7_001_pik_000028f0, local
	.string "kpa_stg7_001"
.endobj str_kpa_stg7_001_pik_000028f0

# .rodata:0x805 | 0x1435 | size: 0x3
.obj gap_03_00001435_rodata, global
.hidden gap_03_00001435_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001435_rodata

# .rodata:0x808 | 0x1438 | size: 0x5
.obj str_A_3A_pik_00002900, local
	.string "A_3A"
.endobj str_A_3A_pik_00002900

# .rodata:0x80D | 0x143D | size: 0x3
.obj gap_03_0000143D_rodata, global
.hidden gap_03_0000143D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000143D_rodata

# .rodata:0x810 | 0x1440 | size: 0x4
.obj str_S_2_pik_00002908, local
	.string "S_2"
.endobj str_S_2_pik_00002908

# .rodata:0x814 | 0x1444 | size: 0xD
.obj str_kpa_stg7_002_pik_0000290c, local
	.string "kpa_stg7_002"
.endobj str_kpa_stg7_002_pik_0000290c

# .rodata:0x821 | 0x1451 | size: 0x3
.obj gap_03_00001451_rodata, global
.hidden gap_03_00001451_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001451_rodata

# .rodata:0x824 | 0x1454 | size: 0xC
.obj vec3_pik_0000291c, local
	.4byte 0x00000000
	.4byte 0x42C80000
	.4byte 0x00000000
.endobj vec3_pik_0000291c

# .rodata:0x830 | 0x1460 | size: 0xC
.obj vec3_pik_00002928, local
	.4byte 0x00000000
	.4byte 0x3F800000
	.4byte 0x00000000
.endobj vec3_pik_00002928

# .rodata:0x83C | 0x146C | size: 0xC
.obj vec3_pik_00002934, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_pik_00002934

# .rodata:0x848 | 0x1478 | size: 0x2
.obj str_S_pik_00002940, local
	.string "S"
.endobj str_S_pik_00002940

# .rodata:0x84A | 0x147A | size: 0x2
.obj gap_03_0000147A_rodata, global
.hidden gap_03_0000147A_rodata
	.2byte 0x0000
.endobj gap_03_0000147A_rodata

# .rodata:0x84C | 0x147C | size: 0x10
.obj str_SFX_STG8_QUAKE1_pik_00002944, local
	.string "SFX_STG8_QUAKE1"
.endobj str_SFX_STG8_QUAKE1_pik_00002944

# .rodata:0x85C | 0x148C | size: 0xD
.obj str_stg8_dark_07_pik_00002954, local
	.string "stg8_dark_07"
.endobj str_stg8_dark_07_pik_00002954

# .rodata:0x869 | 0x1499 | size: 0x3
.obj gap_03_00001499_rodata, global
.hidden gap_03_00001499_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001499_rodata

# .rodata:0x86C | 0x149C | size: 0x7
.obj str_bom_02_pik_00002964, local
	.string "bom_02"
.endobj str_bom_02_pik_00002964

# .rodata:0x873 | 0x14A3 | size: 0x1
.obj gap_03_000014A3_rodata, global
.hidden gap_03_000014A3_rodata
	.byte 0x00
.endobj gap_03_000014A3_rodata

# .rodata:0x874 | 0x14A4 | size: 0xC
.obj str_sekai_yami2_pik_0000296c, local
	.string "sekai_yami2"
.endobj str_sekai_yami2_pik_0000296c

# .rodata:0x880 | 0x14B0 | size: 0xA
.obj str_starstone_pik_00002978, local
	.string "starstone"
.endobj str_starstone_pik_00002978

# .rodata:0x88A | 0x14BA | size: 0x2
.obj gap_03_000014BA_rodata, global
.hidden gap_03_000014BA_rodata
	.2byte 0x0000
.endobj gap_03_000014BA_rodata

# .rodata:0x88C | 0x14BC | size: 0x10
.obj str_stg8_las_148_53_pik_00002984, local
	.string "stg8_las_148_53"
.endobj str_stg8_las_148_53_pik_00002984

# .rodata:0x89C | 0x14CC | size: 0x10
.obj str_stg8_las_148_54_pik_00002994, local
	.string "stg8_las_148_54"
.endobj str_stg8_las_148_54_pik_00002994

# .rodata:0x8AC | 0x14DC | size: 0x10
.obj str_stg8_las_148_55_pik_000029a4, local
	.string "stg8_las_148_55"
.endobj str_stg8_las_148_55_pik_000029a4

# .rodata:0x8BC | 0x14EC | size: 0x10
.obj str_stg8_las_148_56_pik_000029b4, local
	.string "stg8_las_148_56"
.endobj str_stg8_las_148_56_pik_000029b4

# .rodata:0x8CC | 0x14FC | size: 0x10
.obj str_stg8_las_148_57_pik_000029c4, local
	.string "stg8_las_148_57"
.endobj str_stg8_las_148_57_pik_000029c4

# .rodata:0x8DC | 0x150C | size: 0x10
.obj str_stg8_las_148_58_pik_000029d4, local
	.string "stg8_las_148_58"
.endobj str_stg8_las_148_58_pik_000029d4

# .rodata:0x8EC | 0x151C | size: 0x10
.obj str_stg8_las_148_59_pik_000029e4, local
	.string "stg8_las_148_59"
.endobj str_stg8_las_148_59_pik_000029e4

# .rodata:0x8FC | 0x152C | size: 0x10
.obj str_stg8_las_148_60_pik_000029f4, local
	.string "stg8_las_148_60"
.endobj str_stg8_las_148_60_pik_000029f4

# .rodata:0x90C | 0x153C | size: 0x10
.obj str_stg8_las_148_61_pik_00002a04, local
	.string "stg8_las_148_61"
.endobj str_stg8_las_148_61_pik_00002a04

# .rodata:0x91C | 0x154C | size: 0x10
.obj str_stg8_las_148_62_pik_00002a14, local
	.string "stg8_las_148_62"
.endobj str_stg8_las_148_62_pik_00002a14

# .rodata:0x92C | 0x155C | size: 0xC
.obj str_minnnanokoe_pik_00002a24, local
	.string "minnnanokoe"
.endobj str_minnnanokoe_pik_00002a24

# .rodata:0x938 | 0x1568 | size: 0x8
.obj str_S_dakan_pik_00002a30, local
	.string "S_dakan"
.endobj str_S_dakan_pik_00002a30

# .rodata:0x940 | 0x1570 | size: 0x8
.obj str_A_dokan_pik_00002a38, local
	.string "A_dokan"
.endobj str_A_dokan_pik_00002a38

# .rodata:0x948 | 0x1578 | size: 0x8
.obj str_c_luigi_pik_00002a40, local
	.string "c_luigi"
.endobj str_c_luigi_pik_00002a40

# .rodata:0x950 | 0x1580 | size: 0x7
.obj str_pblk01_pik_00002a48, local
	.string "pblk01"
.endobj str_pblk01_pik_00002a48

# .rodata:0x957 | 0x1587 | size: 0x1
.obj gap_03_00001587_rodata, global
.hidden gap_03_00001587_rodata
	.byte 0x00
.endobj gap_03_00001587_rodata

# .rodata:0x958 | 0x1588 | size: 0x14
.obj str_BGM_EVT_STG8_VOICE1_pik_00002a50, local
	.string "BGM_EVT_STG8_VOICE1"
.endobj str_BGM_EVT_STG8_VOICE1_pik_00002a50

# .rodata:0x96C | 0x159C | size: 0xE
.obj str_BGM_STG6_PIK1_pik_00002a64, local
	.string "BGM_STG6_PIK1"
.endobj str_BGM_STG6_PIK1_pik_00002a64

# .rodata:0x97A | 0x15AA | size: 0x2
.obj gap_03_000015AA_rodata, global
.hidden gap_03_000015AA_rodata
	.2byte 0x0000
.endobj gap_03_000015AA_rodata

# .rodata:0x97C | 0x15AC | size: 0x10
.obj str_ENV_STG6_PIK1_1_pik_00002a74, local
	.string "ENV_STG6_PIK1_1"
.endobj str_ENV_STG6_PIK1_1_pik_00002a74

# .rodata:0x98C | 0x15BC | size: 0xF
.obj str_BGM_EVT_KUPPA1_pik_00002a84, local
	.string "BGM_EVT_KUPPA1"
.endobj str_BGM_EVT_KUPPA1_pik_00002a84

# .rodata:0x99B | 0x15CB | size: 0x1
.obj gap_03_000015CB_rodata, global
.hidden gap_03_000015CB_rodata
	.byte 0x00
.endobj gap_03_000015CB_rodata

# .rodata:0x99C | 0x15CC | size: 0xB
.obj str_anm_sibuki_pik_00002a94, local
	.string "anm_sibuki"
.endobj str_anm_sibuki_pik_00002a94

# .rodata:0x9A7 | 0x15D7 | size: 0x1
.obj gap_03_000015D7_rodata, global
.hidden gap_03_000015D7_rodata
	.byte 0x00
.endobj gap_03_000015D7_rodata

# .rodata:0x9A8 | 0x15D8 | size: 0x9
.obj str_anm_mizu_pik_00002aa0, local
	.string "anm_mizu"
.endobj str_anm_mizu_pik_00002aa0

# .rodata:0x9B1 | 0x15E1 | size: 0x3
.obj gap_03_000015E1_rodata, global
.hidden gap_03_000015E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000015E1_rodata

# .rodata:0x9B4 | 0x15E4 | size: 0xA
.obj str_anm_hamon_pik_00002aac, local
	.string "anm_hamon"
.endobj str_anm_hamon_pik_00002aac

# .rodata:0x9BE | 0x15EE | size: 0x2
.obj gap_03_000015EE_rodata, global
.hidden gap_03_000015EE_rodata
	.2byte 0x0000
.endobj gap_03_000015EE_rodata

# .rodata:0x9C0 | 0x15F0 | size: 0xA
.obj str_anm_opuku_pik_00002ab8, local
	.string "anm_opuku"
.endobj str_anm_opuku_pik_00002ab8

# .rodata:0x9CA | 0x15FA | size: 0x2
.obj gap_03_000015FA_rodata, global
.hidden gap_03_000015FA_rodata
	.2byte 0x0000
.endobj gap_03_000015FA_rodata

# .rodata:0x9CC | 0x15FC | size: 0x6
.obj str_opuku_pik_00002ac4, local
	.string "opuku"
.endobj str_opuku_pik_00002ac4

# .rodata:0x9D2 | 0x1602 | size: 0x2
.obj gap_03_00001602_rodata, global
.hidden gap_03_00001602_rodata
	.2byte 0x0000
.endobj gap_03_00001602_rodata

# .rodata:0x9D4 | 0x1604 | size: 0x7
.obj str_HEIPO_pik_00002acc, local
	.string "HEIPO_"
.endobj str_HEIPO_pik_00002acc

# .rodata:0x9DB | 0x160B | size: 0x1
.obj gap_03_0000160B_rodata, global
.hidden gap_03_0000160B_rodata
	.byte 0x00
.endobj gap_03_0000160B_rodata

# .rodata:0x9DC | 0x160C | size: 0x8
.obj str_HEIPO_1_pik_00002ad4, local
	.string "HEIPO_1"
.endobj str_HEIPO_1_pik_00002ad4

# .rodata:0x9E4 | 0x1614 | size: 0x8
.obj str_HEIPO_2_pik_00002adc, local
	.string "HEIPO_2"
.endobj str_HEIPO_2_pik_00002adc

# .rodata:0x9EC | 0x161C | size: 0x8
.obj str_HEIPO_3_pik_00002ae4, local
	.string "HEIPO_3"
.endobj str_HEIPO_3_pik_00002ae4

# .rodata:0x9F4 | 0x1624 | size: 0x8
.obj str_HEIPO_4_pik_00002aec, local
	.string "HEIPO_4"
.endobj str_HEIPO_4_pik_00002aec

# .rodata:0x9FC | 0x162C | size: 0x8
.obj str_HEIPO_5_pik_00002af4, local
	.string "HEIPO_5"
.endobj str_HEIPO_5_pik_00002af4

# .rodata:0xA04 | 0x1634 | size: 0x8
.obj str_HEIPO_6_pik_00002afc, local
	.string "HEIPO_6"
.endobj str_HEIPO_6_pik_00002afc

# .rodata:0xA0C | 0x163C | size: 0x8
.obj str_HEIPO_7_pik_00002b04, local
	.string "HEIPO_7"
.endobj str_HEIPO_7_pik_00002b04

# .rodata:0xA14 | 0x1644 | size: 0xA
.obj str_MOBJ_Lock_pik_00002b0c, local
	.string "MOBJ_Lock"
.endobj str_MOBJ_Lock_pik_00002b0c

# .rodata:0xA1E | 0x164E | size: 0x2
.obj gap_03_0000164E_rodata, global
.hidden gap_03_0000164E_rodata
	.2byte 0x0000
.endobj gap_03_0000164E_rodata

# .rodata:0xA20 | 0x1650 | size: 0x4
.obj str_Z_1_pik_00002b18, local
	.string "Z_1"
.endobj str_Z_1_pik_00002b18

# .rodata:0xA24 | 0x1654 | size: 0xB
.obj str_a_harigami_pik_00002b1c, local
	.string "a_harigami"
.endobj str_a_harigami_pik_00002b1c

# .rodata:0xA2F | 0x165F | size: 0x1
.obj gap_03_0000165F_rodata, global
.hidden gap_03_0000165F_rodata
	.byte 0x00
.endobj gap_03_0000165F_rodata

# .rodata:0xA30 | 0x1660 | size: 0x5
.obj str_kami_pik_00002b28, local
	.string "kami"
.endobj str_kami_pik_00002b28

# .rodata:0xA35 | 0x1665 | size: 0x3
.obj gap_03_00001665_rodata, global
.hidden gap_03_00001665_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001665_rodata

# .rodata:0xA38 | 0x1668 | size: 0x16
.obj str_polySurface743_q0009_pik_00002b30, local
	.string "polySurface743_q00096"
.endobj str_polySurface743_q0009_pik_00002b30

# .rodata:0xA4E | 0x167E | size: 0x2
.obj gap_03_0000167E_rodata, global
.hidden gap_03_0000167E_rodata
	.2byte 0x0000
.endobj gap_03_0000167E_rodata

# .rodata:0xA50 | 0x1680 | size: 0xA
.obj str_MOBJ_lock_pik_00002b48, local
	.string "MOBJ_lock"
.endobj str_MOBJ_lock_pik_00002b48
	.2byte 0x0000

# .rodata:0xA5C | 0x168C | size: 0x4
.obj float_2_pik_00002b54, local
	.float 2
.endobj float_2_pik_00002b54

# .rodata:0xA60 | 0x1690 | size: 0x4
.obj float_neg45_pik_00002b58, local
	.float -45
.endobj float_neg45_pik_00002b58

# .rodata:0xA64 | 0x1694 | size: 0x4
.obj float_1_pik_00002b5c, local
	.float 1
.endobj float_1_pik_00002b5c

# .rodata:0xA68 | 0x1698 | size: 0x4
.obj float_100_pik_00002b60, local
	.float 100
.endobj float_100_pik_00002b60

# .rodata:0xA6C | 0x169C | size: 0x4
.obj gap_03_0000169C_rodata, global
.hidden gap_03_0000169C_rodata
	.4byte 0x00000000
.endobj gap_03_0000169C_rodata

# 0x00004800..0x00008328 | size: 0x3B28
.data
.balign 8

# .data:0x0 | 0x4800 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4808 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x480C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4810 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4814 | size: 0x4
.obj gap_04_00004814_data, global
.hidden gap_04_00004814_data
	.4byte 0x00000000
.endobj gap_04_00004814_data

# .data:0x18 | 0x4818 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4820 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4824 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4828 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4830 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4834 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4838 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x483C | size: 0x4
.obj gap_04_0000483C_data, global
.hidden gap_04_0000483C_data
	.4byte 0x00000000
.endobj gap_04_0000483C_data

# .data:0x40 | 0x4840 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4848 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x484C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4850 | size: 0x90
.obj dmgReturnPt, local
	.4byte str_mod_00_pik_000020f8
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_01_pik_00002100
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_02_pik_00002108
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_03_pik_00002110
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_04_pik_00002118
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_05_pik_00002120
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_06_pik_00002128
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_07_pik_00002130
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj dmgReturnPt

# .data:0xE0 | 0x48E0 | size: 0x58
.obj n_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_b_pik_00002138
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_a_pik_00002144
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_door_open

# .data:0x138 | 0x4938 | size: 0x58
.obj n_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_b_pik_00002138
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_a_pik_00002144
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_door_close

# .data:0x190 | 0x4990 | size: 0xF0
.obj bero_data, local
	.4byte str_nw_bero_pik_00002150
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_pik_04_pik_00002158
	.4byte str_se_bero_pik_00002160
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_n_bero_pik_00002168
	.4byte 0x00010006
	.4byte 0x00000001
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_pik_02_pik_00002170
	.4byte str_s_bero_pik_00002178
	.4byte 0x00050005
	.4byte n_door_close
	.4byte n_door_open
	.4byte str_dokan_1_pik_00002180
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte str_tik_17_pik_00002188
	.4byte str_dokan_1_pik_00002180
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
.endobj bero_data

# .data:0x280 | 0x4A80 | size: 0x8
.obj name_tbl, local
	.4byte str_yajirusi_1_pik_00002190
	.4byte str_yajirusi_2_pik_0000219c
.endobj name_tbl

# .data:0x288 | 0x4A88 | size: 0x568
.obj evt_powan, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_06_pik_000021a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x00020010
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0xFFFFFFBA
	.4byte 0x00000005
	.4byte 0xFFFFFF08
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_07_0_pik_000021c0
	.4byte 0x00000000
	.4byte str_party_pik_000021d0
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_07_1_pik_000021d8
	.4byte 0x00000000
	.4byte str_party_pik_000021d0
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_07_2_pik_000021e8
	.4byte 0x00000000
	.4byte str_party_pik_000021d0
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_07_3_pik_000021f8
	.4byte 0x00000000
	.4byte str_party_pik_000021d0
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_07_4_pik_00002208
	.4byte 0x00000000
	.4byte str_party_pik_000021d0
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_07_5_pik_00002218
	.4byte 0x00000000
	.4byte str_party_pik_000021d0
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_07_6_pik_00002228
	.4byte 0x00000000
	.4byte str_party_pik_000021d0
	.4byte 0x00000031
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ポワン探偵_pik_000021b4
	.4byte str_mario_pik_00002238
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_08_pik_00002240
	.4byte 0x00000000
	.4byte str_ポワン探偵_pik_000021b4
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
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_EVT_POWAN1_pik_0000224c
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEA2
	.4byte 0x00000078
	.4byte 0x00000028
	.4byte 0xFFFFFFC9
	.4byte 0x00000032
	.4byte 0xFFFFFF14
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000FA0
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x00000055
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF94
	.4byte 0x00000083
	.4byte 0x00000079
	.4byte 0x000000BC
	.4byte 0x0000003A
	.4byte 0xFFFFFF59
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x000000E4
	.4byte 0xFFFFFF74
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x000000BE
	.4byte 0xFFFFFF78
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x0000009F
	.4byte 0xFFFFFF55
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_09_0_pik_0000225c
	.4byte 0x00000000
	.4byte str_party_pik_000021d0
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_09_1_pik_0000226c
	.4byte 0x00000000
	.4byte str_party_pik_000021d0
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_09_2_pik_0000227c
	.4byte 0x00000000
	.4byte str_party_pik_000021d0
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_09_3_pik_0000228c
	.4byte 0x00000000
	.4byte str_party_pik_000021d0
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_09_4_pik_0000229c
	.4byte 0x00000000
	.4byte str_party_pik_000021d0
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_09_5_pik_000022ac
	.4byte 0x00000000
	.4byte str_party_pik_000021d0
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_09_6_pik_000022bc
	.4byte 0x00000000
	.4byte str_party_pik_000021d0
	.4byte 0x00000031
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_10_pik_000022cc
	.4byte 0x00000000
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_pik_000022d8
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_pik_000022e0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_11_pik_000022e8
	.4byte 0x00000000
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x000000D2
	.4byte 0xFFFFFF3F
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mobj_lock_unlock
	.4byte str_lock_pik_000022f4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x000000B4
	.4byte 0xFFFFFF24
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ポワン探偵_pik_000021b4
	.4byte str_mario_pik_00002238
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000014F
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_powan

# .data:0x7F0 | 0x4FF0 | size: 0x48
.obj init_powan, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x0000014F
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_000022fc
	.4byte 0x000000A5
	.4byte 0x00000014
	.4byte 0xFFFFFF42
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_pik_000022fc
	.4byte 0x00020010
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_powan

# .data:0x838 | 0x5038 | size: 0x20
.obj talk_powan, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_11_pik_000022e8
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_powan

# .data:0x858 | 0x5058 | size: 0x8CC
.obj miyageya_talk, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000001B
	.4byte 0x0002005B
	.4byte chk_luigi_color
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_001_pik_00002300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_pik_000022d8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_G_pik_0000230c
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_pik_000022e0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_001_1_pik_00002314
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709D
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_002_pik_00002324
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_土産屋_pik_00002330
	.4byte 0x00000020
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFDDF
	.4byte 0x0000005A
	.4byte 0x00000212
	.4byte 0xFFFFFEDE
	.4byte 0x00000037
	.4byte 0x0000011D
	.4byte 0x00000320
	.4byte 0x0000000B
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
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF1F
	.4byte 0x00000141
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0xFFFFFF0B
	.4byte 0x0000012C
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_土産屋_pik_00002330
	.4byte str_mario_pik_00002238
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_003_pik_00002338
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_pik_00002344
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_pik_000022e0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_004_pik_0000234c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Z_pik_00002358
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_005_pik_00002360
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_土産屋_pik_00002330
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_get_target_dir
	.4byte str_土産屋_pik_00002330
	.4byte str_mario_pik_00002238
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_add_dirdist
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C83
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_土産屋_pik_00002330
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_土産屋_pik_00002330
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_pouch_get_haveitemcnt
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000001
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x0000000A
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_006_pik_0000236c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_sc_pik_00002378
	.4byte 0x000000D6
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_sc_pik_00002378
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_sc_pik_00002378
	.4byte 0x00020032
	.4byte 0xF840684E
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_土産屋_pik_00002330
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_土産屋_pik_00002330
	.4byte 0x00000020
	.4byte 0x00000020
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_土産屋_pik_00002330
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_土産屋_pik_00002330
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_007_1_pik_0000237c
	.4byte 0x00000000
	.4byte str_土産屋_pik_00002330
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_iri_27_pik_0000238c
	.4byte 0x000000D6
	.4byte 0xFFFFFF0A
	.4byte 0x0000000F
	.4byte 0x000000F6
	.4byte 0x00000010
	.4byte 0xF840684E
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_007_2_pik_00002394
	.4byte 0x00000000
	.4byte str_土産屋_pik_00002330
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ルイージ_pik_000023a4
	.4byte 0xFFFFFE7E
	.4byte 0x00000000
	.4byte 0x000000D6
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ルイージ_pik_000023a4
	.4byte 0x00020030
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ルイージ_pik_000023a4
	.4byte 0xFFFFFEB6
	.4byte 0x00000110
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_008_pik_000023b0
	.4byte 0x00000000
	.4byte str_ルイージ_pik_000023a4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_pik_000022e0
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ルイージ_pik_000023a4
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_土産屋_pik_00002330
	.4byte str_ルイージ_pik_000023a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_pik_000023bc
	.4byte str_土産屋_pik_00002330
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_009_pik_000023c0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ルイージ_pik_000023a4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ルイージ_pik_000023a4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_010_pik_000023cc
	.4byte 0x00000000
	.4byte str_ルイージ_pik_000023a4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_1_pik_000023d8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_pik_000022e0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_011_pik_000023e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_012_pik_000023ec
	.4byte 0x00000000
	.4byte str_ルイージ_pik_000023a4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ルイージ_pik_000023a4
	.4byte 0xFFFFFE7E
	.4byte 0x000000D6
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ルイージ_pik_000023a4
	.4byte 0x00020010
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ルイージ_pik_000023a4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_土産屋_pik_00002330
	.4byte str_mario_pik_00002238
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_013_pik_000023f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_土産屋_pik_00002330
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_pik_00002344
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_pik_000022e0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_27_014_pik_00002404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x00020032
	.4byte 0xF5DE070C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8407099
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_sys_request_finish_pik_00002410
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000015D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_02_pik_00002424
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x0002002F
	.4byte 0x00000175
	.4byte 0x00000178
	.4byte 0x00020018
	.4byte 0xF9718881
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_force_regl_anim
	.4byte str_me_pik_000022fc
	.4byte str_KNF_S_2_pik_00002438
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_pik_000022fc
	.4byte str_KNF_S_1_pik_00002440
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_me_pik_000022fc
	.4byte str_KNF_S_2_pik_00002438
	.4byte str_KNF_T_2_pik_00002448
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_004_pik_00002450
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00000200
	.4byte 0x00020032
	.4byte 0xF9718881
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_004_1_pik_00002460
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0002005B
	.4byte chk_luigi_color
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002001C
	.4byte 0xF5DE0180
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_03_pik_00002470
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_03_0_pik_00002484
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8407099
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_03_1_pik_00002498
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_pik_000022fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_me_pik_000022fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_03_2_pik_000024ac
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj miyageya_talk

# .data:0x1124 | 0x5924 | size: 0x60
.obj miyageya_init, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_000022fc
	.4byte 0xFFFFFEF2
	.4byte 0xFFFFFFFB
	.4byte 0x00000104
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000175
	.4byte 0x00000178
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00000400
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_me_pik_000022fc
	.4byte 0x00000006
	.4byte miyageya_talk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj miyageya_init

# .data:0x1184 | 0x5984 | size: 0x8
.obj iri_29_item_tbl1, local
	.4byte 0x000000CC
	.4byte 0xFFFFFFFF
.endobj iri_29_item_tbl1

# .data:0x118C | 0x598C | size: 0x8
.obj iri_29_item_tbl2, local
	.4byte 0x000000AA
	.4byte 0xFFFFFFFF
.endobj iri_29_item_tbl2

# .data:0x1194 | 0x5994 | size: 0x8
.obj iri_29_item_tbl3, local
	.4byte 0x000000A2
	.4byte 0xFFFFFFFF
.endobj iri_29_item_tbl3

# .data:0x119C | 0x599C | size: 0x6A8
.obj konarikin_talk, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000001D
	.4byte 0x00020018
	.4byte 0xF840709E
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_00_pik_000024c0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_29_00_s_pik_000024cc
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF5DE073D
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_29_01_pik_000024dc
	.4byte 0x00020032
	.4byte 0xF840709D
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000064
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_11_pik_000024e8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE073D
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x000000CC
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_05_pik_000024f4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte iri_29_item_tbl1
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x000000CC
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_08_pik_00002500
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_pre_pik_0000250c
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_pre_pik_0000250c
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_pre_pik_0000250c
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_02_pik_00002510
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x000000AA
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_06_pik_0000251c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte iri_29_item_tbl2
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x000000AA
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_09_pik_00002528
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_pre_pik_0000250c
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_pre_pik_0000250c
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_pre_pik_0000250c
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_03_pik_00002534
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x000000A2
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_07_pik_00002540
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte iri_29_item_tbl3
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x000000A2
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_10_pik_0000254c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_pre_pik_0000250c
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_pre_pik_0000250c
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_pre_pik_0000250c
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_04_pik_00002558
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_12_pik_00002564
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_pik_00002570
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_pik_000022e0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_13_pik_00002578
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_coin
	.4byte 0x00000003
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_コナリキン_pik_00002584
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_コナリキン_pik_00002584
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_pik_000022fc
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_pik_000022fc
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_pik_000022fc
	.4byte 0xFFFFFF22
	.4byte 0xFFFFFF1F
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_000022fc
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE070C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709B
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_sys_request_finish_pik_00002410
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_005_pik_00002590
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_kpa_stg7_005_1_pik_000025a0
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_pik_00002238
	.4byte str_KPA_S_1_pik_000025b0
	.4byte str_KPA_T_1_pik_000025b8
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_006_pik_000025c0
	.4byte 0x00000000
	.4byte str_mario_pik_00002238
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_me_pik_000022fc
	.4byte str_C_1_pik_000025d0
	.4byte str_T_4_pik_000025d4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_007_pik_000025d8
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_pik_000022fc
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00000400
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_pik_000022fc
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_pik_000022fc
	.4byte str_R_2_pik_000025e8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_pik_000022fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KONARIKIN__pik_000025ec
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_pik_000022fc
	.4byte 0xFFFFFF38
	.4byte 0x0000017C
	.4byte 0x00000000
	.4byte 0xF24CD280
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_000022fc
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_008_pik_00002608
	.4byte 0x00000000
	.4byte str_mario_pik_00002238
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_009_pik_00002618
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_010_pik_00002628
	.4byte 0x00000000
	.4byte str_mario_pik_00002238
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_011_pik_00002638
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj konarikin_talk

# .data:0x1844 | 0x6044 | size: 0x74
.obj konarikin_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000001D
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_000022fc
	.4byte 0xFFFFFFC2
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFE91
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000175
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000178
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_000022fc
	.4byte 0x00000091
	.4byte 0x00000000
	.4byte 0x0000017C
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj konarikin_init

# .data:0x18B8 | 0x60B8 | size: 0xDC
.obj narikin_papa_mama_talk, local
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF93
	.4byte 0x000000A3
	.4byte 0x000002F0
	.4byte 0xFFFFFF93
	.4byte 0x00000043
	.4byte 0x000000D3
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_011_3_pik_00002648
	.4byte 0x00000000
	.4byte str_ナリキンパパ_pik_00002658
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_011_4_pik_00002668
	.4byte 0x00000000
	.4byte str_ナリキンママ_pik_00002678
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_011_5_pik_00002688
	.4byte 0x00000000
	.4byte str_ナリキンパパ_pik_00002658
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_011_6_pik_00002698
	.4byte 0x00000000
	.4byte str_ナリキンママ_pik_00002678
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_pik_00002238
	.4byte str_KPA_S_1_pik_000025b0
	.4byte str_KPA_T_1_pik_000025b8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_011_7_pik_000026a8
	.4byte 0x00000000
	.4byte str_mario_pik_00002238
	.4byte 0x00000002
	.4byte 0x00000001
.endobj narikin_papa_mama_talk

# .data:0x1994 | 0x6194 | size: 0x5C
.obj narikin_papa_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_pik_000022fc
	.4byte 0x01000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000175
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000178
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_000022fc
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFFB
	.4byte 0x000000A1
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj narikin_papa_init

# .data:0x19F0 | 0x61F0 | size: 0x5C
.obj narikin_mama_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_pik_000022fc
	.4byte 0x01000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000175
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000178
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_000022fc
	.4byte 0x00000012
	.4byte 0xFFFFFFFB
	.4byte 0x000000B9
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj narikin_mama_init

# .data:0x1A4C | 0x624C | size: 0x4C
.obj madam_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_011_1_pik_000026b8
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_pik_00002238
	.4byte str_KPA_S_1_pik_000025b0
	.4byte str_KPA_T_1_pik_000025b8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_011_2_pik_000026c8
	.4byte 0x00000000
	.4byte str_mario_pik_00002238
	.4byte 0x00000002
	.4byte 0x00000001
.endobj madam_talk

# .data:0x1A98 | 0x6298 | size: 0x48
.obj madam_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000175
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000178
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_000022fc
	.4byte 0xFFFFFE75
	.4byte 0x00000000
	.4byte 0xFFFFFFB8
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj madam_init

# .data:0x1AE0 | 0x62E0 | size: 0x20
.obj baba_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_003_1_pik_000026d8
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00000002
	.4byte 0x00000001
.endobj baba_talk

# .data:0x1B00 | 0x6300 | size: 0x24
.obj baba_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_pik_000022fc
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj baba_init

# .data:0x1B24 | 0x6324 | size: 0x1C
.obj takun4_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ターくん４_pik_000026e8
	.4byte 0x00000600
	.4byte 0x00000002
	.4byte 0x00000001
.endobj takun4_init

# .data:0x1B40 | 0x6340 | size: 0x94
.obj takun4_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000015B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_04_pik_000026f4
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x0002002F
	.4byte 0x00000175
	.4byte 0x00000178
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_011_7_1_pik_00002708
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_05_pik_0000271c
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_05_1_pik_00002730
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj takun4_talk

# .data:0x1BD4 | 0x63D4 | size: 0x64
.obj takun5_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ターくん５_pik_00002744
	.4byte 0x00000600
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000175
	.4byte 0x00000178
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ターくん５_pik_00002744
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ターくん５_pik_00002744
	.4byte 0x00020010
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj takun5_init

# .data:0x1C38 | 0x6438 | size: 0x70
.obj takun5_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000015B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_06_pik_00002750
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_07_pik_00002764
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_07_1_pik_00002778
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj takun5_talk

# .data:0x1CA8 | 0x64A8 | size: 0x64
.obj takun6_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ターくん６_pik_0000278c
	.4byte 0x00000600
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000175
	.4byte 0x00000178
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ターくん６_pik_0000278c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ターくん６_pik_0000278c
	.4byte 0x00020010
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj takun6_init

# .data:0x1D0C | 0x650C | size: 0x70
.obj takun6_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000015B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_08_pik_00002798
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_09_pik_000027ac
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_09_1_pik_000027c0
	.4byte 0x00000000
	.4byte str_me_pik_000022fc
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj takun6_talk

# .data:0x1D7C | 0x657C | size: 0x2E0
.obj npc_data, local
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_powan
	.4byte 0x00000000
	.4byte talk_powan
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_土産屋_pik_00002330
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte miyageya_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ナリキンママ_pik_00002678
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte narikin_mama_init
	.4byte 0x00000000
	.4byte narikin_papa_mama_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ナリキンパパ_pik_00002658
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte narikin_papa_init
	.4byte 0x00000000
	.4byte narikin_papa_mama_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_コナリキン_pik_00002584
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte konarikin_init
	.4byte 0x00000000
	.4byte konarikin_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_マダム_pik_000027d4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte madam_init
	.4byte 0x00000000
	.4byte madam_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ババ_pik_000027dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte baba_init
	.4byte 0x00000000
	.4byte baba_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npc_data

# .data:0x205C | 0x685C | size: 0xD8
.obj teresa_fuwafuwa, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_pik_000022fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000E
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00020037
	.4byte 0xFE363C84
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0xFE363C84
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002003C
	.4byte 0xFE363C84
	.4byte 0xF24A8080
	.4byte 0x0002003A
	.4byte 0xFE363C84
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_000022fc
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000003
	.4byte 0x00020039
	.4byte 0xFE363C83
	.4byte 0x00000168
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj teresa_fuwafuwa

# .data:0x2134 | 0x6934 | size: 0x20
.obj resaresa_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_03_2__pik_000027e4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj resaresa_talk

# .data:0x2154 | 0x6954 | size: 0x8C
.obj resaresa_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_レサレサ_pik_000027fc
	.4byte str_c_resaresa_pik_00002808
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_レサレサ_pik_000027fc
	.4byte str_レサレサ_pik_000027fc
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_レサレサ_pik_000027fc
	.4byte 0x0000001E
	.4byte 0x0000000F
	.4byte 0x00000078
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_レサレサ_pik_000027fc
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_レサレサ_pik_000027fc
	.4byte 0x00400200
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_レサレサ_pik_000027fc
	.4byte 0x00000001
	.4byte teresa_fuwafuwa
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_レサレサ_pik_000027fc
	.4byte 0x00000006
	.4byte resaresa_talk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj resaresa_entry

# .data:0x21E0 | 0x69E0 | size: 0x20
.obj sebaschan_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_03_2__pik_00002814
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sebaschan_talk

# .data:0x2200 | 0x6A00 | size: 0x8C
.obj sebaschan_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_セバスチャン_pik_0000282c
	.4byte str_c_sebaschan_pik_0000283c
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_セバスチャン_pik_0000282c
	.4byte str_セバスチャン_pik_0000282c
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_セバスチャン_pik_0000282c
	.4byte 0x0000004B
	.4byte 0x00000004
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_セバスチャン_pik_0000282c
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_セバスチャン_pik_0000282c
	.4byte 0x01400200
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_セバスチャン_pik_0000282c
	.4byte 0x00000001
	.4byte teresa_fuwafuwa
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_セバスチャン_pik_0000282c
	.4byte 0x00000006
	.4byte sebaschan_talk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sebaschan_entry

# .data:0x228C | 0x6A8C | size: 0x38C
.obj koopa_door_evt, local
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_lock_pik_000022f4
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_sub_get_dir
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0x00020036
	.4byte 0xFE363C86
	.4byte 0x0000002D
	.4byte 0x0002001A
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000168
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C86
	.4byte 0x000000B4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF7C
	.4byte 0x00000078
	.4byte 0x00000094
	.4byte 0x000000B9
	.4byte 0x0000005A
	.4byte 0xFFFFFF56
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_012_pik_00002848
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_I_2_pik_00002858
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A8A
	.4byte 0x00000096
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_ANGRY1_pik_00002860
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_ANGRY2_pik_00002874
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_012_01_pik_00002888
	.4byte 0x00000000
	.4byte str_mario_pik_00002238
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mobj_lock_unlock
	.4byte str_lock_pik_000022f4
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_012_02_pik_00002898
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_pik_00002238
	.4byte str_KPA_S_6_pik_000028a8
	.4byte str_KPA_T_6_pik_000028b0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_013_pik_000028b8
	.4byte 0x00000000
	.4byte str_mario_pik_00002238
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24D4A80
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00000007
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0x000000E6
	.4byte 0xFFFFFF29
	.4byte 0x00000258
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_pik_02_pik_00002170
	.4byte zero_pik_000023bc
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj koopa_door_evt

# .data:0x2618 | 0x6E18 | size: 0x3C4
.obj pik_01_koopa_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFEBB
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFEBB
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_pik_000027dc
	.4byte 0xFFFFFE57
	.4byte 0x00000019
	.4byte 0xFFFFFE57
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ババ_pik_000027dc
	.4byte 0x00008000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_pik_000027dc
	.4byte 0x0000005A
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEEF
	.4byte 0x00000091
	.4byte 0x000000C4
	.4byte 0xFFFFFEEF
	.4byte 0x00000045
	.4byte 0xFFFFFF13
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ババ_pik_000027dc
	.4byte 0x00008000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_pik_000027dc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KAMEBABA_F_pik_000028c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0008005B
	.4byte evt_npc_kamek_move_position
	.4byte str_ババ_pik_000027dc
	.4byte 0xFFFFFEB9
	.4byte 0xFFFFFEB9
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF1D
	.4byte 0xFFFFFF1D
	.4byte 0xF24B6A80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_pik_00002238
	.4byte str_KPA_S_1_pik_000025b0
	.4byte str_KPA_T_1_pik_000025b8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_000_pik_000028e0
	.4byte 0x00000000
	.4byte str_mario_pik_00002238
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_001_pik_000028f0
	.4byte 0x00000000
	.4byte str_ババ_pik_000027dc
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_pik_000027dc
	.4byte str_A_3A_pik_00002900
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF6A
	.4byte 0x0000005F
	.4byte 0x00000202
	.4byte 0x00000072
	.4byte 0x00000082
	.4byte 0xFFFFFF0F
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_pik_000027dc
	.4byte str_S_2_pik_00002908
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEEF
	.4byte 0x00000091
	.4byte 0x000000C4
	.4byte 0xFFFFFEEF
	.4byte 0x00000045
	.4byte 0xFFFFFF13
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_002_pik_0000290c
	.4byte 0x00000000
	.4byte str_mario_pik_00002238
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000176
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_pik_000027dc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KAMEBABA_F_pik_000028c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0008005B
	.4byte evt_npc_kamek_move_position
	.4byte str_ババ_pik_000027dc
	.4byte 0xFFFFFF01
	.4byte 0xFFFFFED4
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj pik_01_koopa_evt

# .data:0x29DC | 0x71DC | size: 0x8C
.obj delete_npc_regl_evt, local
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_ターくん４_pik_000026e8
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ターくん４_pik_000026e8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_ターくん５_pik_00002744
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ターくん５_pik_00002744
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_ターくん６_pik_0000278c
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ターくん６_pik_0000278c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj delete_npc_regl_evt

# .data:0x2A68 | 0x7268 | size: 0x2C
.obj sekai_yami_shake, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A8A
	.4byte 0x000001F4
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sekai_yami_shake

# .data:0x2A94 | 0x7294 | size: 0x230
.obj sekai_yami_evt, local
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
	.4byte evt_npc_set_position
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x00000028
	.4byte 0xFFFFFFFB
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000003
	.4byte envSetYami
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_pik_00002940
	.4byte 0x03000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_pik_00002940
	.4byte 0x00000100
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ターくん５_pik_00002744
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_bg_set_color
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x000000FF
	.4byte 0x0002005B
	.4byte yami_view
	.4byte 0xFFFFFCE0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000000F
	.4byte 0x00000086
	.4byte 0x0000029B
	.4byte 0x0000000F
	.4byte 0x00000026
	.4byte 0x0000007E
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001005C
	.4byte sekai_yami_shake
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_QUAKE1_pik_00002944
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_dark_07_pik_00002954
	.4byte 0x00000000
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0000012C
	.4byte 0x00000009
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_bom_02_pik_00002964
	.4byte str_sekai_yami2_pik_0000296c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sekai_yami_evt

# .data:0x2CC4 | 0x74C4 | size: 0x61C
.obj minnnanokoe_evt, local
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
	.4byte evt_npc_set_position
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x0000005A
	.4byte 0xFFFFFFFB
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マダム_pik_000027d4
	.4byte 0x0000000A
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マダム_pik_000027d4
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マダム_pik_000027d4
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_コナリキン_pik_00002584
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0xFFFFFFBA
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_コナリキン_pik_00002584
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ナリキンママ_pik_00002678
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xFFFFFF97
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ナリキンママ_pik_00002678
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ナリキンパパ_pik_00002658
	.4byte 0x00000064
	.4byte 0x00000005
	.4byte 0xFFFFFFB5
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ナリキンパパ_pik_00002658
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000003
	.4byte envSetYami
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_pik_00002940
	.4byte 0x03000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_pik_00002940
	.4byte 0x00000100
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_マダム_pik_000027d4
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_コナリキン_pik_00002584
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ナリキンママ_pik_00002678
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ナリキンパパ_pik_00002658
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ターくん４_pik_000026e8
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ターくん５_pik_00002744
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ターくん６_pik_0000278c
	.4byte 0x00000003
	.4byte 0x0002005B
	.4byte yami_view
	.4byte 0xFFFFFCE0
	.4byte 0x0005005B
	.4byte evt_bg_set_color
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x000000FF
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000032
	.4byte 0x00000078
	.4byte 0x000002EE
	.4byte 0x00000032
	.4byte 0x00000037
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte starstone_entry
	.4byte str_starstone_pik_00002978
	.4byte 0x00000032
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000032
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte starstone_set_pos
	.4byte str_starstone_pik_00002978
	.4byte 0x00000032
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte starstone_set_ry
	.4byte str_starstone_pik_00002978
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0xF24A8680
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00001388
	.4byte 0x0000157C
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x0000157C
	.4byte 0x00001388
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_マダム_pik_000027d4
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_53_pik_00002984
	.4byte 0x00000000
	.4byte str_マダム_pik_000027d4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_54_pik_00002994
	.4byte 0x00000000
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000032
	.4byte 0x0000004E
	.4byte 0x0000015D
	.4byte 0x00000032
	.4byte 0x0000002F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_55_pik_000029a4
	.4byte 0x00000000
	.4byte str_ナリキンママ_pik_00002678
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_56_pik_000029b4
	.4byte 0x00000000
	.4byte str_ナリキンパパ_pik_00002658
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_コナリキン_pik_00002584
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_57_pik_000029c4
	.4byte 0x00000000
	.4byte str_コナリキン_pik_00002584
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_コナリキン_pik_00002584
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_58_pik_000029d4
	.4byte 0x00000000
	.4byte str_コナリキン_pik_00002584
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000032
	.4byte 0x00000078
	.4byte 0x000002EE
	.4byte 0x00000032
	.4byte 0x00000037
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_59_pik_000029e4
	.4byte 0x00000000
	.4byte str_マダム_pik_000027d4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_60_pik_000029f4
	.4byte 0x00000000
	.4byte str_ナリキンパパ_pik_00002658
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_61_pik_00002a04
	.4byte 0x00000000
	.4byte str_ナリキンママ_pik_00002678
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_62_pik_00002a14
	.4byte 0x00000000
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ポワン探偵_pik_000021b4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0000012C
	.4byte 0x00000009
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_bom_02_pik_00002964
	.4byte str_minnnanokoe_pik_00002a24
	.4byte 0x00000002
	.4byte 0x00000001
.endobj minnnanokoe_evt

# .data:0x32E0 | 0x7AE0 | size: 0x44
.obj evt_switch_init, local
	.4byte 0x00020018
	.4byte 0xF84060C4
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_dakan_pik_00002a30
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_dokan_pik_00002a38
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_switch_init

# .data:0x3324 | 0x7B24 | size: 0x68
.obj iri_27_npc_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ルイージ_pik_000023a4
	.4byte str_c_luigi_pik_00002a40
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ルイージ_pik_000023a4
	.4byte str_ルイージ_pik_000023a4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ルイージ_pik_000023a4
	.4byte 0x00000600
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ルイージ_pik_000023a4
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ルイージ_pik_000023a4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj iri_27_npc_entry

# .data:0x338C | 0x7B8C | size: 0x798
.obj pik_01_init_evt_21_data_7B8C, global
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000175
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000177
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte evt_switch_init
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_pblk01_pik_00002a48
	.4byte 0x00000190
	.4byte 0x0000005F
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0xF840713B
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_nw_bero_pik_00002150
	.4byte 0x00800004
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_sekai_yami2_pik_0000296c
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_minnnanokoe_pik_00002a24
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG8_VOICE1_pik_00002a50
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG6_PIK1_pik_00002a64
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG6_PIK1_1_pik_00002a74
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_KUPPA1_pik_00002a84
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_ENV_STG6_PIK1_1_pik_00002a74
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_sibuki_pik_00002a94
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_mizu_pik_00002aa0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_hamon_pik_00002aac
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_opuku_pik_00002ab8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001003E
	.4byte name_tbl
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0001003F
	.4byte 0xFE363C89
	.4byte 0x0001005C
	.4byte evt_pik_yajirushi_21_data_1BC0
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte dmgReturnPt
	.4byte 0x0001005E
	.4byte evt_gazigazi_entry
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte test_tev
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000002
	.4byte test_tev2
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_opuku_pik_00002ac4
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_opuku_pik_00002ac4
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_HEIPO_pik_00002acc
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_HEIPO_pik_00002acc
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_HEIPO_1_pik_00002ad4
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_HEIPO_1_pik_00002ad4
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_HEIPO_2_pik_00002adc
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_HEIPO_2_pik_00002adc
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_HEIPO_3_pik_00002ae4
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_HEIPO_3_pik_00002ae4
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_HEIPO_4_pik_00002aec
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_HEIPO_4_pik_00002aec
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_HEIPO_5_pik_00002af4
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_HEIPO_5_pik_00002af4
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_HEIPO_6_pik_00002afc
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_HEIPO_6_pik_00002afc
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_HEIPO_7_pik_00002b04
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_HEIPO_7_pik_00002b04
	.4byte 0x00000100
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_opuku_pik_00002ac4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npc_data
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000001B
	.4byte 0x0001005E
	.4byte iri_27_npc_entry
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8407099
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_iri_27_pik_0000238c
	.4byte 0x000000D6
	.4byte 0xFFFFFF0A
	.4byte 0x0000000F
	.4byte 0x000000F6
	.4byte 0x00000010
	.4byte 0xF840684E
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000193
	.4byte 0x0001005E
	.4byte resaresa_entry
	.4byte 0x0001005E
	.4byte sebaschan_entry
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte takun4_init
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ターくん４_pik_000026e8
	.4byte 0x00000006
	.4byte takun4_talk
	.4byte 0x0001005E
	.4byte takun5_init
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ターくん５_pik_00002744
	.4byte 0x00000006
	.4byte takun5_talk
	.4byte 0x0001005E
	.4byte takun6_init
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ターくん６_pik_0000278c
	.4byte 0x00000006
	.4byte takun6_talk
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000014F
	.4byte 0x0003005B
	.4byte evt_mobj_entry
	.4byte str_lock_pik_000022f4
	.4byte str_MOBJ_Lock_pik_00002b0c
	.4byte 0x0005005B
	.4byte evt_mobj_set_position
	.4byte str_lock_pik_000022f4
	.4byte 0x000000E2
	.4byte 0x0000001E
	.4byte 0xFFFFFF28
	.4byte 0x0003005B
	.4byte evt_mobj_set_anim
	.4byte str_lock_pik_000022f4
	.4byte str_Z_1_pik_00002b18
	.4byte 0x0001005B
	.4byte set_r
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_harigami_pik_00002b1c
	.4byte 0x00000000
	.4byte evt_powan
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_kami_pik_00002b28
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mobj_entry
	.4byte str_lock_pik_000022f4
	.4byte str_MOBJ_Lock_pik_00002b0c
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000001
	.4byte str_lock_pik_000022f4
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mobj_set_position
	.4byte str_lock_pik_000022f4
	.4byte 0x000000E2
	.4byte 0x0000001E
	.4byte 0xFFFFFF28
	.4byte 0x0003005B
	.4byte evt_mobj_set_anim
	.4byte str_lock_pik_000022f4
	.4byte str_Z_1_pik_00002b18
	.4byte 0x0001005B
	.4byte set_r
	.4byte 0x0001005B
	.4byte kpa_lock_hit_scale
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_polySurface743_q0009_pik_00002b30
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_MOBJ_lock_pik_00002b48
	.4byte 0x00000000
	.4byte koopa_door_evt
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000175
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte pik_01_koopa_evt
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000176
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF1D
	.4byte 0x00000000
	.4byte 0xFFFFFF1D
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_pik_000027dc
	.4byte 0xFFFFFF01
	.4byte 0x00000019
	.4byte 0xFFFFFED4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_pik_000027dc
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_sekai_yami2_pik_0000296c
	.4byte 0x0001005E
	.4byte delete_npc_regl_evt
	.4byte 0x0001005C
	.4byte sekai_yami_evt
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_minnnanokoe_pik_00002a24
	.4byte 0x0001005E
	.4byte delete_npc_regl_evt
	.4byte 0x0001005C
	.4byte minnnanokoe_evt
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj pik_01_init_evt_21_data_7B8C

# .data:0x3B24 | 0x8324 | size: 0x4
.obj gap_04_00008324_data, global
.hidden gap_04_00008324_data
	.4byte 0x00000000
.endobj gap_04_00008324_data
