.include "macros.inc"
.file "evt_goryuugijo.o"

# 0x0000F214..0x0000F594 | size: 0x380
.text
.balign 4

# .text:0x0 | 0xF214 | size: 0x90
.fn eff_call_yuugijo, local
/* 0000F214 0000F2E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000F218 0000F2E4  7C 08 02 A6 */	mflr r0
/* 0000F21C 0000F2E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 0000F220 0000F2EC  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 0000F224 0000F2F0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 0000F228 0000F2F4  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000F22C 0000F2F8  7C 7D 1B 78 */	mr r29, r3
/* 0000F230 0000F2FC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000F234 0000F300  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000F238 0000F304  4B FF 12 6D */	bl evtGetValue
/* 0000F23C 0000F308  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000F240 0000F30C  7C 7E 1B 78 */	mr r30, r3
/* 0000F244 0000F310  7F A3 EB 78 */	mr r3, r29
/* 0000F248 0000F314  4B FF 12 5D */	bl evtGetFloat
/* 0000F24C 0000F318  FF E0 08 90 */	fmr f31, f1
/* 0000F250 0000F31C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000F254 0000F320  7F A3 EB 78 */	mr r3, r29
/* 0000F258 0000F324  4B FF 12 4D */	bl evtGetFloat
/* 0000F25C 0000F328  FF C0 08 90 */	fmr f30, f1
/* 0000F260 0000F32C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000F264 0000F330  7F A3 EB 78 */	mr r3, r29
/* 0000F268 0000F334  4B FF 12 3D */	bl evtGetFloat
/* 0000F26C 0000F338  FC 00 08 90 */	fmr f0, f1
/* 0000F270 0000F33C  7F C3 F3 78 */	mr r3, r30
/* 0000F274 0000F340  FC 20 F8 90 */	fmr f1, f31
/* 0000F278 0000F344  FC 40 F0 90 */	fmr f2, f30
/* 0000F27C 0000F348  FC 60 00 90 */	fmr f3, f0
/* 0000F280 0000F34C  4B FF 12 25 */	bl effMiniGameEntry
/* 0000F284 0000F350  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 0000F288 0000F354  38 60 00 02 */	li r3, 0x2
/* 0000F28C 0000F358  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 0000F290 0000F35C  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 0000F294 0000F360  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000F298 0000F364  7C 08 03 A6 */	mtlr r0
/* 0000F29C 0000F368  38 21 00 30 */	addi r1, r1, 0x30
/* 0000F2A0 0000F36C  4E 80 00 20 */	blr
.endfn eff_call_yuugijo

# .text:0x90 | 0xF2A4 | size: 0xB4
.fn evt_goryuugijo_free, local
/* 0000F2A4 0000F370  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000F2A8 0000F374  7C 08 02 A6 */	mflr r0
/* 0000F2AC 0000F378  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000F2B0 0000F37C  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 0000F2B4 0000F380  7C 9D 23 78 */	mr r29, r4
/* 0000F2B8 0000F384  7C 7C 1B 78 */	mr r28, r3
/* 0000F2BC 0000F388  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000F2C0 0000F38C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000F2C4 0000F390  4B FF 11 E1 */	bl evtGetValue
/* 0000F2C8 0000F394  7C 7E 1B 79 */	mr. r30, r3
/* 0000F2CC 0000F398  40 82 00 0C */	bne .L_0000F2D8
/* 0000F2D0 0000F39C  38 60 00 02 */	li r3, 0x2
/* 0000F2D4 0000F3A0  48 00 00 70 */	b .L_0000F344
.L_0000F2D8:
/* 0000F2D8 0000F3A4  2C 1D 00 00 */	cmpwi r29, 0x0
/* 0000F2DC 0000F3A8  41 82 00 10 */	beq .L_0000F2EC
/* 0000F2E0 0000F3AC  A0 1E 00 08 */	lhz r0, 0x8(r30)
/* 0000F2E4 0000F3B0  60 00 00 01 */	ori r0, r0, 0x1
/* 0000F2E8 0000F3B4  B0 1E 00 08 */	sth r0, 0x8(r30)
.L_0000F2EC:
/* 0000F2EC 0000F3B8  A0 1E 00 08 */	lhz r0, 0x8(r30)
/* 0000F2F0 0000F3BC  54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 0000F2F4 0000F3C0  40 82 00 0C */	bne .L_0000F300
/* 0000F2F8 0000F3C4  38 60 00 00 */	li r3, 0x0
/* 0000F2FC 0000F3C8  48 00 00 48 */	b .L_0000F344
.L_0000F300:
/* 0000F300 0000F3CC  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 0000F304 0000F3D0  28 04 00 00 */	cmplwi r4, 0x0
/* 0000F308 0000F3D4  41 82 00 14 */	beq .L_0000F31C
/* 0000F30C 0000F3D8  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 0000F310 0000F3DC  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000F314 0000F3E0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000F318 0000F3E4  4B FF 11 8D */	bl _mapFree
.L_0000F31C:
/* 0000F31C 0000F3E8  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 0000F320 0000F3EC  7F C4 F3 78 */	mr r4, r30
/* 0000F324 0000F3F0  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000F328 0000F3F4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000F32C 0000F3F8  4B FF 11 79 */	bl _mapFree
/* 0000F330 0000F3FC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000F334 0000F400  7F 83 E3 78 */	mr r3, r28
/* 0000F338 0000F404  38 A0 00 00 */	li r5, 0x0
/* 0000F33C 0000F408  4B FF 11 69 */	bl evtSetValue
/* 0000F340 0000F40C  38 60 00 02 */	li r3, 0x2
.L_0000F344:
/* 0000F344 0000F410  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 0000F348 0000F414  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000F34C 0000F418  7C 08 03 A6 */	mtlr r0
/* 0000F350 0000F41C  38 21 00 20 */	addi r1, r1, 0x20
/* 0000F354 0000F420  4E 80 00 20 */	blr
.endfn evt_goryuugijo_free

# .text:0x144 | 0xF358 | size: 0x16C
.fn evt_goryuugijo_alloc_9_text_F358, global
/* 0000F358 0000F424  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000F35C 0000F428  7C 08 02 A6 */	mflr r0
/* 0000F360 0000F42C  3C A0 00 00 */	lis r5, mapalloc_base_ptr@ha
/* 0000F364 0000F430  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000F368 0000F434  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 0000F36C 0000F438  7C 7D 1B 78 */	mr r29, r3
/* 0000F370 0000F43C  38 65 00 00 */	addi r3, r5, mapalloc_base_ptr@l
/* 0000F374 0000F440  7C 9E 23 78 */	mr r30, r4
/* 0000F378 0000F444  38 80 00 20 */	li r4, 0x20
/* 0000F37C 0000F448  83 9D 00 18 */	lwz r28, 0x18(r29)
/* 0000F380 0000F44C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000F384 0000F450  4B FF 11 21 */	bl _mapAlloc
/* 0000F388 0000F454  38 80 00 00 */	li r4, 0x0
/* 0000F38C 0000F458  7C 7F 1B 78 */	mr r31, r3
/* 0000F390 0000F45C  38 A0 00 20 */	li r5, 0x20
/* 0000F394 0000F460  4B FF 11 11 */	bl memset
/* 0000F398 0000F464  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 0000F39C 0000F468  7F A3 EB 78 */	mr r3, r29
/* 0000F3A0 0000F46C  7F E5 FB 78 */	mr r5, r31
/* 0000F3A4 0000F470  4B FF 11 01 */	bl evtSetValue
/* 0000F3A8 0000F474  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 0000F3AC 0000F478  7F A3 EB 78 */	mr r3, r29
/* 0000F3B0 0000F47C  4B FF 10 F5 */	bl evtGetValue
/* 0000F3B4 0000F480  3C 80 00 00 */	lis r4, main_evt@ha
/* 0000F3B8 0000F484  90 7F 00 0C */	stw r3, 0xc(r31)
/* 0000F3BC 0000F488  38 64 00 00 */	addi r3, r4, main_evt@l
/* 0000F3C0 0000F48C  38 A0 00 00 */	li r5, 0x0
/* 0000F3C4 0000F490  38 80 00 00 */	li r4, 0x0
/* 0000F3C8 0000F494  4B FF 10 DD */	bl evtEntry
/* 0000F3CC 0000F498  90 7F 00 00 */	stw r3, 0x0(r31)
/* 0000F3D0 0000F49C  38 00 00 00 */	li r0, 0x0
/* 0000F3D4 0000F4A0  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 0000F3D8 0000F4A4  93 E3 00 9C */	stw r31, 0x9c(r3)
/* 0000F3DC 0000F4A8  90 1F 00 04 */	stw r0, 0x4(r31)
/* 0000F3E0 0000F4AC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 0000F3E4 0000F4B0  2C 00 00 01 */	cmpwi r0, 0x1
/* 0000F3E8 0000F4B4  41 82 00 64 */	beq .L_0000F44C
/* 0000F3EC 0000F4B8  40 80 00 AC */	bge .L_0000F498
/* 0000F3F0 0000F4BC  2C 00 00 00 */	cmpwi r0, 0x0
/* 0000F3F4 0000F4C0  40 80 00 08 */	bge .L_0000F3FC
/* 0000F3F8 0000F4C4  48 00 00 A0 */	b .L_0000F498
.L_0000F3FC:
/* 0000F3FC 0000F4C8  3C 80 00 00 */	lis r4, goryuugijo_init_montemedal_9_text_93A8@ha
/* 0000F400 0000F4CC  3C 60 00 00 */	lis r3, goryuugijo_main_montemedal_9_text_93A4@ha
/* 0000F404 0000F4D0  38 04 00 00 */	addi r0, r4, goryuugijo_init_montemedal_9_text_93A8@l
/* 0000F408 0000F4D4  3C 80 00 00 */	lis r4, goryuugijo_disp_montemedal_9_text_9384@ha
/* 0000F40C 0000F4D8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 0000F410 0000F4DC  38 A3 00 00 */	addi r5, r3, goryuugijo_main_montemedal_9_text_93A4@l
/* 0000F414 0000F4E0  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 0000F418 0000F4E4  38 04 00 00 */	addi r0, r4, goryuugijo_disp_montemedal_9_text_9384@l
/* 0000F41C 0000F4E8  90 BF 00 14 */	stw r5, 0x14(r31)
/* 0000F420 0000F4EC  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000F424 0000F4F0  38 80 00 04 */	li r4, 0x4
/* 0000F428 0000F4F4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 0000F42C 0000F4F8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000F430 0000F4FC  4B FF 10 75 */	bl _mapAlloc
/* 0000F434 0000F500  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 0000F438 0000F504  38 80 00 00 */	li r4, 0x0
/* 0000F43C 0000F508  38 A0 00 04 */	li r5, 0x4
/* 0000F440 0000F50C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 0000F444 0000F510  4B FF 10 61 */	bl memset
/* 0000F448 0000F514  48 00 00 50 */	b .L_0000F498
.L_0000F44C:
/* 0000F44C 0000F518  3C 80 00 00 */	lis r4, goryuugijo_init_slot_9_text_8750@ha
/* 0000F450 0000F51C  3C 60 00 00 */	lis r3, goryuugijo_main_slot_9_text_72F0@ha
/* 0000F454 0000F520  38 04 00 00 */	addi r0, r4, goryuugijo_init_slot_9_text_8750@l
/* 0000F458 0000F524  3C 80 00 00 */	lis r4, goryuugijo_disp_slot_9_text_70E4@ha
/* 0000F45C 0000F528  90 1F 00 10 */	stw r0, 0x10(r31)
/* 0000F460 0000F52C  38 A3 00 00 */	addi r5, r3, goryuugijo_main_slot_9_text_72F0@l
/* 0000F464 0000F530  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 0000F468 0000F534  38 04 00 00 */	addi r0, r4, goryuugijo_disp_slot_9_text_70E4@l
/* 0000F46C 0000F538  90 BF 00 14 */	stw r5, 0x14(r31)
/* 0000F470 0000F53C  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000F474 0000F540  38 80 00 78 */	li r4, 0x78
/* 0000F478 0000F544  90 1F 00 18 */	stw r0, 0x18(r31)
/* 0000F47C 0000F548  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000F480 0000F54C  4B FF 10 25 */	bl _mapAlloc
/* 0000F484 0000F550  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 0000F488 0000F554  38 80 00 00 */	li r4, 0x0
/* 0000F48C 0000F558  38 A0 00 78 */	li r5, 0x78
/* 0000F490 0000F55C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 0000F494 0000F560  4B FF 10 11 */	bl memset
.L_0000F498:
/* 0000F498 0000F564  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 0000F49C 0000F568  7F A3 EB 78 */	mr r3, r29
/* 0000F4A0 0000F56C  7F C4 F3 78 */	mr r4, r30
/* 0000F4A4 0000F570  7D 89 03 A6 */	mtctr r12
/* 0000F4A8 0000F574  4E 80 04 21 */	bctrl
/* 0000F4AC 0000F578  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 0000F4B0 0000F57C  38 60 00 02 */	li r3, 0x2
/* 0000F4B4 0000F580  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000F4B8 0000F584  7C 08 03 A6 */	mtlr r0
/* 0000F4BC 0000F588  38 21 00 20 */	addi r1, r1, 0x20
/* 0000F4C0 0000F58C  4E 80 00 20 */	blr
.endfn evt_goryuugijo_alloc_9_text_F358

# .text:0x2B0 | 0xF4C4 | size: 0xA8
.fn evt_goryuugijo_main_func, local
/* 0000F4C4 0000F590  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000F4C8 0000F594  7C 08 02 A6 */	mflr r0
/* 0000F4CC 0000F598  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000F4D0 0000F59C  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000F4D4 0000F5A0  7C 7D 1B 78 */	mr r29, r3
/* 0000F4D8 0000F5A4  7C 9E 23 78 */	mr r30, r4
/* 0000F4DC 0000F5A8  83 E3 00 9C */	lwz r31, 0x9c(r3)
/* 0000F4E0 0000F5AC  A0 7F 00 08 */	lhz r3, 0x8(r31)
/* 0000F4E4 0000F5B0  54 60 07 FF */	clrlwi. r0, r3, 31
/* 0000F4E8 0000F5B4  41 82 00 14 */	beq .L_0000F4FC
/* 0000F4EC 0000F5B8  60 60 00 02 */	ori r0, r3, 0x2
/* 0000F4F0 0000F5BC  38 60 00 02 */	li r3, 0x2
/* 0000F4F4 0000F5C0  B0 1F 00 08 */	sth r0, 0x8(r31)
/* 0000F4F8 0000F5C4  48 00 00 60 */	b .L_0000F558
.L_0000F4FC:
/* 0000F4FC 0000F5C8  80 7F 00 04 */	lwz r3, 0x4(r31)
/* 0000F500 0000F5CC  28 03 00 00 */	cmplwi r3, 0x0
/* 0000F504 0000F5D0  41 82 00 1C */	beq .L_0000F520
/* 0000F508 0000F5D4  80 63 01 5C */	lwz r3, 0x15c(r3)
/* 0000F50C 0000F5D8  4B FF 0F 99 */	bl evtCheckID
/* 0000F510 0000F5DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000F514 0000F5E0  40 82 00 20 */	bne .L_0000F534
/* 0000F518 0000F5E4  38 00 00 00 */	li r0, 0x0
/* 0000F51C 0000F5E8  90 1F 00 04 */	stw r0, 0x4(r31)
.L_0000F520:
/* 0000F520 0000F5EC  81 9F 00 14 */	lwz r12, 0x14(r31)
/* 0000F524 0000F5F0  7F A3 EB 78 */	mr r3, r29
/* 0000F528 0000F5F4  7F C4 F3 78 */	mr r4, r30
/* 0000F52C 0000F5F8  7D 89 03 A6 */	mtctr r12
/* 0000F530 0000F5FC  4E 80 04 21 */	bctrl
.L_0000F534:
/* 0000F534 0000F600  3C 80 00 00 */	lis r4, float_1000_gor_0001e868@ha
/* 0000F538 0000F604  3C 60 00 00 */	lis r3, evt_goryuugijo_disp_func@ha
/* 0000F53C 0000F608  C0 24 00 00 */	lfs f1, float_1000_gor_0001e868@l(r4)
/* 0000F540 0000F60C  38 A3 00 00 */	addi r5, r3, evt_goryuugijo_disp_func@l
/* 0000F544 0000F610  7F E6 FB 78 */	mr r6, r31
/* 0000F548 0000F614  38 60 00 08 */	li r3, 0x8
/* 0000F54C 0000F618  38 80 00 00 */	li r4, 0x0
/* 0000F550 0000F61C  4B FF 0F 55 */	bl dispEntry
/* 0000F554 0000F620  38 60 00 00 */	li r3, 0x0
.L_0000F558:
/* 0000F558 0000F624  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 0000F55C 0000F628  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000F560 0000F62C  7C 08 03 A6 */	mtlr r0
/* 0000F564 0000F630  38 21 00 20 */	addi r1, r1, 0x20
/* 0000F568 0000F634  4E 80 00 20 */	blr
.endfn evt_goryuugijo_main_func

# .text:0x358 | 0xF56C | size: 0x28
.fn evt_goryuugijo_disp_func, local
/* 0000F56C 0000F638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000F570 0000F63C  7C 08 02 A6 */	mflr r0
/* 0000F574 0000F640  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000F578 0000F644  81 84 00 18 */	lwz r12, 0x18(r4)
/* 0000F57C 0000F648  7D 89 03 A6 */	mtctr r12
/* 0000F580 0000F64C  4E 80 04 21 */	bctrl
/* 0000F584 0000F650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000F588 0000F654  7C 08 03 A6 */	mtlr r0
/* 0000F58C 0000F658  38 21 00 10 */	addi r1, r1, 0x10
/* 0000F590 0000F65C  4E 80 00 20 */	blr
.endfn evt_goryuugijo_disp_func

# 0x0000AD68..0x0000AD70 | size: 0x8
.rodata
.balign 8

# .rodata:0x0 | 0xAD68 | size: 0x4
.obj float_1000_gor_0001e868, local
	.float 1000
.endobj float_1000_gor_0001e868

# .rodata:0x4 | 0xAD6C | size: 0x4
.obj gap_03_0000AD6C_rodata, global
.hidden gap_03_0000AD6C_rodata
	.4byte 0x00000000
.endobj gap_03_0000AD6C_rodata

# 0x00045980..0x000459E0 | size: 0x60
.data
.balign 8

# .data:0x0 | 0x45980 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x45988 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4598C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x45990 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x45994 | size: 0x4
.obj gap_04_00045994_data, global
.hidden gap_04_00045994_data
	.4byte 0x00000000
.endobj gap_04_00045994_data

# .data:0x18 | 0x45998 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x459A0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x459A4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x459A8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x459B0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x459B4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x459B8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x459BC | size: 0x4
.obj gap_04_000459BC_data, global
.hidden gap_04_000459BC_data
	.4byte 0x00000000
.endobj gap_04_000459BC_data

# .data:0x40 | 0x459C0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x459C8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x459CC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x459D0 | size: 0x10
.obj main_evt, local
	.4byte 0x0001005B
	.4byte evt_goryuugijo_main_func
	.4byte 0x00000002
	.4byte 0x00000001
.endobj main_evt
