.include "macros.inc"
.file "dou_10.o"

# 0x000007D4..0x000010AC | size: 0x8D8
.text
.balign 4

# .text:0x0 | 0x7D4 | size: 0xB0
.fn namiyoke_se_check, local
/* 000007D4 00000898  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 000007D8 0000089C  7C 08 02 A6 */	mflr r0
/* 000007DC 000008A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 000007E0 000008A4  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 000007E4 000008A8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 000007E8 000008AC  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 000007EC 000008B0  7C 7D 1B 78 */	mr r29, r3
/* 000007F0 000008B4  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 000007F4 000008B8  4B FF F8 79 */	bl marioGetPtr
/* 000007F8 000008BC  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000007FC 000008C0  7C 7F 1B 78 */	mr r31, r3
/* 00000800 000008C4  7F A3 EB 78 */	mr r3, r29
/* 00000804 000008C8  4B FF F8 69 */	bl evtGetFloat
/* 00000808 000008CC  FF C0 08 90 */	fmr f30, f1
/* 0000080C 000008D0  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00000810 000008D4  7F A3 EB 78 */	mr r3, r29
/* 00000814 000008D8  4B FF F8 59 */	bl evtGetFloat
/* 00000818 000008DC  FF E0 08 90 */	fmr f31, f1
/* 0000081C 000008E0  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00000820 000008E4  7F A3 EB 78 */	mr r3, r29
/* 00000824 000008E8  4B FF F8 49 */	bl evtGetFloat
/* 00000828 000008EC  D3 C1 00 08 */	stfs f30, 0x8(r1)
/* 0000082C 000008F0  38 61 00 08 */	addi r3, r1, 0x8
/* 00000830 000008F4  38 9F 00 8C */	addi r4, r31, 0x8c
/* 00000834 000008F8  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 00000838 000008FC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 0000083C 00000900  4B FF F8 31 */	bl PSVECSquareDistance
/* 00000840 00000904  FC 00 08 1E */	fctiwz f0, f1
/* 00000844 00000908  80 1D 00 B8 */	lwz r0, 0xb8(r29)
/* 00000848 0000090C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 0000084C 00000910  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 00000850 00000914  7C 03 00 00 */	cmpw r3, r0
/* 00000854 00000918  40 80 00 10 */	bge .L_00000864
/* 00000858 0000091C  80 1D 00 C4 */	lwz r0, 0xc4(r29)
/* 0000085C 00000920  90 1D 00 B4 */	stw r0, 0xb4(r29)
/* 00000860 00000924  90 7D 00 B8 */	stw r3, 0xb8(r29)
.L_00000864:
/* 00000864 00000928  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 00000868 0000092C  38 60 00 02 */	li r3, 0x2
/* 0000086C 00000930  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 00000870 00000934  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00000874 00000938  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00000878 0000093C  7C 08 03 A6 */	mtlr r0
/* 0000087C 00000940  38 21 00 40 */	addi r1, r1, 0x40
/* 00000880 00000944  4E 80 00 20 */	blr
.endfn namiyoke_se_check

# .text:0xB0 | 0x884 | size: 0x24
.fn namiyoke_fail_stop, local
/* 00000884 00000948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000888 0000094C  7C 08 02 A6 */	mflr r0
/* 0000088C 00000950  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000890 00000954  4B FF F7 DD */	bl marioShipForceStop
/* 00000894 00000958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000898 0000095C  38 60 00 02 */	li r3, 0x2
/* 0000089C 00000960  7C 08 03 A6 */	mtlr r0
/* 000008A0 00000964  38 21 00 10 */	addi r1, r1, 0x10
/* 000008A4 00000968  4E 80 00 20 */	blr
.endfn namiyoke_fail_stop

# .text:0xD4 | 0x8A8 | size: 0x150
.fn dou_namiatari_check, local
/* 000008A8 0000096C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 000008AC 00000970  7C 08 02 A6 */	mflr r0
/* 000008B0 00000974  90 01 00 44 */	stw r0, 0x44(r1)
/* 000008B4 00000978  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 000008B8 0000097C  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 000008BC 00000980  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 000008C0 00000984  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 000008C4 00000988  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000008C8 0000098C  7C 7D 1B 78 */	mr r29, r3
/* 000008CC 00000990  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 000008D0 00000994  4B FF F7 9D */	bl marioGetPtr
/* 000008D4 00000998  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000008D8 0000099C  7C 7F 1B 78 */	mr r31, r3
/* 000008DC 000009A0  7F A3 EB 78 */	mr r3, r29
/* 000008E0 000009A4  4B FF F7 8D */	bl evtGetFloat
/* 000008E4 000009A8  FF C0 08 90 */	fmr f30, f1
/* 000008E8 000009AC  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 000008EC 000009B0  7F A3 EB 78 */	mr r3, r29
/* 000008F0 000009B4  4B FF F7 7D */	bl evtGetFloat
/* 000008F4 000009B8  FF E0 08 90 */	fmr f31, f1
/* 000008F8 000009BC  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 000008FC 000009C0  7F A3 EB 78 */	mr r3, r29
/* 00000900 000009C4  4B FF F7 6D */	bl evtGetFloat
/* 00000904 000009C8  3C 60 00 00 */	lis r3, float_neg45_dou_0000502c@ha
/* 00000908 000009CC  3C 80 00 00 */	lis r4, float_30_dou_00005028@ha
/* 0000090C 000009D0  C0 03 00 00 */	lfs f0, float_neg45_dou_0000502c@l(r3)
/* 00000910 000009D4  C0 64 00 00 */	lfs f3, float_30_dou_00005028@l(r4)
/* 00000914 000009D8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00000918 000009DC  C0 BF 00 8C */	lfs f5, 0x8c(r31)
/* 0000091C 000009E0  FC 80 18 90 */	fmr f4, f3
/* 00000920 000009E4  C0 DF 00 94 */	lfs f6, 0x94(r31)
/* 00000924 000009E8  4C 40 13 82 */	cror eq, lt, eq
/* 00000928 000009EC  40 82 00 1C */	bne .L_00000944
/* 0000092C 000009F0  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00000930 000009F4  7F A3 EB 78 */	mr r3, r29
/* 00000934 000009F8  38 A0 00 00 */	li r5, 0x0
/* 00000938 000009FC  4B FF F7 35 */	bl evtSetValue
/* 0000093C 00000A00  38 60 00 02 */	li r3, 0x2
/* 00000940 00000A04  48 00 00 94 */	b .L_000009D4
.L_00000944:
/* 00000944 00000A08  3C 60 00 00 */	lis r3, float_neg5_dou_00005030@ha
/* 00000948 00000A0C  C0 03 00 00 */	lfs f0, float_neg5_dou_00005030@l(r3)
/* 0000094C 00000A10  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00000950 00000A14  4C 40 13 82 */	cror eq, lt, eq
/* 00000954 00000A18  40 82 00 24 */	bne .L_00000978
/* 00000958 00000A1C  3C 80 00 00 */	lis r4, float_50_dou_00005034@ha
/* 0000095C 00000A20  3C 60 00 00 */	lis r3, float_45_dou_00005038@ha
/* 00000960 00000A24  C0 44 00 00 */	lfs f2, float_50_dou_00005034@l(r4)
/* 00000964 00000A28  C0 03 00 00 */	lfs f0, float_45_dou_00005038@l(r3)
/* 00000968 00000A2C  EC 42 F8 2A */	fadds f2, f2, f31
/* 0000096C 00000A30  EC 02 00 24 */	fdivs f0, f2, f0
/* 00000970 00000A34  EC 63 00 32 */	fmuls f3, f3, f0
/* 00000974 00000A38  EC 84 00 32 */	fmuls f4, f4, f0
.L_00000978:
/* 00000978 00000A3C  3C 60 00 00 */	lis r3, float_20_dou_0000503c@ha
/* 0000097C 00000A40  EC 5E 28 28 */	fsubs f2, f30, f5
/* 00000980 00000A44  C0 03 00 00 */	lfs f0, float_20_dou_0000503c@l(r3)
/* 00000984 00000A48  38 A0 00 01 */	li r5, 0x1
/* 00000988 00000A4C  EC 03 00 2A */	fadds f0, f3, f0
/* 0000098C 00000A50  FC 40 12 10 */	fabs f2, f2
/* 00000990 00000A54  FC 00 02 10 */	fabs f0, f0
/* 00000994 00000A58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 00000998 00000A5C  40 81 00 08 */	ble .L_000009A0
/* 0000099C 00000A60  38 A0 00 00 */	li r5, 0x0
.L_000009A0:
/* 000009A0 00000A64  3C 60 00 00 */	lis r3, float_10_dou_00005040@ha
/* 000009A4 00000A68  EC 21 30 28 */	fsubs f1, f1, f6
/* 000009A8 00000A6C  C0 03 00 00 */	lfs f0, float_10_dou_00005040@l(r3)
/* 000009AC 00000A70  EC 04 00 2A */	fadds f0, f4, f0
/* 000009B0 00000A74  FC 20 0A 10 */	fabs f1, f1
/* 000009B4 00000A78  FC 00 02 10 */	fabs f0, f0
/* 000009B8 00000A7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000009BC 00000A80  40 81 00 08 */	ble .L_000009C4
/* 000009C0 00000A84  38 A0 00 00 */	li r5, 0x0
.L_000009C4:
/* 000009C4 00000A88  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 000009C8 00000A8C  7F A3 EB 78 */	mr r3, r29
/* 000009CC 00000A90  4B FF F6 A1 */	bl evtSetValue
/* 000009D0 00000A94  38 60 00 02 */	li r3, 0x2
.L_000009D4:
/* 000009D4 00000A98  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 000009D8 00000A9C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 000009DC 00000AA0  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 000009E0 00000AA4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 000009E4 00000AA8  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000009E8 00000AAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 000009EC 00000AB0  7C 08 03 A6 */	mtlr r0
/* 000009F0 00000AB4  38 21 00 40 */	addi r1, r1, 0x40
/* 000009F4 00000AB8  4E 80 00 20 */	blr
.endfn dou_namiatari_check

# .text:0x224 | 0x9F8 | size: 0x214
.fn nami_running_func, local
/* 000009F8 00000ABC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000009FC 00000AC0  7C 08 02 A6 */	mflr r0
/* 00000A00 00000AC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 00000A04 00000AC8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 00000A08 00000ACC  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 00000A0C 00000AD0  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00000A10 00000AD4  7C 7E 1B 78 */	mr r30, r3
/* 00000A14 00000AD8  3C 80 00 00 */	lis r4, float_1p35_dou_00005044@ha
/* 00000A18 00000ADC  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 00000A1C 00000AE0  3C 60 00 00 */	lis r3, float_840_dou_00005048@ha
/* 00000A20 00000AE4  C0 04 00 00 */	lfs f0, float_1p35_dou_00005044@l(r4)
/* 00000A24 00000AE8  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 00000A28 00000AEC  EC 21 00 28 */	fsubs f1, f1, f0
/* 00000A2C 00000AF0  C0 03 00 00 */	lfs f0, float_840_dou_00005048@l(r3)
/* 00000A30 00000AF4  D0 3E 00 B4 */	stfs f1, 0xb4(r30)
/* 00000A34 00000AF8  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 00000A38 00000AFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000A3C 00000B00  40 81 00 30 */	ble .L_00000A6C
/* 00000A40 00000B04  3C 80 00 00 */	lis r4, float_0p35_dou_0000504c@ha
/* 00000A44 00000B08  3C 60 00 00 */	lis r3, zero_dou_00005050@ha
/* 00000A48 00000B0C  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 00000A4C 00000B10  C0 24 00 00 */	lfs f1, float_0p35_dou_0000504c@l(r4)
/* 00000A50 00000B14  C0 03 00 00 */	lfs f0, zero_dou_00005050@l(r3)
/* 00000A54 00000B18  EC 22 08 2A */	fadds f1, f2, f1
/* 00000A58 00000B1C  D0 3E 00 B8 */	stfs f1, 0xb8(r30)
/* 00000A5C 00000B20  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 00000A60 00000B24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000A64 00000B28  40 81 00 08 */	ble .L_00000A6C
/* 00000A68 00000B2C  D0 1E 00 B8 */	stfs f0, 0xb8(r30)
.L_00000A6C:
/* 00000A6C 00000B30  80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 00000A70 00000B34  2C 00 00 02 */	cmpwi r0, 0x2
/* 00000A74 00000B38  40 80 00 10 */	bge .L_00000A84
/* 00000A78 00000B3C  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000A7C 00000B40  40 80 00 14 */	bge .L_00000A90
/* 00000A80 00000B44  48 00 00 64 */	b .L_00000AE4
.L_00000A84:
/* 00000A84 00000B48  2C 00 00 04 */	cmpwi r0, 0x4
/* 00000A88 00000B4C  40 80 00 5C */	bge .L_00000AE4
/* 00000A8C 00000B50  48 00 00 30 */	b .L_00000ABC
.L_00000A90:
/* 00000A90 00000B54  3C 60 00 00 */	lis r3, float_200_dou_00005054@ha
/* 00000A94 00000B58  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 00000A98 00000B5C  C0 03 00 00 */	lfs f0, float_200_dou_00005054@l(r3)
/* 00000A9C 00000B60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000AA0 00000B64  40 80 00 44 */	bge .L_00000AE4
/* 00000AA4 00000B68  3C 60 00 00 */	lis r3, float_0p4_dou_00005058@ha
/* 00000AA8 00000B6C  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 00000AAC 00000B70  C0 03 00 00 */	lfs f0, float_0p4_dou_00005058@l(r3)
/* 00000AB0 00000B74  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000AB4 00000B78  D0 1E 00 B8 */	stfs f0, 0xb8(r30)
/* 00000AB8 00000B7C  48 00 00 2C */	b .L_00000AE4
.L_00000ABC:
/* 00000ABC 00000B80  3C 60 00 00 */	lis r3, float_neg340_dou_0000505c@ha
/* 00000AC0 00000B84  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 00000AC4 00000B88  C0 03 00 00 */	lfs f0, float_neg340_dou_0000505c@l(r3)
/* 00000AC8 00000B8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000ACC 00000B90  40 80 00 18 */	bge .L_00000AE4
/* 00000AD0 00000B94  3C 60 00 00 */	lis r3, float_0p4_dou_00005058@ha
/* 00000AD4 00000B98  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 00000AD8 00000B9C  C0 03 00 00 */	lfs f0, float_0p4_dou_00005058@l(r3)
/* 00000ADC 00000BA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000AE0 00000BA4  D0 1E 00 B8 */	stfs f0, 0xb8(r30)
.L_00000AE4:
/* 00000AE4 00000BA8  38 00 00 00 */	li r0, 0x0
/* 00000AE8 00000BAC  90 1E 00 D8 */	stw r0, 0xd8(r30)
/* 00000AEC 00000BB0  80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 00000AF0 00000BB4  2C 00 00 02 */	cmpwi r0, 0x2
/* 00000AF4 00000BB8  40 80 00 10 */	bge .L_00000B04
/* 00000AF8 00000BBC  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000AFC 00000BC0  40 80 00 14 */	bge .L_00000B10
/* 00000B00 00000BC4  48 00 00 4C */	b .L_00000B4C
.L_00000B04:
/* 00000B04 00000BC8  2C 00 00 04 */	cmpwi r0, 0x4
/* 00000B08 00000BCC  40 80 00 44 */	bge .L_00000B4C
/* 00000B0C 00000BD0  48 00 00 24 */	b .L_00000B30
.L_00000B10:
/* 00000B10 00000BD4  3C 60 00 00 */	lis r3, zero_dou_00005050@ha
/* 00000B14 00000BD8  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 00000B18 00000BDC  C0 03 00 00 */	lfs f0, zero_dou_00005050@l(r3)
/* 00000B1C 00000BE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000B20 00000BE4  40 80 00 2C */	bge .L_00000B4C
/* 00000B24 00000BE8  38 00 00 01 */	li r0, 0x1
/* 00000B28 00000BEC  90 1E 00 D8 */	stw r0, 0xd8(r30)
/* 00000B2C 00000BF0  48 00 00 20 */	b .L_00000B4C
.L_00000B30:
/* 00000B30 00000BF4  3C 60 00 00 */	lis r3, float_neg540_dou_00005060@ha
/* 00000B34 00000BF8  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 00000B38 00000BFC  C0 03 00 00 */	lfs f0, float_neg540_dou_00005060@l(r3)
/* 00000B3C 00000C00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000B40 00000C04  40 80 00 0C */	bge .L_00000B4C
/* 00000B44 00000C08  38 00 00 01 */	li r0, 0x1
/* 00000B48 00000C0C  90 1E 00 D8 */	stw r0, 0xd8(r30)
.L_00000B4C:
/* 00000B4C 00000C10  3C 60 00 00 */	lis r3, gp@ha
/* 00000B50 00000C14  3C 00 43 30 */	lis r0, 0x4330
/* 00000B54 00000C18  38 83 00 00 */	addi r4, r3, gp@l
/* 00000B58 00000C1C  3C E0 00 00 */	lis r7, float_6p2832_dou_00005064@ha
/* 00000B5C 00000C20  80 A4 00 00 */	lwz r5, 0x0(r4)
/* 00000B60 00000C24  3C 60 00 00 */	lis r3, double_to_int_mask_dou_00005078@ha
/* 00000B64 00000C28  38 83 00 00 */	addi r4, r3, double_to_int_mask_dou_00005078@l
/* 00000B68 00000C2C  90 01 00 08 */	stw r0, 0x8(r1)
/* 00000B6C 00000C30  80 A5 00 1C */	lwz r5, 0x1c(r5)
/* 00000B70 00000C34  3C 60 00 00 */	lis r3, float_2_dou_00005068@ha
/* 00000B74 00000C38  38 C3 00 00 */	addi r6, r3, float_2_dou_00005068@l
/* 00000B78 00000C3C  C8 24 00 00 */	lfd f1, 0x0(r4)
/* 00000B7C 00000C40  90 A1 00 0C */	stw r5, 0xc(r1)
/* 00000B80 00000C44  3C 60 00 00 */	lis r3, float_360_dou_0000506c@ha
/* 00000B84 00000C48  C0 46 00 00 */	lfs f2, 0x0(r6)
/* 00000B88 00000C4C  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00000B8C 00000C50  C0 67 00 00 */	lfs f3, float_6p2832_dou_00005064@l(r7)
/* 00000B90 00000C54  EC 20 08 28 */	fsubs f1, f0, f1
/* 00000B94 00000C58  C0 03 00 00 */	lfs f0, float_360_dou_0000506c@l(r3)
/* 00000B98 00000C5C  EC 22 00 72 */	fmuls f1, f2, f1
/* 00000B9C 00000C60  EC 23 00 72 */	fmuls f1, f3, f1
/* 00000BA0 00000C64  EC 21 00 24 */	fdivs f1, f1, f0
/* 00000BA4 00000C68  4B FF F4 C9 */	bl sin
/* 00000BA8 00000C6C  FF E0 08 18 */	frsp f31, f1
/* 00000BAC 00000C70  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000BB0 00000C74  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 00000BB4 00000C78  7F C3 F3 78 */	mr r3, r30
/* 00000BB8 00000C7C  4B FF F4 B5 */	bl evtSetFloat
/* 00000BBC 00000C80  3C 60 00 00 */	lis r3, float_5_dou_00005070@ha
/* 00000BC0 00000C84  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 00000BC4 00000C88  C0 03 00 00 */	lfs f0, float_5_dou_00005070@l(r3)
/* 00000BC8 00000C8C  7F C3 F3 78 */	mr r3, r30
/* 00000BCC 00000C90  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000BD0 00000C94  EC 00 07 F8 */	fmsubs f0, f0, f31, f0
/* 00000BD4 00000C98  EC 21 00 2A */	fadds f1, f1, f0
/* 00000BD8 00000C9C  4B FF F4 95 */	bl evtSetFloat
/* 00000BDC 00000CA0  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00000BE0 00000CA4  7F C3 F3 78 */	mr r3, r30
/* 00000BE4 00000CA8  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 00000BE8 00000CAC  4B FF F4 85 */	bl evtSetFloat
/* 00000BEC 00000CB0  38 60 00 02 */	li r3, 0x2
/* 00000BF0 00000CB4  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 00000BF4 00000CB8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 00000BF8 00000CBC  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00000BFC 00000CC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00000C00 00000CC4  7C 08 03 A6 */	mtlr r0
/* 00000C04 00000CC8  38 21 00 30 */	addi r1, r1, 0x30
/* 00000C08 00000CCC  4E 80 00 20 */	blr
.endfn nami_running_func

# .text:0x438 | 0xC0C | size: 0x70
.fn nami_running_init_func, local
/* 00000C0C 00000CD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000C10 00000CD4  3C 00 43 30 */	lis r0, 0x4330
/* 00000C14 00000CD8  3C A0 00 00 */	lis r5, double_to_int_dou_00005080@ha
/* 00000C18 00000CDC  80 83 00 C8 */	lwz r4, 0xc8(r3)
/* 00000C1C 00000CE0  90 01 00 08 */	stw r0, 0x8(r1)
/* 00000C20 00000CE4  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00000C24 00000CE8  C8 25 00 00 */	lfd f1, double_to_int_dou_00005080@l(r5)
/* 00000C28 00000CEC  90 81 00 0C */	stw r4, 0xc(r1)
/* 00000C2C 00000CF0  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00000C30 00000CF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 00000C34 00000CF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 00000C38 00000CFC  90 01 00 18 */	stw r0, 0x18(r1)
/* 00000C3C 00000D00  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 00000C40 00000D04  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 00000C44 00000D08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00000C48 00000D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000C4C 00000D10  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00000C50 00000D14  EC 00 08 28 */	fsubs f0, f0, f1
/* 00000C54 00000D18  D0 03 00 B8 */	stfs f0, 0xb8(r3)
/* 00000C58 00000D1C  80 03 00 D0 */	lwz r0, 0xd0(r3)
/* 00000C5C 00000D20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00000C60 00000D24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 00000C64 00000D28  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 00000C68 00000D2C  EC 00 08 28 */	fsubs f0, f0, f1
/* 00000C6C 00000D30  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 00000C70 00000D34  38 60 00 02 */	li r3, 0x2
/* 00000C74 00000D38  38 21 00 20 */	addi r1, r1, 0x20
/* 00000C78 00000D3C  4E 80 00 20 */	blr
.endfn nami_running_init_func

# .text:0x4A8 | 0xC7C | size: 0x9C
.fn namiyoke_set_mapobj, local
/* 00000C7C 00000D40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00000C80 00000D44  7C 08 02 A6 */	mflr r0
/* 00000C84 00000D48  90 01 00 34 */	stw r0, 0x34(r1)
/* 00000C88 00000D4C  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 00000C8C 00000D50  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 00000C90 00000D54  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00000C94 00000D58  7C 7D 1B 78 */	mr r29, r3
/* 00000C98 00000D5C  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00000C9C 00000D60  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00000CA0 00000D64  4B FF F3 CD */	bl evtGetValue
/* 00000CA4 00000D68  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00000CA8 00000D6C  7C 7F 1B 78 */	mr r31, r3
/* 00000CAC 00000D70  7F A3 EB 78 */	mr r3, r29
/* 00000CB0 00000D74  4B FF F3 BD */	bl evtGetFloat
/* 00000CB4 00000D78  FF E0 08 90 */	fmr f31, f1
/* 00000CB8 00000D7C  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00000CBC 00000D80  7F A3 EB 78 */	mr r3, r29
/* 00000CC0 00000D84  4B FF F3 AD */	bl evtGetFloat
/* 00000CC4 00000D88  FF C0 08 90 */	fmr f30, f1
/* 00000CC8 00000D8C  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00000CCC 00000D90  7F A3 EB 78 */	mr r3, r29
/* 00000CD0 00000D94  4B FF F3 9D */	bl evtGetFloat
/* 00000CD4 00000D98  FC 00 08 90 */	fmr f0, f1
/* 00000CD8 00000D9C  3C 60 00 00 */	lis r3, namiyoke_mapobj@ha
/* 00000CDC 00000DA0  FC 20 F8 90 */	fmr f1, f31
/* 00000CE0 00000DA4  57 E0 10 3A */	slwi r0, r31, 2
/* 00000CE4 00000DA8  38 63 00 00 */	addi r3, r3, namiyoke_mapobj@l
/* 00000CE8 00000DAC  FC 40 F0 90 */	fmr f2, f30
/* 00000CEC 00000DB0  FC 60 00 90 */	fmr f3, f0
/* 00000CF0 00000DB4  7C 63 00 2E */	lwzx r3, r3, r0
/* 00000CF4 00000DB8  4B FF F3 79 */	bl mapObjTranslate
/* 00000CF8 00000DBC  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 00000CFC 00000DC0  38 60 00 02 */	li r3, 0x2
/* 00000D00 00000DC4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 00000D04 00000DC8  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00000D08 00000DCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00000D0C 00000DD0  7C 08 03 A6 */	mtlr r0
/* 00000D10 00000DD4  38 21 00 30 */	addi r1, r1, 0x30
/* 00000D14 00000DD8  4E 80 00 20 */	blr
.endfn namiyoke_set_mapobj

# .text:0x544 | 0xD18 | size: 0xA0
.fn evt_sub_entrymgr_getreg, local
/* 00000D18 00000DDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000D1C 00000DE0  7C 08 02 A6 */	mflr r0
/* 00000D20 00000DE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000D24 00000DE8  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 00000D28 00000DEC  7C 7C 1B 78 */	mr r28, r3
/* 00000D2C 00000DF0  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00000D30 00000DF4  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00000D34 00000DF8  4B FF F3 39 */	bl evtGetValue
/* 00000D38 00000DFC  7C 7F 1B 78 */	mr r31, r3
/* 00000D3C 00000E00  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00000D40 00000E04  83 A3 00 04 */	lwz r29, 0x4(r3)
/* 00000D44 00000E08  7F 83 E3 78 */	mr r3, r28
/* 00000D48 00000E0C  4B FF F3 25 */	bl evtGetValue
/* 00000D4C 00000E10  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 00000D50 00000E14  7C 09 03 A6 */	mtctr r0
/* 00000D54 00000E18  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000D58 00000E1C  40 81 00 18 */	ble .L_00000D70
.L_00000D5C:
/* 00000D5C 00000E20  80 1D 00 04 */	lwz r0, 0x4(r29)
/* 00000D60 00000E24  7C 00 18 00 */	cmpw r0, r3
/* 00000D64 00000E28  41 82 00 0C */	beq .L_00000D70
/* 00000D68 00000E2C  3B BD 00 14 */	addi r29, r29, 0x14
/* 00000D6C 00000E30  42 00 FF F0 */	bdnz .L_00000D5C
.L_00000D70:
/* 00000D70 00000E34  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00000D74 00000E38  7F 83 E3 78 */	mr r3, r28
/* 00000D78 00000E3C  C0 3D 00 08 */	lfs f1, 0x8(r29)
/* 00000D7C 00000E40  4B FF F2 F1 */	bl evtSetFloat
/* 00000D80 00000E44  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00000D84 00000E48  7F 83 E3 78 */	mr r3, r28
/* 00000D88 00000E4C  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 00000D8C 00000E50  4B FF F2 E1 */	bl evtSetFloat
/* 00000D90 00000E54  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 00000D94 00000E58  7F 83 E3 78 */	mr r3, r28
/* 00000D98 00000E5C  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 00000D9C 00000E60  4B FF F2 D1 */	bl evtSetFloat
/* 00000DA0 00000E64  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00000DA4 00000E68  38 60 00 02 */	li r3, 0x2
/* 00000DA8 00000E6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000DAC 00000E70  7C 08 03 A6 */	mtlr r0
/* 00000DB0 00000E74  38 21 00 20 */	addi r1, r1, 0x20
/* 00000DB4 00000E78  4E 80 00 20 */	blr
.endfn evt_sub_entrymgr_getreg

# .text:0x5E4 | 0xDB8 | size: 0xA0
.fn evt_sub_entrymgr_setreg, local
/* 00000DB8 00000E7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000DBC 00000E80  7C 08 02 A6 */	mflr r0
/* 00000DC0 00000E84  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000DC4 00000E88  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 00000DC8 00000E8C  7C 7C 1B 78 */	mr r28, r3
/* 00000DCC 00000E90  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00000DD0 00000E94  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00000DD4 00000E98  4B FF F2 99 */	bl evtGetValue
/* 00000DD8 00000E9C  7C 7F 1B 78 */	mr r31, r3
/* 00000DDC 00000EA0  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00000DE0 00000EA4  83 A3 00 04 */	lwz r29, 0x4(r3)
/* 00000DE4 00000EA8  7F 83 E3 78 */	mr r3, r28
/* 00000DE8 00000EAC  4B FF F2 85 */	bl evtGetValue
/* 00000DEC 00000EB0  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 00000DF0 00000EB4  7C 09 03 A6 */	mtctr r0
/* 00000DF4 00000EB8  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000DF8 00000EBC  40 81 00 18 */	ble .L_00000E10
.L_00000DFC:
/* 00000DFC 00000EC0  80 1D 00 04 */	lwz r0, 0x4(r29)
/* 00000E00 00000EC4  7C 00 18 00 */	cmpw r0, r3
/* 00000E04 00000EC8  41 82 00 0C */	beq .L_00000E10
/* 00000E08 00000ECC  3B BD 00 14 */	addi r29, r29, 0x14
/* 00000E0C 00000ED0  42 00 FF F0 */	bdnz .L_00000DFC
.L_00000E10:
/* 00000E10 00000ED4  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00000E14 00000ED8  7F 83 E3 78 */	mr r3, r28
/* 00000E18 00000EDC  4B FF F2 55 */	bl evtGetFloat
/* 00000E1C 00000EE0  D0 3D 00 08 */	stfs f1, 0x8(r29)
/* 00000E20 00000EE4  7F 83 E3 78 */	mr r3, r28
/* 00000E24 00000EE8  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00000E28 00000EEC  4B FF F2 45 */	bl evtGetFloat
/* 00000E2C 00000EF0  D0 3D 00 0C */	stfs f1, 0xc(r29)
/* 00000E30 00000EF4  7F 83 E3 78 */	mr r3, r28
/* 00000E34 00000EF8  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 00000E38 00000EFC  4B FF F2 35 */	bl evtGetFloat
/* 00000E3C 00000F00  D0 3D 00 10 */	stfs f1, 0x10(r29)
/* 00000E40 00000F04  38 60 00 02 */	li r3, 0x2
/* 00000E44 00000F08  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00000E48 00000F0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000E4C 00000F10  7C 08 03 A6 */	mtlr r0
/* 00000E50 00000F14  38 21 00 20 */	addi r1, r1, 0x20
/* 00000E54 00000F18  4E 80 00 20 */	blr
.endfn evt_sub_entrymgr_setreg

# .text:0x684 | 0xE58 | size: 0x94
.fn evt_sub_entrymgr_check, local
/* 00000E58 00000F1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000E5C 00000F20  7C 08 02 A6 */	mflr r0
/* 00000E60 00000F24  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000E64 00000F28  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 00000E68 00000F2C  7C 7C 1B 78 */	mr r28, r3
/* 00000E6C 00000F30  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00000E70 00000F34  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00000E74 00000F38  4B FF F1 F9 */	bl evtGetValue
/* 00000E78 00000F3C  7C 7F 1B 78 */	mr r31, r3
/* 00000E7C 00000F40  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00000E80 00000F44  83 A3 00 04 */	lwz r29, 0x4(r3)
/* 00000E84 00000F48  7F 83 E3 78 */	mr r3, r28
/* 00000E88 00000F4C  4B FF F1 E5 */	bl evtGetValue
/* 00000E8C 00000F50  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 00000E90 00000F54  38 A0 00 00 */	li r5, 0x0
/* 00000E94 00000F58  7C 09 03 A6 */	mtctr r0
/* 00000E98 00000F5C  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000E9C 00000F60  40 81 00 2C */	ble .L_00000EC8
.L_00000EA0:
/* 00000EA0 00000F64  80 1D 00 00 */	lwz r0, 0x0(r29)
/* 00000EA4 00000F68  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000EA8 00000F6C  41 82 00 1C */	beq .L_00000EC4
/* 00000EAC 00000F70  80 1D 00 04 */	lwz r0, 0x4(r29)
/* 00000EB0 00000F74  7C 00 18 00 */	cmpw r0, r3
/* 00000EB4 00000F78  40 82 00 0C */	bne .L_00000EC0
/* 00000EB8 00000F7C  38 A0 00 01 */	li r5, 0x1
/* 00000EBC 00000F80  48 00 00 0C */	b .L_00000EC8
.L_00000EC0:
/* 00000EC0 00000F84  3B BD 00 14 */	addi r29, r29, 0x14
.L_00000EC4:
/* 00000EC4 00000F88  42 00 FF DC */	bdnz .L_00000EA0
.L_00000EC8:
/* 00000EC8 00000F8C  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00000ECC 00000F90  7F 83 E3 78 */	mr r3, r28
/* 00000ED0 00000F94  4B FF F1 9D */	bl evtSetValue
/* 00000ED4 00000F98  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00000ED8 00000F9C  38 60 00 02 */	li r3, 0x2
/* 00000EDC 00000FA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000EE0 00000FA4  7C 08 03 A6 */	mtlr r0
/* 00000EE4 00000FA8  38 21 00 20 */	addi r1, r1, 0x20
/* 00000EE8 00000FAC  4E 80 00 20 */	blr
.endfn evt_sub_entrymgr_check

# .text:0x718 | 0xEEC | size: 0x94
.fn evt_sub_entrymgr_delete, local
/* 00000EEC 00000FB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000EF0 00000FB4  7C 08 02 A6 */	mflr r0
/* 00000EF4 00000FB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000EF8 00000FBC  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 00000EFC 00000FC0  7C 7C 1B 78 */	mr r28, r3
/* 00000F00 00000FC4  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00000F04 00000FC8  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00000F08 00000FCC  4B FF F1 65 */	bl evtGetValue
/* 00000F0C 00000FD0  7C 7F 1B 78 */	mr r31, r3
/* 00000F10 00000FD4  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00000F14 00000FD8  83 A3 00 04 */	lwz r29, 0x4(r3)
/* 00000F18 00000FDC  7F 83 E3 78 */	mr r3, r28
/* 00000F1C 00000FE0  4B FF F1 51 */	bl evtGetValue
/* 00000F20 00000FE4  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 00000F24 00000FE8  38 A0 00 00 */	li r5, 0x0
/* 00000F28 00000FEC  7C 09 03 A6 */	mtctr r0
/* 00000F2C 00000FF0  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000F30 00000FF4  40 81 00 2C */	ble .L_00000F5C
.L_00000F34:
/* 00000F34 00000FF8  80 1D 00 04 */	lwz r0, 0x4(r29)
/* 00000F38 00000FFC  7C 00 18 00 */	cmpw r0, r3
/* 00000F3C 00001000  40 82 00 18 */	bne .L_00000F54
/* 00000F40 00001004  38 00 00 00 */	li r0, 0x0
/* 00000F44 00001008  38 A0 00 01 */	li r5, 0x1
/* 00000F48 0000100C  90 1D 00 00 */	stw r0, 0x0(r29)
/* 00000F4C 00001010  90 1D 00 04 */	stw r0, 0x4(r29)
/* 00000F50 00001014  48 00 00 0C */	b .L_00000F5C
.L_00000F54:
/* 00000F54 00001018  3B BD 00 14 */	addi r29, r29, 0x14
/* 00000F58 0000101C  42 00 FF DC */	bdnz .L_00000F34
.L_00000F5C:
/* 00000F5C 00001020  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00000F60 00001024  7F 83 E3 78 */	mr r3, r28
/* 00000F64 00001028  4B FF F1 09 */	bl evtSetValue
/* 00000F68 0000102C  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00000F6C 00001030  38 60 00 02 */	li r3, 0x2
/* 00000F70 00001034  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000F74 00001038  7C 08 03 A6 */	mtlr r0
/* 00000F78 0000103C  38 21 00 20 */	addi r1, r1, 0x20
/* 00000F7C 00001040  4E 80 00 20 */	blr
.endfn evt_sub_entrymgr_delete

# .text:0x7AC | 0xF80 | size: 0x94
.fn evt_sub_entrymgr_entry, local
/* 00000F80 00001044  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000F84 00001048  7C 08 02 A6 */	mflr r0
/* 00000F88 0000104C  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000F8C 00001050  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 00000F90 00001054  7C 7C 1B 78 */	mr r28, r3
/* 00000F94 00001058  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00000F98 0000105C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00000F9C 00001060  4B FF F0 D1 */	bl evtGetValue
/* 00000FA0 00001064  7C 7F 1B 78 */	mr r31, r3
/* 00000FA4 00001068  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00000FA8 0000106C  83 A3 00 04 */	lwz r29, 0x4(r3)
/* 00000FAC 00001070  7F 83 E3 78 */	mr r3, r28
/* 00000FB0 00001074  4B FF F0 BD */	bl evtGetValue
/* 00000FB4 00001078  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 00000FB8 0000107C  38 A0 00 00 */	li r5, 0x0
/* 00000FBC 00001080  7C 09 03 A6 */	mtctr r0
/* 00000FC0 00001084  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000FC4 00001088  40 81 00 2C */	ble .L_00000FF0
.L_00000FC8:
/* 00000FC8 0000108C  80 1D 00 00 */	lwz r0, 0x0(r29)
/* 00000FCC 00001090  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000FD0 00001094  40 82 00 18 */	bne .L_00000FE8
/* 00000FD4 00001098  38 00 00 01 */	li r0, 0x1
/* 00000FD8 0000109C  38 A0 00 01 */	li r5, 0x1
/* 00000FDC 000010A0  90 1D 00 00 */	stw r0, 0x0(r29)
/* 00000FE0 000010A4  90 7D 00 04 */	stw r3, 0x4(r29)
/* 00000FE4 000010A8  48 00 00 0C */	b .L_00000FF0
.L_00000FE8:
/* 00000FE8 000010AC  3B BD 00 14 */	addi r29, r29, 0x14
/* 00000FEC 000010B0  42 00 FF DC */	bdnz .L_00000FC8
.L_00000FF0:
/* 00000FF0 000010B4  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00000FF4 000010B8  7F 83 E3 78 */	mr r3, r28
/* 00000FF8 000010BC  4B FF F0 75 */	bl evtSetValue
/* 00000FFC 000010C0  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00001000 000010C4  38 60 00 02 */	li r3, 0x2
/* 00001004 000010C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001008 000010CC  7C 08 03 A6 */	mtlr r0
/* 0000100C 000010D0  38 21 00 20 */	addi r1, r1, 0x20
/* 00001010 000010D4  4E 80 00 20 */	blr
.endfn evt_sub_entrymgr_entry

# .text:0x840 | 0x1014 | size: 0x98
.fn evt_sub_entrymgr_init, local
/* 00001014 000010D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001018 000010DC  7C 08 02 A6 */	mflr r0
/* 0000101C 000010E0  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 00001020 000010E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001024 000010E8  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00001028 000010EC  7C 7D 1B 78 */	mr r29, r3
/* 0000102C 000010F0  38 64 00 00 */	addi r3, r4, mapalloc_base_ptr@l
/* 00001030 000010F4  38 80 00 08 */	li r4, 0x8
/* 00001034 000010F8  83 FD 00 18 */	lwz r31, 0x18(r29)
/* 00001038 000010FC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000103C 00001100  4B FF F0 31 */	bl _mapAlloc
/* 00001040 00001104  7C 7E 1B 78 */	mr r30, r3
/* 00001044 00001108  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00001048 0000110C  7F A3 EB 78 */	mr r3, r29
/* 0000104C 00001110  7F C5 F3 78 */	mr r5, r30
/* 00001050 00001114  4B FF F0 1D */	bl evtSetValue
/* 00001054 00001118  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001058 0000111C  7F A3 EB 78 */	mr r3, r29
/* 0000105C 00001120  4B FF F0 11 */	bl evtGetValue
/* 00001060 00001124  90 7E 00 00 */	stw r3, 0x0(r30)
/* 00001064 00001128  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 00001068 0000112C  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000106C 00001130  80 1E 00 00 */	lwz r0, 0x0(r30)
/* 00001070 00001134  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00001074 00001138  1C 80 00 14 */	mulli r4, r0, 0x14
/* 00001078 0000113C  4B FF EF F5 */	bl _mapAlloc
/* 0000107C 00001140  90 7E 00 04 */	stw r3, 0x4(r30)
/* 00001080 00001144  38 80 00 00 */	li r4, 0x0
/* 00001084 00001148  80 1E 00 00 */	lwz r0, 0x0(r30)
/* 00001088 0000114C  80 7E 00 04 */	lwz r3, 0x4(r30)
/* 0000108C 00001150  1C A0 00 14 */	mulli r5, r0, 0x14
/* 00001090 00001154  4B FF EF DD */	bl memset
/* 00001094 00001158  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00001098 0000115C  38 60 00 02 */	li r3, 0x2
/* 0000109C 00001160  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000010A0 00001164  7C 08 03 A6 */	mtlr r0
/* 000010A4 00001168  38 21 00 20 */	addi r1, r1, 0x20
/* 000010A8 0000116C  4E 80 00 20 */	blr
.endfn evt_sub_entrymgr_init

# 0x000010F0..0x000013F8 | size: 0x308
.rodata
.balign 8

# .rodata:0x0 | 0x10F0 | size: 0x9
.obj str_w_bero_1_dou_00004d80, local
	.string "w_bero_1"
.endobj str_w_bero_1_dou_00004d80

# .rodata:0x9 | 0x10F9 | size: 0x3
.obj gap_03_000010F9_rodata, global
.hidden gap_03_000010F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000010F9_rodata

# .rodata:0xC | 0x10FC | size: 0x7
.obj str_dou_09_dou_00004d8c, local
	.string "dou_09"
.endobj str_dou_09_dou_00004d8c

# .rodata:0x13 | 0x1103 | size: 0x1
.obj gap_03_00001103_rodata, global
.hidden gap_03_00001103_rodata
	.byte 0x00
.endobj gap_03_00001103_rodata

# .rodata:0x14 | 0x1104 | size: 0x9
.obj str_e_bero_1_dou_00004d94, local
	.string "e_bero_1"
.endobj str_e_bero_1_dou_00004d94

# .rodata:0x1D | 0x110D | size: 0x3
.obj gap_03_0000110D_rodata, global
.hidden gap_03_0000110D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000110D_rodata

# .rodata:0x20 | 0x1110 | size: 0x9
.obj str_w_bero_2_dou_00004da0, local
	.string "w_bero_2"
.endobj str_w_bero_2_dou_00004da0

# .rodata:0x29 | 0x1119 | size: 0x3
.obj gap_03_00001119_rodata, global
.hidden gap_03_00001119_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001119_rodata

# .rodata:0x2C | 0x111C | size: 0x9
.obj str_e_bero_2_dou_00004dac, local
	.string "e_bero_2"
.endobj str_e_bero_2_dou_00004dac

# .rodata:0x35 | 0x1125 | size: 0x3
.obj gap_03_00001125_rodata, global
.hidden gap_03_00001125_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001125_rodata

# .rodata:0x38 | 0x1128 | size: 0x7
.obj str_n_bero_dou_00004db8, local
	.string "n_bero"
.endobj str_n_bero_dou_00004db8

# .rodata:0x3F | 0x112F | size: 0x1
.obj gap_03_0000112F_rodata, global
.hidden gap_03_0000112F_rodata
	.byte 0x00
.endobj gap_03_0000112F_rodata

# .rodata:0x40 | 0x1130 | size: 0x7
.obj str_dou_06_dou_00004dc0, local
	.string "dou_06"
.endobj str_dou_06_dou_00004dc0

# .rodata:0x47 | 0x1137 | size: 0x1
.obj gap_03_00001137_rodata, global
.hidden gap_03_00001137_rodata
	.byte 0x00
.endobj gap_03_00001137_rodata

# .rodata:0x48 | 0x1138 | size: 0x7
.obj str_s_bero_dou_00004dc8, local
	.string "s_bero"
.endobj str_s_bero_dou_00004dc8

# .rodata:0x4F | 0x113F | size: 0x1
.obj gap_03_0000113F_rodata, global
.hidden gap_03_0000113F_rodata
	.byte 0x00
.endobj gap_03_0000113F_rodata

# .rodata:0x50 | 0x1140 | size: 0x7
.obj str_e_bero_dou_00004dd0, local
	.string "e_bero"
.endobj str_e_bero_dou_00004dd0

# .rodata:0x57 | 0x1147 | size: 0x1
.obj gap_03_00001147_rodata, global
.hidden gap_03_00001147_rodata
	.byte 0x00
.endobj gap_03_00001147_rodata

# .rodata:0x58 | 0x1148 | size: 0x7
.obj str_dou_11_dou_00004dd8, local
	.string "dou_11"
.endobj str_dou_11_dou_00004dd8

# .rodata:0x5F | 0x114F | size: 0x1
.obj gap_03_0000114F_rodata, global
.hidden gap_03_0000114F_rodata
	.byte 0x00
.endobj gap_03_0000114F_rodata

# .rodata:0x60 | 0x1150 | size: 0x7
.obj str_w_bero_dou_00004de0, local
	.string "w_bero"
.endobj str_w_bero_dou_00004de0

# .rodata:0x67 | 0x1157 | size: 0x1
.obj gap_03_00001157_rodata, global
.hidden gap_03_00001157_rodata
	.byte 0x00
.endobj gap_03_00001157_rodata

# .rodata:0x68 | 0x1158 | size: 0x8
.obj str_S_nami1_dou_00004de8, local
	.string "S_nami1"
.endobj str_S_nami1_dou_00004de8

# .rodata:0x70 | 0x1160 | size: 0x8
.obj str_S_nami2_dou_00004df0, local
	.string "S_nami2"
.endobj str_S_nami2_dou_00004df0

# .rodata:0x78 | 0x1168 | size: 0x8
.obj str_S_nami3_dou_00004df8, local
	.string "S_nami3"
.endobj str_S_nami3_dou_00004df8

# .rodata:0x80 | 0x1170 | size: 0x8
.obj str_S_nami4_dou_00004e00, local
	.string "S_nami4"
.endobj str_S_nami4_dou_00004e00

# .rodata:0x88 | 0x1178 | size: 0x8
.obj str_S_nami5_dou_00004e08, local
	.string "S_nami5"
.endobj str_S_nami5_dou_00004e08

# .rodata:0x90 | 0x1180 | size: 0x8
.obj str_S_nami6_dou_00004e10, local
	.string "S_nami6"
.endobj str_S_nami6_dou_00004e10

# .rodata:0x98 | 0x1188 | size: 0x8
.obj str_S_nami7_dou_00004e18, local
	.string "S_nami7"
.endobj str_S_nami7_dou_00004e18

# .rodata:0xA0 | 0x1190 | size: 0x8
.obj str_S_nami8_dou_00004e20, local
	.string "S_nami8"
.endobj str_S_nami8_dou_00004e20

# .rodata:0xA8 | 0x1198 | size: 0x8
.obj str_S_nami9_dou_00004e28, local
	.string "S_nami9"
.endobj str_S_nami9_dou_00004e28

# .rodata:0xB0 | 0x11A0 | size: 0x9
.obj str_S_nami10_dou_00004e30, local
	.string "S_nami10"
.endobj str_S_nami10_dou_00004e30

# .rodata:0xB9 | 0x11A9 | size: 0x3
.obj gap_03_000011A9_rodata, global
.hidden gap_03_000011A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000011A9_rodata

# .rodata:0xBC | 0x11AC | size: 0x9
.obj str_S_nami11_dou_00004e3c, local
	.string "S_nami11"
.endobj str_S_nami11_dou_00004e3c

# .rodata:0xC5 | 0x11B5 | size: 0x3
.obj gap_03_000011B5_rodata, global
.hidden gap_03_000011B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000011B5_rodata

# .rodata:0xC8 | 0x11B8 | size: 0x9
.obj str_S_nami12_dou_00004e48, local
	.string "S_nami12"
.endobj str_S_nami12_dou_00004e48

# .rodata:0xD1 | 0x11C1 | size: 0x3
.obj gap_03_000011C1_rodata, global
.hidden gap_03_000011C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000011C1_rodata

# .rodata:0xD4 | 0x11C4 | size: 0x9
.obj str_S_nami13_dou_00004e54, local
	.string "S_nami13"
.endobj str_S_nami13_dou_00004e54

# .rodata:0xDD | 0x11CD | size: 0x3
.obj gap_03_000011CD_rodata, global
.hidden gap_03_000011CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000011CD_rodata

# .rodata:0xE0 | 0x11D0 | size: 0x9
.obj str_S_nami14_dou_00004e60, local
	.string "S_nami14"
.endobj str_S_nami14_dou_00004e60

# .rodata:0xE9 | 0x11D9 | size: 0x3
.obj gap_03_000011D9_rodata, global
.hidden gap_03_000011D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000011D9_rodata

# .rodata:0xEC | 0x11DC | size: 0x9
.obj str_S_nami15_dou_00004e6c, local
	.string "S_nami15"
.endobj str_S_nami15_dou_00004e6c

# .rodata:0xF5 | 0x11E5 | size: 0x3
.obj gap_03_000011E5_rodata, global
.hidden gap_03_000011E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000011E5_rodata

# .rodata:0xF8 | 0x11E8 | size: 0x1D
.obj str_SFX_STG5_MINIGAME_SH_dou_00004e78, local
	.string "SFX_STG5_MINIGAME_SHIP_SINK1"
.endobj str_SFX_STG5_MINIGAME_SH_dou_00004e78

# .rodata:0x115 | 0x1205 | size: 0x3
.obj gap_03_00001205_rodata, global
.hidden gap_03_00001205_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001205_rodata

# .rodata:0x118 | 0x1208 | size: 0x1E
.obj str_SFX_STG5_MINIGAME_SH_dou_00004e98, local
	.string "SFX_STG5_MINIGAME_SHIP_FLOAT1"
.endobj str_SFX_STG5_MINIGAME_SH_dou_00004e98

# .rodata:0x136 | 0x1226 | size: 0x2
.obj gap_03_00001226_rodata, global
.hidden gap_03_00001226_rodata
	.2byte 0x0000
.endobj gap_03_00001226_rodata

# .rodata:0x138 | 0x1228 | size: 0x1
.obj zero_dou_00004eb8, local
	.byte 0x00
.endobj zero_dou_00004eb8

# .rodata:0x139 | 0x1229 | size: 0x3
.obj gap_03_00001229_rodata, global
.hidden gap_03_00001229_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001229_rodata

# .rodata:0x13C | 0x122C | size: 0xB
.obj str_ripple_n64_dou_00004ebc, local
	.string "ripple_n64"
.endobj str_ripple_n64_dou_00004ebc

# .rodata:0x147 | 0x1237 | size: 0x1
.obj gap_03_00001237_rodata, global
.hidden gap_03_00001237_rodata
	.byte 0x00
.endobj gap_03_00001237_rodata

# .rodata:0x148 | 0x1238 | size: 0x11
.obj str_マリオと波の接触_dou_00004ec8, local
	.4byte 0x837D838A
	.4byte 0x834982C6
	.4byte 0x946782CC
	.4byte 0x90DA9047
	.byte 0x00
.endobj str_マリオと波の接触_dou_00004ec8

# .rodata:0x159 | 0x1249 | size: 0x3
.obj gap_03_00001249_rodata, global
.hidden gap_03_00001249_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001249_rodata

# .rodata:0x15C | 0x124C | size: 0x8
.obj str_A_nami1_dou_00004edc, local
	.string "A_nami1"
.endobj str_A_nami1_dou_00004edc

# .rodata:0x164 | 0x1254 | size: 0x8
.obj str_A_nami2_dou_00004ee4, local
	.string "A_nami2"
.endobj str_A_nami2_dou_00004ee4

# .rodata:0x16C | 0x125C | size: 0x8
.obj str_A_nami3_dou_00004eec, local
	.string "A_nami3"
.endobj str_A_nami3_dou_00004eec

# .rodata:0x174 | 0x1264 | size: 0x8
.obj str_A_nami4_dou_00004ef4, local
	.string "A_nami4"
.endobj str_A_nami4_dou_00004ef4

# .rodata:0x17C | 0x126C | size: 0x8
.obj str_A_nami5_dou_00004efc, local
	.string "A_nami5"
.endobj str_A_nami5_dou_00004efc

# .rodata:0x184 | 0x1274 | size: 0x8
.obj str_A_nami6_dou_00004f04, local
	.string "A_nami6"
.endobj str_A_nami6_dou_00004f04

# .rodata:0x18C | 0x127C | size: 0x8
.obj str_A_nami7_dou_00004f0c, local
	.string "A_nami7"
.endobj str_A_nami7_dou_00004f0c

# .rodata:0x194 | 0x1284 | size: 0x8
.obj str_A_nami8_dou_00004f14, local
	.string "A_nami8"
.endobj str_A_nami8_dou_00004f14

# .rodata:0x19C | 0x128C | size: 0x8
.obj str_A_nami9_dou_00004f1c, local
	.string "A_nami9"
.endobj str_A_nami9_dou_00004f1c

# .rodata:0x1A4 | 0x1294 | size: 0x9
.obj str_A_nami10_dou_00004f24, local
	.string "A_nami10"
.endobj str_A_nami10_dou_00004f24

# .rodata:0x1AD | 0x129D | size: 0x3
.obj gap_03_0000129D_rodata, global
.hidden gap_03_0000129D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000129D_rodata

# .rodata:0x1B0 | 0x12A0 | size: 0x9
.obj str_A_nami11_dou_00004f30, local
	.string "A_nami11"
.endobj str_A_nami11_dou_00004f30

# .rodata:0x1B9 | 0x12A9 | size: 0x3
.obj gap_03_000012A9_rodata, global
.hidden gap_03_000012A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012A9_rodata

# .rodata:0x1BC | 0x12AC | size: 0x9
.obj str_A_nami12_dou_00004f3c, local
	.string "A_nami12"
.endobj str_A_nami12_dou_00004f3c

# .rodata:0x1C5 | 0x12B5 | size: 0x3
.obj gap_03_000012B5_rodata, global
.hidden gap_03_000012B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012B5_rodata

# .rodata:0x1C8 | 0x12B8 | size: 0x9
.obj str_A_nami13_dou_00004f48, local
	.string "A_nami13"
.endobj str_A_nami13_dou_00004f48

# .rodata:0x1D1 | 0x12C1 | size: 0x3
.obj gap_03_000012C1_rodata, global
.hidden gap_03_000012C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012C1_rodata

# .rodata:0x1D4 | 0x12C4 | size: 0x9
.obj str_A_nami14_dou_00004f54, local
	.string "A_nami14"
.endobj str_A_nami14_dou_00004f54

# .rodata:0x1DD | 0x12CD | size: 0x3
.obj gap_03_000012CD_rodata, global
.hidden gap_03_000012CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012CD_rodata

# .rodata:0x1E0 | 0x12D0 | size: 0x9
.obj str_A_nami15_dou_00004f60, local
	.string "A_nami15"
.endobj str_A_nami15_dou_00004f60

# .rodata:0x1E9 | 0x12D9 | size: 0x3
.obj gap_03_000012D9_rodata, global
.hidden gap_03_000012D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012D9_rodata

# .rodata:0x1EC | 0x12DC | size: 0x18
.obj str_SFX_STG5_MINIGAME_WA_dou_00004f6c, local
	.string "SFX_STG5_MINIGAME_WAVE1"
.endobj str_SFX_STG5_MINIGAME_WA_dou_00004f6c

# .rodata:0x204 | 0x12F4 | size: 0x7
.obj str_S_yari_dou_00004f84, local
	.string "S_yari"
.endobj str_S_yari_dou_00004f84

# .rodata:0x20B | 0x12FB | size: 0x1
.obj gap_03_000012FB_rodata, global
.hidden gap_03_000012FB_rodata
	.byte 0x00
.endobj gap_03_000012FB_rodata

# .rodata:0x20C | 0x12FC | size: 0x15
.obj str_SFX_MOBJ_FLOOR_TRAP1_dou_00004f8c, local
	.string "SFX_MOBJ_FLOOR_TRAP1"
.endobj str_SFX_MOBJ_FLOOR_TRAP1_dou_00004f8c

# .rodata:0x221 | 0x1311 | size: 0x3
.obj gap_03_00001311_rodata, global
.hidden gap_03_00001311_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001311_rodata

# .rodata:0x224 | 0x1314 | size: 0x7
.obj str_A_yari_dou_00004fa4, local
	.string "A_yari"
.endobj str_A_yari_dou_00004fa4

# .rodata:0x22B | 0x131B | size: 0x1
.obj gap_03_0000131B_rodata, global
.hidden gap_03_0000131B_rodata
	.byte 0x00
.endobj gap_03_0000131B_rodata

# .rodata:0x22C | 0x131C | size: 0x15
.obj str_SFX_MOBJ_FLOOR_TRAP2_dou_00004fac, local
	.string "SFX_MOBJ_FLOOR_TRAP2"
.endobj str_SFX_MOBJ_FLOOR_TRAP2_dou_00004fac

# .rodata:0x241 | 0x1331 | size: 0x3
.obj gap_03_00001331_rodata, global
.hidden gap_03_00001331_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001331_rodata

# .rodata:0x244 | 0x1334 | size: 0x7
.obj str_mod_01_dou_00004fc4, local
	.string "mod_01"
.endobj str_mod_01_dou_00004fc4

# .rodata:0x24B | 0x133B | size: 0x1
.obj gap_03_0000133B_rodata, global
.hidden gap_03_0000133B_rodata
	.byte 0x00
.endobj gap_03_0000133B_rodata

# .rodata:0x24C | 0x133C | size: 0x7
.obj str_mod_03_dou_00004fcc, local
	.string "mod_03"
.endobj str_mod_03_dou_00004fcc

# .rodata:0x253 | 0x1343 | size: 0x1
.obj gap_03_00001343_rodata, global
.hidden gap_03_00001343_rodata
	.byte 0x00
.endobj gap_03_00001343_rodata

# .rodata:0x254 | 0x1344 | size: 0x7
.obj str_mod_04_dou_00004fd4, local
	.string "mod_04"
.endobj str_mod_04_dou_00004fd4

# .rodata:0x25B | 0x134B | size: 0x1
.obj gap_03_0000134B_rodata, global
.hidden gap_03_0000134B_rodata
	.byte 0x00
.endobj gap_03_0000134B_rodata

# .rodata:0x25C | 0x134C | size: 0xE
.obj str_BGM_STG5_DOU1_dou_00004fdc, local
	.string "BGM_STG5_DOU1"
.endobj str_BGM_STG5_DOU1_dou_00004fdc

# .rodata:0x26A | 0x135A | size: 0x2
.obj gap_03_0000135A_rodata, global
.hidden gap_03_0000135A_rodata
	.2byte 0x0000
.endobj gap_03_0000135A_rodata

# .rodata:0x26C | 0x135C | size: 0xF
.obj str_ENV_STG5_DOU10_dou_00004fec, local
	.string "ENV_STG5_DOU10"
.endobj str_ENV_STG5_DOU10_dou_00004fec

# .rodata:0x27B | 0x136B | size: 0x1
.obj gap_03_0000136B_rodata, global
.hidden gap_03_0000136B_rodata
	.byte 0x00
.endobj gap_03_0000136B_rodata

# .rodata:0x27C | 0x136C | size: 0x5
.obj str_nami_dou_00004ffc, local
	.string "nami"
.endobj str_nami_dou_00004ffc

# .rodata:0x281 | 0x1371 | size: 0x3
.obj gap_03_00001371_rodata, global
.hidden gap_03_00001371_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001371_rodata

# .rodata:0x284 | 0x1374 | size: 0x5
.obj str_moku_dou_00005004, local
	.string "moku"
.endobj str_moku_dou_00005004

# .rodata:0x289 | 0x1379 | size: 0x3
.obj gap_03_00001379_rodata, global
.hidden gap_03_00001379_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001379_rodata

# .rodata:0x28C | 0x137C | size: 0x8
.obj str_fune_02_dou_0000500c, local
	.string "fune_02"
.endobj str_fune_02_dou_0000500c

# .rodata:0x294 | 0x1384 | size: 0xC
.obj str_s10_fune_01_dou_00005014, local
	.string "s10_fune_01"
.endobj str_s10_fune_01_dou_00005014

# .rodata:0x2A0 | 0x1390 | size: 0x7
.obj str_pblk00_dou_00005020, local
	.string "pblk00"
.endobj str_pblk00_dou_00005020
	.byte 0x00

# .rodata:0x2A8 | 0x1398 | size: 0x4
.obj float_30_dou_00005028, local
	.float 30
.endobj float_30_dou_00005028

# .rodata:0x2AC | 0x139C | size: 0x4
.obj float_neg45_dou_0000502c, local
	.float -45
.endobj float_neg45_dou_0000502c

# .rodata:0x2B0 | 0x13A0 | size: 0x4
.obj float_neg5_dou_00005030, local
	.float -5
.endobj float_neg5_dou_00005030

# .rodata:0x2B4 | 0x13A4 | size: 0x4
.obj float_50_dou_00005034, local
	.float 50
.endobj float_50_dou_00005034

# .rodata:0x2B8 | 0x13A8 | size: 0x4
.obj float_45_dou_00005038, local
	.float 45
.endobj float_45_dou_00005038

# .rodata:0x2BC | 0x13AC | size: 0x4
.obj float_20_dou_0000503c, local
	.float 20
.endobj float_20_dou_0000503c

# .rodata:0x2C0 | 0x13B0 | size: 0x4
.obj float_10_dou_00005040, local
	.float 10
.endobj float_10_dou_00005040

# .rodata:0x2C4 | 0x13B4 | size: 0x4
.obj float_1p35_dou_00005044, local
	.float 1.3499999
.endobj float_1p35_dou_00005044

# .rodata:0x2C8 | 0x13B8 | size: 0x4
.obj float_840_dou_00005048, local
	.float 840
.endobj float_840_dou_00005048

# .rodata:0x2CC | 0x13BC | size: 0x4
.obj float_0p35_dou_0000504c, local
	.float 0.35
.endobj float_0p35_dou_0000504c

# .rodata:0x2D0 | 0x13C0 | size: 0x4
.obj zero_dou_00005050, local
	.float 0
.endobj zero_dou_00005050

# .rodata:0x2D4 | 0x13C4 | size: 0x4
.obj float_200_dou_00005054, local
	.float 200
.endobj float_200_dou_00005054

# .rodata:0x2D8 | 0x13C8 | size: 0x4
.obj float_0p4_dou_00005058, local
	.float 0.4
.endobj float_0p4_dou_00005058

# .rodata:0x2DC | 0x13CC | size: 0x4
.obj float_neg340_dou_0000505c, local
	.float -340
.endobj float_neg340_dou_0000505c

# .rodata:0x2E0 | 0x13D0 | size: 0x4
.obj float_neg540_dou_00005060, local
	.float -540
.endobj float_neg540_dou_00005060

# .rodata:0x2E4 | 0x13D4 | size: 0x4
.obj float_6p2832_dou_00005064, local
	.float 6.2831855
.endobj float_6p2832_dou_00005064

# .rodata:0x2E8 | 0x13D8 | size: 0x4
.obj float_2_dou_00005068, local
	.float 2
.endobj float_2_dou_00005068

# .rodata:0x2EC | 0x13DC | size: 0x4
.obj float_360_dou_0000506c, local
	.float 360
.endobj float_360_dou_0000506c

# .rodata:0x2F0 | 0x13E0 | size: 0x4
.obj float_5_dou_00005070, local
	.float 5
.endobj float_5_dou_00005070
	.4byte 0x00000000

# .rodata:0x2F8 | 0x13E8 | size: 0x8
.obj double_to_int_mask_dou_00005078, local
	.double 4503599627370496
.endobj double_to_int_mask_dou_00005078

# .rodata:0x300 | 0x13F0 | size: 0x8
.obj double_to_int_dou_00005080, local
	.double 4503601774854144
.endobj double_to_int_dou_00005080

# 0x00006C78..0x00007FE0 | size: 0x1368
.data
.balign 8

# .data:0x0 | 0x6C78 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x6C80 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x6C84 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x6C88 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x6C8C | size: 0x4
.obj gap_04_00006C8C_data, global
.hidden gap_04_00006C8C_data
	.4byte 0x00000000
.endobj gap_04_00006C8C_data

# .data:0x18 | 0x6C90 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x6C98 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x6C9C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x6CA0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x6CA8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x6CAC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x6CB0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x6CB4 | size: 0x4
.obj gap_04_00006CB4_data, global
.hidden gap_04_00006CB4_data
	.4byte 0x00000000
.endobj gap_04_00006CB4_data

# .data:0x40 | 0x6CB8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x6CC0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x6CC4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x6CC8 | size: 0x12C
.obj bero_entry_data, local
	.4byte str_w_bero_1_dou_00004d80
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_09_dou_00004d8c
	.4byte str_e_bero_1_dou_00004d94
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_w_bero_2_dou_00004da0
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_09_dou_00004d8c
	.4byte str_e_bero_2_dou_00004dac
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_n_bero_dou_00004db8
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_06_dou_00004dc0
	.4byte str_s_bero_dou_00004dc8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_dou_00004dd0
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_11_dou_00004dd8
	.4byte str_w_bero_dou_00004de0
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

# .data:0x17C | 0x6DF4 | size: 0x3C
.obj namiyoke_mapobj, local
	.4byte str_S_nami1_dou_00004de8
	.4byte str_S_nami2_dou_00004df0
	.4byte str_S_nami3_dou_00004df8
	.4byte str_S_nami4_dou_00004e00
	.4byte str_S_nami5_dou_00004e08
	.4byte str_S_nami6_dou_00004e10
	.4byte str_S_nami7_dou_00004e18
	.4byte str_S_nami8_dou_00004e20
	.4byte str_S_nami9_dou_00004e28
	.4byte str_S_nami10_dou_00004e30
	.4byte str_S_nami11_dou_00004e3c
	.4byte str_S_nami12_dou_00004e48
	.4byte str_S_nami13_dou_00004e54
	.4byte str_S_nami14_dou_00004e60
	.4byte str_S_nami15_dou_00004e6c
.endobj namiyoke_mapobj

# .data:0x1B8 | 0x6E30 | size: 0x120
.obj nami_running, local
	.4byte 0x0004005B
	.4byte evt_sub_entrymgr_entry
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte nami_running_init_func
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte nami_running_func
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte namiyoke_set_mapobj
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_sub_entrymgr_setreg
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte dou_namiatari_check
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte namiyoke_set_mapobj
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_sub_entrymgr_delete
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nami_running

# .data:0x2D8 | 0x6F50 | size: 0x88
.obj namiyoke_fail_kaiten, local
	.4byte 0x0002005B
	.4byte evt_mario_get_dispdir
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000438
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte evt_mario_set_dispdir
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj namiyoke_fail_kaiten

# .data:0x360 | 0x6FD8 | size: 0xC4
.obj namiyoke_fail_shizumu, local
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_MINIGAME_SH_dou_00004e78
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000FA0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj namiyoke_fail_shizumu

# .data:0x424 | 0x709C | size: 0x2F8
.obj namiyoke_fail_recover, local
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_MINIGAME_SH_dou_00004e98
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFD6C
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x0000012C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFD6C
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFD6C
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFFB
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFD6C
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFD6C
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000064
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFD6C
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFD6C
	.4byte 0xFE363C80
	.4byte 0x00000064
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
.endobj namiyoke_fail_recover

# .data:0x71C | 0x7394 | size: 0x238
.obj namiyoke_fail, local
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte namiyoke_fail_stop
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
	.4byte 0x0005005B
	.4byte evt_cam3d_get_shift
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x000B005B
	.4byte evt_cam3d_event_from_road
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005D
	.4byte namiyoke_fail_kaiten
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte namiyoke_fail_shizumu
	.4byte 0xFE363C8B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x0001005F
	.4byte 0xFE363C8B
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFD6C
	.4byte 0xFFFFFF9C
	.4byte 0x00000064
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFD8A
	.4byte 0x00000098
	.4byte 0x00000242
	.4byte 0xFFFFFD8A
	.4byte 0x00000039
	.4byte 0x00000025
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_dou_00004eb8
	.4byte str_ripple_n64_dou_00004ebc
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_dou_00004eb8
	.4byte str_ripple_n64_dou_00004ebc
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001005E
	.4byte namiyoke_fail_recover
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000100
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj namiyoke_fail

# .data:0x954 | 0x75CC | size: 0x54
.obj namiyoke_atari_check, local
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F80
	.4byte 0x00000001
	.4byte 0x00010071
	.4byte str_マリオと波の接触_dou_00004ec8
	.4byte 0x0001005E
	.4byte namiyoke_fail
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj namiyoke_atari_check

# .data:0x9A8 | 0x7620 | size: 0x21C
.obj namiyoke_main, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x0000000F
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000003
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x000000A2
	.4byte 0x00020037
	.4byte 0xFE363C8B
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0xFFFFFE0C
	.4byte 0x00010022
	.4byte 0xFE363C8E
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFFFFFF83
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0x00000006
	.4byte 0x0001005C
	.4byte nami_running
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFCE
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0x00000006
	.4byte 0x0001005C
	.4byte nami_running
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000019
	.4byte 0x0001005C
	.4byte nami_running
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000064
	.4byte 0x0001005C
	.4byte nami_running
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000009
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x0000000F
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000410
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFCE
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000003
	.4byte 0xFE363C8E
	.4byte 0x00010022
	.4byte 0xFE363C8E
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFFFFFF83
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFCE
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000019
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000064
	.4byte 0x00000031
	.4byte 0x0001005C
	.4byte nami_running
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000001F4
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000005DC
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj namiyoke_main

# .data:0xBC4 | 0x783C | size: 0x184
.obj namiyoke_init, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte namiyoke_set_mapobj
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_nami1_dou_00004edc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_nami2_dou_00004ee4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_nami3_dou_00004eec
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_nami4_dou_00004ef4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_nami5_dou_00004efc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_nami6_dou_00004f04
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_nami7_dou_00004f0c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_nami8_dou_00004f14
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_nami9_dou_00004f1c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_nami10_dou_00004f24
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_nami11_dou_00004f30
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_nami12_dou_00004f3c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_nami13_dou_00004f48
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_nami14_dou_00004f54
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_nami15_dou_00004f60
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj namiyoke_init

# .data:0xD48 | 0x79C0 | size: 0x190
.obj namiyoke_se, local
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x05F5E100
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_sub_entrymgr_check
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_sub_entrymgr_getreg
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte namiyoke_se_check
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x0000000F
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_sub_entrymgr_getreg
	.4byte 0xFE363C89
	.4byte 0xFE363C86
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_MINIGAME_WA_dou_00004f6c
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C83
	.4byte 0xFE363C8D
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C8D
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8D
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj namiyoke_se

# .data:0xED8 | 0x7B50 | size: 0x88
.obj namiyoke_check, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000F8
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000F9
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_entrymgr_init
	.4byte 0xFE363C89
	.4byte 0x0000000F
	.4byte 0x0001005C
	.4byte namiyoke_init
	.4byte 0x0001005C
	.4byte namiyoke_main
	.4byte 0x0001005C
	.4byte namiyoke_se
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_w_bero_1_dou_00004d80
	.4byte 0x0001005C
	.4byte namiyoke_atari_check
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_e_bero_dou_00004dd0
	.4byte 0x0001005C
	.4byte namiyoke_atari_check
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj namiyoke_check

# .data:0xF60 | 0x7BD8 | size: 0x1AC
.obj yari_trap_sub, local
	.4byte 0x00020019
	.4byte 0xFD050F8F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F8F
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_yari_dou_00004f84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MOBJ_FLOOR_TRAP1_dou_00004f8c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x00000096
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_yari_dou_00004f84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_yari_dou_00004fa4
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_yari_dou_00004f84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MOBJ_FLOOR_TRAP2_dou_00004fac
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000004
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_yari_dou_00004f84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_yari_dou_00004fa4
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020018
	.4byte 0xFD050F8F
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFD050F8F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yari_trap_sub

# .data:0x110C | 0x7D84 | size: 0x2C
.obj yari_trap, local
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_yari_dou_00004fa4
	.4byte str_S_yari_dou_00004f84
	.4byte 0x00020032
	.4byte 0xFD050F8F
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte yari_trap_sub
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yari_trap

# .data:0x1138 | 0x7DB0 | size: 0xF0
.obj dou_puka_event_main0, local
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000190
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_dou_normal_puka_5_text_2C
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020033
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000082
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_main0

# .data:0x1228 | 0x7EA0 | size: 0x40
.obj hitDmgRetPoints, local
	.4byte str_mod_01_dou_00004fc4
	.4byte 0xC42F0000
	.4byte 0x42480000
	.4byte 0xC2B40000
	.4byte str_mod_03_dou_00004fcc
	.4byte 0xC3020000
	.4byte 0x42480000
	.4byte 0xC2B40000
	.4byte str_mod_04_dou_00004fd4
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj hitDmgRetPoints

# .data:0x1268 | 0x7EE0 | size: 0x100
.obj dou_10_init_evt_5_data_7EE0, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_DOU1_dou_00004fdc
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_DOU10_dou_00004fec
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_nami_dou_00004ffc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_moku_dou_00005004
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_fune_02_dou_0000500c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte yari_trap
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte hitDmgRetPoints
	.4byte 0x0001005E
	.4byte evt_gazigazi_entry
	.4byte 0x0001005C
	.4byte namiyoke_check
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_s10_fune_01_dou_00005014
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte dou_puka_event_main0
	.4byte 0xFE363C8A
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_pblk00_dou_00005020
	.4byte 0x00000082
	.4byte 0x00000032
	.4byte 0xFFFFFF79
	.4byte 0x00000000
	.4byte 0xF8407136
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_10_init_evt_5_data_7EE0
