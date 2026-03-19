.include "macros.inc"
.file "unit_kamec.o"

# 0x00006058..0x0000684C | size: 0x7F4
.text
.balign 4

# .text:0x0 | 0x6058 | size: 0x70
.fn eff_magic_get_posX, local
/* 00006058 0000611C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000605C 00006120  7C 08 02 A6 */	mflr r0
/* 00006060 00006124  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006064 00006128  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00006068 0000612C  7C 7E 1B 78 */	mr r30, r3
/* 0000606C 00006130  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00006070 00006134  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00006074 00006138  4B FF A0 D5 */	bl evtGetValue
/* 00006078 0000613C  7C 64 1B 78 */	mr r4, r3
/* 0000607C 00006140  7F C3 F3 78 */	mr r3, r30
/* 00006080 00006144  4B FF A0 C9 */	bl BattleTransID
/* 00006084 00006148  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006088 0000614C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000608C 00006150  7C 64 1B 78 */	mr r4, r3
/* 00006090 00006154  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006094 00006158  4B FF A0 B5 */	bl BattleGetUnitPtr
/* 00006098 0000615C  80 A3 02 2C */	lwz r5, 0x22c(r3)
/* 0000609C 00006160  7F C3 F3 78 */	mr r3, r30
/* 000060A0 00006164  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000060A4 00006168  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 000060A8 0000616C  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 000060AC 00006170  4B FF A0 9D */	bl evtSetFloat
/* 000060B0 00006174  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000060B4 00006178  38 60 00 02 */	li r3, 0x2
/* 000060B8 0000617C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000060BC 00006180  7C 08 03 A6 */	mtlr r0
/* 000060C0 00006184  38 21 00 10 */	addi r1, r1, 0x10
/* 000060C4 00006188  4E 80 00 20 */	blr
.endfn eff_magic_get_posX

# .text:0x70 | 0x60C8 | size: 0x17C
.fn eff_magic, local
/* 000060C8 0000618C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 000060CC 00006190  7C 08 02 A6 */	mflr r0
/* 000060D0 00006194  90 01 00 64 */	stw r0, 0x64(r1)
/* 000060D4 00006198  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 000060D8 0000619C  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 000060DC 000061A0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 000060E0 000061A4  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 000060E4 000061A8  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 000060E8 000061AC  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 000060EC 000061B0  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 000060F0 000061B4  7C 7D 1B 78 */	mr r29, r3
/* 000060F4 000061B8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000060F8 000061BC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000060FC 000061C0  4B FF A0 4D */	bl evtGetValue
/* 00006100 000061C4  7C 64 1B 78 */	mr r4, r3
/* 00006104 000061C8  7F A3 EB 78 */	mr r3, r29
/* 00006108 000061CC  4B FF A0 41 */	bl BattleTransID
/* 0000610C 000061D0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006110 000061D4  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00006114 000061D8  7C 64 1B 78 */	mr r4, r3
/* 00006118 000061DC  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000611C 000061E0  4B FF A0 2D */	bl BattleGetUnitPtr
/* 00006120 000061E4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00006124 000061E8  7C 7E 1B 78 */	mr r30, r3
/* 00006128 000061EC  7F A3 EB 78 */	mr r3, r29
/* 0000612C 000061F0  4B FF A0 1D */	bl evtGetFloat
/* 00006130 000061F4  FF E0 08 90 */	fmr f31, f1
/* 00006134 000061F8  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00006138 000061FC  7F A3 EB 78 */	mr r3, r29
/* 0000613C 00006200  4B FF A0 0D */	bl evtGetFloat
/* 00006140 00006204  FF C0 08 90 */	fmr f30, f1
/* 00006144 00006208  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00006148 0000620C  7F A3 EB 78 */	mr r3, r29
/* 0000614C 00006210  4B FF 9F FD */	bl evtGetFloat
/* 00006150 00006214  FF A0 08 90 */	fmr f29, f1
/* 00006154 00006218  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00006158 0000621C  7F A3 EB 78 */	mr r3, r29
/* 0000615C 00006220  4B FF 9F ED */	bl evtGetValue
/* 00006160 00006224  7C 60 1B 78 */	mr r0, r3
/* 00006164 00006228  7F C3 F3 78 */	mr r3, r30
/* 00006168 0000622C  7C 1F 03 78 */	mr r31, r0
/* 0000616C 00006230  38 81 00 10 */	addi r4, r1, 0x10
/* 00006170 00006234  38 A1 00 0C */	addi r5, r1, 0xc
/* 00006174 00006238  38 C1 00 08 */	addi r6, r1, 0x8
/* 00006178 0000623C  4B FF 9F D1 */	bl BtlUnit_GetPos
/* 0000617C 00006240  88 7E 01 89 */	lbz r3, 0x189(r30)
/* 00006180 00006244  3C 00 43 30 */	lis r0, 0x4330
/* 00006184 00006248  3C C0 00 00 */	lis r6, float_25_tik_0000d02c@ha
/* 00006188 0000624C  3C A0 00 00 */	lis r5, double_to_int_tik_0000d038@ha
/* 0000618C 00006250  7C 63 07 74 */	extsb r3, r3
/* 00006190 00006254  3C 80 00 00 */	lis r4, float_20_tik_0000d030@ha
/* 00006194 00006258  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00006198 0000625C  C1 04 00 00 */	lfs f8, float_20_tik_0000d030@l(r4)
/* 0000619C 00006260  90 61 00 1C */	stw r3, 0x1c(r1)
/* 000061A0 00006264  3C 60 00 00 */	lis r3, float_5_tik_0000d034@ha
/* 000061A4 00006268  C0 66 00 00 */	lfs f3, float_25_tik_0000d02c@l(r6)
/* 000061A8 0000626C  FC 80 F8 90 */	fmr f4, f31
/* 000061AC 00006270  90 01 00 18 */	stw r0, 0x18(r1)
/* 000061B0 00006274  FC A0 F0 90 */	fmr f5, f30
/* 000061B4 00006278  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 000061B8 0000627C  FC C0 E8 90 */	fmr f6, f29
/* 000061BC 00006280  C8 45 00 00 */	lfd f2, double_to_int_tik_0000d038@l(r5)
/* 000061C0 00006284  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 000061C4 00006288  EC 63 00 32 */	fmuls f3, f3, f0
/* 000061C8 0000628C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 000061CC 00006290  7F E4 FB 78 */	mr r4, r31
/* 000061D0 00006294  EC 21 10 28 */	fsubs f1, f1, f2
/* 000061D4 00006298  C0 41 00 08 */	lfs f2, 0x8(r1)
/* 000061D8 0000629C  C0 E1 00 0C */	lfs f7, 0xc(r1)
/* 000061DC 000062A0  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 000061E0 000062A4  C0 03 00 00 */	lfs f0, float_5_tik_0000d034@l(r3)
/* 000061E4 000062A8  38 60 00 00 */	li r3, 0x0
/* 000061E8 000062AC  EC 62 00 2A */	fadds f3, f2, f0
/* 000061EC 000062B0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 000061F0 000062B4  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 000061F4 000062B8  EC 48 38 3A */	fmadds f2, f8, f0, f7
/* 000061F8 000062BC  D0 61 00 08 */	stfs f3, 0x8(r1)
/* 000061FC 000062C0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 00006200 000062C4  4B FF 9F 49 */	bl effMagic1N64Entry
/* 00006204 000062C8  90 7E 02 2C */	stw r3, 0x22c(r30)
/* 00006208 000062CC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0000620C 000062D0  38 60 00 02 */	li r3, 0x2
/* 00006210 000062D4  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 00006214 000062D8  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 00006218 000062DC  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 0000621C 000062E0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00006220 000062E4  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00006224 000062E8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00006228 000062EC  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 0000622C 000062F0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00006230 000062F4  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00006234 000062F8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00006238 000062FC  7C 08 03 A6 */	mtlr r0
/* 0000623C 00006300  38 21 00 60 */	addi r1, r1, 0x60
/* 00006240 00006304  4E 80 00 20 */	blr
.endfn eff_magic

# .text:0x1EC | 0x6244 | size: 0x150
.fn eff_staff2, local
/* 00006244 00006308  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00006248 0000630C  7C 08 02 A6 */	mflr r0
/* 0000624C 00006310  90 01 00 34 */	stw r0, 0x34(r1)
/* 00006250 00006314  BF C1 00 28 */	stmw r30, 0x28(r1)
/* 00006254 00006318  7C 9E 23 78 */	mr r30, r4
/* 00006258 0000631C  7C 7F 1B 78 */	mr r31, r3
/* 0000625C 00006320  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00006260 00006324  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00006264 00006328  4B FF 9E E5 */	bl evtGetValue
/* 00006268 0000632C  7C 64 1B 78 */	mr r4, r3
/* 0000626C 00006330  7F E3 FB 78 */	mr r3, r31
/* 00006270 00006334  4B FF 9E D9 */	bl BattleTransID
/* 00006274 00006338  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006278 0000633C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000627C 00006340  7C 64 1B 78 */	mr r4, r3
/* 00006280 00006344  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006284 00006348  4B FF 9E C5 */	bl BattleGetUnitPtr
/* 00006288 0000634C  2C 1E 00 00 */	cmpwi r30, 0x0
/* 0000628C 00006350  7C 7F 1B 78 */	mr r31, r3
/* 00006290 00006354  41 82 00 34 */	beq .L_000062C4
/* 00006294 00006358  3C 60 00 00 */	lis r3, zero_tik_0000d040@ha
/* 00006298 0000635C  3C 80 00 00 */	lis r4, float_neg1000_tik_0000d044@ha
/* 0000629C 00006360  38 A3 00 00 */	addi r5, r3, zero_tik_0000d040@l
/* 000062A0 00006364  C0 44 00 00 */	lfs f2, float_neg1000_tik_0000d044@l(r4)
/* 000062A4 00006368  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000062A8 0000636C  3C 60 00 00 */	lis r3, float_1_tik_0000d048@ha
/* 000062AC 00006370  C0 83 00 00 */	lfs f4, float_1_tik_0000d048@l(r3)
/* 000062B0 00006374  38 60 00 00 */	li r3, 0x0
/* 000062B4 00006378  FC 60 08 90 */	fmr f3, f1
/* 000062B8 0000637C  38 80 00 3C */	li r4, 0x3c
/* 000062BC 00006380  4B FF 9E 8D */	bl effPokopiPchargeN64Entry
/* 000062C0 00006384  90 7F 02 28 */	stw r3, 0x228(r31)
.L_000062C4:
/* 000062C4 00006388  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 000062C8 0000638C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 000062CC 00006390  54 00 07 FF */	clrlwi. r0, r0, 31
/* 000062D0 00006394  40 82 00 0C */	bne .L_000062DC
/* 000062D4 00006398  38 60 00 02 */	li r3, 0x2
/* 000062D8 0000639C  48 00 00 A8 */	b .L_00006380
.L_000062DC:
/* 000062DC 000063A0  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 000062E0 000063A4  7F E3 FB 78 */	mr r3, r31
/* 000062E4 000063A8  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 000062E8 000063AC  38 81 00 10 */	addi r4, r1, 0x10
/* 000062EC 000063B0  38 A1 00 0C */	addi r5, r1, 0xc
/* 000062F0 000063B4  38 C1 00 08 */	addi r6, r1, 0x8
/* 000062F4 000063B8  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 000062F8 000063BC  4B FF 9E 51 */	bl BtlUnit_GetPos
/* 000062FC 000063C0  88 7F 01 89 */	lbz r3, 0x189(r31)
/* 00006300 000063C4  3C 00 43 30 */	lis r0, 0x4330
/* 00006304 000063C8  3C C0 00 00 */	lis r6, float_22p5_tik_0000d04c@ha
/* 00006308 000063CC  3C A0 00 00 */	lis r5, double_to_int_tik_0000d038@ha
/* 0000630C 000063D0  7C 64 07 74 */	extsb r4, r3
/* 00006310 000063D4  3C 60 00 00 */	lis r3, float_40_tik_0000d050@ha
/* 00006314 000063D8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00006318 000063DC  38 E6 00 00 */	addi r7, r6, float_22p5_tik_0000d04c@l
/* 0000631C 000063E0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 00006320 000063E4  38 C5 00 00 */	addi r6, r5, double_to_int_tik_0000d038@l
/* 00006324 000063E8  38 A3 00 00 */	addi r5, r3, float_40_tik_0000d050@l
/* 00006328 000063EC  3C 60 00 00 */	lis r3, float_5_tik_0000d034@ha
/* 0000632C 000063F0  90 01 00 18 */	stw r0, 0x18(r1)
/* 00006330 000063F4  38 83 00 00 */	addi r4, r3, float_5_tik_0000d034@l
/* 00006334 000063F8  C0 67 00 00 */	lfs f3, 0x0(r7)
/* 00006338 000063FC  38 60 00 00 */	li r3, 0x0
/* 0000633C 00006400  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00006340 00006404  C8 46 00 00 */	lfd f2, 0x0(r6)
/* 00006344 00006408  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00006348 0000640C  EC 83 00 32 */	fmuls f4, f3, f0
/* 0000634C 00006410  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00006350 00006414  EC 41 10 28 */	fsubs f2, f1, f2
/* 00006354 00006418  C0 65 00 00 */	lfs f3, 0x0(r5)
/* 00006358 0000641C  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 0000635C 00006420  EC 04 00 BA */	fmadds f0, f4, f2, f0
/* 00006360 00006424  D0 1E 00 04 */	stfs f0, 0x4(r30)
/* 00006364 00006428  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 00006368 0000642C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 0000636C 00006430  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 00006370 00006434  D0 1E 00 08 */	stfs f0, 0x8(r30)
/* 00006374 00006438  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00006378 0000643C  EC 01 00 2A */	fadds f0, f1, f0
/* 0000637C 00006440  D0 1E 00 0C */	stfs f0, 0xc(r30)
.L_00006380:
/* 00006380 00006444  BB C1 00 28 */	lmw r30, 0x28(r1)
/* 00006384 00006448  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00006388 0000644C  7C 08 03 A6 */	mtlr r0
/* 0000638C 00006450  38 21 00 30 */	addi r1, r1, 0x30
/* 00006390 00006454  4E 80 00 20 */	blr
.endfn eff_staff2

# .text:0x33C | 0x6394 | size: 0x150
.fn eff_staff1, local
/* 00006394 00006458  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00006398 0000645C  7C 08 02 A6 */	mflr r0
/* 0000639C 00006460  90 01 00 34 */	stw r0, 0x34(r1)
/* 000063A0 00006464  BF C1 00 28 */	stmw r30, 0x28(r1)
/* 000063A4 00006468  7C 9E 23 78 */	mr r30, r4
/* 000063A8 0000646C  7C 7F 1B 78 */	mr r31, r3
/* 000063AC 00006470  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000063B0 00006474  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000063B4 00006478  4B FF 9D 95 */	bl evtGetValue
/* 000063B8 0000647C  7C 64 1B 78 */	mr r4, r3
/* 000063BC 00006480  7F E3 FB 78 */	mr r3, r31
/* 000063C0 00006484  4B FF 9D 89 */	bl BattleTransID
/* 000063C4 00006488  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000063C8 0000648C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000063CC 00006490  7C 64 1B 78 */	mr r4, r3
/* 000063D0 00006494  80 65 00 00 */	lwz r3, 0x0(r5)
/* 000063D4 00006498  4B FF 9D 75 */	bl BattleGetUnitPtr
/* 000063D8 0000649C  2C 1E 00 00 */	cmpwi r30, 0x0
/* 000063DC 000064A0  7C 7F 1B 78 */	mr r31, r3
/* 000063E0 000064A4  41 82 00 34 */	beq .L_00006414
/* 000063E4 000064A8  3C 60 00 00 */	lis r3, zero_tik_0000d040@ha
/* 000063E8 000064AC  3C 80 00 00 */	lis r4, float_neg1000_tik_0000d044@ha
/* 000063EC 000064B0  38 A3 00 00 */	addi r5, r3, zero_tik_0000d040@l
/* 000063F0 000064B4  C0 44 00 00 */	lfs f2, float_neg1000_tik_0000d044@l(r4)
/* 000063F4 000064B8  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000063F8 000064BC  3C 60 00 00 */	lis r3, float_1_tik_0000d048@ha
/* 000063FC 000064C0  C0 83 00 00 */	lfs f4, float_1_tik_0000d048@l(r3)
/* 00006400 000064C4  38 60 00 00 */	li r3, 0x0
/* 00006404 000064C8  FC 60 08 90 */	fmr f3, f1
/* 00006408 000064CC  38 80 00 3C */	li r4, 0x3c
/* 0000640C 000064D0  4B FF 9D 3D */	bl effThunderflareN64Entry
/* 00006410 000064D4  90 7F 02 28 */	stw r3, 0x228(r31)
.L_00006414:
/* 00006414 000064D8  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 00006418 000064DC  80 03 00 00 */	lwz r0, 0x0(r3)
/* 0000641C 000064E0  54 00 07 FF */	clrlwi. r0, r0, 31
/* 00006420 000064E4  40 82 00 0C */	bne .L_0000642C
/* 00006424 000064E8  38 60 00 02 */	li r3, 0x2
/* 00006428 000064EC  48 00 00 A8 */	b .L_000064D0
.L_0000642C:
/* 0000642C 000064F0  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 00006430 000064F4  7F E3 FB 78 */	mr r3, r31
/* 00006434 000064F8  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00006438 000064FC  38 81 00 10 */	addi r4, r1, 0x10
/* 0000643C 00006500  38 A1 00 0C */	addi r5, r1, 0xc
/* 00006440 00006504  38 C1 00 08 */	addi r6, r1, 0x8
/* 00006444 00006508  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 00006448 0000650C  4B FF 9D 01 */	bl BtlUnit_GetPos
/* 0000644C 00006510  88 7F 01 89 */	lbz r3, 0x189(r31)
/* 00006450 00006514  3C 00 43 30 */	lis r0, 0x4330
/* 00006454 00006518  3C C0 00 00 */	lis r6, float_22p5_tik_0000d04c@ha
/* 00006458 0000651C  3C A0 00 00 */	lis r5, double_to_int_tik_0000d038@ha
/* 0000645C 00006520  7C 64 07 74 */	extsb r4, r3
/* 00006460 00006524  3C 60 00 00 */	lis r3, float_40_tik_0000d050@ha
/* 00006464 00006528  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00006468 0000652C  38 E6 00 00 */	addi r7, r6, float_22p5_tik_0000d04c@l
/* 0000646C 00006530  90 81 00 1C */	stw r4, 0x1c(r1)
/* 00006470 00006534  38 C5 00 00 */	addi r6, r5, double_to_int_tik_0000d038@l
/* 00006474 00006538  38 A3 00 00 */	addi r5, r3, float_40_tik_0000d050@l
/* 00006478 0000653C  3C 60 00 00 */	lis r3, float_5_tik_0000d034@ha
/* 0000647C 00006540  90 01 00 18 */	stw r0, 0x18(r1)
/* 00006480 00006544  38 83 00 00 */	addi r4, r3, float_5_tik_0000d034@l
/* 00006484 00006548  C0 67 00 00 */	lfs f3, 0x0(r7)
/* 00006488 0000654C  38 60 00 00 */	li r3, 0x0
/* 0000648C 00006550  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00006490 00006554  C8 46 00 00 */	lfd f2, 0x0(r6)
/* 00006494 00006558  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00006498 0000655C  EC 83 00 32 */	fmuls f4, f3, f0
/* 0000649C 00006560  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 000064A0 00006564  EC 41 10 28 */	fsubs f2, f1, f2
/* 000064A4 00006568  C0 65 00 00 */	lfs f3, 0x0(r5)
/* 000064A8 0000656C  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 000064AC 00006570  EC 04 00 BA */	fmadds f0, f4, f2, f0
/* 000064B0 00006574  D0 1E 00 08 */	stfs f0, 0x8(r30)
/* 000064B4 00006578  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 000064B8 0000657C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 000064BC 00006580  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 000064C0 00006584  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 000064C4 00006588  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 000064C8 0000658C  EC 01 00 2A */	fadds f0, f1, f0
/* 000064CC 00006590  D0 1E 00 10 */	stfs f0, 0x10(r30)
.L_000064D0:
/* 000064D0 00006594  BB C1 00 28 */	lmw r30, 0x28(r1)
/* 000064D4 00006598  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000064D8 0000659C  7C 08 03 A6 */	mtlr r0
/* 000064DC 000065A0  38 21 00 30 */	addi r1, r1, 0x30
/* 000064E0 000065A4  4E 80 00 20 */	blr
.endfn eff_staff1

# .text:0x48C | 0x64E4 | size: 0xF0
.fn kamec_copy_status, local
/* 000064E4 000065A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000064E8 000065AC  7C 08 02 A6 */	mflr r0
/* 000064EC 000065B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 000064F0 000065B4  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 000064F4 000065B8  7C 7D 1B 78 */	mr r29, r3
/* 000064F8 000065BC  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 000064FC 000065C0  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00006500 000065C4  4B FF 9C 49 */	bl evtGetValue
/* 00006504 000065C8  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00006508 000065CC  7C 7E 1B 78 */	mr r30, r3
/* 0000650C 000065D0  7F A3 EB 78 */	mr r3, r29
/* 00006510 000065D4  4B FF 9C 39 */	bl evtGetValue
/* 00006514 000065D8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006518 000065DC  7C 7F 1B 78 */	mr r31, r3
/* 0000651C 000065E0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00006520 000065E4  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00006524 000065E8  7F C4 F3 78 */	mr r4, r30
/* 00006528 000065EC  7C 1D 03 78 */	mr r29, r0
/* 0000652C 000065F0  7C 03 03 78 */	mr r3, r0
/* 00006530 000065F4  4B FF 9C 19 */	bl BattleGetUnitPtr
/* 00006534 000065F8  7C 7E 1B 78 */	mr r30, r3
/* 00006538 000065FC  7F A3 EB 78 */	mr r3, r29
/* 0000653C 00006600  7F E4 FB 78 */	mr r4, r31
/* 00006540 00006604  4B FF 9C 09 */	bl BattleGetUnitPtr
/* 00006544 00006608  A8 1E 01 0C */	lha r0, 0x10c(r30)
/* 00006548 0000660C  7C 7F 1B 78 */	mr r31, r3
/* 0000654C 00006610  38 7F 01 18 */	addi r3, r31, 0x118
/* 00006550 00006614  38 9E 01 18 */	addi r4, r30, 0x118
/* 00006554 00006618  B0 1F 01 0C */	sth r0, 0x10c(r31)
/* 00006558 0000661C  38 A0 00 1E */	li r5, 0x1e
/* 0000655C 00006620  4B FF 9B ED */	bl memcpy
/* 00006560 00006624  A8 BF 01 0C */	lha r5, 0x10c(r31)
/* 00006564 00006628  3C 00 43 30 */	lis r0, 0x4330
/* 00006568 0000662C  3C 60 00 00 */	lis r3, double_to_int_tik_0000d038@ha
/* 0000656C 00006630  90 01 00 08 */	stw r0, 0x8(r1)
/* 00006570 00006634  38 83 00 00 */	addi r4, r3, double_to_int_tik_0000d038@l
/* 00006574 00006638  38 60 00 02 */	li r3, 0x2
/* 00006578 0000663C  90 BF 02 08 */	stw r5, 0x208(r31)
/* 0000657C 00006640  C8 44 00 00 */	lfd f2, 0x0(r4)
/* 00006580 00006644  A8 9F 01 0C */	lha r4, 0x10c(r31)
/* 00006584 00006648  90 01 00 10 */	stw r0, 0x10(r1)
/* 00006588 0000664C  90 9F 02 0C */	stw r4, 0x20c(r31)
/* 0000658C 00006650  A8 9F 01 0C */	lha r4, 0x10c(r31)
/* 00006590 00006654  A8 1F 01 08 */	lha r0, 0x108(r31)
/* 00006594 00006658  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00006598 0000665C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 0000659C 00006660  90 81 00 0C */	stw r4, 0xc(r1)
/* 000065A0 00006664  90 01 00 14 */	stw r0, 0x14(r1)
/* 000065A4 00006668  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 000065A8 0000666C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 000065AC 00006670  EC 21 10 28 */	fsubs f1, f1, f2
/* 000065B0 00006674  EC 00 10 28 */	fsubs f0, f0, f2
/* 000065B4 00006678  EC 01 00 24 */	fdivs f0, f1, f0
/* 000065B8 0000667C  D0 1F 02 14 */	stfs f0, 0x214(r31)
/* 000065BC 00006680  D0 1F 02 10 */	stfs f0, 0x210(r31)
/* 000065C0 00006684  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 000065C4 00006688  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000065C8 0000668C  7C 08 03 A6 */	mtlr r0
/* 000065CC 00006690  38 21 00 30 */	addi r1, r1, 0x30
/* 000065D0 00006694  4E 80 00 20 */	blr
.endfn kamec_copy_status

# .text:0x57C | 0x65D4 | size: 0xFC
.fn kamec_shuffle, local
/* 000065D4 00006698  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000065D8 0000669C  7C 08 02 A6 */	mflr r0
/* 000065DC 000066A0  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 000065E0 000066A4  38 80 00 00 */	li r4, 0x0
/* 000065E4 000066A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 000065E8 000066AC  38 00 00 40 */	li r0, 0x40
/* 000065EC 000066B0  38 A1 00 08 */	addi r5, r1, 0x8
/* 000065F0 000066B4  BF 81 00 20 */	stmw r28, 0x20(r1)
/* 000065F4 000066B8  3B 80 00 00 */	li r28, 0x0
/* 000065F8 000066BC  80 E3 00 00 */	lwz r7, _battleWorkPointer@l(r3)
/* 000065FC 000066C0  38 60 00 00 */	li r3, 0x0
/* 00006600 000066C4  7C 09 03 A6 */	mtctr r0
.L_00006604:
/* 00006604 000066C8  38 04 00 20 */	addi r0, r4, 0x20
/* 00006608 000066CC  7C 07 00 2E */	lwzx r0, r7, r0
/* 0000660C 000066D0  7C 05 19 2E */	stwx r0, r5, r3
/* 00006610 000066D4  7C C5 18 2E */	lwzx r6, r5, r3
/* 00006614 000066D8  28 06 00 00 */	cmplwi r6, 0x0
/* 00006618 000066DC  41 82 00 20 */	beq .L_00006638
/* 0000661C 000066E0  80 06 00 08 */	lwz r0, 0x8(r6)
/* 00006620 000066E4  2C 00 00 0C */	cmpwi r0, 0xc
/* 00006624 000066E8  41 82 00 0C */	beq .L_00006630
/* 00006628 000066EC  2C 00 00 0D */	cmpwi r0, 0xd
/* 0000662C 000066F0  40 82 00 0C */	bne .L_00006638
.L_00006630:
/* 00006630 000066F4  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00006634 000066F8  38 63 00 04 */	addi r3, r3, 0x4
.L_00006638:
/* 00006638 000066FC  38 84 00 04 */	addi r4, r4, 0x4
/* 0000663C 00006700  42 00 FF C8 */	bdnz .L_00006604
/* 00006640 00006704  3B A0 00 00 */	li r29, 0x0
/* 00006644 00006708  3B E1 00 08 */	addi r31, r1, 0x8
.L_00006648:
/* 00006648 0000670C  7F 83 E3 78 */	mr r3, r28
/* 0000664C 00006710  4B FF 9A FD */	bl irand
/* 00006650 00006714  7C 7E 1B 78 */	mr r30, r3
/* 00006654 00006718  7F 83 E3 78 */	mr r3, r28
/* 00006658 0000671C  4B FF 9A F1 */	bl irand
/* 0000665C 00006720  57 C4 10 3A */	slwi r4, r30, 2
/* 00006660 00006724  54 60 10 3A */	slwi r0, r3, 2
/* 00006664 00006728  7C 7F 20 2E */	lwzx r3, r31, r4
/* 00006668 0000672C  3B BD 00 01 */	addi r29, r29, 0x1
/* 0000666C 00006730  7C 9F 00 2E */	lwzx r4, r31, r0
/* 00006670 00006734  2C 1D 00 0A */	cmpwi r29, 0xa
/* 00006674 00006738  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 00006678 0000673C  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 0000667C 00006740  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 00006680 00006744  D0 24 00 3C */	stfs f1, 0x3c(r4)
/* 00006684 00006748  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 00006688 0000674C  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 0000668C 00006750  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 00006690 00006754  D0 24 00 30 */	stfs f1, 0x30(r4)
/* 00006694 00006758  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 00006698 0000675C  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 0000669C 00006760  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 000066A0 00006764  D0 24 00 44 */	stfs f1, 0x44(r4)
/* 000066A4 00006768  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 000066A8 0000676C  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 000066AC 00006770  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 000066B0 00006774  D0 24 00 38 */	stfs f1, 0x38(r4)
/* 000066B4 00006778  41 80 FF 94 */	blt .L_00006648
/* 000066B8 0000677C  BB 81 00 20 */	lmw r28, 0x20(r1)
/* 000066BC 00006780  38 60 00 02 */	li r3, 0x2
/* 000066C0 00006784  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000066C4 00006788  7C 08 03 A6 */	mtlr r0
/* 000066C8 0000678C  38 21 00 30 */	addi r1, r1, 0x30
/* 000066CC 00006790  4E 80 00 20 */	blr
.endfn kamec_shuffle

# .text:0x678 | 0x66D0 | size: 0xE8
.fn kamec_get_bunsin, local
/* 000066D0 00006794  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000066D4 00006798  7C 08 02 A6 */	mflr r0
/* 000066D8 0000679C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000066DC 000067A0  38 C0 00 00 */	li r6, 0x0
/* 000066E0 000067A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 000066E4 000067A8  38 00 00 40 */	li r0, 0x40
/* 000066E8 000067AC  38 A1 00 08 */	addi r5, r1, 0x8
/* 000066EC 000067B0  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 000066F0 000067B4  7C 7A 1B 78 */	mr r26, r3
/* 000066F4 000067B8  3B 60 00 00 */	li r27, 0x0
/* 000066F8 000067BC  83 83 00 18 */	lwz r28, 0x18(r3)
/* 000066FC 000067C0  38 60 00 00 */	li r3, 0x0
/* 00006700 000067C4  80 E4 00 00 */	lwz r7, _battleWorkPointer@l(r4)
/* 00006704 000067C8  38 80 00 00 */	li r4, 0x0
/* 00006708 000067CC  7C 09 03 A6 */	mtctr r0
.L_0000670C:
/* 0000670C 000067D0  38 04 00 20 */	addi r0, r4, 0x20
/* 00006710 000067D4  7D 07 00 2E */	lwzx r8, r7, r0
/* 00006714 000067D8  28 08 00 00 */	cmplwi r8, 0x0
/* 00006718 000067DC  41 82 00 1C */	beq .L_00006734
/* 0000671C 000067E0  80 08 00 08 */	lwz r0, 0x8(r8)
/* 00006720 000067E4  2C 00 00 0D */	cmpwi r0, 0xd
/* 00006724 000067E8  40 82 00 10 */	bne .L_00006734
/* 00006728 000067EC  7C C5 19 2E */	stwx r6, r5, r3
/* 0000672C 000067F0  3B 7B 00 01 */	addi r27, r27, 0x1
/* 00006730 000067F4  38 63 00 04 */	addi r3, r3, 0x4
.L_00006734:
/* 00006734 000067F8  38 C6 00 01 */	addi r6, r6, 0x1
/* 00006738 000067FC  38 84 00 04 */	addi r4, r4, 0x4
/* 0000673C 00006800  42 00 FF D0 */	bdnz .L_0000670C
/* 00006740 00006804  3B C1 00 08 */	addi r30, r1, 0x8
/* 00006744 00006808  3B A0 00 00 */	li r29, 0x0
/* 00006748 0000680C  3B E0 00 00 */	li r31, 0x0
.L_0000674C:
/* 0000674C 00006810  7C 1D D8 00 */	cmpw r29, r27
/* 00006750 00006814  40 80 00 1C */	bge .L_0000676C
/* 00006754 00006818  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00006758 0000681C  7F 43 D3 78 */	mr r3, r26
/* 0000675C 00006820  7C BE F8 2E */	lwzx r5, r30, r31
/* 00006760 00006824  3B 9C 00 04 */	addi r28, r28, 0x4
/* 00006764 00006828  4B FF 99 E5 */	bl evtSetValue
/* 00006768 0000682C  48 00 00 18 */	b .L_00006780
.L_0000676C:
/* 0000676C 00006830  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00006770 00006834  7F 43 D3 78 */	mr r3, r26
/* 00006774 00006838  38 A0 FF FF */	li r5, -0x1
/* 00006778 0000683C  3B 9C 00 04 */	addi r28, r28, 0x4
/* 0000677C 00006840  4B FF 99 CD */	bl evtSetValue
.L_00006780:
/* 00006780 00006844  3B BD 00 01 */	addi r29, r29, 0x1
/* 00006784 00006848  3B FF 00 04 */	addi r31, r31, 0x4
/* 00006788 0000684C  2C 1D 00 04 */	cmpwi r29, 0x4
/* 0000678C 00006850  41 80 FF C0 */	blt .L_0000674C
/* 00006790 00006854  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00006794 00006858  7F 43 D3 78 */	mr r3, r26
/* 00006798 0000685C  7F 65 DB 78 */	mr r5, r27
/* 0000679C 00006860  4B FF 99 AD */	bl evtSetValue
/* 000067A0 00006864  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 000067A4 00006868  38 60 00 02 */	li r3, 0x2
/* 000067A8 0000686C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000067AC 00006870  7C 08 03 A6 */	mtlr r0
/* 000067B0 00006874  38 21 00 30 */	addi r1, r1, 0x30
/* 000067B4 00006878  4E 80 00 20 */	blr
.endfn kamec_get_bunsin

# .text:0x760 | 0x67B8 | size: 0x94
.fn kamec_get_live_num, local
/* 000067B8 0000687C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000067BC 00006880  7C 08 02 A6 */	mflr r0
/* 000067C0 00006884  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000067C4 00006888  90 01 00 24 */	stw r0, 0x24(r1)
/* 000067C8 0000688C  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 000067CC 00006890  7C 7A 1B 78 */	mr r26, r3
/* 000067D0 00006894  3B 80 00 00 */	li r28, 0x0
/* 000067D4 00006898  3B C0 00 00 */	li r30, 0x0
/* 000067D8 0000689C  3B E0 00 00 */	li r31, 0x0
/* 000067DC 000068A0  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 000067E0 000068A4  83 64 00 00 */	lwz r27, _battleWorkPointer@l(r4)
.L_000067E4:
/* 000067E4 000068A8  38 1F 00 20 */	addi r0, r31, 0x20
/* 000067E8 000068AC  7C 7B 00 2E */	lwzx r3, r27, r0
/* 000067EC 000068B0  28 03 00 00 */	cmplwi r3, 0x0
/* 000067F0 000068B4  41 82 00 24 */	beq .L_00006814
/* 000067F4 000068B8  88 03 00 0C */	lbz r0, 0xc(r3)
/* 000067F8 000068BC  2C 00 00 01 */	cmpwi r0, 0x1
/* 000067FC 000068C0  40 82 00 18 */	bne .L_00006814
/* 00006800 000068C4  38 80 00 1B */	li r4, 0x1b
/* 00006804 000068C8  4B FF 99 45 */	bl BtlUnit_CheckStatus
/* 00006808 000068CC  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000680C 000068D0  40 82 00 08 */	bne .L_00006814
/* 00006810 000068D4  3B 9C 00 01 */	addi r28, r28, 0x1
.L_00006814:
/* 00006814 000068D8  3B DE 00 01 */	addi r30, r30, 0x1
/* 00006818 000068DC  3B FF 00 04 */	addi r31, r31, 0x4
/* 0000681C 000068E0  2C 1E 00 40 */	cmpwi r30, 0x40
/* 00006820 000068E4  41 80 FF C4 */	blt .L_000067E4
/* 00006824 000068E8  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00006828 000068EC  7F 43 D3 78 */	mr r3, r26
/* 0000682C 000068F0  7F 85 E3 78 */	mr r5, r28
/* 00006830 000068F4  4B FF 99 19 */	bl evtSetValue
/* 00006834 000068F8  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 00006838 000068FC  38 60 00 02 */	li r3, 0x2
/* 0000683C 00006900  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00006840 00006904  7C 08 03 A6 */	mtlr r0
/* 00006844 00006908  38 21 00 20 */	addi r1, r1, 0x20
/* 00006848 0000690C  4E 80 00 20 */	blr
.endfn kamec_get_live_num

# 0x00004EB8..0x000051F0 | size: 0x338
.rodata
.balign 8

# .rodata:0x0 | 0x4EB8 | size: 0xD
.obj str_btl_un_kamec_tik_0000cd20, local
	.string "btl_un_kamec"
.endobj str_btl_un_kamec_tik_0000cd20

# .rodata:0xD | 0x4EC5 | size: 0x3
.obj gap_03_00004EC5_rodata, global
.hidden gap_03_00004EC5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004EC5_rodata

# .rodata:0x10 | 0x4EC8 | size: 0x18
.obj str_SFX_ENM_KAMEKU_DAMAG_tik_0000cd30, local
	.string "SFX_ENM_KAMEKU_DAMAGED1"
.endobj str_SFX_ENM_KAMEKU_DAMAG_tik_0000cd30

# .rodata:0x28 | 0x4EE0 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tik_0000cd48, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tik_0000cd48

# .rodata:0x3D | 0x4EF5 | size: 0x3
.obj gap_03_00004EF5_rodata, global
.hidden gap_03_00004EF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004EF5_rodata

# .rodata:0x40 | 0x4EF8 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tik_0000cd60, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tik_0000cd60

# .rodata:0x54 | 0x4F0C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tik_0000cd74, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tik_0000cd74

# .rodata:0x6D | 0x4F25 | size: 0x3
.obj gap_03_00004F25_rodata, global
.hidden gap_03_00004F25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004F25_rodata

# .rodata:0x70 | 0x4F28 | size: 0x14
.obj str_btl_un_kamec_bunsin_tik_0000cd90, local
	.string "btl_un_kamec_bunsin"
.endobj str_btl_un_kamec_bunsin_tik_0000cd90

# .rodata:0x84 | 0x4F3C | size: 0x8
.obj str_KMK_N_1_tik_0000cda4, local
	.string "KMK_N_1"
.endobj str_KMK_N_1_tik_0000cda4

# .rodata:0x8C | 0x4F44 | size: 0x8
.obj str_KMK_Y_1_tik_0000cdac, local
	.string "KMK_Y_1"
.endobj str_KMK_Y_1_tik_0000cdac

# .rodata:0x94 | 0x4F4C | size: 0x8
.obj str_KMK_K_1_tik_0000cdb4, local
	.string "KMK_K_1"
.endobj str_KMK_K_1_tik_0000cdb4

# .rodata:0x9C | 0x4F54 | size: 0x8
.obj str_KMK_X_1_tik_0000cdbc, local
	.string "KMK_X_1"
.endobj str_KMK_X_1_tik_0000cdbc

# .rodata:0xA4 | 0x4F5C | size: 0x8
.obj str_KMK_S_1_tik_0000cdc4, local
	.string "KMK_S_1"
.endobj str_KMK_S_1_tik_0000cdc4

# .rodata:0xAC | 0x4F64 | size: 0x8
.obj str_KMK_Q_1_tik_0000cdcc, local
	.string "KMK_Q_1"
.endobj str_KMK_Q_1_tik_0000cdcc

# .rodata:0xB4 | 0x4F6C | size: 0x8
.obj str_KMK_D_1_tik_0000cdd4, local
	.string "KMK_D_1"
.endobj str_KMK_D_1_tik_0000cdd4

# .rodata:0xBC | 0x4F74 | size: 0x8
.obj str_KMK_R_1_tik_0000cddc, local
	.string "KMK_R_1"
.endobj str_KMK_R_1_tik_0000cddc

# .rodata:0xC4 | 0x4F7C | size: 0x8
.obj str_KMK_W_1_tik_0000cde4, local
	.string "KMK_W_1"
.endobj str_KMK_W_1_tik_0000cde4

# .rodata:0xCC | 0x4F84 | size: 0x8
.obj str_KMK_T_1_tik_0000cdec, local
	.string "KMK_T_1"
.endobj str_KMK_T_1_tik_0000cdec

# .rodata:0xD4 | 0x4F8C | size: 0x8
.obj str_KMK_N_2_tik_0000cdf4, local
	.string "KMK_N_2"
.endobj str_KMK_N_2_tik_0000cdf4

# .rodata:0xDC | 0x4F94 | size: 0x8
.obj str_KMK_Y_2_tik_0000cdfc, local
	.string "KMK_Y_2"
.endobj str_KMK_Y_2_tik_0000cdfc

# .rodata:0xE4 | 0x4F9C | size: 0x8
.obj str_KMK_K_2_tik_0000ce04, local
	.string "KMK_K_2"
.endobj str_KMK_K_2_tik_0000ce04

# .rodata:0xEC | 0x4FA4 | size: 0x8
.obj str_KMK_X_2_tik_0000ce0c, local
	.string "KMK_X_2"
.endobj str_KMK_X_2_tik_0000ce0c

# .rodata:0xF4 | 0x4FAC | size: 0x8
.obj str_KMK_S_2_tik_0000ce14, local
	.string "KMK_S_2"
.endobj str_KMK_S_2_tik_0000ce14

# .rodata:0xFC | 0x4FB4 | size: 0x8
.obj str_KMK_Q_2_tik_0000ce1c, local
	.string "KMK_Q_2"
.endobj str_KMK_Q_2_tik_0000ce1c

# .rodata:0x104 | 0x4FBC | size: 0x8
.obj str_KMK_D_2_tik_0000ce24, local
	.string "KMK_D_2"
.endobj str_KMK_D_2_tik_0000ce24

# .rodata:0x10C | 0x4FC4 | size: 0x8
.obj str_KMK_R_2_tik_0000ce2c, local
	.string "KMK_R_2"
.endobj str_KMK_R_2_tik_0000ce2c

# .rodata:0x114 | 0x4FCC | size: 0x8
.obj str_KMK_W_2_tik_0000ce34, local
	.string "KMK_W_2"
.endobj str_KMK_W_2_tik_0000ce34

# .rodata:0x11C | 0x4FD4 | size: 0x8
.obj str_KMK_T_2_tik_0000ce3c, local
	.string "KMK_T_2"
.endobj str_KMK_T_2_tik_0000ce3c

# .rodata:0x124 | 0x4FDC | size: 0x8
.obj str_c_kamek_tik_0000ce44, local
	.string "c_kamek"
.endobj str_c_kamek_tik_0000ce44

# .rodata:0x12C | 0x4FE4 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_tik_0000ce4c, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_tik_0000ce4c

# .rodata:0x141 | 0x4FF9 | size: 0x3
.obj gap_03_00004FF9_rodata, global
.hidden gap_03_00004FF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004FF9_rodata

# .rodata:0x144 | 0x4FFC | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_tik_0000ce64, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_tik_0000ce64

# .rodata:0x159 | 0x5011 | size: 0x3
.obj gap_03_00005011_rodata, global
.hidden gap_03_00005011_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005011_rodata

# .rodata:0x15C | 0x5014 | size: 0xC
.obj str_kemuri_test_tik_0000ce7c, local
	.string "kemuri_test"
.endobj str_kemuri_test_tik_0000ce7c

# .rodata:0x168 | 0x5020 | size: 0x1
.obj zero_tik_0000ce88, local
	.byte 0x00
.endobj zero_tik_0000ce88

# .rodata:0x169 | 0x5021 | size: 0x3
.obj gap_03_00005021_rodata, global
.hidden gap_03_00005021_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005021_rodata

# .rodata:0x16C | 0x5024 | size: 0xB
.obj str_star_point_tik_0000ce8c, local
	.string "star_point"
.endobj str_star_point_tik_0000ce8c

# .rodata:0x177 | 0x502F | size: 0x1
.obj gap_03_0000502F_rodata, global
.hidden gap_03_0000502F_rodata
	.byte 0x00
.endobj gap_03_0000502F_rodata

# .rodata:0x178 | 0x5030 | size: 0x16
.obj str_SFX_BTL_CLAUD_BREATH_tik_0000ce98, local
	.string "SFX_BTL_CLAUD_BREATH3"
.endobj str_SFX_BTL_CLAUD_BREATH_tik_0000ce98

# .rodata:0x18E | 0x5046 | size: 0x2
.obj gap_03_00005046_rodata, global
.hidden gap_03_00005046_rodata
	.2byte 0x0000
.endobj gap_03_00005046_rodata

# .rodata:0x190 | 0x5048 | size: 0x8
.obj str_KMK_H_1_tik_0000ceb0, local
	.string "KMK_H_1"
.endobj str_KMK_H_1_tik_0000ceb0

# .rodata:0x198 | 0x5050 | size: 0xE
.obj str_SFX_ENM_FALL1_tik_0000ceb8, local
	.string "SFX_ENM_FALL1"
.endobj str_SFX_ENM_FALL1_tik_0000ceb8

# .rodata:0x1A6 | 0x505E | size: 0x2
.obj gap_03_0000505E_rodata, global
.hidden gap_03_0000505E_rodata
	.2byte 0x0000
.endobj gap_03_0000505E_rodata

# .rodata:0x1A8 | 0x5060 | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tik_0000cec8, local
	.string "SFX_ENM_KAMEKU_MAGIC1"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tik_0000cec8

# .rodata:0x1BE | 0x5076 | size: 0x2
.obj gap_03_00005076_rodata, global
.hidden gap_03_00005076_rodata
	.2byte 0x0000
.endobj gap_03_00005076_rodata

# .rodata:0x1C0 | 0x5078 | size: 0x9
.obj str_KMK_A_1A_tik_0000cee0, local
	.string "KMK_A_1A"
.endobj str_KMK_A_1A_tik_0000cee0

# .rodata:0x1C9 | 0x5081 | size: 0x3
.obj gap_03_00005081_rodata, global
.hidden gap_03_00005081_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005081_rodata

# .rodata:0x1CC | 0x5084 | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tik_0000ceec, local
	.string "SFX_ENM_KAMEKU_MAGIC4"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tik_0000ceec

# .rodata:0x1E2 | 0x509A | size: 0x2
.obj gap_03_0000509A_rodata, global
.hidden gap_03_0000509A_rodata
	.2byte 0x0000
.endobj gap_03_0000509A_rodata

# .rodata:0x1E4 | 0x509C | size: 0x9
.obj str_KMK_A_1B_tik_0000cf04, local
	.string "KMK_A_1B"
.endobj str_KMK_A_1B_tik_0000cf04

# .rodata:0x1ED | 0x50A5 | size: 0x3
.obj gap_03_000050A5_rodata, global
.hidden gap_03_000050A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000050A5_rodata

# .rodata:0x1F0 | 0x50A8 | size: 0x9
.obj str_KMK_A_1C_tik_0000cf10, local
	.string "KMK_A_1C"
.endobj str_KMK_A_1C_tik_0000cf10

# .rodata:0x1F9 | 0x50B1 | size: 0x3
.obj gap_03_000050B1_rodata, global
.hidden gap_03_000050B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000050B1_rodata

# .rodata:0x1FC | 0x50B4 | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tik_0000cf1c, local
	.string "SFX_ENM_KAMEKU_MAGIC8"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tik_0000cf1c

# .rodata:0x212 | 0x50CA | size: 0x2
.obj gap_03_000050CA_rodata, global
.hidden gap_03_000050CA_rodata
	.2byte 0x0000
.endobj gap_03_000050CA_rodata

# .rodata:0x214 | 0x50CC | size: 0x9
.obj str_KMK_A_1D_tik_0000cf34, local
	.string "KMK_A_1D"
.endobj str_KMK_A_1D_tik_0000cf34

# .rodata:0x21D | 0x50D5 | size: 0x3
.obj gap_03_000050D5_rodata, global
.hidden gap_03_000050D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000050D5_rodata

# .rodata:0x220 | 0x50D8 | size: 0x9
.obj str_KMK_A_1E_tik_0000cf40, local
	.string "KMK_A_1E"
.endobj str_KMK_A_1E_tik_0000cf40

# .rodata:0x229 | 0x50E1 | size: 0x3
.obj gap_03_000050E1_rodata, global
.hidden gap_03_000050E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000050E1_rodata

# .rodata:0x22C | 0x50E4 | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tik_0000cf4c, local
	.string "SFX_ENM_KAMEKU_MAGIC6"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tik_0000cf4c

# .rodata:0x242 | 0x50FA | size: 0x2
.obj gap_03_000050FA_rodata, global
.hidden gap_03_000050FA_rodata
	.2byte 0x0000
.endobj gap_03_000050FA_rodata

# .rodata:0x244 | 0x50FC | size: 0x9
.obj str_KMK_A_2A_tik_0000cf64, local
	.string "KMK_A_2A"
.endobj str_KMK_A_2A_tik_0000cf64

# .rodata:0x24D | 0x5105 | size: 0x3
.obj gap_03_00005105_rodata, global
.hidden gap_03_00005105_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005105_rodata

# .rodata:0x250 | 0x5108 | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tik_0000cf70, local
	.string "SFX_ENM_KAMEKU_MAGIC7"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tik_0000cf70

# .rodata:0x266 | 0x511E | size: 0x2
.obj gap_03_0000511E_rodata, global
.hidden gap_03_0000511E_rodata
	.2byte 0x0000
.endobj gap_03_0000511E_rodata

# .rodata:0x268 | 0x5120 | size: 0x9
.obj str_KMK_A_2B_tik_0000cf88, local
	.string "KMK_A_2B"
.endobj str_KMK_A_2B_tik_0000cf88

# .rodata:0x271 | 0x5129 | size: 0x3
.obj gap_03_00005129_rodata, global
.hidden gap_03_00005129_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005129_rodata

# .rodata:0x274 | 0x512C | size: 0x9
.obj str_KMK_A_2C_tik_0000cf94, local
	.string "KMK_A_2C"
.endobj str_KMK_A_2C_tik_0000cf94

# .rodata:0x27D | 0x5135 | size: 0x3
.obj gap_03_00005135_rodata, global
.hidden gap_03_00005135_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005135_rodata

# .rodata:0x280 | 0x5138 | size: 0x9
.obj str_KMK_A_3A_tik_0000cfa0, local
	.string "KMK_A_3A"
.endobj str_KMK_A_3A_tik_0000cfa0

# .rodata:0x289 | 0x5141 | size: 0x3
.obj gap_03_00005141_rodata, global
.hidden gap_03_00005141_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005141_rodata

# .rodata:0x28C | 0x5144 | size: 0x9
.obj str_KMK_A_3B_tik_0000cfac, local
	.string "KMK_A_3B"
.endobj str_KMK_A_3B_tik_0000cfac

# .rodata:0x295 | 0x514D | size: 0x3
.obj gap_03_0000514D_rodata, global
.hidden gap_03_0000514D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000514D_rodata

# .rodata:0x298 | 0x5150 | size: 0x9
.obj str_KMK_A_3C_tik_0000cfb8, local
	.string "KMK_A_3C"
.endobj str_KMK_A_3C_tik_0000cfb8

# .rodata:0x2A1 | 0x5159 | size: 0x3
.obj gap_03_00005159_rodata, global
.hidden gap_03_00005159_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005159_rodata

# .rodata:0x2A4 | 0x515C | size: 0x9
.obj str_KMK_A_3D_tik_0000cfc4, local
	.string "KMK_A_3D"
.endobj str_KMK_A_3D_tik_0000cfc4

# .rodata:0x2AD | 0x5165 | size: 0x3
.obj gap_03_00005165_rodata, global
.hidden gap_03_00005165_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005165_rodata

# .rodata:0x2B0 | 0x5168 | size: 0x18
.obj str_SFX_ENM_KAMEKU_MAGIC_tik_0000cfd0, local
	.string "SFX_ENM_KAMEKU_MAGIC3_2"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tik_0000cfd0

# .rodata:0x2C8 | 0x5180 | size: 0x9
.obj str_recovery_tik_0000cfe8, local
	.string "recovery"
.endobj str_recovery_tik_0000cfe8

# .rodata:0x2D1 | 0x5189 | size: 0x3
.obj gap_03_00005189_rodata, global
.hidden gap_03_00005189_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005189_rodata

# .rodata:0x2D4 | 0x518C | size: 0x19
.obj str_SFX_ENM_KAMEKU_OFFSH_tik_0000cff4, local
	.string "SFX_ENM_KAMEKU_OFFSHOOT1"
.endobj str_SFX_ENM_KAMEKU_OFFSH_tik_0000cff4

# .rodata:0x2ED | 0x51A5 | size: 0x3
.obj gap_03_000051A5_rodata, global
.hidden gap_03_000051A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000051A5_rodata

# .rodata:0x2F0 | 0x51A8 | size: 0x19
.obj str_SFX_ENM_KAMEKU_OFFSH_tik_0000d010, local
	.string "SFX_ENM_KAMEKU_OFFSHOOT2"
.endobj str_SFX_ENM_KAMEKU_OFFSH_tik_0000d010
	.byte 0x00, 0x00, 0x00

# .rodata:0x30C | 0x51C4 | size: 0x4
.obj float_25_tik_0000d02c, local
	.float 25
.endobj float_25_tik_0000d02c

# .rodata:0x310 | 0x51C8 | size: 0x4
.obj float_20_tik_0000d030, local
	.float 20
.endobj float_20_tik_0000d030

# .rodata:0x314 | 0x51CC | size: 0x4
.obj float_5_tik_0000d034, local
	.float 5
.endobj float_5_tik_0000d034

# .rodata:0x318 | 0x51D0 | size: 0x8
.obj double_to_int_tik_0000d038, local
	.double 4503601774854144
.endobj double_to_int_tik_0000d038

# .rodata:0x320 | 0x51D8 | size: 0x4
.obj zero_tik_0000d040, local
	.float 0
.endobj zero_tik_0000d040

# .rodata:0x324 | 0x51DC | size: 0x4
.obj float_neg1000_tik_0000d044, local
	.float -1000
.endobj float_neg1000_tik_0000d044

# .rodata:0x328 | 0x51E0 | size: 0x4
.obj float_1_tik_0000d048, local
	.float 1
.endobj float_1_tik_0000d048

# .rodata:0x32C | 0x51E4 | size: 0x4
.obj float_22p5_tik_0000d04c, local
	.float 22.5
.endobj float_22p5_tik_0000d04c

# .rodata:0x330 | 0x51E8 | size: 0x4
.obj float_40_tik_0000d050, local
	.float 40
.endobj float_40_tik_0000d050

# .rodata:0x334 | 0x51EC | size: 0x4
.obj gap_03_000051EC_rodata, global
.hidden gap_03_000051EC_rodata
	.4byte 0x00000000
.endobj gap_03_000051EC_rodata

# 0x00025CD0..0x000295F8 | size: 0x3928
.data
.balign 8

# .data:0x0 | 0x25CD0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x25CD8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x25CDC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x25CE0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x25CE4 | size: 0x4
.obj gap_04_00025CE4_data, global
.hidden gap_04_00025CE4_data
	.4byte 0x00000000
.endobj gap_04_00025CE4_data

# .data:0x18 | 0x25CE8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x25CF0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x25CF4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x25CF8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x25D00 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x25D04 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x25D08 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x25D0C | size: 0x4
.obj gap_04_00025D0C_data, global
.hidden gap_04_00025D0C_data
	.4byte 0x00000000
.endobj gap_04_00025D0C_data

# .data:0x40 | 0x25D10 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x25D18 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x25D1C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x25D20 | size: 0xC4
.obj unit_kamec_24_data_25D20, global
	.4byte 0x0000000C
	.4byte str_btl_un_kamec_tik_0000cd20
	.4byte 0x00070000
	.4byte 0x01011900
	.4byte 0x02460232
	.4byte 0x270F002A
	.4byte 0x002A0000
	.4byte 0x002A0000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x41DA6666
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x42280000
	.4byte 0x42280000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_KAMEKU_DAMAG_tik_0000cd30
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tik_0000cd48
	.4byte str_SFX_BTL_DAMAGE_ICE1_tik_0000cd60
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tik_0000cd74
	.4byte 0x00000000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_kamec_24_data_25D20

# .data:0x114 | 0x25DE4 | size: 0xC4
.obj unit_kamec_bunsin, local
	.4byte 0x0000000D
	.4byte str_btl_un_kamec_bunsin_tik_0000cd90
	.4byte 0x00070000
	.4byte 0x01010000
	.4byte 0x00460032
	.4byte 0x270F002A
	.4byte 0x002A0000
	.4byte 0x002A0000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x41DA6666
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x42280000
	.4byte 0x42280000
	.4byte 0x00000002
	.4byte 0x00140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_KAMEKU_DAMAG_tik_0000cd30
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tik_0000cd48
	.4byte str_SFX_BTL_DAMAGE_ICE1_tik_0000cd60
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tik_0000cd74
	.4byte 0x00400000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table_bunsin
.endobj unit_kamec_bunsin

# .data:0x1D8 | 0x25EA8 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1DD | 0x25EAD | size: 0x3
.obj gap_04_00025EAD_data, global
.hidden gap_04_00025EAD_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00025EAD_data

# .data:0x1E0 | 0x25EB0 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1E5 | 0x25EB5 | size: 0x3
.obj gap_04_00025EB5_data, global
.hidden gap_04_00025EB5_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00025EB5_data

# .data:0x1E8 | 0x25EB8 | size: 0x16
.obj regist, local
	.ascii "FKPdFddFdZdZd_PFPdPdd_"
.endobj regist

# .data:0x1FE | 0x25ECE | size: 0x2
.obj gap_04_00025ECE_data, global
.hidden gap_04_00025ECE_data
	.2byte 0x0000
.endobj gap_04_00025ECE_data

# .data:0x200 | 0x25ED0 | size: 0x16
.obj regist_bunsin, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist_bunsin

# .data:0x216 | 0x25EE6 | size: 0x2
.obj gap_04_00025EE6_data, global
.hidden gap_04_00025EE6_data
	.2byte 0x0000
.endobj gap_04_00025EE6_data

# .data:0x218 | 0x25EE8 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KMK_N_1_tik_0000cda4
	.4byte 0x00000002
	.4byte str_KMK_Y_1_tik_0000cdac
	.4byte 0x00000009
	.4byte str_KMK_Y_1_tik_0000cdac
	.4byte 0x00000005
	.4byte str_KMK_K_1_tik_0000cdb4
	.4byte 0x00000004
	.4byte str_KMK_X_1_tik_0000cdbc
	.4byte 0x00000003
	.4byte str_KMK_X_1_tik_0000cdbc
	.4byte 0x0000001C
	.4byte str_KMK_S_1_tik_0000cdc4
	.4byte 0x0000001D
	.4byte str_KMK_Q_1_tik_0000cdcc
	.4byte 0x0000001E
	.4byte str_KMK_Q_1_tik_0000cdcc
	.4byte 0x0000001F
	.4byte str_KMK_S_1_tik_0000cdc4
	.4byte 0x00000027
	.4byte str_KMK_D_1_tik_0000cdd4
	.4byte 0x0000002A
	.4byte str_KMK_R_1_tik_0000cddc
	.4byte 0x00000028
	.4byte str_KMK_W_1_tik_0000cde4
	.4byte 0x00000038
	.4byte str_KMK_X_1_tik_0000cdbc
	.4byte 0x00000039
	.4byte str_KMK_X_1_tik_0000cdbc
	.4byte 0x00000041
	.4byte str_KMK_T_1_tik_0000cdec
	.4byte 0x00000045
	.4byte str_KMK_S_1_tik_0000cdc4
.endobj pose_table

# .data:0x2A0 | 0x25F70 | size: 0x88
.obj pose_table_sky, local
	.4byte 0x00000001
	.4byte str_KMK_N_2_tik_0000cdf4
	.4byte 0x00000002
	.4byte str_KMK_Y_2_tik_0000cdfc
	.4byte 0x00000009
	.4byte str_KMK_Y_2_tik_0000cdfc
	.4byte 0x00000005
	.4byte str_KMK_K_2_tik_0000ce04
	.4byte 0x00000004
	.4byte str_KMK_X_2_tik_0000ce0c
	.4byte 0x00000003
	.4byte str_KMK_X_2_tik_0000ce0c
	.4byte 0x0000001C
	.4byte str_KMK_S_2_tik_0000ce14
	.4byte 0x0000001D
	.4byte str_KMK_Q_2_tik_0000ce1c
	.4byte 0x0000001E
	.4byte str_KMK_Q_2_tik_0000ce1c
	.4byte 0x0000001F
	.4byte str_KMK_S_2_tik_0000ce14
	.4byte 0x00000027
	.4byte str_KMK_D_2_tik_0000ce24
	.4byte 0x0000002A
	.4byte str_KMK_R_2_tik_0000ce2c
	.4byte 0x00000028
	.4byte str_KMK_W_2_tik_0000ce34
	.4byte 0x00000038
	.4byte str_KMK_X_2_tik_0000ce0c
	.4byte 0x00000039
	.4byte str_KMK_X_2_tik_0000ce0c
	.4byte 0x00000041
	.4byte str_KMK_T_2_tik_0000ce3c
	.4byte 0x00000045
	.4byte str_KMK_S_2_tik_0000ce14
.endobj pose_table_sky

# .data:0x328 | 0x25FF8 | size: 0x28
.obj data_table, local
	.4byte 0x00000031
	.4byte kamec_subset_dead_event
	.4byte 0x0000003A
	.4byte kamec_subset_blow_dead_event
	.4byte 0x0000002E
	.4byte avoid_miss_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x350 | 0x26020 | size: 0x30
.obj data_table_sky, local
	.4byte 0x00000031
	.4byte kamec_subset_dead_event
	.4byte 0x0000003A
	.4byte kamec_subset_blow_dead_event
	.4byte 0x0000002E
	.4byte avoid_miss_event
	.4byte 0x0000000E
	.4byte dmg_fall_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_sky

# .data:0x380 | 0x26050 | size: 0x18
.obj data_table_bunsin, local
	.4byte 0x0000002E
	.4byte avoid_miss_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_bunsin

# .data:0x398 | 0x26068 | size: 0x20
.obj data_table_sky_bunsin, local
	.4byte 0x0000002E
	.4byte avoid_miss_event
	.4byte 0x0000000E
	.4byte dmg_fall_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_sky_bunsin

# .data:0x3B8 | 0x26088 | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kamec_tik_0000cd20
	.4byte str_c_kamek_tik_0000ce44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42340000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_kamec_tik_0000cd20
	.4byte str_c_kamek_tik_0000ce44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x450 | 0x26120 | size: 0xC0
.obj weapon_kamec_attack_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000004
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
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x000000C7
	.4byte 0x000007FF
	.4byte 0x80000000
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
.endobj weapon_kamec_attack_magic

# .data:0x510 | 0x261E0 | size: 0xC0
.obj weapon_kamec_dekadeka_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x03020000
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
.endobj weapon_kamec_dekadeka_magic

# .data:0x5D0 | 0x262A0 | size: 0xC0
.obj weapon_kamec_biribiri_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x03000000
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
.endobj weapon_kamec_biribiri_magic

# .data:0x690 | 0x26360 | size: 0xC0
.obj weapon_kamec_trans_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x80000000
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
	.4byte 0x64030000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_kamec_trans_magic

# .data:0x750 | 0x26420 | size: 0xC0
.obj weapon_kamec_katikati_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640303
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_kamec_katikati_magic

# .data:0x810 | 0x264E0 | size: 0xC0
.obj weapon_kamec_recover_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00001500
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
.endobj weapon_kamec_recover_magic

# .data:0x8D0 | 0x265A0 | size: 0xC0
.obj weapon_kamec_all_recover_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x02100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
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
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_kamec_all_recover_magic

# .data:0x990 | 0x26660 | size: 0x30
.obj entry_kamec, local
	.4byte unit_kamec_bunsin
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_kamec

# .data:0x9C0 | 0x26690 | size: 0x58
.obj init_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte init_event2
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xA18 | 0x266E8 | size: 0x15C
.obj init_event2, local
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
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_sky
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_sky
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_sky_bunsin
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0xFE363C82
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event2

# .data:0xB74 | 0x26844 | size: 0xE8
.obj alpha_down_event, local
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x000000FE
	.4byte 0x0005005B
	.4byte btlevtcmd_AnimeFlagOnOff
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x000000FE
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_value_para
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_AnimeFlagOnOff
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj alpha_down_event

# .data:0xC5C | 0x2692C | size: 0xE8
.obj alpha_up_event, local
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_AnimeFlagOnOff
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FE
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_value_para
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x0005005B
	.4byte btlevtcmd_AnimeFlagOnOff
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj alpha_up_event

# .data:0xD44 | 0x26A14 | size: 0x108
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
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte bunsin_kill_event
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte kamec_subset_bunsin_all_kill
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0xE4C | 0x26B1C | size: 0x110
.obj kamec_subset_bunsin_all_kill, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001005C
	.4byte bunsin_kill_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x0001005C
	.4byte bunsin_kill_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0001005C
	.4byte bunsin_kill_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x0001005C
	.4byte bunsin_kill_event
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kamec_subset_bunsin_all_kill

# .data:0xF5C | 0x26C2C | size: 0x32C
.obj kamec_subset_dead_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDataOfDataTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000030
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFE363C8A
	.4byte 0x08000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_1_tik_0000ce4c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFFF1
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_2_tik_0000ce64
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
	.4byte str_kemuri_test_tik_0000ce7c
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
	.4byte 0x0005005B
	.4byte _add_star_point_disp_offset
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tik_0000ce88
	.4byte str_star_point_tik_0000ce8c
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
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C8A
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x20000000
	.4byte 0x0001005E
	.4byte kamec_subset_bunsin_all_kill
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
.endobj kamec_subset_dead_event

# .data:0x1288 | 0x26F58 | size: 0x138
.obj kamec_subset_blow_dead_event, local
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BTL_CLAUD_BREATH_tik_0000ce98
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000027
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8280
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xFE363C80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x0001005E
	.4byte kamec_subset_bunsin_all_kill
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kamec_subset_blow_dead_event

# .data:0x13C0 | 0x27090 | size: 0x40
.obj avoid_miss_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte bunsin_kill_event
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj avoid_miss_event

# .data:0x1400 | 0x270D0 | size: 0x94
.obj bunsin_kill_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte alpha_down_event
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bunsin_kill_event

# .data:0x1494 | 0x27164 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x149C | 0x2716C | size: 0x27C
.obj dmg_fall_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_bunsin
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KMK_H_1_tik_0000ceb0
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_value_para
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FALL1_tik_0000ceb8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte init_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_fall_event

# .data:0x1718 | 0x273E8 | size: 0x4C
.obj dmg_first_attack_pos, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_first_attack_pos

# .data:0x1764 | 0x27434 | size: 0x4A0
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_EnemyItemUseCheck
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte 0xFE363C80
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte kamec_get_live_num
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_recover_magic
	.4byte 0x0001005E
	.4byte recover_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte bunsin_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
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
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_dekadeka_magic
	.4byte 0x0001005E
	.4byte dekadeka_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_katikati_magic
	.4byte 0x0001005E
	.4byte katikati_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_biribiri_magic
	.4byte 0x0001005E
	.4byte biribiri_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_trans_magic
	.4byte 0x0001005E
	.4byte trans_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_recover_magic
	.4byte 0x0001005E
	.4byte recover_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_all_recover_magic
	.4byte 0x0001005E
	.4byte all_recover_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1C04 | 0x278D4 | size: 0x4C4
.obj ground_magic_common_event1, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tik_0000cec8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8C
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8D
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8E
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x00000020
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff2
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMK_A_1A_tik_0000cee0
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMK_A_1A_tik_0000cee0
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMK_A_1A_tik_0000cee0
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMK_A_1A_tik_0000cee0
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMK_A_1A_tik_0000cee0
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tik_0000ceec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMK_A_1B_tik_0000cf04
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMK_A_1B_tik_0000cf04
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMK_A_1B_tik_0000cf04
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMK_A_1B_tik_0000cf04
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMK_A_1B_tik_0000cf04
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMK_A_1C_tik_0000cf10
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMK_A_1C_tik_0000cf10
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMK_A_1C_tik_0000cf10
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMK_A_1C_tik_0000cf10
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMK_A_1C_tik_0000cf10
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tik_0000cf1c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMK_A_1D_tik_0000cf34
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMK_A_1D_tik_0000cf34
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMK_A_1D_tik_0000cf34
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMK_A_1D_tik_0000cf34
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMK_A_1D_tik_0000cf34
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMK_A_1E_tik_0000cf40
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMK_A_1E_tik_0000cf40
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMK_A_1E_tik_0000cf40
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMK_A_1E_tik_0000cf40
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMK_A_1E_tik_0000cf40
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ground_magic_common_event1

# .data:0x20C8 | 0x27D98 | size: 0xF4
.obj ground_magic_common_event2, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tik_0000cec8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMK_A_1A_tik_0000cee0
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tik_0000cf4c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMK_A_2A_tik_0000cf64
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tik_0000cf70
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMK_A_2B_tik_0000cf88
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMK_A_2C_tik_0000cf94
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ground_magic_common_event2

# .data:0x21BC | 0x27E8C | size: 0x408
.obj sky_magic_common_event, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tik_0000cec8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8C
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8D
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8E
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x00000020
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff2
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMK_A_3A_tik_0000cfa0
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMK_A_3A_tik_0000cfa0
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMK_A_3A_tik_0000cfa0
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMK_A_3A_tik_0000cfa0
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMK_A_3A_tik_0000cfa0
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tik_0000cf1c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMK_A_3B_tik_0000cfac
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMK_A_3B_tik_0000cfac
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMK_A_3B_tik_0000cfac
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMK_A_3B_tik_0000cfac
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMK_A_3B_tik_0000cfac
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000023
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tik_0000cf70
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMK_A_3C_tik_0000cfb8
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMK_A_3C_tik_0000cfb8
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMK_A_3C_tik_0000cfb8
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMK_A_3C_tik_0000cfb8
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMK_A_3C_tik_0000cfb8
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMK_A_3D_tik_0000cfc4
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMK_A_3D_tik_0000cfc4
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMK_A_3D_tik_0000cfc4
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMK_A_3D_tik_0000cfc4
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMK_A_3D_tik_0000cfc4
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sky_magic_common_event

# .data:0x25C4 | 0x28294 | size: 0x6C
.obj magic_common_event1, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFE363C8D
	.4byte 0x0001005E
	.4byte ground_magic_common_event1
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte ground_magic_common_event2
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte sky_magic_common_event
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj magic_common_event1

# .data:0x2630 | 0x28300 | size: 0x40
.obj magic_common_event2, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte ground_magic_common_event2
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte sky_magic_common_event
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj magic_common_event2

# .data:0x2670 | 0x28340 | size: 0x68
.obj start_avoid, local
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj start_avoid

# .data:0x26D8 | 0x283A8 | size: 0x514
.obj attack_magic_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFirstAttackTarget
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
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
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
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
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte magic_common_event1
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tik_0000cfd0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
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
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte eff_magic_get_posX
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte start_avoid
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte eff_magic_get_posX
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte start_avoid
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C87
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C88
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C8D
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_no_hit
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C87
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C88
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C8D
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_hit
	.4byte 0x00010009
	.4byte 0x0000002D
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00020019
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C87
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C88
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C89
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_magic_event

# .data:0x2BEC | 0x288BC | size: 0xB4
.obj attack_magic_event_sub_no_hit, local
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xFE363C8A
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C8B
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte eff_magic
	.4byte 0xFE363C8E
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0000003C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_magic_event_sub_no_hit

# .data:0x2CA0 | 0x28970 | size: 0x78
.obj attack_magic_event_sub_hit, local
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte eff_magic
	.4byte 0xFE363C8E
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0000002D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_magic_event_sub_hit

# .data:0x2D18 | 0x289E8 | size: 0x230
.obj support_magic_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
	.4byte 0xFE363C83
	.4byte 0xFE363C84
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
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x0000000E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x0000000E
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000012
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x00000012
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
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
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte magic_common_event1
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj support_magic_event

# .data:0x2F48 | 0x28C18 | size: 0x1C
.obj dekadeka_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x0000000A
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dekadeka_magic_event

# .data:0x2F64 | 0x28C34 | size: 0x1C
.obj katikati_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x0000000E
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj katikati_magic_event

# .data:0x2F80 | 0x28C50 | size: 0x1C
.obj biribiri_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000006
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj biribiri_magic_event

# .data:0x2F9C | 0x28C6C | size: 0x1C
.obj trans_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000012
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj trans_magic_event

# .data:0x2FB8 | 0x28C88 | size: 0x238
.obj recover_magic_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
	.4byte 0xFE363C83
	.4byte 0xFE363C84
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
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
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
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte magic_common_event1
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000008
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHeight
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tik_0000ce88
	.4byte str_recovery_tik_0000cfe8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj recover_magic_event

# .data:0x31F0 | 0x28EC0 | size: 0x2D0
.obj all_recover_magic_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
	.4byte 0xFE363C83
	.4byte 0xFE363C84
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
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010003
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00010004
	.4byte 0x00000008
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000005
	.4byte 0x00010003
	.4byte 0x00000008
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
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
	.4byte 0xFE363C89
	.4byte 0x0001005E
	.4byte magic_common_event2
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHeight
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tik_0000ce88
	.4byte str_recovery_tik_0000cfe8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x00000002
	.4byte 0x00000001
.endobj all_recover_magic_event

# .data:0x34C0 | 0x29190 | size: 0x280
.obj bunsin_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte magic_common_event1
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_OFFSH_tik_0000cff4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte alpha_down_event
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte spawn_event
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x000000AA
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte spawn_event
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte kamec_shuffle
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_OFFSH_tik_0000d010
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFE
	.4byte 0x0001005C
	.4byte alpha_up_event
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001005C
	.4byte alpha_up_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x0001005C
	.4byte alpha_up_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0001005C
	.4byte alpha_up_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x0001005C
	.4byte alpha_up_event
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bunsin_magic_event

# .data:0x3740 | 0x29410 | size: 0x108
.obj spawn_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_kamec
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte kamec_copy_status
	.4byte 0xFE363C8D
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C83
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFE363C83
	.4byte attack_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFE363C83
	.4byte regist_bunsin
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00004000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj spawn_event

# .data:0x3848 | 0x29518 | size: 0xDC
.obj wait_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C84
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x3924 | 0x295F4 | size: 0x4
.obj gap_04_000295F4_data, global
.hidden gap_04_000295F4_data
	.4byte 0x00000000
.endobj gap_04_000295F4_data
