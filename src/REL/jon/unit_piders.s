.include "macros.inc"
.file "unit_piders.o"

# 0x00006098..0x000067FC | size: 0x764
.text
.balign 4

# .text:0x0 | 0x6098 | size: 0x74
.fn piders_get_next_target, local
/* 00006098 0000615C  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 0000609C 00006160  38 A5 00 00 */	addi r5, r5, _battleWorkPointer@l
/* 000060A0 00006164  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 000060A4 00006168  38 C5 04 28 */	addi r6, r5, 0x428
/* 000060A8 0000616C  88 A5 0E DF */	lbz r5, 0xedf(r5)
/* 000060AC 00006170  38 05 00 01 */	addi r0, r5, 0x1
/* 000060B0 00006174  98 06 0A B7 */	stb r0, 0xab7(r6)
/* 000060B4 00006178  88 A6 0A B7 */	lbz r5, 0xab7(r6)
/* 000060B8 0000617C  88 06 0A 6C */	lbz r0, 0xa6c(r6)
/* 000060BC 00006180  7C A5 07 74 */	extsb r5, r5
/* 000060C0 00006184  7C 00 07 74 */	extsb r0, r0
/* 000060C4 00006188  7C 05 00 00 */	cmpw r5, r0
/* 000060C8 0000618C  40 80 00 30 */	bge .L_000060F8
/* 000060CC 00006190  7C A6 2A 14 */	add r5, r6, r5
/* 000060D0 00006194  88 05 0A 6D */	lbz r0, 0xa6d(r5)
/* 000060D4 00006198  7C 00 07 74 */	extsb r0, r0
/* 000060D8 0000619C  1C A0 00 24 */	mulli r5, r0, 0x24
/* 000060DC 000061A0  38 A5 00 04 */	addi r5, r5, 0x4
/* 000060E0 000061A4  7C A6 2A 14 */	add r5, r6, r5
/* 000060E4 000061A8  A8 05 00 00 */	lha r0, 0x0(r5)
/* 000060E8 000061AC  90 03 00 00 */	stw r0, 0x0(r3)
/* 000060EC 000061B0  A8 05 00 02 */	lha r0, 0x2(r5)
/* 000060F0 000061B4  90 04 00 00 */	stw r0, 0x0(r4)
/* 000060F4 000061B8  4E 80 00 20 */	blr
.L_000060F8:
/* 000060F8 000061BC  38 A0 FF FF */	li r5, -0x1
/* 000060FC 000061C0  38 00 00 00 */	li r0, 0x0
/* 00006100 000061C4  90 A3 00 00 */	stw r5, 0x0(r3)
/* 00006104 000061C8  90 04 00 00 */	stw r0, 0x0(r4)
/* 00006108 000061CC  4E 80 00 20 */	blr
.endfn piders_get_next_target

# .text:0x74 | 0x610C | size: 0x44
.fn piders_get_target, local
/* 0000610C 000061D0  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 00006110 000061D4  38 A5 00 00 */	addi r5, r5, _battleWorkPointer@l
/* 00006114 000061D8  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 00006118 000061DC  38 C5 04 28 */	addi r6, r5, 0x428
/* 0000611C 000061E0  88 05 0E DF */	lbz r0, 0xedf(r5)
/* 00006120 000061E4  7C 00 07 74 */	extsb r0, r0
/* 00006124 000061E8  7C A6 02 14 */	add r5, r6, r0
/* 00006128 000061EC  88 05 0A 6D */	lbz r0, 0xa6d(r5)
/* 0000612C 000061F0  7C 00 07 74 */	extsb r0, r0
/* 00006130 000061F4  1C A0 00 24 */	mulli r5, r0, 0x24
/* 00006134 000061F8  38 A5 00 04 */	addi r5, r5, 0x4
/* 00006138 000061FC  7C A6 2A 14 */	add r5, r6, r5
/* 0000613C 00006200  A8 05 00 00 */	lha r0, 0x0(r5)
/* 00006140 00006204  90 03 00 00 */	stw r0, 0x0(r3)
/* 00006144 00006208  A8 05 00 02 */	lha r0, 0x2(r5)
/* 00006148 0000620C  90 04 00 00 */	stw r0, 0x0(r4)
/* 0000614C 00006210  4E 80 00 20 */	blr
.endfn piders_get_target

# .text:0xB8 | 0x6150 | size: 0x15C
.fn piders_renzoku_attack_set_target, local
/* 00006150 00006214  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 00006154 00006218  7C 08 02 A6 */	mflr r0
/* 00006158 0000621C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000615C 00006220  38 A0 00 00 */	li r5, 0x0
/* 00006160 00006224  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 00006164 00006228  39 01 00 58 */	addi r8, r1, 0x58
/* 00006168 0000622C  BF 21 00 B4 */	stmw r25, 0xb4(r1)
/* 0000616C 00006230  7C 7E 1B 78 */	mr r30, r3
/* 00006170 00006234  38 64 00 00 */	addi r3, r4, _battleWorkPointer@l
/* 00006174 00006238  38 80 00 00 */	li r4, 0x0
/* 00006178 0000623C  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 0000617C 00006240  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 00006180 00006244  98 A6 0E DF */	stb r5, 0xedf(r6)
/* 00006184 00006248  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 00006188 0000624C  88 06 0E DF */	lbz r0, 0xedf(r6)
/* 0000618C 00006250  39 26 04 28 */	addi r9, r6, 0x428
/* 00006190 00006254  7C 00 07 74 */	extsb r0, r0
/* 00006194 00006258  7C C9 02 14 */	add r6, r9, r0
/* 00006198 0000625C  88 06 0A 6D */	lbz r0, 0xa6d(r6)
/* 0000619C 00006260  7C 00 07 74 */	extsb r0, r0
/* 000061A0 00006264  1C C0 00 24 */	mulli r6, r0, 0x24
/* 000061A4 00006268  38 E6 00 04 */	addi r7, r6, 0x4
/* 000061A8 0000626C  7C E9 3A 14 */	add r7, r9, r7
/* 000061AC 00006270  A8 C7 00 00 */	lha r6, 0x0(r7)
/* 000061B0 00006274  A8 07 00 02 */	lha r0, 0x2(r7)
/* 000061B4 00006278  90 C1 00 58 */	stw r6, 0x58(r1)
/* 000061B8 0000627C  90 01 00 08 */	stw r0, 0x8(r1)
.L_000061BC:
/* 000061BC 00006280  7C 08 28 2E */	lwzx r0, r8, r5
/* 000061C0 00006284  2C 00 FF FF */	cmpwi r0, -0x1
/* 000061C4 00006288  40 82 00 0C */	bne .L_000061D0
/* 000061C8 0000628C  7C 99 23 78 */	mr r25, r4
/* 000061CC 00006290  48 00 00 80 */	b .L_0000624C
.L_000061D0:
/* 000061D0 00006294  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 000061D4 00006298  38 84 00 01 */	addi r4, r4, 0x1
/* 000061D8 0000629C  38 A5 00 04 */	addi r5, r5, 0x4
/* 000061DC 000062A0  39 46 04 28 */	addi r10, r6, 0x428
/* 000061E0 000062A4  88 C6 0E DF */	lbz r6, 0xedf(r6)
/* 000061E4 000062A8  38 06 00 01 */	addi r0, r6, 0x1
/* 000061E8 000062AC  98 0A 0A B7 */	stb r0, 0xab7(r10)
/* 000061EC 000062B0  88 CA 0A B7 */	lbz r6, 0xab7(r10)
/* 000061F0 000062B4  88 0A 0A 6C */	lbz r0, 0xa6c(r10)
/* 000061F4 000062B8  7C C6 07 74 */	extsb r6, r6
/* 000061F8 000062BC  7C 00 07 74 */	extsb r0, r0
/* 000061FC 000062C0  7C 06 00 00 */	cmpw r6, r0
/* 00006200 000062C4  40 80 00 34 */	bge .L_00006234
/* 00006204 000062C8  38 06 0A 6D */	addi r0, r6, 0xa6d
/* 00006208 000062CC  38 C1 00 08 */	addi r6, r1, 0x8
/* 0000620C 000062D0  7C 0A 00 AE */	lbzx r0, r10, r0
/* 00006210 000062D4  7C 00 07 74 */	extsb r0, r0
/* 00006214 000062D8  1C E0 00 24 */	mulli r7, r0, 0x24
/* 00006218 000062DC  39 27 00 04 */	addi r9, r7, 0x4
/* 0000621C 000062E0  7D 2A 4A 14 */	add r9, r10, r9
/* 00006220 000062E4  A8 E9 00 00 */	lha r7, 0x0(r9)
/* 00006224 000062E8  A8 09 00 02 */	lha r0, 0x2(r9)
/* 00006228 000062EC  7C E8 29 2E */	stwx r7, r8, r5
/* 0000622C 000062F0  7C 06 29 2E */	stwx r0, r6, r5
/* 00006230 000062F4  4B FF FF 8C */	b .L_000061BC
.L_00006234:
/* 00006234 000062F8  38 E0 FF FF */	li r7, -0x1
/* 00006238 000062FC  38 C1 00 08 */	addi r6, r1, 0x8
/* 0000623C 00006300  38 00 00 00 */	li r0, 0x0
/* 00006240 00006304  7C E8 29 2E */	stwx r7, r8, r5
/* 00006244 00006308  7C 06 29 2E */	stwx r0, r6, r5
/* 00006248 0000630C  4B FF FF 74 */	b .L_000061BC
.L_0000624C:
/* 0000624C 00006310  3B 81 00 58 */	addi r28, r1, 0x58
/* 00006250 00006314  3B A1 00 08 */	addi r29, r1, 0x8
/* 00006254 00006318  3B 40 00 00 */	li r26, 0x0
.L_00006258:
/* 00006258 0000631C  7F 23 CB 78 */	mr r3, r25
/* 0000625C 00006320  4B FF A8 15 */	bl irand
/* 00006260 00006324  54 7B 10 3A */	slwi r27, r3, 2
/* 00006264 00006328  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00006268 0000632C  7C BC D8 2E */	lwzx r5, r28, r27
/* 0000626C 00006330  7F C3 F3 78 */	mr r3, r30
/* 00006270 00006334  4B FF A8 01 */	bl evtSetValue
/* 00006274 00006338  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00006278 0000633C  7F C3 F3 78 */	mr r3, r30
/* 0000627C 00006340  7C BD D8 2E */	lwzx r5, r29, r27
/* 00006280 00006344  3B FF 00 08 */	addi r31, r31, 0x8
/* 00006284 00006348  4B FF A7 ED */	bl evtSetValue
/* 00006288 0000634C  3B 5A 00 01 */	addi r26, r26, 0x1
/* 0000628C 00006350  2C 1A 00 03 */	cmpwi r26, 0x3
/* 00006290 00006354  41 80 FF C8 */	blt .L_00006258
/* 00006294 00006358  BB 21 00 B4 */	lmw r25, 0xb4(r1)
/* 00006298 0000635C  38 60 00 02 */	li r3, 0x2
/* 0000629C 00006360  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 000062A0 00006364  7C 08 03 A6 */	mtlr r0
/* 000062A4 00006368  38 21 00 D0 */	addi r1, r1, 0xd0
/* 000062A8 0000636C  4E 80 00 20 */	blr
.endfn piders_renzoku_attack_set_target

# .text:0x214 | 0x62AC | size: 0xC0
.fn piders_get_first_pos_attr, local
/* 000062AC 00006370  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000062B0 00006374  7C 08 02 A6 */	mflr r0
/* 000062B4 00006378  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000062B8 0000637C  90 01 00 24 */	stw r0, 0x24(r1)
/* 000062BC 00006380  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 000062C0 00006384  7C 7A 1B 78 */	mr r26, r3
/* 000062C4 00006388  3B C0 00 00 */	li r30, 0x0
/* 000062C8 0000638C  3B E0 00 00 */	li r31, 0x0
/* 000062CC 00006390  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 000062D0 00006394  83 84 00 00 */	lwz r28, _battleWorkPointer@l(r4)
.L_000062D4:
/* 000062D4 00006398  38 1F 00 20 */	addi r0, r31, 0x20
/* 000062D8 0000639C  7F 7C 00 2E */	lwzx r27, r28, r0
/* 000062DC 000063A0  28 1B 00 00 */	cmplwi r27, 0x0
/* 000062E0 000063A4  41 82 00 2C */	beq .L_0000630C
/* 000062E4 000063A8  80 1B 00 08 */	lwz r0, 0x8(r27)
/* 000062E8 000063AC  2C 00 00 1B */	cmpwi r0, 0x1b
/* 000062EC 000063B0  41 82 00 0C */	beq .L_000062F8
/* 000062F0 000063B4  2C 00 00 A4 */	cmpwi r0, 0xa4
/* 000062F4 000063B8  40 82 00 18 */	bne .L_0000630C
.L_000062F8:
/* 000062F8 000063BC  7F 63 DB 78 */	mr r3, r27
/* 000062FC 000063C0  38 80 00 1B */	li r4, 0x1b
/* 00006300 000063C4  4B FF A7 71 */	bl BtlUnit_CheckStatus
/* 00006304 000063C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 00006308 000063CC  41 82 00 14 */	beq .L_0000631C
.L_0000630C:
/* 0000630C 000063D0  3B DE 00 01 */	addi r30, r30, 0x1
/* 00006310 000063D4  3B FF 00 04 */	addi r31, r31, 0x4
/* 00006314 000063D8  2C 1E 00 40 */	cmpwi r30, 0x40
/* 00006318 000063DC  41 80 FF BC */	blt .L_000062D4
.L_0000631C:
/* 0000631C 000063E0  83 DB 02 18 */	lwz r30, 0x218(r27)
/* 00006320 000063E4  7F 63 DB 78 */	mr r3, r27
/* 00006324 000063E8  4B FF A7 4D */	bl BtlUnit_CanActStatus
/* 00006328 000063EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000632C 000063F0  41 82 00 18 */	beq .L_00006344
/* 00006330 000063F4  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00006334 000063F8  40 82 00 0C */	bne .L_00006340
/* 00006338 000063FC  3B C0 00 01 */	li r30, 0x1
/* 0000633C 00006400  48 00 00 08 */	b .L_00006344
.L_00006340:
/* 00006340 00006404  3B C0 00 00 */	li r30, 0x0
.L_00006344:
/* 00006344 00006408  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00006348 0000640C  7F 43 D3 78 */	mr r3, r26
/* 0000634C 00006410  7F C5 F3 78 */	mr r5, r30
/* 00006350 00006414  4B FF A7 21 */	bl evtSetValue
/* 00006354 00006418  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 00006358 0000641C  38 60 00 02 */	li r3, 0x2
/* 0000635C 00006420  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00006360 00006424  7C 08 03 A6 */	mtlr r0
/* 00006364 00006428  38 21 00 20 */	addi r1, r1, 0x20
/* 00006368 0000642C  4E 80 00 20 */	blr
.endfn piders_get_first_pos_attr

# .text:0x2D4 | 0x636C | size: 0xCC
.fn piders_get_zyun, local
/* 0000636C 00006430  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00006370 00006434  7C 08 02 A6 */	mflr r0
/* 00006374 00006438  90 01 00 34 */	stw r0, 0x34(r1)
/* 00006378 0000643C  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 0000637C 00006440  7C 78 1B 78 */	mr r24, r3
/* 00006380 00006444  3B 60 00 00 */	li r27, 0x0
/* 00006384 00006448  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00006388 0000644C  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 0000638C 00006450  4B FF A6 E5 */	bl evtGetValue
/* 00006390 00006454  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006394 00006458  7C 60 1B 78 */	mr r0, r3
/* 00006398 0000645C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000639C 00006460  7F 03 C3 78 */	mr r3, r24
/* 000063A0 00006464  83 45 00 00 */	lwz r26, 0x0(r5)
/* 000063A4 00006468  7C 04 03 78 */	mr r4, r0
/* 000063A8 0000646C  4B FF A6 C9 */	bl BattleTransID
/* 000063AC 00006470  7C 7E 1B 78 */	mr r30, r3
/* 000063B0 00006474  3B A0 00 00 */	li r29, 0x0
/* 000063B4 00006478  3B E0 00 00 */	li r31, 0x0
.L_000063B8:
/* 000063B8 0000647C  38 1F 00 20 */	addi r0, r31, 0x20
/* 000063BC 00006480  7F 3A 00 2E */	lwzx r25, r26, r0
/* 000063C0 00006484  28 19 00 00 */	cmplwi r25, 0x0
/* 000063C4 00006488  41 82 00 3C */	beq .L_00006400
/* 000063C8 0000648C  80 19 00 08 */	lwz r0, 0x8(r25)
/* 000063CC 00006490  2C 00 00 1B */	cmpwi r0, 0x1b
/* 000063D0 00006494  41 82 00 0C */	beq .L_000063DC
/* 000063D4 00006498  2C 00 00 A4 */	cmpwi r0, 0xa4
/* 000063D8 0000649C  40 82 00 28 */	bne .L_00006400
.L_000063DC:
/* 000063DC 000064A0  7F 23 CB 78 */	mr r3, r25
/* 000063E0 000064A4  38 80 00 1B */	li r4, 0x1b
/* 000063E4 000064A8  4B FF A6 8D */	bl BtlUnit_CheckStatus
/* 000063E8 000064AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 000063EC 000064B0  40 82 00 08 */	bne .L_000063F4
/* 000063F0 000064B4  3B 7B 00 01 */	addi r27, r27, 0x1
.L_000063F4:
/* 000063F4 000064B8  80 19 00 00 */	lwz r0, 0x0(r25)
/* 000063F8 000064BC  7C 00 F0 00 */	cmpw r0, r30
/* 000063FC 000064C0  41 82 00 14 */	beq .L_00006410
.L_00006400:
/* 00006400 000064C4  3B BD 00 01 */	addi r29, r29, 0x1
/* 00006404 000064C8  3B FF 00 04 */	addi r31, r31, 0x4
/* 00006408 000064CC  2C 1D 00 40 */	cmpwi r29, 0x40
/* 0000640C 000064D0  41 80 FF AC */	blt .L_000063B8
.L_00006410:
/* 00006410 000064D4  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 00006414 000064D8  7F 03 C3 78 */	mr r3, r24
/* 00006418 000064DC  7F 65 DB 78 */	mr r5, r27
/* 0000641C 000064E0  4B FF A6 55 */	bl evtSetValue
/* 00006420 000064E4  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 00006424 000064E8  38 60 00 02 */	li r3, 0x2
/* 00006428 000064EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000642C 000064F0  7C 08 03 A6 */	mtlr r0
/* 00006430 000064F4  38 21 00 30 */	addi r1, r1, 0x30
/* 00006434 000064F8  4E 80 00 20 */	blr
.endfn piders_get_zyun

# .text:0x3A0 | 0x6438 | size: 0x9C
.fn piders_get_num, local
/* 00006438 000064FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000643C 00006500  7C 08 02 A6 */	mflr r0
/* 00006440 00006504  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006444 00006508  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006448 0000650C  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 0000644C 00006510  7C 7A 1B 78 */	mr r26, r3
/* 00006450 00006514  3B 80 00 00 */	li r28, 0x0
/* 00006454 00006518  3B C0 00 00 */	li r30, 0x0
/* 00006458 0000651C  3B E0 00 00 */	li r31, 0x0
/* 0000645C 00006520  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00006460 00006524  83 64 00 00 */	lwz r27, _battleWorkPointer@l(r4)
.L_00006464:
/* 00006464 00006528  38 1F 00 20 */	addi r0, r31, 0x20
/* 00006468 0000652C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 0000646C 00006530  28 03 00 00 */	cmplwi r3, 0x0
/* 00006470 00006534  41 82 00 2C */	beq .L_0000649C
/* 00006474 00006538  80 03 00 08 */	lwz r0, 0x8(r3)
/* 00006478 0000653C  2C 00 00 1B */	cmpwi r0, 0x1b
/* 0000647C 00006540  41 82 00 0C */	beq .L_00006488
/* 00006480 00006544  2C 00 00 A4 */	cmpwi r0, 0xa4
/* 00006484 00006548  40 82 00 18 */	bne .L_0000649C
.L_00006488:
/* 00006488 0000654C  38 80 00 1B */	li r4, 0x1b
/* 0000648C 00006550  4B FF A5 E5 */	bl BtlUnit_CheckStatus
/* 00006490 00006554  2C 03 00 00 */	cmpwi r3, 0x0
/* 00006494 00006558  40 82 00 08 */	bne .L_0000649C
/* 00006498 0000655C  3B 9C 00 01 */	addi r28, r28, 0x1
.L_0000649C:
/* 0000649C 00006560  3B DE 00 01 */	addi r30, r30, 0x1
/* 000064A0 00006564  3B FF 00 04 */	addi r31, r31, 0x4
/* 000064A4 00006568  2C 1E 00 40 */	cmpwi r30, 0x40
/* 000064A8 0000656C  41 80 FF BC */	blt .L_00006464
/* 000064AC 00006570  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 000064B0 00006574  7F 43 D3 78 */	mr r3, r26
/* 000064B4 00006578  7F 85 E3 78 */	mr r5, r28
/* 000064B8 0000657C  4B FF A5 B9 */	bl evtSetValue
/* 000064BC 00006580  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 000064C0 00006584  38 60 00 02 */	li r3, 0x2
/* 000064C4 00006588  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000064C8 0000658C  7C 08 03 A6 */	mtlr r0
/* 000064CC 00006590  38 21 00 20 */	addi r1, r1, 0x20
/* 000064D0 00006594  4E 80 00 20 */	blr
.endfn piders_get_num

# .text:0x43C | 0x64D4 | size: 0xE4
.fn piders_draw_yarn, local
/* 000064D4 00006598  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000064D8 0000659C  7C 08 02 A6 */	mflr r0
/* 000064DC 000065A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 000064E0 000065A4  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000064E4 000065A8  7C 7D 1B 78 */	mr r29, r3
/* 000064E8 000065AC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000064EC 000065B0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000064F0 000065B4  4B FF A5 81 */	bl evtGetValue
/* 000064F4 000065B8  54 7F 06 3E */	clrlwi r31, r3, 24
/* 000064F8 000065BC  7F A3 EB 78 */	mr r3, r29
/* 000064FC 000065C0  38 80 FF FE */	li r4, -0x2
/* 00006500 000065C4  4B FF A5 71 */	bl BattleTransID
/* 00006504 000065C8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006508 000065CC  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000650C 000065D0  7C 64 1B 78 */	mr r4, r3
/* 00006510 000065D4  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006514 000065D8  4B FF A5 5D */	bl BattleGetUnitPtr
/* 00006518 000065DC  83 A3 03 14 */	lwz r29, 0x314(r3)
/* 0000651C 000065E0  7C 7E 1B 78 */	mr r30, r3
/* 00006520 000065E4  38 9D 00 0C */	addi r4, r29, 0xc
/* 00006524 000065E8  38 BD 00 10 */	addi r5, r29, 0x10
/* 00006528 000065EC  38 DD 00 14 */	addi r6, r29, 0x14
/* 0000652C 000065F0  4B FF A5 45 */	bl BtlUnit_GetHomePos
/* 00006530 000065F4  80 7E 02 20 */	lwz r3, 0x220(r30)
/* 00006534 000065F8  3C 00 43 30 */	lis r0, 0x4330
/* 00006538 000065FC  90 01 00 08 */	stw r0, 0x8(r1)
/* 0000653C 00006600  3C 80 00 00 */	lis r4, double_to_int_jon_0000e468@ha
/* 00006540 00006604  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 00006544 00006608  C8 24 00 00 */	lfd f1, double_to_int_jon_0000e468@l(r4)
/* 00006548 0000660C  90 01 00 0C */	stw r0, 0xc(r1)
/* 0000654C 00006610  7F C3 F3 78 */	mr r3, r30
/* 00006550 00006614  7F A4 EB 78 */	mr r4, r29
/* 00006554 00006618  38 BD 00 04 */	addi r5, r29, 0x4
/* 00006558 0000661C  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0000655C 00006620  38 DD 00 08 */	addi r6, r29, 0x8
/* 00006560 00006624  EC 00 08 28 */	fsubs f0, f0, f1
/* 00006564 00006628  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 00006568 0000662C  4B FF A5 09 */	bl BtlUnit_GetHomePos
/* 0000656C 00006630  3C 60 00 00 */	lis r3, float_400_jon_0000e460@ha
/* 00006570 00006634  3C 80 00 00 */	lis r4, zero_jon_0000e464@ha
/* 00006574 00006638  38 A3 00 00 */	addi r5, r3, float_400_jon_0000e460@l
/* 00006578 0000663C  C0 24 00 00 */	lfs f1, zero_jon_0000e464@l(r4)
/* 0000657C 00006640  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00006580 00006644  3C 60 00 00 */	lis r3, piders_draw_yarn_sub@ha
/* 00006584 00006648  38 A3 00 00 */	addi r5, r3, piders_draw_yarn_sub@l
/* 00006588 0000664C  7F A6 EB 78 */	mr r6, r29
/* 0000658C 00006650  D0 1D 00 04 */	stfs f0, 0x4(r29)
/* 00006590 00006654  38 60 00 04 */	li r3, 0x4
/* 00006594 00006658  38 80 00 02 */	li r4, 0x2
/* 00006598 0000665C  9B FD 00 18 */	stb r31, 0x18(r29)
/* 0000659C 00006660  4B FF A4 D5 */	bl dispEntry
/* 000065A0 00006664  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000065A4 00006668  38 60 00 02 */	li r3, 0x2
/* 000065A8 0000666C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000065AC 00006670  7C 08 03 A6 */	mtlr r0
/* 000065B0 00006674  38 21 00 20 */	addi r1, r1, 0x20
/* 000065B4 00006678  4E 80 00 20 */	blr
.endfn piders_draw_yarn

# .text:0x520 | 0x65B8 | size: 0x1F0
.fn piders_draw_yarn_sub, local
/* 000065B8 0000667C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000065BC 00006680  7C 08 02 A6 */	mflr r0
/* 000065C0 00006684  38 60 00 04 */	li r3, 0x4
/* 000065C4 00006688  90 01 00 24 */	stw r0, 0x24(r1)
/* 000065C8 0000668C  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 000065CC 00006690  7C 9E 23 78 */	mr r30, r4
/* 000065D0 00006694  4B FF A4 A1 */	bl camGetPtr
/* 000065D4 00006698  7C 7F 1B 78 */	mr r31, r3
/* 000065D8 0000669C  38 60 00 00 */	li r3, 0x0
/* 000065DC 000066A0  4B FF A4 95 */	bl GXSetCullMode
/* 000065E0 000066A4  4B FF A4 91 */	bl GXClearVtxDesc
/* 000065E4 000066A8  38 60 00 09 */	li r3, 0x9
/* 000065E8 000066AC  38 80 00 01 */	li r4, 0x1
/* 000065EC 000066B0  4B FF A4 85 */	bl GXSetVtxDesc
/* 000065F0 000066B4  38 60 00 00 */	li r3, 0x0
/* 000065F4 000066B8  38 80 00 09 */	li r4, 0x9
/* 000065F8 000066BC  38 A0 00 01 */	li r5, 0x1
/* 000065FC 000066C0  38 C0 00 04 */	li r6, 0x4
/* 00006600 000066C4  38 E0 00 00 */	li r7, 0x0
/* 00006604 000066C8  4B FF A4 6D */	bl GXSetVtxAttrFmt
/* 00006608 000066CC  38 60 00 01 */	li r3, 0x1
/* 0000660C 000066D0  4B FF A4 65 */	bl GXSetNumChans
/* 00006610 000066D4  38 60 00 04 */	li r3, 0x4
/* 00006614 000066D8  38 80 00 00 */	li r4, 0x0
/* 00006618 000066DC  38 A0 00 00 */	li r5, 0x0
/* 0000661C 000066E0  38 C0 00 00 */	li r6, 0x0
/* 00006620 000066E4  38 E0 00 00 */	li r7, 0x0
/* 00006624 000066E8  39 00 00 02 */	li r8, 0x2
/* 00006628 000066EC  39 20 00 02 */	li r9, 0x2
/* 0000662C 000066F0  4B FF A4 45 */	bl GXSetChanCtrl
/* 00006630 000066F4  3C 60 00 00 */	lis r3, dat_jon_0000e388@ha
/* 00006634 000066F8  88 1E 00 18 */	lbz r0, 0x18(r30)
/* 00006638 000066FC  80 A3 00 00 */	lwz r5, dat_jon_0000e388@l(r3)
/* 0000663C 00006700  38 81 00 0C */	addi r4, r1, 0xc
/* 00006640 00006704  38 60 00 04 */	li r3, 0x4
/* 00006644 00006708  90 A1 00 08 */	stw r5, 0x8(r1)
/* 00006648 0000670C  98 01 00 0B */	stb r0, 0xb(r1)
/* 0000664C 00006710  80 01 00 08 */	lwz r0, 0x8(r1)
/* 00006650 00006714  90 01 00 0C */	stw r0, 0xc(r1)
/* 00006654 00006718  4B FF A4 1D */	bl GXSetChanMatColor
/* 00006658 0000671C  38 60 00 00 */	li r3, 0x0
/* 0000665C 00006720  4B FF A4 15 */	bl GXSetNumTexGens
/* 00006660 00006724  38 60 00 01 */	li r3, 0x1
/* 00006664 00006728  4B FF A4 0D */	bl GXSetNumTevStages
/* 00006668 0000672C  38 60 00 00 */	li r3, 0x0
/* 0000666C 00006730  38 80 00 00 */	li r4, 0x0
/* 00006670 00006734  38 A0 00 00 */	li r5, 0x0
/* 00006674 00006738  38 C0 00 00 */	li r6, 0x0
/* 00006678 0000673C  38 E0 00 01 */	li r7, 0x1
/* 0000667C 00006740  39 00 00 00 */	li r8, 0x0
/* 00006680 00006744  4B FF A3 F1 */	bl GXSetTevColorOp
/* 00006684 00006748  38 60 00 00 */	li r3, 0x0
/* 00006688 0000674C  38 80 00 0F */	li r4, 0xf
/* 0000668C 00006750  38 A0 00 0F */	li r5, 0xf
/* 00006690 00006754  38 C0 00 0F */	li r6, 0xf
/* 00006694 00006758  38 E0 00 0A */	li r7, 0xa
/* 00006698 0000675C  4B FF A3 D9 */	bl GXSetTevColorIn
/* 0000669C 00006760  38 60 00 00 */	li r3, 0x0
/* 000066A0 00006764  38 80 00 00 */	li r4, 0x0
/* 000066A4 00006768  38 A0 00 00 */	li r5, 0x0
/* 000066A8 0000676C  38 C0 00 00 */	li r6, 0x0
/* 000066AC 00006770  38 E0 00 01 */	li r7, 0x1
/* 000066B0 00006774  39 00 00 00 */	li r8, 0x0
/* 000066B4 00006778  4B FF A3 BD */	bl GXSetTevAlphaOp
/* 000066B8 0000677C  38 60 00 00 */	li r3, 0x0
/* 000066BC 00006780  38 80 00 07 */	li r4, 0x7
/* 000066C0 00006784  38 A0 00 07 */	li r5, 0x7
/* 000066C4 00006788  38 C0 00 07 */	li r6, 0x7
/* 000066C8 0000678C  38 E0 00 05 */	li r7, 0x5
/* 000066CC 00006790  4B FF A3 A5 */	bl GXSetTevAlphaIn
/* 000066D0 00006794  38 60 00 00 */	li r3, 0x0
/* 000066D4 00006798  38 80 00 FF */	li r4, 0xff
/* 000066D8 0000679C  38 A0 00 FF */	li r5, 0xff
/* 000066DC 000067A0  38 C0 00 04 */	li r6, 0x4
/* 000066E0 000067A4  4B FF A3 91 */	bl GXSetTevOrder
/* 000066E4 000067A8  38 7F 01 1C */	addi r3, r31, 0x11c
/* 000066E8 000067AC  38 80 00 00 */	li r4, 0x0
/* 000066EC 000067B0  4B FF A3 85 */	bl GXLoadPosMtxImm
/* 000066F0 000067B4  38 60 00 80 */	li r3, 0x80
/* 000066F4 000067B8  38 80 00 00 */	li r4, 0x0
/* 000066F8 000067BC  38 A0 00 04 */	li r5, 0x4
/* 000066FC 000067C0  4B FF A3 75 */	bl GXBegin
/* 00006700 000067C4  3C 60 00 00 */	lis r3, float_1_jon_0000e474@ha
/* 00006704 000067C8  3C 80 00 00 */	lis r4, float_5_jon_0000e470@ha
/* 00006708 000067CC  C0 43 00 00 */	lfs f2, float_1_jon_0000e474@l(r3)
/* 0000670C 000067D0  3C 60 CC 01 */	lis r3, 0xcc01
/* 00006710 000067D4  C0 1E 00 00 */	lfs f0, 0x0(r30)
/* 00006714 000067D8  C0 3E 00 08 */	lfs f1, 0x8(r30)
/* 00006718 000067DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 0000671C 000067E0  C0 9E 00 04 */	lfs f4, 0x4(r30)
/* 00006720 000067E4  C0 64 00 00 */	lfs f3, float_5_jon_0000e470@l(r4)
/* 00006724 000067E8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 00006728 000067EC  EC 01 18 28 */	fsubs f0, f1, f3
/* 0000672C 000067F0  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 00006730 000067F4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 00006734 000067F8  C0 1E 00 00 */	lfs f0, 0x0(r30)
/* 00006738 000067FC  C0 3E 00 08 */	lfs f1, 0x8(r30)
/* 0000673C 00006800  EC 02 00 2A */	fadds f0, f2, f0
/* 00006740 00006804  C0 9E 00 04 */	lfs f4, 0x4(r30)
/* 00006744 00006808  EC 21 18 28 */	fsubs f1, f1, f3
/* 00006748 0000680C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 0000674C 00006810  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 00006750 00006814  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 00006754 00006818  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 00006758 0000681C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 0000675C 00006820  EC 02 00 2A */	fadds f0, f2, f0
/* 00006760 00006824  C0 9E 00 10 */	lfs f4, 0x10(r30)
/* 00006764 00006828  EC 21 18 28 */	fsubs f1, f1, f3
/* 00006768 0000682C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 0000676C 00006830  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 00006770 00006834  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 00006774 00006838  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 00006778 0000683C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 0000677C 00006840  EC 00 10 28 */	fsubs f0, f0, f2
/* 00006780 00006844  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 00006784 00006848  EC 21 18 28 */	fsubs f1, f1, f3
/* 00006788 0000684C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 0000678C 00006850  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 00006790 00006854  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 00006794 00006858  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00006798 0000685C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000679C 00006860  7C 08 03 A6 */	mtlr r0
/* 000067A0 00006864  38 21 00 20 */	addi r1, r1, 0x20
/* 000067A4 00006868  4E 80 00 20 */	blr
.endfn piders_draw_yarn_sub

# .text:0x710 | 0x67A8 | size: 0x54
.fn piders_yarn_init, local
/* 000067A8 0000686C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000067AC 00006870  7C 08 02 A6 */	mflr r0
/* 000067B0 00006874  38 80 FF FE */	li r4, -0x2
/* 000067B4 00006878  90 01 00 14 */	stw r0, 0x14(r1)
/* 000067B8 0000687C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000067BC 00006880  4B FF A2 B5 */	bl BattleTransID
/* 000067C0 00006884  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000067C4 00006888  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000067C8 0000688C  7C 64 1B 78 */	mr r4, r3
/* 000067CC 00006890  80 65 00 00 */	lwz r3, 0x0(r5)
/* 000067D0 00006894  4B FF A2 A1 */	bl BattleGetUnitPtr
/* 000067D4 00006898  7C 7F 1B 78 */	mr r31, r3
/* 000067D8 0000689C  38 60 00 1C */	li r3, 0x1c
/* 000067DC 000068A0  4B FF A2 95 */	bl BattleAlloc
/* 000067E0 000068A4  90 7F 03 14 */	stw r3, 0x314(r31)
/* 000067E4 000068A8  38 60 00 02 */	li r3, 0x2
/* 000067E8 000068AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000067EC 000068B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000067F0 000068B4  7C 08 03 A6 */	mtlr r0
/* 000067F4 000068B8  38 21 00 10 */	addi r1, r1, 0x10
/* 000067F8 000068BC  4E 80 00 20 */	blr
.endfn piders_yarn_init

# 0x000072A0..0x00007448 | size: 0x1A8
.rodata
.balign 8

# .rodata:0x0 | 0x72A0 | size: 0xE
.obj str_btl_un_piders_jon_0000e2d0, local
	.string "btl_un_piders"
.endobj str_btl_un_piders_jon_0000e2d0

# .rodata:0xE | 0x72AE | size: 0x2
.obj gap_03_000072AE_rodata, global
.hidden gap_03_000072AE_rodata
	.2byte 0x0000
.endobj gap_03_000072AE_rodata

# .rodata:0x10 | 0x72B0 | size: 0x17
.obj str_SFX_ENM_PAIDA_DAMAGE_jon_0000e2e0, local
	.string "SFX_ENM_PAIDA_DAMAGED1"
.endobj str_SFX_ENM_PAIDA_DAMAGE_jon_0000e2e0

# .rodata:0x27 | 0x72C7 | size: 0x1
.obj gap_03_000072C7_rodata, global
.hidden gap_03_000072C7_rodata
	.byte 0x00
.endobj gap_03_000072C7_rodata

# .rodata:0x28 | 0x72C8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000e2f8, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000e2f8

# .rodata:0x3D | 0x72DD | size: 0x3
.obj gap_03_000072DD_rodata, global
.hidden gap_03_000072DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000072DD_rodata

# .rodata:0x40 | 0x72E0 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000e310, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000e310

# .rodata:0x54 | 0x72F4 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000e324, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000e324

# .rodata:0x6D | 0x730D | size: 0x3
.obj gap_03_0000730D_rodata, global
.hidden gap_03_0000730D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000730D_rodata

# .rodata:0x70 | 0x7310 | size: 0x8
.obj str_PAI_N_1_jon_0000e340, local
	.string "PAI_N_1"
.endobj str_PAI_N_1_jon_0000e340

# .rodata:0x78 | 0x7318 | size: 0x8
.obj str_PAI_Y_1_jon_0000e348, local
	.string "PAI_Y_1"
.endobj str_PAI_Y_1_jon_0000e348

# .rodata:0x80 | 0x7320 | size: 0x8
.obj str_PAI_K_1_jon_0000e350, local
	.string "PAI_K_1"
.endobj str_PAI_K_1_jon_0000e350

# .rodata:0x88 | 0x7328 | size: 0x8
.obj str_PAI_X_1_jon_0000e358, local
	.string "PAI_X_1"
.endobj str_PAI_X_1_jon_0000e358

# .rodata:0x90 | 0x7330 | size: 0x8
.obj str_PAI_S_1_jon_0000e360, local
	.string "PAI_S_1"
.endobj str_PAI_S_1_jon_0000e360

# .rodata:0x98 | 0x7338 | size: 0x8
.obj str_PAI_D_1_jon_0000e368, local
	.string "PAI_D_1"
.endobj str_PAI_D_1_jon_0000e368

# .rodata:0xA0 | 0x7340 | size: 0x8
.obj str_PAI_A_1_jon_0000e370, local
	.string "PAI_A_1"
.endobj str_PAI_A_1_jon_0000e370

# .rodata:0xA8 | 0x7348 | size: 0x8
.obj str_PAI_W_1_jon_0000e378, local
	.string "PAI_W_1"
.endobj str_PAI_W_1_jon_0000e378

# .rodata:0xB0 | 0x7350 | size: 0x7
.obj str_c_paid_jon_0000e380, local
	.string "c_paid"
.endobj str_c_paid_jon_0000e380

# .rodata:0xB7 | 0x7357 | size: 0x1
.obj gap_03_00007357_rodata, global
.hidden gap_03_00007357_rodata
	.byte 0x00
.endobj gap_03_00007357_rodata

# .rodata:0xB8 | 0x7358 | size: 0x4
.obj dat_jon_0000e388, local
	.4byte 0xFFFFFF00
.endobj dat_jon_0000e388

# .rodata:0xBC | 0x735C | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_jon_0000e38c, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_jon_0000e38c

# .rodata:0xD1 | 0x7371 | size: 0x3
.obj gap_03_00007371_rodata, global
.hidden gap_03_00007371_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007371_rodata

# .rodata:0xD4 | 0x7374 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_jon_0000e3a4, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_jon_0000e3a4

# .rodata:0xE9 | 0x7389 | size: 0x3
.obj gap_03_00007389_rodata, global
.hidden gap_03_00007389_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007389_rodata

# .rodata:0xEC | 0x738C | size: 0x1
.obj zero_jon_0000e3bc, local
	.byte 0x00
.endobj zero_jon_0000e3bc

# .rodata:0xED | 0x738D | size: 0x3
.obj gap_03_0000738D_rodata, global
.hidden gap_03_0000738D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000738D_rodata

# .rodata:0xF0 | 0x7390 | size: 0xB
.obj str_expbom_n64_jon_0000e3c0, local
	.string "expbom_n64"
.endobj str_expbom_n64_jon_0000e3c0

# .rodata:0xFB | 0x739B | size: 0x1
.obj gap_03_0000739B_rodata, global
.hidden gap_03_0000739B_rodata
	.byte 0x00
.endobj gap_03_0000739B_rodata

# .rodata:0xFC | 0x739C | size: 0xB
.obj str_star_point_jon_0000e3cc, local
	.string "star_point"
.endobj str_star_point_jon_0000e3cc

# .rodata:0x107 | 0x73A7 | size: 0x1
.obj gap_03_000073A7_rodata, global
.hidden gap_03_000073A7_rodata
	.byte 0x00
.endobj gap_03_000073A7_rodata

# .rodata:0x108 | 0x73A8 | size: 0x16
.obj str_SFX_BTL_CLAUD_BREATH_jon_0000e3d8, local
	.string "SFX_BTL_CLAUD_BREATH3"
.endobj str_SFX_BTL_CLAUD_BREATH_jon_0000e3d8

# .rodata:0x11E | 0x73BE | size: 0x2
.obj gap_03_000073BE_rodata, global
.hidden gap_03_000073BE_rodata
	.2byte 0x0000
.endobj gap_03_000073BE_rodata

# .rodata:0x120 | 0x73C0 | size: 0x14
.obj str_SFX_ENM_PAIDA_MOVE1_jon_0000e3f0, local
	.string "SFX_ENM_PAIDA_MOVE1"
.endobj str_SFX_ENM_PAIDA_MOVE1_jon_0000e3f0

# .rodata:0x134 | 0x73D4 | size: 0x14
.obj str_SFX_ENM_PAIDA_MOVE2_jon_0000e404, local
	.string "SFX_ENM_PAIDA_MOVE2"
.endobj str_SFX_ENM_PAIDA_MOVE2_jon_0000e404

# .rodata:0x148 | 0x73E8 | size: 0x9
.obj str_PAI_A_2a_jon_0000e418, local
	.string "PAI_A_2a"
.endobj str_PAI_A_2a_jon_0000e418

# .rodata:0x151 | 0x73F1 | size: 0x3
.obj gap_03_000073F1_rodata, global
.hidden gap_03_000073F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000073F1_rodata

# .rodata:0x154 | 0x73F4 | size: 0x16
.obj str_SFX_ENM_PAIDA_ATTACK_jon_0000e424, local
	.string "SFX_ENM_PAIDA_ATTACK1"
.endobj str_SFX_ENM_PAIDA_ATTACK_jon_0000e424

# .rodata:0x16A | 0x740A | size: 0x2
.obj gap_03_0000740A_rodata, global
.hidden gap_03_0000740A_rodata
	.2byte 0x0000
.endobj gap_03_0000740A_rodata

# .rodata:0x16C | 0x740C | size: 0x16
.obj str_SFX_ENM_PAIDA_ATTACK_jon_0000e43c, local
	.string "SFX_ENM_PAIDA_ATTACK2"
.endobj str_SFX_ENM_PAIDA_ATTACK_jon_0000e43c

# .rodata:0x182 | 0x7422 | size: 0x2
.obj gap_03_00007422_rodata, global
.hidden gap_03_00007422_rodata
	.2byte 0x0000
.endobj gap_03_00007422_rodata

# .rodata:0x184 | 0x7424 | size: 0x9
.obj str_PAI_A_3a_jon_0000e454, local
	.string "PAI_A_3a"
.endobj str_PAI_A_3a_jon_0000e454
	.byte 0x00, 0x00, 0x00

# .rodata:0x190 | 0x7430 | size: 0x4
.obj float_400_jon_0000e460, local
	.float 400
.endobj float_400_jon_0000e460

# .rodata:0x194 | 0x7434 | size: 0x4
.obj zero_jon_0000e464, local
	.float 0
.endobj zero_jon_0000e464

# .rodata:0x198 | 0x7438 | size: 0x8
.obj double_to_int_jon_0000e468, local
	.double 4503601774854144
.endobj double_to_int_jon_0000e468

# .rodata:0x1A0 | 0x7440 | size: 0x4
.obj float_5_jon_0000e470, local
	.float 5
.endobj float_5_jon_0000e470

# .rodata:0x1A4 | 0x7444 | size: 0x4
.obj float_1_jon_0000e474, local
	.float 1
.endobj float_1_jon_0000e474

# 0x00066CC8..0x00068E08 | size: 0x2140
.data
.balign 8

# .data:0x0 | 0x66CC8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x66CD0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x66CD4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x66CD8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x66CDC | size: 0x4
.obj gap_04_00066CDC_data, global
.hidden gap_04_00066CDC_data
	.4byte 0x00000000
.endobj gap_04_00066CDC_data

# .data:0x18 | 0x66CE0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x66CE8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x66CEC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x66CF0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x66CF8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x66CFC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x66D00 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x66D04 | size: 0x4
.obj gap_04_00066D04_data, global
.hidden gap_04_00066D04_data
	.4byte 0x00000000
.endobj gap_04_00066D04_data

# .data:0x40 | 0x66D08 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x66D10 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x66D14 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x66D18 | size: 0xC4
.obj unit_piders_14_data_66D18, global
	.4byte 0x0000001B
	.4byte str_btl_un_piders_jon_0000e2d0
	.4byte 0x00050000
	.4byte 0x01010C00
	.4byte 0x02460046
	.4byte 0x270F002E
	.4byte 0x00380000
	.4byte 0x00380000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41B80000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x00000000
	.4byte 0x42380000
	.4byte 0x42600000
	.4byte 0x00000002
	.4byte 0x64000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_PAIDA_DAMAGE_jon_0000e2e0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000e2f8
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000e310
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000e324
	.4byte 0x00000004
	.4byte regist
	.4byte 0x05000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_piders_14_data_66D18

# .data:0x114 | 0x66DDC | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x66DE1 | size: 0x3
.obj gap_04_00066DE1_data, global
.hidden gap_04_00066DE1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00066DE1_data

# .data:0x11C | 0x66DE4 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x66DE9 | size: 0x3
.obj gap_04_00066DE9_data, global
.hidden gap_04_00066DE9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00066DE9_data

# .data:0x124 | 0x66DEC | size: 0x16
.obj regist, local
	.ascii "ZZ2dZddZdZdZd_ZdFdZdd_"
.endobj regist

# .data:0x13A | 0x66E02 | size: 0x2
.obj gap_04_00066E02_data, global
.hidden gap_04_00066E02_data
	.2byte 0x0000
.endobj gap_04_00066E02_data

# .data:0x13C | 0x66E04 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_PAI_N_1_jon_0000e340
	.4byte 0x00000002
	.4byte str_PAI_Y_1_jon_0000e348
	.4byte 0x00000009
	.4byte str_PAI_Y_1_jon_0000e348
	.4byte 0x00000005
	.4byte str_PAI_K_1_jon_0000e350
	.4byte 0x00000004
	.4byte str_PAI_X_1_jon_0000e358
	.4byte 0x00000003
	.4byte str_PAI_X_1_jon_0000e358
	.4byte 0x0000001C
	.4byte str_PAI_S_1_jon_0000e360
	.4byte 0x0000001D
	.4byte str_PAI_D_1_jon_0000e368
	.4byte 0x0000001E
	.4byte str_PAI_D_1_jon_0000e368
	.4byte 0x0000001F
	.4byte str_PAI_S_1_jon_0000e360
	.4byte 0x00000027
	.4byte str_PAI_D_1_jon_0000e368
	.4byte 0x00000032
	.4byte str_PAI_A_1_jon_0000e370
	.4byte 0x00000028
	.4byte str_PAI_W_1_jon_0000e378
	.4byte 0x0000002A
	.4byte str_PAI_W_1_jon_0000e378
	.4byte 0x00000038
	.4byte str_PAI_X_1_jon_0000e358
	.4byte 0x00000039
	.4byte str_PAI_X_1_jon_0000e358
	.4byte 0x00000041
	.4byte str_PAI_S_1_jon_0000e360
	.4byte 0x00000045
	.4byte str_PAI_S_1_jon_0000e360
.endobj pose_table

# .data:0x1CC | 0x66E94 | size: 0x28
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x0000003A
	.4byte blow_dead_event
	.4byte 0x0000003F
	.4byte battle_end_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1F4 | 0x66EBC | size: 0x17C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_piders_jon_0000e2d0
	.4byte str_c_paid_jon_0000e380
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00600009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_piders_jon_0000e2d0
	.4byte str_c_paid_jon_0000e380
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
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
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000003
	.4byte str_btl_un_piders_jon_0000e2d0
	.4byte str_c_paid_jon_0000e380
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
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000004
	.4byte str_btl_un_piders_jon_0000e2d0
	.4byte str_c_paid_jon_0000e380
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
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000005
	.4byte str_btl_un_piders_jon_0000e2d0
	.4byte str_c_paid_jon_0000e380
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
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x370 | 0x67038 | size: 0xC0
.obj weapon_piders_attack, local
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
	.4byte 0x80002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_piders_attack

# .data:0x430 | 0x670F8 | size: 0xC0
.obj weapon_piders_renzoku_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x80002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_piders_renzoku_attack

# .data:0x4F0 | 0x671B8 | size: 0xD4
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventUnisonPhase
	.4byte 0xFFFFFFFE
	.4byte unison_phase_event
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
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventEntry
	.4byte 0xFFFFFFFE
	.4byte entry_event
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x0001005B
	.4byte piders_yarn_init
	.4byte 0x0001005C
	.4byte yarn_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x5C4 | 0x6728C | size: 0x4C
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

# .data:0x610 | 0x672D8 | size: 0xB0
.obj yarn_event, local
	.4byte 0x00010003
	.4byte 0x00000000
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
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x000000FF
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte piders_draw_yarn
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yarn_event

# .data:0x6C0 | 0x67388 | size: 0xC0
.obj entry_event, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000B4
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000190
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000050
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00010005
	.4byte 0x00000028
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj entry_event

# .data:0x780 | 0x67448 | size: 0x28
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x7A8 | 0x67470 | size: 0x2F4
.obj dead_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000030
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_1_jon_0000e38c
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
	.4byte str_SFX_BTL_ENEMY_DIE1_2_jon_0000e3a4
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
	.4byte evt_eff64
	.4byte zero_jon_0000e3bc
	.4byte str_expbom_n64_jon_0000e3c0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte zero_jon_0000e3bc
	.4byte str_star_point_jon_0000e3cc
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
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x10000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMaxMoveCount
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0xA9C | 0x67764 | size: 0x1A0
.obj blow_dead_event, local
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BTL_CLAUD_BREATH_jon_0000e3d8
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
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x10000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMaxMoveCount
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj blow_dead_event

# .data:0xC3C | 0x67904 | size: 0x1C
.obj battle_end_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj battle_end_event

# .data:0xC58 | 0x67920 | size: 0x130
.obj yure_event, local
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000016
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x0000000E
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yure_event

# .data:0xD88 | 0x67A50 | size: 0x14C
.obj move_kuutei_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_MOVE1_jon_0000e3f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00000020
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_MOVE2_jon_0000e404
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte yure_event
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
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
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_kuutei_event

# .data:0xED4 | 0x67B9C | size: 0xD8
.obj move_kuuchu_event, local
	.4byte 0x0001005C
	.4byte yure_event
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000046
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_MOVE2_jon_0000e404
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_kuuchu_event

# .data:0xFAC | 0x67C74 | size: 0x1E0
.obj unison_phase_event, local
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
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000001B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte piders_get_zyun
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte move_kuuchu_event
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte move_kuutei_event
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte piders_get_first_pos_attr
	.4byte 0xFE363C8D
	.4byte 0x0002005B
	.4byte piders_get_num
	.4byte 0xFE363C8F
	.4byte 0x00020039
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte move_kuuchu_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte move_kuutei_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020039
	.4byte 0xFE363C8E
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte move_kuuchu_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte move_kuutei_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte move_kuutei_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte move_kuuchu_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unison_phase_event

# .data:0x118C | 0x67E54 | size: 0x120
.obj attack_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000D
	.4byte 0x00000000
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
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_piders_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_piders_renzoku_attack
	.4byte 0x0001005E
	.4byte renzoku_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x12AC | 0x67F74 | size: 0x274
.obj damage_check_event_sub, local
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
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
	.4byte 0x00000063
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte btlevtcmd_JumpPartsContinue
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x02000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x02000000
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000008
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00020018
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C80
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_check_event_sub

# .data:0x1520 | 0x681E8 | size: 0x28C
.obj piders_attack_common_event1, local
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C88
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xF24A8680
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PAI_A_1_jon_0000e370
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_PAI_A_2a_jon_0000e418
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24AF280
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_jon_0000e424
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_jon_0000e424
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x0000006E
	.4byte 0x00000046
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_jon_0000e424
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x00000046
	.4byte 0x00000064
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj piders_attack_common_event1

# .data:0x17AC | 0x68474 | size: 0x1B4
.obj piders_attack_common_event1_2, local
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C88
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xF24A8680
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PAI_A_1_jon_0000e370
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_PAI_A_2a_jon_0000e418
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24AF280
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_jon_0000e424
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj piders_attack_common_event1_2

# .data:0x1960 | 0x68628 | size: 0xBC
.obj piders_attack_common_event2, local
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C88
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x0000000F
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PAI_S_1_jon_0000e360
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj piders_attack_common_event2

# .data:0x1A1C | 0x686E4 | size: 0x118
.obj piders_attack_common_event3, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_jon_0000e43c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte str_PAI_A_3a_jon_0000e454
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0xF24A9280
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x02000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsScale
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xF24A8280
	.4byte 0xF24A8280
	.4byte 0xF24A8280
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
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000001
.endobj piders_attack_common_event3

# .data:0x1B34 | 0x687FC | size: 0x15C
.obj normal_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
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
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte piders_attack_common_event1
	.4byte 0x0001005C
	.4byte piders_attack_common_event2
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte piders_attack_common_event3
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x1C90 | 0x68958 | size: 0x254
.obj renzoku_attack_event, local
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
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte piders_renzoku_attack_set_target
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000008
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte piders_attack_common_event1
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0xFE363C84
	.4byte 0x0001005E
	.4byte piders_attack_common_event3
	.4byte 0x0001005C
	.4byte renzoku_attack_event_sub
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00000006
	.4byte 0x0001005C
	.4byte piders_attack_common_event2
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event

# .data:0x1EE4 | 0x68BAC | size: 0xDC
.obj renzoku_attack_event_sub, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x0001005E
	.4byte renzoku_attack_event_sub_last
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C88
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0x0001005E
	.4byte renzoku_attack_event_sub_no_last
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event_sub

# .data:0x1FC0 | 0x68C88 | size: 0x28
.obj renzoku_attack_event_sub_no_last, local
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event_sub_no_last

# .data:0x1FE8 | 0x68CB0 | size: 0x13C
.obj renzoku_attack_event_sub_last, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000008
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x02000000
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
	.4byte 0xFE363C80
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event_sub_last

# .data:0x2124 | 0x68DEC | size: 0x1C
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
.endobj wait_event
