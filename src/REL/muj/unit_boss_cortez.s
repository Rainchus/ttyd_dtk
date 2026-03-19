.include "macros.inc"
.file "unit_boss_cortez.o"

# 0x00006000..0x000067BC | size: 0x7BC
.text
.balign 4

# .text:0x0 | 0x6000 | size: 0xA8
.fn _check_zenei_kouei, local
/* 00006000 000060C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00006004 000060C8  7C 08 02 A6 */	mflr r0
/* 00006008 000060CC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000600C 000060D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 00006010 000060D4  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00006014 000060D8  7C 7D 1B 78 */	mr r29, r3
/* 00006018 000060DC  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 0000601C 000060E0  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 00006020 000060E4  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00006024 000060E8  4B FF A9 85 */	bl evtGetValue
/* 00006028 000060EC  83 DE 00 04 */	lwz r30, 0x4(r30)
/* 0000602C 000060F0  7C 64 1B 78 */	mr r4, r3
/* 00006030 000060F4  7F A3 EB 78 */	mr r3, r29
/* 00006034 000060F8  4B FF A9 75 */	bl BattleTransID
/* 00006038 000060FC  7C 64 1B 78 */	mr r4, r3
/* 0000603C 00006100  7F E3 FB 78 */	mr r3, r31
/* 00006040 00006104  4B FF A9 69 */	bl BattleGetUnitPtr
/* 00006044 00006108  38 81 00 10 */	addi r4, r1, 0x10
/* 00006048 0000610C  38 A1 00 0C */	addi r5, r1, 0xc
/* 0000604C 00006110  38 C1 00 08 */	addi r6, r1, 0x8
/* 00006050 00006114  4B FF A9 59 */	bl BtlUnit_GetPos
/* 00006054 00006118  3C 60 00 00 */	lis r3, float_neg120_muj_00012a94@ha
/* 00006058 0000611C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 0000605C 00006120  C0 03 00 00 */	lfs f0, float_neg120_muj_00012a94@l(r3)
/* 00006060 00006124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00006064 00006128  4C 41 13 82 */	cror eq, gt, eq
/* 00006068 0000612C  40 82 00 18 */	bne .L_00006080
/* 0000606C 00006130  7F A3 EB 78 */	mr r3, r29
/* 00006070 00006134  7F C4 F3 78 */	mr r4, r30
/* 00006074 00006138  38 A0 00 00 */	li r5, 0x0
/* 00006078 0000613C  4B FF A9 31 */	bl evtSetValue
/* 0000607C 00006140  48 00 00 14 */	b .L_00006090
.L_00006080:
/* 00006080 00006144  7F A3 EB 78 */	mr r3, r29
/* 00006084 00006148  7F C4 F3 78 */	mr r4, r30
/* 00006088 0000614C  38 A0 00 01 */	li r5, 0x1
/* 0000608C 00006150  4B FF A9 1D */	bl evtSetValue
.L_00006090:
/* 00006090 00006154  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00006094 00006158  38 60 00 02 */	li r3, 0x2
/* 00006098 0000615C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000609C 00006160  7C 08 03 A6 */	mtlr r0
/* 000060A0 00006164  38 21 00 30 */	addi r1, r1, 0x30
/* 000060A4 00006168  4E 80 00 20 */	blr
.endfn _check_zenei_kouei

# .text:0xA8 | 0x60A8 | size: 0x1B0
.fn _cortez_recovery_audience, local
/* 000060A8 0000616C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000060AC 00006170  7C 08 02 A6 */	mflr r0
/* 000060B0 00006174  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 000060B4 00006178  90 01 00 24 */	stw r0, 0x24(r1)
/* 000060B8 0000617C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 000060BC 00006180  7C 9C 23 78 */	mr r28, r4
/* 000060C0 00006184  7C 7D 1B 78 */	mr r29, r3
/* 000060C4 00006188  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 000060C8 0000618C  83 65 00 00 */	lwz r27, _battleWorkPointer@l(r5)
/* 000060CC 00006190  80 86 00 00 */	lwz r4, 0x0(r6)
/* 000060D0 00006194  4B FF A8 D9 */	bl evtGetValue
/* 000060D4 00006198  7C 60 1B 78 */	mr r0, r3
/* 000060D8 0000619C  7F A3 EB 78 */	mr r3, r29
/* 000060DC 000061A0  7C 04 03 78 */	mr r4, r0
/* 000060E0 000061A4  4B FF A8 C9 */	bl BattleTransID
/* 000060E4 000061A8  7C 64 1B 78 */	mr r4, r3
/* 000060E8 000061AC  7F 63 DB 78 */	mr r3, r27
/* 000060EC 000061B0  4B FF A8 BD */	bl BattleGetUnitPtr
/* 000060F0 000061B4  2C 1C 00 00 */	cmpwi r28, 0x0
/* 000060F4 000061B8  83 E3 03 14 */	lwz r31, 0x314(r3)
/* 000060F8 000061BC  41 82 00 0C */	beq .L_00006104
/* 000060FC 000061C0  38 00 00 00 */	li r0, 0x0
/* 00006100 000061C4  B0 1F 00 00 */	sth r0, 0x0(r31)
.L_00006104:
/* 00006104 000061C8  A8 1F 00 00 */	lha r0, 0x0(r31)
/* 00006108 000061CC  2C 00 00 01 */	cmpwi r0, 0x1
/* 0000610C 000061D0  41 82 00 58 */	beq .L_00006164
/* 00006110 000061D4  40 80 00 10 */	bge .L_00006120
/* 00006114 000061D8  2C 00 00 00 */	cmpwi r0, 0x0
/* 00006118 000061DC  40 80 00 14 */	bge .L_0000612C
/* 0000611C 000061E0  48 00 01 1C */	b .L_00006238
.L_00006120:
/* 00006120 000061E4  2C 00 00 03 */	cmpwi r0, 0x3
/* 00006124 000061E8  40 80 01 14 */	bge .L_00006238
/* 00006128 000061EC  48 00 00 B4 */	b .L_000061DC
.L_0000612C:
/* 0000612C 000061F0  38 60 00 00 */	li r3, 0x0
/* 00006130 000061F4  38 00 00 64 */	li r0, 0x64
/* 00006134 000061F8  7C 64 1B 78 */	mr r4, r3
/* 00006138 000061FC  7C 09 03 A6 */	mtctr r0
.L_0000613C:
/* 0000613C 00006200  7C BF 1A 14 */	add r5, r31, r3
/* 00006140 00006204  A8 05 00 04 */	lha r0, 0x4(r5)
/* 00006144 00006208  2C 00 FF FF */	cmpwi r0, -0x1
/* 00006148 0000620C  41 82 00 08 */	beq .L_00006150
/* 0000614C 00006210  B0 85 02 5C */	sth r4, 0x25c(r5)
.L_00006150:
/* 00006150 00006214  38 63 00 02 */	addi r3, r3, 0x2
/* 00006154 00006218  42 00 FF E8 */	bdnz .L_0000613C
/* 00006158 0000621C  A8 7F 00 00 */	lha r3, 0x0(r31)
/* 0000615C 00006220  38 03 00 01 */	addi r0, r3, 0x1
/* 00006160 00006224  B0 1F 00 00 */	sth r0, 0x0(r31)
.L_00006164:
/* 00006164 00006228  38 00 00 64 */	li r0, 0x64
/* 00006168 0000622C  38 E0 00 01 */	li r7, 0x1
/* 0000616C 00006230  38 C0 00 00 */	li r6, 0x0
/* 00006170 00006234  38 60 00 00 */	li r3, 0x0
/* 00006174 00006238  7C 09 03 A6 */	mtctr r0
.L_00006178:
/* 00006178 0000623C  7C BF 1A 14 */	add r5, r31, r3
/* 0000617C 00006240  A8 05 00 04 */	lha r0, 0x4(r5)
/* 00006180 00006244  2C 00 FF FF */	cmpwi r0, -0x1
/* 00006184 00006248  41 82 00 3C */	beq .L_000061C0
/* 00006188 0000624C  A8 85 02 5C */	lha r4, 0x25c(r5)
/* 0000618C 00006250  2C 04 00 01 */	cmpwi r4, 0x1
/* 00006190 00006254  41 82 00 20 */	beq .L_000061B0
/* 00006194 00006258  40 80 00 2C */	bge .L_000061C0
/* 00006198 0000625C  2C 04 00 00 */	cmpwi r4, 0x0
/* 0000619C 00006260  40 80 00 08 */	bge .L_000061A4
/* 000061A0 00006264  48 00 00 20 */	b .L_000061C0
.L_000061A4:
/* 000061A4 00006268  38 04 00 01 */	addi r0, r4, 0x1
/* 000061A8 0000626C  B0 05 02 5C */	sth r0, 0x25c(r5)
/* 000061AC 00006270  B0 C5 01 94 */	sth r6, 0x194(r5)
.L_000061B0:
/* 000061B0 00006274  A8 85 01 94 */	lha r4, 0x194(r5)
/* 000061B4 00006278  38 E0 00 01 */	li r7, 0x1
/* 000061B8 0000627C  38 04 00 01 */	addi r0, r4, 0x1
/* 000061BC 00006280  B0 05 01 94 */	sth r0, 0x194(r5)
.L_000061C0:
/* 000061C0 00006284  38 63 00 02 */	addi r3, r3, 0x2
/* 000061C4 00006288  42 00 FF B4 */	bdnz .L_00006178
/* 000061C8 0000628C  2C 07 00 00 */	cmpwi r7, 0x0
/* 000061CC 00006290  41 82 00 74 */	beq .L_00006240
/* 000061D0 00006294  A8 7F 00 00 */	lha r3, 0x0(r31)
/* 000061D4 00006298  38 03 00 01 */	addi r0, r3, 0x1
/* 000061D8 0000629C  B0 1F 00 00 */	sth r0, 0x0(r31)
.L_000061DC:
/* 000061DC 000062A0  3C 80 00 00 */	lis r4, zero_muj_00012a98@ha
/* 000061E0 000062A4  3C 60 00 00 */	lis r3, float_neg1_muj_00012a9c@ha
/* 000061E4 000062A8  3B 84 00 00 */	addi r28, r4, zero_muj_00012a98@l
/* 000061E8 000062AC  3B 60 00 00 */	li r27, 0x0
/* 000061EC 000062B0  3B A3 00 00 */	addi r29, r3, float_neg1_muj_00012a9c@l
/* 000061F0 000062B4  3B C0 00 00 */	li r30, 0x0
.L_000061F4:
/* 000061F4 000062B8  38 1E 00 04 */	addi r0, r30, 0x4
/* 000061F8 000062BC  7C 7F 02 AE */	lhax r3, r31, r0
/* 000061FC 000062C0  2C 03 FF FF */	cmpwi r3, -0x1
/* 00006200 000062C4  41 82 00 14 */	beq .L_00006214
/* 00006204 000062C8  4B FF A7 A5 */	bl BattleAudience_Delete
/* 00006208 000062CC  C0 3C 00 00 */	lfs f1, 0x0(r28)
/* 0000620C 000062D0  C0 5D 00 00 */	lfs f2, 0x0(r29)
/* 00006210 000062D4  4B FF A7 99 */	bl BattleAudienceAddTargetNum
.L_00006214:
/* 00006214 000062D8  3B 7B 00 01 */	addi r27, r27, 0x1
/* 00006218 000062DC  3B DE 00 02 */	addi r30, r30, 0x2
/* 0000621C 000062E0  2C 1B 00 64 */	cmpwi r27, 0x64
/* 00006220 000062E4  41 80 FF D4 */	blt .L_000061F4
/* 00006224 000062E8  A8 9F 00 00 */	lha r4, 0x0(r31)
/* 00006228 000062EC  38 60 00 02 */	li r3, 0x2
/* 0000622C 000062F0  38 04 00 01 */	addi r0, r4, 0x1
/* 00006230 000062F4  B0 1F 00 00 */	sth r0, 0x0(r31)
/* 00006234 000062F8  48 00 00 10 */	b .L_00006244
.L_00006238:
/* 00006238 000062FC  38 60 00 02 */	li r3, 0x2
/* 0000623C 00006300  48 00 00 08 */	b .L_00006244
.L_00006240:
/* 00006240 00006304  38 60 00 00 */	li r3, 0x0
.L_00006244:
/* 00006244 00006308  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 00006248 0000630C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000624C 00006310  7C 08 03 A6 */	mtlr r0
/* 00006250 00006314  38 21 00 20 */	addi r1, r1, 0x20
/* 00006254 00006318  4E 80 00 20 */	blr
.endfn _cortez_recovery_audience

# .text:0x258 | 0x6258 | size: 0xA4
.fn _cortez_drain_energy, local
/* 00006258 0000631C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000625C 00006320  7C 08 02 A6 */	mflr r0
/* 00006260 00006324  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006264 00006328  90 01 00 34 */	stw r0, 0x34(r1)
/* 00006268 0000632C  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 0000626C 00006330  7C 79 1B 78 */	mr r25, r3
/* 00006270 00006334  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00006274 00006338  83 A4 00 00 */	lwz r29, _battleWorkPointer@l(r4)
/* 00006278 0000633C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 0000627C 00006340  4B FF A7 2D */	bl evtGetValue
/* 00006280 00006344  83 9E 00 04 */	lwz r28, 0x4(r30)
/* 00006284 00006348  7C 64 1B 78 */	mr r4, r3
/* 00006288 0000634C  7F 23 CB 78 */	mr r3, r25
/* 0000628C 00006350  4B FF A7 1D */	bl BattleTransID
/* 00006290 00006354  7C 64 1B 78 */	mr r4, r3
/* 00006294 00006358  7F A3 EB 78 */	mr r3, r29
/* 00006298 0000635C  4B FF A7 11 */	bl BattleGetUnitPtr
/* 0000629C 00006360  3B E0 00 00 */	li r31, 0x0
/* 000062A0 00006364  83 63 03 14 */	lwz r27, 0x314(r3)
/* 000062A4 00006368  7F FE FB 78 */	mr r30, r31
/* 000062A8 0000636C  3B 40 00 00 */	li r26, 0x0
.L_000062AC:
/* 000062AC 00006370  3B BF 03 24 */	addi r29, r31, 0x324
/* 000062B0 00006374  7C 7B E8 2E */	lwzx r3, r27, r29
/* 000062B4 00006378  28 03 00 00 */	cmplwi r3, 0x0
/* 000062B8 0000637C  41 82 00 0C */	beq .L_000062C4
/* 000062BC 00006380  4B FF A6 ED */	bl effDelete
/* 000062C0 00006384  7F DB E9 2E */	stwx r30, r27, r29
.L_000062C4:
/* 000062C4 00006388  3B 5A 00 01 */	addi r26, r26, 0x1
/* 000062C8 0000638C  3B FF 00 04 */	addi r31, r31, 0x4
/* 000062CC 00006390  2C 1A 00 64 */	cmpwi r26, 0x64
/* 000062D0 00006394  41 80 FF DC */	blt .L_000062AC
/* 000062D4 00006398  A8 BB 00 02 */	lha r5, 0x2(r27)
/* 000062D8 0000639C  7F 23 CB 78 */	mr r3, r25
/* 000062DC 000063A0  7F 84 E3 78 */	mr r4, r28
/* 000062E0 000063A4  4B FF A6 C9 */	bl evtSetValue
/* 000062E4 000063A8  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 000062E8 000063AC  38 60 00 02 */	li r3, 0x2
/* 000062EC 000063B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000062F0 000063B4  7C 08 03 A6 */	mtlr r0
/* 000062F4 000063B8  38 21 00 30 */	addi r1, r1, 0x30
/* 000062F8 000063BC  4E 80 00 20 */	blr
.endfn _cortez_drain_energy

# .text:0x2FC | 0x62FC | size: 0x318
.fn _cortez_collect_energy, local
/* 000062FC 000063C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00006300 000063C4  7C 08 02 A6 */	mflr r0
/* 00006304 000063C8  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 00006308 000063CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 0000630C 000063D0  BE E1 00 1C */	stmw r23, 0x1c(r1)
/* 00006310 000063D4  7C 98 23 78 */	mr r24, r4
/* 00006314 000063D8  7C 79 1B 78 */	mr r25, r3
/* 00006318 000063DC  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 0000631C 000063E0  82 E5 00 00 */	lwz r23, _battleWorkPointer@l(r5)
/* 00006320 000063E4  80 86 00 00 */	lwz r4, 0x0(r6)
/* 00006324 000063E8  4B FF A6 85 */	bl evtGetValue
/* 00006328 000063EC  7C 60 1B 78 */	mr r0, r3
/* 0000632C 000063F0  7F 23 CB 78 */	mr r3, r25
/* 00006330 000063F4  7C 04 03 78 */	mr r4, r0
/* 00006334 000063F8  4B FF A6 75 */	bl BattleTransID
/* 00006338 000063FC  7C 64 1B 78 */	mr r4, r3
/* 0000633C 00006400  7E E3 BB 78 */	mr r3, r23
/* 00006340 00006404  4B FF A6 69 */	bl BattleGetUnitPtr
/* 00006344 00006408  2C 18 00 00 */	cmpwi r24, 0x0
/* 00006348 0000640C  83 83 03 14 */	lwz r28, 0x314(r3)
/* 0000634C 00006410  7C 7D 1B 78 */	mr r29, r3
/* 00006350 00006414  41 82 00 0C */	beq .L_0000635C
/* 00006354 00006418  38 00 00 00 */	li r0, 0x0
/* 00006358 0000641C  B0 1C 00 00 */	sth r0, 0x0(r28)
.L_0000635C:
/* 0000635C 00006420  A8 1C 00 00 */	lha r0, 0x0(r28)
/* 00006360 00006424  2C 00 00 01 */	cmpwi r0, 0x1
/* 00006364 00006428  41 82 01 44 */	beq .L_000064A8
/* 00006368 0000642C  40 80 02 8C */	bge .L_000065F4
/* 0000636C 00006430  2C 00 00 00 */	cmpwi r0, 0x0
/* 00006370 00006434  40 80 00 08 */	bge .L_00006378
/* 00006374 00006438  48 00 02 80 */	b .L_000065F4
.L_00006378:
/* 00006378 0000643C  3B 40 00 00 */	li r26, 0x0
/* 0000637C 00006440  3B 60 00 00 */	li r27, 0x0
/* 00006380 00006444  3B 20 00 00 */	li r25, 0x0
/* 00006384 00006448  3B 00 00 00 */	li r24, 0x0
.L_00006388:
/* 00006388 0000644C  7F FC C2 14 */	add r31, r28, r24
/* 0000638C 00006450  AB DF 00 04 */	lha r30, 0x4(r31)
/* 00006390 00006454  2C 1E FF FF */	cmpwi r30, -0x1
/* 00006394 00006458  41 82 00 F4 */	beq .L_00006488
/* 00006398 0000645C  7F C3 F3 78 */	mr r3, r30
/* 0000639C 00006460  4B FF A6 0D */	bl BattleAudienceGetPtr
/* 000063A0 00006464  7C 77 1B 78 */	mr r23, r3
/* 000063A4 00006468  7F C3 F3 78 */	mr r3, r30
/* 000063A8 0000646C  80 17 00 00 */	lwz r0, 0x0(r23)
/* 000063AC 00006470  38 80 00 09 */	li r4, 0x9
/* 000063B0 00006474  38 A0 00 01 */	li r5, 0x1
/* 000063B4 00006478  60 00 00 12 */	ori r0, r0, 0x12
/* 000063B8 0000647C  90 17 00 00 */	stw r0, 0x0(r23)
/* 000063BC 00006480  4B FF A5 ED */	bl BattleAudience_SetAnim
/* 000063C0 00006484  38 60 00 3C */	li r3, 0x3c
/* 000063C4 00006488  4B FF A5 E5 */	bl irand
/* 000063C8 0000648C  38 03 00 1E */	addi r0, r3, 0x1e
/* 000063CC 00006490  7F DC CA 14 */	add r30, r28, r25
/* 000063D0 00006494  B0 1F 00 CC */	sth r0, 0xcc(r31)
/* 000063D4 00006498  7F A3 EB 78 */	mr r3, r29
/* 000063D8 0000649C  38 9E 09 64 */	addi r4, r30, 0x964
/* 000063DC 000064A0  38 BE 09 68 */	addi r5, r30, 0x968
/* 000063E0 000064A4  80 F7 00 48 */	lwz r7, 0x48(r23)
/* 000063E4 000064A8  38 DE 09 6C */	addi r6, r30, 0x96c
/* 000063E8 000064AC  80 17 00 4C */	lwz r0, 0x4c(r23)
/* 000063EC 000064B0  90 FE 04 B4 */	stw r7, 0x4b4(r30)
/* 000063F0 000064B4  90 1E 04 B8 */	stw r0, 0x4b8(r30)
/* 000063F4 000064B8  80 17 00 50 */	lwz r0, 0x50(r23)
/* 000063F8 000064BC  90 1E 04 BC */	stw r0, 0x4bc(r30)
/* 000063FC 000064C0  4B FF A5 AD */	bl BtlUnit_GetPos
/* 00006400 000064C4  3C 80 00 00 */	lis r4, float_20_muj_00012aa0@ha
/* 00006404 000064C8  3C 60 00 00 */	lis r3, float_2_muj_00012aa4@ha
/* 00006408 000064CC  C0 3E 09 68 */	lfs f1, 0x968(r30)
/* 0000640C 000064D0  C0 04 00 00 */	lfs f0, float_20_muj_00012aa0@l(r4)
/* 00006410 000064D4  C0 E3 00 00 */	lfs f7, float_2_muj_00012aa4@l(r3)
/* 00006414 000064D8  38 60 00 00 */	li r3, 0x0
/* 00006418 000064DC  EC 01 00 2A */	fadds f0, f1, f0
/* 0000641C 000064E0  D0 1E 09 68 */	stfs f0, 0x968(r30)
/* 00006420 000064E4  A8 9F 00 CC */	lha r4, 0xcc(r31)
/* 00006424 000064E8  C0 3E 04 B4 */	lfs f1, 0x4b4(r30)
/* 00006428 000064EC  C0 5E 04 B8 */	lfs f2, 0x4b8(r30)
/* 0000642C 000064F0  38 84 00 3C */	addi r4, r4, 0x3c
/* 00006430 000064F4  C0 7E 04 BC */	lfs f3, 0x4bc(r30)
/* 00006434 000064F8  C0 9E 09 64 */	lfs f4, 0x964(r30)
/* 00006438 000064FC  C0 BE 09 68 */	lfs f5, 0x968(r30)
/* 0000643C 00006500  C0 DE 09 6C */	lfs f6, 0x96c(r30)
/* 00006440 00006504  4B FF A5 69 */	bl effSpiritEntry
/* 00006444 00006508  2C 1A 00 00 */	cmpwi r26, 0x0
/* 00006448 0000650C  40 82 00 40 */	bne .L_00006488
/* 0000644C 00006510  3C A0 00 00 */	lis r5, float_180_muj_00012aa8@ha
/* 00006450 00006514  3C 60 00 00 */	lis r3, float_1_muj_00012aac@ha
/* 00006454 00006518  38 C5 00 00 */	addi r6, r5, float_180_muj_00012aa8@l
/* 00006458 0000651C  3C 80 00 00 */	lis r4, float_neg1_muj_00012a9c@ha
/* 0000645C 00006520  38 A3 00 00 */	addi r5, r3, float_1_muj_00012aac@l
/* 00006460 00006524  C0 A4 00 00 */	lfs f5, float_neg1_muj_00012a9c@l(r4)
/* 00006464 00006528  C0 3E 09 64 */	lfs f1, 0x964(r30)
/* 00006468 0000652C  3B 40 00 01 */	li r26, 0x1
/* 0000646C 00006530  C0 5E 09 68 */	lfs f2, 0x968(r30)
/* 00006470 00006534  38 60 00 01 */	li r3, 0x1
/* 00006474 00006538  C0 7E 09 6C */	lfs f3, 0x96c(r30)
/* 00006478 0000653C  38 80 00 3C */	li r4, 0x3c
/* 0000647C 00006540  C0 86 00 00 */	lfs f4, 0x0(r6)
/* 00006480 00006544  C0 C5 00 00 */	lfs f6, 0x0(r5)
/* 00006484 00006548  4B FF A5 25 */	bl effKumokumoN64Entry
.L_00006488:
/* 00006488 0000654C  3B 7B 00 01 */	addi r27, r27, 0x1
/* 0000648C 00006550  3B 18 00 02 */	addi r24, r24, 0x2
/* 00006490 00006554  2C 1B 00 64 */	cmpwi r27, 0x64
/* 00006494 00006558  3B 39 00 0C */	addi r25, r25, 0xc
/* 00006498 0000655C  41 80 FE F0 */	blt .L_00006388
/* 0000649C 00006560  A8 7C 00 00 */	lha r3, 0x0(r28)
/* 000064A0 00006564  38 03 00 01 */	addi r0, r3, 0x1
/* 000064A4 00006568  B0 1C 00 00 */	sth r0, 0x0(r28)
.L_000064A8:
/* 000064A8 0000656C  38 60 00 01 */	li r3, 0x1
/* 000064AC 00006570  3B E0 00 00 */	li r31, 0x0
/* 000064B0 00006574  3B 40 00 00 */	li r26, 0x0
.L_000064B4:
/* 000064B4 00006578  7F DC D2 14 */	add r30, r28, r26
/* 000064B8 0000657C  AA FE 00 04 */	lha r23, 0x4(r30)
/* 000064BC 00006580  2C 17 FF FF */	cmpwi r23, -0x1
/* 000064C0 00006584  41 82 01 1C */	beq .L_000065DC
/* 000064C4 00006588  A8 9E 02 5C */	lha r4, 0x25c(r30)
/* 000064C8 0000658C  2C 04 00 02 */	cmpwi r4, 0x2
/* 000064CC 00006590  41 82 00 D4 */	beq .L_000065A0
/* 000064D0 00006594  40 80 00 14 */	bge .L_000064E4
/* 000064D4 00006598  2C 04 00 00 */	cmpwi r4, 0x0
/* 000064D8 0000659C  41 82 00 1C */	beq .L_000064F4
/* 000064DC 000065A0  40 80 00 44 */	bge .L_00006520
/* 000064E0 000065A4  48 00 00 FC */	b .L_000065DC
.L_000064E4:
/* 000064E4 000065A8  2C 04 00 04 */	cmpwi r4, 0x4
/* 000064E8 000065AC  41 82 00 F4 */	beq .L_000065DC
/* 000064EC 000065B0  40 80 00 F0 */	bge .L_000065DC
/* 000064F0 000065B4  48 00 00 C4 */	b .L_000065B4
.L_000064F4:
/* 000064F4 000065B8  A8 7E 00 CC */	lha r3, 0xcc(r30)
/* 000064F8 000065BC  2C 03 00 00 */	cmpwi r3, 0x0
/* 000064FC 000065C0  40 81 00 14 */	ble .L_00006510
/* 00006500 000065C4  38 03 FF FF */	subi r0, r3, 0x1
/* 00006504 000065C8  38 60 00 00 */	li r3, 0x0
/* 00006508 000065CC  B0 1E 00 CC */	sth r0, 0xcc(r30)
/* 0000650C 000065D0  48 00 00 D0 */	b .L_000065DC
.L_00006510:
/* 00006510 000065D4  38 64 00 01 */	addi r3, r4, 0x1
/* 00006514 000065D8  38 00 00 00 */	li r0, 0x0
/* 00006518 000065DC  B0 7E 02 5C */	sth r3, 0x25c(r30)
/* 0000651C 000065E0  B0 1E 01 94 */	sth r0, 0x194(r30)
.L_00006520:
/* 00006520 000065E4  A8 DE 01 94 */	lha r6, 0x194(r30)
/* 00006524 000065E8  7E E3 BB 78 */	mr r3, r23
/* 00006528 000065EC  38 81 00 10 */	addi r4, r1, 0x10
/* 0000652C 000065F0  38 A1 00 0C */	addi r5, r1, 0xc
/* 00006530 000065F4  38 06 00 01 */	addi r0, r6, 0x1
/* 00006534 000065F8  38 C1 00 08 */	addi r6, r1, 0x8
/* 00006538 000065FC  B0 1E 01 94 */	sth r0, 0x194(r30)
/* 0000653C 00006600  4B FF A4 6D */	bl BattleAudience_GetRotate
/* 00006540 00006604  3C 80 00 00 */	lis r4, zero_muj_00012a98@ha
/* 00006544 00006608  3C 60 00 00 */	lis r3, float_neg90_muj_00012ab0@ha
/* 00006548 0000660C  38 A4 00 00 */	addi r5, r4, zero_muj_00012a98@l
/* 0000654C 00006610  C0 43 00 00 */	lfs f2, float_neg90_muj_00012ab0@l(r3)
/* 00006550 00006614  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00006554 00006618  38 60 00 00 */	li r3, 0x0
/* 00006558 0000661C  A8 9E 01 94 */	lha r4, 0x194(r30)
/* 0000655C 00006620  38 A0 00 1E */	li r5, 0x1e
/* 00006560 00006624  4B FF A4 49 */	bl intplGetValue
/* 00006564 00006628  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 00006568 0000662C  FC 20 08 18 */	frsp f1, f1
/* 0000656C 00006630  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 00006570 00006634  7E E3 BB 78 */	mr r3, r23
/* 00006574 00006638  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 00006578 0000663C  4B FF A4 31 */	bl BattleAudience_SetRotate
/* 0000657C 00006640  A8 1E 01 94 */	lha r0, 0x194(r30)
/* 00006580 00006644  2C 00 00 1E */	cmpwi r0, 0x1e
/* 00006584 00006648  41 80 00 14 */	blt .L_00006598
/* 00006588 0000664C  A8 7E 02 5C */	lha r3, 0x25c(r30)
/* 0000658C 00006650  38 03 00 01 */	addi r0, r3, 0x1
/* 00006590 00006654  B0 1E 02 5C */	sth r0, 0x25c(r30)
/* 00006594 00006658  48 00 00 0C */	b .L_000065A0
.L_00006598:
/* 00006598 0000665C  38 60 00 00 */	li r3, 0x0
/* 0000659C 00006660  48 00 00 40 */	b .L_000065DC
.L_000065A0:
/* 000065A0 00006664  38 00 00 00 */	li r0, 0x0
/* 000065A4 00006668  B0 1E 01 94 */	sth r0, 0x194(r30)
/* 000065A8 0000666C  A8 7E 02 5C */	lha r3, 0x25c(r30)
/* 000065AC 00006670  38 03 00 01 */	addi r0, r3, 0x1
/* 000065B0 00006674  B0 1E 02 5C */	sth r0, 0x25c(r30)
.L_000065B4:
/* 000065B4 00006678  A8 7E 01 94 */	lha r3, 0x194(r30)
/* 000065B8 0000667C  38 03 00 01 */	addi r0, r3, 0x1
/* 000065BC 00006680  B0 1E 01 94 */	sth r0, 0x194(r30)
/* 000065C0 00006684  A8 1E 01 94 */	lha r0, 0x194(r30)
/* 000065C4 00006688  2C 00 00 3C */	cmpwi r0, 0x3c
/* 000065C8 0000668C  41 80 00 10 */	blt .L_000065D8
/* 000065CC 00006690  A8 7E 02 5C */	lha r3, 0x25c(r30)
/* 000065D0 00006694  38 03 00 01 */	addi r0, r3, 0x1
/* 000065D4 00006698  B0 1E 02 5C */	sth r0, 0x25c(r30)
.L_000065D8:
/* 000065D8 0000669C  38 60 00 00 */	li r3, 0x0
.L_000065DC:
/* 000065DC 000066A0  3B FF 00 01 */	addi r31, r31, 0x1
/* 000065E0 000066A4  3B 5A 00 02 */	addi r26, r26, 0x2
/* 000065E4 000066A8  2C 1F 00 64 */	cmpwi r31, 0x64
/* 000065E8 000066AC  41 80 FE CC */	blt .L_000064B4
/* 000065EC 000066B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 000065F0 000066B4  41 82 00 0C */	beq .L_000065FC
.L_000065F4:
/* 000065F4 000066B8  38 60 00 02 */	li r3, 0x2
/* 000065F8 000066BC  48 00 00 08 */	b .L_00006600
.L_000065FC:
/* 000065FC 000066C0  38 60 00 00 */	li r3, 0x0
.L_00006600:
/* 00006600 000066C4  BA E1 00 1C */	lmw r23, 0x1c(r1)
/* 00006604 000066C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00006608 000066CC  7C 08 03 A6 */	mtlr r0
/* 0000660C 000066D0  38 21 00 40 */	addi r1, r1, 0x40
/* 00006610 000066D4  4E 80 00 20 */	blr
.endfn _cortez_collect_energy

# .text:0x614 | 0x6614 | size: 0xEC
.fn _cortez_check_drain_audience, local
/* 00006614 000066D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00006618 000066DC  7C 08 02 A6 */	mflr r0
/* 0000661C 000066E0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006620 000066E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 00006624 000066E8  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 00006628 000066EC  7C 7C 1B 78 */	mr r28, r3
/* 0000662C 000066F0  83 43 00 18 */	lwz r26, 0x18(r3)
/* 00006630 000066F4  83 24 00 00 */	lwz r25, _battleWorkPointer@l(r4)
/* 00006634 000066F8  80 9A 00 00 */	lwz r4, 0x0(r26)
/* 00006638 000066FC  4B FF A3 71 */	bl evtGetValue
/* 0000663C 00006700  83 FA 00 04 */	lwz r31, 0x4(r26)
/* 00006640 00006704  7C 64 1B 78 */	mr r4, r3
/* 00006644 00006708  7F 83 E3 78 */	mr r3, r28
/* 00006648 0000670C  4B FF A3 61 */	bl BattleTransID
/* 0000664C 00006710  7C 64 1B 78 */	mr r4, r3
/* 00006650 00006714  7F 23 CB 78 */	mr r3, r25
/* 00006654 00006718  4B FF A3 55 */	bl BattleGetUnitPtr
/* 00006658 0000671C  83 C3 03 14 */	lwz r30, 0x314(r3)
/* 0000665C 00006720  3B 40 00 00 */	li r26, 0x0
/* 00006660 00006724  3B A0 00 00 */	li r29, 0x0
/* 00006664 00006728  3B 60 00 00 */	li r27, 0x0
/* 00006668 0000672C  B3 5E 00 02 */	sth r26, 0x2(r30)
.L_0000666C:
/* 0000666C 00006730  38 60 00 0A */	li r3, 0xa
/* 00006670 00006734  7F 3E D2 14 */	add r25, r30, r26
/* 00006674 00006738  7C 1D 1B D6 */	divw r0, r29, r3
/* 00006678 0000673C  38 80 FF FF */	li r4, -0x1
/* 0000667C 00006740  B0 99 00 04 */	sth r4, 0x4(r25)
/* 00006680 00006744  38 9B 03 24 */	addi r4, r27, 0x324
/* 00006684 00006748  38 A0 00 00 */	li r5, 0x0
/* 00006688 0000674C  7C BE 21 2E */	stwx r5, r30, r4
/* 0000668C 00006750  7C 60 19 D6 */	mullw r3, r0, r3
/* 00006690 00006754  B0 B9 02 5C */	sth r5, 0x25c(r25)
/* 00006694 00006758  1C 00 00 14 */	mulli r0, r0, 0x14
/* 00006698 0000675C  7C 63 E8 50 */	subf r3, r3, r29
/* 0000669C 00006760  7F 00 1A 14 */	add r24, r0, r3
/* 000066A0 00006764  3B 18 00 0A */	addi r24, r24, 0xa
/* 000066A4 00006768  7F 03 C3 78 */	mr r3, r24
/* 000066A8 0000676C  4B FF A3 01 */	bl BattleAudience_GetExist
/* 000066AC 00006770  54 60 06 3F */	clrlwi. r0, r3, 24
/* 000066B0 00006774  41 82 00 14 */	beq .L_000066C4
/* 000066B4 00006778  B3 19 00 04 */	sth r24, 0x4(r25)
/* 000066B8 0000677C  A8 7E 00 02 */	lha r3, 0x2(r30)
/* 000066BC 00006780  38 03 00 01 */	addi r0, r3, 0x1
/* 000066C0 00006784  B0 1E 00 02 */	sth r0, 0x2(r30)
.L_000066C4:
/* 000066C4 00006788  3B BD 00 01 */	addi r29, r29, 0x1
/* 000066C8 0000678C  3B 5A 00 02 */	addi r26, r26, 0x2
/* 000066CC 00006790  2C 1D 00 64 */	cmpwi r29, 0x64
/* 000066D0 00006794  3B 7B 00 04 */	addi r27, r27, 0x4
/* 000066D4 00006798  41 80 FF 98 */	blt .L_0000666C
/* 000066D8 0000679C  A8 BE 00 02 */	lha r5, 0x2(r30)
/* 000066DC 000067A0  7F 83 E3 78 */	mr r3, r28
/* 000066E0 000067A4  7F E4 FB 78 */	mr r4, r31
/* 000066E4 000067A8  4B FF A2 C5 */	bl evtSetValue
/* 000066E8 000067AC  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 000066EC 000067B0  38 60 00 02 */	li r3, 0x2
/* 000066F0 000067B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000066F4 000067B8  7C 08 03 A6 */	mtlr r0
/* 000066F8 000067BC  38 21 00 30 */	addi r1, r1, 0x30
/* 000066FC 000067C0  4E 80 00 20 */	blr
.endfn _cortez_check_drain_audience

# .text:0x700 | 0x6700 | size: 0x50
.fn unk_muj_000067c4, local
/* 00006700 000067C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006704 000067C8  7C 08 02 A6 */	mflr r0
/* 00006708 000067CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000670C 000067D0  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00006710 000067D4  7C 7E 1B 78 */	mr r30, r3
/* 00006714 000067D8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00006718 000067DC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000671C 000067E0  4B FF A2 8D */	bl evtGetValue
/* 00006720 000067E4  83 FF 00 04 */	lwz r31, 0x4(r31)
/* 00006724 000067E8  4B FF A2 85 */	bl psndSFX_get_vol
/* 00006728 000067EC  54 65 06 3E */	clrlwi r5, r3, 24
/* 0000672C 000067F0  7F C3 F3 78 */	mr r3, r30
/* 00006730 000067F4  7F E4 FB 78 */	mr r4, r31
/* 00006734 000067F8  4B FF A2 75 */	bl evtSetValue
/* 00006738 000067FC  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000673C 00006800  38 60 00 02 */	li r3, 0x2
/* 00006740 00006804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006744 00006808  7C 08 03 A6 */	mtlr r0
/* 00006748 0000680C  38 21 00 10 */	addi r1, r1, 0x10
/* 0000674C 00006810  4E 80 00 20 */	blr
.endfn unk_muj_000067c4

# .text:0x750 | 0x6750 | size: 0x6C
.fn _make_cortez_work_area, local
/* 00006750 00006814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006754 00006818  7C 08 02 A6 */	mflr r0
/* 00006758 0000681C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000675C 00006820  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006760 00006824  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00006764 00006828  7C 7E 1B 78 */	mr r30, r3
/* 00006768 0000682C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 0000676C 00006830  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 00006770 00006834  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00006774 00006838  4B FF A2 35 */	bl evtGetValue
/* 00006778 0000683C  7C 60 1B 78 */	mr r0, r3
/* 0000677C 00006840  7F C3 F3 78 */	mr r3, r30
/* 00006780 00006844  7C 04 03 78 */	mr r4, r0
/* 00006784 00006848  4B FF A2 25 */	bl BattleTransID
/* 00006788 0000684C  7C 64 1B 78 */	mr r4, r3
/* 0000678C 00006850  7F E3 FB 78 */	mr r3, r31
/* 00006790 00006854  4B FF A2 19 */	bl BattleGetUnitPtr
/* 00006794 00006858  7C 7F 1B 78 */	mr r31, r3
/* 00006798 0000685C  38 60 0E 14 */	li r3, 0xe14
/* 0000679C 00006860  4B FF A2 0D */	bl BattleAlloc
/* 000067A0 00006864  90 7F 03 14 */	stw r3, 0x314(r31)
/* 000067A4 00006868  38 60 00 02 */	li r3, 0x2
/* 000067A8 0000686C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000067AC 00006870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000067B0 00006874  7C 08 03 A6 */	mtlr r0
/* 000067B4 00006878  38 21 00 10 */	addi r1, r1, 0x10
/* 000067B8 0000687C  4E 80 00 20 */	blr
.endfn _make_cortez_work_area

# 0x00004778..0x00004E08 | size: 0x690
.rodata
.balign 8

# .rodata:0x0 | 0x4778 | size: 0xE
.obj str_btl_un_cortez_muj_00012428, local
	.string "btl_un_cortez"
.endobj str_btl_un_cortez_muj_00012428

# .rodata:0xE | 0x4786 | size: 0x2
.obj gap_03_00004786_rodata, global
.hidden gap_03_00004786_rodata
	.2byte 0x0000
.endobj gap_03_00004786_rodata

# .rodata:0x10 | 0x4788 | size: 0x16
.obj str_SFX_BOSS_KOR_DAMAGED_muj_00012438, local
	.string "SFX_BOSS_KOR_DAMAGED1"
.endobj str_SFX_BOSS_KOR_DAMAGED_muj_00012438

# .rodata:0x26 | 0x479E | size: 0x2
.obj gap_03_0000479E_rodata, global
.hidden gap_03_0000479E_rodata
	.2byte 0x0000
.endobj gap_03_0000479E_rodata

# .rodata:0x28 | 0x47A0 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_muj_00012450, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_muj_00012450

# .rodata:0x3D | 0x47B5 | size: 0x3
.obj gap_03_000047B5_rodata, global
.hidden gap_03_000047B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000047B5_rodata

# .rodata:0x40 | 0x47B8 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_muj_00012468, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_muj_00012468

# .rodata:0x54 | 0x47CC | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_muj_0001247c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_muj_0001247c

# .rodata:0x6D | 0x47E5 | size: 0x3
.obj gap_03_000047E5_rodata, global
.hidden gap_03_000047E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000047E5_rodata

# .rodata:0x70 | 0x47E8 | size: 0x9
.obj str_KRT_1S_1_muj_00012498, local
	.string "KRT_1S_1"
.endobj str_KRT_1S_1_muj_00012498

# .rodata:0x79 | 0x47F1 | size: 0x3
.obj gap_03_000047F1_rodata, global
.hidden gap_03_000047F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000047F1_rodata

# .rodata:0x7C | 0x47F4 | size: 0x13
.obj str_SFX_BOSS_KOR_WAIT1_muj_000124a4, local
	.string "SFX_BOSS_KOR_WAIT1"
.endobj str_SFX_BOSS_KOR_WAIT1_muj_000124a4

# .rodata:0x8F | 0x4807 | size: 0x1
.obj gap_03_00004807_rodata, global
.hidden gap_03_00004807_rodata
	.byte 0x00
.endobj gap_03_00004807_rodata

# .rodata:0x90 | 0x4808 | size: 0xA
.obj str_KRT_1S2_1_muj_000124b8, local
	.string "KRT_1S2_1"
.endobj str_KRT_1S2_1_muj_000124b8

# .rodata:0x9A | 0x4812 | size: 0x2
.obj gap_03_00004812_rodata, global
.hidden gap_03_00004812_rodata
	.2byte 0x0000
.endobj gap_03_00004812_rodata

# .rodata:0x9C | 0x4814 | size: 0x9
.obj str_KRT_1S_2_muj_000124c4, local
	.string "KRT_1S_2"
.endobj str_KRT_1S_2_muj_000124c4

# .rodata:0xA5 | 0x481D | size: 0x3
.obj gap_03_0000481D_rodata, global
.hidden gap_03_0000481D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000481D_rodata

# .rodata:0xA8 | 0x4820 | size: 0xA
.obj str_KRT_1S2_2_muj_000124d0, local
	.string "KRT_1S2_2"
.endobj str_KRT_1S2_2_muj_000124d0

# .rodata:0xB2 | 0x482A | size: 0x2
.obj gap_03_0000482A_rodata, global
.hidden gap_03_0000482A_rodata
	.2byte 0x0000
.endobj gap_03_0000482A_rodata

# .rodata:0xB4 | 0x482C | size: 0x9
.obj str_KRT_2S_1_muj_000124dc, local
	.string "KRT_2S_1"
.endobj str_KRT_2S_1_muj_000124dc

# .rodata:0xBD | 0x4835 | size: 0x3
.obj gap_03_00004835_rodata, global
.hidden gap_03_00004835_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004835_rodata

# .rodata:0xC0 | 0x4838 | size: 0xA
.obj str_KRT_2S2_1_muj_000124e8, local
	.string "KRT_2S2_1"
.endobj str_KRT_2S2_1_muj_000124e8

# .rodata:0xCA | 0x4842 | size: 0x2
.obj gap_03_00004842_rodata, global
.hidden gap_03_00004842_rodata
	.2byte 0x0000
.endobj gap_03_00004842_rodata

# .rodata:0xCC | 0x4844 | size: 0x9
.obj str_KRT_2S_2_muj_000124f4, local
	.string "KRT_2S_2"
.endobj str_KRT_2S_2_muj_000124f4

# .rodata:0xD5 | 0x484D | size: 0x3
.obj gap_03_0000484D_rodata, global
.hidden gap_03_0000484D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000484D_rodata

# .rodata:0xD8 | 0x4850 | size: 0xA
.obj str_KRT_2S2_2_muj_00012500, local
	.string "KRT_2S2_2"
.endobj str_KRT_2S2_2_muj_00012500

# .rodata:0xE2 | 0x485A | size: 0x2
.obj gap_03_0000485A_rodata, global
.hidden gap_03_0000485A_rodata
	.2byte 0x0000
.endobj gap_03_0000485A_rodata

# .rodata:0xE4 | 0x485C | size: 0x9
.obj str_KRT_3S_1_muj_0001250c, local
	.string "KRT_3S_1"
.endobj str_KRT_3S_1_muj_0001250c

# .rodata:0xED | 0x4865 | size: 0x3
.obj gap_03_00004865_rodata, global
.hidden gap_03_00004865_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004865_rodata

# .rodata:0xF0 | 0x4868 | size: 0xA
.obj str_KRT_3S3_1_muj_00012518, local
	.string "KRT_3S3_1"
.endobj str_KRT_3S3_1_muj_00012518

# .rodata:0xFA | 0x4872 | size: 0x2
.obj gap_03_00004872_rodata, global
.hidden gap_03_00004872_rodata
	.2byte 0x0000
.endobj gap_03_00004872_rodata

# .rodata:0xFC | 0x4874 | size: 0x9
.obj str_KRT_3S_2_muj_00012524, local
	.string "KRT_3S_2"
.endobj str_KRT_3S_2_muj_00012524

# .rodata:0x105 | 0x487D | size: 0x3
.obj gap_03_0000487D_rodata, global
.hidden gap_03_0000487D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000487D_rodata

# .rodata:0x108 | 0x4880 | size: 0xA
.obj str_KRT_3S3_2_muj_00012530, local
	.string "KRT_3S3_2"
.endobj str_KRT_3S3_2_muj_00012530

# .rodata:0x112 | 0x488A | size: 0x2
.obj gap_03_0000488A_rodata, global
.hidden gap_03_0000488A_rodata
	.2byte 0x0000
.endobj gap_03_0000488A_rodata

# .rodata:0x114 | 0x488C | size: 0x8
.obj str_KRT_N_1_muj_0001253c, local
	.string "KRT_N_1"
.endobj str_KRT_N_1_muj_0001253c

# .rodata:0x11C | 0x4894 | size: 0x8
.obj str_KRT_K_1_muj_00012544, local
	.string "KRT_K_1"
.endobj str_KRT_K_1_muj_00012544

# .rodata:0x124 | 0x489C | size: 0x8
.obj str_KRT_Z_1_muj_0001254c, local
	.string "KRT_Z_1"
.endobj str_KRT_Z_1_muj_0001254c

# .rodata:0x12C | 0x48A4 | size: 0x8
.obj str_KRT_X_1_muj_00012554, local
	.string "KRT_X_1"
.endobj str_KRT_X_1_muj_00012554

# .rodata:0x134 | 0x48AC | size: 0x8
.obj str_KRT_S_1_muj_0001255c, local
	.string "KRT_S_1"
.endobj str_KRT_S_1_muj_0001255c

# .rodata:0x13C | 0x48B4 | size: 0x9
.obj str_KRT_D1_1_muj_00012564, local
	.string "KRT_D1_1"
.endobj str_KRT_D1_1_muj_00012564

# .rodata:0x145 | 0x48BD | size: 0x3
.obj gap_03_000048BD_rodata, global
.hidden gap_03_000048BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000048BD_rodata

# .rodata:0x148 | 0x48C0 | size: 0x9
.obj str_KRT_D1_2_muj_00012570, local
	.string "KRT_D1_2"
.endobj str_KRT_D1_2_muj_00012570

# .rodata:0x151 | 0x48C9 | size: 0x3
.obj gap_03_000048C9_rodata, global
.hidden gap_03_000048C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000048C9_rodata

# .rodata:0x154 | 0x48CC | size: 0x9
.obj str_KRT_1D_1_muj_0001257c, local
	.string "KRT_1D_1"
.endobj str_KRT_1D_1_muj_0001257c

# .rodata:0x15D | 0x48D5 | size: 0x3
.obj gap_03_000048D5_rodata, global
.hidden gap_03_000048D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000048D5_rodata

# .rodata:0x160 | 0x48D8 | size: 0xA
.obj str_KRT_1D2_1_muj_00012588, local
	.string "KRT_1D2_1"
.endobj str_KRT_1D2_1_muj_00012588

# .rodata:0x16A | 0x48E2 | size: 0x2
.obj gap_03_000048E2_rodata, global
.hidden gap_03_000048E2_rodata
	.2byte 0x0000
.endobj gap_03_000048E2_rodata

# .rodata:0x16C | 0x48E4 | size: 0x9
.obj str_KRT_1D_2_muj_00012594, local
	.string "KRT_1D_2"
.endobj str_KRT_1D_2_muj_00012594

# .rodata:0x175 | 0x48ED | size: 0x3
.obj gap_03_000048ED_rodata, global
.hidden gap_03_000048ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000048ED_rodata

# .rodata:0x178 | 0x48F0 | size: 0xA
.obj str_KRT_1D2_2_muj_000125a0, local
	.string "KRT_1D2_2"
.endobj str_KRT_1D2_2_muj_000125a0

# .rodata:0x182 | 0x48FA | size: 0x2
.obj gap_03_000048FA_rodata, global
.hidden gap_03_000048FA_rodata
	.2byte 0x0000
.endobj gap_03_000048FA_rodata

# .rodata:0x184 | 0x48FC | size: 0x9
.obj str_KRT_2D_1_muj_000125ac, local
	.string "KRT_2D_1"
.endobj str_KRT_2D_1_muj_000125ac

# .rodata:0x18D | 0x4905 | size: 0x3
.obj gap_03_00004905_rodata, global
.hidden gap_03_00004905_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004905_rodata

# .rodata:0x190 | 0x4908 | size: 0xA
.obj str_KRT_2D2_1_muj_000125b8, local
	.string "KRT_2D2_1"
.endobj str_KRT_2D2_1_muj_000125b8

# .rodata:0x19A | 0x4912 | size: 0x2
.obj gap_03_00004912_rodata, global
.hidden gap_03_00004912_rodata
	.2byte 0x0000
.endobj gap_03_00004912_rodata

# .rodata:0x19C | 0x4914 | size: 0x9
.obj str_KRT_2D_2_muj_000125c4, local
	.string "KRT_2D_2"
.endobj str_KRT_2D_2_muj_000125c4

# .rodata:0x1A5 | 0x491D | size: 0x3
.obj gap_03_0000491D_rodata, global
.hidden gap_03_0000491D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000491D_rodata

# .rodata:0x1A8 | 0x4920 | size: 0xA
.obj str_KRT_2D2_2_muj_000125d0, local
	.string "KRT_2D2_2"
.endobj str_KRT_2D2_2_muj_000125d0

# .rodata:0x1B2 | 0x492A | size: 0x2
.obj gap_03_0000492A_rodata, global
.hidden gap_03_0000492A_rodata
	.2byte 0x0000
.endobj gap_03_0000492A_rodata

# .rodata:0x1B4 | 0x492C | size: 0x9
.obj str_KRT_3D_2_muj_000125dc, local
	.string "KRT_3D_2"
.endobj str_KRT_3D_2_muj_000125dc

# .rodata:0x1BD | 0x4935 | size: 0x3
.obj gap_03_00004935_rodata, global
.hidden gap_03_00004935_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004935_rodata

# .rodata:0x1C0 | 0x4938 | size: 0xA
.obj str_KRT_3D3_2_muj_000125e8, local
	.string "KRT_3D3_2"
.endobj str_KRT_3D3_2_muj_000125e8

# .rodata:0x1CA | 0x4942 | size: 0x2
.obj gap_03_00004942_rodata, global
.hidden gap_03_00004942_rodata
	.2byte 0x0000
.endobj gap_03_00004942_rodata

# .rodata:0x1CC | 0x4944 | size: 0x8
.obj str_KRT_D_2_muj_000125f4, local
	.string "KRT_D_2"
.endobj str_KRT_D_2_muj_000125f4

# .rodata:0x1D4 | 0x494C | size: 0x8
.obj str_KRT_D_1_muj_000125fc, local
	.string "KRT_D_1"
.endobj str_KRT_D_1_muj_000125fc

# .rodata:0x1DC | 0x4954 | size: 0xC
.obj str_c_korutesu1_muj_00012604, local
	.string "c_korutesu1"
.endobj str_c_korutesu1_muj_00012604

# .rodata:0x1E8 | 0x4960 | size: 0xC
.obj str_c_otitabuki_muj_00012610, local
	.string "c_otitabuki"
.endobj str_c_otitabuki_muj_00012610

# .rodata:0x1F4 | 0x496C | size: 0x10
.obj str_btl_un_honeduka_muj_0001261c, local
	.string "btl_un_honeduka"
.endobj str_btl_un_honeduka_muj_0001261c

# .rodata:0x204 | 0x497C | size: 0xB
.obj str_c_honezuka_muj_0001262c, local
	.string "c_honezuka"
.endobj str_c_honezuka_muj_0001262c

# .rodata:0x20F | 0x4987 | size: 0x1
.obj gap_03_00004987_rodata, global
.hidden gap_03_00004987_rodata
	.byte 0x00
.endobj gap_03_00004987_rodata

# .rodata:0x210 | 0x4988 | size: 0x8
.obj str_c_hone2_muj_00012638, local
	.string "c_hone2"
.endobj str_c_hone2_muj_00012638

# .rodata:0x218 | 0x4990 | size: 0x7
.obj str_c_hone_muj_00012640, local
	.string "c_hone"
.endobj str_c_hone_muj_00012640

# .rodata:0x21F | 0x4997 | size: 0x1
.obj gap_03_00004997_rodata, global
.hidden gap_03_00004997_rodata
	.byte 0x00
.endobj gap_03_00004997_rodata

# .rodata:0x220 | 0x4998 | size: 0x9
.obj str_KRT_A3_1_muj_00012648, local
	.string "KRT_A3_1"
.endobj str_KRT_A3_1_muj_00012648

# .rodata:0x229 | 0x49A1 | size: 0x3
.obj gap_03_000049A1_rodata, global
.hidden gap_03_000049A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049A1_rodata

# .rodata:0x22C | 0x49A4 | size: 0x1
.obj zero_muj_00012654, local
	.byte 0x00
.endobj zero_muj_00012654

# .rodata:0x22D | 0x49A5 | size: 0x3
.obj gap_03_000049A5_rodata, global
.hidden gap_03_000049A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049A5_rodata

# .rodata:0x230 | 0x49A8 | size: 0xB
.obj str_toge_flush_muj_00012658, local
	.string "toge_flush"
.endobj str_toge_flush_muj_00012658

# .rodata:0x23B | 0x49B3 | size: 0x1
.obj gap_03_000049B3_rodata, global
.hidden gap_03_000049B3_rodata
	.byte 0x00
.endobj gap_03_000049B3_rodata

# .rodata:0x23C | 0x49B4 | size: 0x1A
.obj str_SFX_BOSS_KOR_RIB_COU_muj_00012664, local
	.string "SFX_BOSS_KOR_RIB_COUNTER1"
.endobj str_SFX_BOSS_KOR_RIB_COU_muj_00012664

# .rodata:0x256 | 0x49CE | size: 0x2
.obj gap_03_000049CE_rodata, global
.hidden gap_03_000049CE_rodata
	.2byte 0x0000
.endobj gap_03_000049CE_rodata

# .rodata:0x258 | 0x49D0 | size: 0x9
.obj str_KRT_1C_3_muj_00012680, local
	.string "KRT_1C_3"
.endobj str_KRT_1C_3_muj_00012680

# .rodata:0x261 | 0x49D9 | size: 0x3
.obj gap_03_000049D9_rodata, global
.hidden gap_03_000049D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049D9_rodata

# .rodata:0x264 | 0x49DC | size: 0x9
.obj str_KRT_2C_3_muj_0001268c, local
	.string "KRT_2C_3"
.endobj str_KRT_2C_3_muj_0001268c

# .rodata:0x26D | 0x49E5 | size: 0x3
.obj gap_03_000049E5_rodata, global
.hidden gap_03_000049E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049E5_rodata

# .rodata:0x270 | 0x49E8 | size: 0x9
.obj str_KRT_3C_3_muj_00012698, local
	.string "KRT_3C_3"
.endobj str_KRT_3C_3_muj_00012698

# .rodata:0x279 | 0x49F1 | size: 0x3
.obj gap_03_000049F1_rodata, global
.hidden gap_03_000049F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049F1_rodata

# .rodata:0x27C | 0x49F4 | size: 0x9
.obj str_KRT_2B_1_muj_000126a4, local
	.string "KRT_2B_1"
.endobj str_KRT_2B_1_muj_000126a4

# .rodata:0x285 | 0x49FD | size: 0x3
.obj gap_03_000049FD_rodata, global
.hidden gap_03_000049FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049FD_rodata

# .rodata:0x288 | 0x4A00 | size: 0x13
.obj str_SFX_BOSS_KOR_MOVE2_muj_000126b0, local
	.string "SFX_BOSS_KOR_MOVE2"
.endobj str_SFX_BOSS_KOR_MOVE2_muj_000126b0

# .rodata:0x29B | 0x4A13 | size: 0x1
.obj gap_03_00004A13_rodata, global
.hidden gap_03_00004A13_rodata
	.byte 0x00
.endobj gap_03_00004A13_rodata

# .rodata:0x29C | 0x4A14 | size: 0x9
.obj str_KRT_3B_1_muj_000126c4, local
	.string "KRT_3B_1"
.endobj str_KRT_3B_1_muj_000126c4

# .rodata:0x2A5 | 0x4A1D | size: 0x3
.obj gap_03_00004A1D_rodata, global
.hidden gap_03_00004A1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A1D_rodata

# .rodata:0x2A8 | 0x4A20 | size: 0x9
.obj str_KRT_1A_1_muj_000126d0, local
	.string "KRT_1A_1"
.endobj str_KRT_1A_1_muj_000126d0

# .rodata:0x2B1 | 0x4A29 | size: 0x3
.obj gap_03_00004A29_rodata, global
.hidden gap_03_00004A29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A29_rodata

# .rodata:0x2B4 | 0x4A2C | size: 0x9
.obj str_KRT_1A_3_muj_000126dc, local
	.string "KRT_1A_3"
.endobj str_KRT_1A_3_muj_000126dc

# .rodata:0x2BD | 0x4A35 | size: 0x3
.obj gap_03_00004A35_rodata, global
.hidden gap_03_00004A35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A35_rodata

# .rodata:0x2C0 | 0x4A38 | size: 0x9
.obj str_KRT_1A_2_muj_000126e8, local
	.string "KRT_1A_2"
.endobj str_KRT_1A_2_muj_000126e8

# .rodata:0x2C9 | 0x4A41 | size: 0x3
.obj gap_03_00004A41_rodata, global
.hidden gap_03_00004A41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A41_rodata

# .rodata:0x2CC | 0x4A44 | size: 0x9
.obj str_KRT_1A_4_muj_000126f4, local
	.string "KRT_1A_4"
.endobj str_KRT_1A_4_muj_000126f4

# .rodata:0x2D5 | 0x4A4D | size: 0x3
.obj gap_03_00004A4D_rodata, global
.hidden gap_03_00004A4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A4D_rodata

# .rodata:0x2D8 | 0x4A50 | size: 0x1A
.obj str_SFX_BOSS_KOR_HEAD_AT_muj_00012700, local
	.string "SFX_BOSS_KOR_HEAD_ATTACK1"
.endobj str_SFX_BOSS_KOR_HEAD_AT_muj_00012700

# .rodata:0x2F2 | 0x4A6A | size: 0x2
.obj gap_03_00004A6A_rodata, global
.hidden gap_03_00004A6A_rodata
	.2byte 0x0000
.endobj gap_03_00004A6A_rodata

# .rodata:0x2F4 | 0x4A6C | size: 0x1A
.obj str_SFX_BOSS_KOR_HEAD_AT_muj_0001271c, local
	.string "SFX_BOSS_KOR_HEAD_ATTACK2"
.endobj str_SFX_BOSS_KOR_HEAD_AT_muj_0001271c

# .rodata:0x30E | 0x4A86 | size: 0x2
.obj gap_03_00004A86_rodata, global
.hidden gap_03_00004A86_rodata
	.2byte 0x0000
.endobj gap_03_00004A86_rodata

# .rodata:0x310 | 0x4A88 | size: 0x9
.obj str_KRT_2A_1_muj_00012738, local
	.string "KRT_2A_1"
.endobj str_KRT_2A_1_muj_00012738

# .rodata:0x319 | 0x4A91 | size: 0x3
.obj gap_03_00004A91_rodata, global
.hidden gap_03_00004A91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A91_rodata

# .rodata:0x31C | 0x4A94 | size: 0xA
.obj str_KRT_2A1_1_muj_00012744, local
	.string "KRT_2A1_1"
.endobj str_KRT_2A1_1_muj_00012744

# .rodata:0x326 | 0x4A9E | size: 0x2
.obj gap_03_00004A9E_rodata, global
.hidden gap_03_00004A9E_rodata
	.2byte 0x0000
.endobj gap_03_00004A9E_rodata

# .rodata:0x328 | 0x4AA0 | size: 0x9
.obj str_KRT_2A_2_muj_00012750, local
	.string "KRT_2A_2"
.endobj str_KRT_2A_2_muj_00012750

# .rodata:0x331 | 0x4AA9 | size: 0x3
.obj gap_03_00004AA9_rodata, global
.hidden gap_03_00004AA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004AA9_rodata

# .rodata:0x334 | 0x4AAC | size: 0xA
.obj str_KRT_2A2_2_muj_0001275c, local
	.string "KRT_2A2_2"
.endobj str_KRT_2A2_2_muj_0001275c

# .rodata:0x33E | 0x4AB6 | size: 0x2
.obj gap_03_00004AB6_rodata, global
.hidden gap_03_00004AB6_rodata
	.2byte 0x0000
.endobj gap_03_00004AB6_rodata

# .rodata:0x340 | 0x4AB8 | size: 0x9
.obj str_KRT_2A_3_muj_00012768, local
	.string "KRT_2A_3"
.endobj str_KRT_2A_3_muj_00012768

# .rodata:0x349 | 0x4AC1 | size: 0x3
.obj gap_03_00004AC1_rodata, global
.hidden gap_03_00004AC1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004AC1_rodata

# .rodata:0x34C | 0x4AC4 | size: 0xA
.obj str_KRT_2A3_3_muj_00012774, local
	.string "KRT_2A3_3"
.endobj str_KRT_2A3_3_muj_00012774

# .rodata:0x356 | 0x4ACE | size: 0x2
.obj gap_03_00004ACE_rodata, global
.hidden gap_03_00004ACE_rodata
	.2byte 0x0000
.endobj gap_03_00004ACE_rodata

# .rodata:0x358 | 0x4AD0 | size: 0x15
.obj str_SFX_BOSS_KOR_INHALE1_muj_00012780, local
	.string "SFX_BOSS_KOR_INHALE1"
.endobj str_SFX_BOSS_KOR_INHALE1_muj_00012780

# .rodata:0x36D | 0x4AE5 | size: 0x3
.obj gap_03_00004AE5_rodata, global
.hidden gap_03_00004AE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004AE5_rodata

# .rodata:0x370 | 0x4AE8 | size: 0x9
.obj str_KRT_3A_1_muj_00012798, local
	.string "KRT_3A_1"
.endobj str_KRT_3A_1_muj_00012798

# .rodata:0x379 | 0x4AF1 | size: 0x3
.obj gap_03_00004AF1_rodata, global
.hidden gap_03_00004AF1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004AF1_rodata

# .rodata:0x37C | 0x4AF4 | size: 0x9
.obj str_KRT_3A_2_muj_000127a4, local
	.string "KRT_3A_2"
.endobj str_KRT_3A_2_muj_000127a4

# .rodata:0x385 | 0x4AFD | size: 0x3
.obj gap_03_00004AFD_rodata, global
.hidden gap_03_00004AFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004AFD_rodata

# .rodata:0x388 | 0x4B00 | size: 0x9
.obj str_KRT_3A_3_muj_000127b0, local
	.string "KRT_3A_3"
.endobj str_KRT_3A_3_muj_000127b0

# .rodata:0x391 | 0x4B09 | size: 0x3
.obj gap_03_00004B09_rodata, global
.hidden gap_03_00004B09_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004B09_rodata

# .rodata:0x394 | 0x4B0C | size: 0x17
.obj str_SFX_BOSS_KOR_BONE_FL_muj_000127bc, local
	.string "SFX_BOSS_KOR_BONE_FLY1"
.endobj str_SFX_BOSS_KOR_BONE_FL_muj_000127bc

# .rodata:0x3AB | 0x4B23 | size: 0x1
.obj gap_03_00004B23_rodata, global
.hidden gap_03_00004B23_rodata
	.byte 0x00
.endobj gap_03_00004B23_rodata

# .rodata:0x3AC | 0x4B24 | size: 0x8
.obj str_KRT_A_1_muj_000127d4, local
	.string "KRT_A_1"
.endobj str_KRT_A_1_muj_000127d4

# .rodata:0x3B4 | 0x4B2C | size: 0x8
.obj str_KRT_T_1_muj_000127dc, local
	.string "KRT_T_1"
.endobj str_KRT_T_1_muj_000127dc

# .rodata:0x3BC | 0x4B34 | size: 0x11
.obj str_stg5_dou_24_bt01_muj_000127e4, local
	.string "stg5_dou_24_bt01"
.endobj str_stg5_dou_24_bt01_muj_000127e4

# .rodata:0x3CD | 0x4B45 | size: 0x3
.obj gap_03_00004B45_rodata, global
.hidden gap_03_00004B45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004B45_rodata

# .rodata:0x3D0 | 0x4B48 | size: 0x11
.obj str_stg5_dou_24_bt02_muj_000127f8, local
	.string "stg5_dou_24_bt02"
.endobj str_stg5_dou_24_bt02_muj_000127f8

# .rodata:0x3E1 | 0x4B59 | size: 0x3
.obj gap_03_00004B59_rodata, global
.hidden gap_03_00004B59_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004B59_rodata

# .rodata:0x3E4 | 0x4B5C | size: 0x9
.obj str_KRT_A2_1_muj_0001280c, local
	.string "KRT_A2_1"
.endobj str_KRT_A2_1_muj_0001280c

# .rodata:0x3ED | 0x4B65 | size: 0x3
.obj gap_03_00004B65_rodata, global
.hidden gap_03_00004B65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004B65_rodata

# .rodata:0x3F0 | 0x4B68 | size: 0x15
.obj str_SFX_BOSS_KOR_INHALE2_muj_00012818, local
	.string "SFX_BOSS_KOR_INHALE2"
.endobj str_SFX_BOSS_KOR_INHALE2_muj_00012818

# .rodata:0x405 | 0x4B7D | size: 0x3
.obj gap_03_00004B7D_rodata, global
.hidden gap_03_00004B7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004B7D_rodata

# .rodata:0x408 | 0x4B80 | size: 0x1B
.obj str_SFX_AUDIENCE_PANIC_S_muj_00012830, local
	.string "SFX_AUDIENCE_PANIC_SCREAM1"
.endobj str_SFX_AUDIENCE_PANIC_S_muj_00012830

# .rodata:0x423 | 0x4B9B | size: 0x1
.obj gap_03_00004B9B_rodata, global
.hidden gap_03_00004B9B_rodata
	.byte 0x00
.endobj gap_03_00004B9B_rodata

# .rodata:0x424 | 0x4B9C | size: 0x9
.obj str_KRT_A2_2_muj_0001284c, local
	.string "KRT_A2_2"
.endobj str_KRT_A2_2_muj_0001284c

# .rodata:0x42D | 0x4BA5 | size: 0x3
.obj gap_03_00004BA5_rodata, global
.hidden gap_03_00004BA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004BA5_rodata

# .rodata:0x430 | 0x4BA8 | size: 0x9
.obj str_KRT_A2_3_muj_00012858, local
	.string "KRT_A2_3"
.endobj str_KRT_A2_3_muj_00012858

# .rodata:0x439 | 0x4BB1 | size: 0x3
.obj gap_03_00004BB1_rodata, global
.hidden gap_03_00004BB1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004BB1_rodata

# .rodata:0x43C | 0x4BB4 | size: 0x9
.obj str_recovery_muj_00012864, local
	.string "recovery"
.endobj str_recovery_muj_00012864

# .rodata:0x445 | 0x4BBD | size: 0x3
.obj gap_03_00004BBD_rodata, global
.hidden gap_03_00004BBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004BBD_rodata

# .rodata:0x448 | 0x4BC0 | size: 0x8
.obj str_KRT_W_1_muj_00012870, local
	.string "KRT_W_1"
.endobj str_KRT_W_1_muj_00012870

# .rodata:0x450 | 0x4BC8 | size: 0x14
.obj str_SFX_BOSS_KOR_ROUND1_muj_00012878, local
	.string "SFX_BOSS_KOR_ROUND1"
.endobj str_SFX_BOSS_KOR_ROUND1_muj_00012878

# .rodata:0x464 | 0x4BDC | size: 0x13
.obj str_SFX_BOSS_KOR_BITE1_muj_0001288c, local
	.string "SFX_BOSS_KOR_BITE1"
.endobj str_SFX_BOSS_KOR_BITE1_muj_0001288c

# .rodata:0x477 | 0x4BEF | size: 0x1
.obj gap_03_00004BEF_rodata, global
.hidden gap_03_00004BEF_rodata
	.byte 0x00
.endobj gap_03_00004BEF_rodata

# .rodata:0x478 | 0x4BF0 | size: 0x9
.obj str_KRT_A3_3_muj_000128a0, local
	.string "KRT_A3_3"
.endobj str_KRT_A3_3_muj_000128a0

# .rodata:0x481 | 0x4BF9 | size: 0x3
.obj gap_03_00004BF9_rodata, global
.hidden gap_03_00004BF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004BF9_rodata

# .rodata:0x484 | 0x4BFC | size: 0x1A
.obj str_SFX_BOSS_KOR_SWORD_R_muj_000128ac, local
	.string "SFX_BOSS_KOR_SWORD_READY1"
.endobj str_SFX_BOSS_KOR_SWORD_R_muj_000128ac

# .rodata:0x49E | 0x4C16 | size: 0x2
.obj gap_03_00004C16_rodata, global
.hidden gap_03_00004C16_rodata
	.2byte 0x0000
.endobj gap_03_00004C16_rodata

# .rodata:0x4A0 | 0x4C18 | size: 0x9
.obj str_KRT_A1_1_muj_000128c8, local
	.string "KRT_A1_1"
.endobj str_KRT_A1_1_muj_000128c8

# .rodata:0x4A9 | 0x4C21 | size: 0x3
.obj gap_03_00004C21_rodata, global
.hidden gap_03_00004C21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C21_rodata

# .rodata:0x4AC | 0x4C24 | size: 0x1A
.obj str_SFX_BOSS_KOR_SWORD_S_muj_000128d4, local
	.string "SFX_BOSS_KOR_SWORD_STICK1"
.endobj str_SFX_BOSS_KOR_SWORD_S_muj_000128d4

# .rodata:0x4C6 | 0x4C3E | size: 0x2
.obj gap_03_00004C3E_rodata, global
.hidden gap_03_00004C3E_rodata
	.2byte 0x0000
.endobj gap_03_00004C3E_rodata

# .rodata:0x4C8 | 0x4C40 | size: 0x9
.obj str_KRT_A1_2_muj_000128f0, local
	.string "KRT_A1_2"
.endobj str_KRT_A1_2_muj_000128f0

# .rodata:0x4D1 | 0x4C49 | size: 0x3
.obj gap_03_00004C49_rodata, global
.hidden gap_03_00004C49_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C49_rodata

# .rodata:0x4D4 | 0x4C4C | size: 0x1A
.obj str_SFX_BOSS_KOR_SWORD_S_muj_000128fc, local
	.string "SFX_BOSS_KOR_SWORD_SHAKE1"
.endobj str_SFX_BOSS_KOR_SWORD_S_muj_000128fc

# .rodata:0x4EE | 0x4C66 | size: 0x2
.obj gap_03_00004C66_rodata, global
.hidden gap_03_00004C66_rodata
	.2byte 0x0000
.endobj gap_03_00004C66_rodata

# .rodata:0x4F0 | 0x4C68 | size: 0x15
.obj str_SFX_BTL_ATTACK_MISS2_muj_00012918, local
	.string "SFX_BTL_ATTACK_MISS2"
.endobj str_SFX_BTL_ATTACK_MISS2_muj_00012918

# .rodata:0x505 | 0x4C7D | size: 0x3
.obj gap_03_00004C7D_rodata, global
.hidden gap_03_00004C7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C7D_rodata

# .rodata:0x508 | 0x4C80 | size: 0x9
.obj str_KRT_1D_3_muj_00012930, local
	.string "KRT_1D_3"
.endobj str_KRT_1D_3_muj_00012930

# .rodata:0x511 | 0x4C89 | size: 0x3
.obj gap_03_00004C89_rodata, global
.hidden gap_03_00004C89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C89_rodata

# .rodata:0x514 | 0x4C8C | size: 0x9
.obj str_KRT_2D_3_muj_0001293c, local
	.string "KRT_2D_3"
.endobj str_KRT_2D_3_muj_0001293c

# .rodata:0x51D | 0x4C95 | size: 0x3
.obj gap_03_00004C95_rodata, global
.hidden gap_03_00004C95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C95_rodata

# .rodata:0x520 | 0x4C98 | size: 0x9
.obj str_KRT_3D_3_muj_00012948, local
	.string "KRT_3D_3"
.endobj str_KRT_3D_3_muj_00012948

# .rodata:0x529 | 0x4CA1 | size: 0x3
.obj gap_03_00004CA1_rodata, global
.hidden gap_03_00004CA1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004CA1_rodata

# .rodata:0x52C | 0x4CA4 | size: 0xA
.obj str_KRT_3D3_1_muj_00012954, local
	.string "KRT_3D3_1"
.endobj str_KRT_3D3_1_muj_00012954

# .rodata:0x536 | 0x4CAE | size: 0x2
.obj gap_03_00004CAE_rodata, global
.hidden gap_03_00004CAE_rodata
	.2byte 0x0000
.endobj gap_03_00004CAE_rodata

# .rodata:0x538 | 0x4CB0 | size: 0x9
.obj str_KRT_D2_1_muj_00012960, local
	.string "KRT_D2_1"
.endobj str_KRT_D2_1_muj_00012960

# .rodata:0x541 | 0x4CB9 | size: 0x3
.obj gap_03_00004CB9_rodata, global
.hidden gap_03_00004CB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004CB9_rodata

# .rodata:0x544 | 0x4CBC | size: 0x19
.obj str_SFX_BOSS_KOR_SWORD_F_muj_0001296c, local
	.string "SFX_BOSS_KOR_SWORD_FALL1"
.endobj str_SFX_BOSS_KOR_SWORD_F_muj_0001296c

# .rodata:0x55D | 0x4CD5 | size: 0x3
.obj gap_03_00004CD5_rodata, global
.hidden gap_03_00004CD5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004CD5_rodata

# .rodata:0x560 | 0x4CD8 | size: 0x9
.obj str_KRT_D2_2_muj_00012988, local
	.string "KRT_D2_2"
.endobj str_KRT_D2_2_muj_00012988

# .rodata:0x569 | 0x4CE1 | size: 0x3
.obj gap_03_00004CE1_rodata, global
.hidden gap_03_00004CE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004CE1_rodata

# .rodata:0x56C | 0x4CE4 | size: 0xC
.obj str_c_korutesu2_muj_00012994, local
	.string "c_korutesu2"
.endobj str_c_korutesu2_muj_00012994

# .rodata:0x578 | 0x4CF0 | size: 0x18
.obj str_SFX_BOSS_KOR_BONE_FA_muj_000129a0, local
	.string "SFX_BOSS_KOR_BONE_FALL1"
.endobj str_SFX_BOSS_KOR_BONE_FA_muj_000129a0

# .rodata:0x590 | 0x4D08 | size: 0x9
.obj str_KRT_1B_1_muj_000129b8, local
	.string "KRT_1B_1"
.endobj str_KRT_1B_1_muj_000129b8

# .rodata:0x599 | 0x4D11 | size: 0x3
.obj gap_03_00004D11_rodata, global
.hidden gap_03_00004D11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004D11_rodata

# .rodata:0x59C | 0x4D14 | size: 0xC
.obj str_c_korutesu3_muj_000129c4, local
	.string "c_korutesu3"
.endobj str_c_korutesu3_muj_000129c4

# .rodata:0x5A8 | 0x4D20 | size: 0x13
.obj str_SFX_BOSS_KOR_MOVE3_muj_000129d0, local
	.string "SFX_BOSS_KOR_MOVE3"
.endobj str_SFX_BOSS_KOR_MOVE3_muj_000129d0

# .rodata:0x5BB | 0x4D33 | size: 0x1
.obj gap_03_00004D33_rodata, global
.hidden gap_03_00004D33_rodata
	.byte 0x00
.endobj gap_03_00004D33_rodata

# .rodata:0x5BC | 0x4D34 | size: 0x8
.obj str_KRT_D_3_muj_000129e4, local
	.string "KRT_D_3"
.endobj str_KRT_D_3_muj_000129e4

# .rodata:0x5C4 | 0x4D3C | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_muj_000129ec, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_muj_000129ec

# .rodata:0x5D9 | 0x4D51 | size: 0x3
.obj gap_03_00004D51_rodata, global
.hidden gap_03_00004D51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004D51_rodata

# .rodata:0x5DC | 0x4D54 | size: 0xC
.obj str_kemuri_test_muj_00012a04, local
	.string "kemuri_test"
.endobj str_kemuri_test_muj_00012a04

# .rodata:0x5E8 | 0x4D60 | size: 0xB
.obj str_star_point_muj_00012a10, local
	.string "star_point"
.endobj str_star_point_muj_00012a10

# .rodata:0x5F3 | 0x4D6B | size: 0x1
.obj gap_03_00004D6B_rodata, global
.hidden gap_03_00004D6B_rodata
	.byte 0x00
.endobj gap_03_00004D6B_rodata

# .rodata:0x5F4 | 0x4D6C | size: 0xA
.obj str_KRT_1D2_3_muj_00012a1c, local
	.string "KRT_1D2_3"
.endobj str_KRT_1D2_3_muj_00012a1c

# .rodata:0x5FE | 0x4D76 | size: 0x2
.obj gap_03_00004D76_rodata, global
.hidden gap_03_00004D76_rodata
	.2byte 0x0000
.endobj gap_03_00004D76_rodata

# .rodata:0x600 | 0x4D78 | size: 0xA
.obj str_KRT_2D2_3_muj_00012a28, local
	.string "KRT_2D2_3"
.endobj str_KRT_2D2_3_muj_00012a28

# .rodata:0x60A | 0x4D82 | size: 0x2
.obj gap_03_00004D82_rodata, global
.hidden gap_03_00004D82_rodata
	.2byte 0x0000
.endobj gap_03_00004D82_rodata

# .rodata:0x60C | 0x4D84 | size: 0xA
.obj str_KRT_3D3_3_muj_00012a34, local
	.string "KRT_3D3_3"
.endobj str_KRT_3D3_3_muj_00012a34

# .rodata:0x616 | 0x4D8E | size: 0x2
.obj gap_03_00004D8E_rodata, global
.hidden gap_03_00004D8E_rodata
	.2byte 0x0000
.endobj gap_03_00004D8E_rodata

# .rodata:0x618 | 0x4D90 | size: 0xA
.obj str_KRT_1D2_4_muj_00012a40, local
	.string "KRT_1D2_4"
.endobj str_KRT_1D2_4_muj_00012a40

# .rodata:0x622 | 0x4D9A | size: 0x2
.obj gap_03_00004D9A_rodata, global
.hidden gap_03_00004D9A_rodata
	.2byte 0x0000
.endobj gap_03_00004D9A_rodata

# .rodata:0x624 | 0x4D9C | size: 0xA
.obj str_KRT_2D2_4_muj_00012a4c, local
	.string "KRT_2D2_4"
.endobj str_KRT_2D2_4_muj_00012a4c

# .rodata:0x62E | 0x4DA6 | size: 0x2
.obj gap_03_00004DA6_rodata, global
.hidden gap_03_00004DA6_rodata
	.2byte 0x0000
.endobj gap_03_00004DA6_rodata

# .rodata:0x630 | 0x4DA8 | size: 0xA
.obj str_KRT_3D3_4_muj_00012a58, local
	.string "KRT_3D3_4"
.endobj str_KRT_3D3_4_muj_00012a58

# .rodata:0x63A | 0x4DB2 | size: 0x2
.obj gap_03_00004DB2_rodata, global
.hidden gap_03_00004DB2_rodata
	.2byte 0x0000
.endobj gap_03_00004DB2_rodata

# .rodata:0x63C | 0x4DB4 | size: 0x9
.obj str_KRT_1H_1_muj_00012a64, local
	.string "KRT_1H_1"
.endobj str_KRT_1H_1_muj_00012a64

# .rodata:0x645 | 0x4DBD | size: 0x3
.obj gap_03_00004DBD_rodata, global
.hidden gap_03_00004DBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DBD_rodata

# .rodata:0x648 | 0x4DC0 | size: 0xA
.obj str_KRT_1H2_1_muj_00012a70, local
	.string "KRT_1H2_1"
.endobj str_KRT_1H2_1_muj_00012a70

# .rodata:0x652 | 0x4DCA | size: 0x2
.obj gap_03_00004DCA_rodata, global
.hidden gap_03_00004DCA_rodata
	.2byte 0x0000
.endobj gap_03_00004DCA_rodata

# .rodata:0x654 | 0x4DCC | size: 0x9
.obj str_KRT_2H_1_muj_00012a7c, local
	.string "KRT_2H_1"
.endobj str_KRT_2H_1_muj_00012a7c

# .rodata:0x65D | 0x4DD5 | size: 0x3
.obj gap_03_00004DD5_rodata, global
.hidden gap_03_00004DD5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DD5_rodata

# .rodata:0x660 | 0x4DD8 | size: 0xA
.obj str_KRT_2H2_1_muj_00012a88, local
	.string "KRT_2H2_1"
.endobj str_KRT_2H2_1_muj_00012a88
	.2byte 0x0000

# .rodata:0x66C | 0x4DE4 | size: 0x4
.obj float_neg120_muj_00012a94, local
	.float -120
.endobj float_neg120_muj_00012a94

# .rodata:0x670 | 0x4DE8 | size: 0x4
.obj zero_muj_00012a98, local
	.float 0
.endobj zero_muj_00012a98

# .rodata:0x674 | 0x4DEC | size: 0x4
.obj float_neg1_muj_00012a9c, local
	.float -1
.endobj float_neg1_muj_00012a9c

# .rodata:0x678 | 0x4DF0 | size: 0x4
.obj float_20_muj_00012aa0, local
	.float 20
.endobj float_20_muj_00012aa0

# .rodata:0x67C | 0x4DF4 | size: 0x4
.obj float_2_muj_00012aa4, local
	.float 2
.endobj float_2_muj_00012aa4

# .rodata:0x680 | 0x4DF8 | size: 0x4
.obj float_180_muj_00012aa8, local
	.float 180
.endobj float_180_muj_00012aa8

# .rodata:0x684 | 0x4DFC | size: 0x4
.obj float_1_muj_00012aac, local
	.float 1
.endobj float_1_muj_00012aac

# .rodata:0x688 | 0x4E00 | size: 0x4
.obj float_neg90_muj_00012ab0, local
	.float -90
.endobj float_neg90_muj_00012ab0

# .rodata:0x68C | 0x4E04 | size: 0x4
.obj gap_03_00004E04_rodata, global
.hidden gap_03_00004E04_rodata
	.4byte 0x00000000
.endobj gap_03_00004E04_rodata

# 0x00022008..0x000281D0 | size: 0x61C8
.data
.balign 8

# .data:0x0 | 0x22008 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x22010 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x22014 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x22018 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2201C | size: 0x4
.obj gap_04_0002201C_data, global
.hidden gap_04_0002201C_data
	.4byte 0x00000000
.endobj gap_04_0002201C_data

# .data:0x18 | 0x22020 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x22028 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2202C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x22030 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x22038 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2203C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x22040 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x22044 | size: 0x4
.obj gap_04_00022044_data, global
.hidden gap_04_00022044_data
	.4byte 0x00000000
.endobj gap_04_00022044_data

# .data:0x40 | 0x22048 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x22050 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x22054 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x22058 | size: 0xC4
.obj unit_boss_cortez_19_data_22058, global
	.4byte 0x0000005D
	.4byte str_btl_un_cortez_muj_00012428
	.4byte 0x00140000
	.4byte 0x01014D00
	.4byte 0x00640032
	.4byte 0x000600FA
	.4byte 0x00AAFFF6
	.4byte 0x005A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42FA0000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC28C0000
	.4byte 0x42820000
	.4byte 0x00000000
	.4byte 0x43340000
	.4byte 0x43020000
	.4byte 0x0000FF00
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_DAMAGED_muj_00012438
	.4byte str_SFX_BTL_DAMAGE_FIRE1_muj_00012450
	.4byte str_SFX_BTL_DAMAGE_ICE1_muj_00012468
	.4byte str_SFX_BTL_DAMAGE_BIRIB_muj_0001247c
	.4byte 0x00200000
	.4byte regist
	.4byte 0x13000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_cortez_19_data_22058

# .data:0x114 | 0x2211C | size: 0x16
.obj regist, local
	.4byte 0x28283264
	.4byte 0x32646419
	.4byte 0x00006400
	.4byte 0x645A3200
	.4byte 0x00643200
	.2byte 0x0000
.endobj regist

# .data:0x12A | 0x22132 | size: 0x2
.obj gap_04_00022132_data, global
.hidden gap_04_00022132_data
	.2byte 0x0000
.endobj gap_04_00022132_data

# .data:0x12C | 0x22134 | size: 0x5
.obj defence_mode1, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence_mode1

# .data:0x131 | 0x22139 | size: 0x3
.obj gap_04_00022139_data, global
.hidden gap_04_00022139_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00022139_data

# .data:0x134 | 0x2213C | size: 0x5
.obj defence_attr_mode1, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_mode1

# .data:0x139 | 0x22141 | size: 0x3
.obj gap_04_00022141_data, global
.hidden gap_04_00022141_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00022141_data

# .data:0x13C | 0x22144 | size: 0x5
.obj defence_mode2_upper_head, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence_mode2_upper_head

# .data:0x141 | 0x22149 | size: 0x3
.obj gap_04_00022149_data, global
.hidden gap_04_00022149_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00022149_data

# .data:0x144 | 0x2214C | size: 0x5
.obj defence_attr_mode2_upper_head, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_mode2_upper_head

# .data:0x149 | 0x22151 | size: 0x3
.obj gap_04_00022151_data, global
.hidden gap_04_00022151_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00022151_data

# .data:0x14C | 0x22154 | size: 0x5
.obj defence_mode2_upper_rib_open, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_mode2_upper_rib_open

# .data:0x151 | 0x22159 | size: 0x3
.obj gap_04_00022159_data, global
.hidden gap_04_00022159_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00022159_data

# .data:0x154 | 0x2215C | size: 0x5
.obj defence_attr_mode2_upper_rib_open, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence_attr_mode2_upper_rib_open

# .data:0x159 | 0x22161 | size: 0x3
.obj gap_04_00022161_data, global
.hidden gap_04_00022161_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00022161_data

# .data:0x15C | 0x22164 | size: 0x5
.obj defence_mode2_upper_rib_close, local
	.4byte 0x03030303
	.byte 0x03
.endobj defence_mode2_upper_rib_close

# .data:0x161 | 0x22169 | size: 0x3
.obj gap_04_00022169_data, global
.hidden gap_04_00022169_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00022169_data

# .data:0x164 | 0x2216C | size: 0x5
.obj defence_attr_mode2_upper_rib_close, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_mode2_upper_rib_close

# .data:0x169 | 0x22171 | size: 0x3
.obj gap_04_00022171_data, global
.hidden gap_04_00022171_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00022171_data

# .data:0x16C | 0x22174 | size: 0x5
.obj defence_mode2_middle_head, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence_mode2_middle_head

# .data:0x171 | 0x22179 | size: 0x3
.obj gap_04_00022179_data, global
.hidden gap_04_00022179_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00022179_data

# .data:0x174 | 0x2217C | size: 0x5
.obj defence_attr_mode2_middle_head, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_mode2_middle_head

# .data:0x179 | 0x22181 | size: 0x3
.obj gap_04_00022181_data, global
.hidden gap_04_00022181_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00022181_data

# .data:0x17C | 0x22184 | size: 0x5
.obj defence_mode2_middle_rib_open, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_mode2_middle_rib_open

# .data:0x181 | 0x22189 | size: 0x3
.obj gap_04_00022189_data, global
.hidden gap_04_00022189_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00022189_data

# .data:0x184 | 0x2218C | size: 0x5
.obj defence_attr_mode2_middle_rib_open, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence_attr_mode2_middle_rib_open

# .data:0x189 | 0x22191 | size: 0x3
.obj gap_04_00022191_data, global
.hidden gap_04_00022191_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00022191_data

# .data:0x18C | 0x22194 | size: 0x5
.obj defence_mode2_middle_rib_close, local
	.4byte 0x03030303
	.byte 0x03
.endobj defence_mode2_middle_rib_close

# .data:0x191 | 0x22199 | size: 0x3
.obj gap_04_00022199_data, global
.hidden gap_04_00022199_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00022199_data

# .data:0x194 | 0x2219C | size: 0x5
.obj defence_attr_mode2_middle_rib_close, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_mode2_middle_rib_close

# .data:0x199 | 0x221A1 | size: 0x3
.obj gap_04_000221A1_data, global
.hidden gap_04_000221A1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000221A1_data

# .data:0x19C | 0x221A4 | size: 0x5
.obj defence_mode2_lower_head, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence_mode2_lower_head

# .data:0x1A1 | 0x221A9 | size: 0x3
.obj gap_04_000221A9_data, global
.hidden gap_04_000221A9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000221A9_data

# .data:0x1A4 | 0x221AC | size: 0x5
.obj defence_attr_mode2_lower_head, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_mode2_lower_head

# .data:0x1A9 | 0x221B1 | size: 0x3
.obj gap_04_000221B1_data, global
.hidden gap_04_000221B1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000221B1_data

# .data:0x1AC | 0x221B4 | size: 0x5
.obj defence_mode2_lower_rib_open, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_mode2_lower_rib_open

# .data:0x1B1 | 0x221B9 | size: 0x3
.obj gap_04_000221B9_data, global
.hidden gap_04_000221B9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000221B9_data

# .data:0x1B4 | 0x221BC | size: 0x5
.obj defence_attr_mode2_lower_rib_open, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence_attr_mode2_lower_rib_open

# .data:0x1B9 | 0x221C1 | size: 0x3
.obj gap_04_000221C1_data, global
.hidden gap_04_000221C1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000221C1_data

# .data:0x1BC | 0x221C4 | size: 0x5
.obj defence_mode2_lower_rib_close, local
	.4byte 0x03030303
	.byte 0x03
.endobj defence_mode2_lower_rib_close

# .data:0x1C1 | 0x221C9 | size: 0x3
.obj gap_04_000221C9_data, global
.hidden gap_04_000221C9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000221C9_data

# .data:0x1C4 | 0x221CC | size: 0x5
.obj defence_attr_mode2_lower_rib_close, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_mode2_lower_rib_close

# .data:0x1C9 | 0x221D1 | size: 0x3
.obj gap_04_000221D1_data, global
.hidden gap_04_000221D1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000221D1_data

# .data:0x1CC | 0x221D4 | size: 0x5
.obj defence_mode3, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence_mode3

# .data:0x1D1 | 0x221D9 | size: 0x3
.obj gap_04_000221D9_data, global
.hidden gap_04_000221D9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000221D9_data

# .data:0x1D4 | 0x221DC | size: 0x5
.obj defence_attr_mode3, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_mode3

# .data:0x1D9 | 0x221E1 | size: 0x3
.obj gap_04_000221E1_data, global
.hidden gap_04_000221E1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000221E1_data

# .data:0x1DC | 0x221E4 | size: 0x5
.obj defence_honeduka, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence_honeduka

# .data:0x1E1 | 0x221E9 | size: 0x3
.obj gap_04_000221E9_data, global
.hidden gap_04_000221E9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000221E9_data

# .data:0x1E4 | 0x221EC | size: 0x5
.obj defence_honeduka_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_honeduka_attr

# .data:0x1E9 | 0x221F1 | size: 0x3
.obj gap_04_000221F1_data, global
.hidden gap_04_000221F1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000221F1_data

# .data:0x1EC | 0x221F4 | size: 0xC0
.obj weapon_cortez_normal_front_attack, local
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
	.4byte 0x00000087
	.4byte 0x000007FF
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
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_cortez_normal_front_attack

# .data:0x2AC | 0x222B4 | size: 0xC0
.obj weapon_cortez_normal_rear_attack, local
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
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x00000008
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
.endobj weapon_cortez_normal_rear_attack

# .data:0x36C | 0x22374 | size: 0xC0
.obj weapon_cortez_midaregiri_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000002
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
	.4byte 0x00000087
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
.endobj weapon_cortez_midaregiri_attack

# .data:0x42C | 0x22434 | size: 0xC0
.obj weapon_cortez_mode2_head_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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
	.4byte 0x00001087
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
.endobj weapon_cortez_mode2_head_attack

# .data:0x4EC | 0x224F4 | size: 0xC0
.obj weapon_cortez_mode2_charge, local
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
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_cortez_mode2_charge

# .data:0x5AC | 0x225B4 | size: 0xC0
.obj weapon_cortez_mode2_bone_attack, local
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
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
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
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_cortez_mode2_bone_attack

# .data:0x66C | 0x22674 | size: 0xC0
.obj weapon_cortez_mode3_kamitsuki_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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
	.4byte 0x00000087
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
.endobj weapon_cortez_mode3_kamitsuki_attack

# .data:0x72C | 0x22734 | size: 0x5B4
.obj pose_sound_timing_table, local
	.4byte str_KRT_1S_1_muj_00012498
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S_1_muj_00012498
	.4byte 0x3E4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S_1_muj_00012498
	.4byte 0x3ECCCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S_1_muj_00012498
	.4byte 0x3F19999A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S_1_muj_00012498
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S_1_muj_00012498
	.4byte 0x3F800000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S2_1_muj_000124b8
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S2_1_muj_000124b8
	.4byte 0x3E4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S2_1_muj_000124b8
	.4byte 0x3ECCCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S2_1_muj_000124b8
	.4byte 0x3F19999A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S2_1_muj_000124b8
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S2_1_muj_000124b8
	.4byte 0x3F800000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S_2_muj_000124c4
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S_2_muj_000124c4
	.4byte 0x3E4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S_2_muj_000124c4
	.4byte 0x3ECCCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S_2_muj_000124c4
	.4byte 0x3F19999A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S_2_muj_000124c4
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S_2_muj_000124c4
	.4byte 0x3F800000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S2_2_muj_000124d0
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S2_2_muj_000124d0
	.4byte 0x3E4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S2_2_muj_000124d0
	.4byte 0x3ECCCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S2_2_muj_000124d0
	.4byte 0x3F19999A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S2_2_muj_000124d0
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_1S2_2_muj_000124d0
	.4byte 0x3F800000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S_1_muj_000124dc
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S_1_muj_000124dc
	.4byte 0x3E4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S_1_muj_000124dc
	.4byte 0x3ECCCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S_1_muj_000124dc
	.4byte 0x3F19999A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S_1_muj_000124dc
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S_1_muj_000124dc
	.4byte 0x3F800000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S2_1_muj_000124e8
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S2_1_muj_000124e8
	.4byte 0x3E4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S2_1_muj_000124e8
	.4byte 0x3ECCCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S2_1_muj_000124e8
	.4byte 0x3F19999A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S2_1_muj_000124e8
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S2_1_muj_000124e8
	.4byte 0x3F800000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S_2_muj_000124f4
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S_2_muj_000124f4
	.4byte 0x3E4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S_2_muj_000124f4
	.4byte 0x3ECCCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S_2_muj_000124f4
	.4byte 0x3F19999A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S_2_muj_000124f4
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S_2_muj_000124f4
	.4byte 0x3F800000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S2_2_muj_00012500
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S2_2_muj_00012500
	.4byte 0x3E4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S2_2_muj_00012500
	.4byte 0x3ECCCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S2_2_muj_00012500
	.4byte 0x3F19999A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S2_2_muj_00012500
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_2S2_2_muj_00012500
	.4byte 0x3F800000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S_1_muj_0001250c
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S_1_muj_0001250c
	.4byte 0x3E4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S_1_muj_0001250c
	.4byte 0x3ECCCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S_1_muj_0001250c
	.4byte 0x3F19999A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S_1_muj_0001250c
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S_1_muj_0001250c
	.4byte 0x3F800000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S3_1_muj_00012518
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S3_1_muj_00012518
	.4byte 0x3E4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S3_1_muj_00012518
	.4byte 0x3ECCCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S3_1_muj_00012518
	.4byte 0x3F19999A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S3_1_muj_00012518
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S3_1_muj_00012518
	.4byte 0x3F800000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S_2_muj_00012524
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S_2_muj_00012524
	.4byte 0x3E4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S_2_muj_00012524
	.4byte 0x3ECCCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S_2_muj_00012524
	.4byte 0x3F19999A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S_2_muj_00012524
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S_2_muj_00012524
	.4byte 0x3F800000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S3_2_muj_00012530
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S3_2_muj_00012530
	.4byte 0x3E4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S3_2_muj_00012530
	.4byte 0x3ECCCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S3_2_muj_00012530
	.4byte 0x3F19999A
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S3_2_muj_00012530
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte str_KRT_3S3_2_muj_00012530
	.4byte 0x3F800000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_WAIT1_muj_000124a4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
.endobj pose_sound_timing_table

# .data:0xCE0 | 0x22CE8 | size: 0x50
.obj pose_table_mode_1, local
	.4byte 0x00000001
	.4byte str_KRT_N_1_muj_0001253c
	.4byte 0x00000005
	.4byte str_KRT_K_1_muj_00012544
	.4byte 0x00000002
	.4byte str_KRT_Z_1_muj_0001254c
	.4byte 0x00000009
	.4byte str_KRT_Z_1_muj_0001254c
	.4byte 0x00000004
	.4byte str_KRT_X_1_muj_00012554
	.4byte 0x00000003
	.4byte str_KRT_K_1_muj_00012544
	.4byte 0x0000001C
	.4byte str_KRT_S_1_muj_0001255c
	.4byte 0x0000001F
	.4byte str_KRT_S_1_muj_0001255c
	.4byte 0x00000027
	.4byte str_KRT_D1_1_muj_00012564
	.4byte 0x00000045
	.4byte str_KRT_S_1_muj_0001255c
.endobj pose_table_mode_1

# .data:0xD30 | 0x22D38 | size: 0x50
.obj pose_table_mode_1_hone, local
	.4byte 0x00000001
	.4byte str_KRT_N_1_muj_0001253c
	.4byte 0x00000005
	.4byte str_KRT_K_1_muj_00012544
	.4byte 0x00000002
	.4byte str_KRT_Z_1_muj_0001254c
	.4byte 0x00000009
	.4byte str_KRT_Z_1_muj_0001254c
	.4byte 0x00000004
	.4byte str_KRT_X_1_muj_00012554
	.4byte 0x00000003
	.4byte str_KRT_K_1_muj_00012544
	.4byte 0x0000001C
	.4byte str_KRT_S_1_muj_0001255c
	.4byte 0x0000001F
	.4byte str_KRT_S_1_muj_0001255c
	.4byte 0x00000027
	.4byte str_KRT_D1_2_muj_00012570
	.4byte 0x00000045
	.4byte str_KRT_S_1_muj_0001255c
.endobj pose_table_mode_1_hone

# .data:0xD80 | 0x22D88 | size: 0x20
.obj pose_table_mode_2_normal, local
	.4byte 0x0000001C
	.4byte str_KRT_1S_1_muj_00012498
	.4byte 0x0000001F
	.4byte str_KRT_1S_1_muj_00012498
	.4byte 0x00000027
	.4byte str_KRT_1D_1_muj_0001257c
	.4byte 0x00000045
	.4byte str_KRT_1S_1_muj_00012498
.endobj pose_table_mode_2_normal

# .data:0xDA0 | 0x22DA8 | size: 0x20
.obj pose_table_mode_2_upper_normal, local
	.4byte 0x0000001C
	.4byte str_KRT_1S_1_muj_00012498
	.4byte 0x0000001F
	.4byte str_KRT_1S_1_muj_00012498
	.4byte 0x00000027
	.4byte str_KRT_1D_1_muj_0001257c
	.4byte 0x00000045
	.4byte str_KRT_1S_1_muj_00012498
.endobj pose_table_mode_2_upper_normal

# .data:0xDC0 | 0x22DC8 | size: 0x20
.obj pose_table_mode_2_upper_normal_counter, local
	.4byte 0x0000001C
	.4byte str_KRT_1S2_1_muj_000124b8
	.4byte 0x0000001F
	.4byte str_KRT_1S2_1_muj_000124b8
	.4byte 0x00000027
	.4byte str_KRT_1D2_1_muj_00012588
	.4byte 0x00000045
	.4byte str_KRT_1S2_1_muj_000124b8
.endobj pose_table_mode_2_upper_normal_counter

# .data:0xDE0 | 0x22DE8 | size: 0x20
.obj pose_table_mode_2_upper_charge, local
	.4byte 0x0000001C
	.4byte str_KRT_1S_2_muj_000124c4
	.4byte 0x0000001F
	.4byte str_KRT_1S_2_muj_000124c4
	.4byte 0x00000027
	.4byte str_KRT_1D_2_muj_00012594
	.4byte 0x00000045
	.4byte str_KRT_1S_2_muj_000124c4
.endobj pose_table_mode_2_upper_charge

# .data:0xE00 | 0x22E08 | size: 0x20
.obj pose_table_mode_2_upper_charge_counter, local
	.4byte 0x0000001C
	.4byte str_KRT_1S2_2_muj_000124d0
	.4byte 0x0000001F
	.4byte str_KRT_1S2_2_muj_000124d0
	.4byte 0x00000027
	.4byte str_KRT_1D2_2_muj_000125a0
	.4byte 0x00000045
	.4byte str_KRT_1S2_2_muj_000124d0
.endobj pose_table_mode_2_upper_charge_counter

# .data:0xE20 | 0x22E28 | size: 0x20
.obj pose_table_mode_2_middle_normal, local
	.4byte 0x0000001C
	.4byte str_KRT_2S_1_muj_000124dc
	.4byte 0x0000001F
	.4byte str_KRT_2S_1_muj_000124dc
	.4byte 0x00000027
	.4byte str_KRT_2D_1_muj_000125ac
	.4byte 0x00000045
	.4byte str_KRT_2S_1_muj_000124dc
.endobj pose_table_mode_2_middle_normal

# .data:0xE40 | 0x22E48 | size: 0x20
.obj pose_table_mode_2_middle_normal_counter, local
	.4byte 0x0000001C
	.4byte str_KRT_2S2_1_muj_000124e8
	.4byte 0x0000001F
	.4byte str_KRT_2S2_1_muj_000124e8
	.4byte 0x00000027
	.4byte str_KRT_2D2_1_muj_000125b8
	.4byte 0x00000045
	.4byte str_KRT_2S2_1_muj_000124e8
.endobj pose_table_mode_2_middle_normal_counter

# .data:0xE60 | 0x22E68 | size: 0x20
.obj pose_table_mode_2_middle_charge, local
	.4byte 0x0000001C
	.4byte str_KRT_2S_2_muj_000124f4
	.4byte 0x0000001F
	.4byte str_KRT_2S_2_muj_000124f4
	.4byte 0x00000027
	.4byte str_KRT_2D_2_muj_000125c4
	.4byte 0x00000045
	.4byte str_KRT_2S_2_muj_000124f4
.endobj pose_table_mode_2_middle_charge

# .data:0xE80 | 0x22E88 | size: 0x20
.obj pose_table_mode_2_middle_charge_counter, local
	.4byte 0x0000001C
	.4byte str_KRT_2S2_2_muj_00012500
	.4byte 0x0000001F
	.4byte str_KRT_2S2_2_muj_00012500
	.4byte 0x00000027
	.4byte str_KRT_2D2_2_muj_000125d0
	.4byte 0x00000045
	.4byte str_KRT_2S2_2_muj_00012500
.endobj pose_table_mode_2_middle_charge_counter

# .data:0xEA0 | 0x22EA8 | size: 0x20
.obj pose_table_mode_2_lower_normal, local
	.4byte 0x0000001C
	.4byte str_KRT_3S_1_muj_0001250c
	.4byte 0x0000001F
	.4byte str_KRT_3S_1_muj_0001250c
	.4byte 0x00000027
	.4byte str_KRT_3D_2_muj_000125dc
	.4byte 0x00000045
	.4byte str_KRT_3S_1_muj_0001250c
.endobj pose_table_mode_2_lower_normal

# .data:0xEC0 | 0x22EC8 | size: 0x20
.obj pose_table_mode_2_lower_normal_counter, local
	.4byte 0x0000001C
	.4byte str_KRT_3S3_1_muj_00012518
	.4byte 0x0000001F
	.4byte str_KRT_3S3_1_muj_00012518
	.4byte 0x00000027
	.4byte str_KRT_3D3_2_muj_000125e8
	.4byte 0x00000045
	.4byte str_KRT_3S3_1_muj_00012518
.endobj pose_table_mode_2_lower_normal_counter

# .data:0xEE0 | 0x22EE8 | size: 0x20
.obj pose_table_mode_2_lower_charge, local
	.4byte 0x0000001C
	.4byte str_KRT_3S_2_muj_00012524
	.4byte 0x0000001F
	.4byte str_KRT_3S_2_muj_00012524
	.4byte 0x00000027
	.4byte str_KRT_3D_2_muj_000125dc
	.4byte 0x00000045
	.4byte str_KRT_3S_2_muj_00012524
.endobj pose_table_mode_2_lower_charge

# .data:0xF00 | 0x22F08 | size: 0x20
.obj pose_table_mode_2_lower_charge_counter, local
	.4byte 0x0000001C
	.4byte str_KRT_3S3_2_muj_00012530
	.4byte 0x0000001F
	.4byte str_KRT_3S3_2_muj_00012530
	.4byte 0x00000027
	.4byte str_KRT_3D3_2_muj_000125e8
	.4byte 0x00000045
	.4byte str_KRT_3S3_2_muj_00012530
.endobj pose_table_mode_2_lower_charge_counter

# .data:0xF20 | 0x22F28 | size: 0x20
.obj pose_table_fly_bone, local
	.4byte 0x0000001C
	.4byte str_KRT_Z_1_muj_0001254c
	.4byte 0x0000001F
	.4byte str_KRT_Z_1_muj_0001254c
	.4byte 0x00000027
	.4byte str_KRT_Z_1_muj_0001254c
	.4byte 0x00000045
	.4byte str_KRT_Z_1_muj_0001254c
.endobj pose_table_fly_bone

# .data:0xF40 | 0x22F48 | size: 0x60
.obj pose_table_mode_3, local
	.4byte 0x00000001
	.4byte str_KRT_N_1_muj_0001253c
	.4byte 0x00000002
	.4byte str_KRT_Z_1_muj_0001254c
	.4byte 0x00000009
	.4byte str_KRT_Z_1_muj_0001254c
	.4byte 0x00000005
	.4byte str_KRT_K_1_muj_00012544
	.4byte 0x00000004
	.4byte str_KRT_X_1_muj_00012554
	.4byte 0x00000003
	.4byte str_KRT_K_1_muj_00012544
	.4byte 0x0000001C
	.4byte str_KRT_S_1_muj_0001255c
	.4byte 0x0000001D
	.4byte str_KRT_D_2_muj_000125f4
	.4byte 0x0000001E
	.4byte str_KRT_D_2_muj_000125f4
	.4byte 0x0000001F
	.4byte str_KRT_S_1_muj_0001255c
	.4byte 0x00000027
	.4byte str_KRT_D_1_muj_000125fc
	.4byte 0x00000045
	.4byte str_KRT_S_1_muj_0001255c
.endobj pose_table_mode_3

# .data:0xFA0 | 0x22FA8 | size: 0x20
.obj pose_table_honeduka, local
	.4byte 0x0000001C
	.4byte str_KRT_Z_1_muj_0001254c
	.4byte 0x0000001F
	.4byte str_KRT_Z_1_muj_0001254c
	.4byte 0x00000027
	.4byte str_KRT_Z_1_muj_0001254c
	.4byte 0x00000045
	.4byte str_KRT_Z_1_muj_0001254c
.endobj pose_table_honeduka

# .data:0xFC0 | 0x22FC8 | size: 0x38
.obj data_table, local
	.4byte 0x00000009
	.4byte cortez_damage_sub_event
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000047
	.4byte mode2_honeduka_damage_event
	.4byte 0x00000024
	.4byte cortez_ac_counter_damage_event
	.4byte 0x00000027
	.4byte avoid_thorn_event
	.4byte 0x00000025
	.4byte avoid_thorn_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0xFF8 | 0x23000 | size: 0x5A4
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_cortez_muj_00012428
	.4byte str_c_korutesu1_muj_00012604
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x43110000
	.4byte 0x42B40000
	.4byte 0x41F00000
	.4byte 0x43110000
	.4byte 0x42B40000
	.4byte 0x41F00000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence_honeduka
	.4byte defence_honeduka_attr
	.4byte 0x00600009
	.4byte 0x00000000
	.4byte pose_table_mode_1
	.4byte 0x00000002
	.4byte str_btl_un_cortez_muj_00012428
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42700000
	.4byte 0x42DC0000
	.4byte 0x41A00000
	.4byte 0x42700000
	.4byte 0x42DC0000
	.4byte 0x41A00000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence_mode2_upper_rib_close
	.4byte defence_attr_mode2_upper_rib_close
	.4byte 0x03310004
	.4byte 0x00000000
	.4byte pose_table_mode_1
	.4byte 0x00000003
	.4byte str_btl_un_cortez_muj_00012428
	.4byte str_c_otitabuki_muj_00012610
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x03010000
	.4byte 0x00000000
	.4byte pose_table_mode_1
	.4byte 0x00000004
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_honezuka_muj_0001262c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x41200000
	.4byte 0x002D001E
	.4byte 0x00FF0000
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x02000006
	.4byte 0x00000001
	.4byte pose_table_honeduka
	.4byte 0x00000005
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_hone2_muj_00012638
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x03010000
	.4byte 0x00000000
	.4byte pose_table_fly_bone
	.4byte 0x00000006
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_hone_muj_00012640
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table_fly_bone
	.4byte 0x00000007
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_hone_muj_00012640
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table_fly_bone
	.4byte 0x00000008
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_hone_muj_00012640
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table_fly_bone
	.4byte 0x00000009
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_hone_muj_00012640
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table_fly_bone
	.4byte 0x0000000A
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_hone_muj_00012640
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table_fly_bone
	.4byte 0x0000000B
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_hone_muj_00012640
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table_fly_bone
	.4byte 0x0000000C
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_hone_muj_00012640
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table_fly_bone
	.4byte 0x0000000D
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_hone_muj_00012640
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table_fly_bone
	.4byte 0x0000000E
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_hone_muj_00012640
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table_fly_bone
	.4byte 0x0000000F
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_hone_muj_00012640
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table_fly_bone
	.4byte 0x00000010
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_hone_muj_00012640
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table_fly_bone
	.4byte 0x00000011
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_hone_muj_00012640
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table_fly_bone
	.4byte 0x00000012
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_hone_muj_00012640
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table_fly_bone
	.4byte 0x00000013
	.4byte str_btl_un_honeduka_muj_0001261c
	.4byte str_c_hone_muj_00012640
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
	.4byte defence_mode1
	.4byte defence_attr_mode1
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table_fly_bone
.endobj parts

# .data:0x159C | 0x235A4 | size: 0x410
.obj init_event, local
	.4byte 0x0002005B
	.4byte _make_cortez_work_area
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventPhase
	.4byte 0xFFFFFFFE
	.4byte phase_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_mode1
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_claw
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000027
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000029
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000002D
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
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_rapier
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000003C
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
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_sword
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000009A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000B
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000041
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
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_saber
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000074
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001C
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000049
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
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x000000A0
	.4byte 0x00000055
	.4byte 0x00000032
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x19AC | 0x239B4 | size: 0x118
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamagePartsId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_1
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_1_hone
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamagePartsId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0001005E
	.4byte mode2_honeduka_damage_event
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x1AC4 | 0x23ACC | size: 0x188
.obj cortez_ac_counter_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_A3_1_muj_00012648
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_S_1_muj_0001255c
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
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_GetMoveFrame
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A9280
	.4byte 0xFE363C8F
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8F
	.4byte 0x0000000F
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cortez_ac_counter_damage_event

# .data:0x1C4C | 0x23C54 | size: 0x164
.obj avoid_thorn_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamagePartsId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_muj_00012654
	.4byte str_toge_flush_muj_00012658
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_RIB_COU_muj_00012664
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_1C_3_muj_00012680
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_2C_3_muj_0001268c
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_3C_3_muj_00012698
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte cortez_reset_pose_table
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj avoid_thorn_event

# .data:0x1DB0 | 0x23DB8 | size: 0x310
.obj phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000005
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x0001002B
	.4byte 0x00000002
	.4byte 0x0001002B
	.4byte 0x00000003
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x00000032
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte mode2_rib_close_event
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_2B_1_muj_000126a4
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000050
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_MOVE2_muj_000126b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_3B_1_muj_000126c4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_MOVE2_muj_000126b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte cortez_reset_pose_table
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00010003
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte mode2_rib_close_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x20C0 | 0x240C8 | size: 0xB0
.obj attack_event_mode1, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x0001002B
	.4byte 0x00000000
	.4byte 0x0001002B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte at1_normal_attack
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte at1_midaregiri_attack
	.4byte 0x0000002A
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_mode1

# .data:0x2170 | 0x24178 | size: 0xBC
.obj attack_event_mode2, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte at2_hone_rain_attack_event
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x0001002B
	.4byte 0x00000002
	.4byte 0x0001002B
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte at2_hone_charge_event
	.4byte 0x00000002
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x0005005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000019
	.4byte 0x0000004B
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte at2_hone_charge_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte at2_head_bat_event
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_mode2

# .data:0x222C | 0x24234 | size: 0x328
.obj at2_head_bat_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_cortez_mode2_head_attack
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C8C
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C8C
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
	.4byte 0xFE363C8C
	.4byte 0x0003005B
	.4byte _check_zenei_kouei
	.4byte 0xFE363C83
	.4byte 0xFE363C8D
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_1A_1_muj_000126d0
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_1A_3_muj_000126dc
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_1A_2_muj_000126e8
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_1A_4_muj_000126f4
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_HEAD_AT_muj_00012700
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x0000029B
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000032
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_HEAD_AT_muj_0001271c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000012
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000045C
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
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
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj at2_head_bat_event

# .data:0x2554 | 0x2455C | size: 0x248
.obj at2_hone_charge_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0000008C
	.4byte 0x00000208
	.4byte 0x00000032
	.4byte 0x0000005A
	.4byte 0xFFFFFEFC
	.4byte 0x0000003C
	.4byte 0x00000004
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_2A_1_muj_00012738
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_2A1_1_muj_00012744
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0000008C
	.4byte 0x00000208
	.4byte 0x00000032
	.4byte 0x0000005A
	.4byte 0xFFFFFEFC
	.4byte 0x0000003C
	.4byte 0x00000004
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_2A_2_muj_00012750
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_2A2_2_muj_0001275c
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0000008C
	.4byte 0x00000208
	.4byte 0x00000032
	.4byte 0x0000005A
	.4byte 0xFFFFFEFC
	.4byte 0x0000003C
	.4byte 0x00000004
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_2A_3_muj_00012768
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_2A3_3_muj_00012774
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_INHALE1_muj_00012780
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte cortez_reset_pose_table
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte weapon_cortez_mode2_charge
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj at2_hone_charge_event

# .data:0x279C | 0x247A4 | size: 0x974
.obj at2_hone_rain_attack_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_cortez_mode2_bone_attack
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8C
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C8C
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_3A_1_muj_00012798
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_3A_2_muj_000127a4
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_3A_3_muj_000127b0
	.4byte 0x00000031
	.4byte 0x0001000A
	.4byte 0x000006A4
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FL_muj_000127bc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte str_KRT_A_1_muj_000127d4
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x01000000
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x0000000C
	.4byte 0x0001005C
	.4byte _bone_rain_event
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x0000000D
	.4byte 0x0001005C
	.4byte _bone_rain_event
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x0000000E
	.4byte 0x0001005C
	.4byte _bone_rain_event
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x0000000F
	.4byte 0x0001005C
	.4byte _bone_rain_event
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000010
	.4byte 0x0001005C
	.4byte _bone_rain_event
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000011
	.4byte 0x0001005C
	.4byte _bone_rain_event
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000012
	.4byte 0x0001005C
	.4byte _bone_rain_event
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000013
	.4byte 0x0001005C
	.4byte _bone_rain_event
	.4byte 0x0001006C
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xF24A7E19
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xF24A7E19
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8C
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
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
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte btlevtcmd_JumpPartsContinue
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xF24A7D4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000018
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x01000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000018
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000020
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte btlevtcmd_JumpPartsContinue
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xF24A7D4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000018
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x01000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000018
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000050
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xF24A7CE6
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x01000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x0000001A
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000020
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000050
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xF24A7CE6
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x01000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x0000001A
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x0000003C
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000054
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj at2_hone_rain_attack_event

# .data:0x3110 | 0x25118 | size: 0x1C8
.obj _bone_rain_event, local
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000014
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000005A
	.4byte 0xFE363C87
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x0000002D
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000003C
	.4byte 0xFE363C87
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xF24A8019
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000078
	.4byte 0xFE363C87
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x0000003C
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000003C
	.4byte 0xFE363C87
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x01000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _bone_rain_event

# .data:0x32D8 | 0x252E0 | size: 0xD0
.obj attack_event_mode3, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00020038
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0003005B
	.4byte _cortez_check_drain_audience
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte attack_audience_event
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte at3_kamitsuki_attack
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_mode3

# .data:0x33A8 | 0x253B0 | size: 0x3DC
.obj attack_audience_event, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000008C
	.4byte 0x00000078
	.4byte 0x000001F4
	.4byte 0x0000008C
	.4byte 0x00000055
	.4byte 0x00000009
	.4byte 0x0000003C
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_KRT_T_1_muj_000127dc
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_KRT_S_1_muj_0001255c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg5_dou_24_bt01_muj_000127e4
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000073
	.4byte 0x00000334
	.4byte 0x00000050
	.4byte 0x0000003C
	.4byte 0x00000006
	.4byte 0x0000003C
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_batstage_set_aud_dark
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000078
	.4byte 0x0000003C
	.4byte 0xFFFFFFF6
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg5_dou_24_bt02_muj_000127f8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_A2_1_muj_0001280c
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_INHALE2_muj_00012818
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_AUDIENCE_PANIC_S_muj_00012830
	.4byte 0xFE363C8F
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0003005B
	.4byte unk_muj_000067c4
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000078
	.4byte 0x00010005
	.4byte 0x00000078
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8E
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C8D
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000078
	.4byte 0x0003005B
	.4byte evt_snd_sfx_vol
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00010073
	.4byte 0xFE363C8E
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_A2_2_muj_0001284c
	.4byte 0x0002005B
	.4byte _cortez_collect_energy
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_A2_3_muj_00012858
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_S_1_muj_0001255c
	.4byte 0x00000070
	.4byte 0x0001000A
	.4byte 0x0000007D
	.4byte 0x0003005B
	.4byte _cortez_drain_energy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_recovery_muj_00012864
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001006C
	.4byte 0xFE363C8F
	.4byte 0x0002005B
	.4byte _cortez_recovery_audience
	.4byte 0xFFFFFFFE
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_batstage_return_aud_dark_base
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0xFFFFFFF6
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8F
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_audience_event

# .data:0x3784 | 0x2578C | size: 0x420
.obj at3_kamitsuki_attack, local
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_cortez_mode3_kamitsuki_attack
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C8C
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C8C
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
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_W_1_muj_00012870
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0007005B
	.4byte btlevtcmd_GetMoveFrame
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A9280
	.4byte 0xFE363C8F
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFF4
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_ROUND1_muj_00012878
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000020
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000002E
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BITE1_muj_0001288c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_A3_3_muj_000128a0
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000032
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
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
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000015
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_A3_1_muj_00012648
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_Z_1_muj_0001254c
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFF6
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_S_1_muj_0001255c
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_GetMoveFrame
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A9280
	.4byte 0xFE363C8F
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8F
	.4byte 0x0000000F
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj at3_kamitsuki_attack

# .data:0x3BA4 | 0x25BAC | size: 0x334
.obj at1_normal_attack, local
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_cortez_normal_front_attack
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_cortez_normal_rear_attack
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C8C
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C8C
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
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_SWORD_R_muj_000128ac
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte _check_zenei_kouei
	.4byte 0xFE363C83
	.4byte 0xFE363C8D
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_A1_1_muj_000128c8
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000005F
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_SWORD_S_muj_000128d4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000063
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_A1_2_muj_000128f0
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000005F
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_SWORD_S_muj_000128d4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000064
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
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
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000D
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj at1_normal_attack

# .data:0x3ED8 | 0x25EE0 | size: 0x3EC
.obj at1_midaregiri_attack, local
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_cortez_midaregiri_attack
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C8C
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C8C
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
	.4byte 0xFE363C8C
	.4byte 0x0003005B
	.4byte _check_zenei_kouei
	.4byte 0xFE363C83
	.4byte 0xFE363C8D
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_A2_1_muj_0001280c
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_A2_2_muj_0001284c
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000021
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_SWORD_S_muj_000128fc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000054
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_SWORD_S_muj_000128fc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000091
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_SWORD_S_muj_000128fc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x000000C6
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_SWORD_S_muj_000128fc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00010022
	.4byte 0xFE363C8A
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000026
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000003C
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000036
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000038
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00000031
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
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0002001C
	.4byte 0xFE363C8A
	.4byte 0x00000003
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj at1_midaregiri_attack

# .data:0x42C4 | 0x262CC | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x42DC | 0x262E4 | size: 0x30
.obj entry_claw, local
	.4byte unit_boss_cortez_claw_19_data_2A3C8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_claw

# .data:0x430C | 0x26314 | size: 0x30
.obj entry_rapier, local
	.4byte unit_boss_cortez_rapier_19_data_2ADC8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_rapier

# .data:0x433C | 0x26344 | size: 0x30
.obj entry_sword, local
	.4byte unit_boss_cortez_sword_19_data_284A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_sword

# .data:0x436C | 0x26374 | size: 0x30
.obj entry_saber, local
	.4byte unit_boss_cortez_saber_19_data_2BB68
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_saber

# .data:0x439C | 0x263A4 | size: 0x708
.obj cortez_reset_pose_table, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_1
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x000000A0
	.4byte 0x00000078
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_2_upper_normal
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_2_upper_charge
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte defence_mode2_upper_rib_close
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte defence_attr_mode2_upper_rib_close
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_2_upper_normal_counter
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_2_upper_charge_counter
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte defence_mode2_upper_rib_open
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte defence_attr_mode2_upper_rib_open
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence_mode2_upper_head
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence_attr_mode2_upper_head
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00700000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x000000A0
	.4byte 0x00000055
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_2_middle_normal
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_2_middle_charge
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte defence_mode2_middle_rib_close
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte defence_attr_mode2_middle_rib_close
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_2_middle_normal_counter
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_2_middle_charge_counter
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte defence_mode2_middle_rib_open
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte defence_attr_mode2_middle_rib_open
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence_mode2_middle_head
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence_attr_mode2_middle_head
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00700000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000096
	.4byte 0x00000055
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_2_lower_normal
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_2_lower_charge
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte defence_mode2_lower_rib_close
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte defence_attr_mode2_lower_rib_close
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_2_lower_normal_counter
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_2_lower_charge_counter
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte defence_mode2_lower_rib_open
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte defence_attr_mode2_lower_rib_open
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00600000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence_mode2_lower_head
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence_attr_mode2_lower_head
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00100000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFDD
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFDD
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x0000001E
	.4byte 0x00000032
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_3
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence_mode3
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence_attr_mode3
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFFFFFF79
	.4byte 0xFFFFFFC0
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFFFFFF79
	.4byte 0xFFFFFFBF
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cortez_reset_pose_table

# .data:0x4AA4 | 0x26AAC | size: 0x264
.obj cortez_damage_sub_event, local
	.4byte 0x0001005E
	.4byte cortez_reset_pose_table
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamagePartsId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_BTL_ATTACK_MISS2_muj_00012918
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamagePartsId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_1D_3_muj_00012930
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_2D_3_muj_0001293c
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_3D_3_muj_00012948
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_3D3_1_muj_00012954
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010004
	.4byte 0x0000003C
	.4byte 0x00010003
	.4byte 0x00000032
	.4byte 0x00010003
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamagePartsId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000100
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000400
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x0001002B
	.4byte 0x00000001
	.4byte 0x0001002B
	.4byte 0x00000002
	.4byte 0x0001002B
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte mode2_rib_open_event
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cortez_damage_sub_event

# .data:0x4D08 | 0x26D10 | size: 0x1024
.obj dead_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_mode2
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000003E7
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00010000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_D2_1_muj_00012960
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000007D
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_SWORD_F_muj_0001296c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000078
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_SWORD_F_muj_0001296c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000076
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_SWORD_F_muj_0001296c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000075
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_SWORD_F_muj_0001296c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRT_Z_1_muj_0001254c
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x01000000
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_D2_2_muj_00012988
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000021
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_MOVE2_muj_000126b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C87
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000024
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C87
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000018
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_fade_set_anim_ofs_pos
	.4byte 0x00000000
	.4byte 0x00000082
	.4byte 0x0004005B
	.4byte evt_fade_set_anim_virtual_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangeGroup
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_c_korutesu2_muj_00012994
	.4byte 0x0001005E
	.4byte cortez_reset_pose_table
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseSoundTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_sound_timing_table
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000019
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_fade_set_anim_ofs_pos
	.4byte 0x00000000
	.4byte 0x00000082
	.4byte 0x0004005B
	.4byte evt_fade_set_anim_virtual_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0005005B
	.4byte btlevtcmd_SetCutBaseOffset
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFB0
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetCutWidth
	.4byte 0xFFFFFFFE
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte btlevtcmd_SetCutHeight
	.4byte 0xFFFFFFFE
	.4byte 0x00000064
	.4byte 0x0001005B
	.4byte btlevtcmd_reset_turn
	.4byte 0x0001002B
	.4byte 0x00000001
	.4byte 0x0001002B
	.4byte 0x00000002
	.4byte 0x0001002B
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_mode3
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_1B_1_muj_000129b8
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_2B_1_muj_000126a4
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000050
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_MOVE2_muj_000126b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_1B_1_muj_000129b8
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_MOVE2_muj_000126b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_3B_1_muj_000126c4
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_1B_1_muj_000129b8
	.4byte 0x00000031
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000008
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000008
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000008
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000000E
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000001E
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseSoundTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRT_A_1_muj_000127d4
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x03010000
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C83
	.4byte 0x02000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMaxMoveCount
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x03010000
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C83
	.4byte 0x02000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMaxMoveCount
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x03010000
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C83
	.4byte 0x02000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMaxMoveCount
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x03010000
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C83
	.4byte 0x02000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMaxMoveCount
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x03000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x03010000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00010000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte 0xFE363C89
	.4byte 0x0000006B
	.4byte 0x0001005E
	.4byte cortez_weapon_get_home_height_19_data_28920
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C89
	.4byte 0x00000002
	.4byte 0xFE363C86
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFE363C89
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x0001005E
	.4byte cortez_weapon_set_formation_attribute_19_data_28B60
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C89
	.4byte 0x0000006D
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000018
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_fade_set_anim_ofs_pos
	.4byte 0x00000000
	.4byte 0x00000082
	.4byte 0x0004005B
	.4byte evt_fade_set_anim_virtual_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangeGroup
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_c_korutesu3_muj_000129c4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_mode_3
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte btlevtcmd_SetDiveSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_MOVE3_muj_000129d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000019
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_fade_set_anim_ofs_pos
	.4byte 0x00000000
	.4byte 0x00000082
	.4byte 0x0004005B
	.4byte evt_fade_set_anim_virtual_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte cortez_reset_pose_table
	.4byte 0x0005005B
	.4byte btlevtcmd_SetCutBaseOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000030
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetCutWidth
	.4byte 0xFFFFFFFE
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetCutHeight
	.4byte 0xFFFFFFFE
	.4byte 0x00000060
	.4byte 0x0001005B
	.4byte btlevtcmd_reset_turn
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetDataFromDataTable
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000047
	.4byte 0x0005005B
	.4byte btlevtcmd_RunHitEventDirect
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetDataFromDataTable
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000047
	.4byte 0x0005005B
	.4byte btlevtcmd_RunHitEventDirect
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetDataFromDataTable
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000047
	.4byte 0x0005005B
	.4byte btlevtcmd_RunHitEventDirect
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetDataFromDataTable
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000047
	.4byte 0x0005005B
	.4byte btlevtcmd_RunHitEventDirect
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_D_3_muj_000129e4
	.4byte 0x0000006E
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_BONE_FA_muj_000129a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x03000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BTL_ENEMY_DIE1_2_muj_000129ec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_muj_00012a04
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetCoin
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreCoin
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetExp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreExp
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
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
	.4byte zero_muj_00012654
	.4byte str_star_point_muj_00012a10
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
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0x5D2C | 0x27D34 | size: 0xD8
.obj mode2_rib_open_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_1D2_3_muj_00012a1c
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_2D2_3_muj_00012a28
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_3D3_3_muj_00012a34
	.4byte 0x00000031
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_INHALE1_muj_00012780
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00010000
	.4byte 0x0001005E
	.4byte cortez_reset_pose_table
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mode2_rib_open_event

# .data:0x5E04 | 0x27E0C | size: 0xD8
.obj mode2_rib_close_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_1D2_4_muj_00012a40
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_2D2_4_muj_00012a4c
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_3D3_4_muj_00012a58
	.4byte 0x00000031
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_RIB_COU_muj_00012664
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00010000
	.4byte 0x0001005E
	.4byte cortez_reset_pose_table
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mode2_rib_close_event

# .data:0x5EDC | 0x27EE4 | size: 0x130
.obj mode2_honeduka_damage_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000100
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001006F
	.4byte 0xFE363C88
	.4byte 0x0001005E
	.4byte mode_change_event
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x0001006F
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000008
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsDispOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C89
	.4byte 0x00020019
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C88
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFE363C8A
	.4byte 0x00000400
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte dead_event
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mode2_honeduka_damage_event

# .data:0x600C | 0x28014 | size: 0x1BC
.obj mode_change_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_1H_1_muj_00012a64
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_1H2_1_muj_00012a70
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_MOVE2_muj_000126b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte cortez_reset_pose_table
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_2H_1_muj_00012a7c
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_2H2_1_muj_00012a88
	.4byte 0x00000021
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000050
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_MOVE2_muj_000126b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte cortez_reset_pose_table
	.4byte 0x0001005E
	.4byte mode2_rib_open_event
	.4byte 0x0000002A
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mode_change_event

# 0x00000038..0x00000068 | size: 0x30
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x38 | size: 0x30
.obj entry_honeduka, local
	.skip 0x30
.endobj entry_honeduka
