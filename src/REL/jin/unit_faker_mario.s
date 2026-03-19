.include "macros.inc"
.file "unit_faker_mario.o"

# 0x00005208..0x000057D4 | size: 0x5CC
.text
.balign 4

# .text:0x0 | 0x5208 | size: 0xB4
.fn _anime_load_wait, local
/* 00005208 000052CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000520C 000052D0  7C 08 02 A6 */	mflr r0
/* 00005210 000052D4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005214 000052D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005218 000052DC  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000521C 000052E0  7C 7E 1B 78 */	mr r30, r3
/* 00005220 000052E4  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00005224 000052E8  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 00005228 000052EC  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0000522C 000052F0  4B FF AD D5 */	bl evtGetValue
/* 00005230 000052F4  7C 60 1B 78 */	mr r0, r3
/* 00005234 000052F8  7F C3 F3 78 */	mr r3, r30
/* 00005238 000052FC  7C 04 03 78 */	mr r4, r0
/* 0000523C 00005300  4B FF AD C5 */	bl BattleTransID
/* 00005240 00005304  7C 64 1B 78 */	mr r4, r3
/* 00005244 00005308  7F E3 FB 78 */	mr r3, r31
/* 00005248 0000530C  4B FF AD B9 */	bl BattleGetUnitPtr
/* 0000524C 00005310  80 03 00 08 */	lwz r0, 0x8(r3)
/* 00005250 00005314  2C 00 00 52 */	cmpwi r0, 0x52
/* 00005254 00005318  41 82 00 3C */	beq .L_00005290
/* 00005258 0000531C  40 80 00 14 */	bge .L_0000526C
/* 0000525C 00005320  2C 00 00 50 */	cmpwi r0, 0x50
/* 00005260 00005324  41 82 00 18 */	beq .L_00005278
/* 00005264 00005328  40 80 00 1C */	bge .L_00005280
/* 00005268 0000532C  48 00 00 28 */	b .L_00005290
.L_0000526C:
/* 0000526C 00005330  2C 00 00 54 */	cmpwi r0, 0x54
/* 00005270 00005334  40 80 00 20 */	bge .L_00005290
/* 00005274 00005338  48 00 00 14 */	b .L_00005288
.L_00005278:
/* 00005278 0000533C  38 60 00 E0 */	li r3, 0xe0
/* 0000527C 00005340  48 00 00 18 */	b .L_00005294
.L_00005280:
/* 00005280 00005344  38 60 00 E1 */	li r3, 0xe1
/* 00005284 00005348  48 00 00 10 */	b .L_00005294
.L_00005288:
/* 00005288 0000534C  38 60 00 E3 */	li r3, 0xe3
/* 0000528C 00005350  48 00 00 08 */	b .L_00005294
.L_00005290:
/* 00005290 00005354  38 60 00 E2 */	li r3, 0xe2
.L_00005294:
/* 00005294 00005358  4B FF AD 6D */	bl BattlePartyAnimeLoad
/* 00005298 0000535C  20 63 00 00 */	subfic r3, r3, 0x0
/* 0000529C 00005360  38 00 00 02 */	li r0, 0x2
/* 000052A0 00005364  7C 63 19 10 */	subfe r3, r3, r3
/* 000052A4 00005368  7C 03 18 38 */	and r3, r0, r3
/* 000052A8 0000536C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000052AC 00005370  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000052B0 00005374  7C 08 03 A6 */	mtlr r0
/* 000052B4 00005378  38 21 00 10 */	addi r1, r1, 0x10
/* 000052B8 0000537C  4E 80 00 20 */	blr
.endfn _anime_load_wait

# .text:0xB4 | 0x52BC | size: 0xA8
.fn _anime_load, local
/* 000052BC 00005380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000052C0 00005384  7C 08 02 A6 */	mflr r0
/* 000052C4 00005388  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000052C8 0000538C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000052CC 00005390  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000052D0 00005394  7C 7E 1B 78 */	mr r30, r3
/* 000052D4 00005398  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 000052D8 0000539C  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 000052DC 000053A0  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000052E0 000053A4  4B FF AD 21 */	bl evtGetValue
/* 000052E4 000053A8  7C 60 1B 78 */	mr r0, r3
/* 000052E8 000053AC  7F C3 F3 78 */	mr r3, r30
/* 000052EC 000053B0  7C 04 03 78 */	mr r4, r0
/* 000052F0 000053B4  4B FF AD 11 */	bl BattleTransID
/* 000052F4 000053B8  7C 64 1B 78 */	mr r4, r3
/* 000052F8 000053BC  7F E3 FB 78 */	mr r3, r31
/* 000052FC 000053C0  4B FF AD 05 */	bl BattleGetUnitPtr
/* 00005300 000053C4  80 03 00 08 */	lwz r0, 0x8(r3)
/* 00005304 000053C8  2C 00 00 52 */	cmpwi r0, 0x52
/* 00005308 000053CC  41 82 00 3C */	beq .L_00005344
/* 0000530C 000053D0  40 80 00 14 */	bge .L_00005320
/* 00005310 000053D4  2C 00 00 50 */	cmpwi r0, 0x50
/* 00005314 000053D8  41 82 00 18 */	beq .L_0000532C
/* 00005318 000053DC  40 80 00 1C */	bge .L_00005334
/* 0000531C 000053E0  48 00 00 28 */	b .L_00005344
.L_00005320:
/* 00005320 000053E4  2C 00 00 54 */	cmpwi r0, 0x54
/* 00005324 000053E8  40 80 00 20 */	bge .L_00005344
/* 00005328 000053EC  48 00 00 14 */	b .L_0000533C
.L_0000532C:
/* 0000532C 000053F0  38 60 00 E0 */	li r3, 0xe0
/* 00005330 000053F4  48 00 00 18 */	b .L_00005348
.L_00005334:
/* 00005334 000053F8  38 60 00 E1 */	li r3, 0xe1
/* 00005338 000053FC  48 00 00 10 */	b .L_00005348
.L_0000533C:
/* 0000533C 00005400  38 60 00 E3 */	li r3, 0xe3
/* 00005340 00005404  48 00 00 08 */	b .L_00005348
.L_00005344:
/* 00005344 00005408  38 60 00 E2 */	li r3, 0xe2
.L_00005348:
/* 00005348 0000540C  4B FF AC B9 */	bl BattlePartyAnimeLoad
/* 0000534C 00005410  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00005350 00005414  38 60 00 02 */	li r3, 0x2
/* 00005354 00005418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00005358 0000541C  7C 08 03 A6 */	mtlr r0
/* 0000535C 00005420  38 21 00 10 */	addi r1, r1, 0x10
/* 00005360 00005424  4E 80 00 20 */	blr
.endfn _anime_load

# .text:0x15C | 0x5364 | size: 0x14C
.fn _save_param, local
/* 00005364 00005428  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005368 0000542C  7C 08 02 A6 */	mflr r0
/* 0000536C 00005430  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005370 00005434  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005374 00005438  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 00005378 0000543C  7C 7B 1B 78 */	mr r27, r3
/* 0000537C 00005440  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00005380 00005444  83 A4 00 00 */	lwz r29, _battleWorkPointer@l(r4)
/* 00005384 00005448  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00005388 0000544C  4B FF AC 79 */	bl evtGetValue
/* 0000538C 00005450  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00005390 00005454  7C 7E 1B 78 */	mr r30, r3
/* 00005394 00005458  7F 63 DB 78 */	mr r3, r27
/* 00005398 0000545C  4B FF AC 69 */	bl evtGetValue
/* 0000539C 00005460  7C 60 1B 78 */	mr r0, r3
/* 000053A0 00005464  7F 63 DB 78 */	mr r3, r27
/* 000053A4 00005468  7C 1C 03 78 */	mr r28, r0
/* 000053A8 0000546C  7F C4 F3 78 */	mr r4, r30
/* 000053AC 00005470  4B FF AC 55 */	bl BattleTransID
/* 000053B0 00005474  7C 64 1B 78 */	mr r4, r3
/* 000053B4 00005478  7F A3 EB 78 */	mr r3, r29
/* 000053B8 0000547C  4B FF AC 49 */	bl BattleGetUnitPtr
/* 000053BC 00005480  7C 7E 1B 78 */	mr r30, r3
/* 000053C0 00005484  7F 63 DB 78 */	mr r3, r27
/* 000053C4 00005488  7F 84 E3 78 */	mr r4, r28
/* 000053C8 0000548C  4B FF AC 39 */	bl BattleTransID
/* 000053CC 00005490  7C 64 1B 78 */	mr r4, r3
/* 000053D0 00005494  7F A3 EB 78 */	mr r3, r29
/* 000053D4 00005498  4B FF AC 2D */	bl BattleGetUnitPtr
/* 000053D8 0000549C  80 03 00 08 */	lwz r0, 0x8(r3)
/* 000053DC 000054A0  80 9E 03 14 */	lwz r4, 0x314(r30)
/* 000053E0 000054A4  2C 00 00 52 */	cmpwi r0, 0x52
/* 000053E4 000054A8  41 82 00 3C */	beq .L_00005420
/* 000053E8 000054AC  40 80 00 14 */	bge .L_000053FC
/* 000053EC 000054B0  2C 00 00 50 */	cmpwi r0, 0x50
/* 000053F0 000054B4  41 82 00 18 */	beq .L_00005408
/* 000053F4 000054B8  40 80 00 1C */	bge .L_00005410
/* 000053F8 000054BC  48 00 00 2C */	b .L_00005424
.L_000053FC:
/* 000053FC 000054C0  2C 00 00 54 */	cmpwi r0, 0x54
/* 00005400 000054C4  40 80 00 24 */	bge .L_00005424
/* 00005404 000054C8  48 00 00 14 */	b .L_00005418
.L_00005408:
/* 00005408 000054CC  7C 9F 23 78 */	mr r31, r4
/* 0000540C 000054D0  48 00 00 18 */	b .L_00005424
.L_00005410:
/* 00005410 000054D4  3B E4 00 34 */	addi r31, r4, 0x34
/* 00005414 000054D8  48 00 00 10 */	b .L_00005424
.L_00005418:
/* 00005418 000054DC  3B E4 00 68 */	addi r31, r4, 0x68
/* 0000541C 000054E0  48 00 00 08 */	b .L_00005424
.L_00005420:
/* 00005420 000054E4  3B E4 00 9C */	addi r31, r4, 0x9c
.L_00005424:
/* 00005424 000054E8  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 00005428 000054EC  38 00 00 03 */	li r0, 0x3
/* 0000542C 000054F0  7F E6 FB 78 */	mr r6, r31
/* 00005430 000054F4  38 A3 01 14 */	addi r5, r3, 0x114
/* 00005434 000054F8  D0 1F 00 00 */	stfs f0, 0x0(r31)
/* 00005438 000054FC  80 83 01 38 */	lwz r4, 0x138(r3)
/* 0000543C 00005500  90 9F 00 24 */	stw r4, 0x24(r31)
/* 00005440 00005504  A0 83 01 3C */	lhz r4, 0x13c(r3)
/* 00005444 00005508  B0 9F 00 28 */	sth r4, 0x28(r31)
/* 00005448 0000550C  A0 83 01 3E */	lhz r4, 0x13e(r3)
/* 0000544C 00005510  B0 9F 00 2A */	sth r4, 0x2a(r31)
/* 00005450 00005514  7C 09 03 A6 */	mtctr r0
.L_00005454:
/* 00005454 00005518  80 85 00 04 */	lwz r4, 0x4(r5)
/* 00005458 0000551C  84 05 00 08 */	lwzu r0, 0x8(r5)
/* 0000545C 00005520  90 86 00 04 */	stw r4, 0x4(r6)
/* 00005460 00005524  94 06 00 08 */	stwu r0, 0x8(r6)
/* 00005464 00005528  42 00 FF F0 */	bdnz .L_00005454
/* 00005468 0000552C  80 05 00 04 */	lwz r0, 0x4(r5)
/* 0000546C 00005530  90 06 00 04 */	stw r0, 0x4(r6)
/* 00005470 00005534  A0 05 00 08 */	lhz r0, 0x8(r5)
/* 00005474 00005538  B0 06 00 08 */	sth r0, 0x8(r6)
/* 00005478 0000553C  A8 03 01 08 */	lha r0, 0x108(r3)
/* 0000547C 00005540  B0 1F 00 2E */	sth r0, 0x2e(r31)
/* 00005480 00005544  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 00005484 00005548  B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 00005488 0000554C  A8 03 01 0E */	lha r0, 0x10e(r3)
/* 0000548C 00005550  B0 1F 00 32 */	sth r0, 0x32(r31)
/* 00005490 00005554  A8 03 01 12 */	lha r0, 0x112(r3)
/* 00005494 00005558  38 60 00 02 */	li r3, 0x2
/* 00005498 0000555C  B0 1F 00 30 */	sth r0, 0x30(r31)
/* 0000549C 00005560  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 000054A0 00005564  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000054A4 00005568  7C 08 03 A6 */	mtlr r0
/* 000054A8 0000556C  38 21 00 20 */	addi r1, r1, 0x20
/* 000054AC 00005570  4E 80 00 20 */	blr
.endfn _save_param

# .text:0x2A8 | 0x54B0 | size: 0x14C
.fn _load_param, local
/* 000054B0 00005574  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000054B4 00005578  7C 08 02 A6 */	mflr r0
/* 000054B8 0000557C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000054BC 00005580  90 01 00 24 */	stw r0, 0x24(r1)
/* 000054C0 00005584  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 000054C4 00005588  7C 7B 1B 78 */	mr r27, r3
/* 000054C8 0000558C  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 000054CC 00005590  83 A4 00 00 */	lwz r29, _battleWorkPointer@l(r4)
/* 000054D0 00005594  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000054D4 00005598  4B FF AB 2D */	bl evtGetValue
/* 000054D8 0000559C  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 000054DC 000055A0  7C 7E 1B 78 */	mr r30, r3
/* 000054E0 000055A4  7F 63 DB 78 */	mr r3, r27
/* 000054E4 000055A8  4B FF AB 1D */	bl evtGetValue
/* 000054E8 000055AC  7C 60 1B 78 */	mr r0, r3
/* 000054EC 000055B0  7F 63 DB 78 */	mr r3, r27
/* 000054F0 000055B4  7C 1C 03 78 */	mr r28, r0
/* 000054F4 000055B8  7F C4 F3 78 */	mr r4, r30
/* 000054F8 000055BC  4B FF AB 09 */	bl BattleTransID
/* 000054FC 000055C0  7C 64 1B 78 */	mr r4, r3
/* 00005500 000055C4  7F A3 EB 78 */	mr r3, r29
/* 00005504 000055C8  4B FF AA FD */	bl BattleGetUnitPtr
/* 00005508 000055CC  7C 7E 1B 78 */	mr r30, r3
/* 0000550C 000055D0  7F 63 DB 78 */	mr r3, r27
/* 00005510 000055D4  7F 84 E3 78 */	mr r4, r28
/* 00005514 000055D8  4B FF AA ED */	bl BattleTransID
/* 00005518 000055DC  7C 64 1B 78 */	mr r4, r3
/* 0000551C 000055E0  7F A3 EB 78 */	mr r3, r29
/* 00005520 000055E4  4B FF AA E1 */	bl BattleGetUnitPtr
/* 00005524 000055E8  80 03 00 08 */	lwz r0, 0x8(r3)
/* 00005528 000055EC  80 9E 03 14 */	lwz r4, 0x314(r30)
/* 0000552C 000055F0  2C 00 00 52 */	cmpwi r0, 0x52
/* 00005530 000055F4  41 82 00 3C */	beq .L_0000556C
/* 00005534 000055F8  40 80 00 14 */	bge .L_00005548
/* 00005538 000055FC  2C 00 00 50 */	cmpwi r0, 0x50
/* 0000553C 00005600  41 82 00 18 */	beq .L_00005554
/* 00005540 00005604  40 80 00 1C */	bge .L_0000555C
/* 00005544 00005608  48 00 00 2C */	b .L_00005570
.L_00005548:
/* 00005548 0000560C  2C 00 00 54 */	cmpwi r0, 0x54
/* 0000554C 00005610  40 80 00 24 */	bge .L_00005570
/* 00005550 00005614  48 00 00 14 */	b .L_00005564
.L_00005554:
/* 00005554 00005618  7C 9F 23 78 */	mr r31, r4
/* 00005558 0000561C  48 00 00 18 */	b .L_00005570
.L_0000555C:
/* 0000555C 00005620  3B E4 00 34 */	addi r31, r4, 0x34
/* 00005560 00005624  48 00 00 10 */	b .L_00005570
.L_00005564:
/* 00005564 00005628  3B E4 00 68 */	addi r31, r4, 0x68
/* 00005568 0000562C  48 00 00 08 */	b .L_00005570
.L_0000556C:
/* 0000556C 00005630  3B E4 00 9C */	addi r31, r4, 0x9c
.L_00005570:
/* 00005570 00005634  C0 1F 00 00 */	lfs f0, 0x0(r31)
/* 00005574 00005638  38 00 00 03 */	li r0, 0x3
/* 00005578 0000563C  7F E5 FB 78 */	mr r5, r31
/* 0000557C 00005640  38 C3 01 14 */	addi r6, r3, 0x114
/* 00005580 00005644  D0 03 01 14 */	stfs f0, 0x114(r3)
/* 00005584 00005648  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 00005588 0000564C  90 83 01 38 */	stw r4, 0x138(r3)
/* 0000558C 00005650  A0 9F 00 28 */	lhz r4, 0x28(r31)
/* 00005590 00005654  B0 83 01 3C */	sth r4, 0x13c(r3)
/* 00005594 00005658  A0 9F 00 2A */	lhz r4, 0x2a(r31)
/* 00005598 0000565C  B0 83 01 3E */	sth r4, 0x13e(r3)
/* 0000559C 00005660  7C 09 03 A6 */	mtctr r0
.L_000055A0:
/* 000055A0 00005664  80 85 00 04 */	lwz r4, 0x4(r5)
/* 000055A4 00005668  84 05 00 08 */	lwzu r0, 0x8(r5)
/* 000055A8 0000566C  90 86 00 04 */	stw r4, 0x4(r6)
/* 000055AC 00005670  94 06 00 08 */	stwu r0, 0x8(r6)
/* 000055B0 00005674  42 00 FF F0 */	bdnz .L_000055A0
/* 000055B4 00005678  80 05 00 04 */	lwz r0, 0x4(r5)
/* 000055B8 0000567C  90 06 00 04 */	stw r0, 0x4(r6)
/* 000055BC 00005680  A0 05 00 08 */	lhz r0, 0x8(r5)
/* 000055C0 00005684  B0 06 00 08 */	sth r0, 0x8(r6)
/* 000055C4 00005688  A8 1F 00 2E */	lha r0, 0x2e(r31)
/* 000055C8 0000568C  B0 03 01 08 */	sth r0, 0x108(r3)
/* 000055CC 00005690  A8 1F 00 2C */	lha r0, 0x2c(r31)
/* 000055D0 00005694  B0 03 01 0C */	sth r0, 0x10c(r3)
/* 000055D4 00005698  A8 1F 00 32 */	lha r0, 0x32(r31)
/* 000055D8 0000569C  B0 03 01 0E */	sth r0, 0x10e(r3)
/* 000055DC 000056A0  A8 1F 00 30 */	lha r0, 0x30(r31)
/* 000055E0 000056A4  B0 03 01 12 */	sth r0, 0x112(r3)
/* 000055E4 000056A8  38 60 00 02 */	li r3, 0x2
/* 000055E8 000056AC  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 000055EC 000056B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000055F0 000056B4  7C 08 03 A6 */	mtlr r0
/* 000055F4 000056B8  38 21 00 20 */	addi r1, r1, 0x20
/* 000055F8 000056BC  4E 80 00 20 */	blr
.endfn _load_param

# .text:0x3F4 | 0x55FC | size: 0x13C
.fn _gullible_party_info_init, local
/* 000055FC 000056C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00005600 000056C4  7C 08 02 A6 */	mflr r0
/* 00005604 000056C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 00005608 000056CC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 0000560C 000056D0  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 00005610 000056D4  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 00005614 000056D8  7C 7B 1B 78 */	mr r27, r3
/* 00005618 000056DC  4B FF A9 E9 */	bl pouchGetPtr
/* 0000561C 000056E0  7C 7D 1B 78 */	mr r29, r3
/* 00005620 000056E4  7F 63 DB 78 */	mr r3, r27
/* 00005624 000056E8  38 80 FF FE */	li r4, -0x2
/* 00005628 000056EC  4B FF A9 D9 */	bl BattleTransID
/* 0000562C 000056F0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005630 000056F4  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00005634 000056F8  7C 64 1B 78 */	mr r4, r3
/* 00005638 000056FC  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000563C 00005700  4B FF A9 C5 */	bl BattleGetUnitPtr
/* 00005640 00005704  7C 7F 1B 78 */	mr r31, r3
/* 00005644 00005708  38 60 00 D0 */	li r3, 0xd0
/* 00005648 0000570C  4B FF A9 B9 */	bl BattleAlloc
/* 0000564C 00005710  7C 7E 1B 78 */	mr r30, r3
/* 00005650 00005714  38 80 00 00 */	li r4, 0x0
/* 00005654 00005718  93 DF 03 14 */	stw r30, 0x314(r31)
/* 00005658 0000571C  38 A0 00 D0 */	li r5, 0xd0
/* 0000565C 00005720  4B FF A9 A5 */	bl memset
/* 00005660 00005724  3C 60 00 00 */	lis r3, float_1_jin_00009308@ha
/* 00005664 00005728  3B 80 00 00 */	li r28, 0x0
/* 00005668 0000572C  C3 E3 00 00 */	lfs f31, float_1_jin_00009308@l(r3)
/* 0000566C 00005730  3B E0 00 00 */	li r31, 0x0
.L_00005670:
/* 00005670 00005734  7F 7E FA 14 */	add r27, r30, r31
/* 00005674 00005738  38 00 00 00 */	li r0, 0x0
/* 00005678 0000573C  D3 FB 00 00 */	stfs f31, 0x0(r27)
/* 0000567C 00005740  38 7B 00 04 */	addi r3, r27, 0x4
/* 00005680 00005744  38 80 00 00 */	li r4, 0x0
/* 00005684 00005748  38 A0 00 1E */	li r5, 0x1e
/* 00005688 0000574C  90 1B 00 24 */	stw r0, 0x24(r27)
/* 0000568C 00005750  4B FF A9 75 */	bl memset
/* 00005690 00005754  2C 1C 00 01 */	cmpwi r28, 0x1
/* 00005694 00005758  41 82 00 30 */	beq .L_000056C4
/* 00005698 0000575C  40 80 00 10 */	bge .L_000056A8
/* 0000569C 00005760  2C 1C 00 00 */	cmpwi r28, 0x0
/* 000056A0 00005764  40 80 00 14 */	bge .L_000056B4
/* 000056A4 00005768  48 00 00 40 */	b .L_000056E4
.L_000056A8:
/* 000056A8 0000576C  2C 1C 00 03 */	cmpwi r28, 0x3
/* 000056AC 00005770  40 80 00 38 */	bge .L_000056E4
/* 000056B0 00005774  48 00 00 24 */	b .L_000056D4
.L_000056B4:
/* 000056B4 00005778  A8 1D 00 12 */	lha r0, 0x12(r29)
/* 000056B8 0000577C  B0 1B 00 2C */	sth r0, 0x2c(r27)
/* 000056BC 00005780  B0 1B 00 2E */	sth r0, 0x2e(r27)
/* 000056C0 00005784  48 00 00 30 */	b .L_000056F0
.L_000056C4:
/* 000056C4 00005788  A8 1D 00 20 */	lha r0, 0x20(r29)
/* 000056C8 0000578C  B0 1B 00 2C */	sth r0, 0x2c(r27)
/* 000056CC 00005790  B0 1B 00 2E */	sth r0, 0x2e(r27)
/* 000056D0 00005794  48 00 00 20 */	b .L_000056F0
.L_000056D4:
/* 000056D4 00005798  A8 1D 00 4A */	lha r0, 0x4a(r29)
/* 000056D8 0000579C  B0 1B 00 2C */	sth r0, 0x2c(r27)
/* 000056DC 000057A0  B0 1B 00 2E */	sth r0, 0x2e(r27)
/* 000056E0 000057A4  48 00 00 10 */	b .L_000056F0
.L_000056E4:
/* 000056E4 000057A8  A8 1D 00 3C */	lha r0, 0x3c(r29)
/* 000056E8 000057AC  B0 1B 00 2C */	sth r0, 0x2c(r27)
/* 000056EC 000057B0  B0 1B 00 2E */	sth r0, 0x2e(r27)
.L_000056F0:
/* 000056F0 000057B4  A8 7D 00 90 */	lha r3, 0x90(r29)
/* 000056F4 000057B8  3B 9C 00 01 */	addi r28, r28, 0x1
/* 000056F8 000057BC  38 00 00 00 */	li r0, 0x0
/* 000056FC 000057C0  3B FF 00 34 */	addi r31, r31, 0x34
/* 00005700 000057C4  B0 7B 00 30 */	sth r3, 0x30(r27)
/* 00005704 000057C8  2C 1C 00 04 */	cmpwi r28, 0x4
/* 00005708 000057CC  B0 7B 00 32 */	sth r3, 0x32(r27)
/* 0000570C 000057D0  B0 1B 00 28 */	sth r0, 0x28(r27)
/* 00005710 000057D4  B0 1B 00 2A */	sth r0, 0x2a(r27)
/* 00005714 000057D8  41 80 FF 5C */	blt .L_00005670
/* 00005718 000057DC  38 60 00 02 */	li r3, 0x2
/* 0000571C 000057E0  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 00005720 000057E4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 00005724 000057E8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 00005728 000057EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000572C 000057F0  7C 08 03 A6 */	mtlr r0
/* 00005730 000057F4  38 21 00 30 */	addi r1, r1, 0x30
/* 00005734 000057F8  4E 80 00 20 */	blr
.endfn _gullible_party_info_init

# .text:0x530 | 0x5738 | size: 0x6C
.fn unk_jin_000057fc, local
/* 00005738 000057FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000573C 00005800  7C 08 02 A6 */	mflr r0
/* 00005740 00005804  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005744 00005808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00005748 0000580C  7C 7F 1B 78 */	mr r31, r3
/* 0000574C 00005810  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00005750 00005814  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00005754 00005818  4B FF A8 AD */	bl evtGetValue
/* 00005758 0000581C  7C 60 1B 78 */	mr r0, r3
/* 0000575C 00005820  7F E3 FB 78 */	mr r3, r31
/* 00005760 00005824  7C 04 03 78 */	mr r4, r0
/* 00005764 00005828  4B FF A8 9D */	bl BattleTransID
/* 00005768 0000582C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000576C 00005830  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00005770 00005834  7C 64 1B 78 */	mr r4, r3
/* 00005774 00005838  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00005778 0000583C  4B FF A8 89 */	bl BattleGetUnitPtr
/* 0000577C 00005840  28 03 00 00 */	cmplwi r3, 0x0
/* 00005780 00005844  41 82 00 0C */	beq .L_0000578C
/* 00005784 00005848  88 03 00 22 */	lbz r0, 0x22(r3)
/* 00005788 0000584C  98 03 00 23 */	stb r0, 0x23(r3)
.L_0000578C:
/* 0000578C 00005850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00005790 00005854  38 60 00 02 */	li r3, 0x2
/* 00005794 00005858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00005798 0000585C  7C 08 03 A6 */	mtlr r0
/* 0000579C 00005860  38 21 00 10 */	addi r1, r1, 0x10
/* 000057A0 00005864  4E 80 00 20 */	blr
.endfn unk_jin_000057fc

# .text:0x59C | 0x57A4 | size: 0x30
.fn vivian_comeback, local
/* 000057A4 00005868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000057A8 0000586C  7C 08 02 A6 */	mflr r0
/* 000057AC 00005870  90 01 00 14 */	stw r0, 0x14(r1)
/* 000057B0 00005874  4B FF A8 51 */	bl pouchGetPtr
/* 000057B4 00005878  A0 03 00 54 */	lhz r0, 0x54(r3)
/* 000057B8 0000587C  54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 000057BC 00005880  B0 03 00 54 */	sth r0, 0x54(r3)
/* 000057C0 00005884  38 60 00 01 */	li r3, 0x1
/* 000057C4 00005888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000057C8 0000588C  7C 08 03 A6 */	mtlr r0
/* 000057CC 00005890  38 21 00 10 */	addi r1, r1, 0x10
/* 000057D0 00005894  4E 80 00 20 */	blr
.endfn vivian_comeback

# 0x00001D60..0x000020F0 | size: 0x390
.rodata
.balign 8

# .rodata:0x0 | 0x1D60 | size: 0xF
.obj str_btl_un_rampell_jin_00008f80, local
	.string "btl_un_rampell"
.endobj str_btl_un_rampell_jin_00008f80

# .rodata:0xF | 0x1D6F | size: 0x1
.obj gap_03_00001D6F_rodata, global
.hidden gap_03_00001D6F_rodata
	.byte 0x00
.endobj gap_03_00001D6F_rodata

# .rodata:0x10 | 0x1D70 | size: 0x12
.obj str_SFX_MARIO_DAMAGE1_jin_00008f90, local
	.string "SFX_MARIO_DAMAGE1"
.endobj str_SFX_MARIO_DAMAGE1_jin_00008f90

# .rodata:0x22 | 0x1D82 | size: 0x2
.obj gap_03_00001D82_rodata, global
.hidden gap_03_00001D82_rodata
	.2byte 0x0000
.endobj gap_03_00001D82_rodata

# .rodata:0x24 | 0x1D84 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jin_00008fa4, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jin_00008fa4

# .rodata:0x39 | 0x1D99 | size: 0x3
.obj gap_03_00001D99_rodata, global
.hidden gap_03_00001D99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D99_rodata

# .rodata:0x3C | 0x1D9C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jin_00008fbc, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jin_00008fbc

# .rodata:0x50 | 0x1DB0 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jin_00008fd0, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jin_00008fd0

# .rodata:0x69 | 0x1DC9 | size: 0x3
.obj gap_03_00001DC9_rodata, global
.hidden gap_03_00001DC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001DC9_rodata

# .rodata:0x6C | 0x1DCC | size: 0x7
.obj str_EM_N_1_jin_00008fec, local
	.string "EM_N_1"
.endobj str_EM_N_1_jin_00008fec

# .rodata:0x73 | 0x1DD3 | size: 0x1
.obj gap_03_00001DD3_rodata, global
.hidden gap_03_00001DD3_rodata
	.byte 0x00
.endobj gap_03_00001DD3_rodata

# .rodata:0x74 | 0x1DD4 | size: 0x7
.obj str_EM_Y_2_jin_00008ff4, local
	.string "EM_Y_2"
.endobj str_EM_Y_2_jin_00008ff4

# .rodata:0x7B | 0x1DDB | size: 0x1
.obj gap_03_00001DDB_rodata, global
.hidden gap_03_00001DDB_rodata
	.byte 0x00
.endobj gap_03_00001DDB_rodata

# .rodata:0x7C | 0x1DDC | size: 0x7
.obj str_EM_K_1_jin_00008ffc, local
	.string "EM_K_1"
.endobj str_EM_K_1_jin_00008ffc

# .rodata:0x83 | 0x1DE3 | size: 0x1
.obj gap_03_00001DE3_rodata, global
.hidden gap_03_00001DE3_rodata
	.byte 0x00
.endobj gap_03_00001DE3_rodata

# .rodata:0x84 | 0x1DE4 | size: 0x7
.obj str_EM_S_1_jin_00009004, local
	.string "EM_S_1"
.endobj str_EM_S_1_jin_00009004

# .rodata:0x8B | 0x1DEB | size: 0x1
.obj gap_03_00001DEB_rodata, global
.hidden gap_03_00001DEB_rodata
	.byte 0x00
.endobj gap_03_00001DEB_rodata

# .rodata:0x8C | 0x1DEC | size: 0x7
.obj str_EM_D_1_jin_0000900c, local
	.string "EM_D_1"
.endobj str_EM_D_1_jin_0000900c

# .rodata:0x93 | 0x1DF3 | size: 0x1
.obj gap_03_00001DF3_rodata, global
.hidden gap_03_00001DF3_rodata
	.byte 0x00
.endobj gap_03_00001DF3_rodata

# .rodata:0x94 | 0x1DF4 | size: 0x7
.obj str_EM_A_1_jin_00009014, local
	.string "EM_A_1"
.endobj str_EM_A_1_jin_00009014

# .rodata:0x9B | 0x1DFB | size: 0x1
.obj gap_03_00001DFB_rodata, global
.hidden gap_03_00001DFB_rodata
	.byte 0x00
.endobj gap_03_00001DFB_rodata

# .rodata:0x9C | 0x1DFC | size: 0x7
.obj str_EM_R_1_jin_0000901c, local
	.string "EM_R_1"
.endobj str_EM_R_1_jin_0000901c

# .rodata:0xA3 | 0x1E03 | size: 0x1
.obj gap_03_00001E03_rodata, global
.hidden gap_03_00001E03_rodata
	.byte 0x00
.endobj gap_03_00001E03_rodata

# .rodata:0xA4 | 0x1E04 | size: 0x7
.obj str_EM_W_1_jin_00009024, local
	.string "EM_W_1"
.endobj str_EM_W_1_jin_00009024

# .rodata:0xAB | 0x1E0B | size: 0x1
.obj gap_03_00001E0B_rodata, global
.hidden gap_03_00001E0B_rodata
	.byte 0x00
.endobj gap_03_00001E0B_rodata

# .rodata:0xAC | 0x1E0C | size: 0x7
.obj str_EM_D_3_jin_0000902c, local
	.string "EM_D_3"
.endobj str_EM_D_3_jin_0000902c

# .rodata:0xB3 | 0x1E13 | size: 0x1
.obj gap_03_00001E13_rodata, global
.hidden gap_03_00001E13_rodata
	.byte 0x00
.endobj gap_03_00001E13_rodata

# .rodata:0xB4 | 0x1E14 | size: 0x7
.obj str_EM_T_1_jin_00009034, local
	.string "EM_T_1"
.endobj str_EM_T_1_jin_00009034

# .rodata:0xBB | 0x1E1B | size: 0x1
.obj gap_03_00001E1B_rodata, global
.hidden gap_03_00001E1B_rodata
	.byte 0x00
.endobj gap_03_00001E1B_rodata

# .rodata:0xBC | 0x1E1C | size: 0x8
.obj str_c_mario_jin_0000903c, local
	.string "c_mario"
.endobj str_c_mario_jin_0000903c

# .rodata:0xC4 | 0x1E24 | size: 0x13
.obj str_SFX_BOSS_NM_MOVE1L_jin_00009044, local
	.string "SFX_BOSS_NM_MOVE1L"
.endobj str_SFX_BOSS_NM_MOVE1L_jin_00009044

# .rodata:0xD7 | 0x1E37 | size: 0x1
.obj gap_03_00001E37_rodata, global
.hidden gap_03_00001E37_rodata
	.byte 0x00
.endobj gap_03_00001E37_rodata

# .rodata:0xD8 | 0x1E38 | size: 0x13
.obj str_SFX_BOSS_NM_MOVE1R_jin_00009058, local
	.string "SFX_BOSS_NM_MOVE1R"
.endobj str_SFX_BOSS_NM_MOVE1R_jin_00009058

# .rodata:0xEB | 0x1E4B | size: 0x1
.obj gap_03_00001E4B_rodata, global
.hidden gap_03_00001E4B_rodata
	.byte 0x00
.endobj gap_03_00001E4B_rodata

# .rodata:0xEC | 0x1E4C | size: 0x12
.obj str_SFX_BOSS_NM_JUMP1_jin_0000906c, local
	.string "SFX_BOSS_NM_JUMP1"
.endobj str_SFX_BOSS_NM_JUMP1_jin_0000906c

# .rodata:0xFE | 0x1E5E | size: 0x2
.obj gap_03_00001E5E_rodata, global
.hidden gap_03_00001E5E_rodata
	.2byte 0x0000
.endobj gap_03_00001E5E_rodata

# .rodata:0x100 | 0x1E60 | size: 0x15
.obj str_SFX_BOSS_NM_LANDING1_jin_00009080, local
	.string "SFX_BOSS_NM_LANDING1"
.endobj str_SFX_BOSS_NM_LANDING1_jin_00009080

# .rodata:0x115 | 0x1E75 | size: 0x3
.obj gap_03_00001E75_rodata, global
.hidden gap_03_00001E75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E75_rodata

# .rodata:0x118 | 0x1E78 | size: 0xC
.obj str_stg4_jin_22_jin_00009098, local
	.string "stg4_jin_22"
.endobj str_stg4_jin_22_jin_00009098

# .rodata:0x124 | 0x1E84 | size: 0xF
.obj str_stg4_jin_26_05_jin_000090a4, local
	.string "stg4_jin_26_05"
.endobj str_stg4_jin_26_05_jin_000090a4

# .rodata:0x133 | 0x1E93 | size: 0x1
.obj gap_03_00001E93_rodata, global
.hidden gap_03_00001E93_rodata
	.byte 0x00
.endobj gap_03_00001E93_rodata

# .rodata:0x134 | 0x1E94 | size: 0x12
.obj str_SFX_BOSS_NM_DOWN2_jin_000090b4, local
	.string "SFX_BOSS_NM_DOWN2"
.endobj str_SFX_BOSS_NM_DOWN2_jin_000090b4

# .rodata:0x146 | 0x1EA6 | size: 0x2
.obj gap_03_00001EA6_rodata, global
.hidden gap_03_00001EA6_rodata
	.2byte 0x0000
.endobj gap_03_00001EA6_rodata

# .rodata:0x148 | 0x1EA8 | size: 0x1A
.obj str_SFX_VOICE_NM_LAND_DA_jin_000090c8, local
	.string "SFX_VOICE_NM_LAND_DAMAGE2"
.endobj str_SFX_VOICE_NM_LAND_DA_jin_000090c8

# .rodata:0x162 | 0x1EC2 | size: 0x2
.obj gap_03_00001EC2_rodata, global
.hidden gap_03_00001EC2_rodata
	.2byte 0x0000
.endobj gap_03_00001EC2_rodata

# .rodata:0x164 | 0x1EC4 | size: 0x7
.obj str_EM_D_2_jin_000090e4, local
	.string "EM_D_2"
.endobj str_EM_D_2_jin_000090e4

# .rodata:0x16B | 0x1ECB | size: 0x1
.obj gap_03_00001ECB_rodata, global
.hidden gap_03_00001ECB_rodata
	.byte 0x00
.endobj gap_03_00001ECB_rodata

# .rodata:0x16C | 0x1ECC | size: 0x13
.obj str_stg4_jin_26_05_kur_jin_000090ec, local
	.string "stg4_jin_26_05_kur"
.endobj str_stg4_jin_26_05_kur_jin_000090ec

# .rodata:0x17F | 0x1EDF | size: 0x1
.obj gap_03_00001EDF_rodata, global
.hidden gap_03_00001EDF_rodata
	.byte 0x00
.endobj gap_03_00001EDF_rodata

# .rodata:0x180 | 0x1EE0 | size: 0x13
.obj str_stg4_jin_26_05_nok_jin_00009100, local
	.string "stg4_jin_26_05_nok"
.endobj str_stg4_jin_26_05_nok_jin_00009100

# .rodata:0x193 | 0x1EF3 | size: 0x1
.obj gap_03_00001EF3_rodata, global
.hidden gap_03_00001EF3_rodata
	.byte 0x00
.endobj gap_03_00001EF3_rodata

# .rodata:0x194 | 0x1EF4 | size: 0x13
.obj str_stg4_jin_26_05_win_jin_00009114, local
	.string "stg4_jin_26_05_win"
.endobj str_stg4_jin_26_05_win_jin_00009114

# .rodata:0x1A7 | 0x1F07 | size: 0x1
.obj gap_03_00001F07_rodata, global
.hidden gap_03_00001F07_rodata
	.byte 0x00
.endobj gap_03_00001F07_rodata

# .rodata:0x1A8 | 0x1F08 | size: 0x13
.obj str_stg4_jin_26_05_yos_jin_00009128, local
	.string "stg4_jin_26_05_yos"
.endobj str_stg4_jin_26_05_yos_jin_00009128

# .rodata:0x1BB | 0x1F1B | size: 0x1
.obj gap_03_00001F1B_rodata, global
.hidden gap_03_00001F1B_rodata
	.byte 0x00
.endobj gap_03_00001F1B_rodata

# .rodata:0x1BC | 0x1F1C | size: 0xC
.obj str_stg4_jin_23_jin_0000913c, local
	.string "stg4_jin_23"
.endobj str_stg4_jin_23_jin_0000913c

# .rodata:0x1C8 | 0x1F28 | size: 0x17
.obj str_SFX_BTL_VIVIAN_ATTAC_jin_00009148, local
	.string "SFX_BTL_VIVIAN_ATTACK2"
.endobj str_SFX_BTL_VIVIAN_ATTAC_jin_00009148

# .rodata:0x1DF | 0x1F3F | size: 0x1
.obj gap_03_00001F3F_rodata, global
.hidden gap_03_00001F3F_rodata
	.byte 0x00
.endobj gap_03_00001F3F_rodata

# .rodata:0x1E0 | 0x1F40 | size: 0x6
.obj str_M_Z_1_jin_00009160, local
	.string "M_Z_1"
.endobj str_M_Z_1_jin_00009160

# .rodata:0x1E6 | 0x1F46 | size: 0x2
.obj gap_03_00001F46_rodata, global
.hidden gap_03_00001F46_rodata
	.2byte 0x0000
.endobj gap_03_00001F46_rodata

# .rodata:0x1E8 | 0x1F48 | size: 0xC
.obj str_stg4_jin_24_jin_00009168, local
	.string "stg4_jin_24"
.endobj str_stg4_jin_24_jin_00009168

# .rodata:0x1F4 | 0x1F54 | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_jin_00009174, local
	.string "SFX_VOICE_MARIO_FIND1_3"
.endobj str_SFX_VOICE_MARIO_FIND_jin_00009174

# .rodata:0x20C | 0x1F6C | size: 0xC
.obj str_stg4_jin_25_jin_0000918c, local
	.string "stg4_jin_25"
.endobj str_stg4_jin_25_jin_0000918c

# .rodata:0x218 | 0x1F78 | size: 0x6
.obj str_M_I_Y_jin_00009198, local
	.string "M_I_Y"
.endobj str_M_I_Y_jin_00009198

# .rodata:0x21E | 0x1F7E | size: 0x2
.obj gap_03_00001F7E_rodata, global
.hidden gap_03_00001F7E_rodata
	.2byte 0x0000
.endobj gap_03_00001F7E_rodata

# .rodata:0x220 | 0x1F80 | size: 0x10
.obj str_stg4_jin_26_kur_jin_000091a0, local
	.string "stg4_jin_26_kur"
.endobj str_stg4_jin_26_kur_jin_000091a0

# .rodata:0x230 | 0x1F90 | size: 0x10
.obj str_stg4_jin_26_nok_jin_000091b0, local
	.string "stg4_jin_26_nok"
.endobj str_stg4_jin_26_nok_jin_000091b0

# .rodata:0x240 | 0x1FA0 | size: 0x10
.obj str_stg4_jin_26_win_jin_000091c0, local
	.string "stg4_jin_26_win"
.endobj str_stg4_jin_26_win_jin_000091c0

# .rodata:0x250 | 0x1FB0 | size: 0x10
.obj str_stg4_jin_26_yos_jin_000091d0, local
	.string "stg4_jin_26_yos"
.endobj str_stg4_jin_26_yos_jin_000091d0

# .rodata:0x260 | 0x1FC0 | size: 0xF
.obj str_stg4_jin_26_01_jin_000091e0, local
	.string "stg4_jin_26_01"
.endobj str_stg4_jin_26_01_jin_000091e0

# .rodata:0x26F | 0x1FCF | size: 0x1
.obj gap_03_00001FCF_rodata, global
.hidden gap_03_00001FCF_rodata
	.byte 0x00
.endobj gap_03_00001FCF_rodata

# .rodata:0x270 | 0x1FD0 | size: 0xF
.obj str_stg4_jin_26_02_jin_000091f0, local
	.string "stg4_jin_26_02"
.endobj str_stg4_jin_26_02_jin_000091f0

# .rodata:0x27F | 0x1FDF | size: 0x1
.obj gap_03_00001FDF_rodata, global
.hidden gap_03_00001FDF_rodata
	.byte 0x00
.endobj gap_03_00001FDF_rodata

# .rodata:0x280 | 0x1FE0 | size: 0x18
.obj str_SFX_BOSS_VOICE_NM_AC_jin_00009200, local
	.string "SFX_BOSS_VOICE_NM_AC1_1"
.endobj str_SFX_BOSS_VOICE_NM_AC_jin_00009200

# .rodata:0x298 | 0x1FF8 | size: 0x18
.obj str_SFX_BOSS_VOICE_NM_AC_jin_00009218, local
	.string "SFX_BOSS_VOICE_NM_AC1_2"
.endobj str_SFX_BOSS_VOICE_NM_AC_jin_00009218

# .rodata:0x2B0 | 0x2010 | size: 0x18
.obj str_SFX_BOSS_VOICE_NM_AC_jin_00009230, local
	.string "SFX_BOSS_VOICE_NM_AC1_5"
.endobj str_SFX_BOSS_VOICE_NM_AC_jin_00009230

# .rodata:0x2C8 | 0x2028 | size: 0x8
.obj str_EM_J_1B_jin_00009248, local
	.string "EM_J_1B"
.endobj str_EM_J_1B_jin_00009248

# .rodata:0x2D0 | 0x2030 | size: 0x12
.obj str_SFX_BOSS_NM_DOWN1_jin_00009250, local
	.string "SFX_BOSS_NM_DOWN1"
.endobj str_SFX_BOSS_NM_DOWN1_jin_00009250

# .rodata:0x2E2 | 0x2042 | size: 0x2
.obj gap_03_00002042_rodata, global
.hidden gap_03_00002042_rodata
	.2byte 0x0000
.endobj gap_03_00002042_rodata

# .rodata:0x2E4 | 0x2044 | size: 0x7
.obj str_EM_Z_2_jin_00009264, local
	.string "EM_Z_2"
.endobj str_EM_Z_2_jin_00009264

# .rodata:0x2EB | 0x204B | size: 0x1
.obj gap_03_0000204B_rodata, global
.hidden gap_03_0000204B_rodata
	.byte 0x00
.endobj gap_03_0000204B_rodata

# .rodata:0x2EC | 0x204C | size: 0x1A
.obj str_SFX_BOSS_NM_JUMP_KUR_jin_0000926c, local
	.string "SFX_BOSS_NM_JUMP_KURURIN1"
.endobj str_SFX_BOSS_NM_JUMP_KUR_jin_0000926c

# .rodata:0x306 | 0x2066 | size: 0x2
.obj gap_03_00002066_rodata, global
.hidden gap_03_00002066_rodata
	.2byte 0x0000
.endobj gap_03_00002066_rodata

# .rodata:0x308 | 0x2068 | size: 0x8
.obj str_EM_A_1A_jin_00009288, local
	.string "EM_A_1A"
.endobj str_EM_A_1A_jin_00009288

# .rodata:0x310 | 0x2070 | size: 0x19
.obj str_SFX_BOSS_NM_HAMMER_F_jin_00009290, local
	.string "SFX_BOSS_NM_HAMMER_FURU2"
.endobj str_SFX_BOSS_NM_HAMMER_F_jin_00009290

# .rodata:0x329 | 0x2089 | size: 0x3
.obj gap_03_00002089_rodata, global
.hidden gap_03_00002089_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002089_rodata

# .rodata:0x32C | 0x208C | size: 0x8
.obj str_EM_A_1B_jin_000092ac, local
	.string "EM_A_1B"
.endobj str_EM_A_1B_jin_000092ac

# .rodata:0x334 | 0x2094 | size: 0x8
.obj str_EM_A_1C_jin_000092b4, local
	.string "EM_A_1C"
.endobj str_EM_A_1C_jin_000092b4

# .rodata:0x33C | 0x209C | size: 0x18
.obj str_SFX_BOSS_NM_HAMMER_D_jin_000092bc, local
	.string "SFX_BOSS_NM_HAMMER_DON2"
.endobj str_SFX_BOSS_NM_HAMMER_D_jin_000092bc

# .rodata:0x354 | 0x20B4 | size: 0xE
.obj str_SFX_PARTY_IN1_jin_000092d4, local
	.string "SFX_PARTY_IN1"
.endobj str_SFX_PARTY_IN1_jin_000092d4

# .rodata:0x362 | 0x20C2 | size: 0x2
.obj gap_03_000020C2_rodata, global
.hidden gap_03_000020C2_rodata
	.2byte 0x0000
.endobj gap_03_000020C2_rodata

# .rodata:0x364 | 0x20C4 | size: 0x12
.obj str_SFX_PARTY_CHANGE1_jin_000092e4, local
	.string "SFX_PARTY_CHANGE1"
.endobj str_SFX_PARTY_CHANGE1_jin_000092e4

# .rodata:0x376 | 0x20D6 | size: 0x2
.obj gap_03_000020D6_rodata, global
.hidden gap_03_000020D6_rodata
	.2byte 0x0000
.endobj gap_03_000020D6_rodata

# .rodata:0x378 | 0x20D8 | size: 0xF
.obj str_SFX_PARTY_OUT1_jin_000092f8, local
	.string "SFX_PARTY_OUT1"
.endobj str_SFX_PARTY_OUT1_jin_000092f8
	.byte 0x00

# .rodata:0x388 | 0x20E8 | size: 0x4
.obj float_1_jin_00009308, local
	.float 1
.endobj float_1_jin_00009308

# .rodata:0x38C | 0x20EC | size: 0x4
.obj gap_03_000020EC_rodata, global
.hidden gap_03_000020EC_rodata
	.4byte 0x00000000
.endobj gap_03_000020EC_rodata

# 0x00011D38..0x00014CD0 | size: 0x2F98
.data
.balign 8

# .data:0x0 | 0x11D38 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x11D40 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x11D44 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x11D48 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x11D4C | size: 0x4
.obj gap_04_00011D4C_data, global
.hidden gap_04_00011D4C_data
	.4byte 0x00000000
.endobj gap_04_00011D4C_data

# .data:0x18 | 0x11D50 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x11D58 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x11D5C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x11D60 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x11D68 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x11D6C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x11D70 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x11D74 | size: 0x4
.obj gap_04_00011D74_data, global
.hidden gap_04_00011D74_data
	.4byte 0x00000000
.endobj gap_04_00011D74_data

# .data:0x40 | 0x11D78 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x11D80 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x11D84 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x11D88 | size: 0xC4
.obj unit_faker_mario_13_data_11D88, global
	.4byte 0x0000004F
	.4byte str_btl_un_rampell_jin_00008f80
	.4byte 0x00280000
	.4byte 0x01013600
	.4byte 0x00640046
	.4byte 0x00070018
	.4byte 0x0028000C
	.4byte 0x00280000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x41400000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41400000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41400000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x41C00000
	.4byte 0x42200000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_MARIO_DAMAGE1_jin_00008f90
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jin_00008fa4
	.4byte str_SFX_BTL_DAMAGE_ICE1_jin_00008fbc
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jin_00008fd0
	.4byte 0x00000000
	.4byte regist_fmario
	.4byte 0x01000000
	.4byte parts_fmario
	.4byte init_event_fmario
	.4byte data_table_fmario
.endobj unit_faker_mario_13_data_11D88

# .data:0x114 | 0x11E4C | size: 0x5
.obj defence_fmario, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_fmario

# .data:0x119 | 0x11E51 | size: 0x3
.obj gap_04_00011E51_data, global
.hidden gap_04_00011E51_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00011E51_data

# .data:0x11C | 0x11E54 | size: 0x5
.obj defence_attr_fmario, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_fmario

# .data:0x121 | 0x11E59 | size: 0x3
.obj gap_04_00011E59_data, global
.hidden gap_04_00011E59_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00011E59_data

# .data:0x124 | 0x11E5C | size: 0x16
.obj regist_fmario, local
	.4byte 0x32324632
	.4byte 0x32326428
	.4byte 0x64466446
	.4byte 0x645A3200
	.4byte 0x00643264
	.2byte 0x6403
.endobj regist_fmario

# .data:0x13A | 0x11E72 | size: 0x2
.obj gap_04_00011E72_data, global
.hidden gap_04_00011E72_data
	.2byte 0x0000
.endobj gap_04_00011E72_data

# .data:0x13C | 0x11E74 | size: 0x78
.obj pose_table_fmario_stay, local
	.4byte 0x00000001
	.4byte str_EM_N_1_jin_00008fec
	.4byte 0x00000002
	.4byte str_EM_Y_2_jin_00008ff4
	.4byte 0x00000009
	.4byte str_EM_Y_2_jin_00008ff4
	.4byte 0x00000005
	.4byte str_EM_K_1_jin_00008ffc
	.4byte 0x00000004
	.4byte str_EM_K_1_jin_00008ffc
	.4byte 0x00000003
	.4byte str_EM_K_1_jin_00008ffc
	.4byte 0x0000001C
	.4byte str_EM_S_1_jin_00009004
	.4byte 0x00000027
	.4byte str_EM_D_1_jin_0000900c
	.4byte 0x00000032
	.4byte str_EM_A_1_jin_00009014
	.4byte 0x0000002A
	.4byte str_EM_R_1_jin_0000901c
	.4byte 0x00000028
	.4byte str_EM_W_1_jin_00009024
	.4byte 0x00000038
	.4byte str_EM_D_3_jin_0000902c
	.4byte 0x00000039
	.4byte str_EM_D_3_jin_0000902c
	.4byte 0x00000041
	.4byte str_EM_T_1_jin_00009034
	.4byte 0x00000045
	.4byte str_EM_S_1_jin_00009004
.endobj pose_table_fmario_stay

# .data:0x1B4 | 0x11EEC | size: 0x10
.obj data_table_fmario, local
	.4byte 0x00000031
	.4byte dead_event_fmario
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_fmario

# .data:0x1C4 | 0x11EFC | size: 0x4C
.obj parts_fmario, local
	.4byte 0x00000001
	.4byte str_btl_un_rampell_jin_00008f80
	.4byte str_c_mario_jin_0000903c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40400000
	.4byte 0x41D80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence_fmario
	.4byte defence_attr_fmario
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table_fmario_stay
.endobj parts_fmario

# .data:0x210 | 0x11F48 | size: 0xC0
.obj weapon_masao_jump, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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
	.4byte 0x01001260
	.4byte 0x20001004
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00015807
	.4byte 0x0000000C
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_masao_jump

# .data:0x2D0 | 0x12008 | size: 0xC0
.obj weapon_masao_hammer, local
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
	.4byte 0x01001260
	.4byte 0x21002000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00010807
	.4byte 0x0000020C
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_masao_hammer

# .data:0x390 | 0x120C8 | size: 0xC0
.obj weapon_masao_kururin_jump, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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
	.4byte 0x01001260
	.4byte 0x20001004
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00015807
	.4byte 0x0000000C
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_masao_kururin_jump

# .data:0x450 | 0x12188 | size: 0xC0
.obj weapon_masao_kaiten_hammer, local
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
	.4byte 0x01001260
	.4byte 0x21002000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00010807
	.4byte 0x0000020C
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_masao_kaiten_hammer

# .data:0x510 | 0x12248 | size: 0x30
.obj entry_gullible_christine, local
	.4byte unit_gullible_christine_13_data_AFF8
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
.endobj entry_gullible_christine

# .data:0x540 | 0x12278 | size: 0x30
.obj entry_gullible_nokotarou, local
	.4byte unit_gullible_nokotarou_13_data_CD90
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
.endobj entry_gullible_nokotarou

# .data:0x570 | 0x122A8 | size: 0x30
.obj entry_gullible_clauda, local
	.4byte unit_gullible_clauda_13_data_C118
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
.endobj entry_gullible_clauda

# .data:0x5A0 | 0x122D8 | size: 0x30
.obj entry_gullible_yoshi, local
	.4byte unit_gullible_yoshi_13_data_E678
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
.endobj entry_gullible_yoshi

# .data:0x5D0 | 0x12308 | size: 0x4C
.obj mario_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFFFFFF92
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0xFFFFFF92
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_zoom

# .data:0x61C | 0x12354 | size: 0x4C
.obj enemy_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000073
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0x00000073
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj enemy_zoom

# .data:0x668 | 0x123A0 | size: 0x4C
.obj fmario_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0x0000005A
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fmario_zoom

# .data:0x6B4 | 0x123EC | size: 0x4C
.obj gparty_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000082
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0x00000082
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gparty_zoom

# .data:0x700 | 0x12438 | size: 0x2F4
.obj init_event_fmario, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event_fmario
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventPhase
	.4byte 0xFFFFFFFE
	.4byte phase_event_fmario
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_fmario
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event_fmario
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventEntry
	.4byte 0xFFFFFFFE
	.4byte fmario_entry_event
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFD050F90
	.4byte 0x00020032
	.4byte 0xFD050F91
	.4byte 0xFFFFFFFF
	.4byte 0x0001005B
	.4byte _gullible_party_info_init
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte entry_gullible_christine
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte entry_gullible_nokotarou
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte entry_gullible_clauda
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte entry_gullible_yoshi
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFD050F92
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte entry_gullible_christine
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F91
	.4byte 0xFE363C83
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
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
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
	.4byte _load_param
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFD050F94
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F93
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C81
	.4byte 0x00000042
	.4byte 0x00020038
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00020038
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C81
	.4byte 0x00000019
	.4byte 0x00020038
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F95
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_MOVE1L_jin_00009044
	.4byte str_SFX_BOSS_NM_MOVE1R_jin_00009058
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_MOVE1L_jin_00009044
	.4byte str_SFX_BOSS_NM_MOVE1R_jin_00009058
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_JUMP1_jin_0000906c
	.4byte str_SFX_BOSS_NM_LANDING1_jin_00009080
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_fmario

# .data:0x9F4 | 0x1272C | size: 0x60
.obj fmario_entry_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0001005E
	.4byte fmario_zoom
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_22_jin_00009098
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fmario_entry_event

# .data:0xA54 | 0x1278C | size: 0xD4
.obj dead_event_fmario_down, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_S_1_jin_00009004
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_EM_T_1_jin_00009034
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_EM_S_1_jin_00009004
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_26_05_jin_000090a4
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_K_1_jin_00008ffc
	.4byte 0x00010009
	.4byte 0x00000098
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN2_jin_000090b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_VOICE_NM_LAND_DA_jin_000090c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_D_2_jin_000090e4
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event_fmario_down

# .data:0xB28 | 0x12860 | size: 0x318
.obj dead_event_fmario, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_W_1_jin_00009024
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00020018
	.4byte 0xFD050F95
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F95
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte vivian_comeback
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entryunit_party+0xC0
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xF2484A80
	.4byte 0xF24A7A80
	.4byte 0xF24A8E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFD050F94
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte fmario_zoom
	.4byte 0x0001005E
	.4byte dead_event_fmario_down
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001005E
	.4byte gparty_zoom
	.4byte 0x00010022
	.4byte 0xFD050F92
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_26_05_kur_jin_000090ec
	.4byte 0x00000000
	.4byte 0xFD050F91
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_26_05_nok_jin_00009100
	.4byte 0x00000000
	.4byte 0xFD050F91
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_26_05_win_jin_00009114
	.4byte 0x00000000
	.4byte 0xFD050F91
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_26_05_yos_jin_00009128
	.4byte 0x00000000
	.4byte 0xFD050F91
	.4byte 0x00000031
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte enemy_zoom
	.4byte 0x0001005E
	.4byte dead_event_fmario_down
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte fmario_zoom
	.4byte 0x0001005E
	.4byte dead_event_fmario_down
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFD050F93
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core_nospin_norotate
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event_fmario

# .data:0xE40 | 0x12B78 | size: 0x58
.obj damage_event_fmario, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000400
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F93
	.4byte 0x00000001
	.4byte 0x00000021
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
.endobj damage_event_fmario

# .data:0xE98 | 0x12BD0 | size: 0x64C
.obj phase_event_fmario, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_23_jin_0000913c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00020032
	.4byte 0xFD050F95
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte vivian_comeback
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entryunit_party+0xC0
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xF2484A80
	.4byte 0xF24A7A80
	.4byte 0xF24A8E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte unk_jin_000057fc
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMarioId
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFE363C83
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFE363C85
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0001005C
	.4byte mario_zoom
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BTL_VIVIAN_ATTAC_jin_00009148
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFFFFFF74
	.4byte 0xFFFFFFD8
	.4byte 0x00000005
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFE363C83
	.4byte 0xFFFFFF74
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte str_M_Z_1_jin_00009160
	.4byte 0x0001006F
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_24_jin_00009168
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_VOICE_MARIO_FIND_jin_00009174
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C85
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFE363C85
	.4byte 0x0000000C
	.4byte 0xF24A7E80
	.4byte 0xF24A7F4C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C85
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_25_jin_0000918c
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001006F
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte str_M_I_Y_jin_00009198
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C83
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000003
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F94
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte party_change_event
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00020019
	.4byte 0xFD050F94
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xFE363C82
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte enemy_zoom
	.4byte 0x00010022
	.4byte 0xFD050F92
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_26_kur_jin_000091a0
	.4byte 0x00000000
	.4byte 0xFD050F91
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_26_nok_jin_000091b0
	.4byte 0x00000000
	.4byte 0xFD050F91
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_26_win_jin_000091c0
	.4byte 0x00000000
	.4byte 0xFD050F91
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_26_yos_jin_000091d0
	.4byte 0x00000000
	.4byte 0xFD050F91
	.4byte 0x00000031
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte fmario_zoom
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_26_01_jin_000091e0
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte fmario_zoom
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_26_02_jin_000091f0
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event_fmario

# .data:0x14E4 | 0x1321C | size: 0xF0
.obj attack_event_fmario, local
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
	.4byte 0x0007005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x00000032
	.4byte 0x00000032
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_masao_jump
	.4byte 0x0001005E
	.4byte marioAttackEvent_NormalJump
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_masao_hammer
	.4byte 0x0001005E
	.4byte marioAttackEvent_NormalHammer
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_masao_kururin_jump
	.4byte 0x0001005E
	.4byte marioAttackEvent_KururinJump
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_masao_kaiten_hammer
	.4byte 0x0001005E
	.4byte marioAttackEvent_KaitenHammer
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_fmario

# .data:0x15D4 | 0x1330C | size: 0x90
.obj jump_attack_voice, local
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000002
	.4byte 0xFE363C8F
	.4byte 0x00010022
	.4byte 0xFE363C8F
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_VOICE_NM_AC_jin_00009200
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_VOICE_NM_AC_jin_00009218
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_VOICE_NM_AC_jin_00009230
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jump_attack_voice

# .data:0x1664 | 0x1339C | size: 0x560
.obj marioAttackEvent_NormalJump, local
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
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
	.4byte 0x00000021
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
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x0007005B
	.4byte btlevtcmd_GetTakeoffPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_jin_00009248
	.4byte 0x0001005E
	.4byte jump_attack_voice
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_JUMP1_jin_0000906c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0008005B
	.4byte btlevtcmd_MarioJumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN1_jin_00009250
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_D_2_jin_000090e4
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_jin_00009248
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7CE6
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000008
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_W_1_jin_00009024
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marioAttackEvent_NormalJump

# .data:0x1BC4 | 0x138FC | size: 0x754
.obj marioAttackEvent_KururinJump, local
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
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
	.4byte 0x00000021
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
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x0007005B
	.4byte btlevtcmd_GetTakeoffPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_jin_00009248
	.4byte 0x0001005E
	.4byte jump_attack_voice
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_JUMP1_jin_0000906c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0008005B
	.4byte btlevtcmd_MarioJumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN1_jin_00009250
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_D_2_jin_000090e4
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
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
	.4byte 0x0001006F
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_jin_00009248
	.4byte 0x0001005E
	.4byte jump_attack_voice
	.4byte 0x0008005B
	.4byte btlevtcmd_MarioJumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0001005F
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00020037
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFE2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_Z_2_jin_00009264
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_JUMP_KUR_jin_0000926c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_jin_00009248
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000001B
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7CE6
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000008
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_W_1_jin_00009024
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marioAttackEvent_KururinJump

# .data:0x2318 | 0x14050 | size: 0x4AC
.obj marioAttackEvent_NormalHammer, local
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
	.4byte 0x00000021
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
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000018
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1A_jin_00009288
	.4byte 0x0001000A
	.4byte 0x00000042
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_HAMMER_F_jin_00009290
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000000E9
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1B_jin_000092ac
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1C_jin_000092b4
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_HAMMER_D_jin_000092bc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
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
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_S_1_jin_00009004
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_W_1_jin_00009024
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marioAttackEvent_NormalHammer

# .data:0x27C4 | 0x144FC | size: 0x4AC
.obj marioAttackEvent_KaitenHammer, local
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
	.4byte 0x00000021
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
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000018
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1A_jin_00009288
	.4byte 0x0001000A
	.4byte 0x00000042
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_HAMMER_F_jin_00009290
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000000E9
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1B_jin_000092ac
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1C_jin_000092b4
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_HAMMER_D_jin_000092bc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
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
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_S_1_jin_00009004
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_W_1_jin_00009024
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marioAttackEvent_KaitenHammer

# .data:0x2C70 | 0x149A8 | size: 0x310
.obj party_change_event, local
	.4byte 0x00020035
	.4byte 0xFD050F92
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFD050F92
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xFD050F92
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte entry_gullible_christine
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte entry_gullible_nokotarou
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte entry_gullible_clauda
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte entry_gullible_yoshi
	.4byte 0x0000002A
	.4byte 0x00000002
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFD050F94
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFD050F91
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C89
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F91
	.4byte 0xFE363C89
	.4byte 0x0002005B
	.4byte _anime_load
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C83
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFE363C83
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x00010005
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFE363C83
	.4byte 0xF24A7A4D
	.4byte 0xF24A7A4D
	.4byte 0xF24A7A4D
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_PARTY_IN1_jin_000092d4
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte _anime_load_wait
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte _save_param
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte _load_param
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C89
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C89
	.4byte 0xF24A7D4C
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDataOfDataTable
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFE363C89
	.4byte 0x00000004
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_PARTY_CHANGE1_jin_000092e4
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFE363C89
	.4byte 0xF24A7AE6
	.4byte 0xF24A7AE6
	.4byte 0xF24A7AE6
	.4byte 0x00010005
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFE363C89
	.4byte 0xF24A7AB3
	.4byte 0xF24A7AB3
	.4byte 0xF24A7AB3
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFE363C89
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_PARTY_OUT1_jin_000092f8
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte btlevtcmd_SortPhaseMoveTable
	.4byte 0x00000002
	.4byte 0x00000001
.endobj party_change_event

# .data:0x2F80 | 0x14CB8 | size: 0x18
.obj wait_event_fmario, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event_fmario
