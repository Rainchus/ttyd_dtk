.include "macros.inc"
.file "unit_wanwan.o"

# 0x00001F38..0x000026A0 | size: 0x768
.text
.balign 4

# .text:0x0 | 0x1F38 | size: 0x5EC
.fn chain_main, local
/* 00001F38 00001FFC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 00001F3C 00002000  7C 08 02 A6 */	mflr r0
/* 00001F40 00002004  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 00001F44 00002008  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 00001F48 0000200C  F3 E1 00 B8 */	psq_st f31, 0xb8(r1), 0, qr0
/* 00001F4C 00002010  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 00001F50 00002014  F3 C1 00 A8 */	psq_st f30, 0xa8(r1), 0, qr0
/* 00001F54 00002018  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 00001F58 0000201C  F3 A1 00 98 */	psq_st f29, 0x98(r1), 0, qr0
/* 00001F5C 00002020  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 00001F60 00002024  F3 81 00 88 */	psq_st f28, 0x88(r1), 0, qr0
/* 00001F64 00002028  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 00001F68 0000202C  F3 61 00 78 */	psq_st f27, 0x78(r1), 0, qr0
/* 00001F6C 00002030  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 00001F70 00002034  F3 41 00 68 */	psq_st f26, 0x68(r1), 0, qr0
/* 00001F74 00002038  DB 21 00 50 */	stfd f25, 0x50(r1)
/* 00001F78 0000203C  F3 21 00 58 */	psq_st f25, 0x58(r1), 0, qr0
/* 00001F7C 00002040  BF A1 00 44 */	stmw r29, 0x44(r1)
/* 00001F80 00002044  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00001F84 00002048  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00001F88 0000204C  83 A4 00 00 */	lwz r29, _battleWorkPointer@l(r4)
/* 00001F8C 00002050  7C 7E 1B 78 */	mr r30, r3
/* 00001F90 00002054  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00001F94 00002058  4B FF EA DD */	bl evtGetValue
/* 00001F98 0000205C  7C 60 1B 78 */	mr r0, r3
/* 00001F9C 00002060  7F C3 F3 78 */	mr r3, r30
/* 00001FA0 00002064  7C 04 03 78 */	mr r4, r0
/* 00001FA4 00002068  4B FF EA CD */	bl BattleTransID
/* 00001FA8 0000206C  7C 7E 1B 78 */	mr r30, r3
/* 00001FAC 00002070  7F A3 EB 78 */	mr r3, r29
/* 00001FB0 00002074  7F C4 F3 78 */	mr r4, r30
/* 00001FB4 00002078  4B FF EA BD */	bl BattleGetUnitPtr
/* 00001FB8 0000207C  28 03 00 00 */	cmplwi r3, 0x0
/* 00001FBC 00002080  40 82 00 0C */	bne .L_00001FC8
/* 00001FC0 00002084  38 60 00 00 */	li r3, 0x0
/* 00001FC4 00002088  48 00 05 14 */	b .L_000024D8
.L_00001FC8:
/* 00001FC8 0000208C  38 80 00 01 */	li r4, 0x1
/* 00001FCC 00002090  4B FF EA A5 */	bl BtlUnit_GetPartsPtr
/* 00001FD0 00002094  7F A3 EB 78 */	mr r3, r29
/* 00001FD4 00002098  7F C4 F3 78 */	mr r4, r30
/* 00001FD8 0000209C  4B FF EA 99 */	bl BattleGetUnitPtr
/* 00001FDC 000020A0  38 81 00 28 */	addi r4, r1, 0x28
/* 00001FE0 000020A4  7C 7F 1B 78 */	mr r31, r3
/* 00001FE4 000020A8  38 A1 00 24 */	addi r5, r1, 0x24
/* 00001FE8 000020AC  38 C1 00 20 */	addi r6, r1, 0x20
/* 00001FEC 000020B0  4B FF EA 85 */	bl BtlUnit_GetPos
/* 00001FF0 000020B4  7F E3 FB 78 */	mr r3, r31
/* 00001FF4 000020B8  38 80 00 09 */	li r4, 0x9
/* 00001FF8 000020BC  4B FF EA 79 */	bl BtlUnit_GetPartsPtr
/* 00001FFC 000020C0  88 BF 01 89 */	lbz r5, 0x189(r31)
/* 00002000 000020C4  3C 00 43 30 */	lis r0, 0x4330
/* 00002004 000020C8  3C 80 00 00 */	lis r4, double_to_int_jon_0000bac8@ha
/* 00002008 000020CC  3C C0 00 00 */	lis r6, float_20_jon_0000baa8@ha
/* 0000200C 000020D0  7C A5 07 74 */	extsb r5, r5
/* 00002010 000020D4  90 01 00 30 */	stw r0, 0x30(r1)
/* 00002014 000020D8  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 00002018 000020DC  C8 24 00 00 */	lfd f1, double_to_int_jon_0000bac8@l(r4)
/* 0000201C 000020E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 00002020 000020E4  C0 86 00 00 */	lfs f4, float_20_jon_0000baa8@l(r6)
/* 00002024 000020E8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 00002028 000020EC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 0000202C 000020F0  EC 20 08 28 */	fsubs f1, f0, f1
/* 00002030 000020F4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 00002034 000020F8  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 00002038 000020FC  EC 24 00 7C */	fnmsubs f1, f4, f1, f0
/* 0000203C 00002100  4B FF EA 35 */	bl BtlUnit_SetPartsPos
/* 00002040 00002104  80 1F 02 20 */	lwz r0, 0x220(r31)
/* 00002044 00002108  2C 00 00 02 */	cmpwi r0, 0x2
/* 00002048 0000210C  40 82 00 90 */	bne .L_000020D8
/* 0000204C 00002110  7F E3 FB 78 */	mr r3, r31
/* 00002050 00002114  38 80 00 09 */	li r4, 0x9
/* 00002054 00002118  4B FF EA 1D */	bl BtlUnit_GetPartsPtr
/* 00002058 0000211C  38 81 00 28 */	addi r4, r1, 0x28
/* 0000205C 00002120  38 A1 00 24 */	addi r5, r1, 0x24
/* 00002060 00002124  38 C1 00 20 */	addi r6, r1, 0x20
/* 00002064 00002128  4B FF EA 0D */	bl BtlUnit_GetPartsPos
/* 00002068 0000212C  3B A0 00 08 */	li r29, 0x8
.L_0000206C:
/* 0000206C 00002130  7F E3 FB 78 */	mr r3, r31
/* 00002070 00002134  7F A4 EB 78 */	mr r4, r29
/* 00002074 00002138  4B FF E9 FD */	bl BtlUnit_GetPartsPtr
/* 00002078 0000213C  7C 7E 1B 78 */	mr r30, r3
/* 0000207C 00002140  38 81 00 10 */	addi r4, r1, 0x10
/* 00002080 00002144  38 A1 00 0C */	addi r5, r1, 0xc
/* 00002084 00002148  38 C1 00 08 */	addi r6, r1, 0x8
/* 00002088 0000214C  4B FF E9 E9 */	bl BtlUnit_GetPartsPos
/* 0000208C 00002150  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 00002090 00002154  3B BD FF FF */	subi r29, r29, 0x1
/* 00002094 00002158  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 00002098 0000215C  2C 1D 00 01 */	cmpwi r29, 0x1
/* 0000209C 00002160  EC 01 00 28 */	fsubs f0, f1, f0
/* 000020A0 00002164  FC 00 00 1E */	fctiwz f0, f0
/* 000020A4 00002168  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 000020A8 0000216C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000020AC 00002170  90 1E 01 30 */	stw r0, 0x130(r30)
/* 000020B0 00002174  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 000020B4 00002178  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 000020B8 0000217C  EC 01 00 28 */	fsubs f0, f1, f0
/* 000020BC 00002180  FC 00 00 1E */	fctiwz f0, f0
/* 000020C0 00002184  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 000020C4 00002188  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 000020C8 0000218C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 000020CC 00002190  40 80 FF A0 */	bge .L_0000206C
/* 000020D0 00002194  38 00 00 01 */	li r0, 0x1
/* 000020D4 00002198  90 1F 02 20 */	stw r0, 0x220(r31)
.L_000020D8:
/* 000020D8 0000219C  80 1F 02 20 */	lwz r0, 0x220(r31)
/* 000020DC 000021A0  2C 00 00 01 */	cmpwi r0, 0x1
/* 000020E0 000021A4  40 82 00 98 */	bne .L_00002178
/* 000020E4 000021A8  7F E3 FB 78 */	mr r3, r31
/* 000020E8 000021AC  38 80 00 09 */	li r4, 0x9
/* 000020EC 000021B0  4B FF E9 85 */	bl BtlUnit_GetPartsPtr
/* 000020F0 000021B4  38 81 00 28 */	addi r4, r1, 0x28
/* 000020F4 000021B8  38 A1 00 24 */	addi r5, r1, 0x24
/* 000020F8 000021BC  38 C1 00 20 */	addi r6, r1, 0x20
/* 000020FC 000021C0  4B FF E9 75 */	bl BtlUnit_GetPartsPos
/* 00002100 000021C4  3C 60 00 00 */	lis r3, double_to_int_jon_0000bac8@ha
/* 00002104 000021C8  3B A0 00 08 */	li r29, 0x8
/* 00002108 000021CC  CB 83 00 00 */	lfd f28, double_to_int_jon_0000bac8@l(r3)
/* 0000210C 000021D0  3F C0 43 30 */	lis r30, 0x4330
.L_00002110:
/* 00002110 000021D4  7F E3 FB 78 */	mr r3, r31
/* 00002114 000021D8  7F A4 EB 78 */	mr r4, r29
/* 00002118 000021DC  4B FF E9 59 */	bl BtlUnit_GetPartsPtr
/* 0000211C 000021E0  80 83 01 30 */	lwz r4, 0x130(r3)
/* 00002120 000021E4  80 03 01 34 */	lwz r0, 0x134(r3)
/* 00002124 000021E8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00002128 000021EC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 0000212C 000021F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00002130 000021F4  C0 81 00 28 */	lfs f4, 0x28(r1)
/* 00002134 000021F8  90 81 00 3C */	stw r4, 0x3c(r1)
/* 00002138 000021FC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 0000213C 00002200  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 00002140 00002204  90 01 00 34 */	stw r0, 0x34(r1)
/* 00002144 00002208  EC 20 E0 28 */	fsubs f1, f0, f28
/* 00002148 0000220C  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 0000214C 00002210  93 C1 00 30 */	stw r30, 0x30(r1)
/* 00002150 00002214  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 00002154 00002218  EC 24 08 2A */	fadds f1, f4, f1
/* 00002158 0000221C  EC 00 E0 28 */	fsubs f0, f0, f28
/* 0000215C 00002220  EC 42 00 2A */	fadds f2, f2, f0
/* 00002160 00002224  4B FF E9 11 */	bl BtlUnit_SetPartsPos
/* 00002164 00002228  3B BD FF FF */	subi r29, r29, 0x1
/* 00002168 0000222C  2C 1D 00 01 */	cmpwi r29, 0x1
/* 0000216C 00002230  40 80 FF A4 */	bge .L_00002110
/* 00002170 00002234  38 60 00 02 */	li r3, 0x2
/* 00002174 00002238  48 00 03 64 */	b .L_000024D8
.L_00002178:
/* 00002178 0000223C  7F E3 FB 78 */	mr r3, r31
/* 0000217C 00002240  38 80 00 01 */	li r4, 0x1
/* 00002180 00002244  4B FF E8 F1 */	bl BtlUnit_GetPartsPtr
/* 00002184 00002248  38 81 00 1C */	addi r4, r1, 0x1c
/* 00002188 0000224C  38 A1 00 18 */	addi r5, r1, 0x18
/* 0000218C 00002250  38 C1 00 14 */	addi r6, r1, 0x14
/* 00002190 00002254  4B FF E8 E1 */	bl BtlUnit_GetPartsPos
/* 00002194 00002258  7F E3 FB 78 */	mr r3, r31
/* 00002198 0000225C  38 80 00 09 */	li r4, 0x9
/* 0000219C 00002260  4B FF E8 D5 */	bl BtlUnit_GetPartsPtr
/* 000021A0 00002264  38 81 00 10 */	addi r4, r1, 0x10
/* 000021A4 00002268  38 A1 00 0C */	addi r5, r1, 0xc
/* 000021A8 0000226C  38 C1 00 08 */	addi r6, r1, 0x8
/* 000021AC 00002270  4B FF E8 C5 */	bl BtlUnit_GetPartsPos
/* 000021B0 00002274  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 000021B4 00002278  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 000021B8 0000227C  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 000021BC 00002280  EC 81 00 28 */	fsubs f4, f1, f0
/* 000021C0 00002284  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 000021C4 00002288  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 000021C8 0000228C  EC 63 00 28 */	fsubs f3, f3, f0
/* 000021CC 00002290  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 000021D0 00002294  EC 04 01 32 */	fmuls f0, f4, f4
/* 000021D4 00002298  EC 22 08 28 */	fsubs f1, f2, f1
/* 000021D8 0000229C  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 000021DC 000022A0  EC 21 00 7A */	fmadds f1, f1, f1, f0
/* 000021E0 000022A4  4B FF E8 91 */	bl sqrt
/* 000021E4 000022A8  3C 80 00 00 */	lis r4, float_0p125_jon_0000baac@ha
/* 000021E8 000022AC  FC 40 08 18 */	frsp f2, f1
/* 000021EC 000022B0  C0 24 00 00 */	lfs f1, float_0p125_jon_0000baac@l(r4)
/* 000021F0 000022B4  3C 60 00 00 */	lis r3, float_10_jon_0000bab0@ha
/* 000021F4 000022B8  C0 03 00 00 */	lfs f0, float_10_jon_0000bab0@l(r3)
/* 000021F8 000022BC  EF E2 00 72 */	fmuls f31, f2, f1
/* 000021FC 000022C0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00002200 000022C4  40 80 00 08 */	bge .L_00002208
/* 00002204 000022C8  FF E0 00 90 */	fmr f31, f0
.L_00002208:
/* 00002208 000022CC  3C 60 00 00 */	lis r3, float_300_jon_0000bab4@ha
/* 0000220C 000022D0  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 00002210 000022D4  38 83 00 00 */	addi r4, r3, float_300_jon_0000bab4@l
/* 00002214 000022D8  7F E3 FB 78 */	mr r3, r31
/* 00002218 000022DC  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 0000221C 000022E0  38 80 00 01 */	li r4, 0x1
/* 00002220 000022E4  EF C1 00 24 */	fdivs f30, f1, f0
/* 00002224 000022E8  4B FF E8 4D */	bl BtlUnit_GetPartsPtr
/* 00002228 000022EC  38 81 00 28 */	addi r4, r1, 0x28
/* 0000222C 000022F0  7C 7E 1B 78 */	mr r30, r3
/* 00002230 000022F4  38 A1 00 24 */	addi r5, r1, 0x24
/* 00002234 000022F8  38 C1 00 20 */	addi r6, r1, 0x20
/* 00002238 000022FC  4B FF E8 39 */	bl BtlUnit_GetPartsPos
/* 0000223C 00002300  3C 60 00 00 */	lis r3, float_110_jon_0000bab8@ha
/* 00002240 00002304  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 00002244 00002308  C0 03 00 00 */	lfs f0, float_110_jon_0000bab8@l(r3)
/* 00002248 0000230C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 0000224C 00002310  40 81 00 08 */	ble .L_00002254
/* 00002250 00002314  D0 01 00 24 */	stfs f0, 0x24(r1)
.L_00002254:
/* 00002254 00002318  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 00002258 0000231C  7F C3 F3 78 */	mr r3, r30
/* 0000225C 00002320  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 00002260 00002324  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 00002264 00002328  4B FF E8 0D */	bl BtlUnit_SetPartsPos
/* 00002268 0000232C  7F E3 FB 78 */	mr r3, r31
/* 0000226C 00002330  38 80 00 01 */	li r4, 0x1
/* 00002270 00002334  4B FF E8 01 */	bl BtlUnit_GetPartsPtr
/* 00002274 00002338  38 81 00 28 */	addi r4, r1, 0x28
/* 00002278 0000233C  38 A1 00 24 */	addi r5, r1, 0x24
/* 0000227C 00002340  38 C1 00 20 */	addi r6, r1, 0x20
/* 00002280 00002344  4B FF E7 F1 */	bl BtlUnit_GetPartsPos
/* 00002284 00002348  88 BF 01 89 */	lbz r5, 0x189(r31)
/* 00002288 0000234C  3C 00 43 30 */	lis r0, 0x4330
/* 0000228C 00002350  3C 80 00 00 */	lis r4, double_to_int_jon_0000bac8@ha
/* 00002290 00002354  90 01 00 38 */	stw r0, 0x38(r1)
/* 00002294 00002358  7C A5 07 74 */	extsb r5, r5
/* 00002298 0000235C  C8 44 00 00 */	lfd f2, double_to_int_jon_0000bac8@l(r4)
/* 0000229C 00002360  54 A0 20 36 */	slwi r0, r5, 4
/* 000022A0 00002364  3C 60 00 00 */	lis r3, float_16_jon_0000babc@ha
/* 000022A4 00002368  7C 00 00 D0 */	neg r0, r0
/* 000022A8 0000236C  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 000022AC 00002370  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 000022B0 00002374  38 A3 00 00 */	addi r5, r3, float_16_jon_0000babc@l
/* 000022B4 00002378  90 01 00 3C */	stw r0, 0x3c(r1)
/* 000022B8 0000237C  7F E3 FB 78 */	mr r3, r31
/* 000022BC 00002380  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 000022C0 00002384  38 80 00 02 */	li r4, 0x2
/* 000022C4 00002388  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 000022C8 0000238C  EC 40 10 28 */	fsubs f2, f0, f2
/* 000022CC 00002390  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 000022D0 00002394  EC 01 00 2A */	fadds f0, f1, f0
/* 000022D4 00002398  EC 23 10 2A */	fadds f1, f3, f2
/* 000022D8 0000239C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 000022DC 000023A0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 000022E0 000023A4  4B FF E7 91 */	bl BtlUnit_GetPartsPtr
/* 000022E4 000023A8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 000022E8 000023AC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 000022EC 000023B0  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 000022F0 000023B4  4B FF E7 81 */	bl BtlUnit_SetPartsPos
/* 000022F4 000023B8  3C 80 00 00 */	lis r4, float_1_jon_0000bac0@ha
/* 000022F8 000023BC  3C 60 00 00 */	lis r3, zero_jon_0000bac4@ha
/* 000022FC 000023C0  C3 A4 00 00 */	lfs f29, float_1_jon_0000bac0@l(r4)
/* 00002300 000023C4  3B A0 00 02 */	li r29, 0x2
/* 00002304 000023C8  C3 83 00 00 */	lfs f28, zero_jon_0000bac4@l(r3)
.L_00002308:
/* 00002308 000023CC  7F E3 FB 78 */	mr r3, r31
/* 0000230C 000023D0  7F A4 EB 78 */	mr r4, r29
/* 00002310 000023D4  4B FF E7 61 */	bl BtlUnit_GetPartsPtr
/* 00002314 000023D8  38 81 00 1C */	addi r4, r1, 0x1c
/* 00002318 000023DC  38 A1 00 18 */	addi r5, r1, 0x18
/* 0000231C 000023E0  38 C1 00 14 */	addi r6, r1, 0x14
/* 00002320 000023E4  4B FF E7 51 */	bl BtlUnit_GetPartsPos
/* 00002324 000023E8  7F E3 FB 78 */	mr r3, r31
/* 00002328 000023EC  38 9D 00 01 */	addi r4, r29, 0x1
/* 0000232C 000023F0  4B FF E7 45 */	bl BtlUnit_GetPartsPtr
/* 00002330 000023F4  38 81 00 10 */	addi r4, r1, 0x10
/* 00002334 000023F8  7C 7E 1B 78 */	mr r30, r3
/* 00002338 000023FC  38 A1 00 0C */	addi r5, r1, 0xc
/* 0000233C 00002400  38 C1 00 08 */	addi r6, r1, 0x8
/* 00002340 00002404  4B FF E7 31 */	bl BtlUnit_GetPartsPos
/* 00002344 00002408  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00002348 0000240C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 0000234C 00002410  EC 81 F0 28 */	fsubs f4, f1, f30
/* 00002350 00002414  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 00002354 00002418  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 00002358 0000241C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 0000235C 00002420  EF 40 20 28 */	fsubs f26, f0, f4
/* 00002360 00002424  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00002364 00002428  EF 63 10 28 */	fsubs f27, f3, f2
/* 00002368 0000242C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 0000236C 00002430  EF 21 00 28 */	fsubs f25, f1, f0
/* 00002370 00002434  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 00002374 00002438  EC 1B 06 FA */	fmadds f0, f27, f27, f0
/* 00002378 0000243C  EC 39 06 7A */	fmadds f1, f25, f25, f0
/* 0000237C 00002440  4B FF E6 F5 */	bl sqrt
/* 00002380 00002444  FC 60 08 18 */	frsp f3, f1
/* 00002384 00002448  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00002388 0000244C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 0000238C 00002450  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00002390 00002454  EC 7F 18 24 */	fdivs f3, f31, f3
/* 00002394 00002458  EC 7D 18 28 */	fsubs f3, f29, f3
/* 00002398 0000245C  EC 3A 08 FA */	fmadds f1, f26, f3, f1
/* 0000239C 00002460  EC 5B 10 FA */	fmadds f2, f27, f3, f2
/* 000023A0 00002464  EC 19 00 FA */	fmadds f0, f25, f3, f0
/* 000023A4 00002468  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 000023A8 0000246C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 000023AC 00002470  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 000023B0 00002474  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 000023B4 00002478  40 80 00 10 */	bge .L_000023C4
/* 000023B8 0000247C  3C 60 00 00 */	lis r3, zero_jon_0000bac4@ha
/* 000023BC 00002480  C0 03 00 00 */	lfs f0, zero_jon_0000bac4@l(r3)
/* 000023C0 00002484  D0 01 00 0C */	stfs f0, 0xc(r1)
.L_000023C4:
/* 000023C4 00002488  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 000023C8 0000248C  7F C3 F3 78 */	mr r3, r30
/* 000023CC 00002490  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 000023D0 00002494  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 000023D4 00002498  4B FF E6 9D */	bl BtlUnit_SetPartsPos
/* 000023D8 0000249C  3B BD 00 01 */	addi r29, r29, 0x1
/* 000023DC 000024A0  2C 1D 00 07 */	cmpwi r29, 0x7
/* 000023E0 000024A4  40 81 FF 28 */	ble .L_00002308
/* 000023E4 000024A8  3C 80 00 00 */	lis r4, float_1_jon_0000bac0@ha
/* 000023E8 000024AC  3C 60 00 00 */	lis r3, zero_jon_0000bac4@ha
/* 000023EC 000024B0  C3 84 00 00 */	lfs f28, float_1_jon_0000bac0@l(r4)
/* 000023F0 000024B4  3B A0 00 09 */	li r29, 0x9
/* 000023F4 000024B8  C3 A3 00 00 */	lfs f29, zero_jon_0000bac4@l(r3)
.L_000023F8:
/* 000023F8 000024BC  7F E3 FB 78 */	mr r3, r31
/* 000023FC 000024C0  7F A4 EB 78 */	mr r4, r29
/* 00002400 000024C4  4B FF E6 71 */	bl BtlUnit_GetPartsPtr
/* 00002404 000024C8  38 81 00 1C */	addi r4, r1, 0x1c
/* 00002408 000024CC  38 A1 00 18 */	addi r5, r1, 0x18
/* 0000240C 000024D0  38 C1 00 14 */	addi r6, r1, 0x14
/* 00002410 000024D4  4B FF E6 61 */	bl BtlUnit_GetPartsPos
/* 00002414 000024D8  7F E3 FB 78 */	mr r3, r31
/* 00002418 000024DC  38 9D FF FF */	subi r4, r29, 0x1
/* 0000241C 000024E0  4B FF E6 55 */	bl BtlUnit_GetPartsPtr
/* 00002420 000024E4  38 81 00 10 */	addi r4, r1, 0x10
/* 00002424 000024E8  7C 7E 1B 78 */	mr r30, r3
/* 00002428 000024EC  38 A1 00 0C */	addi r5, r1, 0xc
/* 0000242C 000024F0  38 C1 00 08 */	addi r6, r1, 0x8
/* 00002430 000024F4  4B FF E6 41 */	bl BtlUnit_GetPartsPos
/* 00002434 000024F8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00002438 000024FC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 0000243C 00002500  EC 81 F0 28 */	fsubs f4, f1, f30
/* 00002440 00002504  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 00002444 00002508  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 00002448 0000250C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 0000244C 00002510  EF 40 20 28 */	fsubs f26, f0, f4
/* 00002450 00002514  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00002454 00002518  EF 63 10 28 */	fsubs f27, f3, f2
/* 00002458 0000251C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 0000245C 00002520  EF 21 00 28 */	fsubs f25, f1, f0
/* 00002460 00002524  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 00002464 00002528  EC 1B 06 FA */	fmadds f0, f27, f27, f0
/* 00002468 0000252C  EC 39 06 7A */	fmadds f1, f25, f25, f0
/* 0000246C 00002530  4B FF E6 05 */	bl sqrt
/* 00002470 00002534  FC 60 08 18 */	frsp f3, f1
/* 00002474 00002538  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00002478 0000253C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 0000247C 00002540  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00002480 00002544  EC 7F 18 24 */	fdivs f3, f31, f3
/* 00002484 00002548  EC 7C 18 28 */	fsubs f3, f28, f3
/* 00002488 0000254C  EC 3A 08 FA */	fmadds f1, f26, f3, f1
/* 0000248C 00002550  EC 5B 10 FA */	fmadds f2, f27, f3, f2
/* 00002490 00002554  EC 19 00 FA */	fmadds f0, f25, f3, f0
/* 00002494 00002558  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 00002498 0000255C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 0000249C 00002560  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 000024A0 00002564  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 000024A4 00002568  40 80 00 10 */	bge .L_000024B4
/* 000024A8 0000256C  3C 60 00 00 */	lis r3, zero_jon_0000bac4@ha
/* 000024AC 00002570  C0 03 00 00 */	lfs f0, zero_jon_0000bac4@l(r3)
/* 000024B0 00002574  D0 01 00 0C */	stfs f0, 0xc(r1)
.L_000024B4:
/* 000024B4 00002578  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 000024B8 0000257C  7F C3 F3 78 */	mr r3, r30
/* 000024BC 00002580  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 000024C0 00002584  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 000024C4 00002588  4B FF E5 AD */	bl BtlUnit_SetPartsPos
/* 000024C8 0000258C  3B BD FF FF */	subi r29, r29, 0x1
/* 000024CC 00002590  2C 1D 00 03 */	cmpwi r29, 0x3
/* 000024D0 00002594  40 80 FF 28 */	bge .L_000023F8
/* 000024D4 00002598  38 60 00 02 */	li r3, 0x2
.L_000024D8:
/* 000024D8 0000259C  E3 E1 00 B8 */	psq_l f31, 0xb8(r1), 0, qr0
/* 000024DC 000025A0  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 000024E0 000025A4  E3 C1 00 A8 */	psq_l f30, 0xa8(r1), 0, qr0
/* 000024E4 000025A8  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 000024E8 000025AC  E3 A1 00 98 */	psq_l f29, 0x98(r1), 0, qr0
/* 000024EC 000025B0  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 000024F0 000025B4  E3 81 00 88 */	psq_l f28, 0x88(r1), 0, qr0
/* 000024F4 000025B8  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 000024F8 000025BC  E3 61 00 78 */	psq_l f27, 0x78(r1), 0, qr0
/* 000024FC 000025C0  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 00002500 000025C4  E3 41 00 68 */	psq_l f26, 0x68(r1), 0, qr0
/* 00002504 000025C8  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 00002508 000025CC  E3 21 00 58 */	psq_l f25, 0x58(r1), 0, qr0
/* 0000250C 000025D0  CB 21 00 50 */	lfd f25, 0x50(r1)
/* 00002510 000025D4  BB A1 00 44 */	lmw r29, 0x44(r1)
/* 00002514 000025D8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 00002518 000025DC  7C 08 03 A6 */	mtlr r0
/* 0000251C 000025E0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 00002520 000025E4  4E 80 00 20 */	blr
.endfn chain_main

# .text:0x5EC | 0x2524 | size: 0x17C
.fn chain_init, local
/* 00002524 000025E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00002528 000025EC  7C 08 02 A6 */	mflr r0
/* 0000252C 000025F0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00002530 000025F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 00002534 000025F8  BF 81 00 30 */	stmw r28, 0x30(r1)
/* 00002538 000025FC  7C 7C 1B 78 */	mr r28, r3
/* 0000253C 00002600  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00002540 00002604  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 00002544 00002608  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00002548 0000260C  4B FF E5 29 */	bl evtGetValue
/* 0000254C 00002610  7C 60 1B 78 */	mr r0, r3
/* 00002550 00002614  7F 83 E3 78 */	mr r3, r28
/* 00002554 00002618  7C 04 03 78 */	mr r4, r0
/* 00002558 0000261C  4B FF E5 19 */	bl BattleTransID
/* 0000255C 00002620  7C 64 1B 78 */	mr r4, r3
/* 00002560 00002624  7F E3 FB 78 */	mr r3, r31
/* 00002564 00002628  4B FF E5 0D */	bl BattleGetUnitPtr
/* 00002568 0000262C  38 81 00 10 */	addi r4, r1, 0x10
/* 0000256C 00002630  7C 7E 1B 78 */	mr r30, r3
/* 00002570 00002634  38 A1 00 0C */	addi r5, r1, 0xc
/* 00002574 00002638  38 C1 00 08 */	addi r6, r1, 0x8
/* 00002578 0000263C  4B FF E4 F9 */	bl BtlUnit_GetPos
/* 0000257C 00002640  3C 60 00 00 */	lis r3, str_WAN_S_1B_jon_0000bad0@ha
/* 00002580 00002644  3B 80 00 02 */	li r28, 0x2
/* 00002584 00002648  3B E3 00 00 */	addi r31, r3, str_WAN_S_1B_jon_0000bad0@l
.L_00002588:
/* 00002588 0000264C  7F C3 F3 78 */	mr r3, r30
/* 0000258C 00002650  7F 84 E3 78 */	mr r4, r28
/* 00002590 00002654  4B FF E4 E1 */	bl BtlUnit_GetPartsPtr
/* 00002594 00002658  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 00002598 0000265C  7C 7D 1B 78 */	mr r29, r3
/* 0000259C 00002660  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 000025A0 00002664  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 000025A4 00002668  4B FF E4 CD */	bl BtlUnit_SetPartsPos
/* 000025A8 0000266C  7F A3 EB 78 */	mr r3, r29
/* 000025AC 00002670  7F E4 FB 78 */	mr r4, r31
/* 000025B0 00002674  4B FF E4 C1 */	bl BtlUnit_SetAnim
/* 000025B4 00002678  3B 9C 00 01 */	addi r28, r28, 0x1
/* 000025B8 0000267C  2C 1C 00 07 */	cmpwi r28, 0x7
/* 000025BC 00002680  40 81 FF CC */	ble .L_00002588
/* 000025C0 00002684  7F C3 F3 78 */	mr r3, r30
/* 000025C4 00002688  38 80 00 08 */	li r4, 0x8
/* 000025C8 0000268C  4B FF E4 A9 */	bl BtlUnit_GetPartsPtr
/* 000025CC 00002690  88 9E 01 89 */	lbz r4, 0x189(r30)
/* 000025D0 00002694  3C 00 43 30 */	lis r0, 0x4330
/* 000025D4 00002698  3C A0 00 00 */	lis r5, double_to_int_jon_0000bac8@ha
/* 000025D8 0000269C  3C C0 00 00 */	lis r6, float_20_jon_0000baa8@ha
/* 000025DC 000026A0  7C 84 07 74 */	extsb r4, r4
/* 000025E0 000026A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 000025E4 000026A8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 000025E8 000026AC  C8 45 00 00 */	lfd f2, double_to_int_jon_0000bac8@l(r5)
/* 000025EC 000026B0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 000025F0 000026B4  7C 7F 1B 78 */	mr r31, r3
/* 000025F4 000026B8  C0 86 00 00 */	lfs f4, float_20_jon_0000baa8@l(r6)
/* 000025F8 000026BC  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 000025FC 000026C0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00002600 000026C4  EC 21 10 28 */	fsubs f1, f1, f2
/* 00002604 000026C8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 00002608 000026CC  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 0000260C 000026D0  EC 24 00 7C */	fnmsubs f1, f4, f1, f0
/* 00002610 000026D4  4B FF E4 61 */	bl BtlUnit_SetPartsPos
/* 00002614 000026D8  3C 80 00 00 */	lis r4, str_WAN_S_1B_jon_0000bad0@ha
/* 00002618 000026DC  7F E3 FB 78 */	mr r3, r31
/* 0000261C 000026E0  38 84 00 00 */	addi r4, r4, str_WAN_S_1B_jon_0000bad0@l
/* 00002620 000026E4  4B FF E4 51 */	bl BtlUnit_SetAnim
/* 00002624 000026E8  7F C3 F3 78 */	mr r3, r30
/* 00002628 000026EC  38 80 00 09 */	li r4, 0x9
/* 0000262C 000026F0  4B FF E4 45 */	bl BtlUnit_GetPartsPtr
/* 00002630 000026F4  88 9E 01 89 */	lbz r4, 0x189(r30)
/* 00002634 000026F8  3C 00 43 30 */	lis r0, 0x4330
/* 00002638 000026FC  3C A0 00 00 */	lis r5, double_to_int_jon_0000bac8@ha
/* 0000263C 00002700  3C C0 00 00 */	lis r6, float_20_jon_0000baa8@ha
/* 00002640 00002704  7C 84 07 74 */	extsb r4, r4
/* 00002644 00002708  90 01 00 20 */	stw r0, 0x20(r1)
/* 00002648 0000270C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 0000264C 00002710  C8 45 00 00 */	lfd f2, double_to_int_jon_0000bac8@l(r5)
/* 00002650 00002714  90 81 00 24 */	stw r4, 0x24(r1)
/* 00002654 00002718  7C 7F 1B 78 */	mr r31, r3
/* 00002658 0000271C  C0 86 00 00 */	lfs f4, float_20_jon_0000baa8@l(r6)
/* 0000265C 00002720  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 00002660 00002724  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00002664 00002728  EC 21 10 28 */	fsubs f1, f1, f2
/* 00002668 0000272C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 0000266C 00002730  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 00002670 00002734  EC 24 00 7C */	fnmsubs f1, f4, f1, f0
/* 00002674 00002738  4B FF E3 FD */	bl BtlUnit_SetPartsPos
/* 00002678 0000273C  3C 80 00 00 */	lis r4, str_WAN_Z_2_jon_0000badc@ha
/* 0000267C 00002740  7F E3 FB 78 */	mr r3, r31
/* 00002680 00002744  38 84 00 00 */	addi r4, r4, str_WAN_Z_2_jon_0000badc@l
/* 00002684 00002748  4B FF E3 ED */	bl BtlUnit_SetAnim
/* 00002688 0000274C  BB 81 00 30 */	lmw r28, 0x30(r1)
/* 0000268C 00002750  38 60 00 02 */	li r3, 0x2
/* 00002690 00002754  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00002694 00002758  7C 08 03 A6 */	mtlr r0
/* 00002698 0000275C  38 21 00 40 */	addi r1, r1, 0x40
/* 0000269C 00002760  4E 80 00 20 */	blr
.endfn chain_init

# 0x000048C8..0x00004AB8 | size: 0x1F0
.rodata
.balign 8

# .rodata:0x0 | 0x48C8 | size: 0xE
.obj str_btl_un_wanwan_jon_0000b8f8, local
	.string "btl_un_wanwan"
.endobj str_btl_un_wanwan_jon_0000b8f8

# .rodata:0xE | 0x48D6 | size: 0x2
.obj gap_03_000048D6_rodata, global
.hidden gap_03_000048D6_rodata
	.2byte 0x0000
.endobj gap_03_000048D6_rodata

# .rodata:0x10 | 0x48D8 | size: 0x15
.obj str_SFX_ENM_WAN_DAMAGED1_jon_0000b908, local
	.string "SFX_ENM_WAN_DAMAGED1"
.endobj str_SFX_ENM_WAN_DAMAGED1_jon_0000b908

# .rodata:0x25 | 0x48ED | size: 0x3
.obj gap_03_000048ED_rodata, global
.hidden gap_03_000048ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000048ED_rodata

# .rodata:0x28 | 0x48F0 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000b920, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000b920

# .rodata:0x3D | 0x4905 | size: 0x3
.obj gap_03_00004905_rodata, global
.hidden gap_03_00004905_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004905_rodata

# .rodata:0x40 | 0x4908 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000b938, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000b938

# .rodata:0x54 | 0x491C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000b94c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000b94c

# .rodata:0x6D | 0x4935 | size: 0x3
.obj gap_03_00004935_rodata, global
.hidden gap_03_00004935_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004935_rodata

# .rodata:0x70 | 0x4938 | size: 0x8
.obj str_WAN_N_1_jon_0000b968, local
	.string "WAN_N_1"
.endobj str_WAN_N_1_jon_0000b968

# .rodata:0x78 | 0x4940 | size: 0x8
.obj str_WAN_Y_1_jon_0000b970, local
	.string "WAN_Y_1"
.endobj str_WAN_Y_1_jon_0000b970

# .rodata:0x80 | 0x4948 | size: 0x8
.obj str_WAN_K_1_jon_0000b978, local
	.string "WAN_K_1"
.endobj str_WAN_K_1_jon_0000b978

# .rodata:0x88 | 0x4950 | size: 0x8
.obj str_WAN_X_1_jon_0000b980, local
	.string "WAN_X_1"
.endobj str_WAN_X_1_jon_0000b980

# .rodata:0x90 | 0x4958 | size: 0x8
.obj str_WAN_Z_1_jon_0000b988, local
	.string "WAN_Z_1"
.endobj str_WAN_Z_1_jon_0000b988

# .rodata:0x98 | 0x4960 | size: 0x9
.obj str_WAN_S_1A_jon_0000b990, local
	.string "WAN_S_1A"
.endobj str_WAN_S_1A_jon_0000b990

# .rodata:0xA1 | 0x4969 | size: 0x3
.obj gap_03_00004969_rodata, global
.hidden gap_03_00004969_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004969_rodata

# .rodata:0xA4 | 0x496C | size: 0x8
.obj str_WAN_D_1_jon_0000b99c, local
	.string "WAN_D_1"
.endobj str_WAN_D_1_jon_0000b99c

# .rodata:0xAC | 0x4974 | size: 0x8
.obj str_WAN_A_1_jon_0000b9a4, local
	.string "WAN_A_1"
.endobj str_WAN_A_1_jon_0000b9a4

# .rodata:0xB4 | 0x497C | size: 0x8
.obj str_WAN_R_1_jon_0000b9ac, local
	.string "WAN_R_1"
.endobj str_WAN_R_1_jon_0000b9ac

# .rodata:0xBC | 0x4984 | size: 0x8
.obj str_WAN_W_1_jon_0000b9b4, local
	.string "WAN_W_1"
.endobj str_WAN_W_1_jon_0000b9b4

# .rodata:0xC4 | 0x498C | size: 0x9
.obj str_c_wanwan_jon_0000b9bc, local
	.string "c_wanwan"
.endobj str_c_wanwan_jon_0000b9bc

# .rodata:0xCD | 0x4995 | size: 0x3
.obj gap_03_00004995_rodata, global
.hidden gap_03_00004995_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004995_rodata

# .rodata:0xD0 | 0x4998 | size: 0x2
.obj str_0_jon_0000b9c8, local
	.string "0"
.endobj str_0_jon_0000b9c8

# .rodata:0xD2 | 0x499A | size: 0x2
.obj gap_03_0000499A_rodata, global
.hidden gap_03_0000499A_rodata
	.2byte 0x0000
.endobj gap_03_0000499A_rodata

# .rodata:0xD4 | 0x499C | size: 0x15
.obj str_SFX_ENM_WAN_LANDING1_jon_0000b9cc, local
	.string "SFX_ENM_WAN_LANDING1"
.endobj str_SFX_ENM_WAN_LANDING1_jon_0000b9cc

# .rodata:0xE9 | 0x49B1 | size: 0x3
.obj gap_03_000049B1_rodata, global
.hidden gap_03_000049B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049B1_rodata

# .rodata:0xEC | 0x49B4 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_jon_0000b9e4, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_jon_0000b9e4

# .rodata:0x101 | 0x49C9 | size: 0x3
.obj gap_03_000049C9_rodata, global
.hidden gap_03_000049C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049C9_rodata

# .rodata:0x104 | 0x49CC | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_jon_0000b9fc, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_jon_0000b9fc

# .rodata:0x119 | 0x49E1 | size: 0x3
.obj gap_03_000049E1_rodata, global
.hidden gap_03_000049E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049E1_rodata

# .rodata:0x11C | 0x49E4 | size: 0xC
.obj str_kemuri_test_jon_0000ba14, local
	.string "kemuri_test"
.endobj str_kemuri_test_jon_0000ba14

# .rodata:0x128 | 0x49F0 | size: 0x1
.obj zero_jon_0000ba20, local
	.byte 0x00
.endobj zero_jon_0000ba20

# .rodata:0x129 | 0x49F1 | size: 0x3
.obj gap_03_000049F1_rodata, global
.hidden gap_03_000049F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049F1_rodata

# .rodata:0x12C | 0x49F4 | size: 0xB
.obj str_star_point_jon_0000ba24, local
	.string "star_point"
.endobj str_star_point_jon_0000ba24

# .rodata:0x137 | 0x49FF | size: 0x1
.obj gap_03_000049FF_rodata, global
.hidden gap_03_000049FF_rodata
	.byte 0x00
.endobj gap_03_000049FF_rodata

# .rodata:0x138 | 0x4A00 | size: 0x12
.obj str_SFX_ENM_WAN_WAIT1_jon_0000ba30, local
	.string "SFX_ENM_WAN_WAIT1"
.endobj str_SFX_ENM_WAN_WAIT1_jon_0000ba30

# .rodata:0x14A | 0x4A12 | size: 0x2
.obj gap_03_00004A12_rodata, global
.hidden gap_03_00004A12_rodata
	.2byte 0x0000
.endobj gap_03_00004A12_rodata

# .rodata:0x14C | 0x4A14 | size: 0x12
.obj str_SFX_ENM_WAN_WAIT3_jon_0000ba44, local
	.string "SFX_ENM_WAN_WAIT3"
.endobj str_SFX_ENM_WAN_WAIT3_jon_0000ba44

# .rodata:0x15E | 0x4A26 | size: 0x2
.obj gap_03_00004A26_rodata, global
.hidden gap_03_00004A26_rodata
	.2byte 0x0000
.endobj gap_03_00004A26_rodata

# .rodata:0x160 | 0x4A28 | size: 0x12
.obj str_SFX_ENM_WAN_WAIT2_jon_0000ba58, local
	.string "SFX_ENM_WAN_WAIT2"
.endobj str_SFX_ENM_WAN_WAIT2_jon_0000ba58

# .rodata:0x172 | 0x4A3A | size: 0x2
.obj gap_03_00004A3A_rodata, global
.hidden gap_03_00004A3A_rodata
	.2byte 0x0000
.endobj gap_03_00004A3A_rodata

# .rodata:0x174 | 0x4A3C | size: 0x14
.obj str_SFX_ENM_WAN_ATTACK1_jon_0000ba6c, local
	.string "SFX_ENM_WAN_ATTACK1"
.endobj str_SFX_ENM_WAN_ATTACK1_jon_0000ba6c

# .rodata:0x188 | 0x4A50 | size: 0x14
.obj str_SFX_ENM_WAN_ATTACK2_jon_0000ba80, local
	.string "SFX_ENM_WAN_ATTACK2"
.endobj str_SFX_ENM_WAN_ATTACK2_jon_0000ba80

# .rodata:0x19C | 0x4A64 | size: 0x12
.obj str_SFX_ENM_WAN_WAIT4_jon_0000ba94, local
	.string "SFX_ENM_WAN_WAIT4"
.endobj str_SFX_ENM_WAN_WAIT4_jon_0000ba94
	.2byte 0x0000

# .rodata:0x1B0 | 0x4A78 | size: 0x4
.obj float_20_jon_0000baa8, local
	.float 20
.endobj float_20_jon_0000baa8

# .rodata:0x1B4 | 0x4A7C | size: 0x4
.obj float_0p125_jon_0000baac, local
	.float 0.125
.endobj float_0p125_jon_0000baac

# .rodata:0x1B8 | 0x4A80 | size: 0x4
.obj float_10_jon_0000bab0, local
	.float 10
.endobj float_10_jon_0000bab0

# .rodata:0x1BC | 0x4A84 | size: 0x4
.obj float_300_jon_0000bab4, local
	.float 300
.endobj float_300_jon_0000bab4

# .rodata:0x1C0 | 0x4A88 | size: 0x4
.obj float_110_jon_0000bab8, local
	.float 110
.endobj float_110_jon_0000bab8

# .rodata:0x1C4 | 0x4A8C | size: 0x4
.obj float_16_jon_0000babc, local
	.float 16
.endobj float_16_jon_0000babc

# .rodata:0x1C8 | 0x4A90 | size: 0x4
.obj float_1_jon_0000bac0, local
	.float 1
.endobj float_1_jon_0000bac0

# .rodata:0x1CC | 0x4A94 | size: 0x4
.obj zero_jon_0000bac4, local
	.float 0
.endobj zero_jon_0000bac4

# .rodata:0x1D0 | 0x4A98 | size: 0x8
.obj double_to_int_jon_0000bac8, local
	.double 4503601774854144
.endobj double_to_int_jon_0000bac8

# .rodata:0x1D8 | 0x4AA0 | size: 0x9
.obj str_WAN_S_1B_jon_0000bad0, local
	.string "WAN_S_1B"
.endobj str_WAN_S_1B_jon_0000bad0

# .rodata:0x1E1 | 0x4AA9 | size: 0x3
.obj gap_03_00004AA9_rodata, global
.hidden gap_03_00004AA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004AA9_rodata

# .rodata:0x1E4 | 0x4AAC | size: 0x8
.obj str_WAN_Z_2_jon_0000badc, local
	.string "WAN_Z_2"
.endobj str_WAN_Z_2_jon_0000badc

# .rodata:0x1EC | 0x4AB4 | size: 0x4
.obj gap_03_00004AB4_rodata, global
.hidden gap_03_00004AB4_rodata
	.4byte 0x00000000
.endobj gap_03_00004AB4_rodata

# 0x0003F728..0x00041200 | size: 0x1AD8
.data
.balign 8

# .data:0x0 | 0x3F728 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x3F730 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3F734 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x3F738 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3F73C | size: 0x4
.obj gap_04_0003F73C_data, global
.hidden gap_04_0003F73C_data
	.4byte 0x00000000
.endobj gap_04_0003F73C_data

# .data:0x18 | 0x3F740 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x3F748 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3F74C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x3F750 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x3F758 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3F75C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x3F760 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3F764 | size: 0x4
.obj gap_04_0003F764_data, global
.hidden gap_04_0003F764_data
	.4byte 0x00000000
.endobj gap_04_0003F764_data

# .data:0x40 | 0x3F768 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x3F770 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x3F774 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x3F778 | size: 0xC4
.obj unit_wanwan_14_data_3F778, global
	.4byte 0x0000007F
	.4byte str_btl_un_wanwan_jon_0000b8f8
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
	.4byte str_SFX_ENM_WAN_DAMAGED1_jon_0000b908
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000b920
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000b938
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000b94c
	.4byte 0x00000000
	.4byte regist
	.4byte 0x09000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_wanwan_14_data_3F778

# .data:0x114 | 0x3F83C | size: 0x5
.obj defence, local
	.4byte 0x05636305
	.byte 0x05
.endobj defence

# .data:0x119 | 0x3F841 | size: 0x3
.obj gap_04_0003F841_data, global
.hidden gap_04_0003F841_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0003F841_data

# .data:0x11C | 0x3F844 | size: 0x5
.obj defence_attr, local
	.4byte 0x00020200
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x3F849 | size: 0x3
.obj gap_04_0003F849_data, global
.hidden gap_04_0003F849_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0003F849_data

# .data:0x124 | 0x3F84C | size: 0x16
.obj regist, local
	.4byte 0x00464164
	.4byte 0x41640046
	.4byte 0x645A645A
	.4byte 0x645F412D
	.4byte 0x1E644164
	.2byte 0x645A
.endobj regist

# .data:0x13A | 0x3F862 | size: 0x2
.obj gap_04_0003F862_data, global
.hidden gap_04_0003F862_data
	.2byte 0x0000
.endobj gap_04_0003F862_data

# .data:0x13C | 0x3F864 | size: 0x98
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_WAN_N_1_jon_0000b968
	.4byte 0x00000002
	.4byte str_WAN_Y_1_jon_0000b970
	.4byte 0x00000009
	.4byte str_WAN_Y_1_jon_0000b970
	.4byte 0x00000005
	.4byte str_WAN_K_1_jon_0000b978
	.4byte 0x00000004
	.4byte str_WAN_X_1_jon_0000b980
	.4byte 0x00000003
	.4byte str_WAN_X_1_jon_0000b980
	.4byte 0x0000001B
	.4byte str_WAN_Z_1_jon_0000b988
	.4byte 0x0000001C
	.4byte str_WAN_S_1A_jon_0000b990
	.4byte 0x0000001D
	.4byte str_WAN_D_1_jon_0000b99c
	.4byte 0x0000001E
	.4byte str_WAN_D_1_jon_0000b99c
	.4byte 0x0000001F
	.4byte str_WAN_A_1_jon_0000b9a4
	.4byte 0x00000027
	.4byte str_WAN_D_1_jon_0000b99c
	.4byte 0x00000032
	.4byte str_WAN_A_1_jon_0000b9a4
	.4byte 0x0000002A
	.4byte str_WAN_R_1_jon_0000b9ac
	.4byte 0x00000028
	.4byte str_WAN_W_1_jon_0000b9b4
	.4byte 0x00000038
	.4byte str_WAN_X_1_jon_0000b980
	.4byte 0x00000039
	.4byte str_WAN_X_1_jon_0000b980
	.4byte 0x00000041
	.4byte str_WAN_S_1A_jon_0000b990
	.4byte 0x00000045
	.4byte str_WAN_S_1A_jon_0000b990
.endobj pose_table

# .data:0x1D4 | 0x3F8FC | size: 0x78
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

# .data:0x24C | 0x3F974 | size: 0x2AC
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_wanwan_jon_0000b8f8
	.4byte str_c_wanwan_jon_0000b9bc
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
	.4byte str_btl_un_wanwan_jon_0000b8f8
	.4byte str_c_wanwan_jon_0000b9bc
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
	.4byte str_btl_un_wanwan_jon_0000b8f8
	.4byte str_c_wanwan_jon_0000b9bc
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
	.4byte str_btl_un_wanwan_jon_0000b8f8
	.4byte str_c_wanwan_jon_0000b9bc
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
	.4byte str_btl_un_wanwan_jon_0000b8f8
	.4byte str_c_wanwan_jon_0000b9bc
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
	.4byte str_btl_un_wanwan_jon_0000b8f8
	.4byte str_c_wanwan_jon_0000b9bc
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
	.4byte str_btl_un_wanwan_jon_0000b8f8
	.4byte str_c_wanwan_jon_0000b9bc
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
	.4byte str_btl_un_wanwan_jon_0000b8f8
	.4byte str_c_wanwan_jon_0000b9bc
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
	.4byte str_btl_un_wanwan_jon_0000b8f8
	.4byte str_c_wanwan_jon_0000b9bc
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

# .data:0x4F8 | 0x3FC20 | size: 0xC0
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

# .data:0x5B8 | 0x3FCE0 | size: 0xA4
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
	.4byte str_0_jon_0000b9c8
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000b9cc
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

# .data:0x65C | 0x3FD84 | size: 0x5C
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

# .data:0x6B8 | 0x3FDE0 | size: 0x84
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

# .data:0x73C | 0x3FE64 | size: 0x110
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

# .data:0x84C | 0x3FF74 | size: 0x320
.obj dead_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000030
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_1_jon_0000b9e4
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
	.4byte str_SFX_BTL_ENEMY_DIE1_2_jon_0000b9fc
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
	.4byte str_kemuri_test_jon_0000ba14
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
	.4byte zero_jon_0000ba20
	.4byte str_star_point_jon_0000ba24
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

# .data:0xB6C | 0x40294 | size: 0x710
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
	.4byte str_WAN_A_1_jon_0000b9a4
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
	.4byte str_SFX_ENM_WAN_WAIT1_jon_0000ba30
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT3_jon_0000ba44
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT2_jon_0000ba58
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
	.4byte str_WAN_S_1A_jon_0000b990
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_ATTACK1_jon_0000ba6c
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
	.4byte str_WAN_A_1_jon_0000b9a4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_ATTACK2_jon_0000ba80
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
	.4byte str_SFX_ENM_WAN_WAIT1_jon_0000ba30
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_jon_0000b990
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
	.4byte str_SFX_ENM_WAN_WAIT1_jon_0000ba30
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_jon_0000b990
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

# .data:0x127C | 0x409A4 | size: 0x770
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
	.4byte str_WAN_N_1_jon_0000b968
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
	.4byte str_WAN_Y_1_jon_0000b970
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
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000b9cc
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
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000b9cc
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
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000b9cc
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
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000b9cc
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
	.4byte str_WAN_A_1_jon_0000b9a4
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
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000b9cc
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
	.4byte str_WAN_S_1A_jon_0000b990
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
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000b9cc
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
	.4byte str_WAN_A_1_jon_0000b9a4
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
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000b9cc
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
	.4byte str_WAN_S_1A_jon_0000b990
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
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000b9cc
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

# .data:0x19EC | 0x41114 | size: 0x58
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

# .data:0x1A44 | 0x4116C | size: 0x64
.obj wait_sound_event1, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT1_jon_0000ba30
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT3_jon_0000ba44
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT2_jon_0000ba58
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_sound_event1

# .data:0x1AA8 | 0x411D0 | size: 0x30
.obj wait_sound_event2, local
	.4byte 0x00010009
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT4_jon_0000ba94
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
.endobj wait_sound_event2
