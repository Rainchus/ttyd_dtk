.include "macros.inc"
.file "unit_phantom.o"

# 0x0001111C..0x000115EC | size: 0x4D0
.text
.balign 4

# .text:0x0 | 0x1111C | size: 0x21C
.fn eff_all_fire, local
/* 0001111C 000111E8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 00011120 000111EC  7C 08 02 A6 */	mflr r0
/* 00011124 000111F0  90 01 00 74 */	stw r0, 0x74(r1)
/* 00011128 000111F4  BF 81 00 60 */	stmw r28, 0x60(r1)
/* 0001112C 000111F8  7C 9E 23 78 */	mr r30, r4
/* 00011130 000111FC  7C 7D 1B 78 */	mr r29, r3
/* 00011134 00011200  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00011138 00011204  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 0001113C 00011208  4B FE F0 01 */	bl evtGetValue
/* 00011140 0001120C  7C 64 1B 78 */	mr r4, r3
/* 00011144 00011210  7F A3 EB 78 */	mr r3, r29
/* 00011148 00011214  4B FE EF F5 */	bl BattleTransID
/* 0001114C 00011218  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 00011150 0001121C  7C 7C 1B 78 */	mr r28, r3
/* 00011154 00011220  7F A3 EB 78 */	mr r3, r29
/* 00011158 00011224  4B FE EF E5 */	bl evtGetValue
/* 0001115C 00011228  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00011160 0001122C  7C 7F 1B 78 */	mr r31, r3
/* 00011164 00011230  38 64 00 00 */	addi r3, r4, _battleWorkPointer@l
/* 00011168 00011234  7F 84 E3 78 */	mr r4, r28
/* 0001116C 00011238  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00011170 0001123C  4B FE EF CD */	bl BattleGetUnitPtr
/* 00011174 00011240  3C 80 00 00 */	lis r4, dat_las_0001a384@ha
/* 00011178 00011244  38 00 00 05 */	li r0, 0x5
/* 0001117C 00011248  38 84 00 00 */	addi r4, r4, dat_las_0001a384@l
/* 00011180 0001124C  7C 7D 1B 78 */	mr r29, r3
/* 00011184 00011250  38 A1 00 1C */	addi r5, r1, 0x1c
/* 00011188 00011254  38 84 FF FC */	subi r4, r4, 0x4
/* 0001118C 00011258  7C 09 03 A6 */	mtctr r0
.L_00011190:
/* 00011190 0001125C  80 64 00 04 */	lwz r3, 0x4(r4)
/* 00011194 00011260  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 00011198 00011264  90 65 00 04 */	stw r3, 0x4(r5)
/* 0001119C 00011268  94 05 00 08 */	stwu r0, 0x8(r5)
/* 000111A0 0001126C  42 00 FF F0 */	bdnz .L_00011190
/* 000111A4 00011270  2C 1E 00 00 */	cmpwi r30, 0x0
/* 000111A8 00011274  41 82 00 70 */	beq .L_00011218
/* 000111AC 00011278  3C 60 00 00 */	lis r3, zero_las_0001a3d8@ha
/* 000111B0 0001127C  3C 80 00 00 */	lis r4, float_neg1000_las_0001a3dc@ha
/* 000111B4 00011280  38 A3 00 00 */	addi r5, r3, zero_las_0001a3d8@l
/* 000111B8 00011284  C0 44 00 00 */	lfs f2, float_neg1000_las_0001a3dc@l(r4)
/* 000111BC 00011288  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000111C0 0001128C  3C 60 00 00 */	lis r3, float_1_las_0001a3e0@ha
/* 000111C4 00011290  C0 83 00 00 */	lfs f4, float_1_las_0001a3e0@l(r3)
/* 000111C8 00011294  38 60 00 07 */	li r3, 0x7
/* 000111CC 00011298  FC 60 08 90 */	fmr f3, f1
/* 000111D0 0001129C  38 80 00 78 */	li r4, 0x78
/* 000111D4 000112A0  4B FE EF 69 */	bl effFireEntry
/* 000111D8 000112A4  3C C0 00 00 */	lis r6, eff2@ha
/* 000111DC 000112A8  3C A0 00 00 */	lis r5, float_2_las_0001a3e4@ha
/* 000111E0 000112AC  57 E0 10 3A */	slwi r0, r31, 2
/* 000111E4 000112B0  C0 05 00 00 */	lfs f0, float_2_las_0001a3e4@l(r5)
/* 000111E8 000112B4  38 C6 00 00 */	addi r6, r6, eff2@l
/* 000111EC 000112B8  38 81 00 20 */	addi r4, r1, 0x20
/* 000111F0 000112BC  7C 66 01 2E */	stwx r3, r6, r0
/* 000111F4 000112C0  7C 66 00 2E */	lwzx r3, r6, r0
/* 000111F8 000112C4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 000111FC 000112C8  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 00011200 000112CC  7C 66 00 2E */	lwzx r3, r6, r0
/* 00011204 000112D0  C0 3D 01 14 */	lfs f1, 0x114(r29)
/* 00011208 000112D4  7C 04 04 2E */	lfsx f0, r4, r0
/* 0001120C 000112D8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00011210 000112DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 00011214 000112E0  D0 03 00 7C */	stfs f0, 0x7c(r3)
.L_00011218:
/* 00011218 000112E4  3C 60 00 00 */	lis r3, eff2@ha
/* 0001121C 000112E8  57 FE 10 3A */	slwi r30, r31, 2
/* 00011220 000112EC  38 63 00 00 */	addi r3, r3, eff2@l
/* 00011224 000112F0  7C 63 F0 2E */	lwzx r3, r3, r30
/* 00011228 000112F4  83 83 00 0C */	lwz r28, 0xc(r3)
/* 0001122C 000112F8  28 1C 00 00 */	cmplwi r28, 0x0
/* 00011230 000112FC  41 82 00 F0 */	beq .L_00011320
/* 00011234 00011300  7F A3 EB 78 */	mr r3, r29
/* 00011238 00011304  38 81 00 10 */	addi r4, r1, 0x10
/* 0001123C 00011308  38 A1 00 0C */	addi r5, r1, 0xc
/* 00011240 0001130C  38 C1 00 08 */	addi r6, r1, 0x8
/* 00011244 00011310  4B FE EE F9 */	bl BtlUnit_GetPos
/* 00011248 00011314  88 7D 01 89 */	lbz r3, 0x189(r29)
/* 0001124C 00011318  3C A0 43 30 */	lis r5, 0x4330
/* 00011250 0001131C  3C 80 00 00 */	lis r4, double_to_int_las_0001a3f8@ha
/* 00011254 00011320  38 1F 00 01 */	addi r0, r31, 0x1
/* 00011258 00011324  7C 63 07 74 */	extsb r3, r3
/* 0001125C 00011328  3C E0 00 00 */	lis r7, float_24_las_0001a3e8@ha
/* 00011260 0001132C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00011264 00011330  38 C4 00 00 */	addi r6, r4, double_to_int_las_0001a3f8@l
/* 00011268 00011334  90 61 00 4C */	stw r3, 0x4c(r1)
/* 0001126C 00011338  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00011270 0001133C  3C 60 00 00 */	lis r3, float_15_las_0001a3ec@ha
/* 00011274 00011340  C8 A6 00 00 */	lfd f5, 0x0(r6)
/* 00011278 00011344  90 A1 00 48 */	stw r5, 0x48(r1)
/* 0001127C 00011348  38 83 00 00 */	addi r4, r3, float_15_las_0001a3ec@l
/* 00011280 0001134C  3C 60 00 00 */	lis r3, vec3_las_0001a3ac@ha
/* 00011284 00011350  C0 87 00 00 */	lfs f4, float_24_las_0001a3e8@l(r7)
/* 00011288 00011354  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 0001128C 00011358  39 03 00 00 */	addi r8, r3, vec3_las_0001a3ac@l
/* 00011290 0001135C  90 01 00 54 */	stw r0, 0x54(r1)
/* 00011294 00011360  3C 60 00 00 */	lis r3, float_2_las_0001a3e4@ha
/* 00011298 00011364  EC 60 28 28 */	fsubs f3, f0, f5
/* 0001129C 00011368  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 000112A0 0001136C  90 A1 00 50 */	stw r5, 0x50(r1)
/* 000112A4 00011370  38 C3 00 00 */	addi r6, r3, float_2_las_0001a3e4@l
/* 000112A8 00011374  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 000112AC 00011378  38 A1 00 20 */	addi r5, r1, 0x20
/* 000112B0 0001137C  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 000112B4 00011380  EC 01 00 28 */	fsubs f0, f1, f0
/* 000112B8 00011384  80 08 00 04 */	lwz r0, 0x4(r8)
/* 000112BC 00011388  EC 84 00 F2 */	fmuls f4, f4, f3
/* 000112C0 0001138C  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 000112C4 00011390  3C 60 00 00 */	lis r3, float_10_las_0001a3f0@ha
/* 000112C8 00011394  80 88 00 08 */	lwz r4, 0x8(r8)
/* 000112CC 00011398  EC 62 28 28 */	fsubs f3, f2, f5
/* 000112D0 0001139C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 000112D4 000113A0  7C 25 F4 2E */	lfsx f1, r5, r30
/* 000112D8 000113A4  90 E1 00 14 */	stw r7, 0x14(r1)
/* 000112DC 000113A8  EC 64 10 FA */	fmadds f3, f4, f3, f2
/* 000112E0 000113AC  C0 46 00 00 */	lfs f2, 0x0(r6)
/* 000112E4 000113B0  90 01 00 18 */	stw r0, 0x18(r1)
/* 000112E8 000113B4  EC 42 00 7C */	fnmsubs f2, f2, f1, f0
/* 000112EC 000113B8  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 000112F0 000113BC  C0 03 00 00 */	lfs f0, float_10_las_0001a3f0@l(r3)
/* 000112F4 000113C0  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 000112F8 000113C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 000112FC 000113C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00011300 000113CC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 00011304 000113D0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 00011308 000113D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 0001130C 000113D8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 00011310 000113DC  90 1C 00 04 */	stw r0, 0x4(r28)
/* 00011314 000113E0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 00011318 000113E4  90 7C 00 08 */	stw r3, 0x8(r28)
/* 0001131C 000113E8  90 1C 00 0C */	stw r0, 0xc(r28)
.L_00011320:
/* 00011320 000113EC  BB 81 00 60 */	lmw r28, 0x60(r1)
/* 00011324 000113F0  38 60 00 00 */	li r3, 0x0
/* 00011328 000113F4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 0001132C 000113F8  7C 08 03 A6 */	mtlr r0
/* 00011330 000113FC  38 21 00 70 */	addi r1, r1, 0x70
/* 00011334 00011400  4E 80 00 20 */	blr
.endfn eff_all_fire

# .text:0x21C | 0x11338 | size: 0x1A0
.fn eff_fire, local
/* 00011338 00011404  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0001133C 00011408  7C 08 02 A6 */	mflr r0
/* 00011340 0001140C  90 01 00 34 */	stw r0, 0x34(r1)
/* 00011344 00011410  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00011348 00011414  7C 9D 23 78 */	mr r29, r4
/* 0001134C 00011418  7C 7E 1B 78 */	mr r30, r3
/* 00011350 0001141C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00011354 00011420  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00011358 00011424  4B FE ED E5 */	bl evtGetValue
/* 0001135C 00011428  7C 64 1B 78 */	mr r4, r3
/* 00011360 0001142C  7F C3 F3 78 */	mr r3, r30
/* 00011364 00011430  4B FE ED D9 */	bl BattleTransID
/* 00011368 00011434  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001136C 00011438  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00011370 0001143C  7C 64 1B 78 */	mr r4, r3
/* 00011374 00011440  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00011378 00011444  4B FE ED C5 */	bl BattleGetUnitPtr
/* 0001137C 00011448  7C 7F 1B 78 */	mr r31, r3
/* 00011380 0001144C  38 80 00 02 */	li r4, 0x2
/* 00011384 00011450  4B FE ED B9 */	bl BtlUnit_GetPartsPtr
/* 00011388 00011454  2C 1D 00 00 */	cmpwi r29, 0x0
/* 0001138C 00011458  7C 7E 1B 78 */	mr r30, r3
/* 00011390 0001145C  41 82 00 54 */	beq .L_000113E4
/* 00011394 00011460  3C 60 00 00 */	lis r3, zero_las_0001a3d8@ha
/* 00011398 00011464  3C 80 00 00 */	lis r4, float_neg1000_las_0001a3dc@ha
/* 0001139C 00011468  38 A3 00 00 */	addi r5, r3, zero_las_0001a3d8@l
/* 000113A0 0001146C  C0 44 00 00 */	lfs f2, float_neg1000_las_0001a3dc@l(r4)
/* 000113A4 00011470  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000113A8 00011474  3C 60 00 00 */	lis r3, float_1_las_0001a3e0@ha
/* 000113AC 00011478  C0 83 00 00 */	lfs f4, float_1_las_0001a3e0@l(r3)
/* 000113B0 0001147C  38 60 00 07 */	li r3, 0x7
/* 000113B4 00011480  FC 60 08 90 */	fmr f3, f1
/* 000113B8 00011484  38 80 00 6A */	li r4, 0x6a
/* 000113BC 00011488  4B FE ED 81 */	bl effFireEntry
/* 000113C0 0001148C  3C A0 00 00 */	lis r5, eff@ha
/* 000113C4 00011490  94 65 00 00 */	stwu r3, eff@l(r5)
/* 000113C8 00011494  3C 80 00 00 */	lis r4, zero_las_0001a3d8@ha
/* 000113CC 00011498  C0 04 00 00 */	lfs f0, zero_las_0001a3d8@l(r4)
/* 000113D0 0001149C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 000113D4 000114A0  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 000113D8 000114A4  80 65 00 00 */	lwz r3, 0x0(r5)
/* 000113DC 000114A8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 000113E0 000114AC  D0 03 00 7C */	stfs f0, 0x7c(r3)
.L_000113E4:
/* 000113E4 000114B0  3C 60 00 00 */	lis r3, eff@ha
/* 000113E8 000114B4  38 63 00 00 */	addi r3, r3, eff@l
/* 000113EC 000114B8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000113F0 000114BC  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 000113F4 000114C0  28 1D 00 00 */	cmplwi r29, 0x0
/* 000113F8 000114C4  41 82 00 C8 */	beq .L_000114C0
/* 000113FC 000114C8  7F C3 F3 78 */	mr r3, r30
/* 00011400 000114CC  38 81 00 10 */	addi r4, r1, 0x10
/* 00011404 000114D0  38 A1 00 0C */	addi r5, r1, 0xc
/* 00011408 000114D4  38 C1 00 08 */	addi r6, r1, 0x8
/* 0001140C 000114D8  4B FE ED 31 */	bl BtlUnit_GetPartsPos
/* 00011410 000114DC  3C 80 00 00 */	lis r4, vec3_las_0001a338@ha
/* 00011414 000114E0  3C 60 00 00 */	lis r3, float_0p1_las_0001a400@ha
/* 00011418 000114E4  38 A4 00 00 */	addi r5, r4, vec3_las_0001a338@l
/* 0001141C 000114E8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00011420 000114EC  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00011424 000114F0  80 85 00 04 */	lwz r4, 0x4(r5)
/* 00011428 000114F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 0001142C 000114F8  80 05 00 08 */	lwz r0, 0x8(r5)
/* 00011430 000114FC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 00011434 00011500  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00011438 00011504  90 81 00 18 */	stw r4, 0x18(r1)
/* 0001143C 00011508  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00011440 0001150C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 00011444 00011510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00011448 00011514  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 0001144C 00011518  C0 43 00 00 */	lfs f2, float_0p1_las_0001a400@l(r3)
/* 00011450 0001151C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 00011454 00011520  80 61 00 18 */	lwz r3, 0x18(r1)
/* 00011458 00011524  90 1D 00 04 */	stw r0, 0x4(r29)
/* 0001145C 00011528  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 00011460 0001152C  90 7D 00 08 */	stw r3, 0x8(r29)
/* 00011464 00011530  90 1D 00 0C */	stw r0, 0xc(r29)
/* 00011468 00011534  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 0001146C 00011538  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 00011470 0001153C  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 00011474 00011540  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 00011478 00011544  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 0001147C 00011548  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 00011480 0001154C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 00011484 00011550  4C 41 13 82 */	cror eq, gt, eq
/* 00011488 00011554  40 82 00 08 */	bne .L_00011490
/* 0001148C 00011558  D0 3D 00 78 */	stfs f1, 0x78(r29)
.L_00011490:
/* 00011490 0001155C  3C 60 00 00 */	lis r3, float_0p1_las_0001a400@ha
/* 00011494 00011560  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 00011498 00011564  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 0001149C 00011568  C0 43 00 00 */	lfs f2, float_0p1_las_0001a400@l(r3)
/* 000114A0 0001156C  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 000114A4 00011570  D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 000114A8 00011574  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 000114AC 00011578  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 000114B0 0001157C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 000114B4 00011580  4C 41 13 82 */	cror eq, gt, eq
/* 000114B8 00011584  40 82 00 08 */	bne .L_000114C0
/* 000114BC 00011588  D0 3D 00 7C */	stfs f1, 0x7c(r29)
.L_000114C0:
/* 000114C0 0001158C  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 000114C4 00011590  38 60 00 00 */	li r3, 0x0
/* 000114C8 00011594  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000114CC 00011598  7C 08 03 A6 */	mtlr r0
/* 000114D0 0001159C  38 21 00 30 */	addi r1, r1, 0x30
/* 000114D4 000115A0  4E 80 00 20 */	blr
.endfn eff_fire

# .text:0x3BC | 0x114D8 | size: 0x114
.fn bubble_copy_status, local
/* 000114D8 000115A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000114DC 000115A8  7C 08 02 A6 */	mflr r0
/* 000114E0 000115AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 000114E4 000115B0  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 000114E8 000115B4  7C 7D 1B 78 */	mr r29, r3
/* 000114EC 000115B8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000114F0 000115BC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000114F4 000115C0  4B FE EC 49 */	bl evtGetValue
/* 000114F8 000115C4  7C 64 1B 78 */	mr r4, r3
/* 000114FC 000115C8  7F A3 EB 78 */	mr r3, r29
/* 00011500 000115CC  4B FE EC 3D */	bl BattleTransID
/* 00011504 000115D0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00011508 000115D4  7C 7F 1B 78 */	mr r31, r3
/* 0001150C 000115D8  7F A3 EB 78 */	mr r3, r29
/* 00011510 000115DC  4B FE EC 2D */	bl evtGetValue
/* 00011514 000115E0  7C 64 1B 78 */	mr r4, r3
/* 00011518 000115E4  7F A3 EB 78 */	mr r3, r29
/* 0001151C 000115E8  4B FE EC 21 */	bl BattleTransID
/* 00011520 000115EC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00011524 000115F0  7C 7E 1B 78 */	mr r30, r3
/* 00011528 000115F4  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0001152C 000115F8  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00011530 000115FC  7F E4 FB 78 */	mr r4, r31
/* 00011534 00011600  7C 1D 03 78 */	mr r29, r0
/* 00011538 00011604  7C 03 03 78 */	mr r3, r0
/* 0001153C 00011608  4B FE EC 01 */	bl BattleGetUnitPtr
/* 00011540 0001160C  7C 7F 1B 78 */	mr r31, r3
/* 00011544 00011610  7F A3 EB 78 */	mr r3, r29
/* 00011548 00011614  7F C4 F3 78 */	mr r4, r30
/* 0001154C 00011618  4B FE EB F1 */	bl BattleGetUnitPtr
/* 00011550 0001161C  A8 1F 01 0C */	lha r0, 0x10c(r31)
/* 00011554 00011620  B0 03 01 0C */	sth r0, 0x10c(r3)
/* 00011558 00011624  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 0001155C 00011628  A8 83 01 08 */	lha r4, 0x108(r3)
/* 00011560 0001162C  7C 00 20 00 */	cmpw r0, r4
/* 00011564 00011630  40 81 00 08 */	ble .L_0001156C
/* 00011568 00011634  B0 83 01 0C */	sth r4, 0x10c(r3)
.L_0001156C:
/* 0001156C 00011638  88 BF 01 23 */	lbz r5, 0x123(r31)
/* 00011570 0001163C  3C 00 43 30 */	lis r0, 0x4330
/* 00011574 00011640  3C 80 00 00 */	lis r4, double_to_int_las_0001a3f8@ha
/* 00011578 00011644  90 01 00 08 */	stw r0, 0x8(r1)
/* 0001157C 00011648  C8 44 00 00 */	lfd f2, double_to_int_las_0001a3f8@l(r4)
/* 00011580 0001164C  98 A3 01 23 */	stb r5, 0x123(r3)
/* 00011584 00011650  88 9F 01 24 */	lbz r4, 0x124(r31)
/* 00011588 00011654  90 01 00 10 */	stw r0, 0x10(r1)
/* 0001158C 00011658  98 83 01 24 */	stb r4, 0x124(r3)
/* 00011590 0001165C  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 00011594 00011660  90 03 02 08 */	stw r0, 0x208(r3)
/* 00011598 00011664  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 0001159C 00011668  90 03 02 0C */	stw r0, 0x20c(r3)
/* 000115A0 0001166C  A8 83 01 0C */	lha r4, 0x10c(r3)
/* 000115A4 00011670  A8 03 01 08 */	lha r0, 0x108(r3)
/* 000115A8 00011674  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 000115AC 00011678  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 000115B0 0001167C  90 81 00 0C */	stw r4, 0xc(r1)
/* 000115B4 00011680  90 01 00 14 */	stw r0, 0x14(r1)
/* 000115B8 00011684  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 000115BC 00011688  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 000115C0 0001168C  EC 21 10 28 */	fsubs f1, f1, f2
/* 000115C4 00011690  EC 00 10 28 */	fsubs f0, f0, f2
/* 000115C8 00011694  EC 01 00 24 */	fdivs f0, f1, f0
/* 000115CC 00011698  D0 03 02 14 */	stfs f0, 0x214(r3)
/* 000115D0 0001169C  D0 03 02 10 */	stfs f0, 0x210(r3)
/* 000115D4 000116A0  38 60 00 02 */	li r3, 0x2
/* 000115D8 000116A4  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 000115DC 000116A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000115E0 000116AC  7C 08 03 A6 */	mtlr r0
/* 000115E4 000116B0  38 21 00 30 */	addi r1, r1, 0x30
/* 000115E8 000116B4  4E 80 00 20 */	blr
.endfn bubble_copy_status

# 0x000087B0..0x000089A0 | size: 0x1F0
.rodata
.balign 8

# .rodata:0x0 | 0x87B0 | size: 0xF
.obj str_btl_un_phantom_las_0001a218, local
	.string "btl_un_phantom"
.endobj str_btl_un_phantom_las_0001a218

# .rodata:0xF | 0x87BF | size: 0x1
.obj gap_03_000087BF_rodata, global
.hidden gap_03_000087BF_rodata
	.byte 0x00
.endobj gap_03_000087BF_rodata

# .rodata:0x10 | 0x87C0 | size: 0x18
.obj str_SFX_ENM_BUBBLE_DAMAG_las_0001a228, local
	.string "SFX_ENM_BUBBLE_DAMAGED1"
.endobj str_SFX_ENM_BUBBLE_DAMAG_las_0001a228

# .rodata:0x28 | 0x87D8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_las_0001a240, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_las_0001a240

# .rodata:0x3D | 0x87ED | size: 0x3
.obj gap_03_000087ED_rodata, global
.hidden gap_03_000087ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000087ED_rodata

# .rodata:0x40 | 0x87F0 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_las_0001a258, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_las_0001a258

# .rodata:0x54 | 0x8804 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_las_0001a26c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_las_0001a26c

# .rodata:0x6D | 0x881D | size: 0x3
.obj gap_03_0000881D_rodata, global
.hidden gap_03_0000881D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000881D_rodata

# .rodata:0x70 | 0x8820 | size: 0x4
.obj str_N_1_las_0001a288, local
	.string "N_1"
.endobj str_N_1_las_0001a288

# .rodata:0x74 | 0x8824 | size: 0x4
.obj str_Y_1_las_0001a28c, local
	.string "Y_1"
.endobj str_Y_1_las_0001a28c

# .rodata:0x78 | 0x8828 | size: 0x4
.obj str_K_1_las_0001a290, local
	.string "K_1"
.endobj str_K_1_las_0001a290

# .rodata:0x7C | 0x882C | size: 0x4
.obj str_X_1_las_0001a294, local
	.string "X_1"
.endobj str_X_1_las_0001a294

# .rodata:0x80 | 0x8830 | size: 0x4
.obj str_S_1_las_0001a298, local
	.string "S_1"
.endobj str_S_1_las_0001a298

# .rodata:0x84 | 0x8834 | size: 0x4
.obj str_Q_1_las_0001a29c, local
	.string "Q_1"
.endobj str_Q_1_las_0001a29c

# .rodata:0x88 | 0x8838 | size: 0x5
.obj str_A_2B_las_0001a2a0, local
	.string "A_2B"
.endobj str_A_2B_las_0001a2a0

# .rodata:0x8D | 0x883D | size: 0x3
.obj gap_03_0000883D_rodata, global
.hidden gap_03_0000883D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000883D_rodata

# .rodata:0x90 | 0x8840 | size: 0x4
.obj str_D_1_las_0001a2a8, local
	.string "D_1"
.endobj str_D_1_las_0001a2a8

# .rodata:0x94 | 0x8844 | size: 0x4
.obj str_A_1_las_0001a2ac, local
	.string "A_1"
.endobj str_A_1_las_0001a2ac

# .rodata:0x98 | 0x8848 | size: 0x4
.obj str_R_1_las_0001a2b0, local
	.string "R_1"
.endobj str_R_1_las_0001a2b0

# .rodata:0x9C | 0x884C | size: 0x4
.obj str_W_1_las_0001a2b4, local
	.string "W_1"
.endobj str_W_1_las_0001a2b4

# .rodata:0xA0 | 0x8850 | size: 0x4
.obj str_T_1_las_0001a2b8, local
	.string "T_1"
.endobj str_T_1_las_0001a2b8

# .rodata:0xA4 | 0x8854 | size: 0xA
.obj str_c_phantom_las_0001a2bc, local
	.string "c_phantom"
.endobj str_c_phantom_las_0001a2bc

# .rodata:0xAE | 0x885E | size: 0x2
.obj gap_03_0000885E_rodata, global
.hidden gap_03_0000885E_rodata
	.2byte 0x0000
.endobj gap_03_0000885E_rodata

# .rodata:0xB0 | 0x8860 | size: 0x15
.obj str_SFX_ENM_BUBBLE_FIRE1_las_0001a2c8, local
	.string "SFX_ENM_BUBBLE_FIRE1"
.endobj str_SFX_ENM_BUBBLE_FIRE1_las_0001a2c8

# .rodata:0xC5 | 0x8875 | size: 0x3
.obj gap_03_00008875_rodata, global
.hidden gap_03_00008875_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008875_rodata

# .rodata:0xC8 | 0x8878 | size: 0x16
.obj str_SFX_ENM_BUBBLE_SPLIT_las_0001a2e0, local
	.string "SFX_ENM_BUBBLE_SPLIT1"
.endobj str_SFX_ENM_BUBBLE_SPLIT_las_0001a2e0

# .rodata:0xDE | 0x888E | size: 0x2
.obj gap_03_0000888E_rodata, global
.hidden gap_03_0000888E_rodata
	.2byte 0x0000
.endobj gap_03_0000888E_rodata

# .rodata:0xE0 | 0x8890 | size: 0x15
.obj str_SFX_ENM_BUBBLE_MOVE1_las_0001a2f8, local
	.string "SFX_ENM_BUBBLE_MOVE1"
.endobj str_SFX_ENM_BUBBLE_MOVE1_las_0001a2f8

# .rodata:0xF5 | 0x88A5 | size: 0x3
.obj gap_03_000088A5_rodata, global
.hidden gap_03_000088A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000088A5_rodata

# .rodata:0xF8 | 0x88A8 | size: 0x5
.obj str_A_1A_las_0001a310, local
	.string "A_1A"
.endobj str_A_1A_las_0001a310

# .rodata:0xFD | 0x88AD | size: 0x3
.obj gap_03_000088AD_rodata, global
.hidden gap_03_000088AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000088AD_rodata

# .rodata:0x100 | 0x88B0 | size: 0x5
.obj str_A_1B_las_0001a318, local
	.string "A_1B"
.endobj str_A_1B_las_0001a318

# .rodata:0x105 | 0x88B5 | size: 0x3
.obj gap_03_000088B5_rodata, global
.hidden gap_03_000088B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000088B5_rodata

# .rodata:0x108 | 0x88B8 | size: 0x15
.obj str_SFX_ENM_BUBBLE_MOVE2_las_0001a320, local
	.string "SFX_ENM_BUBBLE_MOVE2"
.endobj str_SFX_ENM_BUBBLE_MOVE2_las_0001a320

# .rodata:0x11D | 0x88CD | size: 0x3
.obj gap_03_000088CD_rodata, global
.hidden gap_03_000088CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000088CD_rodata

# .rodata:0x120 | 0x88D0 | size: 0xC
.obj vec3_las_0001a338, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_las_0001a338

# .rodata:0x12C | 0x88DC | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_las_0001a344, local
	.string "SFX_ENM_BUBBLE_ATTACK2"
.endobj str_SFX_ENM_BUBBLE_ATTAC_las_0001a344

# .rodata:0x143 | 0x88F3 | size: 0x1
.obj gap_03_000088F3_rodata, global
.hidden gap_03_000088F3_rodata
	.byte 0x00
.endobj gap_03_000088F3_rodata

# .rodata:0x144 | 0x88F4 | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_las_0001a35c, local
	.string "SFX_ENM_BUBBLE_ATTACK3"
.endobj str_SFX_ENM_BUBBLE_ATTAC_las_0001a35c

# .rodata:0x15B | 0x890B | size: 0x1
.obj gap_03_0000890B_rodata, global
.hidden gap_03_0000890B_rodata
	.byte 0x00
.endobj gap_03_0000890B_rodata

# .rodata:0x15C | 0x890C | size: 0x1
.obj zero_las_0001a374, local
	.byte 0x00
.endobj zero_las_0001a374

# .rodata:0x15D | 0x890D | size: 0x3
.obj gap_03_0000890D_rodata, global
.hidden gap_03_0000890D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000890D_rodata

# .rodata:0x160 | 0x8910 | size: 0xC
.obj str_kemuri_test_las_0001a378, local
	.string "kemuri_test"
.endobj str_kemuri_test_las_0001a378

# .rodata:0x16C | 0x891C | size: 0x28
.obj dat_las_0001a384, local
	.4byte 0x3F800000
	.4byte 0x3FA00000
	.4byte 0x3FC00000
	.4byte 0x3FE00000
	.4byte 0x40000000
	.4byte 0x40100000
	.4byte 0x40000000
	.4byte 0x3FE00000
	.4byte 0x3FC00000
	.4byte 0x3FA00000
.endobj dat_las_0001a384

# .rodata:0x194 | 0x8944 | size: 0xC
.obj vec3_las_0001a3ac, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_las_0001a3ac

# .rodata:0x1A0 | 0x8950 | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_las_0001a3b8, local
	.string "SFX_ENM_BUBBLE_ATTACK4"
.endobj str_SFX_ENM_BUBBLE_ATTAC_las_0001a3b8

# .rodata:0x1B7 | 0x8967 | size: 0x1
.obj gap_03_00008967_rodata, global
.hidden gap_03_00008967_rodata
	.byte 0x00
.endobj gap_03_00008967_rodata

# .rodata:0x1B8 | 0x8968 | size: 0x5
.obj str_A_2A_las_0001a3d0, local
	.string "A_2A"
.endobj str_A_2A_las_0001a3d0
	.byte 0x00, 0x00, 0x00

# .rodata:0x1C0 | 0x8970 | size: 0x4
.obj zero_las_0001a3d8, local
	.float 0
.endobj zero_las_0001a3d8

# .rodata:0x1C4 | 0x8974 | size: 0x4
.obj float_neg1000_las_0001a3dc, local
	.float -1000
.endobj float_neg1000_las_0001a3dc

# .rodata:0x1C8 | 0x8978 | size: 0x4
.obj float_1_las_0001a3e0, local
	.float 1
.endobj float_1_las_0001a3e0

# .rodata:0x1CC | 0x897C | size: 0x4
.obj float_2_las_0001a3e4, local
	.float 2
.endobj float_2_las_0001a3e4

# .rodata:0x1D0 | 0x8980 | size: 0x4
.obj float_24_las_0001a3e8, local
	.float 24
.endobj float_24_las_0001a3e8

# .rodata:0x1D4 | 0x8984 | size: 0x4
.obj float_15_las_0001a3ec, local
	.float 15
.endobj float_15_las_0001a3ec

# .rodata:0x1D8 | 0x8988 | size: 0x4
.obj float_10_las_0001a3f0, local
	.float 10
.endobj float_10_las_0001a3f0
	.4byte 0x00000000

# .rodata:0x1E0 | 0x8990 | size: 0x8
.obj double_to_int_las_0001a3f8, local
	.double 4503601774854144
.endobj double_to_int_las_0001a3f8

# .rodata:0x1E8 | 0x8998 | size: 0x4
.obj float_0p1_las_0001a400, local
	.float 0.1
.endobj float_0p1_las_0001a400

# .rodata:0x1EC | 0x899C | size: 0x4
.obj gap_03_0000899C_rodata, global
.hidden gap_03_0000899C_rodata
	.4byte 0x00000000
.endobj gap_03_0000899C_rodata

# 0x00053F80..0x00055A18 | size: 0x1A98
.data
.balign 8

# .data:0x0 | 0x53F80 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x53F88 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x53F8C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x53F90 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x53F94 | size: 0x4
.obj gap_04_00053F94_data, global
.hidden gap_04_00053F94_data
	.4byte 0x00000000
.endobj gap_04_00053F94_data

# .data:0x18 | 0x53F98 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x53FA0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x53FA4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x53FA8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x53FB0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x53FB4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x53FB8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x53FBC | size: 0x4
.obj gap_04_00053FBC_data, global
.hidden gap_04_00053FBC_data
	.4byte 0x00000000
.endobj gap_04_00053FBC_data

# .data:0x40 | 0x53FC0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x53FC8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x53FCC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x53FD0 | size: 0xC4
.obj unit_phantom_16_data_53FD0, global
	.4byte 0x0000007C
	.4byte str_btl_un_phantom_las_0001a218
	.4byte 0x000A0000
	.4byte 0x01011E00
	.4byte 0x02460232
	.4byte 0x270F001A
	.4byte 0x00240008
	.4byte 0x00180000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x0000FFFD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x41BB3333
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x42100000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_BUBBLE_DAMAG_las_0001a228
	.4byte str_SFX_BTL_DAMAGE_FIRE1_las_0001a240
	.4byte str_SFX_BTL_DAMAGE_ICE1_las_0001a258
	.4byte str_SFX_BTL_DAMAGE_BIRIB_las_0001a26c
	.4byte 0x00000004
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_phantom_16_data_53FD0

# .data:0x114 | 0x54094 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x54099 | size: 0x3
.obj gap_04_00054099_data, global
.hidden gap_04_00054099_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00054099_data

# .data:0x11C | 0x5409C | size: 0x5
.obj defence_attr, local
	.4byte 0x00030101
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x540A1 | size: 0x3
.obj gap_04_000540A1_data, global
.hidden gap_04_000540A1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000540A1_data

# .data:0x124 | 0x540A4 | size: 0x16
.obj regist, local
	.4byte 0x28506464
	.4byte 0x41640028
	.4byte 0x64506450
	.4byte 0x645A4128
	.4byte 0x50644164
	.2byte 0x645A
.endobj regist

# .data:0x13A | 0x540BA | size: 0x2
.obj gap_04_000540BA_data, global
.hidden gap_04_000540BA_data
	.2byte 0x0000
.endobj gap_04_000540BA_data

# .data:0x13C | 0x540BC | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_las_0001a288
	.4byte 0x00000002
	.4byte str_Y_1_las_0001a28c
	.4byte 0x00000009
	.4byte str_Y_1_las_0001a28c
	.4byte 0x00000005
	.4byte str_K_1_las_0001a290
	.4byte 0x00000004
	.4byte str_X_1_las_0001a294
	.4byte 0x00000003
	.4byte str_X_1_las_0001a294
	.4byte 0x0000001C
	.4byte str_S_1_las_0001a298
	.4byte 0x0000001D
	.4byte str_Q_1_las_0001a29c
	.4byte 0x0000001E
	.4byte str_Q_1_las_0001a29c
	.4byte 0x0000001F
	.4byte str_A_2B_las_0001a2a0
	.4byte 0x00000027
	.4byte str_D_1_las_0001a2a8
	.4byte 0x00000032
	.4byte str_A_1_las_0001a2ac
	.4byte 0x0000002A
	.4byte str_R_1_las_0001a2b0
	.4byte 0x00000028
	.4byte str_W_1_las_0001a2b4
	.4byte 0x00000038
	.4byte str_X_1_las_0001a294
	.4byte 0x00000039
	.4byte str_X_1_las_0001a294
	.4byte 0x00000041
	.4byte str_T_1_las_0001a2b8
	.4byte 0x00000045
	.4byte str_S_1_las_0001a298
.endobj pose_table

# .data:0x1CC | 0x5414C | size: 0x20
.obj data_table, local
	.4byte 0x0000000B
	.4byte damage_fire_explosion_event
	.4byte 0x00000028
	.4byte avoid_fire_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1EC | 0x5416C | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_phantom_las_0001a218
	.4byte str_c_phantom_las_0001a2bc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000109
	.4byte 0x00000010
	.4byte pose_table
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte str_c_phantom_las_0001a2bc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F000F
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x284 | 0x54204 | size: 0xC0
.obj weapon_bubble_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000070
	.4byte 0x00002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03000000
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
.endobj weapon_bubble_attack

# .data:0x344 | 0x542C4 | size: 0xC0
.obj weapon_bubble_fire_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x000000C7
	.4byte 0x000007FF
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0x03000000
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
.endobj weapon_bubble_fire_attack

# .data:0x404 | 0x54384 | size: 0x30
.obj entry_bubble, local
	.4byte unit_phantom_16_data_53FD0
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
.endobj entry_bubble

# .data:0x434 | 0x543B4 | size: 0x9C
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
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x4D0 | 0x54450 | size: 0x28
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

# .data:0x4F8 | 0x54478 | size: 0x40
.obj avoid_fire_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_las_0001a2c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_las_0001a2a0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj avoid_fire_event

# .data:0x538 | 0x544B8 | size: 0x19C
.obj damage_fire_explosion_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_las_0001a2a0
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0xFE363C80
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
	.4byte friend_event
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000063
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
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x0000000A
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
	.4byte friend_event
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_fire_explosion_event

# .data:0x6D4 | 0x54654 | size: 0x18C
.obj friend_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_S_1_las_0001a298
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_bubble
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte bubble_copy_status
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_SPLIT_las_0001a2e0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFE363C8C
	.4byte 0x0000001E
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24AF280
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj friend_event

# .data:0x860 | 0x547E0 | size: 0xCC
.obj attack_event, local
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
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000046
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000046
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bubble_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bubble_fire_attack
	.4byte 0x0001005E
	.4byte fire_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x92C | 0x548AC | size: 0x670
.obj normal_attack_event, local
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000FA
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_las_0001a2f8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_las_0001a310
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000D
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x00010009
	.4byte 0x0000001E
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_las_0001a2c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_las_0001a318
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_las_0001a2c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_las_0001a318
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
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_las_0001a318
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE2_las_0001a320
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_las_0001a310
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
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
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000028
	.4byte 0x00000019
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_las_0001a298
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0xF9C | 0x54F1C | size: 0x5B4
.obj fire_attack_event, local
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_T_1_las_0001a2b8
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_las_0001a298
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_las_0001a344
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x02000000
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
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_fire
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
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
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C8A
	.4byte 0xF24A7D4C
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xF24A7CE6
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C8A
	.4byte 0xF24A7C19
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xF24A7C19
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_las_0001a35c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x02000000
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
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_las_0001a374
	.4byte str_kemuri_test_las_0001a378
	.4byte 0x00000010
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fire_attack_event

# .data:0x1550 | 0x554D0 | size: 0x28
.obj all_fire_attackEvent_sub, local
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte eff_all_fire
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x00000002
	.4byte 0x00000001
.endobj all_fire_attackEvent_sub

# .data:0x1578 | 0x554F8 | size: 0x504
.obj all_fire_attack_event, local
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
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
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
	.4byte str_A_1A_las_0001a310
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_las_0001a2f8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFD8
	.4byte 0xFE363C81
	.4byte 0xFFFFFFF1
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_las_0001a3b8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_las_0001a3d0
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_AddPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddPos
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0000006E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0001005C
	.4byte all_fire_attackEvent_sub
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_las_0001a344
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_las_0001a2a0
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
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
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010009
	.4byte 0x000000B4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_las_0001a310
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_las_0001a2f8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj all_fire_attack_event

# .data:0x1A7C | 0x559FC | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1A94 | 0x55A14 | size: 0x4
.obj gap_04_00055A14_data, global
.hidden gap_04_00055A14_data
	.4byte 0x00000000
.endobj gap_04_00055A14_data

# 0x00000300..0x00000354 | size: 0x54
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x300 | size: 0x28
.obj step, local
	.skip 0x28
.endobj step

# .bss:0x28 | 0x328 | size: 0x28
.obj eff2, local
	.skip 0x28
.endobj eff2

# .bss:0x50 | 0x350 | size: 0x4
.obj eff, local
	.skip 0x4
.endobj eff
