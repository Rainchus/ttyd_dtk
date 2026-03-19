.include "macros.inc"
.file "win_06.o"

# 0x0000159C..0x00001D54 | size: 0x7B8
.text
.balign 4

# .text:0x0 | 0x159C | size: 0xF4
.fn cam_kaiten_set_para, local
/* 0000159C 00001660  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000015A0 00001664  7C 08 02 A6 */	mflr r0
/* 000015A4 00001668  90 01 00 24 */	stw r0, 0x24(r1)
/* 000015A8 0000166C  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000015AC 00001670  7C 7D 1B 78 */	mr r29, r3
/* 000015B0 00001674  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000015B4 00001678  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000015B8 0000167C  4B FF F7 D1 */	bl evtGetValue
/* 000015BC 00001680  2C 03 00 01 */	cmpwi r3, 0x1
/* 000015C0 00001684  41 82 00 24 */	beq .L_000015E4
/* 000015C4 00001688  40 80 00 2C */	bge .L_000015F0
/* 000015C8 0000168C  2C 03 00 00 */	cmpwi r3, 0x0
/* 000015CC 00001690  40 80 00 0C */	bge .L_000015D8
/* 000015D0 00001694  48 00 00 20 */	b .L_000015F0
/* 000015D4 00001698  48 00 00 1C */	b .L_000015F0
.L_000015D8:
/* 000015D8 0000169C  3C 60 00 00 */	lis r3, ckp0@ha
/* 000015DC 000016A0  83 C3 00 00 */	lwz r30, ckp0@l(r3)
/* 000015E0 000016A4  48 00 00 18 */	b .L_000015F8
.L_000015E4:
/* 000015E4 000016A8  3C 60 00 00 */	lis r3, ckp1@ha
/* 000015E8 000016AC  83 C3 00 00 */	lwz r30, ckp1@l(r3)
/* 000015EC 000016B0  48 00 00 0C */	b .L_000015F8
.L_000015F0:
/* 000015F0 000016B4  3C 60 00 00 */	lis r3, ckpw@ha
/* 000015F4 000016B8  83 C3 00 00 */	lwz r30, ckpw@l(r3)
.L_000015F8:
/* 000015F8 000016BC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000015FC 000016C0  7F A3 EB 78 */	mr r3, r29
/* 00001600 000016C4  4B FF F7 89 */	bl evtGetFloat
/* 00001604 000016C8  D0 3E 00 00 */	stfs f1, 0x0(r30)
/* 00001608 000016CC  7F A3 EB 78 */	mr r3, r29
/* 0000160C 000016D0  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00001610 000016D4  4B FF F7 79 */	bl evtGetFloat
/* 00001614 000016D8  D0 3E 00 04 */	stfs f1, 0x4(r30)
/* 00001618 000016DC  7F A3 EB 78 */	mr r3, r29
/* 0000161C 000016E0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00001620 000016E4  4B FF F7 69 */	bl evtGetFloat
/* 00001624 000016E8  D0 3E 00 08 */	stfs f1, 0x8(r30)
/* 00001628 000016EC  7F A3 EB 78 */	mr r3, r29
/* 0000162C 000016F0  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00001630 000016F4  4B FF F7 59 */	bl evtGetFloat
/* 00001634 000016F8  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 00001638 000016FC  7F A3 EB 78 */	mr r3, r29
/* 0000163C 00001700  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 00001640 00001704  4B FF F7 49 */	bl evtGetFloat
/* 00001644 00001708  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 00001648 0000170C  7F A3 EB 78 */	mr r3, r29
/* 0000164C 00001710  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 00001650 00001714  4B FF F7 39 */	bl evtGetFloat
/* 00001654 00001718  D0 3E 00 14 */	stfs f1, 0x14(r30)
/* 00001658 0000171C  7F A3 EB 78 */	mr r3, r29
/* 0000165C 00001720  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 00001660 00001724  4B FF F7 29 */	bl evtGetFloat
/* 00001664 00001728  D0 3E 00 18 */	stfs f1, 0x18(r30)
/* 00001668 0000172C  7F A3 EB 78 */	mr r3, r29
/* 0000166C 00001730  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 00001670 00001734  4B FF F7 19 */	bl evtGetFloat
/* 00001674 00001738  D0 3E 00 1C */	stfs f1, 0x1c(r30)
/* 00001678 0000173C  38 60 00 02 */	li r3, 0x2
/* 0000167C 00001740  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00001680 00001744  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001684 00001748  7C 08 03 A6 */	mtlr r0
/* 00001688 0000174C  38 21 00 20 */	addi r1, r1, 0x20
/* 0000168C 00001750  4E 80 00 20 */	blr
.endfn cam_kaiten_set_para

# .text:0xF4 | 0x1690 | size: 0xF4
.fn cam_kaiten_get_para, local
/* 00001690 00001754  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001694 00001758  7C 08 02 A6 */	mflr r0
/* 00001698 0000175C  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000169C 00001760  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000016A0 00001764  7C 7D 1B 78 */	mr r29, r3
/* 000016A4 00001768  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000016A8 0000176C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000016AC 00001770  4B FF F6 DD */	bl evtGetValue
/* 000016B0 00001774  2C 03 00 01 */	cmpwi r3, 0x1
/* 000016B4 00001778  41 82 00 24 */	beq .L_000016D8
/* 000016B8 0000177C  40 80 00 2C */	bge .L_000016E4
/* 000016BC 00001780  2C 03 00 00 */	cmpwi r3, 0x0
/* 000016C0 00001784  40 80 00 0C */	bge .L_000016CC
/* 000016C4 00001788  48 00 00 20 */	b .L_000016E4
/* 000016C8 0000178C  48 00 00 1C */	b .L_000016E4
.L_000016CC:
/* 000016CC 00001790  3C 60 00 00 */	lis r3, ckp0@ha
/* 000016D0 00001794  83 C3 00 00 */	lwz r30, ckp0@l(r3)
/* 000016D4 00001798  48 00 00 18 */	b .L_000016EC
.L_000016D8:
/* 000016D8 0000179C  3C 60 00 00 */	lis r3, ckp1@ha
/* 000016DC 000017A0  83 C3 00 00 */	lwz r30, ckp1@l(r3)
/* 000016E0 000017A4  48 00 00 0C */	b .L_000016EC
.L_000016E4:
/* 000016E4 000017A8  3C 60 00 00 */	lis r3, ckpw@ha
/* 000016E8 000017AC  83 C3 00 00 */	lwz r30, ckpw@l(r3)
.L_000016EC:
/* 000016EC 000017B0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000016F0 000017B4  7F A3 EB 78 */	mr r3, r29
/* 000016F4 000017B8  C0 3E 00 00 */	lfs f1, 0x0(r30)
/* 000016F8 000017BC  4B FF F6 91 */	bl evtSetFloat
/* 000016FC 000017C0  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00001700 000017C4  7F A3 EB 78 */	mr r3, r29
/* 00001704 000017C8  C0 3E 00 04 */	lfs f1, 0x4(r30)
/* 00001708 000017CC  4B FF F6 81 */	bl evtSetFloat
/* 0000170C 000017D0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00001710 000017D4  7F A3 EB 78 */	mr r3, r29
/* 00001714 000017D8  C0 3E 00 08 */	lfs f1, 0x8(r30)
/* 00001718 000017DC  4B FF F6 71 */	bl evtSetFloat
/* 0000171C 000017E0  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00001720 000017E4  7F A3 EB 78 */	mr r3, r29
/* 00001724 000017E8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 00001728 000017EC  4B FF F6 61 */	bl evtSetFloat
/* 0000172C 000017F0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 00001730 000017F4  7F A3 EB 78 */	mr r3, r29
/* 00001734 000017F8  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 00001738 000017FC  4B FF F6 51 */	bl evtSetFloat
/* 0000173C 00001800  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 00001740 00001804  7F A3 EB 78 */	mr r3, r29
/* 00001744 00001808  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 00001748 0000180C  4B FF F6 41 */	bl evtSetFloat
/* 0000174C 00001810  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 00001750 00001814  7F A3 EB 78 */	mr r3, r29
/* 00001754 00001818  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 00001758 0000181C  4B FF F6 31 */	bl evtSetFloat
/* 0000175C 00001820  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 00001760 00001824  7F A3 EB 78 */	mr r3, r29
/* 00001764 00001828  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 00001768 0000182C  4B FF F6 21 */	bl evtSetFloat
/* 0000176C 00001830  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00001770 00001834  38 60 00 02 */	li r3, 0x2
/* 00001774 00001838  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001778 0000183C  7C 08 03 A6 */	mtlr r0
/* 0000177C 00001840  38 21 00 20 */	addi r1, r1, 0x20
/* 00001780 00001844  4E 80 00 20 */	blr
.endfn cam_kaiten_get_para

# .text:0x1E8 | 0x1784 | size: 0x174
.fn cam_kaiten_set_direct, local
/* 00001784 00001848  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001788 0000184C  7C 08 02 A6 */	mflr r0
/* 0000178C 00001850  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001790 00001854  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 00001794 00001858  F3 E1 00 18 */	psq_st f31, 0x18(r1), 0, qr0
/* 00001798 0000185C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 0000179C 00001860  38 60 00 04 */	li r3, 0x4
/* 000017A0 00001864  4B FF F5 E9 */	bl camGetPtr
/* 000017A4 00001868  3C 80 00 00 */	lis r4, ckpw@ha
/* 000017A8 0000186C  3C C0 00 00 */	lis r6, float_6p2832_win_00005570@ha
/* 000017AC 00001870  38 A4 00 00 */	addi r5, r4, ckpw@l
/* 000017B0 00001874  C0 46 00 00 */	lfs f2, float_6p2832_win_00005570@l(r6)
/* 000017B4 00001878  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 000017B8 0000187C  3C 80 00 00 */	lis r4, float_360_win_00005574@ha
/* 000017BC 00001880  C0 04 00 00 */	lfs f0, float_360_win_00005574@l(r4)
/* 000017C0 00001884  7C 7F 1B 78 */	mr r31, r3
/* 000017C4 00001888  C0 25 00 18 */	lfs f1, 0x18(r5)
/* 000017C8 0000188C  EC 22 00 72 */	fmuls f1, f2, f1
/* 000017CC 00001890  EC 21 00 24 */	fdivs f1, f1, f0
/* 000017D0 00001894  4B FF F5 B9 */	bl sin
/* 000017D4 00001898  3C 60 00 00 */	lis r3, ckpw@ha
/* 000017D8 0000189C  3C A0 00 00 */	lis r5, float_6p2832_win_00005570@ha
/* 000017DC 000018A0  38 83 00 00 */	addi r4, r3, ckpw@l
/* 000017E0 000018A4  C0 65 00 00 */	lfs f3, float_6p2832_win_00005570@l(r5)
/* 000017E4 000018A8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000017E8 000018AC  3C 60 00 00 */	lis r3, float_360_win_00005574@ha
/* 000017EC 000018B0  FF E0 08 18 */	frsp f31, f1
/* 000017F0 000018B4  C0 03 00 00 */	lfs f0, float_360_win_00005574@l(r3)
/* 000017F4 000018B8  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 000017F8 000018BC  EC 23 00 B2 */	fmuls f1, f3, f2
/* 000017FC 000018C0  EC 21 00 24 */	fdivs f1, f1, f0
/* 00001800 000018C4  4B FF F5 89 */	bl cos
/* 00001804 000018C8  3C 80 00 00 */	lis r4, ckpw@ha
/* 00001808 000018CC  3C 60 00 00 */	lis r3, gp@ha
/* 0000180C 000018D0  39 44 00 00 */	addi r10, r4, ckpw@l
/* 00001810 000018D4  FC 40 08 18 */	frsp f2, f1
/* 00001814 000018D8  80 EA 00 00 */	lwz r7, 0x0(r10)
/* 00001818 000018DC  38 C3 00 00 */	addi r6, r3, gp@l
/* 0000181C 000018E0  38 A0 00 00 */	li r5, 0x0
/* 00001820 000018E4  38 80 00 03 */	li r4, 0x3
/* 00001824 000018E8  C0 27 00 1C */	lfs f1, 0x1c(r7)
/* 00001828 000018EC  C0 07 00 0C */	lfs f0, 0xc(r7)
/* 0000182C 000018F0  38 00 00 0B */	li r0, 0xb
/* 00001830 000018F4  38 60 00 02 */	li r3, 0x2
/* 00001834 000018F8  EC 01 07 FA */	fmadds f0, f1, f31, f0
/* 00001838 000018FC  D0 07 00 00 */	stfs f0, 0x0(r7)
/* 0000183C 00001900  80 EA 00 00 */	lwz r7, 0x0(r10)
/* 00001840 00001904  C0 27 00 1C */	lfs f1, 0x1c(r7)
/* 00001844 00001908  C0 07 00 14 */	lfs f0, 0x14(r7)
/* 00001848 0000190C  EC 01 00 BC */	fnmsubs f0, f1, f2, f0
/* 0000184C 00001910  D0 07 00 08 */	stfs f0, 0x8(r7)
/* 00001850 00001914  81 1F 00 0C */	lwz r8, 0xc(r31)
/* 00001854 00001918  80 FF 00 10 */	lwz r7, 0x10(r31)
/* 00001858 0000191C  91 1F 00 58 */	stw r8, 0x58(r31)
/* 0000185C 00001920  90 FF 00 5C */	stw r7, 0x5c(r31)
/* 00001860 00001924  80 FF 00 14 */	lwz r7, 0x14(r31)
/* 00001864 00001928  90 FF 00 60 */	stw r7, 0x60(r31)
/* 00001868 0000192C  81 1F 00 18 */	lwz r8, 0x18(r31)
/* 0000186C 00001930  80 FF 00 1C */	lwz r7, 0x1c(r31)
/* 00001870 00001934  91 1F 00 64 */	stw r8, 0x64(r31)
/* 00001874 00001938  90 FF 00 68 */	stw r7, 0x68(r31)
/* 00001878 0000193C  80 FF 00 20 */	lwz r7, 0x20(r31)
/* 0000187C 00001940  90 FF 00 6C */	stw r7, 0x6c(r31)
/* 00001880 00001944  81 2A 00 00 */	lwz r9, 0x0(r10)
/* 00001884 00001948  81 09 00 00 */	lwz r8, 0x0(r9)
/* 00001888 0000194C  80 E9 00 04 */	lwz r7, 0x4(r9)
/* 0000188C 00001950  91 1F 00 40 */	stw r8, 0x40(r31)
/* 00001890 00001954  90 FF 00 44 */	stw r7, 0x44(r31)
/* 00001894 00001958  80 E9 00 08 */	lwz r7, 0x8(r9)
/* 00001898 0000195C  90 FF 00 48 */	stw r7, 0x48(r31)
/* 0000189C 00001960  81 2A 00 00 */	lwz r9, 0x0(r10)
/* 000018A0 00001964  81 09 00 0C */	lwz r8, 0xc(r9)
/* 000018A4 00001968  80 E9 00 10 */	lwz r7, 0x10(r9)
/* 000018A8 0000196C  91 1F 00 4C */	stw r8, 0x4c(r31)
/* 000018AC 00001970  90 FF 00 50 */	stw r7, 0x50(r31)
/* 000018B0 00001974  80 E9 00 14 */	lwz r7, 0x14(r9)
/* 000018B4 00001978  90 FF 00 54 */	stw r7, 0x54(r31)
/* 000018B8 0000197C  80 E6 00 00 */	lwz r7, 0x0(r6)
/* 000018BC 00001980  80 C7 00 38 */	lwz r6, 0x38(r7)
/* 000018C0 00001984  80 E7 00 3C */	lwz r7, 0x3c(r7)
/* 000018C4 00001988  90 FF 00 74 */	stw r7, 0x74(r31)
/* 000018C8 0000198C  90 DF 00 70 */	stw r6, 0x70(r31)
/* 000018CC 00001990  90 BF 00 7C */	stw r5, 0x7c(r31)
/* 000018D0 00001994  90 BF 00 78 */	stw r5, 0x78(r31)
/* 000018D4 00001998  B0 9F 00 04 */	sth r4, 0x4(r31)
/* 000018D8 0000199C  98 1F 00 80 */	stb r0, 0x80(r31)
/* 000018DC 000019A0  E3 E1 00 18 */	psq_l f31, 0x18(r1), 0, qr0
/* 000018E0 000019A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000018E4 000019A8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 000018E8 000019AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000018EC 000019B0  7C 08 03 A6 */	mtlr r0
/* 000018F0 000019B4  38 21 00 20 */	addi r1, r1, 0x20
/* 000018F4 000019B8  4E 80 00 20 */	blr
.endfn cam_kaiten_set_direct

# .text:0x35C | 0x18F8 | size: 0x3D4
.fn cam_kaiten_init, local
/* 000018F8 000019BC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 000018FC 000019C0  7C 08 02 A6 */	mflr r0
/* 00001900 000019C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 00001904 000019C8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 00001908 000019CC  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 0000190C 000019D0  BF C1 00 28 */	stmw r30, 0x28(r1)
/* 00001910 000019D4  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 00001914 000019D8  7C 7E 1B 78 */	mr r30, r3
/* 00001918 000019DC  38 64 00 00 */	addi r3, r4, mapalloc_base_ptr@l
/* 0000191C 000019E0  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 00001920 000019E4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00001924 000019E8  38 80 00 20 */	li r4, 0x20
/* 00001928 000019EC  4B FF F4 61 */	bl _mapAlloc
/* 0000192C 000019F0  3C A0 00 00 */	lis r5, ckp0@ha
/* 00001930 000019F4  38 80 00 00 */	li r4, 0x0
/* 00001934 000019F8  38 C5 00 00 */	addi r6, r5, ckp0@l
/* 00001938 000019FC  38 A0 00 20 */	li r5, 0x20
/* 0000193C 00001A00  90 66 00 00 */	stw r3, 0x0(r6)
/* 00001940 00001A04  4B FF F4 49 */	bl memset
/* 00001944 00001A08  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 00001948 00001A0C  38 80 00 20 */	li r4, 0x20
/* 0000194C 00001A10  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 00001950 00001A14  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00001954 00001A18  4B FF F4 35 */	bl _mapAlloc
/* 00001958 00001A1C  3C A0 00 00 */	lis r5, ckp1@ha
/* 0000195C 00001A20  38 80 00 00 */	li r4, 0x0
/* 00001960 00001A24  38 C5 00 00 */	addi r6, r5, ckp1@l
/* 00001964 00001A28  38 A0 00 20 */	li r5, 0x20
/* 00001968 00001A2C  90 66 00 00 */	stw r3, 0x0(r6)
/* 0000196C 00001A30  4B FF F4 1D */	bl memset
/* 00001970 00001A34  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 00001974 00001A38  38 80 00 20 */	li r4, 0x20
/* 00001978 00001A3C  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000197C 00001A40  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00001980 00001A44  4B FF F4 09 */	bl _mapAlloc
/* 00001984 00001A48  3C 80 00 00 */	lis r4, ckpw@ha
/* 00001988 00001A4C  3C A0 00 00 */	lis r5, ckp1@ha
/* 0000198C 00001A50  38 C4 00 00 */	addi r6, r4, ckpw@l
/* 00001990 00001A54  90 66 00 00 */	stw r3, 0x0(r6)
/* 00001994 00001A58  38 80 00 00 */	li r4, 0x0
/* 00001998 00001A5C  80 65 00 00 */	lwz r3, ckp1@l(r5)
/* 0000199C 00001A60  38 A0 00 20 */	li r5, 0x20
/* 000019A0 00001A64  4B FF F3 E9 */	bl memset
/* 000019A4 00001A68  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000019A8 00001A6C  7F C3 F3 78 */	mr r3, r30
/* 000019AC 00001A70  4B FF F3 DD */	bl evtGetFloat
/* 000019B0 00001A74  3C 80 00 00 */	lis r4, ckp0@ha
/* 000019B4 00001A78  7F C3 F3 78 */	mr r3, r30
/* 000019B8 00001A7C  38 84 00 00 */	addi r4, r4, ckp0@l
/* 000019BC 00001A80  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000019C0 00001A84  D0 24 00 00 */	stfs f1, 0x0(r4)
/* 000019C4 00001A88  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000019C8 00001A8C  4B FF F3 C1 */	bl evtGetFloat
/* 000019CC 00001A90  3C 80 00 00 */	lis r4, ckp0@ha
/* 000019D0 00001A94  7F C3 F3 78 */	mr r3, r30
/* 000019D4 00001A98  38 84 00 00 */	addi r4, r4, ckp0@l
/* 000019D8 00001A9C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000019DC 00001AA0  D0 24 00 04 */	stfs f1, 0x4(r4)
/* 000019E0 00001AA4  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000019E4 00001AA8  4B FF F3 A5 */	bl evtGetFloat
/* 000019E8 00001AAC  3C 80 00 00 */	lis r4, ckp0@ha
/* 000019EC 00001AB0  7F C3 F3 78 */	mr r3, r30
/* 000019F0 00001AB4  38 84 00 00 */	addi r4, r4, ckp0@l
/* 000019F4 00001AB8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000019F8 00001ABC  D0 24 00 08 */	stfs f1, 0x8(r4)
/* 000019FC 00001AC0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00001A00 00001AC4  4B FF F3 89 */	bl evtGetFloat
/* 00001A04 00001AC8  3C 80 00 00 */	lis r4, ckp0@ha
/* 00001A08 00001ACC  7F C3 F3 78 */	mr r3, r30
/* 00001A0C 00001AD0  38 84 00 00 */	addi r4, r4, ckp0@l
/* 00001A10 00001AD4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001A14 00001AD8  D0 24 00 0C */	stfs f1, 0xc(r4)
/* 00001A18 00001ADC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00001A1C 00001AE0  4B FF F3 6D */	bl evtGetFloat
/* 00001A20 00001AE4  3C 80 00 00 */	lis r4, ckp0@ha
/* 00001A24 00001AE8  7F C3 F3 78 */	mr r3, r30
/* 00001A28 00001AEC  38 84 00 00 */	addi r4, r4, ckp0@l
/* 00001A2C 00001AF0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001A30 00001AF4  D0 24 00 10 */	stfs f1, 0x10(r4)
/* 00001A34 00001AF8  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 00001A38 00001AFC  4B FF F3 51 */	bl evtGetFloat
/* 00001A3C 00001B00  3C 80 00 00 */	lis r4, ckp0@ha
/* 00001A40 00001B04  7F C3 F3 78 */	mr r3, r30
/* 00001A44 00001B08  38 84 00 00 */	addi r4, r4, ckp0@l
/* 00001A48 00001B0C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001A4C 00001B10  D0 24 00 14 */	stfs f1, 0x14(r4)
/* 00001A50 00001B14  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 00001A54 00001B18  4B FF F3 35 */	bl evtGetFloat
/* 00001A58 00001B1C  3C 80 00 00 */	lis r4, ckp1@ha
/* 00001A5C 00001B20  7F C3 F3 78 */	mr r3, r30
/* 00001A60 00001B24  38 84 00 00 */	addi r4, r4, ckp1@l
/* 00001A64 00001B28  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001A68 00001B2C  D0 24 00 00 */	stfs f1, 0x0(r4)
/* 00001A6C 00001B30  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 00001A70 00001B34  4B FF F3 19 */	bl evtGetFloat
/* 00001A74 00001B38  3C 80 00 00 */	lis r4, ckp1@ha
/* 00001A78 00001B3C  7F C3 F3 78 */	mr r3, r30
/* 00001A7C 00001B40  38 84 00 00 */	addi r4, r4, ckp1@l
/* 00001A80 00001B44  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001A84 00001B48  D0 24 00 04 */	stfs f1, 0x4(r4)
/* 00001A88 00001B4C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 00001A8C 00001B50  4B FF F2 FD */	bl evtGetFloat
/* 00001A90 00001B54  3C 80 00 00 */	lis r4, ckp1@ha
/* 00001A94 00001B58  7F C3 F3 78 */	mr r3, r30
/* 00001A98 00001B5C  38 84 00 00 */	addi r4, r4, ckp1@l
/* 00001A9C 00001B60  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001AA0 00001B64  D0 24 00 08 */	stfs f1, 0x8(r4)
/* 00001AA4 00001B68  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 00001AA8 00001B6C  4B FF F2 E1 */	bl evtGetFloat
/* 00001AAC 00001B70  3C 80 00 00 */	lis r4, ckp1@ha
/* 00001AB0 00001B74  7F C3 F3 78 */	mr r3, r30
/* 00001AB4 00001B78  38 84 00 00 */	addi r4, r4, ckp1@l
/* 00001AB8 00001B7C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001ABC 00001B80  D0 24 00 0C */	stfs f1, 0xc(r4)
/* 00001AC0 00001B84  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 00001AC4 00001B88  4B FF F2 C5 */	bl evtGetFloat
/* 00001AC8 00001B8C  3C 80 00 00 */	lis r4, ckp1@ha
/* 00001ACC 00001B90  7F C3 F3 78 */	mr r3, r30
/* 00001AD0 00001B94  38 84 00 00 */	addi r4, r4, ckp1@l
/* 00001AD4 00001B98  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001AD8 00001B9C  D0 24 00 10 */	stfs f1, 0x10(r4)
/* 00001ADC 00001BA0  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 00001AE0 00001BA4  4B FF F2 A9 */	bl evtGetFloat
/* 00001AE4 00001BA8  3C 60 00 00 */	lis r3, ckp1@ha
/* 00001AE8 00001BAC  3C 80 00 00 */	lis r4, ckp0@ha
/* 00001AEC 00001BB0  38 A3 00 00 */	addi r5, r3, ckp1@l
/* 00001AF0 00001BB4  80 C5 00 00 */	lwz r6, 0x0(r5)
/* 00001AF4 00001BB8  38 A4 00 00 */	addi r5, r4, ckp0@l
/* 00001AF8 00001BBC  3C 60 00 00 */	lis r3, zero_win_00005578@ha
/* 00001AFC 00001BC0  38 81 00 14 */	addi r4, r1, 0x14
/* 00001B00 00001BC4  D0 26 00 14 */	stfs f1, 0x14(r6)
/* 00001B04 00001BC8  C0 03 00 00 */	lfs f0, zero_win_00005578@l(r3)
/* 00001B08 00001BCC  38 61 00 08 */	addi r3, r1, 0x8
/* 00001B0C 00001BD0  80 C5 00 00 */	lwz r6, 0x0(r5)
/* 00001B10 00001BD4  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 00001B14 00001BD8  80 06 00 04 */	lwz r0, 0x4(r6)
/* 00001B18 00001BDC  90 A1 00 08 */	stw r5, 0x8(r1)
/* 00001B1C 00001BE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 00001B20 00001BE4  80 06 00 08 */	lwz r0, 0x8(r6)
/* 00001B24 00001BE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 00001B28 00001BEC  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 00001B2C 00001BF0  80 06 00 10 */	lwz r0, 0x10(r6)
/* 00001B30 00001BF4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 00001B34 00001BF8  90 01 00 18 */	stw r0, 0x18(r1)
/* 00001B38 00001BFC  80 06 00 14 */	lwz r0, 0x14(r6)
/* 00001B3C 00001C00  90 01 00 1C */	stw r0, 0x1c(r1)
/* 00001B40 00001C04  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 00001B44 00001C08  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 00001B48 00001C0C  4B FF F2 41 */	bl PSVECDistance
/* 00001B4C 00001C10  FF E0 08 90 */	fmr f31, f1
/* 00001B50 00001C14  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 00001B54 00001C18  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00001B58 00001C1C  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 00001B5C 00001C20  EC 01 00 28 */	fsubs f0, f1, f0
/* 00001B60 00001C24  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 00001B64 00001C28  EC 43 10 28 */	fsubs f2, f3, f2
/* 00001B68 00001C2C  FC 20 00 50 */	fneg f1, f0
/* 00001B6C 00001C30  4B FF F2 1D */	bl atan2
/* 00001B70 00001C34  3C 80 00 00 */	lis r4, float_rad2deg_win_0000557c@ha
/* 00001B74 00001C38  FC 20 08 18 */	frsp f1, f1
/* 00001B78 00001C3C  C0 04 00 00 */	lfs f0, float_rad2deg_win_0000557c@l(r4)
/* 00001B7C 00001C40  3C 60 00 00 */	lis r3, ckp0@ha
/* 00001B80 00001C44  38 E3 00 00 */	addi r7, r3, ckp0@l
/* 00001B84 00001C48  3C 80 00 00 */	lis r4, ckp1@ha
/* 00001B88 00001C4C  EC 20 00 72 */	fmuls f1, f0, f1
/* 00001B8C 00001C50  80 C7 00 00 */	lwz r6, 0x0(r7)
/* 00001B90 00001C54  38 A4 00 00 */	addi r5, r4, ckp1@l
/* 00001B94 00001C58  3C 60 00 00 */	lis r3, zero_win_00005578@ha
/* 00001B98 00001C5C  38 81 00 14 */	addi r4, r1, 0x14
/* 00001B9C 00001C60  D0 26 00 18 */	stfs f1, 0x18(r6)
/* 00001BA0 00001C64  C0 03 00 00 */	lfs f0, zero_win_00005578@l(r3)
/* 00001BA4 00001C68  38 61 00 08 */	addi r3, r1, 0x8
/* 00001BA8 00001C6C  80 C7 00 00 */	lwz r6, 0x0(r7)
/* 00001BAC 00001C70  D3 E6 00 1C */	stfs f31, 0x1c(r6)
/* 00001BB0 00001C74  80 C5 00 00 */	lwz r6, 0x0(r5)
/* 00001BB4 00001C78  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 00001BB8 00001C7C  80 06 00 04 */	lwz r0, 0x4(r6)
/* 00001BBC 00001C80  90 A1 00 08 */	stw r5, 0x8(r1)
/* 00001BC0 00001C84  90 01 00 0C */	stw r0, 0xc(r1)
/* 00001BC4 00001C88  80 06 00 08 */	lwz r0, 0x8(r6)
/* 00001BC8 00001C8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 00001BCC 00001C90  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 00001BD0 00001C94  80 06 00 10 */	lwz r0, 0x10(r6)
/* 00001BD4 00001C98  90 A1 00 14 */	stw r5, 0x14(r1)
/* 00001BD8 00001C9C  90 01 00 18 */	stw r0, 0x18(r1)
/* 00001BDC 00001CA0  80 06 00 14 */	lwz r0, 0x14(r6)
/* 00001BE0 00001CA4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 00001BE4 00001CA8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 00001BE8 00001CAC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 00001BEC 00001CB0  4B FF F1 9D */	bl PSVECDistance
/* 00001BF0 00001CB4  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 00001BF4 00001CB8  FF E0 08 90 */	fmr f31, f1
/* 00001BF8 00001CBC  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00001BFC 00001CC0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 00001C00 00001CC4  EC 62 00 28 */	fsubs f3, f2, f0
/* 00001C04 00001CC8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00001C08 00001CCC  EC 41 00 28 */	fsubs f2, f1, f0
/* 00001C0C 00001CD0  FC 20 18 50 */	fneg f1, f3
/* 00001C10 00001CD4  4B FF F1 79 */	bl atan2
/* 00001C14 00001CD8  3C 80 00 00 */	lis r4, float_rad2deg_win_0000557c@ha
/* 00001C18 00001CDC  FC 20 08 18 */	frsp f1, f1
/* 00001C1C 00001CE0  C0 04 00 00 */	lfs f0, float_rad2deg_win_0000557c@l(r4)
/* 00001C20 00001CE4  3C 60 00 00 */	lis r3, ckp1@ha
/* 00001C24 00001CE8  38 C3 00 00 */	addi r6, r3, ckp1@l
/* 00001C28 00001CEC  3C 80 00 00 */	lis r4, ckp0@ha
/* 00001C2C 00001CF0  EC 00 00 72 */	fmuls f0, f0, f1
/* 00001C30 00001CF4  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 00001C34 00001CF8  3C 60 00 00 */	lis r3, ckpw@ha
/* 00001C38 00001CFC  38 E3 00 00 */	addi r7, r3, ckpw@l
/* 00001C3C 00001D00  39 04 00 00 */	addi r8, r4, ckp0@l
/* 00001C40 00001D04  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 00001C44 00001D08  38 60 00 02 */	li r3, 0x2
/* 00001C48 00001D0C  80 86 00 00 */	lwz r4, 0x0(r6)
/* 00001C4C 00001D10  D3 E4 00 1C */	stfs f31, 0x1c(r4)
/* 00001C50 00001D14  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 00001C54 00001D18  80 A7 00 00 */	lwz r5, 0x0(r7)
/* 00001C58 00001D1C  80 86 00 00 */	lwz r4, 0x0(r6)
/* 00001C5C 00001D20  80 06 00 04 */	lwz r0, 0x4(r6)
/* 00001C60 00001D24  90 85 00 00 */	stw r4, 0x0(r5)
/* 00001C64 00001D28  90 05 00 04 */	stw r0, 0x4(r5)
/* 00001C68 00001D2C  80 06 00 08 */	lwz r0, 0x8(r6)
/* 00001C6C 00001D30  90 05 00 08 */	stw r0, 0x8(r5)
/* 00001C70 00001D34  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 00001C74 00001D38  80 A7 00 00 */	lwz r5, 0x0(r7)
/* 00001C78 00001D3C  80 86 00 0C */	lwz r4, 0xc(r6)
/* 00001C7C 00001D40  80 06 00 10 */	lwz r0, 0x10(r6)
/* 00001C80 00001D44  90 85 00 0C */	stw r4, 0xc(r5)
/* 00001C84 00001D48  90 05 00 10 */	stw r0, 0x10(r5)
/* 00001C88 00001D4C  80 06 00 14 */	lwz r0, 0x14(r6)
/* 00001C8C 00001D50  90 05 00 14 */	stw r0, 0x14(r5)
/* 00001C90 00001D54  80 A8 00 00 */	lwz r5, 0x0(r8)
/* 00001C94 00001D58  80 87 00 00 */	lwz r4, 0x0(r7)
/* 00001C98 00001D5C  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 00001C9C 00001D60  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 00001CA0 00001D64  80 A8 00 00 */	lwz r5, 0x0(r8)
/* 00001CA4 00001D68  80 87 00 00 */	lwz r4, 0x0(r7)
/* 00001CA8 00001D6C  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 00001CAC 00001D70  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 00001CB0 00001D74  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 00001CB4 00001D78  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 00001CB8 00001D7C  BB C1 00 28 */	lmw r30, 0x28(r1)
/* 00001CBC 00001D80  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00001CC0 00001D84  7C 08 03 A6 */	mtlr r0
/* 00001CC4 00001D88  38 21 00 40 */	addi r1, r1, 0x40
/* 00001CC8 00001D8C  4E 80 00 20 */	blr
.endfn cam_kaiten_init

# .text:0x730 | 0x1CCC | size: 0x44
.fn camps25, local
/* 00001CCC 00001D90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001CD0 00001D94  7C 08 02 A6 */	mflr r0
/* 00001CD4 00001D98  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001CD8 00001D9C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 00001CDC 00001DA0  F3 E1 00 18 */	psq_st f31, 0x18(r1), 0, qr0
/* 00001CE0 00001DA4  3C 80 00 00 */	lis r4, float_25_win_00005580@ha
/* 00001CE4 00001DA8  38 60 00 04 */	li r3, 0x4
/* 00001CE8 00001DAC  C3 E4 00 00 */	lfs f31, float_25_win_00005580@l(r4)
/* 00001CEC 00001DB0  4B FF F0 9D */	bl camGetPtr
/* 00001CF0 00001DB4  D3 E3 00 38 */	stfs f31, 0x38(r3)
/* 00001CF4 00001DB8  38 60 00 02 */	li r3, 0x2
/* 00001CF8 00001DBC  E3 E1 00 18 */	psq_l f31, 0x18(r1), 0, qr0
/* 00001CFC 00001DC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001D00 00001DC4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 00001D04 00001DC8  7C 08 03 A6 */	mtlr r0
/* 00001D08 00001DCC  38 21 00 20 */	addi r1, r1, 0x20
/* 00001D0C 00001DD0  4E 80 00 20 */	blr
.endfn camps25

# .text:0x774 | 0x1D10 | size: 0x44
.fn camps30, local
/* 00001D10 00001DD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001D14 00001DD8  7C 08 02 A6 */	mflr r0
/* 00001D18 00001DDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001D1C 00001DE0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 00001D20 00001DE4  F3 E1 00 18 */	psq_st f31, 0x18(r1), 0, qr0
/* 00001D24 00001DE8  3C 80 00 00 */	lis r4, float_30_win_00005584@ha
/* 00001D28 00001DEC  38 60 00 04 */	li r3, 0x4
/* 00001D2C 00001DF0  C3 E4 00 00 */	lfs f31, float_30_win_00005584@l(r4)
/* 00001D30 00001DF4  4B FF F0 59 */	bl camGetPtr
/* 00001D34 00001DF8  D3 E3 00 38 */	stfs f31, 0x38(r3)
/* 00001D38 00001DFC  38 60 00 02 */	li r3, 0x2
/* 00001D3C 00001E00  E3 E1 00 18 */	psq_l f31, 0x18(r1), 0, qr0
/* 00001D40 00001E04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001D44 00001E08  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 00001D48 00001E0C  7C 08 03 A6 */	mtlr r0
/* 00001D4C 00001E10  38 21 00 20 */	addi r1, r1, 0x20
/* 00001D50 00001E14  4E 80 00 20 */	blr
.endfn camps30

# 0x00001D70..0x00001E40 | size: 0xD0
.rodata
.balign 8

# .rodata:0x0 | 0x1D70 | size: 0x7
.obj str_dokan1_win_000054b8, local
	.string "dokan1"
.endobj str_dokan1_win_000054b8

# .rodata:0x7 | 0x1D77 | size: 0x1
.obj gap_03_00001D77_rodata, global
.hidden gap_03_00001D77_rodata
	.byte 0x00
.endobj gap_03_00001D77_rodata

# .rodata:0x8 | 0x1D78 | size: 0x7
.obj str_tik_03_win_000054c0, local
	.string "tik_03"
.endobj str_tik_03_win_000054c0

# .rodata:0xF | 0x1D7F | size: 0x1
.obj gap_03_00001D7F_rodata, global
.hidden gap_03_00001D7F_rodata
	.byte 0x00
.endobj gap_03_00001D7F_rodata

# .rodata:0x10 | 0x1D80 | size: 0x6
.obj str_dokan_win_000054c8, local
	.string "dokan"
.endobj str_dokan_win_000054c8

# .rodata:0x16 | 0x1D86 | size: 0x2
.obj gap_03_00001D86_rodata, global
.hidden gap_03_00001D86_rodata
	.2byte 0x0000
.endobj gap_03_00001D86_rodata

# .rodata:0x18 | 0x1D88 | size: 0x7
.obj str_e_bero_win_000054d0, local
	.string "e_bero"
.endobj str_e_bero_win_000054d0

# .rodata:0x1F | 0x1D8F | size: 0x1
.obj gap_03_00001D8F_rodata, global
.hidden gap_03_00001D8F_rodata
	.byte 0x00
.endobj gap_03_00001D8F_rodata

# .rodata:0x20 | 0x1D90 | size: 0x7
.obj str_win_00_win_000054d8, local
	.string "win_00"
.endobj str_win_00_win_000054d8

# .rodata:0x27 | 0x1D97 | size: 0x1
.obj gap_03_00001D97_rodata, global
.hidden gap_03_00001D97_rodata
	.byte 0x00
.endobj gap_03_00001D97_rodata

# .rodata:0x28 | 0x1D98 | size: 0x7
.obj str_w_bero_win_000054e0, local
	.string "w_bero"
.endobj str_w_bero_win_000054e0

# .rodata:0x2F | 0x1D9F | size: 0x1
.obj gap_03_00001D9F_rodata, global
.hidden gap_03_00001D9F_rodata
	.byte 0x00
.endobj gap_03_00001D9F_rodata

# .rodata:0x30 | 0x1DA0 | size: 0x13
.obj str_stg2_win_e01_00_00_win_000054e8, local
	.string "stg2_win_e01_00_00"
.endobj str_stg2_win_e01_00_00_win_000054e8

# .rodata:0x43 | 0x1DB3 | size: 0x1
.obj gap_03_00001DB3_rodata, global
.hidden gap_03_00001DB3_rodata
	.byte 0x00
.endobj gap_03_00001DB3_rodata

# .rodata:0x44 | 0x1DB4 | size: 0x10
.obj str_stg2_win_e00_00_win_000054fc, local
	.string "stg2_win_e00_00"
.endobj str_stg2_win_e00_00_win_000054fc

# .rodata:0x54 | 0x1DC4 | size: 0x9
.obj str_extparty_win_0000550c, local
	.string "extparty"
.endobj str_extparty_win_0000550c

# .rodata:0x5D | 0x1DCD | size: 0x3
.obj gap_03_00001DCD_rodata, global
.hidden gap_03_00001DCD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001DCD_rodata

# .rodata:0x60 | 0x1DD0 | size: 0xE
.obj str_ENV_STG2_WIN1_win_00005518, local
	.string "ENV_STG2_WIN1"
.endobj str_ENV_STG2_WIN1_win_00005518

# .rodata:0x6E | 0x1DDE | size: 0x2
.obj gap_03_00001DDE_rodata, global
.hidden gap_03_00001DDE_rodata
	.2byte 0x0000
.endobj gap_03_00001DDE_rodata

# .rodata:0x70 | 0x1DE0 | size: 0xE
.obj str_BGM_STG2_WIN1_win_00005528, local
	.string "BGM_STG2_WIN1"
.endobj str_BGM_STG2_WIN1_win_00005528

# .rodata:0x7E | 0x1DEE | size: 0x2
.obj gap_03_00001DEE_rodata, global
.hidden gap_03_00001DEE_rodata
	.2byte 0x0000
.endobj gap_03_00001DEE_rodata

# .rodata:0x80 | 0x1DF0 | size: 0xB
.obj str_S_tree_mki_win_00005538, local
	.string "S_tree_mki"
.endobj str_S_tree_mki_win_00005538

# .rodata:0x8B | 0x1DFB | size: 0x1
.obj gap_03_00001DFB_rodata, global
.hidden gap_03_00001DFB_rodata
	.byte 0x00
.endobj gap_03_00001DFB_rodata

# .rodata:0x8C | 0x1DFC | size: 0x7
.obj str_S_kusa_win_00005544, local
	.string "S_kusa"
.endobj str_S_kusa_win_00005544

# .rodata:0x93 | 0x1E03 | size: 0x1
.obj gap_03_00001E03_rodata, global
.hidden gap_03_00001E03_rodata
	.byte 0x00
.endobj gap_03_00001E03_rodata

# .rodata:0x94 | 0x1E04 | size: 0x8
.obj str_group22_win_0000554c, local
	.string "group22"
.endobj str_group22_win_0000554c

# .rodata:0x9C | 0x1E0C | size: 0xD
.obj str_S_oku_01H081_win_00005554, local
	.string "S_oku_01H081"
.endobj str_S_oku_01H081_win_00005554

# .rodata:0xA9 | 0x1E19 | size: 0x3
.obj gap_03_00001E19_rodata, global
.hidden gap_03_00001E19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E19_rodata

# .rodata:0xAC | 0x1E1C | size: 0xA
.obj str_mobj_save_win_00005564, local
	.string "mobj_save"
.endobj str_mobj_save_win_00005564
	.2byte 0x0000

# .rodata:0xB8 | 0x1E28 | size: 0x4
.obj float_6p2832_win_00005570, local
	.float 6.2831855
.endobj float_6p2832_win_00005570

# .rodata:0xBC | 0x1E2C | size: 0x4
.obj float_360_win_00005574, local
	.float 360
.endobj float_360_win_00005574

# .rodata:0xC0 | 0x1E30 | size: 0x4
.obj zero_win_00005578, local
	.float 0
.endobj zero_win_00005578

# .rodata:0xC4 | 0x1E34 | size: 0x4
.obj float_rad2deg_win_0000557c, local
	.float 57.29579
.endobj float_rad2deg_win_0000557c

# .rodata:0xC8 | 0x1E38 | size: 0x4
.obj float_25_win_00005580, local
	.float 25
.endobj float_25_win_00005580

# .rodata:0xCC | 0x1E3C | size: 0x4
.obj float_30_win_00005584, local
	.float 30
.endobj float_30_win_00005584

# 0x00010220..0x000108E0 | size: 0x6C0
.data
.balign 8

# .data:0x0 | 0x10220 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x10228 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1022C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x10230 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x10234 | size: 0x4
.obj gap_04_00010234_data, global
.hidden gap_04_00010234_data
	.4byte 0x00000000
.endobj gap_04_00010234_data

# .data:0x18 | 0x10238 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x10240 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x10244 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x10248 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x10250 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x10254 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x10258 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1025C | size: 0x4
.obj gap_04_0001025C_data, global
.hidden gap_04_0001025C_data
	.4byte 0x00000000
.endobj gap_04_0001025C_data

# .data:0x40 | 0x10260 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x10268 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1026C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x10270 | size: 0x48
.obj first_evt_dokan, local
	.4byte 0x00020019
	.4byte 0xF5DE0180
	.4byte 0x00000046
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj first_evt_dokan

# .data:0x98 | 0x102B8 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_dokan1_win_000054b8
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte first_evt_dokan
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte str_tik_03_win_000054c0
	.4byte str_dokan_win_000054c8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_win_000054d0
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_win_00_win_000054d8
	.4byte str_w_bero_win_000054e0
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

# .data:0x14C | 0x1036C | size: 0x18
.obj welcome_wonderforest_init, local
	.4byte 0x0003005B
	.4byte evt_cam_letter_box_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj welcome_wonderforest_init

# .data:0x164 | 0x10384 | size: 0x410
.obj welcome_wonderforest, local
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
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00001388
	.4byte 0x0002005B
	.4byte evt_telop_entry
	.4byte 0x00000004
	.4byte 0x0000006D
	.4byte 0x0001005B
	.4byte camps30
	.4byte 0x000D005B
	.4byte cam_kaiten_init
	.4byte 0xFFFFFEA2
	.4byte 0x00000010
	.4byte 0x00000114
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x00000010
	.4byte 0x0000016E
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0x00000000
	.4byte 0x0001006C
	.4byte 0xFE363C87
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte cam_kaiten_set_direct
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x000A005B
	.4byte cam_kaiten_get_para
	.4byte 0x00000000
	.4byte 0xFBD3E280
	.4byte 0xFBD3E281
	.4byte 0xFBD3E282
	.4byte 0xFBD3E283
	.4byte 0xFBD3E284
	.4byte 0xFBD3E285
	.4byte 0xFE363C80
	.4byte 0xFBD3E287
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF2501A80
	.4byte 0x000A005B
	.4byte cam_kaiten_get_para
	.4byte 0x00000001
	.4byte 0xFBD3E280
	.4byte 0xFBD3E281
	.4byte 0xFBD3E282
	.4byte 0xFBD3E283
	.4byte 0xFBD3E284
	.4byte 0xFBD3E285
	.4byte 0xFE363C81
	.4byte 0xFBD3E287
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x0002003C
	.4byte 0xFE363C81
	.4byte 0xF24AA280
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00001D4C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte cam_kaiten_get_para
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C86
	.4byte 0xFE363C89
	.4byte 0x0002003D
	.4byte 0xFE363C86
	.4byte 0xF24AA280
	.4byte 0x000A005B
	.4byte cam_kaiten_set_para
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00001F40
	.4byte 0x0001005F
	.4byte 0xFE363C87
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000014
	.4byte 0x00000032
	.4byte 0x0000007D
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x00000028
	.4byte 0x0000007D
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0001005B
	.4byte camps25
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0xF24BEC80
	.4byte 0xF24FBD4C
	.4byte 0x00000000
	.4byte 0xF24AFC80
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_win_e01_00_00_win_000054e8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000055
	.4byte 0x0000007D
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e00_00_win_000054fc
	.4byte 0x00000000
	.4byte str_extparty_win_0000550c
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000047
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
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
	.4byte 0x0003005B
	.4byte evt_cam_letter_box_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj welcome_wonderforest

# .data:0x574 | 0x10794 | size: 0x148
.obj win_06_init_evt_28_data_10794, global
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000047
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_WIN1_win_00005518
	.4byte 0x0001000A
	.4byte 0x00002328
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000300
	.4byte str_BGM_STG2_WIN1_win_00005528
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_WIN1_win_00005528
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_WIN1_win_00005518
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_tree_mki_win_00005538
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kusa_win_00005544
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_group22_win_0000554c
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_oku_01H081_win_00005554
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000046
	.4byte 0x0001005E
	.4byte welcome_wonderforest_init
	.4byte 0x0001005C
	.4byte welcome_wonderforest
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_win_00005564
	.4byte 0x00000113
	.4byte 0x0000003C
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj win_06_init_evt_28_data_10794

# .data:0x6BC | 0x108DC | size: 0x4
.obj gap_04_000108DC_data, global
.hidden gap_04_000108DC_data
	.4byte 0x00000000
.endobj gap_04_000108DC_data

# 0x00000010..0x00000020 | size: 0x10
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x10 | size: 0x4
.obj ckpw, local
	.skip 0x4
.endobj ckpw

# .bss:0x4 | 0x14 | size: 0x4
.obj ckp1, local
	.skip 0x4
.endobj ckp1

# .bss:0x8 | 0x18 | size: 0x4
.obj ckp0, local
	.skip 0x4
.endobj ckp0

# .bss:0xC | 0x1C | size: 0x4
.obj gap_05_0000001C_bss, global
.hidden gap_05_0000001C_bss
	.skip 0x4
.endobj gap_05_0000001C_bss
