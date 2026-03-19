.include "macros.inc"
.file "unit_wanwan.o"

# 0x0000FF40..0x000106A8 | size: 0x768
.text
.balign 4

# .text:0x0 | 0xFF40 | size: 0x5EC
.fn chain_main, local
/* 0000FF40 0001000C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 0000FF44 00010010  7C 08 02 A6 */	mflr r0
/* 0000FF48 00010014  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 0000FF4C 00010018  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 0000FF50 0001001C  F3 E1 00 B8 */	psq_st f31, 0xb8(r1), 0, qr0
/* 0000FF54 00010020  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 0000FF58 00010024  F3 C1 00 A8 */	psq_st f30, 0xa8(r1), 0, qr0
/* 0000FF5C 00010028  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 0000FF60 0001002C  F3 A1 00 98 */	psq_st f29, 0x98(r1), 0, qr0
/* 0000FF64 00010030  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 0000FF68 00010034  F3 81 00 88 */	psq_st f28, 0x88(r1), 0, qr0
/* 0000FF6C 00010038  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 0000FF70 0001003C  F3 61 00 78 */	psq_st f27, 0x78(r1), 0, qr0
/* 0000FF74 00010040  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 0000FF78 00010044  F3 41 00 68 */	psq_st f26, 0x68(r1), 0, qr0
/* 0000FF7C 00010048  DB 21 00 50 */	stfd f25, 0x50(r1)
/* 0000FF80 0001004C  F3 21 00 58 */	psq_st f25, 0x58(r1), 0, qr0
/* 0000FF84 00010050  BF A1 00 44 */	stmw r29, 0x44(r1)
/* 0000FF88 00010054  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 0000FF8C 00010058  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000FF90 0001005C  83 A4 00 00 */	lwz r29, _battleWorkPointer@l(r4)
/* 0000FF94 00010060  7C 7E 1B 78 */	mr r30, r3
/* 0000FF98 00010064  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0000FF9C 00010068  4B FF 01 A1 */	bl evtGetValue
/* 0000FFA0 0001006C  7C 60 1B 78 */	mr r0, r3
/* 0000FFA4 00010070  7F C3 F3 78 */	mr r3, r30
/* 0000FFA8 00010074  7C 04 03 78 */	mr r4, r0
/* 0000FFAC 00010078  4B FF 01 91 */	bl BattleTransID
/* 0000FFB0 0001007C  7C 7E 1B 78 */	mr r30, r3
/* 0000FFB4 00010080  7F A3 EB 78 */	mr r3, r29
/* 0000FFB8 00010084  7F C4 F3 78 */	mr r4, r30
/* 0000FFBC 00010088  4B FF 01 81 */	bl BattleGetUnitPtr
/* 0000FFC0 0001008C  28 03 00 00 */	cmplwi r3, 0x0
/* 0000FFC4 00010090  40 82 00 0C */	bne .L_0000FFD0
/* 0000FFC8 00010094  38 60 00 00 */	li r3, 0x0
/* 0000FFCC 00010098  48 00 05 14 */	b .L_000104E0
.L_0000FFD0:
/* 0000FFD0 0001009C  38 80 00 01 */	li r4, 0x1
/* 0000FFD4 000100A0  4B FF 01 69 */	bl BtlUnit_GetPartsPtr
/* 0000FFD8 000100A4  7F A3 EB 78 */	mr r3, r29
/* 0000FFDC 000100A8  7F C4 F3 78 */	mr r4, r30
/* 0000FFE0 000100AC  4B FF 01 5D */	bl BattleGetUnitPtr
/* 0000FFE4 000100B0  38 81 00 28 */	addi r4, r1, 0x28
/* 0000FFE8 000100B4  7C 7F 1B 78 */	mr r31, r3
/* 0000FFEC 000100B8  38 A1 00 24 */	addi r5, r1, 0x24
/* 0000FFF0 000100BC  38 C1 00 20 */	addi r6, r1, 0x20
/* 0000FFF4 000100C0  4B FF 01 49 */	bl BtlUnit_GetPos
/* 0000FFF8 000100C4  7F E3 FB 78 */	mr r3, r31
/* 0000FFFC 000100C8  38 80 00 09 */	li r4, 0x9
/* 00010000 000100CC  4B FF 01 3D */	bl BtlUnit_GetPartsPtr
/* 00010004 000100D0  88 BF 01 89 */	lbz r5, 0x189(r31)
/* 00010008 000100D4  3C 00 43 30 */	lis r0, 0x4330
/* 0001000C 000100D8  3C 80 00 00 */	lis r4, double_to_int_las_00019f08@ha
/* 00010010 000100DC  3C C0 00 00 */	lis r6, float_20_las_00019ee8@ha
/* 00010014 000100E0  7C A5 07 74 */	extsb r5, r5
/* 00010018 000100E4  90 01 00 30 */	stw r0, 0x30(r1)
/* 0001001C 000100E8  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 00010020 000100EC  C8 24 00 00 */	lfd f1, double_to_int_las_00019f08@l(r4)
/* 00010024 000100F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 00010028 000100F4  C0 86 00 00 */	lfs f4, float_20_las_00019ee8@l(r6)
/* 0001002C 000100F8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 00010030 000100FC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 00010034 00010100  EC 20 08 28 */	fsubs f1, f0, f1
/* 00010038 00010104  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 0001003C 00010108  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 00010040 0001010C  EC 24 00 7C */	fnmsubs f1, f4, f1, f0
/* 00010044 00010110  4B FF 00 F9 */	bl BtlUnit_SetPartsPos
/* 00010048 00010114  80 1F 02 20 */	lwz r0, 0x220(r31)
/* 0001004C 00010118  2C 00 00 02 */	cmpwi r0, 0x2
/* 00010050 0001011C  40 82 00 90 */	bne .L_000100E0
/* 00010054 00010120  7F E3 FB 78 */	mr r3, r31
/* 00010058 00010124  38 80 00 09 */	li r4, 0x9
/* 0001005C 00010128  4B FF 00 E1 */	bl BtlUnit_GetPartsPtr
/* 00010060 0001012C  38 81 00 28 */	addi r4, r1, 0x28
/* 00010064 00010130  38 A1 00 24 */	addi r5, r1, 0x24
/* 00010068 00010134  38 C1 00 20 */	addi r6, r1, 0x20
/* 0001006C 00010138  4B FF 00 D1 */	bl BtlUnit_GetPartsPos
/* 00010070 0001013C  3B A0 00 08 */	li r29, 0x8
.L_00010074:
/* 00010074 00010140  7F E3 FB 78 */	mr r3, r31
/* 00010078 00010144  7F A4 EB 78 */	mr r4, r29
/* 0001007C 00010148  4B FF 00 C1 */	bl BtlUnit_GetPartsPtr
/* 00010080 0001014C  7C 7E 1B 78 */	mr r30, r3
/* 00010084 00010150  38 81 00 10 */	addi r4, r1, 0x10
/* 00010088 00010154  38 A1 00 0C */	addi r5, r1, 0xc
/* 0001008C 00010158  38 C1 00 08 */	addi r6, r1, 0x8
/* 00010090 0001015C  4B FF 00 AD */	bl BtlUnit_GetPartsPos
/* 00010094 00010160  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 00010098 00010164  3B BD FF FF */	subi r29, r29, 0x1
/* 0001009C 00010168  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 000100A0 0001016C  2C 1D 00 01 */	cmpwi r29, 0x1
/* 000100A4 00010170  EC 01 00 28 */	fsubs f0, f1, f0
/* 000100A8 00010174  FC 00 00 1E */	fctiwz f0, f0
/* 000100AC 00010178  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 000100B0 0001017C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000100B4 00010180  90 1E 01 30 */	stw r0, 0x130(r30)
/* 000100B8 00010184  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 000100BC 00010188  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 000100C0 0001018C  EC 01 00 28 */	fsubs f0, f1, f0
/* 000100C4 00010190  FC 00 00 1E */	fctiwz f0, f0
/* 000100C8 00010194  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 000100CC 00010198  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 000100D0 0001019C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 000100D4 000101A0  40 80 FF A0 */	bge .L_00010074
/* 000100D8 000101A4  38 00 00 01 */	li r0, 0x1
/* 000100DC 000101A8  90 1F 02 20 */	stw r0, 0x220(r31)
.L_000100E0:
/* 000100E0 000101AC  80 1F 02 20 */	lwz r0, 0x220(r31)
/* 000100E4 000101B0  2C 00 00 01 */	cmpwi r0, 0x1
/* 000100E8 000101B4  40 82 00 98 */	bne .L_00010180
/* 000100EC 000101B8  7F E3 FB 78 */	mr r3, r31
/* 000100F0 000101BC  38 80 00 09 */	li r4, 0x9
/* 000100F4 000101C0  4B FF 00 49 */	bl BtlUnit_GetPartsPtr
/* 000100F8 000101C4  38 81 00 28 */	addi r4, r1, 0x28
/* 000100FC 000101C8  38 A1 00 24 */	addi r5, r1, 0x24
/* 00010100 000101CC  38 C1 00 20 */	addi r6, r1, 0x20
/* 00010104 000101D0  4B FF 00 39 */	bl BtlUnit_GetPartsPos
/* 00010108 000101D4  3C 60 00 00 */	lis r3, double_to_int_las_00019f08@ha
/* 0001010C 000101D8  3B A0 00 08 */	li r29, 0x8
/* 00010110 000101DC  CB 83 00 00 */	lfd f28, double_to_int_las_00019f08@l(r3)
/* 00010114 000101E0  3F C0 43 30 */	lis r30, 0x4330
.L_00010118:
/* 00010118 000101E4  7F E3 FB 78 */	mr r3, r31
/* 0001011C 000101E8  7F A4 EB 78 */	mr r4, r29
/* 00010120 000101EC  4B FF 00 1D */	bl BtlUnit_GetPartsPtr
/* 00010124 000101F0  80 83 01 30 */	lwz r4, 0x130(r3)
/* 00010128 000101F4  80 03 01 34 */	lwz r0, 0x134(r3)
/* 0001012C 000101F8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00010130 000101FC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 00010134 00010200  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00010138 00010204  C0 81 00 28 */	lfs f4, 0x28(r1)
/* 0001013C 00010208  90 81 00 3C */	stw r4, 0x3c(r1)
/* 00010140 0001020C  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 00010144 00010210  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 00010148 00010214  90 01 00 34 */	stw r0, 0x34(r1)
/* 0001014C 00010218  EC 20 E0 28 */	fsubs f1, f0, f28
/* 00010150 0001021C  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 00010154 00010220  93 C1 00 30 */	stw r30, 0x30(r1)
/* 00010158 00010224  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 0001015C 00010228  EC 24 08 2A */	fadds f1, f4, f1
/* 00010160 0001022C  EC 00 E0 28 */	fsubs f0, f0, f28
/* 00010164 00010230  EC 42 00 2A */	fadds f2, f2, f0
/* 00010168 00010234  4B FE FF D5 */	bl BtlUnit_SetPartsPos
/* 0001016C 00010238  3B BD FF FF */	subi r29, r29, 0x1
/* 00010170 0001023C  2C 1D 00 01 */	cmpwi r29, 0x1
/* 00010174 00010240  40 80 FF A4 */	bge .L_00010118
/* 00010178 00010244  38 60 00 02 */	li r3, 0x2
/* 0001017C 00010248  48 00 03 64 */	b .L_000104E0
.L_00010180:
/* 00010180 0001024C  7F E3 FB 78 */	mr r3, r31
/* 00010184 00010250  38 80 00 01 */	li r4, 0x1
/* 00010188 00010254  4B FE FF B5 */	bl BtlUnit_GetPartsPtr
/* 0001018C 00010258  38 81 00 1C */	addi r4, r1, 0x1c
/* 00010190 0001025C  38 A1 00 18 */	addi r5, r1, 0x18
/* 00010194 00010260  38 C1 00 14 */	addi r6, r1, 0x14
/* 00010198 00010264  4B FE FF A5 */	bl BtlUnit_GetPartsPos
/* 0001019C 00010268  7F E3 FB 78 */	mr r3, r31
/* 000101A0 0001026C  38 80 00 09 */	li r4, 0x9
/* 000101A4 00010270  4B FE FF 99 */	bl BtlUnit_GetPartsPtr
/* 000101A8 00010274  38 81 00 10 */	addi r4, r1, 0x10
/* 000101AC 00010278  38 A1 00 0C */	addi r5, r1, 0xc
/* 000101B0 0001027C  38 C1 00 08 */	addi r6, r1, 0x8
/* 000101B4 00010280  4B FE FF 89 */	bl BtlUnit_GetPartsPos
/* 000101B8 00010284  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 000101BC 00010288  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 000101C0 0001028C  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 000101C4 00010290  EC 81 00 28 */	fsubs f4, f1, f0
/* 000101C8 00010294  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 000101CC 00010298  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 000101D0 0001029C  EC 63 00 28 */	fsubs f3, f3, f0
/* 000101D4 000102A0  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 000101D8 000102A4  EC 04 01 32 */	fmuls f0, f4, f4
/* 000101DC 000102A8  EC 22 08 28 */	fsubs f1, f2, f1
/* 000101E0 000102AC  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 000101E4 000102B0  EC 21 00 7A */	fmadds f1, f1, f1, f0
/* 000101E8 000102B4  4B FE FF 55 */	bl sqrt
/* 000101EC 000102B8  3C 80 00 00 */	lis r4, float_0p125_las_00019eec@ha
/* 000101F0 000102BC  FC 40 08 18 */	frsp f2, f1
/* 000101F4 000102C0  C0 24 00 00 */	lfs f1, float_0p125_las_00019eec@l(r4)
/* 000101F8 000102C4  3C 60 00 00 */	lis r3, float_10_las_00019ef0@ha
/* 000101FC 000102C8  C0 03 00 00 */	lfs f0, float_10_las_00019ef0@l(r3)
/* 00010200 000102CC  EF E2 00 72 */	fmuls f31, f2, f1
/* 00010204 000102D0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00010208 000102D4  40 80 00 08 */	bge .L_00010210
/* 0001020C 000102D8  FF E0 00 90 */	fmr f31, f0
.L_00010210:
/* 00010210 000102DC  3C 60 00 00 */	lis r3, float_300_las_00019ef4@ha
/* 00010214 000102E0  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 00010218 000102E4  38 83 00 00 */	addi r4, r3, float_300_las_00019ef4@l
/* 0001021C 000102E8  7F E3 FB 78 */	mr r3, r31
/* 00010220 000102EC  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 00010224 000102F0  38 80 00 01 */	li r4, 0x1
/* 00010228 000102F4  EF C1 00 24 */	fdivs f30, f1, f0
/* 0001022C 000102F8  4B FE FF 11 */	bl BtlUnit_GetPartsPtr
/* 00010230 000102FC  38 81 00 28 */	addi r4, r1, 0x28
/* 00010234 00010300  7C 7E 1B 78 */	mr r30, r3
/* 00010238 00010304  38 A1 00 24 */	addi r5, r1, 0x24
/* 0001023C 00010308  38 C1 00 20 */	addi r6, r1, 0x20
/* 00010240 0001030C  4B FE FE FD */	bl BtlUnit_GetPartsPos
/* 00010244 00010310  3C 60 00 00 */	lis r3, float_110_las_00019ef8@ha
/* 00010248 00010314  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 0001024C 00010318  C0 03 00 00 */	lfs f0, float_110_las_00019ef8@l(r3)
/* 00010250 0001031C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00010254 00010320  40 81 00 08 */	ble .L_0001025C
/* 00010258 00010324  D0 01 00 24 */	stfs f0, 0x24(r1)
.L_0001025C:
/* 0001025C 00010328  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 00010260 0001032C  7F C3 F3 78 */	mr r3, r30
/* 00010264 00010330  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 00010268 00010334  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 0001026C 00010338  4B FE FE D1 */	bl BtlUnit_SetPartsPos
/* 00010270 0001033C  7F E3 FB 78 */	mr r3, r31
/* 00010274 00010340  38 80 00 01 */	li r4, 0x1
/* 00010278 00010344  4B FE FE C5 */	bl BtlUnit_GetPartsPtr
/* 0001027C 00010348  38 81 00 28 */	addi r4, r1, 0x28
/* 00010280 0001034C  38 A1 00 24 */	addi r5, r1, 0x24
/* 00010284 00010350  38 C1 00 20 */	addi r6, r1, 0x20
/* 00010288 00010354  4B FE FE B5 */	bl BtlUnit_GetPartsPos
/* 0001028C 00010358  88 BF 01 89 */	lbz r5, 0x189(r31)
/* 00010290 0001035C  3C 00 43 30 */	lis r0, 0x4330
/* 00010294 00010360  3C 80 00 00 */	lis r4, double_to_int_las_00019f08@ha
/* 00010298 00010364  90 01 00 38 */	stw r0, 0x38(r1)
/* 0001029C 00010368  7C A5 07 74 */	extsb r5, r5
/* 000102A0 0001036C  C8 44 00 00 */	lfd f2, double_to_int_las_00019f08@l(r4)
/* 000102A4 00010370  54 A0 20 36 */	slwi r0, r5, 4
/* 000102A8 00010374  3C 60 00 00 */	lis r3, float_16_las_00019efc@ha
/* 000102AC 00010378  7C 00 00 D0 */	neg r0, r0
/* 000102B0 0001037C  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 000102B4 00010380  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 000102B8 00010384  38 A3 00 00 */	addi r5, r3, float_16_las_00019efc@l
/* 000102BC 00010388  90 01 00 3C */	stw r0, 0x3c(r1)
/* 000102C0 0001038C  7F E3 FB 78 */	mr r3, r31
/* 000102C4 00010390  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 000102C8 00010394  38 80 00 02 */	li r4, 0x2
/* 000102CC 00010398  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 000102D0 0001039C  EC 40 10 28 */	fsubs f2, f0, f2
/* 000102D4 000103A0  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 000102D8 000103A4  EC 01 00 2A */	fadds f0, f1, f0
/* 000102DC 000103A8  EC 23 10 2A */	fadds f1, f3, f2
/* 000102E0 000103AC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 000102E4 000103B0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 000102E8 000103B4  4B FE FE 55 */	bl BtlUnit_GetPartsPtr
/* 000102EC 000103B8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 000102F0 000103BC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 000102F4 000103C0  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 000102F8 000103C4  4B FE FE 45 */	bl BtlUnit_SetPartsPos
/* 000102FC 000103C8  3C 80 00 00 */	lis r4, float_1_las_00019f00@ha
/* 00010300 000103CC  3C 60 00 00 */	lis r3, zero_las_00019f04@ha
/* 00010304 000103D0  C3 A4 00 00 */	lfs f29, float_1_las_00019f00@l(r4)
/* 00010308 000103D4  3B A0 00 02 */	li r29, 0x2
/* 0001030C 000103D8  C3 83 00 00 */	lfs f28, zero_las_00019f04@l(r3)
.L_00010310:
/* 00010310 000103DC  7F E3 FB 78 */	mr r3, r31
/* 00010314 000103E0  7F A4 EB 78 */	mr r4, r29
/* 00010318 000103E4  4B FE FE 25 */	bl BtlUnit_GetPartsPtr
/* 0001031C 000103E8  38 81 00 1C */	addi r4, r1, 0x1c
/* 00010320 000103EC  38 A1 00 18 */	addi r5, r1, 0x18
/* 00010324 000103F0  38 C1 00 14 */	addi r6, r1, 0x14
/* 00010328 000103F4  4B FE FE 15 */	bl BtlUnit_GetPartsPos
/* 0001032C 000103F8  7F E3 FB 78 */	mr r3, r31
/* 00010330 000103FC  38 9D 00 01 */	addi r4, r29, 0x1
/* 00010334 00010400  4B FE FE 09 */	bl BtlUnit_GetPartsPtr
/* 00010338 00010404  38 81 00 10 */	addi r4, r1, 0x10
/* 0001033C 00010408  7C 7E 1B 78 */	mr r30, r3
/* 00010340 0001040C  38 A1 00 0C */	addi r5, r1, 0xc
/* 00010344 00010410  38 C1 00 08 */	addi r6, r1, 0x8
/* 00010348 00010414  4B FE FD F5 */	bl BtlUnit_GetPartsPos
/* 0001034C 00010418  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00010350 0001041C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 00010354 00010420  EC 81 F0 28 */	fsubs f4, f1, f30
/* 00010358 00010424  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 0001035C 00010428  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 00010360 0001042C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 00010364 00010430  EF 40 20 28 */	fsubs f26, f0, f4
/* 00010368 00010434  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 0001036C 00010438  EF 63 10 28 */	fsubs f27, f3, f2
/* 00010370 0001043C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 00010374 00010440  EF 21 00 28 */	fsubs f25, f1, f0
/* 00010378 00010444  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 0001037C 00010448  EC 1B 06 FA */	fmadds f0, f27, f27, f0
/* 00010380 0001044C  EC 39 06 7A */	fmadds f1, f25, f25, f0
/* 00010384 00010450  4B FE FD B9 */	bl sqrt
/* 00010388 00010454  FC 60 08 18 */	frsp f3, f1
/* 0001038C 00010458  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00010390 0001045C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 00010394 00010460  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00010398 00010464  EC 7F 18 24 */	fdivs f3, f31, f3
/* 0001039C 00010468  EC 7D 18 28 */	fsubs f3, f29, f3
/* 000103A0 0001046C  EC 3A 08 FA */	fmadds f1, f26, f3, f1
/* 000103A4 00010470  EC 5B 10 FA */	fmadds f2, f27, f3, f2
/* 000103A8 00010474  EC 19 00 FA */	fmadds f0, f25, f3, f0
/* 000103AC 00010478  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 000103B0 0001047C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 000103B4 00010480  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 000103B8 00010484  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 000103BC 00010488  40 80 00 10 */	bge .L_000103CC
/* 000103C0 0001048C  3C 60 00 00 */	lis r3, zero_las_00019f04@ha
/* 000103C4 00010490  C0 03 00 00 */	lfs f0, zero_las_00019f04@l(r3)
/* 000103C8 00010494  D0 01 00 0C */	stfs f0, 0xc(r1)
.L_000103CC:
/* 000103CC 00010498  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 000103D0 0001049C  7F C3 F3 78 */	mr r3, r30
/* 000103D4 000104A0  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 000103D8 000104A4  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 000103DC 000104A8  4B FE FD 61 */	bl BtlUnit_SetPartsPos
/* 000103E0 000104AC  3B BD 00 01 */	addi r29, r29, 0x1
/* 000103E4 000104B0  2C 1D 00 07 */	cmpwi r29, 0x7
/* 000103E8 000104B4  40 81 FF 28 */	ble .L_00010310
/* 000103EC 000104B8  3C 80 00 00 */	lis r4, float_1_las_00019f00@ha
/* 000103F0 000104BC  3C 60 00 00 */	lis r3, zero_las_00019f04@ha
/* 000103F4 000104C0  C3 84 00 00 */	lfs f28, float_1_las_00019f00@l(r4)
/* 000103F8 000104C4  3B A0 00 09 */	li r29, 0x9
/* 000103FC 000104C8  C3 A3 00 00 */	lfs f29, zero_las_00019f04@l(r3)
.L_00010400:
/* 00010400 000104CC  7F E3 FB 78 */	mr r3, r31
/* 00010404 000104D0  7F A4 EB 78 */	mr r4, r29
/* 00010408 000104D4  4B FE FD 35 */	bl BtlUnit_GetPartsPtr
/* 0001040C 000104D8  38 81 00 1C */	addi r4, r1, 0x1c
/* 00010410 000104DC  38 A1 00 18 */	addi r5, r1, 0x18
/* 00010414 000104E0  38 C1 00 14 */	addi r6, r1, 0x14
/* 00010418 000104E4  4B FE FD 25 */	bl BtlUnit_GetPartsPos
/* 0001041C 000104E8  7F E3 FB 78 */	mr r3, r31
/* 00010420 000104EC  38 9D FF FF */	subi r4, r29, 0x1
/* 00010424 000104F0  4B FE FD 19 */	bl BtlUnit_GetPartsPtr
/* 00010428 000104F4  38 81 00 10 */	addi r4, r1, 0x10
/* 0001042C 000104F8  7C 7E 1B 78 */	mr r30, r3
/* 00010430 000104FC  38 A1 00 0C */	addi r5, r1, 0xc
/* 00010434 00010500  38 C1 00 08 */	addi r6, r1, 0x8
/* 00010438 00010504  4B FE FD 05 */	bl BtlUnit_GetPartsPos
/* 0001043C 00010508  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00010440 0001050C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 00010444 00010510  EC 81 F0 28 */	fsubs f4, f1, f30
/* 00010448 00010514  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 0001044C 00010518  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 00010450 0001051C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 00010454 00010520  EF 40 20 28 */	fsubs f26, f0, f4
/* 00010458 00010524  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 0001045C 00010528  EF 63 10 28 */	fsubs f27, f3, f2
/* 00010460 0001052C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 00010464 00010530  EF 21 00 28 */	fsubs f25, f1, f0
/* 00010468 00010534  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 0001046C 00010538  EC 1B 06 FA */	fmadds f0, f27, f27, f0
/* 00010470 0001053C  EC 39 06 7A */	fmadds f1, f25, f25, f0
/* 00010474 00010540  4B FE FC C9 */	bl sqrt
/* 00010478 00010544  FC 60 08 18 */	frsp f3, f1
/* 0001047C 00010548  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00010480 0001054C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 00010484 00010550  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00010488 00010554  EC 7F 18 24 */	fdivs f3, f31, f3
/* 0001048C 00010558  EC 7C 18 28 */	fsubs f3, f28, f3
/* 00010490 0001055C  EC 3A 08 FA */	fmadds f1, f26, f3, f1
/* 00010494 00010560  EC 5B 10 FA */	fmadds f2, f27, f3, f2
/* 00010498 00010564  EC 19 00 FA */	fmadds f0, f25, f3, f0
/* 0001049C 00010568  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 000104A0 0001056C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 000104A4 00010570  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 000104A8 00010574  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 000104AC 00010578  40 80 00 10 */	bge .L_000104BC
/* 000104B0 0001057C  3C 60 00 00 */	lis r3, zero_las_00019f04@ha
/* 000104B4 00010580  C0 03 00 00 */	lfs f0, zero_las_00019f04@l(r3)
/* 000104B8 00010584  D0 01 00 0C */	stfs f0, 0xc(r1)
.L_000104BC:
/* 000104BC 00010588  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 000104C0 0001058C  7F C3 F3 78 */	mr r3, r30
/* 000104C4 00010590  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 000104C8 00010594  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 000104CC 00010598  4B FE FC 71 */	bl BtlUnit_SetPartsPos
/* 000104D0 0001059C  3B BD FF FF */	subi r29, r29, 0x1
/* 000104D4 000105A0  2C 1D 00 03 */	cmpwi r29, 0x3
/* 000104D8 000105A4  40 80 FF 28 */	bge .L_00010400
/* 000104DC 000105A8  38 60 00 02 */	li r3, 0x2
.L_000104E0:
/* 000104E0 000105AC  E3 E1 00 B8 */	psq_l f31, 0xb8(r1), 0, qr0
/* 000104E4 000105B0  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 000104E8 000105B4  E3 C1 00 A8 */	psq_l f30, 0xa8(r1), 0, qr0
/* 000104EC 000105B8  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 000104F0 000105BC  E3 A1 00 98 */	psq_l f29, 0x98(r1), 0, qr0
/* 000104F4 000105C0  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 000104F8 000105C4  E3 81 00 88 */	psq_l f28, 0x88(r1), 0, qr0
/* 000104FC 000105C8  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 00010500 000105CC  E3 61 00 78 */	psq_l f27, 0x78(r1), 0, qr0
/* 00010504 000105D0  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 00010508 000105D4  E3 41 00 68 */	psq_l f26, 0x68(r1), 0, qr0
/* 0001050C 000105D8  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 00010510 000105DC  E3 21 00 58 */	psq_l f25, 0x58(r1), 0, qr0
/* 00010514 000105E0  CB 21 00 50 */	lfd f25, 0x50(r1)
/* 00010518 000105E4  BB A1 00 44 */	lmw r29, 0x44(r1)
/* 0001051C 000105E8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 00010520 000105EC  7C 08 03 A6 */	mtlr r0
/* 00010524 000105F0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 00010528 000105F4  4E 80 00 20 */	blr
.endfn chain_main

# .text:0x5EC | 0x1052C | size: 0x17C
.fn chain_init, local
/* 0001052C 000105F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00010530 000105FC  7C 08 02 A6 */	mflr r0
/* 00010534 00010600  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00010538 00010604  90 01 00 44 */	stw r0, 0x44(r1)
/* 0001053C 00010608  BF 81 00 30 */	stmw r28, 0x30(r1)
/* 00010540 0001060C  7C 7C 1B 78 */	mr r28, r3
/* 00010544 00010610  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00010548 00010614  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 0001054C 00010618  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00010550 0001061C  4B FE FB ED */	bl evtGetValue
/* 00010554 00010620  7C 60 1B 78 */	mr r0, r3
/* 00010558 00010624  7F 83 E3 78 */	mr r3, r28
/* 0001055C 00010628  7C 04 03 78 */	mr r4, r0
/* 00010560 0001062C  4B FE FB DD */	bl BattleTransID
/* 00010564 00010630  7C 64 1B 78 */	mr r4, r3
/* 00010568 00010634  7F E3 FB 78 */	mr r3, r31
/* 0001056C 00010638  4B FE FB D1 */	bl BattleGetUnitPtr
/* 00010570 0001063C  38 81 00 10 */	addi r4, r1, 0x10
/* 00010574 00010640  7C 7E 1B 78 */	mr r30, r3
/* 00010578 00010644  38 A1 00 0C */	addi r5, r1, 0xc
/* 0001057C 00010648  38 C1 00 08 */	addi r6, r1, 0x8
/* 00010580 0001064C  4B FE FB BD */	bl BtlUnit_GetPos
/* 00010584 00010650  3C 60 00 00 */	lis r3, str_WAN_S_1B_las_00019f10@ha
/* 00010588 00010654  3B 80 00 02 */	li r28, 0x2
/* 0001058C 00010658  3B E3 00 00 */	addi r31, r3, str_WAN_S_1B_las_00019f10@l
.L_00010590:
/* 00010590 0001065C  7F C3 F3 78 */	mr r3, r30
/* 00010594 00010660  7F 84 E3 78 */	mr r4, r28
/* 00010598 00010664  4B FE FB A5 */	bl BtlUnit_GetPartsPtr
/* 0001059C 00010668  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 000105A0 0001066C  7C 7D 1B 78 */	mr r29, r3
/* 000105A4 00010670  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 000105A8 00010674  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 000105AC 00010678  4B FE FB 91 */	bl BtlUnit_SetPartsPos
/* 000105B0 0001067C  7F A3 EB 78 */	mr r3, r29
/* 000105B4 00010680  7F E4 FB 78 */	mr r4, r31
/* 000105B8 00010684  4B FE FB 85 */	bl BtlUnit_SetAnim
/* 000105BC 00010688  3B 9C 00 01 */	addi r28, r28, 0x1
/* 000105C0 0001068C  2C 1C 00 07 */	cmpwi r28, 0x7
/* 000105C4 00010690  40 81 FF CC */	ble .L_00010590
/* 000105C8 00010694  7F C3 F3 78 */	mr r3, r30
/* 000105CC 00010698  38 80 00 08 */	li r4, 0x8
/* 000105D0 0001069C  4B FE FB 6D */	bl BtlUnit_GetPartsPtr
/* 000105D4 000106A0  88 9E 01 89 */	lbz r4, 0x189(r30)
/* 000105D8 000106A4  3C 00 43 30 */	lis r0, 0x4330
/* 000105DC 000106A8  3C A0 00 00 */	lis r5, double_to_int_las_00019f08@ha
/* 000105E0 000106AC  3C C0 00 00 */	lis r6, float_20_las_00019ee8@ha
/* 000105E4 000106B0  7C 84 07 74 */	extsb r4, r4
/* 000105E8 000106B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 000105EC 000106B8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 000105F0 000106BC  C8 45 00 00 */	lfd f2, double_to_int_las_00019f08@l(r5)
/* 000105F4 000106C0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 000105F8 000106C4  7C 7F 1B 78 */	mr r31, r3
/* 000105FC 000106C8  C0 86 00 00 */	lfs f4, float_20_las_00019ee8@l(r6)
/* 00010600 000106CC  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00010604 000106D0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00010608 000106D4  EC 21 10 28 */	fsubs f1, f1, f2
/* 0001060C 000106D8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 00010610 000106DC  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 00010614 000106E0  EC 24 00 7C */	fnmsubs f1, f4, f1, f0
/* 00010618 000106E4  4B FE FB 25 */	bl BtlUnit_SetPartsPos
/* 0001061C 000106E8  3C 80 00 00 */	lis r4, str_WAN_S_1B_las_00019f10@ha
/* 00010620 000106EC  7F E3 FB 78 */	mr r3, r31
/* 00010624 000106F0  38 84 00 00 */	addi r4, r4, str_WAN_S_1B_las_00019f10@l
/* 00010628 000106F4  4B FE FB 15 */	bl BtlUnit_SetAnim
/* 0001062C 000106F8  7F C3 F3 78 */	mr r3, r30
/* 00010630 000106FC  38 80 00 09 */	li r4, 0x9
/* 00010634 00010700  4B FE FB 09 */	bl BtlUnit_GetPartsPtr
/* 00010638 00010704  88 9E 01 89 */	lbz r4, 0x189(r30)
/* 0001063C 00010708  3C 00 43 30 */	lis r0, 0x4330
/* 00010640 0001070C  3C A0 00 00 */	lis r5, double_to_int_las_00019f08@ha
/* 00010644 00010710  3C C0 00 00 */	lis r6, float_20_las_00019ee8@ha
/* 00010648 00010714  7C 84 07 74 */	extsb r4, r4
/* 0001064C 00010718  90 01 00 20 */	stw r0, 0x20(r1)
/* 00010650 0001071C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00010654 00010720  C8 45 00 00 */	lfd f2, double_to_int_las_00019f08@l(r5)
/* 00010658 00010724  90 81 00 24 */	stw r4, 0x24(r1)
/* 0001065C 00010728  7C 7F 1B 78 */	mr r31, r3
/* 00010660 0001072C  C0 86 00 00 */	lfs f4, float_20_las_00019ee8@l(r6)
/* 00010664 00010730  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 00010668 00010734  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 0001066C 00010738  EC 21 10 28 */	fsubs f1, f1, f2
/* 00010670 0001073C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 00010674 00010740  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 00010678 00010744  EC 24 00 7C */	fnmsubs f1, f4, f1, f0
/* 0001067C 00010748  4B FE FA C1 */	bl BtlUnit_SetPartsPos
/* 00010680 0001074C  3C 80 00 00 */	lis r4, str_WAN_Z_2_las_00019f1c@ha
/* 00010684 00010750  7F E3 FB 78 */	mr r3, r31
/* 00010688 00010754  38 84 00 00 */	addi r4, r4, str_WAN_Z_2_las_00019f1c@l
/* 0001068C 00010758  4B FE FA B1 */	bl BtlUnit_SetAnim
/* 00010690 0001075C  BB 81 00 30 */	lmw r28, 0x30(r1)
/* 00010694 00010760  38 60 00 02 */	li r3, 0x2
/* 00010698 00010764  80 01 00 44 */	lwz r0, 0x44(r1)
/* 0001069C 00010768  7C 08 03 A6 */	mtlr r0
/* 000106A0 0001076C  38 21 00 40 */	addi r1, r1, 0x40
/* 000106A4 00010770  4E 80 00 20 */	blr
.endfn chain_init

# 0x000082D0..0x000084C0 | size: 0x1F0
.rodata
.balign 8

# .rodata:0x0 | 0x82D0 | size: 0xE
.obj str_btl_un_wanwan_las_00019d38, local
	.string "btl_un_wanwan"
.endobj str_btl_un_wanwan_las_00019d38

# .rodata:0xE | 0x82DE | size: 0x2
.obj gap_03_000082DE_rodata, global
.hidden gap_03_000082DE_rodata
	.2byte 0x0000
.endobj gap_03_000082DE_rodata

# .rodata:0x10 | 0x82E0 | size: 0x15
.obj str_SFX_ENM_WAN_DAMAGED1_las_00019d48, local
	.string "SFX_ENM_WAN_DAMAGED1"
.endobj str_SFX_ENM_WAN_DAMAGED1_las_00019d48

# .rodata:0x25 | 0x82F5 | size: 0x3
.obj gap_03_000082F5_rodata, global
.hidden gap_03_000082F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000082F5_rodata

# .rodata:0x28 | 0x82F8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_las_00019d60, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_las_00019d60

# .rodata:0x3D | 0x830D | size: 0x3
.obj gap_03_0000830D_rodata, global
.hidden gap_03_0000830D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000830D_rodata

# .rodata:0x40 | 0x8310 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_las_00019d78, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_las_00019d78

# .rodata:0x54 | 0x8324 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_las_00019d8c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_las_00019d8c

# .rodata:0x6D | 0x833D | size: 0x3
.obj gap_03_0000833D_rodata, global
.hidden gap_03_0000833D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000833D_rodata

# .rodata:0x70 | 0x8340 | size: 0x8
.obj str_WAN_N_1_las_00019da8, local
	.string "WAN_N_1"
.endobj str_WAN_N_1_las_00019da8

# .rodata:0x78 | 0x8348 | size: 0x8
.obj str_WAN_Y_1_las_00019db0, local
	.string "WAN_Y_1"
.endobj str_WAN_Y_1_las_00019db0

# .rodata:0x80 | 0x8350 | size: 0x8
.obj str_WAN_K_1_las_00019db8, local
	.string "WAN_K_1"
.endobj str_WAN_K_1_las_00019db8

# .rodata:0x88 | 0x8358 | size: 0x8
.obj str_WAN_X_1_las_00019dc0, local
	.string "WAN_X_1"
.endobj str_WAN_X_1_las_00019dc0

# .rodata:0x90 | 0x8360 | size: 0x8
.obj str_WAN_Z_1_las_00019dc8, local
	.string "WAN_Z_1"
.endobj str_WAN_Z_1_las_00019dc8

# .rodata:0x98 | 0x8368 | size: 0x9
.obj str_WAN_S_1A_las_00019dd0, local
	.string "WAN_S_1A"
.endobj str_WAN_S_1A_las_00019dd0

# .rodata:0xA1 | 0x8371 | size: 0x3
.obj gap_03_00008371_rodata, global
.hidden gap_03_00008371_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008371_rodata

# .rodata:0xA4 | 0x8374 | size: 0x8
.obj str_WAN_D_1_las_00019ddc, local
	.string "WAN_D_1"
.endobj str_WAN_D_1_las_00019ddc

# .rodata:0xAC | 0x837C | size: 0x8
.obj str_WAN_A_1_las_00019de4, local
	.string "WAN_A_1"
.endobj str_WAN_A_1_las_00019de4

# .rodata:0xB4 | 0x8384 | size: 0x8
.obj str_WAN_R_1_las_00019dec, local
	.string "WAN_R_1"
.endobj str_WAN_R_1_las_00019dec

# .rodata:0xBC | 0x838C | size: 0x8
.obj str_WAN_W_1_las_00019df4, local
	.string "WAN_W_1"
.endobj str_WAN_W_1_las_00019df4

# .rodata:0xC4 | 0x8394 | size: 0x9
.obj str_c_wanwan_las_00019dfc, local
	.string "c_wanwan"
.endobj str_c_wanwan_las_00019dfc

# .rodata:0xCD | 0x839D | size: 0x3
.obj gap_03_0000839D_rodata, global
.hidden gap_03_0000839D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000839D_rodata

# .rodata:0xD0 | 0x83A0 | size: 0x2
.obj str_0_las_00019e08, local
	.string "0"
.endobj str_0_las_00019e08

# .rodata:0xD2 | 0x83A2 | size: 0x2
.obj gap_03_000083A2_rodata, global
.hidden gap_03_000083A2_rodata
	.2byte 0x0000
.endobj gap_03_000083A2_rodata

# .rodata:0xD4 | 0x83A4 | size: 0x15
.obj str_SFX_ENM_WAN_LANDING1_las_00019e0c, local
	.string "SFX_ENM_WAN_LANDING1"
.endobj str_SFX_ENM_WAN_LANDING1_las_00019e0c

# .rodata:0xE9 | 0x83B9 | size: 0x3
.obj gap_03_000083B9_rodata, global
.hidden gap_03_000083B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000083B9_rodata

# .rodata:0xEC | 0x83BC | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_las_00019e24, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_las_00019e24

# .rodata:0x101 | 0x83D1 | size: 0x3
.obj gap_03_000083D1_rodata, global
.hidden gap_03_000083D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000083D1_rodata

# .rodata:0x104 | 0x83D4 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_las_00019e3c, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_las_00019e3c

# .rodata:0x119 | 0x83E9 | size: 0x3
.obj gap_03_000083E9_rodata, global
.hidden gap_03_000083E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000083E9_rodata

# .rodata:0x11C | 0x83EC | size: 0xC
.obj str_kemuri_test_las_00019e54, local
	.string "kemuri_test"
.endobj str_kemuri_test_las_00019e54

# .rodata:0x128 | 0x83F8 | size: 0x1
.obj zero_las_00019e60, local
	.byte 0x00
.endobj zero_las_00019e60

# .rodata:0x129 | 0x83F9 | size: 0x3
.obj gap_03_000083F9_rodata, global
.hidden gap_03_000083F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000083F9_rodata

# .rodata:0x12C | 0x83FC | size: 0xB
.obj str_star_point_las_00019e64, local
	.string "star_point"
.endobj str_star_point_las_00019e64

# .rodata:0x137 | 0x8407 | size: 0x1
.obj gap_03_00008407_rodata, global
.hidden gap_03_00008407_rodata
	.byte 0x00
.endobj gap_03_00008407_rodata

# .rodata:0x138 | 0x8408 | size: 0x12
.obj str_SFX_ENM_WAN_WAIT1_las_00019e70, local
	.string "SFX_ENM_WAN_WAIT1"
.endobj str_SFX_ENM_WAN_WAIT1_las_00019e70

# .rodata:0x14A | 0x841A | size: 0x2
.obj gap_03_0000841A_rodata, global
.hidden gap_03_0000841A_rodata
	.2byte 0x0000
.endobj gap_03_0000841A_rodata

# .rodata:0x14C | 0x841C | size: 0x12
.obj str_SFX_ENM_WAN_WAIT3_las_00019e84, local
	.string "SFX_ENM_WAN_WAIT3"
.endobj str_SFX_ENM_WAN_WAIT3_las_00019e84

# .rodata:0x15E | 0x842E | size: 0x2
.obj gap_03_0000842E_rodata, global
.hidden gap_03_0000842E_rodata
	.2byte 0x0000
.endobj gap_03_0000842E_rodata

# .rodata:0x160 | 0x8430 | size: 0x12
.obj str_SFX_ENM_WAN_WAIT2_las_00019e98, local
	.string "SFX_ENM_WAN_WAIT2"
.endobj str_SFX_ENM_WAN_WAIT2_las_00019e98

# .rodata:0x172 | 0x8442 | size: 0x2
.obj gap_03_00008442_rodata, global
.hidden gap_03_00008442_rodata
	.2byte 0x0000
.endobj gap_03_00008442_rodata

# .rodata:0x174 | 0x8444 | size: 0x14
.obj str_SFX_ENM_WAN_ATTACK1_las_00019eac, local
	.string "SFX_ENM_WAN_ATTACK1"
.endobj str_SFX_ENM_WAN_ATTACK1_las_00019eac

# .rodata:0x188 | 0x8458 | size: 0x14
.obj str_SFX_ENM_WAN_ATTACK2_las_00019ec0, local
	.string "SFX_ENM_WAN_ATTACK2"
.endobj str_SFX_ENM_WAN_ATTACK2_las_00019ec0

# .rodata:0x19C | 0x846C | size: 0x12
.obj str_SFX_ENM_WAN_WAIT4_las_00019ed4, local
	.string "SFX_ENM_WAN_WAIT4"
.endobj str_SFX_ENM_WAN_WAIT4_las_00019ed4
	.2byte 0x0000

# .rodata:0x1B0 | 0x8480 | size: 0x4
.obj float_20_las_00019ee8, local
	.float 20
.endobj float_20_las_00019ee8

# .rodata:0x1B4 | 0x8484 | size: 0x4
.obj float_0p125_las_00019eec, local
	.float 0.125
.endobj float_0p125_las_00019eec

# .rodata:0x1B8 | 0x8488 | size: 0x4
.obj float_10_las_00019ef0, local
	.float 10
.endobj float_10_las_00019ef0

# .rodata:0x1BC | 0x848C | size: 0x4
.obj float_300_las_00019ef4, local
	.float 300
.endobj float_300_las_00019ef4

# .rodata:0x1C0 | 0x8490 | size: 0x4
.obj float_110_las_00019ef8, local
	.float 110
.endobj float_110_las_00019ef8

# .rodata:0x1C4 | 0x8494 | size: 0x4
.obj float_16_las_00019efc, local
	.float 16
.endobj float_16_las_00019efc

# .rodata:0x1C8 | 0x8498 | size: 0x4
.obj float_1_las_00019f00, local
	.float 1
.endobj float_1_las_00019f00

# .rodata:0x1CC | 0x849C | size: 0x4
.obj zero_las_00019f04, local
	.float 0
.endobj zero_las_00019f04

# .rodata:0x1D0 | 0x84A0 | size: 0x8
.obj double_to_int_las_00019f08, local
	.double 4503601774854144
.endobj double_to_int_las_00019f08

# .rodata:0x1D8 | 0x84A8 | size: 0x9
.obj str_WAN_S_1B_las_00019f10, local
	.string "WAN_S_1B"
.endobj str_WAN_S_1B_las_00019f10

# .rodata:0x1E1 | 0x84B1 | size: 0x3
.obj gap_03_000084B1_rodata, global
.hidden gap_03_000084B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000084B1_rodata

# .rodata:0x1E4 | 0x84B4 | size: 0x8
.obj str_WAN_Z_2_las_00019f1c, local
	.string "WAN_Z_2"
.endobj str_WAN_Z_2_las_00019f1c

# .rodata:0x1EC | 0x84BC | size: 0x4
.obj gap_03_000084BC_rodata, global
.hidden gap_03_000084BC_rodata
	.4byte 0x00000000
.endobj gap_03_000084BC_rodata

# 0x00050CD0..0x000527A8 | size: 0x1AD8
.data
.balign 8

# .data:0x0 | 0x50CD0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x50CD8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x50CDC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x50CE0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x50CE4 | size: 0x4
.obj gap_04_00050CE4_data, global
.hidden gap_04_00050CE4_data
	.4byte 0x00000000
.endobj gap_04_00050CE4_data

# .data:0x18 | 0x50CE8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x50CF0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x50CF4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x50CF8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x50D00 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x50D04 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x50D08 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x50D0C | size: 0x4
.obj gap_04_00050D0C_data, global
.hidden gap_04_00050D0C_data
	.4byte 0x00000000
.endobj gap_04_00050D0C_data

# .data:0x40 | 0x50D10 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x50D18 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x50D1C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x50D20 | size: 0xC4
.obj unit_wanwan_16_data_50D20, global
	.4byte 0x0000007F
	.4byte str_btl_un_wanwan_las_00019d38
	.4byte 0x00070000
	.4byte 0x01012000
	.4byte 0x02460232
	.4byte 0x270F0022
	.4byte 0x00240006
	.4byte 0x002C0000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x41BB3333
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x42080000
	.4byte 0x42100000
	.4byte 0x00000002
	.4byte 0x64000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_WAN_DAMAGED1_las_00019d48
	.4byte str_SFX_BTL_DAMAGE_FIRE1_las_00019d60
	.4byte str_SFX_BTL_DAMAGE_ICE1_las_00019d78
	.4byte str_SFX_BTL_DAMAGE_BIRIB_las_00019d8c
	.4byte 0x00000000
	.4byte regist
	.4byte 0x09000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_wanwan_16_data_50D20

# .data:0x114 | 0x50DE4 | size: 0x5
.obj defence, local
	.4byte 0x05636305
	.byte 0x05
.endobj defence

# .data:0x119 | 0x50DE9 | size: 0x3
.obj gap_04_00050DE9_data, global
.hidden gap_04_00050DE9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00050DE9_data

# .data:0x11C | 0x50DEC | size: 0x5
.obj defence_attr, local
	.4byte 0x00020200
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x50DF1 | size: 0x3
.obj gap_04_00050DF1_data, global
.hidden gap_04_00050DF1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00050DF1_data

# .data:0x124 | 0x50DF4 | size: 0x16
.obj regist, local
	.4byte 0x00464164
	.4byte 0x41640046
	.4byte 0x645A645A
	.4byte 0x645F412D
	.4byte 0x1E644164
	.2byte 0x645A
.endobj regist

# .data:0x13A | 0x50E0A | size: 0x2
.obj gap_04_00050E0A_data, global
.hidden gap_04_00050E0A_data
	.2byte 0x0000
.endobj gap_04_00050E0A_data

# .data:0x13C | 0x50E0C | size: 0x98
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_WAN_N_1_las_00019da8
	.4byte 0x00000002
	.4byte str_WAN_Y_1_las_00019db0
	.4byte 0x00000009
	.4byte str_WAN_Y_1_las_00019db0
	.4byte 0x00000005
	.4byte str_WAN_K_1_las_00019db8
	.4byte 0x00000004
	.4byte str_WAN_X_1_las_00019dc0
	.4byte 0x00000003
	.4byte str_WAN_X_1_las_00019dc0
	.4byte 0x0000001B
	.4byte str_WAN_Z_1_las_00019dc8
	.4byte 0x0000001C
	.4byte str_WAN_S_1A_las_00019dd0
	.4byte 0x0000001D
	.4byte str_WAN_D_1_las_00019ddc
	.4byte 0x0000001E
	.4byte str_WAN_D_1_las_00019ddc
	.4byte 0x0000001F
	.4byte str_WAN_A_1_las_00019de4
	.4byte 0x00000027
	.4byte str_WAN_D_1_las_00019ddc
	.4byte 0x00000032
	.4byte str_WAN_A_1_las_00019de4
	.4byte 0x0000002A
	.4byte str_WAN_R_1_las_00019dec
	.4byte 0x00000028
	.4byte str_WAN_W_1_las_00019df4
	.4byte 0x00000038
	.4byte str_WAN_X_1_las_00019dc0
	.4byte 0x00000039
	.4byte str_WAN_X_1_las_00019dc0
	.4byte 0x00000041
	.4byte str_WAN_S_1A_las_00019dd0
	.4byte 0x00000045
	.4byte str_WAN_S_1A_las_00019dd0
.endobj pose_table

# .data:0x1D4 | 0x50EA4 | size: 0x78
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x0000001A
	.4byte counter_damage_event
	.4byte 0x00000019
	.4byte counter_damage_event
	.4byte 0x0000001B
	.4byte counter_damage_event
	.4byte 0x0000001C
	.4byte counter_damage_event
	.4byte 0x0000001D
	.4byte counter_damage_event
	.4byte 0x0000001E
	.4byte counter_damage_event
	.4byte 0x0000001F
	.4byte counter_damage_event
	.4byte 0x00000020
	.4byte counter_damage_event
	.4byte 0x00000021
	.4byte counter_damage_event
	.4byte 0x00000022
	.4byte counter_damage_event
	.4byte 0x00000023
	.4byte counter_damage_event
	.4byte 0x00000024
	.4byte counter_damage_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x24C | 0x50F1C | size: 0x2AC
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_wanwan_las_00019d38
	.4byte str_c_wanwan_las_00019dfc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x10000009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_wanwan_las_00019d38
	.4byte str_c_wanwan_las_00019dfc
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000003
	.4byte str_btl_un_wanwan_las_00019d38
	.4byte str_c_wanwan_las_00019dfc
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000004
	.4byte str_btl_un_wanwan_las_00019d38
	.4byte str_c_wanwan_las_00019dfc
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000005
	.4byte str_btl_un_wanwan_las_00019d38
	.4byte str_c_wanwan_las_00019dfc
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000006
	.4byte str_btl_un_wanwan_las_00019d38
	.4byte str_c_wanwan_las_00019dfc
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000007
	.4byte str_btl_un_wanwan_las_00019d38
	.4byte str_c_wanwan_las_00019dfc
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000008
	.4byte str_btl_un_wanwan_las_00019d38
	.4byte str_c_wanwan_las_00019dfc
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000009
	.4byte str_btl_un_wanwan_las_00019d38
	.4byte str_c_wanwan_las_00019dfc
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x4F8 | 0x511C8 | size: 0xC0
.obj weapon_wanwan_attack, local
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
	.4byte 0x21002000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000072
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
.endobj weapon_wanwan_attack

# .data:0x5B8 | 0x51288 | size: 0xA4
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte chain_init
	.4byte 0xFFFFFFFE
	.4byte 0x0001005C
	.4byte chain_event
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_0_las_00019e08
	.4byte str_SFX_ENM_WAN_LANDING1_las_00019e0c
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000007F
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x65C | 0x5132C | size: 0x5C
.obj chain_event, local
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte chain_main
	.4byte 0xFFFFFFFE
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj chain_event

# .data:0x6B8 | 0x51388 | size: 0x84
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x73C | 0x5140C | size: 0x110
.obj counter_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsFallAccel
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte btlevtcmd_PartsFaceDirectionSub
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000019
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000200
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000800
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj counter_damage_event

# .data:0x84C | 0x5151C | size: 0x320
.obj dead_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000030
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_1_las_00019e24
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_2_las_00019e3c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_las_00019e54
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7DB3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetCoin
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreCoin
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetExp
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreExp
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_las_00019e60
	.4byte str_star_point_las_00019e64
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_GetBackItem
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFE363C8A
	.4byte 0x00000400
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0xB6C | 0x5183C | size: 0x710
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002EE
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFirstAttackTarget
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000020
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
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_wanwan_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_wanwan_attack
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000007F
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_wanwan_attack
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
	.4byte weapon_wanwan_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_ChangePartsFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFE
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
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_A_1_las_00019de4
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7D4C
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT1_las_00019e70
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT3_las_00019e84
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT2_las_00019e98
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x00000006
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_las_00019dd0
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_ATTACK1_las_00019eac
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24A7BB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_A_1_las_00019de4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_ATTACK2_las_00019ec0
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xF24ABA80
	.4byte 0xF24A7A80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_wanwan_attack
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
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT1_las_00019e70
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_las_00019dd0
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xF24A9A80
	.4byte 0xF24A7A80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_wanwan_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_wanwan_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT1_las_00019e70
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_las_00019dd0
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xF24A9A80
	.4byte 0xF24A7B80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_ChangePartsFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x127C | 0x51F4C | size: 0x770
.obj wait_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_N_1_las_00019da8
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte sound_gensui_event
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x00010009
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x00010009
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000070
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C8F
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_Y_1_las_00019db0
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte sound_gensui_event
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00010004
	.4byte 0x00000005
	.4byte 0x00000070
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C8D
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C8F
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8D
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte sound_gensui_event
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000F
	.4byte 0x0001005C
	.4byte wait_sound_event1
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24A7B80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_las_00019e0c
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_las_00019e0c
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7C19
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_las_00019e0c
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_las_00019e0c
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000070
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000004
	.4byte 0x0001005E
	.4byte sound_gensui_event
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000F
	.4byte 0x0001005C
	.4byte wait_sound_event1
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_A_1_las_00019de4
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24A7B80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_las_00019e0c
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_las_00019dd0
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_las_00019e0c
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_A_1_las_00019de4
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7C19
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_las_00019e0c
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_las_00019dd0
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_las_00019e0c
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010004
	.4byte 0x00000004
	.4byte 0x00000070
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x19EC | 0x526BC | size: 0x58
.obj sound_gensui_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8B
	.4byte 0x0002003C
	.4byte 0xFE363C8B
	.4byte 0xF24A7D4C
	.4byte 0x0002001A
	.4byte 0xFE363C8B
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000020
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8B
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sound_gensui_event

# .data:0x1A44 | 0x52714 | size: 0x64
.obj wait_sound_event1, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT1_las_00019e70
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT3_las_00019e84
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT2_las_00019e98
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_sound_event1

# .data:0x1AA8 | 0x52778 | size: 0x30
.obj wait_sound_event2, local
	.4byte 0x00010009
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT4_las_00019ed4
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
.endobj wait_sound_event2
