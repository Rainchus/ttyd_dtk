.include "macros.inc"
.file "aji_03.o"

# 0x000007B4..0x00000CF0 | size: 0x53C
.text
.balign 4

# .text:0x0 | 0x7B4 | size: 0x88
.fn evt_sousa_icon, local
/* 000007B4 00000878  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000007B8 0000087C  7C 08 02 A6 */	mflr r0
/* 000007BC 00000880  90 01 00 24 */	stw r0, 0x24(r1)
/* 000007C0 00000884  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000007C4 00000888  7C 7D 1B 78 */	mr r29, r3
/* 000007C8 0000088C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000007CC 00000890  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000007D0 00000894  48 00 5A 6D */	bl evtGetValue
/* 000007D4 00000898  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000007D8 0000089C  7C 7E 1B 78 */	mr r30, r3
/* 000007DC 000008A0  7F A3 EB 78 */	mr r3, r29
/* 000007E0 000008A4  48 00 5A 5D */	bl evtGetValue
/* 000007E4 000008A8  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000007E8 000008AC  7C 7F 1B 78 */	mr r31, r3
/* 000007EC 000008B0  7F A3 EB 78 */	mr r3, r29
/* 000007F0 000008B4  48 00 5A 4D */	bl evtGetValue
/* 000007F4 000008B8  93 DD 00 78 */	stw r30, 0x78(r29)
/* 000007F8 000008BC  3C 80 00 00 */	lis r4, zero_aji_00011ee0@ha
/* 000007FC 000008C0  38 C4 00 00 */	addi r6, r4, zero_aji_00011ee0@l
/* 00000800 000008C4  93 FD 00 7C */	stw r31, 0x7c(r29)
/* 00000804 000008C8  3C 80 00 00 */	lis r4, icon_disp@ha
/* 00000808 000008CC  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 0000080C 000008D0  38 A4 00 00 */	addi r5, r4, icon_disp@l
/* 00000810 000008D4  90 7D 00 80 */	stw r3, 0x80(r29)
/* 00000814 000008D8  7F A6 EB 78 */	mr r6, r29
/* 00000818 000008DC  38 60 00 08 */	li r3, 0x8
/* 0000081C 000008E0  38 80 00 00 */	li r4, 0x0
/* 00000820 000008E4  48 00 5A 1D */	bl dispEntry
/* 00000824 000008E8  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00000828 000008EC  38 60 00 01 */	li r3, 0x1
/* 0000082C 000008F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000830 000008F4  7C 08 03 A6 */	mtlr r0
/* 00000834 000008F8  38 21 00 20 */	addi r1, r1, 0x20
/* 00000838 000008FC  4E 80 00 20 */	blr
.endfn evt_sousa_icon

# .text:0x88 | 0x83C | size: 0x2BC
.fn icon_disp, local
/* 0000083C 00000900  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 00000840 00000904  7C 08 02 A6 */	mflr r0
/* 00000844 00000908  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 00000848 0000090C  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 0000084C 00000910  7C 9F 23 78 */	mr r31, r4
/* 00000850 00000914  48 00 59 ED */	bl camGetPtr
/* 00000854 00000918  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 00000858 0000091C  2C 00 00 00 */	cmpwi r0, 0x0
/* 0000085C 00000920  40 82 01 44 */	bne .L_000009A0
/* 00000860 00000924  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 00000864 00000928  3C A0 43 30 */	lis r5, 0x4330
/* 00000868 0000092C  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 0000086C 00000930  3C C0 00 00 */	lis r6, double_to_int_aji_00011ef0@ha
/* 00000870 00000934  38 83 FF BA */	subi r4, r3, 0x46
/* 00000874 00000938  90 A1 00 98 */	stw r5, 0x98(r1)
/* 00000878 0000093C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 0000087C 00000940  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00000880 00000944  90 81 00 9C */	stw r4, 0x9c(r1)
/* 00000884 00000948  3C 60 00 00 */	lis r3, zero_aji_00011ee0@ha
/* 00000888 0000094C  38 83 00 00 */	addi r4, r3, zero_aji_00011ee0@l
/* 0000088C 00000950  C8 46 00 00 */	lfd f2, double_to_int_aji_00011ef0@l(r6)
/* 00000890 00000954  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 00000894 00000958  38 61 00 68 */	addi r3, r1, 0x68
/* 00000898 0000095C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 0000089C 00000960  EC 20 10 28 */	fsubs f1, f0, f2
/* 000008A0 00000964  C0 64 00 00 */	lfs f3, 0x0(r4)
/* 000008A4 00000968  90 A1 00 A0 */	stw r5, 0xa0(r1)
/* 000008A8 0000096C  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 000008AC 00000970  EC 40 10 28 */	fsubs f2, f0, f2
/* 000008B0 00000974  48 00 59 8D */	bl PSMTXTrans
/* 000008B4 00000978  3C 80 00 00 */	lis r4, float_1p5_aji_00011ee4@ha
/* 000008B8 0000097C  38 61 00 38 */	addi r3, r1, 0x38
/* 000008BC 00000980  C0 24 00 00 */	lfs f1, float_1p5_aji_00011ee4@l(r4)
/* 000008C0 00000984  FC 40 08 90 */	fmr f2, f1
/* 000008C4 00000988  FC 60 08 90 */	fmr f3, f1
/* 000008C8 0000098C  48 00 59 75 */	bl PSMTXScale
/* 000008CC 00000990  3C 80 00 00 */	lis r4, zero_aji_00011ee0@ha
/* 000008D0 00000994  38 61 00 08 */	addi r3, r1, 0x8
/* 000008D4 00000998  38 A4 00 00 */	addi r5, r4, zero_aji_00011ee0@l
/* 000008D8 0000099C  38 80 00 7A */	li r4, 0x7a
/* 000008DC 000009A0  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000008E0 000009A4  48 00 59 5D */	bl PSMTXRotRad
/* 000008E4 000009A8  38 61 00 68 */	addi r3, r1, 0x68
/* 000008E8 000009AC  38 81 00 38 */	addi r4, r1, 0x38
/* 000008EC 000009B0  7C 65 1B 78 */	mr r5, r3
/* 000008F0 000009B4  48 00 59 4D */	bl PSMTXConcat
/* 000008F4 000009B8  38 61 00 68 */	addi r3, r1, 0x68
/* 000008F8 000009BC  38 81 00 08 */	addi r4, r1, 0x8
/* 000008FC 000009C0  7C 65 1B 78 */	mr r5, r3
/* 00000900 000009C4  48 00 59 3D */	bl PSMTXConcat
/* 00000904 000009C8  38 61 00 68 */	addi r3, r1, 0x68
/* 00000908 000009CC  38 80 00 10 */	li r4, 0x10
/* 0000090C 000009D0  38 A0 01 6B */	li r5, 0x16b
/* 00000910 000009D4  48 00 59 2D */	bl iconDispGx2
/* 00000914 000009D8  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 00000918 000009DC  3C A0 43 30 */	lis r5, 0x4330
/* 0000091C 000009E0  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 00000920 000009E4  3C C0 00 00 */	lis r6, double_to_int_aji_00011ef0@ha
/* 00000924 000009E8  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 00000928 000009EC  90 A1 00 A8 */	stw r5, 0xa8(r1)
/* 0000092C 000009F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00000930 000009F4  C8 46 00 00 */	lfd f2, double_to_int_aji_00011ef0@l(r6)
/* 00000934 000009F8  90 81 00 AC */	stw r4, 0xac(r1)
/* 00000938 000009FC  3C 60 00 00 */	lis r3, zero_aji_00011ee0@ha
/* 0000093C 00000A00  38 83 00 00 */	addi r4, r3, zero_aji_00011ee0@l
/* 00000940 00000A04  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 00000944 00000A08  38 61 00 68 */	addi r3, r1, 0x68
/* 00000948 00000A0C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 0000094C 00000A10  EC 20 10 28 */	fsubs f1, f0, f2
/* 00000950 00000A14  C0 64 00 00 */	lfs f3, 0x0(r4)
/* 00000954 00000A18  90 A1 00 B0 */	stw r5, 0xb0(r1)
/* 00000958 00000A1C  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 0000095C 00000A20  EC 40 10 28 */	fsubs f2, f0, f2
/* 00000960 00000A24  48 00 58 DD */	bl PSMTXTrans
/* 00000964 00000A28  3C 80 00 00 */	lis r4, float_1p5_aji_00011ee4@ha
/* 00000968 00000A2C  38 61 00 38 */	addi r3, r1, 0x38
/* 0000096C 00000A30  C0 24 00 00 */	lfs f1, float_1p5_aji_00011ee4@l(r4)
/* 00000970 00000A34  FC 40 08 90 */	fmr f2, f1
/* 00000974 00000A38  FC 60 08 90 */	fmr f3, f1
/* 00000978 00000A3C  48 00 58 C5 */	bl PSMTXScale
/* 0000097C 00000A40  38 61 00 68 */	addi r3, r1, 0x68
/* 00000980 00000A44  38 81 00 38 */	addi r4, r1, 0x38
/* 00000984 00000A48  7C 65 1B 78 */	mr r5, r3
/* 00000988 00000A4C  48 00 58 B5 */	bl PSMTXConcat
/* 0000098C 00000A50  38 61 00 68 */	addi r3, r1, 0x68
/* 00000990 00000A54  38 80 00 10 */	li r4, 0x10
/* 00000994 00000A58  38 A0 00 6C */	li r5, 0x6c
/* 00000998 00000A5C  48 00 58 A5 */	bl iconDispGx2
/* 0000099C 00000A60  48 00 01 48 */	b .L_00000AE4
.L_000009A0:
/* 000009A0 00000A64  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 000009A4 00000A68  3C A0 43 30 */	lis r5, 0x4330
/* 000009A8 00000A6C  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 000009AC 00000A70  3C C0 00 00 */	lis r6, double_to_int_aji_00011ef0@ha
/* 000009B0 00000A74  39 03 FF E2 */	subi r8, r3, 0x1e
/* 000009B4 00000A78  3C 60 00 00 */	lis r3, zero_aji_00011ee0@ha
/* 000009B8 00000A7C  38 04 00 64 */	addi r0, r4, 0x64
/* 000009BC 00000A80  38 E6 00 00 */	addi r7, r6, double_to_int_aji_00011ef0@l
/* 000009C0 00000A84  6D 06 80 00 */	xoris r6, r8, 0x8000
/* 000009C4 00000A88  90 A1 00 B0 */	stw r5, 0xb0(r1)
/* 000009C8 00000A8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 000009CC 00000A90  38 83 00 00 */	addi r4, r3, zero_aji_00011ee0@l
/* 000009D0 00000A94  90 C1 00 B4 */	stw r6, 0xb4(r1)
/* 000009D4 00000A98  38 61 00 68 */	addi r3, r1, 0x68
/* 000009D8 00000A9C  C8 47 00 00 */	lfd f2, 0x0(r7)
/* 000009DC 00000AA0  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 000009E0 00000AA4  90 01 00 AC */	stw r0, 0xac(r1)
/* 000009E4 00000AA8  EC 20 10 28 */	fsubs f1, f0, f2
/* 000009E8 00000AAC  C0 64 00 00 */	lfs f3, 0x0(r4)
/* 000009EC 00000AB0  90 A1 00 A8 */	stw r5, 0xa8(r1)
/* 000009F0 00000AB4  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 000009F4 00000AB8  EC 40 10 28 */	fsubs f2, f0, f2
/* 000009F8 00000ABC  48 00 58 45 */	bl PSMTXTrans
/* 000009FC 00000AC0  3C 80 00 00 */	lis r4, float_1p5_aji_00011ee4@ha
/* 00000A00 00000AC4  38 61 00 38 */	addi r3, r1, 0x38
/* 00000A04 00000AC8  C0 24 00 00 */	lfs f1, float_1p5_aji_00011ee4@l(r4)
/* 00000A08 00000ACC  FC 40 08 90 */	fmr f2, f1
/* 00000A0C 00000AD0  FC 60 08 90 */	fmr f3, f1
/* 00000A10 00000AD4  48 00 58 2D */	bl PSMTXScale
/* 00000A14 00000AD8  3C 80 00 00 */	lis r4, float_4p7124_aji_00011ee8@ha
/* 00000A18 00000ADC  38 61 00 08 */	addi r3, r1, 0x8
/* 00000A1C 00000AE0  38 A4 00 00 */	addi r5, r4, float_4p7124_aji_00011ee8@l
/* 00000A20 00000AE4  38 80 00 7A */	li r4, 0x7a
/* 00000A24 00000AE8  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00000A28 00000AEC  48 00 58 15 */	bl PSMTXRotRad
/* 00000A2C 00000AF0  38 61 00 68 */	addi r3, r1, 0x68
/* 00000A30 00000AF4  38 81 00 38 */	addi r4, r1, 0x38
/* 00000A34 00000AF8  7C 65 1B 78 */	mr r5, r3
/* 00000A38 00000AFC  48 00 58 05 */	bl PSMTXConcat
/* 00000A3C 00000B00  38 61 00 68 */	addi r3, r1, 0x68
/* 00000A40 00000B04  38 81 00 08 */	addi r4, r1, 0x8
/* 00000A44 00000B08  7C 65 1B 78 */	mr r5, r3
/* 00000A48 00000B0C  48 00 57 F5 */	bl PSMTXConcat
/* 00000A4C 00000B10  38 61 00 68 */	addi r3, r1, 0x68
/* 00000A50 00000B14  38 80 00 10 */	li r4, 0x10
/* 00000A54 00000B18  38 A0 01 6B */	li r5, 0x16b
/* 00000A58 00000B1C  48 00 57 E5 */	bl iconDispGx2
/* 00000A5C 00000B20  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 00000A60 00000B24  3C A0 43 30 */	lis r5, 0x4330
/* 00000A64 00000B28  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 00000A68 00000B2C  3C C0 00 00 */	lis r6, double_to_int_aji_00011ef0@ha
/* 00000A6C 00000B30  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 00000A70 00000B34  90 A1 00 A0 */	stw r5, 0xa0(r1)
/* 00000A74 00000B38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00000A78 00000B3C  C8 46 00 00 */	lfd f2, double_to_int_aji_00011ef0@l(r6)
/* 00000A7C 00000B40  90 81 00 A4 */	stw r4, 0xa4(r1)
/* 00000A80 00000B44  3C 60 00 00 */	lis r3, zero_aji_00011ee0@ha
/* 00000A84 00000B48  38 83 00 00 */	addi r4, r3, zero_aji_00011ee0@l
/* 00000A88 00000B4C  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 00000A8C 00000B50  38 61 00 68 */	addi r3, r1, 0x68
/* 00000A90 00000B54  90 01 00 9C */	stw r0, 0x9c(r1)
/* 00000A94 00000B58  EC 20 10 28 */	fsubs f1, f0, f2
/* 00000A98 00000B5C  C0 64 00 00 */	lfs f3, 0x0(r4)
/* 00000A9C 00000B60  90 A1 00 98 */	stw r5, 0x98(r1)
/* 00000AA0 00000B64  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 00000AA4 00000B68  EC 40 10 28 */	fsubs f2, f0, f2
/* 00000AA8 00000B6C  48 00 57 95 */	bl PSMTXTrans
/* 00000AAC 00000B70  3C 80 00 00 */	lis r4, float_1p5_aji_00011ee4@ha
/* 00000AB0 00000B74  38 61 00 38 */	addi r3, r1, 0x38
/* 00000AB4 00000B78  C0 24 00 00 */	lfs f1, float_1p5_aji_00011ee4@l(r4)
/* 00000AB8 00000B7C  FC 40 08 90 */	fmr f2, f1
/* 00000ABC 00000B80  FC 60 08 90 */	fmr f3, f1
/* 00000AC0 00000B84  48 00 57 7D */	bl PSMTXScale
/* 00000AC4 00000B88  38 61 00 68 */	addi r3, r1, 0x68
/* 00000AC8 00000B8C  38 81 00 38 */	addi r4, r1, 0x38
/* 00000ACC 00000B90  7C 65 1B 78 */	mr r5, r3
/* 00000AD0 00000B94  48 00 57 6D */	bl PSMTXConcat
/* 00000AD4 00000B98  38 61 00 68 */	addi r3, r1, 0x68
/* 00000AD8 00000B9C  38 80 00 10 */	li r4, 0x10
/* 00000ADC 00000BA0  38 A0 00 6E */	li r5, 0x6e
/* 00000AE0 00000BA4  48 00 57 5D */	bl iconDispGx2
.L_00000AE4:
/* 00000AE4 00000BA8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 00000AE8 00000BAC  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 00000AEC 00000BB0  7C 08 03 A6 */	mtlr r0
/* 00000AF0 00000BB4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 00000AF4 00000BB8  4E 80 00 20 */	blr
.endfn icon_disp

# .text:0x344 | 0xAF8 | size: 0x78
.fn evt_itemNameToItemID, local
/* 00000AF8 00000BBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000AFC 00000BC0  7C 08 02 A6 */	mflr r0
/* 00000B00 00000BC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000B04 00000BC8  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 00000B08 00000BCC  7C 7C 1B 78 */	mr r28, r3
/* 00000B0C 00000BD0  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00000B10 00000BD4  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00000B14 00000BD8  48 00 57 29 */	bl evtGetValue
/* 00000B18 00000BDC  7C 7D 1B 78 */	mr r29, r3
/* 00000B1C 00000BE0  48 00 57 21 */	bl itemNameToPtr
/* 00000B20 00000BE4  3C 80 00 00 */	lis r4, tmp$562@ha
/* 00000B24 00000BE8  7C 7F 1B 78 */	mr r31, r3
/* 00000B28 00000BEC  38 64 00 00 */	addi r3, r4, tmp$562@l
/* 00000B2C 00000BF0  38 A0 00 40 */	li r5, 0x40
/* 00000B30 00000BF4  7F A4 EB 78 */	mr r4, r29
/* 00000B34 00000BF8  48 00 57 09 */	bl strncpy
/* 00000B38 00000BFC  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00000B3C 00000C00  7F 83 E3 78 */	mr r3, r28
/* 00000B40 00000C04  80 BF 00 04 */	lwz r5, 0x4(r31)
/* 00000B44 00000C08  48 00 56 F9 */	bl evtSetValue
/* 00000B48 00000C0C  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00000B4C 00000C10  7F 83 E3 78 */	mr r3, r28
/* 00000B50 00000C14  7F A5 EB 78 */	mr r5, r29
/* 00000B54 00000C18  48 00 56 E9 */	bl evtSetValue
/* 00000B58 00000C1C  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00000B5C 00000C20  38 60 00 02 */	li r3, 0x2
/* 00000B60 00000C24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000B64 00000C28  7C 08 03 A6 */	mtlr r0
/* 00000B68 00000C2C  38 21 00 20 */	addi r1, r1, 0x20
/* 00000B6C 00000C30  4E 80 00 20 */	blr
.endfn evt_itemNameToItemID

# .text:0x3BC | 0xB70 | size: 0x180
.fn item_chk, local
/* 00000B70 00000C34  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 00000B74 00000C38  7C 08 02 A6 */	mflr r0
/* 00000B78 00000C3C  90 01 01 64 */	stw r0, 0x164(r1)
/* 00000B7C 00000C40  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 00000B80 00000C44  F3 E1 01 58 */	psq_st f31, 0x158(r1), 0, qr0
/* 00000B84 00000C48  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 00000B88 00000C4C  F3 C1 01 48 */	psq_st f30, 0x148(r1), 0, qr0
/* 00000B8C 00000C50  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 00000B90 00000C54  F3 A1 01 38 */	psq_st f29, 0x138(r1), 0, qr0
/* 00000B94 00000C58  BF 41 01 18 */	stmw r26, 0x118(r1)
/* 00000B98 00000C5C  7C 7F 1B 78 */	mr r31, r3
/* 00000B9C 00000C60  3C 80 FD 05 */	lis r4, 0xfd05
/* 00000BA0 00000C64  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00000BA4 00000C68  38 84 0F 8A */	addi r4, r4, 0xf8a
/* 00000BA8 00000C6C  48 00 56 95 */	bl evtGetValue
/* 00000BAC 00000C70  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00000BB0 00000C74  3C 00 43 30 */	lis r0, 0x4330
/* 00000BB4 00000C78  3C 80 00 00 */	lis r4, double_to_int_aji_00011ef0@ha
/* 00000BB8 00000C7C  90 61 01 0C */	stw r3, 0x10c(r1)
/* 00000BBC 00000C80  38 A4 00 00 */	addi r5, r4, double_to_int_aji_00011ef0@l
/* 00000BC0 00000C84  3C 80 FD 05 */	lis r4, 0xfd05
/* 00000BC4 00000C88  90 01 01 08 */	stw r0, 0x108(r1)
/* 00000BC8 00000C8C  7F E3 FB 78 */	mr r3, r31
/* 00000BCC 00000C90  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 00000BD0 00000C94  38 84 0F 8B */	addi r4, r4, 0xf8b
/* 00000BD4 00000C98  C8 01 01 08 */	lfd f0, 0x108(r1)
/* 00000BD8 00000C9C  EF E0 08 28 */	fsubs f31, f0, f1
/* 00000BDC 00000CA0  48 00 56 61 */	bl evtGetValue
/* 00000BE0 00000CA4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00000BE4 00000CA8  3C 00 43 30 */	lis r0, 0x4330
/* 00000BE8 00000CAC  3C 80 00 00 */	lis r4, double_to_int_aji_00011ef0@ha
/* 00000BEC 00000CB0  90 61 01 14 */	stw r3, 0x114(r1)
/* 00000BF0 00000CB4  38 A4 00 00 */	addi r5, r4, double_to_int_aji_00011ef0@l
/* 00000BF4 00000CB8  3C 60 00 00 */	lis r3, float_20_aji_00011ef8@ha
/* 00000BF8 00000CBC  90 01 01 10 */	stw r0, 0x110(r1)
/* 00000BFC 00000CC0  38 83 00 00 */	addi r4, r3, float_20_aji_00011ef8@l
/* 00000C00 00000CC4  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 00000C04 00000CC8  3C 60 00 00 */	lis r3, str_keihinPCT02d_aji_00011efc@ha
/* 00000C08 00000CCC  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 00000C0C 00000CD0  3B C3 00 00 */	addi r30, r3, str_keihinPCT02d_aji_00011efc@l
/* 00000C10 00000CD4  C3 A4 00 00 */	lfs f29, 0x0(r4)
/* 00000C14 00000CD8  3B 60 00 00 */	li r27, 0x0
/* 00000C18 00000CDC  EF C0 08 28 */	fsubs f30, f0, f1
/* 00000C1C 00000CE0  3B 80 00 00 */	li r28, 0x0
.L_00000C20:
/* 00000C20 00000CE4  7F C4 F3 78 */	mr r4, r30
/* 00000C24 00000CE8  7F 85 E3 78 */	mr r5, r28
/* 00000C28 00000CEC  38 61 00 08 */	addi r3, r1, 0x8
/* 00000C2C 00000CF0  4C C6 31 82 */	crclr cr1eq
/* 00000C30 00000CF4  48 00 56 0D */	bl sprintf
/* 00000C34 00000CF8  38 61 00 08 */	addi r3, r1, 0x8
/* 00000C38 00000CFC  48 00 56 05 */	bl itemNameToPtr
/* 00000C3C 00000D00  7C 7A 1B 79 */	mr. r26, r3
/* 00000C40 00000D04  41 82 00 28 */	beq .L_00000C68
/* 00000C44 00000D08  FC 60 F8 90 */	fmr f3, f31
/* 00000C48 00000D0C  C0 3A 00 3C */	lfs f1, 0x3c(r26)
/* 00000C4C 00000D10  FC 80 F0 90 */	fmr f4, f30
/* 00000C50 00000D14  C0 5A 00 44 */	lfs f2, 0x44(r26)
/* 00000C54 00000D18  48 00 55 E9 */	bl distABf
/* 00000C58 00000D1C  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 00000C5C 00000D20  40 80 00 0C */	bge .L_00000C68
/* 00000C60 00000D24  FF A0 08 90 */	fmr f29, f1
/* 00000C64 00000D28  7F 5B D3 78 */	mr r27, r26
.L_00000C68:
/* 00000C68 00000D2C  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00000C6C 00000D30  2C 1C 00 20 */	cmpwi r28, 0x20
/* 00000C70 00000D34  41 80 FF B0 */	blt .L_00000C20
/* 00000C74 00000D38  28 1B 00 00 */	cmplwi r27, 0x0
/* 00000C78 00000D3C  41 82 00 28 */	beq .L_00000CA0
/* 00000C7C 00000D40  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00000C80 00000D44  7F E3 FB 78 */	mr r3, r31
/* 00000C84 00000D48  38 A0 00 01 */	li r5, 0x1
/* 00000C88 00000D4C  48 00 55 B5 */	bl evtSetValue
/* 00000C8C 00000D50  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 00000C90 00000D54  7F E3 FB 78 */	mr r3, r31
/* 00000C94 00000D58  38 BB 00 0C */	addi r5, r27, 0xc
/* 00000C98 00000D5C  48 00 55 A5 */	bl evtSetValue
/* 00000C9C 00000D60  48 00 00 24 */	b .L_00000CC0
.L_00000CA0:
/* 00000CA0 00000D64  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00000CA4 00000D68  7F E3 FB 78 */	mr r3, r31
/* 00000CA8 00000D6C  38 A0 00 00 */	li r5, 0x0
/* 00000CAC 00000D70  48 00 55 91 */	bl evtSetValue
/* 00000CB0 00000D74  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 00000CB4 00000D78  7F E3 FB 78 */	mr r3, r31
/* 00000CB8 00000D7C  38 A0 00 00 */	li r5, 0x0
/* 00000CBC 00000D80  48 00 55 81 */	bl evtSetValue
.L_00000CC0:
/* 00000CC0 00000D84  38 60 00 02 */	li r3, 0x2
/* 00000CC4 00000D88  E3 E1 01 58 */	psq_l f31, 0x158(r1), 0, qr0
/* 00000CC8 00000D8C  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 00000CCC 00000D90  E3 C1 01 48 */	psq_l f30, 0x148(r1), 0, qr0
/* 00000CD0 00000D94  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 00000CD4 00000D98  E3 A1 01 38 */	psq_l f29, 0x138(r1), 0, qr0
/* 00000CD8 00000D9C  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 00000CDC 00000DA0  BB 41 01 18 */	lmw r26, 0x118(r1)
/* 00000CE0 00000DA4  80 01 01 64 */	lwz r0, 0x164(r1)
/* 00000CE4 00000DA8  7C 08 03 A6 */	mtlr r0
/* 00000CE8 00000DAC  38 21 01 60 */	addi r1, r1, 0x160
/* 00000CEC 00000DB0  4E 80 00 20 */	blr
.endfn item_chk

# 0x00000CD8..0x000010A0 | size: 0x3C8
.rodata
.balign 8

# .rodata:0x0 | 0xCD8 | size: 0xA
.obj str_S_door1_1_aji_00011b40, local
	.string "S_door1_1"
.endobj str_S_door1_1_aji_00011b40

# .rodata:0xA | 0xCE2 | size: 0x2
.obj gap_03_00000CE2_rodata, global
.hidden gap_03_00000CE2_rodata
	.2byte 0x0000
.endobj gap_03_00000CE2_rodata

# .rodata:0xC | 0xCE4 | size: 0xA
.obj str_S_door1_2_aji_00011b4c, local
	.string "S_door1_2"
.endobj str_S_door1_2_aji_00011b4c

# .rodata:0x16 | 0xCEE | size: 0x2
.obj gap_03_00000CEE_rodata, global
.hidden gap_03_00000CEE_rodata
	.2byte 0x0000
.endobj gap_03_00000CEE_rodata

# .rodata:0x18 | 0xCF0 | size: 0x7
.obj str_e_bero_aji_00011b58, local
	.string "e_bero"
.endobj str_e_bero_aji_00011b58

# .rodata:0x1F | 0xCF7 | size: 0x1
.obj gap_03_00000CF7_rodata, global
.hidden gap_03_00000CF7_rodata
	.byte 0x00
.endobj gap_03_00000CF7_rodata

# .rodata:0x20 | 0xCF8 | size: 0x7
.obj str_aji_01_aji_00011b60, local
	.string "aji_01"
.endobj str_aji_01_aji_00011b60

# .rodata:0x27 | 0xCFF | size: 0x1
.obj gap_03_00000CFF_rodata, global
.hidden gap_03_00000CFF_rodata
	.byte 0x00
.endobj gap_03_00000CFF_rodata

# .rodata:0x28 | 0xD00 | size: 0x9
.obj str_w_bero_2_aji_00011b68, local
	.string "w_bero_2"
.endobj str_w_bero_2_aji_00011b68

# .rodata:0x31 | 0xD09 | size: 0x3
.obj gap_03_00000D09_rodata, global
.hidden gap_03_00000D09_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D09_rodata

# .rodata:0x34 | 0xD0C | size: 0x9
.obj str_S_te_1_a_aji_00011b74, local
	.string "S_te_1_a"
.endobj str_S_te_1_a_aji_00011b74

# .rodata:0x3D | 0xD15 | size: 0x3
.obj gap_03_00000D15_rodata, global
.hidden gap_03_00000D15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D15_rodata

# .rodata:0x40 | 0xD18 | size: 0x9
.obj str_S_te_2_a_aji_00011b80, local
	.string "S_te_2_a"
.endobj str_S_te_2_a_aji_00011b80

# .rodata:0x49 | 0xD21 | size: 0x3
.obj gap_03_00000D21_rodata, global
.hidden gap_03_00000D21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D21_rodata

# .rodata:0x4C | 0xD24 | size: 0x9
.obj str_S_te_1_b_aji_00011b8c, local
	.string "S_te_1_b"
.endobj str_S_te_1_b_aji_00011b8c

# .rodata:0x55 | 0xD2D | size: 0x3
.obj gap_03_00000D2D_rodata, global
.hidden gap_03_00000D2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D2D_rodata

# .rodata:0x58 | 0xD30 | size: 0x9
.obj str_S_te_2_b_aji_00011b98, local
	.string "S_te_2_b"
.endobj str_S_te_2_b_aji_00011b98

# .rodata:0x61 | 0xD39 | size: 0x3
.obj gap_03_00000D39_rodata, global
.hidden gap_03_00000D39_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D39_rodata

# .rodata:0x64 | 0xD3C | size: 0x9
.obj str_S_te_1_c_aji_00011ba4, local
	.string "S_te_1_c"
.endobj str_S_te_1_c_aji_00011ba4

# .rodata:0x6D | 0xD45 | size: 0x3
.obj gap_03_00000D45_rodata, global
.hidden gap_03_00000D45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D45_rodata

# .rodata:0x70 | 0xD48 | size: 0x9
.obj str_S_te_2_c_aji_00011bb0, local
	.string "S_te_2_c"
.endobj str_S_te_2_c_aji_00011bb0

# .rodata:0x79 | 0xD51 | size: 0x3
.obj gap_03_00000D51_rodata, global
.hidden gap_03_00000D51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D51_rodata

# .rodata:0x7C | 0xD54 | size: 0x7
.obj str_S_kure_aji_00011bbc, local
	.string "S_kure"
.endobj str_S_kure_aji_00011bbc

# .rodata:0x83 | 0xD5B | size: 0x1
.obj gap_03_00000D5B_rodata, global
.hidden gap_03_00000D5B_rodata
	.byte 0x00
.endobj gap_03_00000D5B_rodata

# .rodata:0x84 | 0xD5C | size: 0x15
.obj str_SFX_STG7_CRANE_MOVE1_aji_00011bc4, local
	.string "SFX_STG7_CRANE_MOVE1"
.endobj str_SFX_STG7_CRANE_MOVE1_aji_00011bc4

# .rodata:0x99 | 0xD71 | size: 0x3
.obj gap_03_00000D71_rodata, global
.hidden gap_03_00000D71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D71_rodata

# .rodata:0x9C | 0xD74 | size: 0x9
.obj str_S_hikari_aji_00011bdc, local
	.string "S_hikari"
.endobj str_S_hikari_aji_00011bdc

# .rodata:0xA5 | 0xD7D | size: 0x3
.obj gap_03_00000D7D_rodata, global
.hidden gap_03_00000D7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D7D_rodata

# .rodata:0xA8 | 0xD80 | size: 0x9
.obj str_S_tama_a_aji_00011be8, local
	.string "S_tama_a"
.endobj str_S_tama_a_aji_00011be8

# .rodata:0xB1 | 0xD89 | size: 0x3
.obj gap_03_00000D89_rodata, global
.hidden gap_03_00000D89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D89_rodata

# .rodata:0xB4 | 0xD8C | size: 0x9
.obj str_S_tama_b_aji_00011bf4, local
	.string "S_tama_b"
.endobj str_S_tama_b_aji_00011bf4

# .rodata:0xBD | 0xD95 | size: 0x3
.obj gap_03_00000D95_rodata, global
.hidden gap_03_00000D95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D95_rodata

# .rodata:0xC0 | 0xD98 | size: 0x13
.obj str_SFX_STG7_AMB_GEAR1_aji_00011c00, local
	.string "SFX_STG7_AMB_GEAR1"
.endobj str_SFX_STG7_AMB_GEAR1_aji_00011c00

# .rodata:0xD3 | 0xDAB | size: 0x1
.obj gap_03_00000DAB_rodata, global
.hidden gap_03_00000DAB_rodata
	.byte 0x00
.endobj gap_03_00000DAB_rodata

# .rodata:0xD4 | 0xDAC | size: 0xA
.obj str_S_zenmai1_aji_00011c14, local
	.string "S_zenmai1"
.endobj str_S_zenmai1_aji_00011c14

# .rodata:0xDE | 0xDB6 | size: 0x2
.obj gap_03_00000DB6_rodata, global
.hidden gap_03_00000DB6_rodata
	.2byte 0x0000
.endobj gap_03_00000DB6_rodata

# .rodata:0xE0 | 0xDB8 | size: 0xA
.obj str_S_zenmai2_aji_00011c20, local
	.string "S_zenmai2"
.endobj str_S_zenmai2_aji_00011c20

# .rodata:0xEA | 0xDC2 | size: 0x2
.obj gap_03_00000DC2_rodata, global
.hidden gap_03_00000DC2_rodata
	.2byte 0x0000
.endobj gap_03_00000DC2_rodata

# .rodata:0xEC | 0xDC4 | size: 0xA
.obj str_S_zenmai3_aji_00011c2c, local
	.string "S_zenmai3"
.endobj str_S_zenmai3_aji_00011c2c

# .rodata:0xF6 | 0xDCE | size: 0x2
.obj gap_03_00000DCE_rodata, global
.hidden gap_03_00000DCE_rodata
	.2byte 0x0000
.endobj gap_03_00000DCE_rodata

# .rodata:0xF8 | 0xDD0 | size: 0xA
.obj str_S_zenmai4_aji_00011c38, local
	.string "S_zenmai4"
.endobj str_S_zenmai4_aji_00011c38

# .rodata:0x102 | 0xDDA | size: 0x2
.obj gap_03_00000DDA_rodata, global
.hidden gap_03_00000DDA_rodata
	.2byte 0x0000
.endobj gap_03_00000DDA_rodata

# .rodata:0x104 | 0xDDC | size: 0xA
.obj str_S_zenmai5_aji_00011c44, local
	.string "S_zenmai5"
.endobj str_S_zenmai5_aji_00011c44

# .rodata:0x10E | 0xDE6 | size: 0x2
.obj gap_03_00000DE6_rodata, global
.hidden gap_03_00000DE6_rodata
	.2byte 0x0000
.endobj gap_03_00000DE6_rodata

# .rodata:0x110 | 0xDE8 | size: 0xA
.obj str_S_zenmai6_aji_00011c50, local
	.string "S_zenmai6"
.endobj str_S_zenmai6_aji_00011c50

# .rodata:0x11A | 0xDF2 | size: 0x2
.obj gap_03_00000DF2_rodata, global
.hidden gap_03_00000DF2_rodata
	.2byte 0x0000
.endobj gap_03_00000DF2_rodata

# .rodata:0x11C | 0xDF4 | size: 0xB
.obj str_S_zenmais1_aji_00011c5c, local
	.string "S_zenmais1"
.endobj str_S_zenmais1_aji_00011c5c

# .rodata:0x127 | 0xDFF | size: 0x1
.obj gap_03_00000DFF_rodata, global
.hidden gap_03_00000DFF_rodata
	.byte 0x00
.endobj gap_03_00000DFF_rodata

# .rodata:0x128 | 0xE00 | size: 0xB
.obj str_S_zenmais2_aji_00011c68, local
	.string "S_zenmais2"
.endobj str_S_zenmais2_aji_00011c68

# .rodata:0x133 | 0xE0B | size: 0x1
.obj gap_03_00000E0B_rodata, global
.hidden gap_03_00000E0B_rodata
	.byte 0x00
.endobj gap_03_00000E0B_rodata

# .rodata:0x134 | 0xE0C | size: 0xB
.obj str_S_zenmais3_aji_00011c74, local
	.string "S_zenmais3"
.endobj str_S_zenmais3_aji_00011c74

# .rodata:0x13F | 0xE17 | size: 0x1
.obj gap_03_00000E17_rodata, global
.hidden gap_03_00000E17_rodata
	.byte 0x00
.endobj gap_03_00000E17_rodata

# .rodata:0x140 | 0xE18 | size: 0xB
.obj str_S_zenmais4_aji_00011c80, local
	.string "S_zenmais4"
.endobj str_S_zenmais4_aji_00011c80

# .rodata:0x14B | 0xE23 | size: 0x1
.obj gap_03_00000E23_rodata, global
.hidden gap_03_00000E23_rodata
	.byte 0x00
.endobj gap_03_00000E23_rodata

# .rodata:0x14C | 0xE24 | size: 0xB
.obj str_S_zenmais5_aji_00011c8c, local
	.string "S_zenmais5"
.endobj str_S_zenmais5_aji_00011c8c

# .rodata:0x157 | 0xE2F | size: 0x1
.obj gap_03_00000E2F_rodata, global
.hidden gap_03_00000E2F_rodata
	.byte 0x00
.endobj gap_03_00000E2F_rodata

# .rodata:0x158 | 0xE30 | size: 0xB
.obj str_S_zenmais6_aji_00011c98, local
	.string "S_zenmais6"
.endobj str_S_zenmais6_aji_00011c98

# .rodata:0x163 | 0xE3B | size: 0x1
.obj gap_03_00000E3B_rodata, global
.hidden gap_03_00000E3B_rodata
	.byte 0x00
.endobj gap_03_00000E3B_rodata

# .rodata:0x164 | 0xE3C | size: 0xE
.obj str_S_zenmais_ari_aji_00011ca4, local
	.string "S_zenmais_ari"
.endobj str_S_zenmais_ari_aji_00011ca4

# .rodata:0x172 | 0xE4A | size: 0x2
.obj gap_03_00000E4A_rodata, global
.hidden gap_03_00000E4A_rodata
	.2byte 0x0000
.endobj gap_03_00000E4A_rodata

# .rodata:0x174 | 0xE4C | size: 0xF
.obj str_stg7_aji_00_01_aji_00011cb4, local
	.string "stg7_aji_00_01"
.endobj str_stg7_aji_00_01_aji_00011cb4

# .rodata:0x183 | 0xE5B | size: 0x1
.obj gap_03_00000E5B_rodata, global
.hidden gap_03_00000E5B_rodata
	.byte 0x00
.endobj gap_03_00000E5B_rodata

# .rodata:0x184 | 0xE5C | size: 0x8
.obj str_S_pato4_aji_00011cc4, local
	.string "S_pato4"
.endobj str_S_pato4_aji_00011cc4

# .rodata:0x18C | 0xE64 | size: 0x16
.obj str_SFX_STG7_CRANE_SIREN_aji_00011ccc, local
	.string "SFX_STG7_CRANE_SIREN1"
.endobj str_SFX_STG7_CRANE_SIREN_aji_00011ccc

# .rodata:0x1A2 | 0xE7A | size: 0x2
.obj gap_03_00000E7A_rodata, global
.hidden gap_03_00000E7A_rodata
	.2byte 0x0000
.endobj gap_03_00000E7A_rodata

# .rodata:0x1A4 | 0xE7C | size: 0x9
.obj str_meta_1_1_aji_00011ce4, local
	.string "meta_1_1"
.endobj str_meta_1_1_aji_00011ce4

# .rodata:0x1AD | 0xE85 | size: 0x3
.obj gap_03_00000E85_rodata, global
.hidden gap_03_00000E85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000E85_rodata

# .rodata:0x1B0 | 0xE88 | size: 0x9
.obj str_meta_2_1_aji_00011cf0, local
	.string "meta_2_1"
.endobj str_meta_2_1_aji_00011cf0

# .rodata:0x1B9 | 0xE91 | size: 0x3
.obj gap_03_00000E91_rodata, global
.hidden gap_03_00000E91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000E91_rodata

# .rodata:0x1BC | 0xE94 | size: 0x9
.obj str_meta_3_1_aji_00011cfc, local
	.string "meta_3_1"
.endobj str_meta_3_1_aji_00011cfc

# .rodata:0x1C5 | 0xE9D | size: 0x3
.obj gap_03_00000E9D_rodata, global
.hidden gap_03_00000E9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000E9D_rodata

# .rodata:0x1C8 | 0xEA0 | size: 0x9
.obj str_meta_1_2_aji_00011d08, local
	.string "meta_1_2"
.endobj str_meta_1_2_aji_00011d08

# .rodata:0x1D1 | 0xEA9 | size: 0x3
.obj gap_03_00000EA9_rodata, global
.hidden gap_03_00000EA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000EA9_rodata

# .rodata:0x1D4 | 0xEAC | size: 0x9
.obj str_meta_2_2_aji_00011d14, local
	.string "meta_2_2"
.endobj str_meta_2_2_aji_00011d14

# .rodata:0x1DD | 0xEB5 | size: 0x3
.obj gap_03_00000EB5_rodata, global
.hidden gap_03_00000EB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000EB5_rodata

# .rodata:0x1E0 | 0xEB8 | size: 0x9
.obj str_meta_3_2_aji_00011d20, local
	.string "meta_3_2"
.endobj str_meta_3_2_aji_00011d20

# .rodata:0x1E9 | 0xEC1 | size: 0x3
.obj gap_03_00000EC1_rodata, global
.hidden gap_03_00000EC1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000EC1_rodata

# .rodata:0x1EC | 0xEC4 | size: 0x9
.obj str_S_hari01_aji_00011d2c, local
	.string "S_hari01"
.endobj str_S_hari01_aji_00011d2c

# .rodata:0x1F5 | 0xECD | size: 0x3
.obj gap_03_00000ECD_rodata, global
.hidden gap_03_00000ECD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000ECD_rodata

# .rodata:0x1F8 | 0xED0 | size: 0x9
.obj str_S_hari02_aji_00011d38, local
	.string "S_hari02"
.endobj str_S_hari02_aji_00011d38

# .rodata:0x201 | 0xED9 | size: 0x3
.obj gap_03_00000ED9_rodata, global
.hidden gap_03_00000ED9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000ED9_rodata

# .rodata:0x204 | 0xEDC | size: 0x9
.obj str_A_sui_01_aji_00011d44, local
	.string "A_sui_01"
.endobj str_A_sui_01_aji_00011d44

# .rodata:0x20D | 0xEE5 | size: 0x3
.obj gap_03_00000EE5_rodata, global
.hidden gap_03_00000EE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000EE5_rodata

# .rodata:0x210 | 0xEE8 | size: 0x7
.obj str_A_sui1_aji_00011d50, local
	.string "A_sui1"
.endobj str_A_sui1_aji_00011d50

# .rodata:0x217 | 0xEEF | size: 0x1
.obj gap_03_00000EEF_rodata, global
.hidden gap_03_00000EEF_rodata
	.byte 0x00
.endobj gap_03_00000EEF_rodata

# .rodata:0x218 | 0xEF0 | size: 0x7
.obj str_A_sui2_aji_00011d58, local
	.string "A_sui2"
.endobj str_A_sui2_aji_00011d58

# .rodata:0x21F | 0xEF7 | size: 0x1
.obj gap_03_00000EF7_rodata, global
.hidden gap_03_00000EF7_rodata
	.byte 0x00
.endobj gap_03_00000EF7_rodata

# .rodata:0x220 | 0xEF8 | size: 0x7
.obj str_A_sui3_aji_00011d60, local
	.string "A_sui3"
.endobj str_A_sui3_aji_00011d60

# .rodata:0x227 | 0xEFF | size: 0x1
.obj gap_03_00000EFF_rodata, global
.hidden gap_03_00000EFF_rodata
	.byte 0x00
.endobj gap_03_00000EFF_rodata

# .rodata:0x228 | 0xF00 | size: 0x7
.obj str_sui_1_aji_00011d68, local
	.string "sui__1"
.endobj str_sui_1_aji_00011d68

# .rodata:0x22F | 0xF07 | size: 0x1
.obj gap_03_00000F07_rodata, global
.hidden gap_03_00000F07_rodata
	.byte 0x00
.endobj gap_03_00000F07_rodata

# .rodata:0x230 | 0xF08 | size: 0x7
.obj str_sui_2_aji_00011d70, local
	.string "sui__2"
.endobj str_sui_2_aji_00011d70

# .rodata:0x237 | 0xF0F | size: 0x1
.obj gap_03_00000F0F_rodata, global
.hidden gap_03_00000F0F_rodata
	.byte 0x00
.endobj gap_03_00000F0F_rodata

# .rodata:0x238 | 0xF10 | size: 0x8
.obj str_sui_2_1_aji_00011d78, local
	.string "sui_2_1"
.endobj str_sui_2_1_aji_00011d78

# .rodata:0x240 | 0xF18 | size: 0x8
.obj str_sui_2_2_aji_00011d80, local
	.string "sui_2_2"
.endobj str_sui_2_2_aji_00011d80

# .rodata:0x248 | 0xF20 | size: 0x8
.obj str_sui_3_1_aji_00011d88, local
	.string "sui_3_1"
.endobj str_sui_3_1_aji_00011d88

# .rodata:0x250 | 0xF28 | size: 0x8
.obj str_sui_3_2_aji_00011d90, local
	.string "sui_3_2"
.endobj str_sui_3_2_aji_00011d90

# .rodata:0x258 | 0xF30 | size: 0x1C
.obj str_SFX_STG7_CRANE_BUTTO_aji_00011d98, local
	.string "SFX_STG7_CRANE_BUTTON_PUSH1"
.endobj str_SFX_STG7_CRANE_BUTTO_aji_00011d98

# .rodata:0x274 | 0xF4C | size: 0x8
.obj str_S_pato1_aji_00011db4, local
	.string "S_pato1"
.endobj str_S_pato1_aji_00011db4

# .rodata:0x27C | 0xF54 | size: 0x9
.obj str_S_hari04_aji_00011dbc, local
	.string "S_hari04"
.endobj str_S_hari04_aji_00011dbc

# .rodata:0x285 | 0xF5D | size: 0x3
.obj gap_03_00000F5D_rodata, global
.hidden gap_03_00000F5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000F5D_rodata

# .rodata:0x288 | 0xF60 | size: 0x8
.obj str_S_pato2_aji_00011dc8, local
	.string "S_pato2"
.endobj str_S_pato2_aji_00011dc8

# .rodata:0x290 | 0xF68 | size: 0x9
.obj str_S_hari05_aji_00011dd0, local
	.string "S_hari05"
.endobj str_S_hari05_aji_00011dd0

# .rodata:0x299 | 0xF71 | size: 0x3
.obj gap_03_00000F71_rodata, global
.hidden gap_03_00000F71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000F71_rodata

# .rodata:0x29C | 0xF74 | size: 0x8
.obj str_S_pato3_aji_00011ddc, local
	.string "S_pato3"
.endobj str_S_pato3_aji_00011ddc

# .rodata:0x2A4 | 0xF7C | size: 0x9
.obj str_S_hari06_aji_00011de4, local
	.string "S_hari06"
.endobj str_S_hari06_aji_00011de4

# .rodata:0x2AD | 0xF85 | size: 0x3
.obj gap_03_00000F85_rodata, global
.hidden gap_03_00000F85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000F85_rodata

# .rodata:0x2B0 | 0xF88 | size: 0xF
.obj str_stg7_aji_00_00_aji_00011df0, local
	.string "stg7_aji_00_00"
.endobj str_stg7_aji_00_00_aji_00011df0

# .rodata:0x2BF | 0xF97 | size: 0x1
.obj gap_03_00000F97_rodata, global
.hidden gap_03_00000F97_rodata
	.byte 0x00
.endobj gap_03_00000F97_rodata

# .rodata:0x2C0 | 0xF98 | size: 0x14
.obj str_BGM_FF_ENV_SUCCESS1_aji_00011e00, local
	.string "BGM_FF_ENV_SUCCESS1"
.endobj str_BGM_FF_ENV_SUCCESS1_aji_00011e00

# .rodata:0x2D4 | 0xFAC | size: 0x10
.obj str_S_zenmais_nashi_aji_00011e14, local
	.string "S_zenmais_nashi"
.endobj str_S_zenmais_nashi_aji_00011e14

# .rodata:0x2E4 | 0xFBC | size: 0xE
.obj str_BGM_STG7_DUN2_aji_00011e24, local
	.string "BGM_STG7_DUN2"
.endobj str_BGM_STG7_DUN2_aji_00011e24

# .rodata:0x2F2 | 0xFCA | size: 0x2
.obj gap_03_00000FCA_rodata, global
.hidden gap_03_00000FCA_rodata
	.2byte 0x0000
.endobj gap_03_00000FCA_rodata

# .rodata:0x2F4 | 0xFCC | size: 0xE
.obj str_ENV_STG7_AJI3_aji_00011e34, local
	.string "ENV_STG7_AJI3"
.endobj str_ENV_STG7_AJI3_aji_00011e34

# .rodata:0x302 | 0xFDA | size: 0x2
.obj gap_03_00000FDA_rodata, global
.hidden gap_03_00000FDA_rodata
	.2byte 0x0000
.endobj gap_03_00000FDA_rodata

# .rodata:0x304 | 0xFDC | size: 0xD
.obj str_S_tanadoor_1_aji_00011e44, local
	.string "S_tanadoor_1"
.endobj str_S_tanadoor_1_aji_00011e44

# .rodata:0x311 | 0xFE9 | size: 0x3
.obj gap_03_00000FE9_rodata, global
.hidden gap_03_00000FE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000FE9_rodata

# .rodata:0x314 | 0xFEC | size: 0xD
.obj str_S_tanadoor_2_aji_00011e54, local
	.string "S_tanadoor_2"
.endobj str_S_tanadoor_2_aji_00011e54

# .rodata:0x321 | 0xFF9 | size: 0x3
.obj gap_03_00000FF9_rodata, global
.hidden gap_03_00000FF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000FF9_rodata

# .rodata:0x324 | 0xFFC | size: 0xD
.obj str_A_tanadoor_1_aji_00011e64, local
	.string "A_tanadoor_1"
.endobj str_A_tanadoor_1_aji_00011e64

# .rodata:0x331 | 0x1009 | size: 0x3
.obj gap_03_00001009_rodata, global
.hidden gap_03_00001009_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001009_rodata

# .rodata:0x334 | 0x100C | size: 0x9
.obj str_keihin00_aji_00011e74, local
	.string "keihin00"
.endobj str_keihin00_aji_00011e74

# .rodata:0x33D | 0x1015 | size: 0x3
.obj gap_03_00001015_rodata, global
.hidden gap_03_00001015_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001015_rodata

# .rodata:0x340 | 0x1018 | size: 0x9
.obj str_keihin01_aji_00011e80, local
	.string "keihin01"
.endobj str_keihin01_aji_00011e80

# .rodata:0x349 | 0x1021 | size: 0x3
.obj gap_03_00001021_rodata, global
.hidden gap_03_00001021_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001021_rodata

# .rodata:0x34C | 0x1024 | size: 0x9
.obj str_keihin02_aji_00011e8c, local
	.string "keihin02"
.endobj str_keihin02_aji_00011e8c

# .rodata:0x355 | 0x102D | size: 0x3
.obj gap_03_0000102D_rodata, global
.hidden gap_03_0000102D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000102D_rodata

# .rodata:0x358 | 0x1030 | size: 0x9
.obj str_keihin03_aji_00011e98, local
	.string "keihin03"
.endobj str_keihin03_aji_00011e98

# .rodata:0x361 | 0x1039 | size: 0x3
.obj gap_03_00001039_rodata, global
.hidden gap_03_00001039_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001039_rodata

# .rodata:0x364 | 0x103C | size: 0x9
.obj str_keihin04_aji_00011ea4, local
	.string "keihin04"
.endobj str_keihin04_aji_00011ea4

# .rodata:0x36D | 0x1045 | size: 0x3
.obj gap_03_00001045_rodata, global
.hidden gap_03_00001045_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001045_rodata

# .rodata:0x370 | 0x1048 | size: 0x9
.obj str_keihin05_aji_00011eb0, local
	.string "keihin05"
.endobj str_keihin05_aji_00011eb0

# .rodata:0x379 | 0x1051 | size: 0x3
.obj gap_03_00001051_rodata, global
.hidden gap_03_00001051_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001051_rodata

# .rodata:0x37C | 0x1054 | size: 0x9
.obj str_keihin06_aji_00011ebc, local
	.string "keihin06"
.endobj str_keihin06_aji_00011ebc

# .rodata:0x385 | 0x105D | size: 0x3
.obj gap_03_0000105D_rodata, global
.hidden gap_03_0000105D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000105D_rodata

# .rodata:0x388 | 0x1060 | size: 0x9
.obj str_keihin07_aji_00011ec8, local
	.string "keihin07"
.endobj str_keihin07_aji_00011ec8

# .rodata:0x391 | 0x1069 | size: 0x3
.obj gap_03_00001069_rodata, global
.hidden gap_03_00001069_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001069_rodata

# .rodata:0x394 | 0x106C | size: 0x9
.obj str_keihin08_aji_00011ed4, local
	.string "keihin08"
.endobj str_keihin08_aji_00011ed4
	.byte 0x00, 0x00, 0x00

# .rodata:0x3A0 | 0x1078 | size: 0x4
.obj zero_aji_00011ee0, local
	.float 0
.endobj zero_aji_00011ee0

# .rodata:0x3A4 | 0x107C | size: 0x4
.obj float_1p5_aji_00011ee4, local
	.float 1.5
.endobj float_1p5_aji_00011ee4

# .rodata:0x3A8 | 0x1080 | size: 0x4
.obj float_4p7124_aji_00011ee8, local
	.float 4.712389
.endobj float_4p7124_aji_00011ee8
	.4byte 0x00000000

# .rodata:0x3B0 | 0x1088 | size: 0x8
.obj double_to_int_aji_00011ef0, local
	.double 4503601774854144
.endobj double_to_int_aji_00011ef0

# .rodata:0x3B8 | 0x1090 | size: 0x4
.obj float_20_aji_00011ef8, local
	.float 20
.endobj float_20_aji_00011ef8

# .rodata:0x3BC | 0x1094 | size: 0xB
.obj str_keihinPCT02d_aji_00011efc, local
	.string "keihin%02d"
.endobj str_keihinPCT02d_aji_00011efc

# .rodata:0x3C7 | 0x109F | size: 0x1
.obj gap_03_0000109F_rodata, global
.hidden gap_03_0000109F_rodata
	.byte 0x00
.endobj gap_03_0000109F_rodata

# 0x00006DF8..0x00009BB0 | size: 0x2DB8
.data
.balign 8

# .data:0x0 | 0x6DF8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x6E00 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x6E04 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x6E08 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x6E0C | size: 0x4
.obj gap_04_00006E0C_data, global
.hidden gap_04_00006E0C_data
	.4byte 0x00000000
.endobj gap_04_00006E0C_data

# .data:0x18 | 0x6E10 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x6E18 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x6E1C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x6E20 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x6E28 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x6E2C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x6E30 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x6E34 | size: 0x4
.obj gap_04_00006E34_data, global
.hidden gap_04_00006E34_data
	.4byte 0x00000000
.endobj gap_04_00006E34_data

# .data:0x40 | 0x6E38 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x6E40 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x6E44 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x6E48 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7980
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00011b40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00011b4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0xA8 | 0x6EA0 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7980
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00011b40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00011b4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x100 | 0x6EF8 | size: 0x78
.obj bero_entry_data, local
	.4byte str_e_bero_aji_00011b58
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_01_aji_00011b60
	.4byte str_w_bero_2_aji_00011b68
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

# .data:0x178 | 0x6F70 | size: 0xB0
.obj evt_kaitentou, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24A8E80
	.4byte 0x00020015
	.4byte 0xFE363C80
	.4byte 0xF2501A80
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFAA2B58F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kaitentou

# .data:0x228 | 0x7020 | size: 0xB0
.obj evt_kaitentou2, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24A8E80
	.4byte 0x00020015
	.4byte 0xFE363C80
	.4byte 0xF2501A80
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFAA2B58F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kaitentou2

# .data:0x2D8 | 0x70D0 | size: 0x1F4
.obj evt_hari, local
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C88
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C8A
	.4byte 0x00020019
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000384
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000005DC
	.4byte 0xFE363C89
	.4byte 0x00020035
	.4byte 0xFE363C89
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFAA2B58F
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFAA2B58F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020019
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_hari

# .data:0x4CC | 0x72C4 | size: 0x204
.obj ufo_hand, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B589
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000BB8
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C83
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_a_aji_00011b74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_a_aji_00011b80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_b_aji_00011b8c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_b_aji_00011b98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000BB8
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C83
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_a_aji_00011b74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_a_aji_00011b80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_b_aji_00011b8c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_b_aji_00011b98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B589
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ufo_hand

# .data:0x6D0 | 0x74C8 | size: 0x14
.obj move_left, local
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_left

# .data:0x6E4 | 0x74DC | size: 0x14
.obj move_left2, local
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_left2

# .data:0x6F8 | 0x74F0 | size: 0x14
.obj move_up, local
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_up

# .data:0x70C | 0x7504 | size: 0x14
.obj move_up2, local
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_up2

# .data:0x720 | 0x7518 | size: 0x104
.obj hand_success, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000BB8
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_a_aji_00011b74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_a_aji_00011b80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_b_aji_00011b8c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_b_aji_00011b98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_c_aji_00011ba4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_c_aji_00011bb0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hand_success

# .data:0x824 | 0x761C | size: 0x200
.obj hand_fail, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00001388
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_a_aji_00011b74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_a_aji_00011b80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_b_aji_00011b8c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_b_aji_00011b98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_c_aji_00011ba4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_c_aji_00011bb0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00001388
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_a_aji_00011b74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_a_aji_00011b80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_b_aji_00011b8c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_b_aji_00011b98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_c_aji_00011ba4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_c_aji_00011bb0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hand_fail

# .data:0xA24 | 0x781C | size: 0x104
.obj hand_release, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000BB8
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_a_aji_00011b74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_a_aji_00011b80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_b_aji_00011b8c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_b_aji_00011b98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_1_c_aji_00011ba4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_te_2_c_aji_00011bb0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hand_release

# .data:0xB28 | 0x7920 | size: 0x834
.obj ufo_main, local
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B58C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B58E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x000000E6
	.4byte 0x00020032
	.4byte 0xFD050F8B
	.4byte 0x00000064
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0xFD050F8B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte ufo_hand
	.4byte 0xFE363C89
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFAA2B58C
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_CRANE_MOVE1_aji_00011bc4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFD050F8A
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0xFD050F8B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFD050F8A
	.4byte 0xFFFFFF6A
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C83
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B58B
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_CRANE_MOVE1_aji_00011bc4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFD050F8B
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0xFD050F8B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFD050F8B
	.4byte 0xFFFFFF9C
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFAA2B58B
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C83
	.4byte 0x00010003
	.4byte 0x00000064
	.4byte 0x00020018
	.4byte 0xFAA2B589
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_CRANE_MOVE1_aji_00011bc4
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFDA8
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFD050F8A
	.4byte 0xFE363C80
	.4byte 0xFD050F8B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte item_chk
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte hand_success
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte hand_success
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_item_move_3d_position
	.4byte 0xFE363C88
	.4byte 0xFD050F8A
	.4byte 0x00000069
	.4byte 0xFD050F8B
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFDA8
	.4byte 0x00000000
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFD050F8A
	.4byte 0xFE363C80
	.4byte 0xFD050F8B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_item_move_3d_position
	.4byte 0xFE363C88
	.4byte 0xFD050F8A
	.4byte 0x00000069
	.4byte 0x0000006E
	.4byte 0x00000BB8
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_CRANE_MOVE1_aji_00011bc4
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFD050F8B
	.4byte 0x0000006E
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F8B
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C85
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000032
	.4byte 0x00000091
	.4byte 0x00000211
	.4byte 0x00000032
	.4byte 0x00000032
	.4byte 0xFFFFFFF3
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_item_move_3d_position
	.4byte 0xFE363C88
	.4byte 0x00000028
	.4byte 0x00000069
	.4byte 0xFD050F8B
	.4byte 0x00000BB8
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_CRANE_MOVE1_aji_00011bc4
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFD050F8A
	.4byte 0x00000028
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFD050F8B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000028
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_item_set_move_dir_speed
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xF24A7A80
	.4byte 0x0003005B
	.4byte evt_item_set_gravity
	.4byte 0xFE363C88
	.4byte 0xF24A7E80
	.4byte 0x0003005B
	.4byte evt_item_set_bound_rate
	.4byte 0xFE363C88
	.4byte 0xF24A7E80
	.4byte 0x0003005B
	.4byte evt_item_set_jump_power
	.4byte 0xFE363C88
	.4byte 0xF24A7A80
	.4byte 0x0003005B
	.4byte evt_item_set_bound_limit
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_item_set_bound_next_speed
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000005A
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000002D
	.4byte 0x0003005B
	.4byte evt_item_set_bound_next_dir
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte 0xFE363C88
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_item_status_on
	.4byte 0xFE363C88
	.4byte 0x00000010
	.4byte 0x0003005B
	.4byte evt_item_change_mode
	.4byte 0xFE363C88
	.4byte 0x00000005
	.4byte 0x0000006D
	.4byte 0x0001005E
	.4byte hand_release
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte hand_release
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B58C
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ufo_main

# .data:0x135C | 0x8154 | size: 0x1CC
.obj evt_ufo_init, local
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hikari_aji_00011bdc
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hikari_aji_00011bdc
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hikari_aji_00011bdc
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hikari_aji_00011bdc
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_tama_a_aji_00011be8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_tama_b_aji_00011bf4
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_tama_a_aji_00011be8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_tama_b_aji_00011bf4
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020018
	.4byte 0xFAA2B58E
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00008CA0
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_hikari_aji_00011bdc
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFAA2B58E
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001005C
	.4byte ufo_main
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ufo_init

# .data:0x1528 | 0x8320 | size: 0x234
.obj evt_zenmai, local
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG7_AMB_GEAR1_aji_00011c00
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000174
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00008CA0
	.4byte 0x000007D0
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00008CA0
	.4byte 0x000003E8
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C83
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_zenmai1_aji_00011c14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_zenmai2_aji_00011c20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_zenmai3_aji_00011c2c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_zenmai4_aji_00011c38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_zenmai5_aji_00011c44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_zenmai6_aji_00011c50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_zenmais1_aji_00011c5c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_zenmais2_aji_00011c68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_zenmais3_aji_00011c74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_zenmais4_aji_00011c80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_zenmais5_aji_00011c8c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_zenmais6_aji_00011c98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_zenmais_ari_aji_00011ca4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_zenmai

# .data:0x175C | 0x8554 | size: 0x84
.obj blink_sw, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj blink_sw

# .data:0x17E0 | 0x85D8 | size: 0x45C
.obj evt_ufo_sousaban, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000E6
	.4byte 0x000000C8
	.4byte 0x0000017C
	.4byte 0x000000E6
	.4byte 0x00000082
	.4byte 0xFFFFFFF3
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_CRANE_MOVE1_aji_00011bc4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0001005C
	.4byte evt_ufo_init
	.4byte 0x0001000A
	.4byte 0x00000898
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C83
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000008FC
	.4byte 0x00000190
	.4byte 0x00000BB8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x00020034
	.4byte 0xFD050F8A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0xFD050F8B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFBF
	.4byte 0x000000AF
	.4byte 0x00000211
	.4byte 0xFFFFFFBF
	.4byte 0x00000050
	.4byte 0xFFFFFFF3
	.4byte 0x00000BB8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000D48
	.4byte 0x00020018
	.4byte 0xF8406BFA
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406BFA
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_00_01_aji_00011cb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_sousa_icon
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00000082
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_key_get_button
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000100
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_key_get_button
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000100
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_sousa_icon
	.4byte 0x00000001
	.4byte 0x000000C8
	.4byte 0x00000046
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_key_get_button
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000200
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_key_get_button
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000200
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B58C
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000190
	.4byte 0x000008FC
	.4byte 0x00000BB8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x00020034
	.4byte 0xFD050F8A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0xFD050F8B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x000000E6
	.4byte 0x00020032
	.4byte 0xFD050F8B
	.4byte 0x00000064
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_kure_aji_00011bbc
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0xFD050F8B
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hikari_aji_00011bdc
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B58E
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_cam_shift_reset
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ufo_sousaban

# .data:0x1C3C | 0x8A34 | size: 0x234
.obj evt_sw, local
	.4byte 0x00020018
	.4byte 0xF8406BDC
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BDD
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BDE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BE5
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406BE5
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000014
	.4byte 0x0000007D
	.4byte 0x0000018A
	.4byte 0x00000014
	.4byte 0x00000037
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_pato4_aji_00011cc4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_CRANE_SIREN_aji_00011ccc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C83
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_pato4_aji_00011cc4
	.4byte 0x0001005C
	.4byte evt_kaitentou
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_meta_1_1_aji_00011ce4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_meta_2_1_aji_00011cf0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_meta_3_1_aji_00011cfc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_meta_1_2_aji_00011d08
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_meta_2_2_aji_00011d14
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_meta_3_2_aji_00011d20
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_hari01_aji_00011d2c
	.4byte 0x0001005C
	.4byte evt_hari
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_hari02_aji_00011d38
	.4byte 0x0001005C
	.4byte evt_hari
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_sui_01_aji_00011d44
	.4byte 0x00000000
	.4byte evt_ufo_sousaban
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sw

# .data:0x1E70 | 0x8C68 | size: 0x160
.obj evt_sw_reinit, local
	.4byte 0x00020032
	.4byte 0xFAA2B58F
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406BDC
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406BDC
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_sui1_aji_00011d50
	.4byte 0x00000000
	.4byte evt_sw0
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BDD
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406BDD
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_sui2_aji_00011d58
	.4byte 0x00000000
	.4byte evt_sw1
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BDE
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406BDE
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_sui3_aji_00011d60
	.4byte 0x00000000
	.4byte evt_sw2
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005F
	.4byte 0xFD050F8D
	.4byte 0x0001005F
	.4byte 0xFD050F8E
	.4byte 0x0001005F
	.4byte 0xFD050F8F
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFAA2B58F
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_sui_1_aji_00011d68
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_sui_2_aji_00011d70
	.4byte 0x0002005D
	.4byte blink_sw
	.4byte 0xFD050F8D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_sui_2_1_aji_00011d78
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_sui_2_2_aji_00011d80
	.4byte 0x0002005D
	.4byte blink_sw
	.4byte 0xFD050F8E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_sui_3_1_aji_00011d88
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_sui_3_2_aji_00011d90
	.4byte 0x0002005D
	.4byte blink_sw
	.4byte 0xFD050F8F
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sw_reinit

# .data:0x1FD0 | 0x8DC8 | size: 0x120
.obj evt_sw0, local
	.4byte 0x00020018
	.4byte 0xF8406BDD
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406BDE
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_CRANE_BUTTO_aji_00011d98
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406BDC
	.4byte 0x00000001
	.4byte 0x0001005F
	.4byte 0xFD050F8D
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_sui_1_aji_00011d68
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_sui_2_aji_00011d70
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_pato1_aji_00011db4
	.4byte 0x0001005C
	.4byte evt_kaitentou2
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_meta_1_1_aji_00011ce4
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_meta_1_2_aji_00011d08
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_hari04_aji_00011dbc
	.4byte 0x0001005C
	.4byte evt_hari
	.4byte 0x0001005E
	.4byte evt_sw
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte evt_sw_reinit
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sw0

# .data:0x20F0 | 0x8EE8 | size: 0x120
.obj evt_sw1, local
	.4byte 0x00020018
	.4byte 0xF8406BDC
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406BDE
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_CRANE_BUTTO_aji_00011d98
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406BDD
	.4byte 0x00000001
	.4byte 0x0001005F
	.4byte 0xFD050F8E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_sui_2_1_aji_00011d78
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_sui_2_2_aji_00011d80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_pato2_aji_00011dc8
	.4byte 0x0001005C
	.4byte evt_kaitentou2
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_meta_2_1_aji_00011cf0
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_meta_2_2_aji_00011d14
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_hari05_aji_00011dd0
	.4byte 0x0001005C
	.4byte evt_hari
	.4byte 0x0001005E
	.4byte evt_sw
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte evt_sw_reinit
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sw1

# .data:0x2210 | 0x9008 | size: 0x120
.obj evt_sw2, local
	.4byte 0x00020018
	.4byte 0xF8406BDC
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406BDD
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_CRANE_BUTTO_aji_00011d98
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406BDE
	.4byte 0x00000001
	.4byte 0x0001005F
	.4byte 0xFD050F8F
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_sui_3_1_aji_00011d88
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_sui_3_2_aji_00011d90
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_pato3_aji_00011ddc
	.4byte 0x0001005C
	.4byte evt_kaitentou2
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_meta_3_1_aji_00011cfc
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_meta_3_2_aji_00011d20
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_hari06_aji_00011de4
	.4byte 0x0001005C
	.4byte evt_hari
	.4byte 0x0001005E
	.4byte evt_sw
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte evt_sw_reinit
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sw2

# .data:0x2330 | 0x9128 | size: 0x8
.obj haguruma_tbl, local
	.4byte 0x00000055
	.4byte 0xFFFFFFFF
.endobj haguruma_tbl

# .data:0x2338 | 0x9130 | size: 0x210
.obj evt_haguruma, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000055
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_00_00_aji_00011df0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte haguruma_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_aji_00011e00
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
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_zenmais_nashi_aji_00011e14
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_zenmais_ari_aji_00011ca4
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_zenmai
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xF8406BE4
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_sui1_aji_00011d50
	.4byte 0x00000000
	.4byte evt_sw0
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_sui2_aji_00011d58
	.4byte 0x00000000
	.4byte evt_sw1
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_sui3_aji_00011d60
	.4byte 0x00000000
	.4byte evt_sw2
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_sui_1_aji_00011d68
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_sui_2_aji_00011d70
	.4byte 0x0002005D
	.4byte blink_sw
	.4byte 0xFD050F8D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_sui_2_1_aji_00011d78
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_sui_2_2_aji_00011d80
	.4byte 0x0002005D
	.4byte blink_sw
	.4byte 0xFD050F8E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_sui_3_1_aji_00011d88
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_sui_3_2_aji_00011d90
	.4byte 0x0002005D
	.4byte blink_sw
	.4byte 0xFD050F8F
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_haguruma

# .data:0x2548 | 0x9340 | size: 0x14
.obj badge_evt, local
	.4byte 0x00020032
	.4byte 0xF8406BE6
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj badge_evt

# .data:0x255C | 0x9354 | size: 0x14
.obj badge_evt2, local
	.4byte 0x00020032
	.4byte 0xF8406BF8
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj badge_evt2

# .data:0x2570 | 0x9368 | size: 0x14
.obj badge_evt3, local
	.4byte 0x00020032
	.4byte 0xF84071A1
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj badge_evt3

# .data:0x2584 | 0x937C | size: 0x834
.obj aji_03_init_evt_2_data_937C, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN2_aji_00011e24
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI3_aji_00011e34
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
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hikari_aji_00011bdc
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_kure_aji_00011bbc
	.4byte 0x000000E6
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_tama_a_aji_00011be8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_tama_b_aji_00011bf4
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_tanadoor_1_aji_00011e44
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_tanadoor_2_aji_00011e54
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_meta_1_2_aji_00011d08
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_meta_2_2_aji_00011d14
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_meta_3_2_aji_00011d20
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406BE5
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406BDC
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406BDD
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406BDE
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BE4
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_tanadoor_1_aji_00011e64
	.4byte 0x00000000
	.4byte evt_haguruma
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_zenmais_ari_aji_00011ca4
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_zenmais_nashi_aji_00011e14
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_zenmai
	.4byte 0x00020018
	.4byte 0xF8406BE5
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_sui_01_aji_00011d44
	.4byte 0x00000000
	.4byte evt_ufo_sousaban
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BE4
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406BE5
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_sui1_aji_00011d50
	.4byte 0x00000000
	.4byte evt_sw0
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_sui2_aji_00011d58
	.4byte 0x00000000
	.4byte evt_sw1
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_sui3_aji_00011d60
	.4byte 0x00000000
	.4byte evt_sw2
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_sui_1_aji_00011d68
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_sui_2_aji_00011d70
	.4byte 0x0002005D
	.4byte blink_sw
	.4byte 0xFD050F8D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_sui_2_1_aji_00011d78
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_sui_2_2_aji_00011d80
	.4byte 0x0002005D
	.4byte blink_sw
	.4byte 0xFD050F8E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_sui_3_1_aji_00011d88
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_sui_3_2_aji_00011d90
	.4byte 0x0002005D
	.4byte blink_sw
	.4byte 0xFD050F8F
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BE5
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_sui_2_aji_00011d70
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_sui_2_2_aji_00011d80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_sui_3_2_aji_00011d90
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_sui_1_aji_00011d68
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_sui_2_1_aji_00011d78
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_sui_3_1_aji_00011d88
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_pato1_aji_00011db4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_pato2_aji_00011dc8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_pato3_aji_00011ddc
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406BDC
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_pato1_aji_00011db4
	.4byte 0x0001005C
	.4byte evt_kaitentou2
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_meta_1_1_aji_00011ce4
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_meta_1_2_aji_00011d08
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_hari04_aji_00011dbc
	.4byte 0x0001005C
	.4byte evt_hari
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BDD
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_pato2_aji_00011dc8
	.4byte 0x0001005C
	.4byte evt_kaitentou2
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_meta_2_1_aji_00011cf0
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_meta_2_2_aji_00011d14
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_hari05_aji_00011dd0
	.4byte 0x0001005C
	.4byte evt_hari
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BDE
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_pato3_aji_00011ddc
	.4byte 0x0001005C
	.4byte evt_kaitentou2
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_meta_3_1_aji_00011cfc
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_meta_3_2_aji_00011d20
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_hari06_aji_00011de4
	.4byte 0x0001005C
	.4byte evt_hari
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_pato4_aji_00011cc4
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406BE5
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_pato4_aji_00011cc4
	.4byte 0x0001005C
	.4byte evt_kaitentou
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_hari01_aji_00011d2c
	.4byte 0x0001005C
	.4byte evt_hari
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_hari02_aji_00011d38
	.4byte 0x0001005C
	.4byte evt_hari
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BE5
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_meta_1_1_aji_00011ce4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_meta_2_1_aji_00011cf0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_meta_3_1_aji_00011cfc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_meta_1_2_aji_00011d08
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_meta_2_2_aji_00011d14
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_meta_3_2_aji_00011d20
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_meta_1_1_aji_00011ce4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_meta_2_1_aji_00011cf0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_meta_3_1_aji_00011cfc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_meta_1_2_aji_00011d08
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_meta_2_2_aji_00011d14
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_meta_3_2_aji_00011d20
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_keihin00_aji_00011e74
	.4byte 0x00000079
	.4byte 0xFFFFFF6A
	.4byte 0x00000032
	.4byte 0x00000064
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_keihin01_aji_00011e80
	.4byte 0x00000079
	.4byte 0xFFFFFF9C
	.4byte 0x00000032
	.4byte 0x00000064
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_keihin02_aji_00011e8c
	.4byte 0x00000079
	.4byte 0xFFFFFFCE
	.4byte 0x00000032
	.4byte 0x00000064
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_keihin03_aji_00011e98
	.4byte 0x00000079
	.4byte 0xFFFFFF6A
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406BE6
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_keihin04_aji_00011ea4
	.4byte 0x0000011D
	.4byte 0xFFFFFF9C
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte badge_evt
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_keihin05_aji_00011eb0
	.4byte 0x00000079
	.4byte 0xFFFFFFCE
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406BF8
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_keihin06_aji_00011ebc
	.4byte 0x0000011E
	.4byte 0xFFFFFF6A
	.4byte 0x00000032
	.4byte 0xFFFFFF9C
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte badge_evt2
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_keihin07_aji_00011ec8
	.4byte 0x00000079
	.4byte 0xFFFFFF9C
	.4byte 0x00000032
	.4byte 0xFFFFFF9C
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84071A1
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_keihin08_aji_00011ed4
	.4byte 0x0000007D
	.4byte 0xFFFFFFCE
	.4byte 0x00000032
	.4byte 0xFFFFFF9C
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte badge_evt3
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_emergency_2_data_1E408
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_03_init_evt_2_data_937C

# 0x00000078..0x000000B8 | size: 0x40
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x78 | size: 0x40
.obj tmp$562, local
	.skip 0x40
.endobj tmp$562
