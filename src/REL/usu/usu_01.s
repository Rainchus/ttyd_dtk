.include "macros.inc"
.file "usu_01.o"

# 0x000011D8..0x00001940 | size: 0x768
.text
.balign 4

# .text:0x0 | 0x11D8 | size: 0x44
.fn mobj_ry, local
/* 000011D8 000012A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000011DC 000012A8  7C 08 02 A6 */	mflr r0
/* 000011E0 000012AC  3C 60 00 00 */	lis r3, str_mobj_box00_usu_00005bc0@ha
/* 000011E4 000012B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 000011E8 000012B4  38 63 00 00 */	addi r3, r3, str_mobj_box00_usu_00005bc0@l
/* 000011EC 000012B8  4B FF EE 15 */	bl mobjNameToPtr
/* 000011F0 000012BC  3C 80 00 00 */	lis r4, float_135_usu_0000644c@ha
/* 000011F4 000012C0  C0 04 00 00 */	lfs f0, float_135_usu_0000644c@l(r4)
/* 000011F8 000012C4  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 000011FC 000012C8  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00001200 000012CC  60 00 00 04 */	ori r0, r0, 0x4
/* 00001204 000012D0  90 03 00 00 */	stw r0, 0x0(r3)
/* 00001208 000012D4  38 60 00 02 */	li r3, 0x2
/* 0000120C 000012D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001210 000012DC  7C 08 03 A6 */	mtlr r0
/* 00001214 000012E0  38 21 00 10 */	addi r1, r1, 0x10
/* 00001218 000012E4  4E 80 00 20 */	blr
.endfn mobj_ry

# .text:0x44 | 0x121C | size: 0x34
.fn bgm_start_wait, local
/* 0000121C 000012E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001220 000012EC  7C 08 02 A6 */	mflr r0
/* 00001224 000012F0  38 60 00 01 */	li r3, 0x1
/* 00001228 000012F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000122C 000012F8  4B FF ED D5 */	bl psndBGMStartCheck
/* 00001230 000012FC  20 63 00 00 */	subfic r3, r3, 0x0
/* 00001234 00001300  38 00 00 02 */	li r0, 0x2
/* 00001238 00001304  7C 63 19 10 */	subfe r3, r3, r3
/* 0000123C 00001308  7C 03 18 38 */	and r3, r0, r3
/* 00001240 0000130C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001244 00001310  7C 08 03 A6 */	mtlr r0
/* 00001248 00001314  38 21 00 10 */	addi r1, r1, 0x10
/* 0000124C 00001318  4E 80 00 20 */	blr
.endfn bgm_start_wait

# .text:0x78 | 0x1250 | size: 0x44
.fn box_r, local
/* 00001250 0000131C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001254 00001320  7C 08 02 A6 */	mflr r0
/* 00001258 00001324  3C 60 00 00 */	lis r3, str_pera_box_usu_00005bb4@ha
/* 0000125C 00001328  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001260 0000132C  38 63 00 00 */	addi r3, r3, str_pera_box_usu_00005bb4@l
/* 00001264 00001330  4B FF ED 9D */	bl mobjNameToPtr
/* 00001268 00001334  3C 80 00 00 */	lis r4, float_135_usu_0000644c@ha
/* 0000126C 00001338  C0 04 00 00 */	lfs f0, float_135_usu_0000644c@l(r4)
/* 00001270 0000133C  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 00001274 00001340  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00001278 00001344  60 00 00 04 */	ori r0, r0, 0x4
/* 0000127C 00001348  90 03 00 00 */	stw r0, 0x0(r3)
/* 00001280 0000134C  38 60 00 02 */	li r3, 0x2
/* 00001284 00001350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001288 00001354  7C 08 03 A6 */	mtlr r0
/* 0000128C 00001358  38 21 00 10 */	addi r1, r1, 0x10
/* 00001290 0000135C  4E 80 00 20 */	blr
.endfn box_r

# .text:0xBC | 0x1294 | size: 0xB0
.fn majin_callback, local
/* 00001294 00001360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001298 00001364  7C 08 02 A6 */	mflr r0
/* 0000129C 00001368  3C 80 00 00 */	lis r4, str_pera_box_usu_00005bb4@ha
/* 000012A0 0000136C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000012A4 00001370  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000012A8 00001374  7C 7E 1B 78 */	mr r30, r3
/* 000012AC 00001378  38 64 00 00 */	addi r3, r4, str_pera_box_usu_00005bb4@l
/* 000012B0 0000137C  4B FF ED 51 */	bl mobjNameToPtr
/* 000012B4 00001380  2C 1E 00 00 */	cmpwi r30, 0x0
/* 000012B8 00001384  7C 7F 1B 78 */	mr r31, r3
/* 000012BC 00001388  40 82 00 1C */	bne .L_000012D8
/* 000012C0 0000138C  3C 80 00 00 */	lis r4, str_A_2_usu_00006360@ha
/* 000012C4 00001390  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 000012C8 00001394  38 84 00 00 */	addi r4, r4, str_A_2_usu_00006360@l
/* 000012CC 00001398  38 A0 00 01 */	li r5, 0x1
/* 000012D0 0000139C  4B FF ED 31 */	bl animPoseSetAnim
/* 000012D4 000013A0  48 00 00 5C */	b .L_00001330
.L_000012D8:
/* 000012D8 000013A4  2C 1E 00 05 */	cmpwi r30, 0x5
/* 000012DC 000013A8  40 82 00 38 */	bne .L_00001314
/* 000012E0 000013AC  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 000012E4 000013B0  4B FF ED 1D */	bl animPoseGetLoopTimes
/* 000012E8 000013B4  3C 60 00 00 */	lis r3, float_1_usu_00006450@ha
/* 000012EC 000013B8  C0 03 00 00 */	lfs f0, float_1_usu_00006450@l(r3)
/* 000012F0 000013BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000012F4 000013C0  4C 41 13 82 */	cror eq, gt, eq
/* 000012F8 000013C4  40 82 00 38 */	bne .L_00001330
/* 000012FC 000013C8  3C 80 00 00 */	lis r4, str_A_2_usu_00006360@ha
/* 00001300 000013CC  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 00001304 000013D0  38 84 00 00 */	addi r4, r4, str_A_2_usu_00006360@l
/* 00001308 000013D4  38 A0 00 01 */	li r5, 0x1
/* 0000130C 000013D8  4B FF EC F5 */	bl animPoseSetAnim
/* 00001310 000013DC  48 00 00 20 */	b .L_00001330
.L_00001314:
/* 00001314 000013E0  2C 1E 00 02 */	cmpwi r30, 0x2
/* 00001318 000013E4  40 82 00 18 */	bne .L_00001330
/* 0000131C 000013E8  3C 80 00 00 */	lis r4, str_S_1_usu_00006380@ha
/* 00001320 000013EC  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 00001324 000013F0  38 84 00 00 */	addi r4, r4, str_S_1_usu_00006380@l
/* 00001328 000013F4  38 A0 00 01 */	li r5, 0x1
/* 0000132C 000013F8  4B FF EC D5 */	bl animPoseSetAnim
.L_00001330:
/* 00001330 000013FC  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00001334 00001400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001338 00001404  7C 08 03 A6 */	mtlr r0
/* 0000133C 00001408  38 21 00 10 */	addi r1, r1, 0x10
/* 00001340 0000140C  4E 80 00 20 */	blr
.endfn majin_callback

# .text:0x16C | 0x1344 | size: 0x7C
.fn npc_process, local
/* 00001344 00001410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001348 00001414  7C 08 02 A6 */	mflr r0
/* 0000134C 00001418  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001350 0000141C  4B FF EC B1 */	bl npcGetWorkPtr
/* 00001354 00001420  3C 80 00 00 */	lis r4, float_neg1000_usu_00006454@ha
/* 00001358 00001424  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 0000135C 00001428  C0 04 00 00 */	lfs f0, float_neg1000_usu_00006454@l(r4)
/* 00001360 0000142C  38 C0 00 00 */	li r6, 0x0
/* 00001364 00001430  48 00 00 3C */	b .L_000013A0
.L_00001368:
/* 00001368 00001434  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0000136C 00001438  54 80 07 FF */	clrlwi. r0, r4, 31
/* 00001370 0000143C  41 82 00 28 */	beq .L_00001398
/* 00001374 00001440  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 00001378 00001444  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 0000137C 00001448  4C 40 13 82 */	cror eq, lt, eq
/* 00001380 0000144C  40 82 00 10 */	bne .L_00001390
/* 00001384 00001450  60 80 08 00 */	ori r0, r4, 0x800
/* 00001388 00001454  90 05 00 00 */	stw r0, 0x0(r5)
/* 0000138C 00001458  48 00 00 0C */	b .L_00001398
.L_00001390:
/* 00001390 0000145C  54 80 05 66 */	rlwinm r0, r4, 0, 21, 19
/* 00001394 00001460  90 05 00 00 */	stw r0, 0x0(r5)
.L_00001398:
/* 00001398 00001464  38 C6 00 01 */	addi r6, r6, 0x1
/* 0000139C 00001468  38 A5 03 40 */	addi r5, r5, 0x340
.L_000013A0:
/* 000013A0 0000146C  80 03 00 04 */	lwz r0, 0x4(r3)
/* 000013A4 00001470  7C 06 00 00 */	cmpw r6, r0
/* 000013A8 00001474  41 80 FF C0 */	blt .L_00001368
/* 000013AC 00001478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000013B0 0000147C  38 60 00 00 */	li r3, 0x0
/* 000013B4 00001480  7C 08 03 A6 */	mtlr r0
/* 000013B8 00001484  38 21 00 10 */	addi r1, r1, 0x10
/* 000013BC 00001488  4E 80 00 20 */	blr
.endfn npc_process

# .text:0x1E8 | 0x13C0 | size: 0x6C
.fn booboo_main, local
/* 000013C0 0000148C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000013C4 00001490  7C 08 02 A6 */	mflr r0
/* 000013C8 00001494  3C 60 00 00 */	lis r3, booboo_name@ha
/* 000013CC 00001498  90 01 00 24 */	stw r0, 0x24(r1)
/* 000013D0 0000149C  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000013D4 000014A0  3B A0 00 00 */	li r29, 0x0
/* 000013D8 000014A4  3B C3 00 00 */	addi r30, r3, booboo_name@l
/* 000013DC 000014A8  3B E0 00 00 */	li r31, 0x0
.L_000013E0:
/* 000013E0 000014AC  7C 7E F8 2E */	lwzx r3, r30, r31
/* 000013E4 000014B0  4B FF EC 1D */	bl npcNameToPtr_NoAssert
/* 000013E8 000014B4  28 03 00 00 */	cmplwi r3, 0x0
/* 000013EC 000014B8  41 82 00 18 */	beq .L_00001404
/* 000013F0 000014BC  7C 7E F8 2E */	lwzx r3, r30, r31
/* 000013F4 000014C0  4B FF EC 0D */	bl npcNameToPtr
/* 000013F8 000014C4  80 63 01 04 */	lwz r3, 0x104(r3)
/* 000013FC 000014C8  38 80 00 10 */	li r4, 0x10
/* 00001400 000014CC  4B FF EC 01 */	bl animPoseSetMaterialLightFlagOn
.L_00001404:
/* 00001404 000014D0  3B BD 00 01 */	addi r29, r29, 0x1
/* 00001408 000014D4  3B FF 00 08 */	addi r31, r31, 0x8
/* 0000140C 000014D8  28 1D 00 08 */	cmplwi r29, 0x8
/* 00001410 000014DC  41 80 FF D0 */	blt .L_000013E0
/* 00001414 000014E0  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00001418 000014E4  38 60 00 02 */	li r3, 0x2
/* 0000141C 000014E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001420 000014EC  7C 08 03 A6 */	mtlr r0
/* 00001424 000014F0  38 21 00 20 */	addi r1, r1, 0x20
/* 00001428 000014F4  4E 80 00 20 */	blr
.endfn booboo_main

# .text:0x254 | 0x142C | size: 0x4C
.fn set_fook_evt, local
/* 0000142C 000014F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001430 000014FC  7C 08 02 A6 */	mflr r0
/* 00001434 00001500  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001438 00001504  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000143C 00001508  7C 7E 1B 78 */	mr r30, r3
/* 00001440 0000150C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00001444 00001510  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00001448 00001514  4B FF EB B9 */	bl evtGetValue
/* 0000144C 00001518  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001450 0000151C  7C 7F 1B 78 */	mr r31, r3
/* 00001454 00001520  7F C3 F3 78 */	mr r3, r30
/* 00001458 00001524  4B FF EB A9 */	bl evtGetValue
/* 0000145C 00001528  90 7F 00 04 */	stw r3, 0x4(r31)
/* 00001460 0000152C  38 60 00 02 */	li r3, 0x2
/* 00001464 00001530  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00001468 00001534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000146C 00001538  7C 08 03 A6 */	mtlr r0
/* 00001470 0000153C  38 21 00 10 */	addi r1, r1, 0x10
/* 00001474 00001540  4E 80 00 20 */	blr
.endfn set_fook_evt

# .text:0x2A0 | 0x1478 | size: 0xCC
.fn ie2_npc_disp_on, local
/* 00001478 00001544  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000147C 00001548  7C 08 02 A6 */	mflr r0
/* 00001480 0000154C  3C 60 00 00 */	lis r3, lbl_27_rodata_250C@ha
/* 00001484 00001550  90 01 00 34 */	stw r0, 0x34(r1)
/* 00001488 00001554  38 63 00 00 */	addi r3, r3, lbl_27_rodata_250C@l
/* 0000148C 00001558  38 00 00 02 */	li r0, 0x2
/* 00001490 0000155C  38 A1 00 0C */	addi r5, r1, 0xc
/* 00001494 00001560  BF C1 00 28 */	stmw r30, 0x28(r1)
/* 00001498 00001564  38 83 FF FC */	subi r4, r3, 0x4
/* 0000149C 00001568  7C 09 03 A6 */	mtctr r0
.L_000014A0:
/* 000014A0 0000156C  80 64 00 04 */	lwz r3, 0x4(r4)
/* 000014A4 00001570  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 000014A8 00001574  90 65 00 04 */	stw r3, 0x4(r5)
/* 000014AC 00001578  94 05 00 08 */	stwu r0, 0x8(r5)
/* 000014B0 0000157C  42 00 FF F0 */	bdnz .L_000014A0
/* 000014B4 00001580  80 04 00 04 */	lwz r0, 0x4(r4)
/* 000014B8 00001584  3C 60 00 00 */	lis r3, lbl_27_rodata_2520@ha
/* 000014BC 00001588  38 83 00 00 */	addi r4, r3, lbl_27_rodata_2520@l
/* 000014C0 0000158C  3B C1 00 10 */	addi r30, r1, 0x10
/* 000014C4 00001590  90 05 00 04 */	stw r0, 0x4(r5)
/* 000014C8 00001594  3B E0 00 00 */	li r31, 0x0
/* 000014CC 00001598  80 64 00 00 */	lwz r3, 0x0(r4)
/* 000014D0 0000159C  80 04 00 04 */	lwz r0, 0x4(r4)
/* 000014D4 000015A0  90 61 00 08 */	stw r3, 0x8(r1)
/* 000014D8 000015A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 000014DC 000015A8  48 00 00 18 */	b .L_000014F4
.L_000014E0:
/* 000014E0 000015AC  4B FF EB 21 */	bl npcNameToPtr
/* 000014E4 000015B0  80 63 01 04 */	lwz r3, 0x104(r3)
/* 000014E8 000015B4  38 80 18 00 */	li r4, 0x1800
/* 000014EC 000015B8  4B FF EB 15 */	bl animPoseSetMaterialFlagOn
/* 000014F0 000015BC  3B FF 00 04 */	addi r31, r31, 0x4
.L_000014F4:
/* 000014F4 000015C0  7C 7E F8 2E */	lwzx r3, r30, r31
/* 000014F8 000015C4  28 03 00 00 */	cmplwi r3, 0x0
/* 000014FC 000015C8  40 82 FF E4 */	bne .L_000014E0
/* 00001500 000015CC  3B C1 00 08 */	addi r30, r1, 0x8
/* 00001504 000015D0  3B E0 00 00 */	li r31, 0x0
/* 00001508 000015D4  48 00 00 18 */	b .L_00001520
.L_0000150C:
/* 0000150C 000015D8  4B FF EA F5 */	bl npcNameToPtr
/* 00001510 000015DC  80 63 01 04 */	lwz r3, 0x104(r3)
/* 00001514 000015E0  38 80 18 00 */	li r4, 0x1800
/* 00001518 000015E4  4B FF EA E9 */	bl animPoseSetMaterialFlagOff
/* 0000151C 000015E8  3B FF 00 04 */	addi r31, r31, 0x4
.L_00001520:
/* 00001520 000015EC  7C 7E F8 2E */	lwzx r3, r30, r31
/* 00001524 000015F0  28 03 00 00 */	cmplwi r3, 0x0
/* 00001528 000015F4  40 82 FF E4 */	bne .L_0000150C
/* 0000152C 000015F8  BB C1 00 28 */	lmw r30, 0x28(r1)
/* 00001530 000015FC  38 60 00 02 */	li r3, 0x2
/* 00001534 00001600  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00001538 00001604  7C 08 03 A6 */	mtlr r0
/* 0000153C 00001608  38 21 00 30 */	addi r1, r1, 0x30
/* 00001540 0000160C  4E 80 00 20 */	blr
.endfn ie2_npc_disp_on

# .text:0x36C | 0x1544 | size: 0xCC
.fn ie2_npc_disp_off, local
/* 00001544 00001610  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00001548 00001614  7C 08 02 A6 */	mflr r0
/* 0000154C 00001618  3C 60 00 00 */	lis r3, lbl_27_rodata_24F0@ha
/* 00001550 0000161C  90 01 00 34 */	stw r0, 0x34(r1)
/* 00001554 00001620  38 63 00 00 */	addi r3, r3, lbl_27_rodata_24F0@l
/* 00001558 00001624  38 00 00 02 */	li r0, 0x2
/* 0000155C 00001628  38 A1 00 0C */	addi r5, r1, 0xc
/* 00001560 0000162C  BF C1 00 28 */	stmw r30, 0x28(r1)
/* 00001564 00001630  38 83 FF FC */	subi r4, r3, 0x4
/* 00001568 00001634  7C 09 03 A6 */	mtctr r0
.L_0000156C:
/* 0000156C 00001638  80 64 00 04 */	lwz r3, 0x4(r4)
/* 00001570 0000163C  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 00001574 00001640  90 65 00 04 */	stw r3, 0x4(r5)
/* 00001578 00001644  94 05 00 08 */	stwu r0, 0x8(r5)
/* 0000157C 00001648  42 00 FF F0 */	bdnz .L_0000156C
/* 00001580 0000164C  80 04 00 04 */	lwz r0, 0x4(r4)
/* 00001584 00001650  3C 60 00 00 */	lis r3, lbl_27_rodata_2504@ha
/* 00001588 00001654  38 83 00 00 */	addi r4, r3, lbl_27_rodata_2504@l
/* 0000158C 00001658  3B C1 00 10 */	addi r30, r1, 0x10
/* 00001590 0000165C  90 05 00 04 */	stw r0, 0x4(r5)
/* 00001594 00001660  3B E0 00 00 */	li r31, 0x0
/* 00001598 00001664  80 64 00 00 */	lwz r3, 0x0(r4)
/* 0000159C 00001668  80 04 00 04 */	lwz r0, 0x4(r4)
/* 000015A0 0000166C  90 61 00 08 */	stw r3, 0x8(r1)
/* 000015A4 00001670  90 01 00 0C */	stw r0, 0xc(r1)
/* 000015A8 00001674  48 00 00 18 */	b .L_000015C0
.L_000015AC:
/* 000015AC 00001678  4B FF EA 55 */	bl npcNameToPtr
/* 000015B0 0000167C  80 63 01 04 */	lwz r3, 0x104(r3)
/* 000015B4 00001680  38 80 18 00 */	li r4, 0x1800
/* 000015B8 00001684  4B FF EA 49 */	bl animPoseSetMaterialFlagOff
/* 000015BC 00001688  3B FF 00 04 */	addi r31, r31, 0x4
.L_000015C0:
/* 000015C0 0000168C  7C 7E F8 2E */	lwzx r3, r30, r31
/* 000015C4 00001690  28 03 00 00 */	cmplwi r3, 0x0
/* 000015C8 00001694  40 82 FF E4 */	bne .L_000015AC
/* 000015CC 00001698  3B C1 00 08 */	addi r30, r1, 0x8
/* 000015D0 0000169C  3B E0 00 00 */	li r31, 0x0
/* 000015D4 000016A0  48 00 00 18 */	b .L_000015EC
.L_000015D8:
/* 000015D8 000016A4  4B FF EA 29 */	bl npcNameToPtr
/* 000015DC 000016A8  80 63 01 04 */	lwz r3, 0x104(r3)
/* 000015E0 000016AC  38 80 18 00 */	li r4, 0x1800
/* 000015E4 000016B0  4B FF EA 1D */	bl animPoseSetMaterialFlagOn
/* 000015E8 000016B4  3B FF 00 04 */	addi r31, r31, 0x4
.L_000015EC:
/* 000015EC 000016B8  7C 7E F8 2E */	lwzx r3, r30, r31
/* 000015F0 000016BC  28 03 00 00 */	cmplwi r3, 0x0
/* 000015F4 000016C0  40 82 FF E4 */	bne .L_000015D8
/* 000015F8 000016C4  BB C1 00 28 */	lmw r30, 0x28(r1)
/* 000015FC 000016C8  38 60 00 02 */	li r3, 0x2
/* 00001600 000016CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00001604 000016D0  7C 08 03 A6 */	mtlr r0
/* 00001608 000016D4  38 21 00 30 */	addi r1, r1, 0x30
/* 0000160C 000016D8  4E 80 00 20 */	blr
.endfn ie2_npc_disp_off

# .text:0x438 | 0x1610 | size: 0x54
.fn shop_item_disp_on, local
/* 00001610 000016DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001614 000016E0  7C 08 02 A6 */	mflr r0
/* 00001618 000016E4  3C 60 00 00 */	lis r3, obj_list@ha
/* 0000161C 000016E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001620 000016EC  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00001624 000016F0  3B A0 00 00 */	li r29, 0x0
/* 00001628 000016F4  3B C3 00 00 */	addi r30, r3, obj_list@l
/* 0000162C 000016F8  3B E0 00 00 */	li r31, 0x0
.L_00001630:
/* 00001630 000016FC  7C 7E F8 2E */	lwzx r3, r30, r31
/* 00001634 00001700  38 80 00 01 */	li r4, 0x1
/* 00001638 00001704  4B FF E9 C9 */	bl mapObjFlagOff
/* 0000163C 00001708  3B BD 00 01 */	addi r29, r29, 0x1
/* 00001640 0000170C  3B FF 00 08 */	addi r31, r31, 0x8
/* 00001644 00001710  2C 1D 00 06 */	cmpwi r29, 0x6
/* 00001648 00001714  41 80 FF E8 */	blt .L_00001630
/* 0000164C 00001718  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00001650 0000171C  38 60 00 02 */	li r3, 0x2
/* 00001654 00001720  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001658 00001724  7C 08 03 A6 */	mtlr r0
/* 0000165C 00001728  38 21 00 20 */	addi r1, r1, 0x20
/* 00001660 0000172C  4E 80 00 20 */	blr
.endfn shop_item_disp_on

# .text:0x48C | 0x1664 | size: 0x54
.fn shop_item_disp_off, local
/* 00001664 00001730  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001668 00001734  7C 08 02 A6 */	mflr r0
/* 0000166C 00001738  3C 60 00 00 */	lis r3, obj_list@ha
/* 00001670 0000173C  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001674 00001740  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00001678 00001744  3B A0 00 00 */	li r29, 0x0
/* 0000167C 00001748  3B C3 00 00 */	addi r30, r3, obj_list@l
/* 00001680 0000174C  3B E0 00 00 */	li r31, 0x0
.L_00001684:
/* 00001684 00001750  7C 7E F8 2E */	lwzx r3, r30, r31
/* 00001688 00001754  38 80 00 01 */	li r4, 0x1
/* 0000168C 00001758  4B FF E9 75 */	bl mapObjFlagOn
/* 00001690 0000175C  3B BD 00 01 */	addi r29, r29, 0x1
/* 00001694 00001760  3B FF 00 08 */	addi r31, r31, 0x8
/* 00001698 00001764  2C 1D 00 06 */	cmpwi r29, 0x6
/* 0000169C 00001768  41 80 FF E8 */	blt .L_00001684
/* 000016A0 0000176C  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000016A4 00001770  38 60 00 02 */	li r3, 0x2
/* 000016A8 00001774  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000016AC 00001778  7C 08 03 A6 */	mtlr r0
/* 000016B0 0000177C  38 21 00 20 */	addi r1, r1, 0x20
/* 000016B4 00001780  4E 80 00 20 */	blr
.endfn shop_item_disp_off

# .text:0x4E0 | 0x16B8 | size: 0x88
.fn chk_fuki, local
/* 000016B8 00001784  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000016BC 00001788  7C 08 02 A6 */	mflr r0
/* 000016C0 0000178C  90 01 00 24 */	stw r0, 0x24(r1)
/* 000016C4 00001790  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000016C8 00001794  7C 7D 1B 78 */	mr r29, r3
/* 000016CC 00001798  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000016D0 0000179C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000016D4 000017A0  4B FF E9 2D */	bl evtGetValue
/* 000016D8 000017A4  7C 7E 1B 78 */	mr r30, r3
/* 000016DC 000017A8  4B FF E9 25 */	bl npcGetWorkPtr
/* 000016E0 000017AC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 000016E4 000017B0  28 03 00 00 */	cmplwi r3, 0x0
/* 000016E8 000017B4  41 82 00 30 */	beq .L_00001718
/* 000016EC 000017B8  7F C4 F3 78 */	mr r4, r30
/* 000016F0 000017BC  38 63 00 08 */	addi r3, r3, 0x8
/* 000016F4 000017C0  4B FF E9 0D */	bl strcmp
/* 000016F8 000017C4  2C 03 00 00 */	cmpwi r3, 0x0
/* 000016FC 000017C8  40 82 00 1C */	bne .L_00001718
/* 00001700 000017CC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001704 000017D0  7F A3 EB 78 */	mr r3, r29
/* 00001708 000017D4  38 A0 00 01 */	li r5, 0x1
/* 0000170C 000017D8  4B FF E8 F5 */	bl evtSetValue
/* 00001710 000017DC  38 60 00 02 */	li r3, 0x2
/* 00001714 000017E0  48 00 00 18 */	b .L_0000172C
.L_00001718:
/* 00001718 000017E4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000171C 000017E8  7F A3 EB 78 */	mr r3, r29
/* 00001720 000017EC  38 A0 00 00 */	li r5, 0x0
/* 00001724 000017F0  4B FF E8 DD */	bl evtSetValue
/* 00001728 000017F4  38 60 00 02 */	li r3, 0x2
.L_0000172C:
/* 0000172C 000017F8  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00001730 000017FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001734 00001800  7C 08 03 A6 */	mtlr r0
/* 00001738 00001804  38 21 00 20 */	addi r1, r1, 0x20
/* 0000173C 00001808  4E 80 00 20 */	blr
.endfn chk_fuki

# .text:0x568 | 0x1740 | size: 0x68
.fn check_tabemono, local
/* 00001740 0000180C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001744 00001810  7C 08 02 A6 */	mflr r0
/* 00001748 00001814  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000174C 00001818  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00001750 0000181C  7C 7E 1B 78 */	mr r30, r3
/* 00001754 00001820  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00001758 00001824  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000175C 00001828  4B FF E8 A5 */	bl evtGetValue
/* 00001760 0000182C  1C 83 00 28 */	mulli r4, r3, 0x28
/* 00001764 00001830  3C 60 00 00 */	lis r3, itemDataTable@ha
/* 00001768 00001834  38 A0 00 00 */	li r5, 0x0
/* 0000176C 00001838  38 03 00 00 */	addi r0, r3, itemDataTable@l
/* 00001770 0000183C  7C 60 22 14 */	add r3, r0, r4
/* 00001774 00001840  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 00001778 00001844  54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 0000177C 00001848  41 82 00 08 */	beq .L_00001784
/* 00001780 0000184C  38 A0 00 01 */	li r5, 0x1
.L_00001784:
/* 00001784 00001850  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001788 00001854  7F C3 F3 78 */	mr r3, r30
/* 0000178C 00001858  4B FF E8 75 */	bl evtSetValue
/* 00001790 0000185C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00001794 00001860  38 60 00 02 */	li r3, 0x2
/* 00001798 00001864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000179C 00001868  7C 08 03 A6 */	mtlr r0
/* 000017A0 0000186C  38 21 00 10 */	addi r1, r1, 0x10
/* 000017A4 00001870  4E 80 00 20 */	blr
.endfn check_tabemono

# .text:0x5D0 | 0x17A8 | size: 0x40
.fn delete_item_list, local
/* 000017A8 00001874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000017AC 00001878  7C 08 02 A6 */	mflr r0
/* 000017B0 0000187C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000017B4 00001880  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000017B8 00001884  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000017BC 00001888  4B FF E8 45 */	bl evtGetValue
/* 000017C0 0000188C  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 000017C4 00001890  38 A4 00 00 */	addi r5, r4, mapalloc_base_ptr@l
/* 000017C8 00001894  7C 64 1B 78 */	mr r4, r3
/* 000017CC 00001898  80 65 00 00 */	lwz r3, 0x0(r5)
/* 000017D0 0000189C  4B FF E8 31 */	bl _mapFree
/* 000017D4 000018A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000017D8 000018A4  38 60 00 02 */	li r3, 0x2
/* 000017DC 000018A8  7C 08 03 A6 */	mtlr r0
/* 000017E0 000018AC  38 21 00 10 */	addi r1, r1, 0x10
/* 000017E4 000018B0  4E 80 00 20 */	blr
.endfn delete_item_list

# .text:0x610 | 0x17E8 | size: 0xA4
.fn get_item_list, local
/* 000017E8 000018B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000017EC 000018B8  7C 08 02 A6 */	mflr r0
/* 000017F0 000018BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 000017F4 000018C0  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 000017F8 000018C4  7C 7A 1B 78 */	mr r26, r3
/* 000017FC 000018C8  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00001800 000018CC  4B FF E8 01 */	bl pouchGetHaveItemCnt
/* 00001804 000018D0  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 00001808 000018D4  38 03 00 01 */	addi r0, r3, 0x1
/* 0000180C 000018D8  80 64 00 00 */	lwz r3, mapalloc_base_ptr@l(r4)
/* 00001810 000018DC  54 04 10 3A */	slwi r4, r0, 2
/* 00001814 000018E0  4B FF E7 ED */	bl _mapAlloc
/* 00001818 000018E4  3B 60 00 00 */	li r27, 0x0
/* 0000181C 000018E8  7C 7D 1B 78 */	mr r29, r3
/* 00001820 000018EC  3B 80 00 00 */	li r28, 0x0
/* 00001824 000018F0  3B E0 00 00 */	li r31, 0x0
.L_00001828:
/* 00001828 000018F4  7F 63 DB 78 */	mr r3, r27
/* 0000182C 000018F8  4B FF E7 D5 */	bl pouchHaveItem
/* 00001830 000018FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001834 00001900  41 82 00 18 */	beq .L_0000184C
/* 00001838 00001904  7F 63 DB 78 */	mr r3, r27
/* 0000183C 00001908  4B FF E7 C5 */	bl pouchHaveItem
/* 00001840 0000190C  7C 7D F9 2E */	stwx r3, r29, r31
/* 00001844 00001910  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00001848 00001914  3B FF 00 04 */	addi r31, r31, 0x4
.L_0000184C:
/* 0000184C 00001918  3B 7B 00 01 */	addi r27, r27, 0x1
/* 00001850 0000191C  2C 1B 00 14 */	cmpwi r27, 0x14
/* 00001854 00001920  41 80 FF D4 */	blt .L_00001828
/* 00001858 00001924  57 80 10 3A */	slwi r0, r28, 2
/* 0000185C 00001928  38 60 FF FF */	li r3, -0x1
/* 00001860 0000192C  7C 7D 01 2E */	stwx r3, r29, r0
/* 00001864 00001930  7F 43 D3 78 */	mr r3, r26
/* 00001868 00001934  7F A5 EB 78 */	mr r5, r29
/* 0000186C 00001938  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00001870 0000193C  4B FF E7 91 */	bl evtSetValue
/* 00001874 00001940  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 00001878 00001944  38 60 00 02 */	li r3, 0x2
/* 0000187C 00001948  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001880 0000194C  7C 08 03 A6 */	mtlr r0
/* 00001884 00001950  38 21 00 20 */	addi r1, r1, 0x20
/* 00001888 00001954  4E 80 00 20 */	blr
.endfn get_item_list

# .text:0x6B4 | 0x188C | size: 0xB4
.fn sleep_voice, local
/* 0000188C 00001958  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001890 0000195C  7C 08 02 A6 */	mflr r0
/* 00001894 00001960  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001898 00001964  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000189C 00001968  7C 7E 1B 78 */	mr r30, r3
/* 000018A0 0000196C  7C 9F 23 78 */	mr r31, r4
/* 000018A4 00001970  4B FF E7 5D */	bl marioGetPtr
/* 000018A8 00001974  2C 1F 00 00 */	cmpwi r31, 0x0
/* 000018AC 00001978  7C 7F 1B 78 */	mr r31, r3
/* 000018B0 0000197C  41 82 00 0C */	beq .L_000018BC
/* 000018B4 00001980  38 00 FF FF */	li r0, -0x1
/* 000018B8 00001984  90 1E 00 78 */	stw r0, 0x78(r30)
.L_000018BC:
/* 000018BC 00001988  3C 80 00 00 */	lis r4, str_M_N_5A_usu_000053ac@ha
/* 000018C0 0000198C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 000018C4 00001990  38 84 00 00 */	addi r4, r4, str_M_N_5A_usu_000053ac@l
/* 000018C8 00001994  4B FF E7 39 */	bl strcmp
/* 000018CC 00001998  2C 03 00 00 */	cmpwi r3, 0x0
/* 000018D0 0000199C  40 82 00 58 */	bne .L_00001928
/* 000018D4 000019A0  4B FF E7 2D */	bl marioAnimeId
/* 000018D8 000019A4  54 60 10 3A */	slwi r0, r3, 2
/* 000018DC 000019A8  7C 7F 02 14 */	add r3, r31, r0
/* 000018E0 000019AC  80 63 02 2C */	lwz r3, 0x22c(r3)
/* 000018E4 000019B0  4B FF E7 1D */	bl animPoseGetLoopTimes
/* 000018E8 000019B4  FC 00 08 1E */	fctiwz f0, f1
/* 000018EC 000019B8  80 1E 00 78 */	lwz r0, 0x78(r30)
/* 000018F0 000019BC  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 000018F4 000019C0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 000018F8 000019C4  7C 04 00 00 */	cmpw r4, r0
/* 000018FC 000019C8  41 82 00 2C */	beq .L_00001928
/* 00001900 000019CC  3C 60 00 00 */	lis r3, str_SFX_VOICE_MARIO_SLEE_usu_00006458@ha
/* 00001904 000019D0  90 9E 00 78 */	stw r4, 0x78(r30)
/* 00001908 000019D4  38 63 00 00 */	addi r3, r3, str_SFX_VOICE_MARIO_SLEE_usu_00006458@l
/* 0000190C 000019D8  38 9F 00 8C */	addi r4, r31, 0x8c
/* 00001910 000019DC  4B FF E6 F1 */	bl psndSFXOn_3D
/* 00001914 000019E0  3C 80 FD 05 */	lis r4, 0xfd05
/* 00001918 000019E4  7C 65 1B 78 */	mr r5, r3
/* 0000191C 000019E8  7F C3 F3 78 */	mr r3, r30
/* 00001920 000019EC  38 84 0F 8A */	addi r4, r4, 0xf8a
/* 00001924 000019F0  4B FF E6 DD */	bl evtSetValue
.L_00001928:
/* 00001928 000019F4  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0000192C 000019F8  38 60 00 00 */	li r3, 0x0
/* 00001930 000019FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001934 00001A00  7C 08 03 A6 */	mtlr r0
/* 00001938 00001A04  38 21 00 20 */	addi r1, r1, 0x20
/* 0000193C 00001A08  4E 80 00 20 */	blr
.endfn sleep_voice

# 0x000018D8..0x00002C30 | size: 0x1358
.rodata
.balign 8

# .rodata:0x0 | 0x18D8 | size: 0x7
.obj str_村人Ｆ_usu_00005118, local
	.4byte 0x91BA906C
	.byte 0x82, 0x65, 0x00
.endobj str_村人Ｆ_usu_00005118

# .rodata:0x7 | 0x18DF | size: 0x1
.obj gap_03_000018DF_rodata, global
.hidden gap_03_000018DF_rodata
	.byte 0x00
.endobj gap_03_000018DF_rodata

# .rodata:0x8 | 0x18E0 | size: 0xC
.obj str_stg4_usu_82_usu_00005120, local
	.string "stg4_usu_82"
.endobj str_stg4_usu_82_usu_00005120

# .rodata:0x14 | 0x18EC | size: 0x3
.obj str_me_usu_0000512c, local
	.string "me"
.endobj str_me_usu_0000512c

# .rodata:0x17 | 0x18EF | size: 0x1
.obj gap_03_000018EF_rodata, global
.hidden gap_03_000018EF_rodata
	.byte 0x00
.endobj gap_03_000018EF_rodata

# .rodata:0x18 | 0x18F0 | size: 0xC
.obj str_stg4_usu_30_usu_00005130, local
	.string "stg4_usu_30"
.endobj str_stg4_usu_30_usu_00005130

# .rodata:0x24 | 0x18FC | size: 0xF
.obj str_stg4_usu_30_yn_usu_0000513c, local
	.string "stg4_usu_30_yn"
.endobj str_stg4_usu_30_yn_usu_0000513c

# .rodata:0x33 | 0x190B | size: 0x1
.obj gap_03_0000190B_rodata, global
.hidden gap_03_0000190B_rodata
	.byte 0x00
.endobj gap_03_0000190B_rodata

# .rodata:0x34 | 0x190C | size: 0xF
.obj str_stg4_usu_30_00_usu_0000514c, local
	.string "stg4_usu_30_00"
.endobj str_stg4_usu_30_00_usu_0000514c

# .rodata:0x43 | 0x191B | size: 0x1
.obj gap_03_0000191B_rodata, global
.hidden gap_03_0000191B_rodata
	.byte 0x00
.endobj gap_03_0000191B_rodata

# .rodata:0x44 | 0x191C | size: 0xC
.obj str_stg4_usu_84_usu_0000515c, local
	.string "stg4_usu_84"
.endobj str_stg4_usu_84_usu_0000515c

# .rodata:0x50 | 0x1928 | size: 0xE
.obj str_stg4_usu_84_1_usu_00005168, local
	.string "stg4_usu_84_1"
.endobj str_stg4_usu_84_1_usu_00005168

# .rodata:0x5E | 0x1936 | size: 0x2
.obj gap_03_00001936_rodata, global
.hidden gap_03_00001936_rodata
	.2byte 0x0000
.endobj gap_03_00001936_rodata

# .rodata:0x60 | 0x1938 | size: 0x10
.obj str_stg4_usu_84_1_1_usu_00005178, local
	.string "stg4_usu_84_1_1"
.endobj str_stg4_usu_84_1_1_usu_00005178

# .rodata:0x70 | 0x1948 | size: 0x7
.obj str_村人Ｇ_usu_00005188, local
	.4byte 0x91BA906C
	.byte 0x82, 0x66, 0x00
.endobj str_村人Ｇ_usu_00005188

# .rodata:0x77 | 0x194F | size: 0x1
.obj gap_03_0000194F_rodata, global
.hidden gap_03_0000194F_rodata
	.byte 0x00
.endobj gap_03_0000194F_rodata

# .rodata:0x78 | 0x1950 | size: 0xC
.obj str_stg4_usu_85_usu_00005190, local
	.string "stg4_usu_85"
.endobj str_stg4_usu_85_usu_00005190

# .rodata:0x84 | 0x195C | size: 0xC
.obj str_stg4_usu_86_usu_0000519c, local
	.string "stg4_usu_86"
.endobj str_stg4_usu_86_usu_0000519c

# .rodata:0x90 | 0x1968 | size: 0xF
.obj str_stg4_usu_86_yn_usu_000051a8, local
	.string "stg4_usu_86_yn"
.endobj str_stg4_usu_86_yn_usu_000051a8

# .rodata:0x9F | 0x1977 | size: 0x1
.obj gap_03_00001977_rodata, global
.hidden gap_03_00001977_rodata
	.byte 0x00
.endobj gap_03_00001977_rodata

# .rodata:0xA0 | 0x1978 | size: 0xF
.obj str_stg4_usu_86_00_usu_000051b8, local
	.string "stg4_usu_86_00"
.endobj str_stg4_usu_86_00_usu_000051b8

# .rodata:0xAF | 0x1987 | size: 0x1
.obj gap_03_00001987_rodata, global
.hidden gap_03_00001987_rodata
	.byte 0x00
.endobj gap_03_00001987_rodata

# .rodata:0xB0 | 0x1988 | size: 0xC
.obj str_stg4_usu_87_usu_000051c8, local
	.string "stg4_usu_87"
.endobj str_stg4_usu_87_usu_000051c8

# .rodata:0xBC | 0x1994 | size: 0xE
.obj str_stg4_usu_87_1_usu_000051d4, local
	.string "stg4_usu_87_1"
.endobj str_stg4_usu_87_1_usu_000051d4

# .rodata:0xCA | 0x19A2 | size: 0x2
.obj gap_03_000019A2_rodata, global
.hidden gap_03_000019A2_rodata
	.2byte 0x0000
.endobj gap_03_000019A2_rodata

# .rodata:0xCC | 0x19A4 | size: 0x10
.obj str_stg4_usu_87_1_1_usu_000051e4, local
	.string "stg4_usu_87_1_1"
.endobj str_stg4_usu_87_1_1_usu_000051e4

# .rodata:0xDC | 0x19B4 | size: 0x7
.obj str_村人Ｈ_usu_000051f4, local
	.4byte 0x91BA906C
	.byte 0x82, 0x67, 0x00
.endobj str_村人Ｈ_usu_000051f4

# .rodata:0xE3 | 0x19BB | size: 0x1
.obj gap_03_000019BB_rodata, global
.hidden gap_03_000019BB_rodata
	.byte 0x00
.endobj gap_03_000019BB_rodata

# .rodata:0xE4 | 0x19BC | size: 0xC
.obj str_stg4_usu_88_usu_000051fc, local
	.string "stg4_usu_88"
.endobj str_stg4_usu_88_usu_000051fc

# .rodata:0xF0 | 0x19C8 | size: 0xC
.obj str_stg4_usu_89_usu_00005208, local
	.string "stg4_usu_89"
.endobj str_stg4_usu_89_usu_00005208

# .rodata:0xFC | 0x19D4 | size: 0xC
.obj str_stg4_usu_90_usu_00005214, local
	.string "stg4_usu_90"
.endobj str_stg4_usu_90_usu_00005214

# .rodata:0x108 | 0x19E0 | size: 0xE
.obj str_stg4_usu_90_1_usu_00005220, local
	.string "stg4_usu_90_1"
.endobj str_stg4_usu_90_1_usu_00005220

# .rodata:0x116 | 0x19EE | size: 0x2
.obj gap_03_000019EE_rodata, global
.hidden gap_03_000019EE_rodata
	.2byte 0x0000
.endobj gap_03_000019EE_rodata

# .rodata:0x118 | 0x19F0 | size: 0x10
.obj str_stg4_usu_90_1_1_usu_00005230, local
	.string "stg4_usu_90_1_1"
.endobj str_stg4_usu_90_1_1_usu_00005230

# .rodata:0x128 | 0x1A00 | size: 0x7
.obj str_村人Ｉ_usu_00005240, local
	.4byte 0x91BA906C
	.byte 0x82, 0x68, 0x00
.endobj str_村人Ｉ_usu_00005240

# .rodata:0x12F | 0x1A07 | size: 0x1
.obj gap_03_00001A07_rodata, global
.hidden gap_03_00001A07_rodata
	.byte 0x00
.endobj gap_03_00001A07_rodata

# .rodata:0x130 | 0x1A08 | size: 0xB
.obj str_ブタ村人Ｉ_usu_00005248, local
	.4byte 0x8375835E
	.4byte 0x91BA906C
	.byte 0x82, 0x68, 0x00
.endobj str_ブタ村人Ｉ_usu_00005248

# .rodata:0x13B | 0x1A13 | size: 0x1
.obj gap_03_00001A13_rodata, global
.hidden gap_03_00001A13_rodata
	.byte 0x00
.endobj gap_03_00001A13_rodata

# .rodata:0x13C | 0x1A14 | size: 0x14
.obj str_SFX_STG4_VOICE_PIG1_usu_00005254, local
	.string "SFX_STG4_VOICE_PIG1"
.endobj str_SFX_STG4_VOICE_PIG1_usu_00005254

# .rodata:0x150 | 0x1A28 | size: 0xC
.obj str_stg4_usu_91_usu_00005268, local
	.string "stg4_usu_91"
.endobj str_stg4_usu_91_usu_00005268

# .rodata:0x15C | 0x1A34 | size: 0xC
.obj str_stg4_usu_92_usu_00005274, local
	.string "stg4_usu_92"
.endobj str_stg4_usu_92_usu_00005274

# .rodata:0x168 | 0x1A40 | size: 0xC
.obj str_stg4_usu_93_usu_00005280, local
	.string "stg4_usu_93"
.endobj str_stg4_usu_93_usu_00005280

# .rodata:0x174 | 0x1A4C | size: 0xE
.obj str_stg4_usu_93_1_usu_0000528c, local
	.string "stg4_usu_93_1"
.endobj str_stg4_usu_93_1_usu_0000528c

# .rodata:0x182 | 0x1A5A | size: 0x2
.obj gap_03_00001A5A_rodata, global
.hidden gap_03_00001A5A_rodata
	.2byte 0x0000
.endobj gap_03_00001A5A_rodata

# .rodata:0x184 | 0x1A5C | size: 0x10
.obj str_stg4_usu_93_1_1_usu_0000529c, local
	.string "stg4_usu_93_1_1"
.endobj str_stg4_usu_93_1_1_usu_0000529c

# .rodata:0x194 | 0x1A6C | size: 0x7
.obj str_村人Ｊ_usu_000052ac, local
	.4byte 0x91BA906C
	.byte 0x82, 0x69, 0x00
.endobj str_村人Ｊ_usu_000052ac

# .rodata:0x19B | 0x1A73 | size: 0x1
.obj gap_03_00001A73_rodata, global
.hidden gap_03_00001A73_rodata
	.byte 0x00
.endobj gap_03_00001A73_rodata

# .rodata:0x19C | 0x1A74 | size: 0xB
.obj str_ブタ村人Ｊ_usu_000052b4, local
	.4byte 0x8375835E
	.4byte 0x91BA906C
	.byte 0x82, 0x69, 0x00
.endobj str_ブタ村人Ｊ_usu_000052b4

# .rodata:0x1A7 | 0x1A7F | size: 0x1
.obj gap_03_00001A7F_rodata, global
.hidden gap_03_00001A7F_rodata
	.byte 0x00
.endobj gap_03_00001A7F_rodata

# .rodata:0x1A8 | 0x1A80 | size: 0xC
.obj str_stg4_usu_94_usu_000052c0, local
	.string "stg4_usu_94"
.endobj str_stg4_usu_94_usu_000052c0

# .rodata:0x1B4 | 0x1A8C | size: 0xC
.obj str_stg4_usu_95_usu_000052cc, local
	.string "stg4_usu_95"
.endobj str_stg4_usu_95_usu_000052cc

# .rodata:0x1C0 | 0x1A98 | size: 0xC
.obj str_stg4_usu_96_usu_000052d8, local
	.string "stg4_usu_96"
.endobj str_stg4_usu_96_usu_000052d8

# .rodata:0x1CC | 0x1AA4 | size: 0xE
.obj str_stg4_usu_96_1_usu_000052e4, local
	.string "stg4_usu_96_1"
.endobj str_stg4_usu_96_1_usu_000052e4

# .rodata:0x1DA | 0x1AB2 | size: 0x2
.obj gap_03_00001AB2_rodata, global
.hidden gap_03_00001AB2_rodata
	.2byte 0x0000
.endobj gap_03_00001AB2_rodata

# .rodata:0x1DC | 0x1AB4 | size: 0x10
.obj str_stg4_usu_96_1_1_usu_000052f4, local
	.string "stg4_usu_96_1_1"
.endobj str_stg4_usu_96_1_1_usu_000052f4

# .rodata:0x1EC | 0x1AC4 | size: 0x9
.obj str_店の主人_usu_00005304, local
	.4byte 0x935882CC
	.4byte 0x8EE5906C
	.byte 0x00
.endobj str_店の主人_usu_00005304

# .rodata:0x1F5 | 0x1ACD | size: 0x3
.obj gap_03_00001ACD_rodata, global
.hidden gap_03_00001ACD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001ACD_rodata

# .rodata:0x1F8 | 0x1AD0 | size: 0xE
.obj str_stg4_usu_61_5_usu_00005310, local
	.string "stg4_usu_61_5"
.endobj str_stg4_usu_61_5_usu_00005310

# .rodata:0x206 | 0x1ADE | size: 0x2
.obj gap_03_00001ADE_rodata, global
.hidden gap_03_00001ADE_rodata
	.2byte 0x0000
.endobj gap_03_00001ADE_rodata

# .rodata:0x208 | 0x1AE0 | size: 0xE
.obj str_stg4_usu_61_6_usu_00005320, local
	.string "stg4_usu_61_6"
.endobj str_stg4_usu_61_6_usu_00005320

# .rodata:0x216 | 0x1AEE | size: 0x2
.obj gap_03_00001AEE_rodata, global
.hidden gap_03_00001AEE_rodata
	.2byte 0x0000
.endobj gap_03_00001AEE_rodata

# .rodata:0x218 | 0x1AF0 | size: 0xE
.obj str_stg4_usu_61_7_usu_00005330, local
	.string "stg4_usu_61_7"
.endobj str_stg4_usu_61_7_usu_00005330

# .rodata:0x226 | 0x1AFE | size: 0x2
.obj gap_03_00001AFE_rodata, global
.hidden gap_03_00001AFE_rodata
	.2byte 0x0000
.endobj gap_03_00001AFE_rodata

# .rodata:0x228 | 0x1B00 | size: 0xD
.obj str_お店の奥さん_usu_00005340, local
	.4byte 0x82A89358
	.4byte 0x82CC899C
	.4byte 0x82B382F1
	.byte 0x00
.endobj str_お店の奥さん_usu_00005340

# .rodata:0x235 | 0x1B0D | size: 0x3
.obj gap_03_00001B0D_rodata, global
.hidden gap_03_00001B0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B0D_rodata

# .rodata:0x238 | 0x1B10 | size: 0xC
.obj str_stg4_usu_52_usu_00005350, local
	.string "stg4_usu_52"
.endobj str_stg4_usu_52_usu_00005350

# .rodata:0x244 | 0x1B1C | size: 0x6
.obj str_M_I_2_usu_0000535c, local
	.string "M_I_2"
.endobj str_M_I_2_usu_0000535c

# .rodata:0x24A | 0x1B22 | size: 0x2
.obj gap_03_00001B22_rodata, global
.hidden gap_03_00001B22_rodata
	.2byte 0x0000
.endobj gap_03_00001B22_rodata

# .rodata:0x24C | 0x1B24 | size: 0xC
.obj str_stg4_usu_53_usu_00005364, local
	.string "stg4_usu_53"
.endobj str_stg4_usu_53_usu_00005364

# .rodata:0x258 | 0x1B30 | size: 0x6
.obj str_M_I_N_usu_00005370, local
	.string "M_I_N"
.endobj str_M_I_N_usu_00005370

# .rodata:0x25E | 0x1B36 | size: 0x2
.obj gap_03_00001B36_rodata, global
.hidden gap_03_00001B36_rodata
	.2byte 0x0000
.endobj gap_03_00001B36_rodata

# .rodata:0x260 | 0x1B38 | size: 0x6
.obj str_M_S_1_usu_00005378, local
	.string "M_S_1"
.endobj str_M_S_1_usu_00005378

# .rodata:0x266 | 0x1B3E | size: 0x2
.obj gap_03_00001B3E_rodata, global
.hidden gap_03_00001B3E_rodata
	.2byte 0x0000
.endobj gap_03_00001B3E_rodata

# .rodata:0x268 | 0x1B40 | size: 0xC
.obj str_stg4_usu_54_usu_00005380, local
	.string "stg4_usu_54"
.endobj str_stg4_usu_54_usu_00005380

# .rodata:0x274 | 0x1B4C | size: 0x16
.obj str_SFX_VOICE_MARIO_YAWN_usu_0000538c, local
	.string "SFX_VOICE_MARIO_YAWN1"
.endobj str_SFX_VOICE_MARIO_YAWN_usu_0000538c

# .rodata:0x28A | 0x1B62 | size: 0x2
.obj gap_03_00001B62_rodata, global
.hidden gap_03_00001B62_rodata
	.2byte 0x0000
.endobj gap_03_00001B62_rodata

# .rodata:0x28C | 0x1B64 | size: 0x6
.obj str_M_I_5_usu_000053a4, local
	.string "M_I_5"
.endobj str_M_I_5_usu_000053a4

# .rodata:0x292 | 0x1B6A | size: 0x2
.obj gap_03_00001B6A_rodata, global
.hidden gap_03_00001B6A_rodata
	.2byte 0x0000
.endobj gap_03_00001B6A_rodata

# .rodata:0x294 | 0x1B6C | size: 0x7
.obj str_M_N_5A_usu_000053ac, local
	.string "M_N_5A"
.endobj str_M_N_5A_usu_000053ac

# .rodata:0x29B | 0x1B73 | size: 0x1
.obj gap_03_00001B73_rodata, global
.hidden gap_03_00001B73_rodata
	.byte 0x00
.endobj gap_03_00001B73_rodata

# .rodata:0x29C | 0x1B74 | size: 0x17
.obj str_SFX_VOICE_MARIO_AWAK_usu_000053b4, local
	.string "SFX_VOICE_MARIO_AWAKE1"
.endobj str_SFX_VOICE_MARIO_AWAK_usu_000053b4

# .rodata:0x2B3 | 0x1B8B | size: 0x1
.obj gap_03_00001B8B_rodata, global
.hidden gap_03_00001B8B_rodata
	.byte 0x00
.endobj gap_03_00001B8B_rodata

# .rodata:0x2B4 | 0x1B8C | size: 0x7
.obj str_M_N_5B_usu_000053cc, local
	.string "M_N_5B"
.endobj str_M_N_5B_usu_000053cc

# .rodata:0x2BB | 0x1B93 | size: 0x1
.obj gap_03_00001B93_rodata, global
.hidden gap_03_00001B93_rodata
	.byte 0x00
.endobj gap_03_00001B93_rodata

# .rodata:0x2BC | 0x1B94 | size: 0x6
.obj str_M_N_2_usu_000053d4, local
	.string "M_N_2"
.endobj str_M_N_2_usu_000053d4

# .rodata:0x2C2 | 0x1B9A | size: 0x2
.obj gap_03_00001B9A_rodata, global
.hidden gap_03_00001B9A_rodata
	.2byte 0x0000
.endobj gap_03_00001B9A_rodata

# .rodata:0x2C4 | 0x1B9C | size: 0xC
.obj str_stg4_usu_55_usu_000053dc, local
	.string "stg4_usu_55"
.endobj str_stg4_usu_55_usu_000053dc

# .rodata:0x2D0 | 0x1BA8 | size: 0xC
.obj str_stg4_usu_56_usu_000053e8, local
	.string "stg4_usu_56"
.endobj str_stg4_usu_56_usu_000053e8

# .rodata:0x2DC | 0x1BB4 | size: 0xC
.obj str_stg4_usu_58_usu_000053f4, local
	.string "stg4_usu_58"
.endobj str_stg4_usu_58_usu_000053f4

# .rodata:0x2E8 | 0x1BC0 | size: 0xF
.obj str_stg4_usu_58_01_usu_00005400, local
	.string "stg4_usu_58_01"
.endobj str_stg4_usu_58_01_usu_00005400

# .rodata:0x2F7 | 0x1BCF | size: 0x1
.obj gap_03_00001BCF_rodata, global
.hidden gap_03_00001BCF_rodata
	.byte 0x00
.endobj gap_03_00001BCF_rodata

# .rodata:0x2F8 | 0x1BD0 | size: 0xC
.obj str_stg4_usu_59_usu_00005410, local
	.string "stg4_usu_59"
.endobj str_stg4_usu_59_usu_00005410

# .rodata:0x304 | 0x1BDC | size: 0x9
.obj str_キザ野郎_usu_0000541c, local
	.4byte 0x834C8355
	.4byte 0x96EC9859
	.byte 0x00
.endobj str_キザ野郎_usu_0000541c

# .rodata:0x30D | 0x1BE5 | size: 0x3
.obj gap_03_00001BE5_rodata, global
.hidden gap_03_00001BE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BE5_rodata

# .rodata:0x310 | 0x1BE8 | size: 0xD
.obj str_ブタキザ野郎_usu_00005428, local
	.4byte 0x8375835E
	.4byte 0x834C8355
	.4byte 0x96EC9859
	.byte 0x00
.endobj str_ブタキザ野郎_usu_00005428

# .rodata:0x31D | 0x1BF5 | size: 0x3
.obj gap_03_00001BF5_rodata, global
.hidden gap_03_00001BF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BF5_rodata

# .rodata:0x320 | 0x1BF8 | size: 0xF
.obj str_stg4_usu_61_00_usu_00005438, local
	.string "stg4_usu_61_00"
.endobj str_stg4_usu_61_00_usu_00005438

# .rodata:0x32F | 0x1C07 | size: 0x1
.obj gap_03_00001C07_rodata, global
.hidden gap_03_00001C07_rodata
	.byte 0x00
.endobj gap_03_00001C07_rodata

# .rodata:0x330 | 0x1C08 | size: 0xC
.obj str_stg4_usu_61_usu_00005448, local
	.string "stg4_usu_61"
.endobj str_stg4_usu_61_usu_00005448

# .rodata:0x33C | 0x1C14 | size: 0xC
.obj str_stg4_usu_63_usu_00005454, local
	.string "stg4_usu_63"
.endobj str_stg4_usu_63_usu_00005454

# .rodata:0x348 | 0x1C20 | size: 0x7
.obj str_子供Ａ_usu_00005460, local
	.4byte 0x8E718B9F
	.byte 0x82, 0x60, 0x00
.endobj str_子供Ａ_usu_00005460

# .rodata:0x34F | 0x1C27 | size: 0x1
.obj gap_03_00001C27_rodata, global
.hidden gap_03_00001C27_rodata
	.byte 0x00
.endobj gap_03_00001C27_rodata

# .rodata:0x350 | 0x1C28 | size: 0xC
.obj str_stg4_usu_64_usu_00005468, local
	.string "stg4_usu_64"
.endobj str_stg4_usu_64_usu_00005468

# .rodata:0x35C | 0x1C34 | size: 0x7
.obj str_子供Ｂ_usu_00005474, local
	.4byte 0x8E718B9F
	.byte 0x82, 0x61, 0x00
.endobj str_子供Ｂ_usu_00005474

# .rodata:0x363 | 0x1C3B | size: 0x1
.obj gap_03_00001C3B_rodata, global
.hidden gap_03_00001C3B_rodata
	.byte 0x00
.endobj gap_03_00001C3B_rodata

# .rodata:0x364 | 0x1C3C | size: 0xC
.obj str_stg4_usu_65_usu_0000547c, local
	.string "stg4_usu_65"
.endobj str_stg4_usu_65_usu_0000547c

# .rodata:0x370 | 0x1C48 | size: 0x7
.obj str_子供Ｃ_usu_00005488, local
	.4byte 0x8E718B9F
	.byte 0x82, 0x62, 0x00
.endobj str_子供Ｃ_usu_00005488

# .rodata:0x377 | 0x1C4F | size: 0x1
.obj gap_03_00001C4F_rodata, global
.hidden gap_03_00001C4F_rodata
	.byte 0x00
.endobj gap_03_00001C4F_rodata

# .rodata:0x378 | 0x1C50 | size: 0xC
.obj str_stg4_usu_79_usu_00005490, local
	.string "stg4_usu_79"
.endobj str_stg4_usu_79_usu_00005490

# .rodata:0x384 | 0x1C5C | size: 0xC
.obj str_stg4_usu_80_usu_0000549c, local
	.string "stg4_usu_80"
.endobj str_stg4_usu_80_usu_0000549c

# .rodata:0x390 | 0x1C68 | size: 0xC
.obj str_stg4_usu_81_usu_000054a8, local
	.string "stg4_usu_81"
.endobj str_stg4_usu_81_usu_000054a8

# .rodata:0x39C | 0x1C74 | size: 0xE
.obj str_stg4_usu_81_2_usu_000054b4, local
	.string "stg4_usu_81_2"
.endobj str_stg4_usu_81_2_usu_000054b4

# .rodata:0x3AA | 0x1C82 | size: 0x2
.obj gap_03_00001C82_rodata, global
.hidden gap_03_00001C82_rodata
	.2byte 0x0000
.endobj gap_03_00001C82_rodata

# .rodata:0x3AC | 0x1C84 | size: 0xE
.obj str_stg4_usu_81_3_usu_000054c4, local
	.string "stg4_usu_81_3"
.endobj str_stg4_usu_81_3_usu_000054c4

# .rodata:0x3BA | 0x1C92 | size: 0x2
.obj gap_03_00001C92_rodata, global
.hidden gap_03_00001C92_rodata
	.2byte 0x0000
.endobj gap_03_00001C92_rodata

# .rodata:0x3BC | 0x1C94 | size: 0xE
.obj str_stg4_usu_81_4_usu_000054d4, local
	.string "stg4_usu_81_4"
.endobj str_stg4_usu_81_4_usu_000054d4

# .rodata:0x3CA | 0x1CA2 | size: 0x2
.obj gap_03_00001CA2_rodata, global
.hidden gap_03_00001CA2_rodata
	.2byte 0x0000
.endobj gap_03_00001CA2_rodata

# .rodata:0x3CC | 0x1CA4 | size: 0x10
.obj str_stg4_usu_81_4_2_usu_000054e4, local
	.string "stg4_usu_81_4_2"
.endobj str_stg4_usu_81_4_2_usu_000054e4

# .rodata:0x3DC | 0x1CB4 | size: 0x10
.obj str_stg4_usu_81_4_3_usu_000054f4, local
	.string "stg4_usu_81_4_3"
.endobj str_stg4_usu_81_4_3_usu_000054f4

# .rodata:0x3EC | 0x1CC4 | size: 0x10
.obj str_stg4_usu_81_4_4_usu_00005504, local
	.string "stg4_usu_81_4_4"
.endobj str_stg4_usu_81_4_4_usu_00005504

# .rodata:0x3FC | 0x1CD4 | size: 0x9
.obj str_おばさん_usu_00005514, local
	.4byte 0x82A882CE
	.4byte 0x82B382F1
	.byte 0x00
.endobj str_おばさん_usu_00005514

# .rodata:0x405 | 0x1CDD | size: 0x3
.obj gap_03_00001CDD_rodata, global
.hidden gap_03_00001CDD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001CDD_rodata

# .rodata:0x408 | 0x1CE0 | size: 0xD
.obj str_ブタおばさん_usu_00005520, local
	.4byte 0x8375835E
	.4byte 0x82A882CE
	.4byte 0x82B382F1
	.byte 0x00
.endobj str_ブタおばさん_usu_00005520

# .rodata:0x415 | 0x1CED | size: 0x3
.obj gap_03_00001CED_rodata, global
.hidden gap_03_00001CED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001CED_rodata

# .rodata:0x418 | 0x1CF0 | size: 0xC
.obj str_irai_20_001_usu_00005530, local
	.string "irai_20_001"
.endobj str_irai_20_001_usu_00005530

# .rodata:0x424 | 0x1CFC | size: 0xF
.obj str_BGM_EVT_ORGEL1_usu_0000553c, local
	.string "BGM_EVT_ORGEL1"
.endobj str_BGM_EVT_ORGEL1_usu_0000553c

# .rodata:0x433 | 0x1D0B | size: 0x1
.obj gap_03_00001D0B_rodata, global
.hidden gap_03_00001D0B_rodata
	.byte 0x00
.endobj gap_03_00001D0B_rodata

# .rodata:0x434 | 0x1D0C | size: 0xC
.obj str_irai_20_002_usu_0000554c, local
	.string "irai_20_002"
.endobj str_irai_20_002_usu_0000554c

# .rodata:0x440 | 0x1D18 | size: 0x6
.obj str_M_N_1_usu_00005558, local
	.string "M_N_1"
.endobj str_M_N_1_usu_00005558

# .rodata:0x446 | 0x1D1E | size: 0x2
.obj gap_03_00001D1E_rodata, global
.hidden gap_03_00001D1E_rodata
	.2byte 0x0000
.endobj gap_03_00001D1E_rodata

# .rodata:0x448 | 0x1D20 | size: 0xC
.obj str_irai_20_003_usu_00005560, local
	.string "irai_20_003"
.endobj str_irai_20_003_usu_00005560

# .rodata:0x454 | 0x1D2C | size: 0xC
.obj str_irai_20_004_usu_0000556c, local
	.string "irai_20_004"
.endobj str_irai_20_004_usu_0000556c

# .rodata:0x460 | 0x1D38 | size: 0x6
.obj str_mario_usu_00005578, local
	.string "mario"
.endobj str_mario_usu_00005578

# .rodata:0x466 | 0x1D3E | size: 0x2
.obj gap_03_00001D3E_rodata, global
.hidden gap_03_00001D3E_rodata
	.2byte 0x0000
.endobj gap_03_00001D3E_rodata

# .rodata:0x468 | 0x1D40 | size: 0xC
.obj str_irai_20_005_usu_00005580, local
	.string "irai_20_005"
.endobj str_irai_20_005_usu_00005580

# .rodata:0x474 | 0x1D4C | size: 0xC
.obj str_irai_20_006_usu_0000558c, local
	.string "irai_20_006"
.endobj str_irai_20_006_usu_0000558c

# .rodata:0x480 | 0x1D58 | size: 0xC
.obj str_irai_20_007_usu_00005598, local
	.string "irai_20_007"
.endobj str_irai_20_007_usu_00005598

# .rodata:0x48C | 0x1D64 | size: 0xC
.obj str_irai_20_008_usu_000055a4, local
	.string "irai_20_008"
.endobj str_irai_20_008_usu_000055a4

# .rodata:0x498 | 0x1D70 | size: 0xC
.obj str_irai_20_009_usu_000055b0, local
	.string "irai_20_009"
.endobj str_irai_20_009_usu_000055b0

# .rodata:0x4A4 | 0x1D7C | size: 0xC
.obj str_irai_20_010_usu_000055bc, local
	.string "irai_20_010"
.endobj str_irai_20_010_usu_000055bc

# .rodata:0x4B0 | 0x1D88 | size: 0xC
.obj str_irai_20_011_usu_000055c8, local
	.string "irai_20_011"
.endobj str_irai_20_011_usu_000055c8

# .rodata:0x4BC | 0x1D94 | size: 0xC
.obj str_irai_20_012_usu_000055d4, local
	.string "irai_20_012"
.endobj str_irai_20_012_usu_000055d4

# .rodata:0x4C8 | 0x1DA0 | size: 0x3
.obj str_sd_usu_000055e0, local
	.string "sd"
.endobj str_sd_usu_000055e0

# .rodata:0x4CB | 0x1DA3 | size: 0x1
.obj gap_03_00001DA3_rodata, global
.hidden gap_03_00001DA3_rodata
	.byte 0x00
.endobj gap_03_00001DA3_rodata

# .rodata:0x4CC | 0x1DA4 | size: 0xE
.obj str_irai_20_012_1_usu_000055e4, local
	.string "irai_20_012_1"
.endobj str_irai_20_012_1_usu_000055e4

# .rodata:0x4DA | 0x1DB2 | size: 0x2
.obj gap_03_00001DB2_rodata, global
.hidden gap_03_00001DB2_rodata
	.2byte 0x0000
.endobj gap_03_00001DB2_rodata

# .rodata:0x4DC | 0x1DB4 | size: 0x7
.obj str_iri_20_usu_000055f4, local
	.string "iri_20"
.endobj str_iri_20_usu_000055f4

# .rodata:0x4E3 | 0x1DBB | size: 0x1
.obj gap_03_00001DBB_rodata, global
.hidden gap_03_00001DBB_rodata
	.byte 0x00
.endobj gap_03_00001DBB_rodata

# .rodata:0x4E4 | 0x1DBC | size: 0xC
.obj str_irai_20_014_usu_000055fc, local
	.string "irai_20_014"
.endobj str_irai_20_014_usu_000055fc

# .rodata:0x4F0 | 0x1DC8 | size: 0x13
.obj str_sys_request_finish_usu_00005608, local
	.string "sys_request_finish"
.endobj str_sys_request_finish_usu_00005608

# .rodata:0x503 | 0x1DDB | size: 0x1
.obj gap_03_00001DDB_rodata, global
.hidden gap_03_00001DDB_rodata
	.byte 0x00
.endobj gap_03_00001DDB_rodata

# .rodata:0x504 | 0x1DDC | size: 0xC
.obj str_irai_20_015_usu_0000561c, local
	.string "irai_20_015"
.endobj str_irai_20_015_usu_0000561c

# .rodata:0x510 | 0x1DE8 | size: 0xC
.obj str_irai_20_016_usu_00005628, local
	.string "irai_20_016"
.endobj str_irai_20_016_usu_00005628

# .rodata:0x51C | 0x1DF4 | size: 0xC
.obj str_irai_20_017_usu_00005634, local
	.string "irai_20_017"
.endobj str_irai_20_017_usu_00005634

# .rodata:0x528 | 0x1E00 | size: 0xC
.obj str_stg4_usu_62_usu_00005640, local
	.string "stg4_usu_62"
.endobj str_stg4_usu_62_usu_00005640

# .rodata:0x534 | 0x1E0C | size: 0xC
.obj str_stg4_usu_66_usu_0000564c, local
	.string "stg4_usu_66"
.endobj str_stg4_usu_66_usu_0000564c

# .rodata:0x540 | 0x1E18 | size: 0xF
.obj str_stg4_usu_66_yn_usu_00005658, local
	.string "stg4_usu_66_yn"
.endobj str_stg4_usu_66_yn_usu_00005658

# .rodata:0x54F | 0x1E27 | size: 0x1
.obj gap_03_00001E27_rodata, global
.hidden gap_03_00001E27_rodata
	.byte 0x00
.endobj gap_03_00001E27_rodata

# .rodata:0x550 | 0x1E28 | size: 0xC
.obj str_stg4_usu_67_usu_00005668, local
	.string "stg4_usu_67"
.endobj str_stg4_usu_67_usu_00005668

# .rodata:0x55C | 0x1E34 | size: 0xC
.obj str_stg4_usu_68_usu_00005674, local
	.string "stg4_usu_68"
.endobj str_stg4_usu_68_usu_00005674

# .rodata:0x568 | 0x1E40 | size: 0x5
.obj str_orei_usu_00005680, local
	.string "orei"
.endobj str_orei_usu_00005680

# .rodata:0x56D | 0x1E45 | size: 0x3
.obj gap_03_00001E45_rodata, global
.hidden gap_03_00001E45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E45_rodata

# .rodata:0x570 | 0x1E48 | size: 0xC
.obj str_stg4_usu_69_usu_00005688, local
	.string "stg4_usu_69"
.endobj str_stg4_usu_69_usu_00005688

# .rodata:0x57C | 0x1E54 | size: 0xC
.obj str_stg4_usu_70_usu_00005694, local
	.string "stg4_usu_70"
.endobj str_stg4_usu_70_usu_00005694

# .rodata:0x588 | 0x1E60 | size: 0x16
.obj str_SFX_STG4_TEMPLE_BELL_usu_000056a0, local
	.string "SFX_STG4_TEMPLE_BELL1"
.endobj str_SFX_STG4_TEMPLE_BELL_usu_000056a0

# .rodata:0x59E | 0x1E76 | size: 0x2
.obj gap_03_00001E76_rodata, global
.hidden gap_03_00001E76_rodata
	.2byte 0x0000
.endobj gap_03_00001E76_rodata

# .rodata:0x5A0 | 0x1E78 | size: 0x15
.obj str_SFX_STG4_CHANGE_PIG1_usu_000056b8, local
	.string "SFX_STG4_CHANGE_PIG1"
.endobj str_SFX_STG4_CHANGE_PIG1_usu_000056b8

# .rodata:0x5B5 | 0x1E8D | size: 0x3
.obj gap_03_00001E8D_rodata, global
.hidden gap_03_00001E8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E8D_rodata

# .rodata:0x5B8 | 0x1E90 | size: 0xC
.obj str_kemuri_test_usu_000056d0, local
	.string "kemuri_test"
.endobj str_kemuri_test_usu_000056d0

# .rodata:0x5C4 | 0x1E9C | size: 0xC
.obj str_stg4_usu_71_usu_000056dc, local
	.string "stg4_usu_71"
.endobj str_stg4_usu_71_usu_000056dc

# .rodata:0x5D0 | 0x1EA8 | size: 0xC
.obj str_stg4_usu_72_usu_000056e8, local
	.string "stg4_usu_72"
.endobj str_stg4_usu_72_usu_000056e8

# .rodata:0x5DC | 0x1EB4 | size: 0xC
.obj str_stg4_usu_73_usu_000056f4, local
	.string "stg4_usu_73"
.endobj str_stg4_usu_73_usu_000056f4

# .rodata:0x5E8 | 0x1EC0 | size: 0xF
.obj str_stg4_usu_73_01_usu_00005700, local
	.string "stg4_usu_73_01"
.endobj str_stg4_usu_73_01_usu_00005700

# .rodata:0x5F7 | 0x1ECF | size: 0x1
.obj gap_03_00001ECF_rodata, global
.hidden gap_03_00001ECF_rodata
	.byte 0x00
.endobj gap_03_00001ECF_rodata

# .rodata:0x5F8 | 0x1ED0 | size: 0xC
.obj str_stg4_usu_77_usu_00005710, local
	.string "stg4_usu_77"
.endobj str_stg4_usu_77_usu_00005710

# .rodata:0x604 | 0x1EDC | size: 0xC
.obj str_stg4_usu_78_usu_0000571c, local
	.string "stg4_usu_78"
.endobj str_stg4_usu_78_usu_0000571c

# .rodata:0x610 | 0x1EE8 | size: 0xE
.obj str_stg4_usu_81_1_usu_00005728, local
	.string "stg4_usu_81_1"
.endobj str_stg4_usu_81_1_usu_00005728

# .rodata:0x61E | 0x1EF6 | size: 0x2
.obj gap_03_00001EF6_rodata, global
.hidden gap_03_00001EF6_rodata
	.2byte 0x0000
.endobj gap_03_00001EF6_rodata

# .rodata:0x620 | 0x1EF8 | size: 0x10
.obj str_stg4_usu_81_4_1_usu_00005738, local
	.string "stg4_usu_81_4_1"
.endobj str_stg4_usu_81_4_1_usu_00005738

# .rodata:0x630 | 0x1F08 | size: 0xC
.obj str_stg4_usu_74_usu_00005748, local
	.string "stg4_usu_74"
.endobj str_stg4_usu_74_usu_00005748

# .rodata:0x63C | 0x1F14 | size: 0xC
.obj str_stg4_usu_75_usu_00005754, local
	.string "stg4_usu_75"
.endobj str_stg4_usu_75_usu_00005754

# .rodata:0x648 | 0x1F20 | size: 0xC
.obj str_stg4_usu_76_usu_00005760, local
	.string "stg4_usu_76"
.endobj str_stg4_usu_76_usu_00005760

# .rodata:0x654 | 0x1F2C | size: 0x5
.obj str_門番_usu_0000576c, local
	.4byte 0x96E594D4
	.byte 0x00
.endobj str_門番_usu_0000576c

# .rodata:0x659 | 0x1F31 | size: 0x3
.obj gap_03_00001F31_rodata, global
.hidden gap_03_00001F31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F31_rodata

# .rodata:0x65C | 0x1F34 | size: 0x7
.obj str_e_bero_usu_00005774, local
	.string "e_bero"
.endobj str_e_bero_usu_00005774

# .rodata:0x663 | 0x1F3B | size: 0x1
.obj gap_03_00001F3B_rodata, global
.hidden gap_03_00001F3B_rodata
	.byte 0x00
.endobj gap_03_00001F3B_rodata

# .rodata:0x664 | 0x1F3C | size: 0x9
.obj str_ブタ門番_usu_0000577c, local
	.4byte 0x8375835E
	.4byte 0x96E594D4
	.byte 0x00
.endobj str_ブタ門番_usu_0000577c

# .rodata:0x66D | 0x1F45 | size: 0x3
.obj gap_03_00001F45_rodata, global
.hidden gap_03_00001F45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F45_rodata

# .rodata:0x670 | 0x1F48 | size: 0xC
.obj str_stg4_usu_44_usu_00005788, local
	.string "stg4_usu_44"
.endobj str_stg4_usu_44_usu_00005788

# .rodata:0x67C | 0x1F54 | size: 0xC
.obj str_stg4_usu_45_usu_00005794, local
	.string "stg4_usu_45"
.endobj str_stg4_usu_45_usu_00005794

# .rodata:0x688 | 0x1F60 | size: 0xF
.obj str_stg4_usu_45_01_usu_000057a0, local
	.string "stg4_usu_45_01"
.endobj str_stg4_usu_45_01_usu_000057a0

# .rodata:0x697 | 0x1F6F | size: 0x1
.obj gap_03_00001F6F_rodata, global
.hidden gap_03_00001F6F_rodata
	.byte 0x00
.endobj gap_03_00001F6F_rodata

# .rodata:0x698 | 0x1F70 | size: 0xC
.obj str_stg4_usu_46_usu_000057b0, local
	.string "stg4_usu_46"
.endobj str_stg4_usu_46_usu_000057b0

# .rodata:0x6A4 | 0x1F7C | size: 0xC
.obj str_stg4_usu_48_usu_000057bc, local
	.string "stg4_usu_48"
.endobj str_stg4_usu_48_usu_000057bc

# .rodata:0x6B0 | 0x1F88 | size: 0xC
.obj str_stg4_usu_49_usu_000057c8, local
	.string "stg4_usu_49"
.endobj str_stg4_usu_49_usu_000057c8

# .rodata:0x6BC | 0x1F94 | size: 0xE
.obj str_stg4_usu_49_1_usu_000057d4, local
	.string "stg4_usu_49_1"
.endobj str_stg4_usu_49_1_usu_000057d4

# .rodata:0x6CA | 0x1FA2 | size: 0x2
.obj gap_03_00001FA2_rodata, global
.hidden gap_03_00001FA2_rodata
	.2byte 0x0000
.endobj gap_03_00001FA2_rodata

# .rodata:0x6CC | 0x1FA4 | size: 0xE
.obj str_stg4_usu_49_2_usu_000057e4, local
	.string "stg4_usu_49_2"
.endobj str_stg4_usu_49_2_usu_000057e4

# .rodata:0x6DA | 0x1FB2 | size: 0x2
.obj gap_03_00001FB2_rodata, global
.hidden gap_03_00001FB2_rodata
	.2byte 0x0000
.endobj gap_03_00001FB2_rodata

# .rodata:0x6DC | 0x1FB4 | size: 0x10
.obj str_stg4_usu_49_2_1_usu_000057f4, local
	.string "stg4_usu_49_2_1"
.endobj str_stg4_usu_49_2_1_usu_000057f4

# .rodata:0x6EC | 0x1FC4 | size: 0xD
.obj str_ブタ３人娘Ａ_usu_00005804, local
	.4byte 0x8375835E
	.4byte 0x8252906C
	.4byte 0x96BA8260
	.byte 0x00
.endobj str_ブタ３人娘Ａ_usu_00005804

# .rodata:0x6F9 | 0x1FD1 | size: 0x3
.obj gap_03_00001FD1_rodata, global
.hidden gap_03_00001FD1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001FD1_rodata

# .rodata:0x6FC | 0x1FD4 | size: 0x12
.obj str_stg4_usu_148_1_01_usu_00005814, local
	.string "stg4_usu_148_1_01"
.endobj str_stg4_usu_148_1_01_usu_00005814

# .rodata:0x70E | 0x1FE6 | size: 0x2
.obj gap_03_00001FE6_rodata, global
.hidden gap_03_00001FE6_rodata
	.2byte 0x0000
.endobj gap_03_00001FE6_rodata

# .rodata:0x710 | 0x1FE8 | size: 0xD
.obj str_ブタ３人娘Ｂ_usu_00005828, local
	.4byte 0x8375835E
	.4byte 0x8252906C
	.4byte 0x96BA8261
	.byte 0x00
.endobj str_ブタ３人娘Ｂ_usu_00005828

# .rodata:0x71D | 0x1FF5 | size: 0x3
.obj gap_03_00001FF5_rodata, global
.hidden gap_03_00001FF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001FF5_rodata

# .rodata:0x720 | 0x1FF8 | size: 0x12
.obj str_stg4_usu_148_1_02_usu_00005838, local
	.string "stg4_usu_148_1_02"
.endobj str_stg4_usu_148_1_02_usu_00005838

# .rodata:0x732 | 0x200A | size: 0x2
.obj gap_03_0000200A_rodata, global
.hidden gap_03_0000200A_rodata
	.2byte 0x0000
.endobj gap_03_0000200A_rodata

# .rodata:0x734 | 0x200C | size: 0xD
.obj str_ブタ３人娘Ｃ_usu_0000584c, local
	.4byte 0x8375835E
	.4byte 0x8252906C
	.4byte 0x96BA8262
	.byte 0x00
.endobj str_ブタ３人娘Ｃ_usu_0000584c

# .rodata:0x741 | 0x2019 | size: 0x3
.obj gap_03_00002019_rodata, global
.hidden gap_03_00002019_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002019_rodata

# .rodata:0x744 | 0x201C | size: 0x12
.obj str_stg4_usu_148_1_03_usu_0000585c, local
	.string "stg4_usu_148_1_03"
.endobj str_stg4_usu_148_1_03_usu_0000585c

# .rodata:0x756 | 0x202E | size: 0x2
.obj gap_03_0000202E_rodata, global
.hidden gap_03_0000202E_rodata
	.2byte 0x0000
.endobj gap_03_0000202E_rodata

# .rodata:0x758 | 0x2030 | size: 0x12
.obj str_stg4_usu_148_1_04_usu_00005870, local
	.string "stg4_usu_148_1_04"
.endobj str_stg4_usu_148_1_04_usu_00005870

# .rodata:0x76A | 0x2042 | size: 0x2
.obj gap_03_00002042_rodata, global
.hidden gap_03_00002042_rodata
	.2byte 0x0000
.endobj gap_03_00002042_rodata

# .rodata:0x76C | 0x2044 | size: 0x9
.obj str_３人娘Ａ_usu_00005884, local
	.4byte 0x8252906C
	.4byte 0x96BA8260
	.byte 0x00
.endobj str_３人娘Ａ_usu_00005884

# .rodata:0x775 | 0x204D | size: 0x3
.obj gap_03_0000204D_rodata, global
.hidden gap_03_0000204D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000204D_rodata

# .rodata:0x778 | 0x2050 | size: 0x12
.obj str_stg4_usu_148_1_05_usu_00005890, local
	.string "stg4_usu_148_1_05"
.endobj str_stg4_usu_148_1_05_usu_00005890

# .rodata:0x78A | 0x2062 | size: 0x2
.obj gap_03_00002062_rodata, global
.hidden gap_03_00002062_rodata
	.2byte 0x0000
.endobj gap_03_00002062_rodata

# .rodata:0x78C | 0x2064 | size: 0x9
.obj str_３人娘Ｂ_usu_000058a4, local
	.4byte 0x8252906C
	.4byte 0x96BA8261
	.byte 0x00
.endobj str_３人娘Ｂ_usu_000058a4

# .rodata:0x795 | 0x206D | size: 0x3
.obj gap_03_0000206D_rodata, global
.hidden gap_03_0000206D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000206D_rodata

# .rodata:0x798 | 0x2070 | size: 0x12
.obj str_stg4_usu_148_1_06_usu_000058b0, local
	.string "stg4_usu_148_1_06"
.endobj str_stg4_usu_148_1_06_usu_000058b0

# .rodata:0x7AA | 0x2082 | size: 0x2
.obj gap_03_00002082_rodata, global
.hidden gap_03_00002082_rodata
	.2byte 0x0000
.endobj gap_03_00002082_rodata

# .rodata:0x7AC | 0x2084 | size: 0x9
.obj str_３人娘Ｃ_usu_000058c4, local
	.4byte 0x8252906C
	.4byte 0x96BA8262
	.byte 0x00
.endobj str_３人娘Ｃ_usu_000058c4

# .rodata:0x7B5 | 0x208D | size: 0x3
.obj gap_03_0000208D_rodata, global
.hidden gap_03_0000208D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000208D_rodata

# .rodata:0x7B8 | 0x2090 | size: 0xA
.obj str_c_dance_r_usu_000058d0, local
	.string "c_dance_r"
.endobj str_c_dance_r_usu_000058d0

# .rodata:0x7C2 | 0x209A | size: 0x2
.obj gap_03_0000209A_rodata, global
.hidden gap_03_0000209A_rodata
	.2byte 0x0000
.endobj gap_03_0000209A_rodata

# .rodata:0x7C4 | 0x209C | size: 0x7
.obj str_踊り子_usu_000058dc, local
	.4byte 0x977882E8
	.byte 0x8E, 0x71, 0x00
.endobj str_踊り子_usu_000058dc

# .rodata:0x7CB | 0x20A3 | size: 0x1
.obj gap_03_000020A3_rodata, global
.hidden gap_03_000020A3_rodata
	.byte 0x00
.endobj gap_03_000020A3_rodata

# .rodata:0x7CC | 0x20A4 | size: 0xA
.obj str_c_bubusan_usu_000058e4, local
	.string "c_bubusan"
.endobj str_c_bubusan_usu_000058e4

# .rodata:0x7D6 | 0x20AE | size: 0x2
.obj gap_03_000020AE_rodata, global
.hidden gap_03_000020AE_rodata
	.2byte 0x0000
.endobj gap_03_000020AE_rodata

# .rodata:0x7D8 | 0x20B0 | size: 0x5
.obj str_ブタ_usu_000058f0, local
	.4byte 0x8375835E
	.byte 0x00
.endobj str_ブタ_usu_000058f0

# .rodata:0x7DD | 0x20B5 | size: 0x3
.obj gap_03_000020B5_rodata, global
.hidden gap_03_000020B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000020B5_rodata

# .rodata:0x7E0 | 0x20B8 | size: 0xA
.obj str_c_dance_p_usu_000058f8, local
	.string "c_dance_p"
.endobj str_c_dance_p_usu_000058f8

# .rodata:0x7EA | 0x20C2 | size: 0x2
.obj gap_03_000020C2_rodata, global
.hidden gap_03_000020C2_rodata
	.2byte 0x0000
.endobj gap_03_000020C2_rodata

# .rodata:0x7EC | 0x20C4 | size: 0xD
.obj str_踊り子ピンク_usu_00005904, local
	.4byte 0x977882E8
	.4byte 0x8E718373
	.4byte 0x8393834E
	.byte 0x00
.endobj str_踊り子ピンク_usu_00005904

# .rodata:0x7F9 | 0x20D1 | size: 0x3
.obj gap_03_000020D1_rodata, global
.hidden gap_03_000020D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000020D1_rodata

# .rodata:0x7FC | 0x20D4 | size: 0xA
.obj str_c_dance_k_usu_00005914, local
	.string "c_dance_k"
.endobj str_c_dance_k_usu_00005914

# .rodata:0x806 | 0x20DE | size: 0x2
.obj gap_03_000020DE_rodata, global
.hidden gap_03_000020DE_rodata
	.2byte 0x0000
.endobj gap_03_000020DE_rodata

# .rodata:0x808 | 0x20E0 | size: 0xB
.obj str_踊り子黄緑_usu_00005920, local
	.4byte 0x977882E8
	.4byte 0x8E7189A9
	.byte 0x97, 0xCE, 0x00
.endobj str_踊り子黄緑_usu_00005920

# .rodata:0x813 | 0x20EB | size: 0x1
.obj gap_03_000020EB_rodata, global
.hidden gap_03_000020EB_rodata
	.byte 0x00
.endobj gap_03_000020EB_rodata

# .rodata:0x814 | 0x20EC | size: 0x9
.obj str_カラスＦ_usu_0000592c, local
	.4byte 0x834A8389
	.4byte 0x83588265
	.byte 0x00
.endobj str_カラスＦ_usu_0000592c

# .rodata:0x81D | 0x20F5 | size: 0x3
.obj gap_03_000020F5_rodata, global
.hidden gap_03_000020F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000020F5_rodata

# .rodata:0x820 | 0x20F8 | size: 0x9
.obj str_カラスＧ_usu_00005938, local
	.4byte 0x834A8389
	.4byte 0x83588266
	.byte 0x00
.endobj str_カラスＧ_usu_00005938

# .rodata:0x829 | 0x2101 | size: 0x3
.obj gap_03_00002101_rodata, global
.hidden gap_03_00002101_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002101_rodata

# .rodata:0x82C | 0x2104 | size: 0x9
.obj str_カラスＨ_usu_00005944, local
	.4byte 0x834A8389
	.4byte 0x83588267
	.byte 0x00
.endobj str_カラスＨ_usu_00005944

# .rodata:0x835 | 0x210D | size: 0x3
.obj gap_03_0000210D_rodata, global
.hidden gap_03_0000210D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000210D_rodata

# .rodata:0x838 | 0x2110 | size: 0x9
.obj str_カラスＩ_usu_00005950, local
	.4byte 0x834A8389
	.4byte 0x83588268
	.byte 0x00
.endobj str_カラスＩ_usu_00005950

# .rodata:0x841 | 0x2119 | size: 0x3
.obj gap_03_00002119_rodata, global
.hidden gap_03_00002119_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002119_rodata

# .rodata:0x844 | 0x211C | size: 0x9
.obj str_カラスＪ_usu_0000595c, local
	.4byte 0x834A8389
	.4byte 0x83588269
	.byte 0x00
.endobj str_カラスＪ_usu_0000595c

# .rodata:0x84D | 0x2125 | size: 0x3
.obj gap_03_00002125_rodata, global
.hidden gap_03_00002125_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002125_rodata

# .rodata:0x850 | 0x2128 | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_usu_00005968, local
	.string "SFX_VOICE_MARIO_FIND1_3"
.endobj str_SFX_VOICE_MARIO_FIND_usu_00005968

# .rodata:0x868 | 0x2140 | size: 0x1
.obj zero_usu_00005980, local
	.byte 0x00
.endobj zero_usu_00005980

# .rodata:0x869 | 0x2141 | size: 0x3
.obj gap_03_00002141_rodata, global
.hidden gap_03_00002141_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002141_rodata

# .rodata:0x86C | 0x2144 | size: 0xC
.obj str_stg4_usu_50_usu_00005984, local
	.string "stg4_usu_50"
.endobj str_stg4_usu_50_usu_00005984

# .rodata:0x878 | 0x2150 | size: 0xF
.obj str_stg4_usu_45_02_usu_00005990, local
	.string "stg4_usu_45_02"
.endobj str_stg4_usu_45_02_usu_00005990

# .rodata:0x887 | 0x215F | size: 0x1
.obj gap_03_0000215F_rodata, global
.hidden gap_03_0000215F_rodata
	.byte 0x00
.endobj gap_03_0000215F_rodata

# .rodata:0x888 | 0x2160 | size: 0x9
.obj str_S_monato_usu_000059a0, local
	.string "S_monato"
.endobj str_S_monato_usu_000059a0

# .rodata:0x891 | 0x2169 | size: 0x3
.obj gap_03_00002169_rodata, global
.hidden gap_03_00002169_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002169_rodata

# .rodata:0x894 | 0x216C | size: 0x8
.obj str_S_mon01_usu_000059ac, local
	.string "S_mon01"
.endobj str_S_mon01_usu_000059ac

# .rodata:0x89C | 0x2174 | size: 0x15
.obj str_SFX_STG4_FENCE_OPEN1_usu_000059b4, local
	.string "SFX_STG4_FENCE_OPEN1"
.endobj str_SFX_STG4_FENCE_OPEN1_usu_000059b4

# .rodata:0x8B1 | 0x2189 | size: 0x3
.obj gap_03_00002189_rodata, global
.hidden gap_03_00002189_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002189_rodata

# .rodata:0x8B4 | 0x218C | size: 0x8
.obj str_S_mon02_usu_000059cc, local
	.string "S_mon02"
.endobj str_S_mon02_usu_000059cc

# .rodata:0x8BC | 0x2194 | size: 0x6
.obj str_A_mon_usu_000059d4, local
	.string "A_mon"
.endobj str_A_mon_usu_000059d4

# .rodata:0x8C2 | 0x219A | size: 0x2
.obj gap_03_0000219A_rodata, global
.hidden gap_03_0000219A_rodata
	.2byte 0x0000
.endobj gap_03_0000219A_rodata

# .rodata:0x8C4 | 0x219C | size: 0x8
.obj str_A_mon02_usu_000059dc, local
	.string "A_mon02"
.endobj str_A_mon02_usu_000059dc

# .rodata:0x8CC | 0x21A4 | size: 0x14
.obj str_SFX_STG4_CROW_HOWL1_usu_000059e4, local
	.string "SFX_STG4_CROW_HOWL1"
.endobj str_SFX_STG4_CROW_HOWL1_usu_000059e4

# .rodata:0x8E0 | 0x21B8 | size: 0xD
.obj str_stg4_jin_153_usu_000059f8, local
	.string "stg4_jin_153"
.endobj str_stg4_jin_153_usu_000059f8

# .rodata:0x8ED | 0x21C5 | size: 0x3
.obj gap_03_000021C5_rodata, global
.hidden gap_03_000021C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021C5_rodata

# .rodata:0x8F0 | 0x21C8 | size: 0xD
.obj str_stg4_usu_137_usu_00005a08, local
	.string "stg4_usu_137"
.endobj str_stg4_usu_137_usu_00005a08

# .rodata:0x8FD | 0x21D5 | size: 0x3
.obj gap_03_000021D5_rodata, global
.hidden gap_03_000021D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021D5_rodata

# .rodata:0x900 | 0x21D8 | size: 0xD
.obj str_stg4_usu_138_usu_00005a18, local
	.string "stg4_usu_138"
.endobj str_stg4_usu_138_usu_00005a18

# .rodata:0x90D | 0x21E5 | size: 0x3
.obj gap_03_000021E5_rodata, global
.hidden gap_03_000021E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021E5_rodata

# .rodata:0x910 | 0x21E8 | size: 0xD
.obj str_stg4_usu_139_usu_00005a28, local
	.string "stg4_usu_139"
.endobj str_stg4_usu_139_usu_00005a28

# .rodata:0x91D | 0x21F5 | size: 0x3
.obj gap_03_000021F5_rodata, global
.hidden gap_03_000021F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021F5_rodata

# .rodata:0x920 | 0x21F8 | size: 0xD
.obj str_stg4_usu_140_usu_00005a38, local
	.string "stg4_usu_140"
.endobj str_stg4_usu_140_usu_00005a38

# .rodata:0x92D | 0x2205 | size: 0x3
.obj gap_03_00002205_rodata, global
.hidden gap_03_00002205_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002205_rodata

# .rodata:0x930 | 0x2208 | size: 0xD
.obj str_stg4_usu_149_usu_00005a48, local
	.string "stg4_usu_149"
.endobj str_stg4_usu_149_usu_00005a48

# .rodata:0x93D | 0x2215 | size: 0x3
.obj gap_03_00002215_rodata, global
.hidden gap_03_00002215_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002215_rodata

# .rodata:0x940 | 0x2218 | size: 0xD
.obj str_stg4_usu_150_usu_00005a58, local
	.string "stg4_usu_150"
.endobj str_stg4_usu_150_usu_00005a58

# .rodata:0x94D | 0x2225 | size: 0x3
.obj gap_03_00002225_rodata, global
.hidden gap_03_00002225_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002225_rodata

# .rodata:0x950 | 0x2228 | size: 0xD
.obj str_stg4_usu_141_usu_00005a68, local
	.string "stg4_usu_141"
.endobj str_stg4_usu_141_usu_00005a68

# .rodata:0x95D | 0x2235 | size: 0x3
.obj gap_03_00002235_rodata, global
.hidden gap_03_00002235_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002235_rodata

# .rodata:0x960 | 0x2238 | size: 0xD
.obj str_stg4_usu_142_usu_00005a78, local
	.string "stg4_usu_142"
.endobj str_stg4_usu_142_usu_00005a78

# .rodata:0x96D | 0x2245 | size: 0x3
.obj gap_03_00002245_rodata, global
.hidden gap_03_00002245_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002245_rodata

# .rodata:0x970 | 0x2248 | size: 0xF
.obj str_stg4_usu_142_1_usu_00005a88, local
	.string "stg4_usu_142_1"
.endobj str_stg4_usu_142_1_usu_00005a88

# .rodata:0x97F | 0x2257 | size: 0x1
.obj gap_03_00002257_rodata, global
.hidden gap_03_00002257_rodata
	.byte 0x00
.endobj gap_03_00002257_rodata

# .rodata:0x980 | 0x2258 | size: 0xF
.obj str_stg4_usu_142_2_usu_00005a98, local
	.string "stg4_usu_142_2"
.endobj str_stg4_usu_142_2_usu_00005a98

# .rodata:0x98F | 0x2267 | size: 0x1
.obj gap_03_00002267_rodata, global
.hidden gap_03_00002267_rodata
	.byte 0x00
.endobj gap_03_00002267_rodata

# .rodata:0x990 | 0x2268 | size: 0x11
.obj str_stg4_usu_142_2_1_usu_00005aa8, local
	.string "stg4_usu_142_2_1"
.endobj str_stg4_usu_142_2_1_usu_00005aa8

# .rodata:0x9A1 | 0x2279 | size: 0x3
.obj gap_03_00002279_rodata, global
.hidden gap_03_00002279_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002279_rodata

# .rodata:0x9A4 | 0x227C | size: 0x11
.obj str_stg4_usu_142_2_2_usu_00005abc, local
	.string "stg4_usu_142_2_2"
.endobj str_stg4_usu_142_2_2_usu_00005abc

# .rodata:0x9B5 | 0x228D | size: 0x3
.obj gap_03_0000228D_rodata, global
.hidden gap_03_0000228D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000228D_rodata

# .rodata:0x9B8 | 0x2290 | size: 0xD
.obj str_stg4_usu_143_usu_00005ad0, local
	.string "stg4_usu_143"
.endobj str_stg4_usu_143_usu_00005ad0

# .rodata:0x9C5 | 0x229D | size: 0x3
.obj gap_03_0000229D_rodata, global
.hidden gap_03_0000229D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000229D_rodata

# .rodata:0x9C8 | 0x22A0 | size: 0xD
.obj str_stg4_usu_144_usu_00005ae0, local
	.string "stg4_usu_144"
.endobj str_stg4_usu_144_usu_00005ae0

# .rodata:0x9D5 | 0x22AD | size: 0x3
.obj gap_03_000022AD_rodata, global
.hidden gap_03_000022AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000022AD_rodata

# .rodata:0x9D8 | 0x22B0 | size: 0xD
.obj str_stg4_usu_145_usu_00005af0, local
	.string "stg4_usu_145"
.endobj str_stg4_usu_145_usu_00005af0

# .rodata:0x9E5 | 0x22BD | size: 0x3
.obj gap_03_000022BD_rodata, global
.hidden gap_03_000022BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000022BD_rodata

# .rodata:0x9E8 | 0x22C0 | size: 0xD
.obj str_stg4_usu_146_usu_00005b00, local
	.string "stg4_usu_146"
.endobj str_stg4_usu_146_usu_00005b00

# .rodata:0x9F5 | 0x22CD | size: 0x3
.obj gap_03_000022CD_rodata, global
.hidden gap_03_000022CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000022CD_rodata

# .rodata:0x9F8 | 0x22D0 | size: 0xF
.obj str_stg4_usu_146_1_usu_00005b10, local
	.string "stg4_usu_146_1"
.endobj str_stg4_usu_146_1_usu_00005b10

# .rodata:0xA07 | 0x22DF | size: 0x1
.obj gap_03_000022DF_rodata, global
.hidden gap_03_000022DF_rodata
	.byte 0x00
.endobj gap_03_000022DF_rodata

# .rodata:0xA08 | 0x22E0 | size: 0xF
.obj str_stg4_usu_146_2_usu_00005b20, local
	.string "stg4_usu_146_2"
.endobj str_stg4_usu_146_2_usu_00005b20

# .rodata:0xA17 | 0x22EF | size: 0x1
.obj gap_03_000022EF_rodata, global
.hidden gap_03_000022EF_rodata
	.byte 0x00
.endobj gap_03_000022EF_rodata

# .rodata:0xA18 | 0x22F0 | size: 0x11
.obj str_stg4_usu_146_2_1_usu_00005b30, local
	.string "stg4_usu_146_2_1"
.endobj str_stg4_usu_146_2_1_usu_00005b30

# .rodata:0xA29 | 0x2301 | size: 0x3
.obj gap_03_00002301_rodata, global
.hidden gap_03_00002301_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002301_rodata

# .rodata:0xA2C | 0x2304 | size: 0x11
.obj str_stg4_usu_146_2_2_usu_00005b44, local
	.string "stg4_usu_146_2_2"
.endobj str_stg4_usu_146_2_2_usu_00005b44

# .rodata:0xA3D | 0x2315 | size: 0x3
.obj gap_03_00002315_rodata, global
.hidden gap_03_00002315_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002315_rodata

# .rodata:0xA40 | 0x2318 | size: 0xD
.obj str_stg4_usu_147_usu_00005b58, local
	.string "stg4_usu_147"
.endobj str_stg4_usu_147_usu_00005b58

# .rodata:0xA4D | 0x2325 | size: 0x3
.obj gap_03_00002325_rodata, global
.hidden gap_03_00002325_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002325_rodata

# .rodata:0xA50 | 0x2328 | size: 0xD
.obj str_stg4_usu_148_usu_00005b68, local
	.string "stg4_usu_148"
.endobj str_stg4_usu_148_usu_00005b68

# .rodata:0xA5D | 0x2335 | size: 0x3
.obj gap_03_00002335_rodata, global
.hidden gap_03_00002335_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002335_rodata

# .rodata:0xA60 | 0x2338 | size: 0xF
.obj str_stg4_usu_148_1_usu_00005b78, local
	.string "stg4_usu_148_1"
.endobj str_stg4_usu_148_1_usu_00005b78

# .rodata:0xA6F | 0x2347 | size: 0x1
.obj gap_03_00002347_rodata, global
.hidden gap_03_00002347_rodata
	.byte 0x00
.endobj gap_03_00002347_rodata

# .rodata:0xA70 | 0x2348 | size: 0x11
.obj str_stg4_usu_148_1_1_usu_00005b88, local
	.string "stg4_usu_148_1_1"
.endobj str_stg4_usu_148_1_1_usu_00005b88

# .rodata:0xA81 | 0x2359 | size: 0x3
.obj gap_03_00002359_rodata, global
.hidden gap_03_00002359_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002359_rodata

# .rodata:0xA84 | 0x235C | size: 0x9
.obj str_ペラ魔人_usu_00005b9c, local
	.4byte 0x83798389
	.4byte 0x9682906C
	.byte 0x00
.endobj str_ペラ魔人_usu_00005b9c

# .rodata:0xA8D | 0x2365 | size: 0x3
.obj gap_03_00002365_rodata, global
.hidden gap_03_00002365_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002365_rodata

# .rodata:0xA90 | 0x2368 | size: 0xC
.obj str_usu_00_lock_usu_00005ba8, local
	.string "usu_00_lock"
.endobj str_usu_00_lock_usu_00005ba8

# .rodata:0xA9C | 0x2374 | size: 0x9
.obj str_pera_box_usu_00005bb4, local
	.string "pera_box"
.endobj str_pera_box_usu_00005bb4

# .rodata:0xAA5 | 0x237D | size: 0x3
.obj gap_03_0000237D_rodata, global
.hidden gap_03_0000237D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000237D_rodata

# .rodata:0xAA8 | 0x2380 | size: 0xB
.obj str_mobj_box00_usu_00005bc0, local
	.string "mobj_box00"
.endobj str_mobj_box00_usu_00005bc0

# .rodata:0xAB3 | 0x238B | size: 0x1
.obj gap_03_0000238B_rodata, global
.hidden gap_03_0000238B_rodata
	.byte 0x00
.endobj gap_03_0000238B_rodata

# .rodata:0xAB4 | 0x238C | size: 0x8
.obj str_item_02_usu_00005bcc, local
	.string "item_02"
.endobj str_item_02_usu_00005bcc

# .rodata:0xABC | 0x2394 | size: 0x8
.obj str_item_03_usu_00005bd4, local
	.string "item_03"
.endobj str_item_03_usu_00005bd4

# .rodata:0xAC4 | 0x239C | size: 0x8
.obj str_item_04_usu_00005bdc, local
	.string "item_04"
.endobj str_item_04_usu_00005bdc

# .rodata:0xACC | 0x23A4 | size: 0x8
.obj str_item_05_usu_00005be4, local
	.string "item_05"
.endobj str_item_05_usu_00005be4

# .rodata:0xAD4 | 0x23AC | size: 0x11
.obj str_S_usu01_ie1_door_usu_00005bec, local
	.string "S_usu01_ie1_door"
.endobj str_S_usu01_ie1_door_usu_00005bec

# .rodata:0xAE5 | 0x23BD | size: 0x3
.obj gap_03_000023BD_rodata, global
.hidden gap_03_000023BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023BD_rodata

# .rodata:0xAE8 | 0x23C0 | size: 0x11
.obj str_S_usu01_ie1_kai1_usu_00005c00, local
	.string "S_usu01_ie1_kai1"
.endobj str_S_usu01_ie1_kai1_usu_00005c00

# .rodata:0xAF9 | 0x23D1 | size: 0x3
.obj gap_03_000023D1_rodata, global
.hidden gap_03_000023D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023D1_rodata

# .rodata:0xAFC | 0x23D4 | size: 0x11
.obj str_S_usu01_ie1_kai2_usu_00005c14, local
	.string "S_usu01_ie1_kai2"
.endobj str_S_usu01_ie1_kai2_usu_00005c14

# .rodata:0xB0D | 0x23E5 | size: 0x3
.obj gap_03_000023E5_rodata, global
.hidden gap_03_000023E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023E5_rodata

# .rodata:0xB10 | 0x23E8 | size: 0x9
.obj str_A_door46_usu_00005c28, local
	.string "A_door46"
.endobj str_A_door46_usu_00005c28

# .rodata:0xB19 | 0x23F1 | size: 0x3
.obj gap_03_000023F1_rodata, global
.hidden gap_03_000023F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023F1_rodata

# .rodata:0xB1C | 0x23F4 | size: 0x9
.obj str_A_door45_usu_00005c34, local
	.string "A_door45"
.endobj str_A_door45_usu_00005c34

# .rodata:0xB25 | 0x23FD | size: 0x3
.obj gap_03_000023FD_rodata, global
.hidden gap_03_000023FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023FD_rodata

# .rodata:0xB28 | 0x2400 | size: 0xC
.obj str_S_usu01_ie1_usu_00005c40, local
	.string "S_usu01_ie1"
.endobj str_S_usu01_ie1_usu_00005c40

# .rodata:0xB34 | 0x240C | size: 0x11
.obj str_S_usu01_ie1_naka_usu_00005c4c, local
	.string "S_usu01_ie1_naka"
.endobj str_S_usu01_ie1_naka_usu_00005c4c

# .rodata:0xB45 | 0x241D | size: 0x3
.obj gap_03_0000241D_rodata, global
.hidden gap_03_0000241D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000241D_rodata

# .rodata:0xB48 | 0x2420 | size: 0x12
.obj str_S_usu01_ie2_door1_usu_00005c60, local
	.string "S_usu01_ie2_door1"
.endobj str_S_usu01_ie2_door1_usu_00005c60

# .rodata:0xB5A | 0x2432 | size: 0x2
.obj gap_03_00002432_rodata, global
.hidden gap_03_00002432_rodata
	.2byte 0x0000
.endobj gap_03_00002432_rodata

# .rodata:0xB5C | 0x2434 | size: 0x11
.obj str_S_usu01_ie2_kai1_usu_00005c74, local
	.string "S_usu01_ie2_kai1"
.endobj str_S_usu01_ie2_kai1_usu_00005c74

# .rodata:0xB6D | 0x2445 | size: 0x3
.obj gap_03_00002445_rodata, global
.hidden gap_03_00002445_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002445_rodata

# .rodata:0xB70 | 0x2448 | size: 0x11
.obj str_S_usu01_ie2_kai2_usu_00005c88, local
	.string "S_usu01_ie2_kai2"
.endobj str_S_usu01_ie2_kai2_usu_00005c88

# .rodata:0xB81 | 0x2459 | size: 0x3
.obj gap_03_00002459_rodata, global
.hidden gap_03_00002459_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002459_rodata

# .rodata:0xB84 | 0x245C | size: 0xE
.obj str_stg4_usu_61_3_usu_00005c9c, local
	.string "stg4_usu_61_3"
.endobj str_stg4_usu_61_3_usu_00005c9c

# .rodata:0xB92 | 0x246A | size: 0x2
.obj gap_03_0000246A_rodata, global
.hidden gap_03_0000246A_rodata
	.2byte 0x0000
.endobj gap_03_0000246A_rodata

# .rodata:0xB94 | 0x246C | size: 0xE
.obj str_stg4_usu_61_4_usu_00005cac, local
	.string "stg4_usu_61_4"
.endobj str_stg4_usu_61_4_usu_00005cac

# .rodata:0xBA2 | 0x247A | size: 0x2
.obj gap_03_0000247A_rodata, global
.hidden gap_03_0000247A_rodata
	.2byte 0x0000
.endobj gap_03_0000247A_rodata

# .rodata:0xBA4 | 0x247C | size: 0xC
.obj str_S_usu01_ie3_usu_00005cbc, local
	.string "S_usu01_ie3"
.endobj str_S_usu01_ie3_usu_00005cbc

# .rodata:0xBB0 | 0x2488 | size: 0xE
.obj str_stg4_usu_61_1_usu_00005cc8, local
	.string "stg4_usu_61_1"
.endobj str_stg4_usu_61_1_usu_00005cc8

# .rodata:0xBBE | 0x2496 | size: 0x2
.obj gap_03_00002496_rodata, global
.hidden gap_03_00002496_rodata
	.2byte 0x0000
.endobj gap_03_00002496_rodata

# .rodata:0xBC0 | 0x2498 | size: 0xE
.obj str_stg4_usu_61_2_usu_00005cd8, local
	.string "stg4_usu_61_2"
.endobj str_stg4_usu_61_2_usu_00005cd8

# .rodata:0xBCE | 0x24A6 | size: 0x2
.obj gap_03_000024A6_rodata, global
.hidden gap_03_000024A6_rodata
	.2byte 0x0000
.endobj gap_03_000024A6_rodata

# .rodata:0xBD0 | 0x24A8 | size: 0x14
.obj str_A_usu01_ie2_door2_u_usu_00005ce8, local
	.string "A_usu01_ie2_door2_u"
.endobj str_A_usu01_ie2_door2_u_usu_00005ce8

# .rodata:0xBE4 | 0x24BC | size: 0x12
.obj str_A_usu01_ie2_door2_usu_00005cfc, local
	.string "A_usu01_ie2_door2"
.endobj str_A_usu01_ie2_door2_usu_00005cfc

# .rodata:0xBF6 | 0x24CE | size: 0x2
.obj gap_03_000024CE_rodata, global
.hidden gap_03_000024CE_rodata
	.2byte 0x0000
.endobj gap_03_000024CE_rodata

# .rodata:0xBF8 | 0x24D0 | size: 0xC
.obj str_S_usu01_ie2_usu_00005d10, local
	.string "S_usu01_ie2"
.endobj str_S_usu01_ie2_usu_00005d10

# .rodata:0xC04 | 0x24DC | size: 0x11
.obj str_S_usu01_ie2_naka_usu_00005d1c, local
	.string "S_usu01_ie2_naka"
.endobj str_S_usu01_ie2_naka_usu_00005d1c

# .rodata:0xC15 | 0x24ED | size: 0x3
.obj gap_03_000024ED_rodata, global
.hidden gap_03_000024ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000024ED_rodata

# .rodata:0xC18 | 0x24F0 | size: 0x14
.obj lbl_27_rodata_24F0, global
	.4byte str_お店の奥さん_usu_00005340
	.4byte str_キザ野郎_usu_0000541c
	.4byte str_ブタキザ野郎_usu_00005428
	.4byte str_店の主人_usu_00005304
	.4byte 0x00000000
.endobj lbl_27_rodata_24F0

# .rodata:0xC2C | 0x2504 | size: 0x8
.obj lbl_27_rodata_2504, global
	.4byte str_ペラ魔人_usu_00005b9c
	.4byte 0x00000000
.endobj lbl_27_rodata_2504

# .rodata:0xC34 | 0x250C | size: 0x14
.obj lbl_27_rodata_250C, global
	.4byte str_お店の奥さん_usu_00005340
	.4byte str_キザ野郎_usu_0000541c
	.4byte str_ブタキザ野郎_usu_00005428
	.4byte str_店の主人_usu_00005304
	.4byte 0x00000000
.endobj lbl_27_rodata_250C

# .rodata:0xC48 | 0x2520 | size: 0x8
.obj lbl_27_rodata_2520, global
	.4byte str_ペラ魔人_usu_00005b9c
	.4byte 0x00000000
.endobj lbl_27_rodata_2520

# .rodata:0xC50 | 0x2528 | size: 0x12
.obj str_S_usu01_ie2_naka2_usu_00005d68, local
	.string "S_usu01_ie2_naka2"
.endobj str_S_usu01_ie2_naka2_usu_00005d68

# .rodata:0xC62 | 0x253A | size: 0x2
.obj gap_03_0000253A_rodata, global
.hidden gap_03_0000253A_rodata
	.2byte 0x0000
.endobj gap_03_0000253A_rodata

# .rodata:0xC64 | 0x253C | size: 0x14
.obj str_SFX_DOOR_OPEN_WOOD1_usu_00005d7c, local
	.string "SFX_DOOR_OPEN_WOOD1"
.endobj str_SFX_DOOR_OPEN_WOOD1_usu_00005d7c

# .rodata:0xC78 | 0x2550 | size: 0x12
.obj str_S_usu01_ie2_door3_usu_00005d90, local
	.string "S_usu01_ie2_door3"
.endobj str_S_usu01_ie2_door3_usu_00005d90

# .rodata:0xC8A | 0x2562 | size: 0x2
.obj gap_03_00002562_rodata, global
.hidden gap_03_00002562_rodata
	.2byte 0x0000
.endobj gap_03_00002562_rodata

# .rodata:0xC8C | 0x2564 | size: 0x14
.obj str_SFX_DOOR_SHUT_WOOD1_usu_00005da4, local
	.string "SFX_DOOR_SHUT_WOOD1"
.endobj str_SFX_DOOR_SHUT_WOOD1_usu_00005da4

# .rodata:0xCA0 | 0x2578 | size: 0xF
.obj str_SFX_WALL_MOVE1_usu_00005db8, local
	.string "SFX_WALL_MOVE1"
.endobj str_SFX_WALL_MOVE1_usu_00005db8

# .rodata:0xCAF | 0x2587 | size: 0x1
.obj gap_03_00002587_rodata, global
.hidden gap_03_00002587_rodata
	.byte 0x00
.endobj gap_03_00002587_rodata

# .rodata:0xCB0 | 0x2588 | size: 0x12
.obj str_S_usu01_ie2_mkabe_usu_00005dc8, local
	.string "S_usu01_ie2_mkabe"
.endobj str_S_usu01_ie2_mkabe_usu_00005dc8

# .rodata:0xCC2 | 0x259A | size: 0x2
.obj gap_03_0000259A_rodata, global
.hidden gap_03_0000259A_rodata
	.2byte 0x0000
.endobj gap_03_0000259A_rodata

# .rodata:0xCC4 | 0x259C | size: 0xF
.obj str_SFX_DOOR_FALL1_usu_00005ddc, local
	.string "SFX_DOOR_FALL1"
.endobj str_SFX_DOOR_FALL1_usu_00005ddc

# .rodata:0xCD3 | 0x25AB | size: 0x1
.obj gap_03_000025AB_rodata, global
.hidden gap_03_000025AB_rodata
	.byte 0x00
.endobj gap_03_000025AB_rodata

# .rodata:0xCD4 | 0x25AC | size: 0x11
.obj str_S_usu01_ie3_door_usu_00005dec, local
	.string "S_usu01_ie3_door"
.endobj str_S_usu01_ie3_door_usu_00005dec

# .rodata:0xCE5 | 0x25BD | size: 0x3
.obj gap_03_000025BD_rodata, global
.hidden gap_03_000025BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025BD_rodata

# .rodata:0xCE8 | 0x25C0 | size: 0x11
.obj str_S_usu01_ie3_kai1_usu_00005e00, local
	.string "S_usu01_ie3_kai1"
.endobj str_S_usu01_ie3_kai1_usu_00005e00

# .rodata:0xCF9 | 0x25D1 | size: 0x3
.obj gap_03_000025D1_rodata, global
.hidden gap_03_000025D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025D1_rodata

# .rodata:0xCFC | 0x25D4 | size: 0x11
.obj str_S_usu01_ie3_kai2_usu_00005e14, local
	.string "S_usu01_ie3_kai2"
.endobj str_S_usu01_ie3_kai2_usu_00005e14

# .rodata:0xD0D | 0x25E5 | size: 0x3
.obj gap_03_000025E5_rodata, global
.hidden gap_03_000025E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025E5_rodata

# .rodata:0xD10 | 0x25E8 | size: 0x7
.obj str_item01_usu_00005e28, local
	.string "item01"
.endobj str_item01_usu_00005e28

# .rodata:0xD17 | 0x25EF | size: 0x1
.obj gap_03_000025EF_rodata, global
.hidden gap_03_000025EF_rodata
	.byte 0x00
.endobj gap_03_000025EF_rodata

# .rodata:0xD18 | 0x25F0 | size: 0x13
.obj str_A_usu01_ie3_doaa_u_usu_00005e30, local
	.string "A_usu01_ie3_doaa_u"
.endobj str_A_usu01_ie3_doaa_u_usu_00005e30

# .rodata:0xD2B | 0x2603 | size: 0x1
.obj gap_03_00002603_rodata, global
.hidden gap_03_00002603_rodata
	.byte 0x00
.endobj gap_03_00002603_rodata

# .rodata:0xD2C | 0x2604 | size: 0x11
.obj str_A_usu01_ie3_doaa_usu_00005e44, local
	.string "A_usu01_ie3_doaa"
.endobj str_A_usu01_ie3_doaa_usu_00005e44

# .rodata:0xD3D | 0x2615 | size: 0x3
.obj gap_03_00002615_rodata, global
.hidden gap_03_00002615_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002615_rodata

# .rodata:0xD40 | 0x2618 | size: 0x11
.obj str_S_usu01_ie3_naka_usu_00005e58, local
	.string "S_usu01_ie3_naka"
.endobj str_S_usu01_ie3_naka_usu_00005e58

# .rodata:0xD51 | 0x2629 | size: 0x3
.obj gap_03_00002629_rodata, global
.hidden gap_03_00002629_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002629_rodata

# .rodata:0xD54 | 0x262C | size: 0x7
.obj str_gra_00_usu_00005e6c, local
	.string "gra_00"
.endobj str_gra_00_usu_00005e6c

# .rodata:0xD5B | 0x2633 | size: 0x1
.obj gap_03_00002633_rodata, global
.hidden gap_03_00002633_rodata
	.byte 0x00
.endobj gap_03_00002633_rodata

# .rodata:0xD5C | 0x2634 | size: 0x7
.obj str_w_bero_usu_00005e74, local
	.string "w_bero"
.endobj str_w_bero_usu_00005e74

# .rodata:0xD63 | 0x263B | size: 0x1
.obj gap_03_0000263B_rodata, global
.hidden gap_03_0000263B_rodata
	.byte 0x00
.endobj gap_03_0000263B_rodata

# .rodata:0xD64 | 0x263C | size: 0x7
.obj str_usu_00_usu_00005e7c, local
	.string "usu_00"
.endobj str_usu_00_usu_00005e7c

# .rodata:0xD6B | 0x2643 | size: 0x1
.obj gap_03_00002643_rodata, global
.hidden gap_03_00002643_rodata
	.byte 0x00
.endobj gap_03_00002643_rodata

# .rodata:0xD6C | 0x2644 | size: 0xC
.obj str_stg4_usu_51_usu_00005e84, local
	.string "stg4_usu_51"
.endobj str_stg4_usu_51_usu_00005e84

# .rodata:0xD78 | 0x2650 | size: 0x1B
.obj str_SFX_VOICE_MARIO_SURP_usu_00005e90, local
	.string "SFX_VOICE_MARIO_SURPRISED2"
.endobj str_SFX_VOICE_MARIO_SURP_usu_00005e90

# .rodata:0xD93 | 0x266B | size: 0x1
.obj gap_03_0000266B_rodata, global
.hidden gap_03_0000266B_rodata
	.byte 0x00
.endobj gap_03_0000266B_rodata

# .rodata:0xD94 | 0x266C | size: 0xC
.obj str_stg4_usu_47_usu_00005eac, local
	.string "stg4_usu_47"
.endobj str_stg4_usu_47_usu_00005eac

# .rodata:0xDA0 | 0x2678 | size: 0xC
.obj str_stg4_usu_57_usu_00005eb8, local
	.string "stg4_usu_57"
.endobj str_stg4_usu_57_usu_00005eb8

# .rodata:0xDAC | 0x2684 | size: 0x12
.obj str_A_usu01_ie2_door3_usu_00005ec4, local
	.string "A_usu01_ie2_door3"
.endobj str_A_usu01_ie2_door3_usu_00005ec4

# .rodata:0xDBE | 0x2696 | size: 0x2
.obj gap_03_00002696_rodata, global
.hidden gap_03_00002696_rodata
	.2byte 0x0000
.endobj gap_03_00002696_rodata

# .rodata:0xDC0 | 0x2698 | size: 0xF
.obj str_mi02_S_item_01_usu_00005ed8, local
	.string "mi02_S_item_01"
.endobj str_mi02_S_item_01_usu_00005ed8

# .rodata:0xDCF | 0x26A7 | size: 0x1
.obj gap_03_000026A7_rodata, global
.hidden gap_03_000026A7_rodata
	.byte 0x00
.endobj gap_03_000026A7_rodata

# .rodata:0xDD0 | 0x26A8 | size: 0xA
.obj str_A_item_01_usu_00005ee8, local
	.string "A_item_01"
.endobj str_A_item_01_usu_00005ee8

# .rodata:0xDDA | 0x26B2 | size: 0x2
.obj gap_03_000026B2_rodata, global
.hidden gap_03_000026B2_rodata
	.2byte 0x0000
.endobj gap_03_000026B2_rodata

# .rodata:0xDDC | 0x26B4 | size: 0x14
.obj str_mi02_mi02_S_item_02_usu_00005ef4, local
	.string "mi02_mi02_S_item_02"
.endobj str_mi02_mi02_S_item_02_usu_00005ef4

# .rodata:0xDF0 | 0x26C8 | size: 0xA
.obj str_A_item_02_usu_00005f08, local
	.string "A_item_02"
.endobj str_A_item_02_usu_00005f08

# .rodata:0xDFA | 0x26D2 | size: 0x2
.obj gap_03_000026D2_rodata, global
.hidden gap_03_000026D2_rodata
	.2byte 0x0000
.endobj gap_03_000026D2_rodata

# .rodata:0xDFC | 0x26D4 | size: 0xF
.obj str_mi02_S_item_03_usu_00005f14, local
	.string "mi02_S_item_03"
.endobj str_mi02_S_item_03_usu_00005f14

# .rodata:0xE0B | 0x26E3 | size: 0x1
.obj gap_03_000026E3_rodata, global
.hidden gap_03_000026E3_rodata
	.byte 0x00
.endobj gap_03_000026E3_rodata

# .rodata:0xE0C | 0x26E4 | size: 0xA
.obj str_A_item_03_usu_00005f24, local
	.string "A_item_03"
.endobj str_A_item_03_usu_00005f24

# .rodata:0xE16 | 0x26EE | size: 0x2
.obj gap_03_000026EE_rodata, global
.hidden gap_03_000026EE_rodata
	.2byte 0x0000
.endobj gap_03_000026EE_rodata

# .rodata:0xE18 | 0x26F0 | size: 0xF
.obj str_mi02_S_item_04_usu_00005f30, local
	.string "mi02_S_item_04"
.endobj str_mi02_S_item_04_usu_00005f30

# .rodata:0xE27 | 0x26FF | size: 0x1
.obj gap_03_000026FF_rodata, global
.hidden gap_03_000026FF_rodata
	.byte 0x00
.endobj gap_03_000026FF_rodata

# .rodata:0xE28 | 0x2700 | size: 0xA
.obj str_A_item_04_usu_00005f40, local
	.string "A_item_04"
.endobj str_A_item_04_usu_00005f40

# .rodata:0xE32 | 0x270A | size: 0x2
.obj gap_03_0000270A_rodata, global
.hidden gap_03_0000270A_rodata
	.2byte 0x0000
.endobj gap_03_0000270A_rodata

# .rodata:0xE34 | 0x270C | size: 0xF
.obj str_mi02_S_item_05_usu_00005f4c, local
	.string "mi02_S_item_05"
.endobj str_mi02_S_item_05_usu_00005f4c

# .rodata:0xE43 | 0x271B | size: 0x1
.obj gap_03_0000271B_rodata, global
.hidden gap_03_0000271B_rodata
	.byte 0x00
.endobj gap_03_0000271B_rodata

# .rodata:0xE44 | 0x271C | size: 0xA
.obj str_A_item_05_usu_00005f5c, local
	.string "A_item_05"
.endobj str_A_item_05_usu_00005f5c

# .rodata:0xE4E | 0x2726 | size: 0x2
.obj gap_03_00002726_rodata, global
.hidden gap_03_00002726_rodata
	.2byte 0x0000
.endobj gap_03_00002726_rodata

# .rodata:0xE50 | 0x2728 | size: 0xF
.obj str_mi02_S_item_06_usu_00005f68, local
	.string "mi02_S_item_06"
.endobj str_mi02_S_item_06_usu_00005f68

# .rodata:0xE5F | 0x2737 | size: 0x1
.obj gap_03_00002737_rodata, global
.hidden gap_03_00002737_rodata
	.byte 0x00
.endobj gap_03_00002737_rodata

# .rodata:0xE60 | 0x2738 | size: 0xA
.obj str_A_item_06_usu_00005f78, local
	.string "A_item_06"
.endobj str_A_item_06_usu_00005f78

# .rodata:0xE6A | 0x2742 | size: 0x2
.obj gap_03_00002742_rodata, global
.hidden gap_03_00002742_rodata
	.2byte 0x0000
.endobj gap_03_00002742_rodata

# .rodata:0xE6C | 0x2744 | size: 0xF
.obj str_usugurashop_00_usu_00005f84, local
	.string "usugurashop_00"
.endobj str_usugurashop_00_usu_00005f84

# .rodata:0xE7B | 0x2753 | size: 0x1
.obj gap_03_00002753_rodata, global
.hidden gap_03_00002753_rodata
	.byte 0x00
.endobj gap_03_00002753_rodata

# .rodata:0xE7C | 0x2754 | size: 0xF
.obj str_usugurashop_01_usu_00005f94, local
	.string "usugurashop_01"
.endobj str_usugurashop_01_usu_00005f94

# .rodata:0xE8B | 0x2763 | size: 0x1
.obj gap_03_00002763_rodata, global
.hidden gap_03_00002763_rodata
	.byte 0x00
.endobj gap_03_00002763_rodata

# .rodata:0xE8C | 0x2764 | size: 0xF
.obj str_usugurashop_02_usu_00005fa4, local
	.string "usugurashop_02"
.endobj str_usugurashop_02_usu_00005fa4

# .rodata:0xE9B | 0x2773 | size: 0x1
.obj gap_03_00002773_rodata, global
.hidden gap_03_00002773_rodata
	.byte 0x00
.endobj gap_03_00002773_rodata

# .rodata:0xE9C | 0x2774 | size: 0xF
.obj str_usugurashop_03_usu_00005fb4, local
	.string "usugurashop_03"
.endobj str_usugurashop_03_usu_00005fb4

# .rodata:0xEAB | 0x2783 | size: 0x1
.obj gap_03_00002783_rodata, global
.hidden gap_03_00002783_rodata
	.byte 0x00
.endobj gap_03_00002783_rodata

# .rodata:0xEAC | 0x2784 | size: 0xF
.obj str_usugurashop_04_usu_00005fc4, local
	.string "usugurashop_04"
.endobj str_usugurashop_04_usu_00005fc4

# .rodata:0xEBB | 0x2793 | size: 0x1
.obj gap_03_00002793_rodata, global
.hidden gap_03_00002793_rodata
	.byte 0x00
.endobj gap_03_00002793_rodata

# .rodata:0xEBC | 0x2794 | size: 0xF
.obj str_usugurashop_05_usu_00005fd4, local
	.string "usugurashop_05"
.endobj str_usugurashop_05_usu_00005fd4

# .rodata:0xECB | 0x27A3 | size: 0x1
.obj gap_03_000027A3_rodata, global
.hidden gap_03_000027A3_rodata
	.byte 0x00
.endobj gap_03_000027A3_rodata

# .rodata:0xECC | 0x27A4 | size: 0xF
.obj str_usugurashop_06_usu_00005fe4, local
	.string "usugurashop_06"
.endobj str_usugurashop_06_usu_00005fe4

# .rodata:0xEDB | 0x27B3 | size: 0x1
.obj gap_03_000027B3_rodata, global
.hidden gap_03_000027B3_rodata
	.byte 0x00
.endobj gap_03_000027B3_rodata

# .rodata:0xEDC | 0x27B4 | size: 0xF
.obj str_usugurashop_07_usu_00005ff4, local
	.string "usugurashop_07"
.endobj str_usugurashop_07_usu_00005ff4

# .rodata:0xEEB | 0x27C3 | size: 0x1
.obj gap_03_000027C3_rodata, global
.hidden gap_03_000027C3_rodata
	.byte 0x00
.endobj gap_03_000027C3_rodata

# .rodata:0xEEC | 0x27C4 | size: 0xF
.obj str_usugurashop_08_usu_00006004, local
	.string "usugurashop_08"
.endobj str_usugurashop_08_usu_00006004

# .rodata:0xEFB | 0x27D3 | size: 0x1
.obj gap_03_000027D3_rodata, global
.hidden gap_03_000027D3_rodata
	.byte 0x00
.endobj gap_03_000027D3_rodata

# .rodata:0xEFC | 0x27D4 | size: 0xF
.obj str_usugurashop_09_usu_00006014, local
	.string "usugurashop_09"
.endobj str_usugurashop_09_usu_00006014

# .rodata:0xF0B | 0x27E3 | size: 0x1
.obj gap_03_000027E3_rodata, global
.hidden gap_03_000027E3_rodata
	.byte 0x00
.endobj gap_03_000027E3_rodata

# .rodata:0xF0C | 0x27E4 | size: 0xF
.obj str_usugurashop_10_usu_00006024, local
	.string "usugurashop_10"
.endobj str_usugurashop_10_usu_00006024

# .rodata:0xF1B | 0x27F3 | size: 0x1
.obj gap_03_000027F3_rodata, global
.hidden gap_03_000027F3_rodata
	.byte 0x00
.endobj gap_03_000027F3_rodata

# .rodata:0xF1C | 0x27F4 | size: 0xF
.obj str_usugurashop_11_usu_00006034, local
	.string "usugurashop_11"
.endobj str_usugurashop_11_usu_00006034

# .rodata:0xF2B | 0x2803 | size: 0x1
.obj gap_03_00002803_rodata, global
.hidden gap_03_00002803_rodata
	.byte 0x00
.endobj gap_03_00002803_rodata

# .rodata:0xF2C | 0x2804 | size: 0xF
.obj str_usugurashop_12_usu_00006044, local
	.string "usugurashop_12"
.endobj str_usugurashop_12_usu_00006044

# .rodata:0xF3B | 0x2813 | size: 0x1
.obj gap_03_00002813_rodata, global
.hidden gap_03_00002813_rodata
	.byte 0x00
.endobj gap_03_00002813_rodata

# .rodata:0xF3C | 0x2814 | size: 0xF
.obj str_usugurashop_13_usu_00006054, local
	.string "usugurashop_13"
.endobj str_usugurashop_13_usu_00006054

# .rodata:0xF4B | 0x2823 | size: 0x1
.obj gap_03_00002823_rodata, global
.hidden gap_03_00002823_rodata
	.byte 0x00
.endobj gap_03_00002823_rodata

# .rodata:0xF4C | 0x2824 | size: 0xF
.obj str_usugurashop_14_usu_00006064, local
	.string "usugurashop_14"
.endobj str_usugurashop_14_usu_00006064

# .rodata:0xF5B | 0x2833 | size: 0x1
.obj gap_03_00002833_rodata, global
.hidden gap_03_00002833_rodata
	.byte 0x00
.endobj gap_03_00002833_rodata

# .rodata:0xF5C | 0x2834 | size: 0xF
.obj str_usugurashop_15_usu_00006074, local
	.string "usugurashop_15"
.endobj str_usugurashop_15_usu_00006074

# .rodata:0xF6B | 0x2843 | size: 0x1
.obj gap_03_00002843_rodata, global
.hidden gap_03_00002843_rodata
	.byte 0x00
.endobj gap_03_00002843_rodata

# .rodata:0xF6C | 0x2844 | size: 0xF
.obj str_usugurashop_16_usu_00006084, local
	.string "usugurashop_16"
.endobj str_usugurashop_16_usu_00006084

# .rodata:0xF7B | 0x2853 | size: 0x1
.obj gap_03_00002853_rodata, global
.hidden gap_03_00002853_rodata
	.byte 0x00
.endobj gap_03_00002853_rodata

# .rodata:0xF7C | 0x2854 | size: 0xF
.obj str_usugurashop_17_usu_00006094, local
	.string "usugurashop_17"
.endobj str_usugurashop_17_usu_00006094

# .rodata:0xF8B | 0x2863 | size: 0x1
.obj gap_03_00002863_rodata, global
.hidden gap_03_00002863_rodata
	.byte 0x00
.endobj gap_03_00002863_rodata

# .rodata:0xF8C | 0x2864 | size: 0xF
.obj str_usugurashop_18_usu_000060a4, local
	.string "usugurashop_18"
.endobj str_usugurashop_18_usu_000060a4

# .rodata:0xF9B | 0x2873 | size: 0x1
.obj gap_03_00002873_rodata, global
.hidden gap_03_00002873_rodata
	.byte 0x00
.endobj gap_03_00002873_rodata

# .rodata:0xF9C | 0x2874 | size: 0xF
.obj str_usugurashop_19_usu_000060b4, local
	.string "usugurashop_19"
.endobj str_usugurashop_19_usu_000060b4

# .rodata:0xFAB | 0x2883 | size: 0x1
.obj gap_03_00002883_rodata, global
.hidden gap_03_00002883_rodata
	.byte 0x00
.endobj gap_03_00002883_rodata

# .rodata:0xFAC | 0x2884 | size: 0xF
.obj str_usugurashop_20_usu_000060c4, local
	.string "usugurashop_20"
.endobj str_usugurashop_20_usu_000060c4

# .rodata:0xFBB | 0x2893 | size: 0x1
.obj gap_03_00002893_rodata, global
.hidden gap_03_00002893_rodata
	.byte 0x00
.endobj gap_03_00002893_rodata

# .rodata:0xFBC | 0x2894 | size: 0xF
.obj str_usugurashop_21_usu_000060d4, local
	.string "usugurashop_21"
.endobj str_usugurashop_21_usu_000060d4

# .rodata:0xFCB | 0x28A3 | size: 0x1
.obj gap_03_000028A3_rodata, global
.hidden gap_03_000028A3_rodata
	.byte 0x00
.endobj gap_03_000028A3_rodata

# .rodata:0xFCC | 0x28A4 | size: 0xF
.obj str_usugurashop_22_usu_000060e4, local
	.string "usugurashop_22"
.endobj str_usugurashop_22_usu_000060e4

# .rodata:0xFDB | 0x28B3 | size: 0x1
.obj gap_03_000028B3_rodata, global
.hidden gap_03_000028B3_rodata
	.byte 0x00
.endobj gap_03_000028B3_rodata

# .rodata:0xFDC | 0x28B4 | size: 0xF
.obj str_usugurashop_23_usu_000060f4, local
	.string "usugurashop_23"
.endobj str_usugurashop_23_usu_000060f4

# .rodata:0xFEB | 0x28C3 | size: 0x1
.obj gap_03_000028C3_rodata, global
.hidden gap_03_000028C3_rodata
	.byte 0x00
.endobj gap_03_000028C3_rodata

# .rodata:0xFEC | 0x28C4 | size: 0xF
.obj str_usugurashop_24_usu_00006104, local
	.string "usugurashop_24"
.endobj str_usugurashop_24_usu_00006104

# .rodata:0xFFB | 0x28D3 | size: 0x1
.obj gap_03_000028D3_rodata, global
.hidden gap_03_000028D3_rodata
	.byte 0x00
.endobj gap_03_000028D3_rodata

# .rodata:0xFFC | 0x28D4 | size: 0xF
.obj str_usugurashop_25_usu_00006114, local
	.string "usugurashop_25"
.endobj str_usugurashop_25_usu_00006114

# .rodata:0x100B | 0x28E3 | size: 0x1
.obj gap_03_000028E3_rodata, global
.hidden gap_03_000028E3_rodata
	.byte 0x00
.endobj gap_03_000028E3_rodata

# .rodata:0x100C | 0x28E4 | size: 0xF
.obj str_usugurashop_26_usu_00006124, local
	.string "usugurashop_26"
.endobj str_usugurashop_26_usu_00006124

# .rodata:0x101B | 0x28F3 | size: 0x1
.obj gap_03_000028F3_rodata, global
.hidden gap_03_000028F3_rodata
	.byte 0x00
.endobj gap_03_000028F3_rodata

# .rodata:0x101C | 0x28F4 | size: 0xF
.obj str_usugurashop_27_usu_00006134, local
	.string "usugurashop_27"
.endobj str_usugurashop_27_usu_00006134

# .rodata:0x102B | 0x2903 | size: 0x1
.obj gap_03_00002903_rodata, global
.hidden gap_03_00002903_rodata
	.byte 0x00
.endobj gap_03_00002903_rodata

# .rodata:0x102C | 0x2904 | size: 0xF
.obj str_usugurashop_28_usu_00006144, local
	.string "usugurashop_28"
.endobj str_usugurashop_28_usu_00006144

# .rodata:0x103B | 0x2913 | size: 0x1
.obj gap_03_00002913_rodata, global
.hidden gap_03_00002913_rodata
	.byte 0x00
.endobj gap_03_00002913_rodata

# .rodata:0x103C | 0x2914 | size: 0xF
.obj str_usugurashop_29_usu_00006154, local
	.string "usugurashop_29"
.endobj str_usugurashop_29_usu_00006154

# .rodata:0x104B | 0x2923 | size: 0x1
.obj gap_03_00002923_rodata, global
.hidden gap_03_00002923_rodata
	.byte 0x00
.endobj gap_03_00002923_rodata

# .rodata:0x104C | 0x2924 | size: 0xF
.obj str_usugurashop_30_usu_00006164, local
	.string "usugurashop_30"
.endobj str_usugurashop_30_usu_00006164

# .rodata:0x105B | 0x2933 | size: 0x1
.obj gap_03_00002933_rodata, global
.hidden gap_03_00002933_rodata
	.byte 0x00
.endobj gap_03_00002933_rodata

# .rodata:0x105C | 0x2934 | size: 0xF
.obj str_usugurashop_31_usu_00006174, local
	.string "usugurashop_31"
.endobj str_usugurashop_31_usu_00006174

# .rodata:0x106B | 0x2943 | size: 0x1
.obj gap_03_00002943_rodata, global
.hidden gap_03_00002943_rodata
	.byte 0x00
.endobj gap_03_00002943_rodata

# .rodata:0x106C | 0x2944 | size: 0xF
.obj str_usugurashop_32_usu_00006184, local
	.string "usugurashop_32"
.endobj str_usugurashop_32_usu_00006184

# .rodata:0x107B | 0x2953 | size: 0x1
.obj gap_03_00002953_rodata, global
.hidden gap_03_00002953_rodata
	.byte 0x00
.endobj gap_03_00002953_rodata

# .rodata:0x107C | 0x2954 | size: 0xF
.obj str_usugurashop_33_usu_00006194, local
	.string "usugurashop_33"
.endobj str_usugurashop_33_usu_00006194

# .rodata:0x108B | 0x2963 | size: 0x1
.obj gap_03_00002963_rodata, global
.hidden gap_03_00002963_rodata
	.byte 0x00
.endobj gap_03_00002963_rodata

# .rodata:0x108C | 0x2964 | size: 0xF
.obj str_usugurashop_34_usu_000061a4, local
	.string "usugurashop_34"
.endobj str_usugurashop_34_usu_000061a4

# .rodata:0x109B | 0x2973 | size: 0x1
.obj gap_03_00002973_rodata, global
.hidden gap_03_00002973_rodata
	.byte 0x00
.endobj gap_03_00002973_rodata

# .rodata:0x109C | 0x2974 | size: 0xC
.obj str_stg4_usu_60_usu_000061b4, local
	.string "stg4_usu_60"
.endobj str_stg4_usu_60_usu_000061b4

# .rodata:0x10A8 | 0x2980 | size: 0x13
.obj str_stg4_usu_majin3_01_usu_000061c0, local
	.string "stg4_usu_majin3_01"
.endobj str_stg4_usu_majin3_01_usu_000061c0

# .rodata:0x10BB | 0x2993 | size: 0x1
.obj gap_03_00002993_rodata, global
.hidden gap_03_00002993_rodata
	.byte 0x00
.endobj gap_03_00002993_rodata

# .rodata:0x10BC | 0x2994 | size: 0x19
.obj str_SFX_MOBJ_BLACKBOX_SW_usu_000061d4, local
	.string "SFX_MOBJ_BLACKBOX_SWING1"
.endobj str_SFX_MOBJ_BLACKBOX_SW_usu_000061d4

# .rodata:0x10D5 | 0x29AD | size: 0x3
.obj gap_03_000029AD_rodata, global
.hidden gap_03_000029AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000029AD_rodata

# .rodata:0x10D8 | 0x29B0 | size: 0x4
.obj str_A_3_usu_000061f0, local
	.string "A_3"
.endobj str_A_3_usu_000061f0

# .rodata:0x10DC | 0x29B4 | size: 0x13
.obj str_stg4_usu_majin3_02_usu_000061f4, local
	.string "stg4_usu_majin3_02"
.endobj str_stg4_usu_majin3_02_usu_000061f4

# .rodata:0x10EF | 0x29C7 | size: 0x1
.obj gap_03_000029C7_rodata, global
.hidden gap_03_000029C7_rodata
	.byte 0x00
.endobj gap_03_000029C7_rodata

# .rodata:0x10F0 | 0x29C8 | size: 0x6
.obj str_M_I_G_usu_00006208, local
	.string "M_I_G"
.endobj str_M_I_G_usu_00006208

# .rodata:0x10F6 | 0x29CE | size: 0x2
.obj gap_03_000029CE_rodata, global
.hidden gap_03_000029CE_rodata
	.2byte 0x0000
.endobj gap_03_000029CE_rodata

# .rodata:0x10F8 | 0x29D0 | size: 0x13
.obj str_stg4_usu_majin3_03_usu_00006210, local
	.string "stg4_usu_majin3_03"
.endobj str_stg4_usu_majin3_03_usu_00006210

# .rodata:0x110B | 0x29E3 | size: 0x1
.obj gap_03_000029E3_rodata, global
.hidden gap_03_000029E3_rodata
	.byte 0x00
.endobj gap_03_000029E3_rodata

# .rodata:0x110C | 0x29E4 | size: 0x13
.obj str_stg4_usu_majin3_04_usu_00006224, local
	.string "stg4_usu_majin3_04"
.endobj str_stg4_usu_majin3_04_usu_00006224

# .rodata:0x111F | 0x29F7 | size: 0x1
.obj gap_03_000029F7_rodata, global
.hidden gap_03_000029F7_rodata
	.byte 0x00
.endobj gap_03_000029F7_rodata

# .rodata:0x1120 | 0x29F8 | size: 0x13
.obj str_stg4_usu_majin3_05_usu_00006238, local
	.string "stg4_usu_majin3_05"
.endobj str_stg4_usu_majin3_05_usu_00006238

# .rodata:0x1133 | 0x2A0B | size: 0x1
.obj gap_03_00002A0B_rodata, global
.hidden gap_03_00002A0B_rodata
	.byte 0x00
.endobj gap_03_00002A0B_rodata

# .rodata:0x1134 | 0x2A0C | size: 0x13
.obj str_stg4_usu_majin3_06_usu_0000624c, local
	.string "stg4_usu_majin3_06"
.endobj str_stg4_usu_majin3_06_usu_0000624c

# .rodata:0x1147 | 0x2A1F | size: 0x1
.obj gap_03_00002A1F_rodata, global
.hidden gap_03_00002A1F_rodata
	.byte 0x00
.endobj gap_03_00002A1F_rodata

# .rodata:0x1148 | 0x2A20 | size: 0x6
.obj str_M_I_Z_usu_00006260, local
	.string "M_I_Z"
.endobj str_M_I_Z_usu_00006260

# .rodata:0x114E | 0x2A26 | size: 0x2
.obj gap_03_00002A26_rodata, global
.hidden gap_03_00002A26_rodata
	.2byte 0x0000
.endobj gap_03_00002A26_rodata

# .rodata:0x1150 | 0x2A28 | size: 0x13
.obj str_stg4_usu_majin3_07_usu_00006268, local
	.string "stg4_usu_majin3_07"
.endobj str_stg4_usu_majin3_07_usu_00006268

# .rodata:0x1163 | 0x2A3B | size: 0x1
.obj gap_03_00002A3B_rodata, global
.hidden gap_03_00002A3B_rodata
	.byte 0x00
.endobj gap_03_00002A3B_rodata

# .rodata:0x1164 | 0x2A3C | size: 0x13
.obj str_stg4_usu_majin3_08_usu_0000627c, local
	.string "stg4_usu_majin3_08"
.endobj str_stg4_usu_majin3_08_usu_0000627c

# .rodata:0x1177 | 0x2A4F | size: 0x1
.obj gap_03_00002A4F_rodata, global
.hidden gap_03_00002A4F_rodata
	.byte 0x00
.endobj gap_03_00002A4F_rodata

# .rodata:0x1178 | 0x2A50 | size: 0x13
.obj str_stg4_usu_majin3_09_usu_00006290, local
	.string "stg4_usu_majin3_09"
.endobj str_stg4_usu_majin3_09_usu_00006290

# .rodata:0x118B | 0x2A63 | size: 0x1
.obj gap_03_00002A63_rodata, global
.hidden gap_03_00002A63_rodata
	.byte 0x00
.endobj gap_03_00002A63_rodata

# .rodata:0x118C | 0x2A64 | size: 0x13
.obj str_stg4_usu_majin3_10_usu_000062a4, local
	.string "stg4_usu_majin3_10"
.endobj str_stg4_usu_majin3_10_usu_000062a4

# .rodata:0x119F | 0x2A77 | size: 0x1
.obj gap_03_00002A77_rodata, global
.hidden gap_03_00002A77_rodata
	.byte 0x00
.endobj gap_03_00002A77_rodata

# .rodata:0x11A0 | 0x2A78 | size: 0x13
.obj str_stg4_usu_majin3_11_usu_000062b8, local
	.string "stg4_usu_majin3_11"
.endobj str_stg4_usu_majin3_11_usu_000062b8

# .rodata:0x11B3 | 0x2A8B | size: 0x1
.obj gap_03_00002A8B_rodata, global
.hidden gap_03_00002A8B_rodata
	.byte 0x00
.endobj gap_03_00002A8B_rodata

# .rodata:0x11B4 | 0x2A8C | size: 0x13
.obj str_BGM_EVT_PERAMAJIN1_usu_000062cc, local
	.string "BGM_EVT_PERAMAJIN1"
.endobj str_BGM_EVT_PERAMAJIN1_usu_000062cc

# .rodata:0x11C7 | 0x2A9F | size: 0x1
.obj gap_03_00002A9F_rodata, global
.hidden gap_03_00002A9F_rodata
	.byte 0x00
.endobj gap_03_00002A9F_rodata

# .rodata:0x11C8 | 0x2AA0 | size: 0xC
.obj str_OFF_d_kusya_usu_000062e0, local
	.string "OFF_d_kusya"
.endobj str_OFF_d_kusya_usu_000062e0

# .rodata:0x11D4 | 0x2AAC | size: 0x4
.obj str_img_usu_000062ec, local
	.string "img"
.endobj str_img_usu_000062ec

# .rodata:0x11D8 | 0x2AB0 | size: 0x1A
.obj str_SFX_OFF_PERAMAJIN_AP_usu_000062f0, local
	.string "SFX_OFF_PERAMAJIN_APPEAR1"
.endobj str_SFX_OFF_PERAMAJIN_AP_usu_000062f0

# .rodata:0x11F2 | 0x2ACA | size: 0x2
.obj gap_03_00002ACA_rodata, global
.hidden gap_03_00002ACA_rodata
	.2byte 0x0000
.endobj gap_03_00002ACA_rodata

# .rodata:0x11F4 | 0x2ACC | size: 0x18
.obj str_SFX_OFF_PERAMAJIN_CO_usu_0000630c, local
	.string "SFX_OFF_PERAMAJIN_COME1"
.endobj str_SFX_OFF_PERAMAJIN_CO_usu_0000630c

# .rodata:0x120C | 0x2AE4 | size: 0x4
.obj str_A_1_usu_00006324, local
	.string "A_1"
.endobj str_A_1_usu_00006324

# .rodata:0x1210 | 0x2AE8 | size: 0x1C
.obj str_SFX_EVT_PERAMAJIN_BL_usu_00006328, local
	.string "SFX_EVT_PERAMAJIN_BLINKING1"
.endobj str_SFX_EVT_PERAMAJIN_BL_usu_00006328

# .rodata:0x122C | 0x2B04 | size: 0x19
.obj str_SFX_OFF_PERAMAJIN_GO_usu_00006344, local
	.string "SFX_OFF_PERAMAJIN_GOOUT1"
.endobj str_SFX_OFF_PERAMAJIN_GO_usu_00006344

# .rodata:0x1245 | 0x2B1D | size: 0x3
.obj gap_03_00002B1D_rodata, global
.hidden gap_03_00002B1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002B1D_rodata

# .rodata:0x1248 | 0x2B20 | size: 0x4
.obj str_A_2_usu_00006360, local
	.string "A_2"
.endobj str_A_2_usu_00006360

# .rodata:0x124C | 0x2B24 | size: 0x19
.obj str_SFX_OFF_PERAMAJIN_GO_usu_00006364, local
	.string "SFX_OFF_PERAMAJIN_GOOUT2"
.endobj str_SFX_OFF_PERAMAJIN_GO_usu_00006364

# .rodata:0x1265 | 0x2B3D | size: 0x3
.obj gap_03_00002B3D_rodata, global
.hidden gap_03_00002B3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002B3D_rodata

# .rodata:0x1268 | 0x2B40 | size: 0x4
.obj str_S_1_usu_00006380, local
	.string "S_1"
.endobj str_S_1_usu_00006380

# .rodata:0x126C | 0x2B44 | size: 0x7
.obj str_A_ki_1_usu_00006384, local
	.string "A_ki_1"
.endobj str_A_ki_1_usu_00006384

# .rodata:0x1273 | 0x2B4B | size: 0x1
.obj gap_03_00002B4B_rodata, global
.hidden gap_03_00002B4B_rodata
	.byte 0x00
.endobj gap_03_00002B4B_rodata

# .rodata:0x1274 | 0x2B4C | size: 0xD
.obj str_S_usu01_ki01_usu_0000638c, local
	.string "S_usu01_ki01"
.endobj str_S_usu01_ki01_usu_0000638c

# .rodata:0x1281 | 0x2B59 | size: 0x3
.obj gap_03_00002B59_rodata, global
.hidden gap_03_00002B59_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002B59_rodata

# .rodata:0x1284 | 0x2B5C | size: 0x7
.obj str_A_ki_2_usu_0000639c, local
	.string "A_ki_2"
.endobj str_A_ki_2_usu_0000639c

# .rodata:0x128B | 0x2B63 | size: 0x1
.obj gap_03_00002B63_rodata, global
.hidden gap_03_00002B63_rodata
	.byte 0x00
.endobj gap_03_00002B63_rodata

# .rodata:0x128C | 0x2B64 | size: 0xD
.obj str_S_usu01_ki02_usu_000063a4, local
	.string "S_usu01_ki02"
.endobj str_S_usu01_ki02_usu_000063a4

# .rodata:0x1299 | 0x2B71 | size: 0x3
.obj gap_03_00002B71_rodata, global
.hidden gap_03_00002B71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002B71_rodata

# .rodata:0x129C | 0x2B74 | size: 0x7
.obj str_A_ki_3_usu_000063b4, local
	.string "A_ki_3"
.endobj str_A_ki_3_usu_000063b4

# .rodata:0x12A3 | 0x2B7B | size: 0x1
.obj gap_03_00002B7B_rodata, global
.hidden gap_03_00002B7B_rodata
	.byte 0x00
.endobj gap_03_00002B7B_rodata

# .rodata:0x12A4 | 0x2B7C | size: 0xD
.obj str_S_usu01_ki03_usu_000063bc, local
	.string "S_usu01_ki03"
.endobj str_S_usu01_ki03_usu_000063bc

# .rodata:0x12B1 | 0x2B89 | size: 0x3
.obj gap_03_00002B89_rodata, global
.hidden gap_03_00002B89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002B89_rodata

# .rodata:0x12B4 | 0x2B8C | size: 0x7
.obj str_A_ki_4_usu_000063cc, local
	.string "A_ki_4"
.endobj str_A_ki_4_usu_000063cc

# .rodata:0x12BB | 0x2B93 | size: 0x1
.obj gap_03_00002B93_rodata, global
.hidden gap_03_00002B93_rodata
	.byte 0x00
.endobj gap_03_00002B93_rodata

# .rodata:0x12BC | 0x2B94 | size: 0xD
.obj str_S_usu01_ki05_usu_000063d4, local
	.string "S_usu01_ki05"
.endobj str_S_usu01_ki05_usu_000063d4

# .rodata:0x12C9 | 0x2BA1 | size: 0x3
.obj gap_03_00002BA1_rodata, global
.hidden gap_03_00002BA1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002BA1_rodata

# .rodata:0x12CC | 0x2BA4 | size: 0x7
.obj str_item00_usu_000063e4, local
	.string "item00"
.endobj str_item00_usu_000063e4

# .rodata:0x12D3 | 0x2BAB | size: 0x1
.obj gap_03_00002BAB_rodata, global
.hidden gap_03_00002BAB_rodata
	.byte 0x00
.endobj gap_03_00002BAB_rodata

# .rodata:0x12D4 | 0x2BAC | size: 0xE
.obj str_BGM_STG4_USU1_usu_000063ec, local
	.string "BGM_STG4_USU1"
.endobj str_BGM_STG4_USU1_usu_000063ec

# .rodata:0x12E2 | 0x2BBA | size: 0x2
.obj gap_03_00002BBA_rodata, global
.hidden gap_03_00002BBA_rodata
	.2byte 0x0000
.endobj gap_03_00002BBA_rodata

# .rodata:0x12E4 | 0x2BBC | size: 0xE
.obj str_ENV_STG4_USU1_usu_000063fc, local
	.string "ENV_STG4_USU1"
.endobj str_ENV_STG4_USU1_usu_000063fc

# .rodata:0x12F2 | 0x2BCA | size: 0x2
.obj gap_03_00002BCA_rodata, global
.hidden gap_03_00002BCA_rodata
	.2byte 0x0000
.endobj gap_03_00002BCA_rodata

# .rodata:0x12F4 | 0x2BCC | size: 0x14
.obj str_A_usu01_ie2_door3_u_usu_0000640c, local
	.string "A_usu01_ie2_door3_u"
.endobj str_A_usu01_ie2_door3_u_usu_0000640c

# .rodata:0x1308 | 0x2BE0 | size: 0xD
.obj str_mi02_S_items_usu_00006420, local
	.string "mi02_S_items"
.endobj str_mi02_S_items_usu_00006420

# .rodata:0x1315 | 0x2BED | size: 0x3
.obj gap_03_00002BED_rodata, global
.hidden gap_03_00002BED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002BED_rodata

# .rodata:0x1318 | 0x2BF0 | size: 0x4
.obj str_ki1_usu_00006430, local
	.string "ki1"
.endobj str_ki1_usu_00006430

# .rodata:0x131C | 0x2BF4 | size: 0x4
.obj str_ki2_usu_00006434, local
	.string "ki2"
.endobj str_ki2_usu_00006434

# .rodata:0x1320 | 0x2BF8 | size: 0x4
.obj str_ki3_usu_00006438, local
	.string "ki3"
.endobj str_ki3_usu_00006438

# .rodata:0x1324 | 0x2BFC | size: 0x4
.obj str_ki4_usu_0000643c, local
	.string "ki4"
.endobj str_ki4_usu_0000643c

# .rodata:0x1328 | 0x2C00 | size: 0x4
.obj str_ki5_usu_00006440, local
	.string "ki5"
.endobj str_ki5_usu_00006440

# .rodata:0x132C | 0x2C04 | size: 0x8
.obj str_item_01_usu_00006444, local
	.string "item_01"
.endobj str_item_01_usu_00006444

# .rodata:0x1334 | 0x2C0C | size: 0x4
.obj float_135_usu_0000644c, local
	.float 135
.endobj float_135_usu_0000644c

# .rodata:0x1338 | 0x2C10 | size: 0x4
.obj float_1_usu_00006450, local
	.float 1
.endobj float_1_usu_00006450

# .rodata:0x133C | 0x2C14 | size: 0x4
.obj float_neg1000_usu_00006454, local
	.float -1000
.endobj float_neg1000_usu_00006454

# .rodata:0x1340 | 0x2C18 | size: 0x17
.obj str_SFX_VOICE_MARIO_SLEE_usu_00006458, local
	.string "SFX_VOICE_MARIO_SLEEP1"
.endobj str_SFX_VOICE_MARIO_SLEE_usu_00006458

# .rodata:0x1357 | 0x2C2F | size: 0x1
.obj gap_03_00002C2F_rodata, global
.hidden gap_03_00002C2F_rodata
	.byte 0x00
.endobj gap_03_00002C2F_rodata

# 0x000096D0..0x00010760 | size: 0x7090
.data
.balign 8

# .data:0x0 | 0x96D0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x96D8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x96DC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x96E0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x96E4 | size: 0x4
.obj gap_04_000096E4_data, global
.hidden gap_04_000096E4_data
	.4byte 0x00000000
.endobj gap_04_000096E4_data

# .data:0x18 | 0x96E8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x96F0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x96F4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x96F8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x9700 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x9704 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x9708 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x970C | size: 0x4
.obj gap_04_0000970C_data, global
.hidden gap_04_0000970C_data
	.4byte 0x00000000
.endobj gap_04_0000970C_data

# .data:0x40 | 0x9710 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x9718 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x971C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x9720 | size: 0x1C
.obj villagerF_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_村人Ｆ_usu_00005118
	.4byte 0x00000600
	.4byte 0x00000002
	.4byte 0x00000001
.endobj villagerF_init

# .data:0x6C | 0x973C | size: 0xD0
.obj villagerF_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_82_usu_00005120
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010026
	.4byte 0x000000DB
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_30_usu_00005130
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg4_usu_30_yn_usu_0000513c
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg4_usu_30_00_usu_0000514c
	.4byte 0x00010026
	.4byte 0x000000DE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_84_usu_0000515c
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_84_1_usu_00005168
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_84_1_1_usu_00005178
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj villagerF_talk

# .data:0x13C | 0x980C | size: 0x1C
.obj villagerG_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_村人Ｇ_usu_00005188
	.4byte 0x00000600
	.4byte 0x00000002
	.4byte 0x00000001
.endobj villagerG_init

# .data:0x158 | 0x9828 | size: 0xD0
.obj villagerG_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_85_usu_00005190
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010026
	.4byte 0x000000DB
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_86_usu_0000519c
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg4_usu_86_yn_usu_000051a8
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg4_usu_86_00_usu_000051b8
	.4byte 0x00010026
	.4byte 0x000000DE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_87_usu_000051c8
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_87_1_usu_000051d4
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_87_1_1_usu_000051e4
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj villagerG_talk

# .data:0x228 | 0x98F8 | size: 0x1C
.obj villagerH_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_村人Ｈ_usu_000051f4
	.4byte 0x00000600
	.4byte 0x00000002
	.4byte 0x00000001
.endobj villagerH_init

# .data:0x244 | 0x9914 | size: 0xB0
.obj villagerH_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_88_usu_000051fc
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010026
	.4byte 0x000000DB
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_89_usu_00005208
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010026
	.4byte 0x000000DE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_90_usu_00005214
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_90_1_usu_00005220
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_90_1_1_usu_00005230
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj villagerH_talk

# .data:0x2F4 | 0x99C4 | size: 0x4C
.obj villagerI_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_村人Ｉ_usu_00005240
	.4byte 0x00000600
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_村人Ｉ_usu_00005240
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj villagerI_init

# .data:0x340 | 0x9A10 | size: 0x4C
.obj villagerI_pig_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ブタ村人Ｉ_usu_00005248
	.4byte 0x00000600
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ブタ村人Ｉ_usu_00005248
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj villagerI_pig_init

# .data:0x38C | 0x9A5C | size: 0xE4
.obj villagerI_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_usu_0000512c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_VOICE_PIG1_usu_00005254
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_91_usu_00005268
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010026
	.4byte 0x000000DB
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_92_usu_00005274
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010026
	.4byte 0x000000DE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_93_usu_00005280
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_93_1_usu_0000528c
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_93_1_1_usu_0000529c
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj villagerI_talk

# .data:0x470 | 0x9B40 | size: 0x4C
.obj villagerJ_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_村人Ｊ_usu_000052ac
	.4byte 0x00000600
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_村人Ｊ_usu_000052ac
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj villagerJ_init

# .data:0x4BC | 0x9B8C | size: 0x4C
.obj villagerJ_pig_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ブタ村人Ｊ_usu_000052b4
	.4byte 0x00000600
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ブタ村人Ｊ_usu_000052b4
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj villagerJ_pig_init

# .data:0x508 | 0x9BD8 | size: 0xE4
.obj villagerJ_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_usu_0000512c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_VOICE_PIG1_usu_00005254
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_94_usu_000052c0
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010026
	.4byte 0x000000DB
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_95_usu_000052cc
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010026
	.4byte 0x000000DE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_96_usu_000052d8
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_96_1_usu_000052e4
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_96_1_1_usu_000052f4
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj villagerJ_talk

# .data:0x5EC | 0x9CBC | size: 0x90
.obj shop_man_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_店の主人_usu_00005304
	.4byte 0x00000600
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x00010026
	.4byte 0x000000DB
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_店の主人_usu_00005304
	.4byte 0xFFFFFF83
	.4byte 0x00000000
	.4byte 0xFFFFFE25
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_店の主人_usu_00005304
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_店の主人_usu_00005304
	.4byte 0x00400000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_店の主人_usu_00005304
	.4byte 0xFFFFFF7E
	.4byte 0x00000000
	.4byte 0xFFFFFE20
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shop_man_init

# .data:0x67C | 0x9D4C | size: 0x70
.obj shop_man_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000DB
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_61_5_usu_00005310
	.4byte 0x00000000
	.4byte str_店の主人_usu_00005304
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_61_6_usu_00005320
	.4byte 0x00000000
	.4byte str_店の主人_usu_00005304
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_61_7_usu_00005330
	.4byte 0x00000000
	.4byte str_店の主人_usu_00005304
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shop_man_talk

# .data:0x6EC | 0x9DBC | size: 0x1C
.obj shop_woman_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_お店の奥さん_usu_00005340
	.4byte 0x00000600
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shop_woman_init

# .data:0x708 | 0x9DD8 | size: 0x28C
.obj shop_woman_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000B8
	.4byte 0x00020018
	.4byte 0xF8406305
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_52_usu_00005350
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_usu_0000535c
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_53_usu_00005364
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_N_usu_00005370
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_usu_00005378
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x0001005B
	.4byte sleep_voice
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_54_usu_00005380
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_YAWN_usu_0000538c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_5_usu_000053a4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5A_usu_000053ac
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F8A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_AWAK_usu_000053b4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_usu_000053cc
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_usu_000053d4
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_55_usu_000053dc
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00020032
	.4byte 0xF8406305
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_56_usu_000053e8
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x000000B9
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_58_usu_000053f4
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_58_01_usu_00005400
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_59_usu_00005410
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shop_woman_talk

# .data:0x994 | 0xA064 | size: 0x98
.obj kizayarou_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_キザ野郎_usu_0000541c
	.4byte 0x00000600
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キザ野郎_usu_0000541c
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x000000DB
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キザ野郎_usu_0000541c
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0xFFFFFE3E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_キザ野郎_usu_0000541c
	.4byte 0x00400000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キザ野郎_usu_0000541c
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kizayarou_init

# .data:0xA2C | 0xA0FC | size: 0x38
.obj kizayarou_pig_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ブタキザ野郎_usu_00005428
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kizayarou_pig_init

# .data:0xA64 | 0xA134 | size: 0x84
.obj kizayarou_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_usu_0000512c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_VOICE_PIG1_usu_00005254
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_61_00_usu_00005438
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_61_usu_00005448
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kizayarou_talk

# .data:0xAE8 | 0xA1B8 | size: 0x70
.obj childABC_talk_01, local
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_63_usu_00005454
	.4byte 0x00000000
	.4byte str_子供Ａ_usu_00005460
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_64_usu_00005468
	.4byte 0x00000000
	.4byte str_子供Ｂ_usu_00005474
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_65_usu_0000547c
	.4byte 0x00000000
	.4byte str_子供Ｃ_usu_00005488
	.4byte 0x00000002
	.4byte 0x00000001
.endobj childABC_talk_01

# .data:0xB58 | 0xA228 | size: 0x70
.obj childABC_talk_02, local
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_79_usu_00005490
	.4byte 0x00000000
	.4byte str_子供Ａ_usu_00005460
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_80_usu_0000549c
	.4byte 0x00000000
	.4byte str_子供Ｂ_usu_00005474
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_81_usu_000054a8
	.4byte 0x00000000
	.4byte str_子供Ｃ_usu_00005488
	.4byte 0x00000002
	.4byte 0x00000001
.endobj childABC_talk_02

# .data:0xBC8 | 0xA298 | size: 0x70
.obj childABC_talk_03, local
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_81_2_usu_000054b4
	.4byte 0x00000000
	.4byte str_子供Ａ_usu_00005460
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_81_3_usu_000054c4
	.4byte 0x00000000
	.4byte str_子供Ｂ_usu_00005474
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_81_4_usu_000054d4
	.4byte 0x00000000
	.4byte str_子供Ｃ_usu_00005488
	.4byte 0x00000002
	.4byte 0x00000001
.endobj childABC_talk_03

# .data:0xC38 | 0xA308 | size: 0x70
.obj childABC_talk_04, local
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_81_4_2_usu_000054e4
	.4byte 0x00000000
	.4byte str_子供Ａ_usu_00005460
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_81_4_3_usu_000054f4
	.4byte 0x00000000
	.4byte str_子供Ｂ_usu_00005474
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_81_4_4_usu_00005504
	.4byte 0x00000000
	.4byte str_子供Ｃ_usu_00005488
	.4byte 0x00000002
	.4byte 0x00000001
.endobj childABC_talk_04

# .data:0xCA8 | 0xA378 | size: 0x58
.obj aunt_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_おばさん_usu_00005514
	.4byte 0x00000600
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x00020018
	.4byte 0xF8406307
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_おばさん_usu_00005514
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aunt_init

# .data:0xD00 | 0xA3D0 | size: 0x74
.obj aunt_pig_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ブタおばさん_usu_00005520
	.4byte 0x00000600
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x00020018
	.4byte 0xF8406307
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ブタおばさん_usu_00005520
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ブタおばさん_usu_00005520
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aunt_pig_init

# .data:0xD74 | 0xA444 | size: 0x65C
.obj iri_20_out_house, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_cam3d_evt_set_xyz
	.4byte 0xFFFFFE5C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte door_light2
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte door_up_se
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x00020019
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte 0xFE363C88
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x00020019
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0001005C
	.4byte house_close_se
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte door_light
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte door_open_se
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x00020019
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte 0xFE363C87
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_おばさん_usu_00005514
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_おばさん_usu_00005514
	.4byte 0xFFFFFE90
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_おばさん_usu_00005514
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_party_door_move
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0x0000003C
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE5C
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_おばさん_usu_00005514
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFE3E
	.4byte 0xFFFFFFFF
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_おばさん_usu_00005514
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x00020019
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001005C
	.4byte door_close_se
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte 0xFE363C87
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_xyz_off
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte door_dark_flag
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00001000
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000800
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00001000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_door_load_mapflag
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj iri_20_out_house

# .data:0x13D0 | 0xAAA0 | size: 0x254
.obj iri_20_aunt_to_house, local
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_おばさん_usu_00005514
	.4byte 0xFFFFFE7A
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte door_1
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000400
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_usu_0000512c
	.4byte 0xFFFFFE7A
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_usu_0000512c
	.4byte 0x00000400
	.4byte 0x0001005C
	.4byte door_open_se
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x00020019
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte 0xFE363C87
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_おばさん_usu_00005514
	.4byte 0xFFFFFE7A
	.4byte 0xFFFFFF47
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x00020019
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001005C
	.4byte door_close_se
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000002
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte 0xFE363C87
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj iri_20_aunt_to_house

# .data:0x1624 | 0xACF4 | size: 0xABC
.obj aunt_talk, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x00000014
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_20_001_usu_00005530
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_usu_0000512c
	.4byte 0x00000020
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_usu_0000512c
	.4byte 0xFFFFFE7A
	.4byte 0xFFFFFF7E
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE7A
	.4byte 0xFFFFFF9C
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte door_1
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte iri_20_out_house
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000400
	.4byte 0x000007D0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_EVT_ORGEL1_usu_0000553c
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_20_002_usu_0000554c
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_1_usu_00005558
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_20_003_usu_00005560
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_usu_00005378
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000201
	.4byte 0x00000BB8
	.4byte 0x0001005E
	.4byte iri_20_aunt_to_house
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000201
	.4byte 0x000007D0
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709D
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF840709E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_20_004_usu_0000556c
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_おばさん_usu_00005514
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_子供Ｂ_usu_00005474
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFE45
	.4byte 0xFFFFFF74
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_おばさん_usu_00005514
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE61
	.4byte 0xFFFFFF6A
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_おばさん_usu_00005514
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_usu_0000512c
	.4byte str_mario_usu_00005578
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_me_usu_0000512c
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_おばさん_usu_00005514
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_子供Ｂ_usu_00005474
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_20_005_usu_00005580
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_20_006_usu_0000558c
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_20_007_usu_00005598
	.4byte 0x00000020
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_usu_0000535c
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_usu_00005378
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_20_008_usu_000055a4
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_20_009_usu_000055b0
	.4byte 0x00000000
	.4byte str_子供Ａ_usu_00005460
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_20_010_usu_000055bc
	.4byte 0x00000000
	.4byte str_子供Ｂ_usu_00005474
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_20_011_usu_000055c8
	.4byte 0x00000000
	.4byte str_子供Ｃ_usu_00005488
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_20_012_usu_000055d4
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0002005B
	.4byte evt_pouch_get_haveitemcnt
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_sd_usu_000055e0
	.4byte 0x000000D9
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_sd_usu_000055e0
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_sd_usu_000055e0
	.4byte 0x00020032
	.4byte 0xF8406312
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_20_012_1_usu_000055e4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_usu_0000512c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_usu_0000512c
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_usu_0000512c
	.4byte 0xFFFFFE95
	.4byte 0xFFFFFF68
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_iri_20_usu_000055f4
	.4byte 0x000000D9
	.4byte 0xFFFFFEA7
	.4byte 0x00000014
	.4byte 0xFFFFFF7C
	.4byte 0x00000010
	.4byte 0xF8406312
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_usu_0000512c
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_usu_0000512c
	.4byte str_mario_usu_00005578
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_20_014_usu_000055fc
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0002005B
	.4byte evt_sub_save_playtime
	.4byte 0xF5DE072D
	.4byte 0x00020032
	.4byte 0xF5DE070C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8407092
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_sys_request_finish_usu_00005608
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_20_015_usu_0000561c
	.4byte 0x00000000
	.4byte str_子供Ａ_usu_00005460
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_20_016_usu_00005628
	.4byte 0x00000000
	.4byte str_子供Ｂ_usu_00005474
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_20_017_usu_00005634
	.4byte 0x00000000
	.4byte str_子供Ｃ_usu_00005488
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x00020018
	.4byte 0xF8406307
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_62_usu_00005640
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0001005E
	.4byte childABC_talk_01
	.4byte 0x0001000A
	.4byte 0x00000578
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_66_usu_0000564c
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg4_usu_66_yn_usu_00005658
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_pouch_get_haveitemcnt
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte get_item_list
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte check_tabemono
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000007
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_67_usu_00005668
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte delete_item_list
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_68_usu_00005674
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_orei_usu_00005680
	.4byte 0x00000082
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_orei_usu_00005680
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_orei_usu_00005680
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_69_usu_00005688
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_70_usu_00005694
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_70_usu_00005694
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG4_TEMPLE_BELL_usu_000056a0
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_usu_0000512c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_CHANGE_PIG1_usu_000056b8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_usu_000056d0
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8080
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ブタおばさん_usu_00005520
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_usu_0000512c
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_ブタおばさん_usu_00005520
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_npc_restart_regular_event
	.4byte str_ブタおばさん_usu_00005520
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_71_usu_000056dc
	.4byte 0x00000000
	.4byte str_子供Ａ_usu_00005460
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_72_usu_000056e8
	.4byte 0x00000000
	.4byte str_子供Ｂ_usu_00005474
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_73_usu_000056f4
	.4byte 0x00000000
	.4byte str_子供Ｃ_usu_00005488
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xF8406307
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_usu_0000512c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_VOICE_PIG1_usu_00005254
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_73_01_usu_00005700
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x000000DB
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_77_usu_00005710
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010026
	.4byte 0x000000DE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_78_usu_0000571c
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_81_1_usu_00005728
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_81_4_1_usu_00005738
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aunt_talk

# .data:0x20E0 | 0xB7B0 | size: 0x1C
.obj childA_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_子供Ａ_usu_00005460
	.4byte 0x00000600
	.4byte 0x00000002
	.4byte 0x00000001
.endobj childA_init

# .data:0x20FC | 0xB7CC | size: 0x7C
.obj childA_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x00020018
	.4byte 0xF8406307
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_74_usu_00005748
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte childABC_talk_01
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x000000DE
	.4byte 0x0001005E
	.4byte childABC_talk_02
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0001005E
	.4byte childABC_talk_03
	.4byte 0x0000002A
	.4byte 0x0001005E
	.4byte childABC_talk_04
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj childA_talk

# .data:0x2178 | 0xB848 | size: 0x1C
.obj childB_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_子供Ｂ_usu_00005474
	.4byte 0x00000600
	.4byte 0x00000002
	.4byte 0x00000001
.endobj childB_init

# .data:0x2194 | 0xB864 | size: 0x7C
.obj childB_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x00020018
	.4byte 0xF8406307
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_75_usu_00005754
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte childABC_talk_01
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x000000DE
	.4byte 0x0001005E
	.4byte childABC_talk_02
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0001005E
	.4byte childABC_talk_03
	.4byte 0x0000002A
	.4byte 0x0001005E
	.4byte childABC_talk_04
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj childB_talk

# .data:0x2210 | 0xB8E0 | size: 0x1C
.obj childC_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_子供Ｃ_usu_00005488
	.4byte 0x00000600
	.4byte 0x00000002
	.4byte 0x00000001
.endobj childC_init

# .data:0x222C | 0xB8FC | size: 0x7C
.obj childC_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x00020018
	.4byte 0xF8406307
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_76_usu_00005760
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte childABC_talk_01
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x000000DE
	.4byte 0x0001005E
	.4byte childABC_talk_02
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0001005E
	.4byte childABC_talk_03
	.4byte 0x0000002A
	.4byte 0x0001005E
	.4byte childABC_talk_04
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj childC_talk

# .data:0x22A8 | 0xB978 | size: 0x98
.obj gatekeeper_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_門番_usu_0000576c
	.4byte 0x00000600
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000B5
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_usu_00005774
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_門番_usu_0000576c
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0xFFFFFFC9
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_門番_usu_0000576c
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_門番_usu_0000576c
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0xFFFFFFC9
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gatekeeper_init

# .data:0x2340 | 0xBA10 | size: 0x84
.obj gatekeeper_pig_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ブタ門番_usu_0000577c
	.4byte 0x00000600
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000B5
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ブタ門番_usu_0000577c
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ブタ門番_usu_0000577c
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0xFFFFFFC9
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ブタ門番_usu_0000577c
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gatekeeper_pig_init

# .data:0x23C4 | 0xBA94 | size: 0x244
.obj gatekeeper_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000B3
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x0000015E
	.4byte 0xFFFFFFCE
	.4byte 0x00000078
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_move_behind_mario
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000174
	.4byte 0x0000007C
	.4byte 0x00000141
	.4byte 0x00000174
	.4byte 0x00000039
	.4byte 0xFFFFFFC3
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_usu_0000512c
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_44_usu_00005788
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000156
	.4byte 0x0000007C
	.4byte 0x00000141
	.4byte 0x00000156
	.4byte 0x00000039
	.4byte 0xFFFFFFC3
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg4_usu_45_usu_00005794
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001005C
	.4byte village_chief_change_pig_event
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000B3
	.4byte 0x00000002
	.4byte 0x00010026
	.4byte 0x000000B4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_45_01_usu_000057a0
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010026
	.4byte 0x000000B5
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_46_usu_000057b0
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_usu_0000512c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_VOICE_PIG1_usu_00005254
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_48_usu_000057bc
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010026
	.4byte 0x000000DB
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_49_usu_000057c8
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010026
	.4byte 0x000000DE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_49_1_usu_000057d4
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_49_2_usu_000057e4
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_49_2_1_usu_000057f4
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gatekeeper_talk

# .data:0x2608 | 0xBCD8 | size: 0x20
.obj crow_f_init, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_usu_0000512c
	.4byte 0x00000113
	.4byte 0x00000053
	.4byte 0x00000163
	.4byte 0x00000002
	.4byte 0x00000001
.endobj crow_f_init

# .data:0x2628 | 0xBCF8 | size: 0x20
.obj crow_g_init, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_usu_0000512c
	.4byte 0x000000FA
	.4byte 0x00000070
	.4byte 0x00000163
	.4byte 0x00000002
	.4byte 0x00000001
.endobj crow_g_init

# .data:0x2648 | 0xBD18 | size: 0x20
.obj crow_h_init, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_usu_0000512c
	.4byte 0xFFFFFF6D
	.4byte 0x0000006E
	.4byte 0x0000015A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj crow_h_init

# .data:0x2668 | 0xBD38 | size: 0x20
.obj crow_i_init, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_usu_0000512c
	.4byte 0xFFFFFF51
	.4byte 0x0000006E
	.4byte 0x0000015C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj crow_i_init

# .data:0x2688 | 0xBD58 | size: 0x20
.obj crow_j_init, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_usu_0000512c
	.4byte 0xFFFFFF3D
	.4byte 0x00000064
	.4byte 0xFFFFFF63
	.4byte 0x00000002
	.4byte 0x00000001
.endobj crow_j_init

# .data:0x26A8 | 0xBD78 | size: 0x150
.obj musume_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ブタ３人娘Ａ_usu_00005804
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_VOICE_PIG1_usu_00005254
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_148_1_01_usu_00005814
	.4byte 0x00000000
	.4byte str_ブタ３人娘Ａ_usu_00005804
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ブタ３人娘Ｂ_usu_00005828
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_VOICE_PIG1_usu_00005254
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_148_1_02_usu_00005838
	.4byte 0x00000000
	.4byte str_ブタ３人娘Ｂ_usu_00005828
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ブタ３人娘Ｃ_usu_0000584c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_VOICE_PIG1_usu_00005254
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_148_1_03_usu_0000585c
	.4byte 0x00000000
	.4byte str_ブタ３人娘Ｃ_usu_0000584c
	.4byte 0x00010026
	.4byte 0x000000D7
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_148_1_04_usu_00005870
	.4byte 0x00000000
	.4byte str_３人娘Ａ_usu_00005884
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_148_1_05_usu_00005890
	.4byte 0x00000000
	.4byte str_３人娘Ｂ_usu_000058a4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_148_1_06_usu_000058b0
	.4byte 0x00000000
	.4byte str_３人娘Ｃ_usu_000058c4
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj musume_talk

# .data:0x27F8 | 0xBEC8 | size: 0xA0
.obj musume_a_init, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C80
	.4byte 0xFFFFFE48
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C80
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000600
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte musume_talk
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00008000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00008000
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj musume_a_init

# .data:0x2898 | 0xBF68 | size: 0x3C
.obj musume_a_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_３人娘Ａ_usu_00005884
	.4byte str_c_dance_r_usu_000058d0
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_３人娘Ａ_usu_00005884
	.4byte str_踊り子_usu_000058dc
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_３人娘Ａ_usu_00005884
	.4byte 0x0001005E
	.4byte musume_a_init
	.4byte 0x00000002
	.4byte 0x00000001
.endobj musume_a_entry

# .data:0x28D4 | 0xBFA4 | size: 0x3C
.obj musume_a_pig_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ブタ３人娘Ａ_usu_00005804
	.4byte str_c_bubusan_usu_000058e4
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ブタ３人娘Ａ_usu_00005804
	.4byte str_ブタ_usu_000058f0
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ブタ３人娘Ａ_usu_00005804
	.4byte 0x0001005E
	.4byte musume_a_init
	.4byte 0x00000002
	.4byte 0x00000001
.endobj musume_a_pig_entry

# .data:0x2910 | 0xBFE0 | size: 0xA0
.obj musume_b_init, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C80
	.4byte 0xFFFFFE66
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C80
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000600
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte musume_talk
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00008000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00008000
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj musume_b_init

# .data:0x29B0 | 0xC080 | size: 0x3C
.obj musume_b_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_３人娘Ｂ_usu_000058a4
	.4byte str_c_dance_p_usu_000058f8
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_３人娘Ｂ_usu_000058a4
	.4byte str_踊り子ピンク_usu_00005904
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_３人娘Ｂ_usu_000058a4
	.4byte 0x0001005E
	.4byte musume_b_init
	.4byte 0x00000002
	.4byte 0x00000001
.endobj musume_b_entry

# .data:0x29EC | 0xC0BC | size: 0x3C
.obj musume_b_pig_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ブタ３人娘Ｂ_usu_00005828
	.4byte str_c_bubusan_usu_000058e4
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ブタ３人娘Ｂ_usu_00005828
	.4byte str_ブタ_usu_000058f0
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ブタ３人娘Ｂ_usu_00005828
	.4byte 0x0001005E
	.4byte musume_b_init
	.4byte 0x00000002
	.4byte 0x00000001
.endobj musume_b_pig_entry

# .data:0x2A28 | 0xC0F8 | size: 0xA0
.obj musume_c_init, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C80
	.4byte 0xFFFFFE84
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C80
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000600
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte musume_talk
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00008000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00008000
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj musume_c_init

# .data:0x2AC8 | 0xC198 | size: 0x3C
.obj musume_c_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_３人娘Ｃ_usu_000058c4
	.4byte str_c_dance_k_usu_00005914
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_３人娘Ｃ_usu_000058c4
	.4byte str_踊り子黄緑_usu_00005920
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_３人娘Ｃ_usu_000058c4
	.4byte 0x0001005E
	.4byte musume_c_init
	.4byte 0x00000002
	.4byte 0x00000001
.endobj musume_c_entry

# .data:0x2B04 | 0xC1D4 | size: 0x3C
.obj musume_c_pig_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ブタ３人娘Ｃ_usu_0000584c
	.4byte str_c_bubusan_usu_000058e4
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ブタ３人娘Ｃ_usu_0000584c
	.4byte str_ブタ_usu_000058f0
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ブタ３人娘Ｃ_usu_0000584c
	.4byte 0x0001005E
	.4byte musume_c_init
	.4byte 0x00000002
	.4byte 0x00000001
.endobj musume_c_pig_entry

# .data:0x2B40 | 0xC210 | size: 0x60
.obj urouro_move, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x40000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_usu_0000512c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte urouro_init_func
	.4byte str_me_usu_0000512c
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24B4280
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte urouro_main_func
	.4byte str_me_usu_0000512c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj urouro_move

# .data:0x2BA0 | 0xC270 | size: 0x60
.obj urouro_move_semai, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x40000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_usu_0000512c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte urouro_init_func
	.4byte str_me_usu_0000512c
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24AB680
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte urouro_main_func
	.4byte str_me_usu_0000512c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj urouro_move_semai

# .data:0x2C00 | 0xC2D0 | size: 0x8A0
.obj npcEnt, local
	.4byte str_村人Ｆ_usu_00005118
	.4byte 0x40080600
	.4byte 0x00000000
	.4byte villagerF_init
	.4byte 0x00000000
	.4byte villagerF_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_村人Ｇ_usu_00005188
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte villagerG_init
	.4byte urouro_move
	.4byte villagerG_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_村人Ｈ_usu_000051f4
	.4byte 0x40080600
	.4byte 0x00000000
	.4byte villagerH_init
	.4byte 0x00000000
	.4byte villagerH_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_村人Ｉ_usu_00005240
	.4byte 0x40080600
	.4byte 0x00000000
	.4byte villagerI_init
	.4byte 0x00000000
	.4byte villagerI_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_村人Ｊ_usu_000052ac
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte villagerJ_init
	.4byte urouro_move
	.4byte villagerJ_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_店の主人_usu_00005304
	.4byte 0x40080600
	.4byte 0x00000000
	.4byte shop_man_init
	.4byte 0x00000000
	.4byte shop_man_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_お店の奥さん_usu_00005340
	.4byte 0x40080600
	.4byte 0x00000000
	.4byte shop_woman_init
	.4byte 0x00000000
	.4byte shop_woman_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_キザ野郎_usu_0000541c
	.4byte 0x40080600
	.4byte 0x00000000
	.4byte kizayarou_init
	.4byte 0x00000000
	.4byte kizayarou_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_おばさん_usu_00005514
	.4byte 0x40080600
	.4byte 0x00000000
	.4byte aunt_init
	.4byte 0x00000000
	.4byte aunt_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_子供Ａ_usu_00005460
	.4byte 0x40080600
	.4byte 0x00000000
	.4byte childA_init
	.4byte 0x00000000
	.4byte childA_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_子供Ｂ_usu_00005474
	.4byte 0x40080600
	.4byte 0x00000000
	.4byte childB_init
	.4byte 0x00000000
	.4byte childB_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_子供Ｃ_usu_00005488
	.4byte 0x40080600
	.4byte 0x00000000
	.4byte childC_init
	.4byte 0x00000000
	.4byte childC_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_門番_usu_0000576c
	.4byte 0x40080600
	.4byte 0x00000000
	.4byte gatekeeper_init
	.4byte 0x00000000
	.4byte gatekeeper_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ブタキザ野郎_usu_00005428
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte kizayarou_pig_init
	.4byte urouro_move
	.4byte kizayarou_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ブタおばさん_usu_00005520
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte aunt_pig_init
	.4byte urouro_move
	.4byte aunt_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ブタ門番_usu_0000577c
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte gatekeeper_pig_init
	.4byte 0x00000000
	.4byte gatekeeper_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ブタ村人Ｉ_usu_00005248
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte villagerI_pig_init
	.4byte urouro_move
	.4byte villagerI_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ブタ村人Ｊ_usu_000052b4
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte villagerJ_pig_init
	.4byte urouro_move
	.4byte villagerJ_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_カラスＦ_usu_0000592c
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte crow_f_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_カラスＧ_usu_00005938
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte crow_g_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_カラスＨ_usu_00005944
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte crow_h_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_カラスＩ_usu_00005950
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte crow_i_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_カラスＪ_usu_0000595c
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte crow_j_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npcEnt

# .data:0x34A0 | 0xCB70 | size: 0x298
.obj village_chief_change_pig_event, local
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFFFFFED4
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG4_TEMPLE_BELL_usu_000056a0
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_hello_party
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_usu_00005968
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_usu_00005980
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte zero_usu_00005980
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020038
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000023
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000000D
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x00000064
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x0000014A
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg4_usu_50_usu_00005984
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
.endobj village_chief_change_pig_event

# .data:0x3738 | 0xCE08 | size: 0x1C0
.obj evt_mon_open, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000B6
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_45_02_usu_00005990
	.4byte 0x00000000
	.4byte str_門番_usu_0000576c
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_monato_usu_000059a0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_mon01_usu_000059ac
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_FENCE_OPEN1_usu_000059b4
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000384
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x0000007B
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24A7AB8
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C83
	.4byte 0xF24A7A20
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_mon01_usu_000059ac
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_mon02_usu_000059cc
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000007B
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_mon_usu_000059d4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_mon02_usu_000059dc
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000B7
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_mon_open

# .data:0x38F8 | 0xCFC8 | size: 0x88
.obj cam_up, local
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_get_pos
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_cam_get_at
	.4byte 0x00000004
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000055
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x00000055
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cam_up

# .data:0x3980 | 0xD050 | size: 0x20
.obj cam_down, local
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cam_down

# .data:0x39A0 | 0xD070 | size: 0x90
.obj usu01_check_vivian, local
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_get_status
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F82
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj usu01_check_vivian

# .data:0x3A30 | 0xD100 | size: 0x628
.obj usu01_crowFG_talk_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_カラスＦ_usu_0000592c
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0008005B
	.4byte evt_sub_area_check
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_party_use_check
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_motion
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x0000001C
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_balloon_tenten
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_balloon_off
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_key_get_buttontrg
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_mario_party_use_check
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000100
	.4byte 0x0001005B
	.4byte evt_mario_balloon_off
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte mainwindow_opendisable
	.4byte 0x0001005E
	.4byte cam_up
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_カラスＦ_usu_0000592c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_CROW_HOWL1_usu_000059e4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_153_usu_000059f8
	.4byte 0x00000000
	.4byte str_カラスＦ_usu_0000592c
	.4byte 0x0001005E
	.4byte cam_down
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte mainwindow_openenable
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_get_status
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_balloon_off
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000CE
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte mainwindow_opendisable
	.4byte 0x0001005E
	.4byte cam_up
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_カラスＦ_usu_0000592c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_CROW_HOWL1_usu_000059e4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000D2
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_137_usu_00005a08
	.4byte 0x00000000
	.4byte str_カラスＦ_usu_0000592c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_138_usu_00005a18
	.4byte 0x00000000
	.4byte str_カラスＧ_usu_00005938
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_139_usu_00005a28
	.4byte 0x00000000
	.4byte str_カラスＦ_usu_0000592c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_140_usu_00005a38
	.4byte 0x00000000
	.4byte str_カラスＧ_usu_00005938
	.4byte 0x0001005E
	.4byte cam_down
	.4byte 0x00020018
	.4byte 0xF8406308
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_get_status
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000118
	.4byte 0x0000015E
	.4byte 0xF24BBA80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg4_usu_149_usu_00005a48
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_usu_000053d4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_usu_00005378
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg4_usu_150_usu_00005a58
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xF8406308
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x000000DE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_141_usu_00005a68
	.4byte 0x00000000
	.4byte str_カラスＦ_usu_0000592c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_142_usu_00005a78
	.4byte 0x00000000
	.4byte str_カラスＧ_usu_00005938
	.4byte 0x0001005E
	.4byte cam_down
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_142_1_usu_00005a88
	.4byte 0x00000000
	.4byte str_カラスＦ_usu_0000592c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_142_2_usu_00005a98
	.4byte 0x00000000
	.4byte str_カラスＧ_usu_00005938
	.4byte 0x0001005E
	.4byte cam_down
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_142_2_1_usu_00005aa8
	.4byte 0x00000000
	.4byte str_カラスＦ_usu_0000592c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_142_2_2_usu_00005abc
	.4byte 0x00000000
	.4byte str_カラスＧ_usu_00005938
	.4byte 0x0001005E
	.4byte cam_down
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte mainwindow_openenable
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj usu01_crowFG_talk_event

# .data:0x4058 | 0xD728 | size: 0x484
.obj usu01_crowHI_talk_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F81
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_カラスＨ_usu_00005944
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0008005B
	.4byte evt_sub_area_check
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00000050
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_party_use_check
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_motion
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x0000001C
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_balloon_tenten
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_balloon_off
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_key_get_buttontrg
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_mario_party_use_check
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000100
	.4byte 0x0001005B
	.4byte evt_mario_balloon_off
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte cam_up
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_カラスＨ_usu_00005944
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_CROW_HOWL1_usu_000059e4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_153_usu_000059f8
	.4byte 0x00000000
	.4byte str_カラスＨ_usu_00005944
	.4byte 0x0001005E
	.4byte cam_down
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_get_status
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_balloon_off
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000CE
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte mainwindow_opendisable
	.4byte 0x0001005E
	.4byte cam_up
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_カラスＨ_usu_00005944
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_CROW_HOWL1_usu_000059e4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000D2
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_143_usu_00005ad0
	.4byte 0x00000000
	.4byte str_カラスＨ_usu_00005944
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_144_usu_00005ae0
	.4byte 0x00000000
	.4byte str_カラスＩ_usu_00005950
	.4byte 0x00010026
	.4byte 0x000000DE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_145_usu_00005af0
	.4byte 0x00000000
	.4byte str_カラスＨ_usu_00005944
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_146_usu_00005b00
	.4byte 0x00000000
	.4byte str_カラスＩ_usu_00005950
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_146_1_usu_00005b10
	.4byte 0x00000000
	.4byte str_カラスＨ_usu_00005944
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_146_2_usu_00005b20
	.4byte 0x00000000
	.4byte str_カラスＩ_usu_00005950
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_146_2_1_usu_00005b30
	.4byte 0x00000000
	.4byte str_カラスＨ_usu_00005944
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_146_2_2_usu_00005b44
	.4byte 0x00000000
	.4byte str_カラスＩ_usu_00005950
	.4byte 0x00000031
	.4byte 0x0001005E
	.4byte cam_down
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte mainwindow_openenable
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj usu01_crowHI_talk_event

# .data:0x44DC | 0xDBAC | size: 0x424
.obj usu01_crowJ_talk_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_カラスＪ_usu_0000595c
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0008005B
	.4byte evt_sub_area_check
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_party_use_check
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_motion
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x0000001C
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_balloon_tenten
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_balloon_off
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_key_get_buttontrg
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_mario_party_use_check
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000100
	.4byte 0x0001005B
	.4byte evt_mario_balloon_off
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte cam_up
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_カラスＪ_usu_0000595c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_CROW_HOWL1_usu_000059e4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_153_usu_000059f8
	.4byte 0x00000000
	.4byte str_カラスＪ_usu_0000595c
	.4byte 0x0001005E
	.4byte cam_down
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_get_status
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_balloon_off
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000CE
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte mainwindow_opendisable
	.4byte 0x0001005E
	.4byte cam_up
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_カラスＪ_usu_0000595c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_CROW_HOWL1_usu_000059e4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000D2
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_147_usu_00005b58
	.4byte 0x00000000
	.4byte str_カラスＪ_usu_0000595c
	.4byte 0x00010026
	.4byte 0x000000DE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_148_usu_00005b68
	.4byte 0x00000000
	.4byte str_カラスＪ_usu_0000595c
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_148_1_usu_00005b78
	.4byte 0x00000000
	.4byte str_カラスＪ_usu_0000595c
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_148_1_1_usu_00005b88
	.4byte 0x00000000
	.4byte str_カラスＪ_usu_0000595c
	.4byte 0x00000031
	.4byte 0x0001005E
	.4byte cam_down
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte mainwindow_openenable
	.4byte 0x00020032
	.4byte 0xFD050F82
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj usu01_crowJ_talk_event

# .data:0x4900 | 0xDFD0 | size: 0x18
.obj minka_npc, local
	.4byte str_おばさん_usu_00005514
	.4byte str_ブタおばさん_usu_00005520
	.4byte str_子供Ａ_usu_00005460
	.4byte str_子供Ｂ_usu_00005474
	.4byte str_子供Ｃ_usu_00005488
	.4byte 0x00000000
.endobj minka_npc

# .data:0x4918 | 0xDFE8 | size: 0x8
.obj minka_item, local
	.4byte str_iri_20_usu_000055f4
	.4byte 0x00000000
.endobj minka_item

# .data:0x4920 | 0xDFF0 | size: 0x18
.obj shop_npc, local
	.4byte str_お店の奥さん_usu_00005340
	.4byte str_キザ野郎_usu_0000541c
	.4byte str_ブタキザ野郎_usu_00005428
	.4byte str_店の主人_usu_00005304
	.4byte str_ペラ魔人_usu_00005b9c
	.4byte 0x00000000
.endobj shop_npc

# .data:0x4938 | 0xE008 | size: 0x10
.obj shop_mobj, local
	.4byte str_usu_00_lock_usu_00005ba8
	.4byte str_pera_box_usu_00005bb4
	.4byte str_mobj_box00_usu_00005bc0
	.4byte 0x00000000
.endobj shop_mobj

# .data:0x4948 | 0xE018 | size: 0x14
.obj shop_item, local
	.4byte str_item_02_usu_00005bcc
	.4byte str_item_03_usu_00005bd4
	.4byte str_item_04_usu_00005bdc
	.4byte str_item_05_usu_00005be4
	.4byte 0x00000000
.endobj shop_item

# .data:0x495C | 0xE02C | size: 0x30
.obj evt_door_1_1, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7CB8
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie1_door_usu_00005bec
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_door_1_1

# .data:0x498C | 0xE05C | size: 0x30
.obj evt_door_1_2, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie1_door_usu_00005bec
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_door_1_2

# .data:0x49BC | 0xE08C | size: 0x70
.obj evt_wall_1, local
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C81
	.4byte 0xF24A7880
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie1_kai1_usu_00005c00
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie1_kai2_usu_00005c14
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_wall_1

# .data:0x4A2C | 0xE0FC | size: 0x30
.obj door_1_open, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00004800
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_1_open

# .data:0x4A5C | 0xE12C | size: 0x38
.obj door_1_close, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_1_close

# .data:0x4A94 | 0xE164 | size: 0x48
.obj door_1, local
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte str_S_usu01_ie1_door_usu_00005bec
	.4byte str_A_door46_usu_00005c28
	.4byte str_A_door45_usu_00005c34
	.4byte str_S_usu01_ie1_usu_00005c40
	.4byte 0x00000000
	.4byte str_S_usu01_ie1_naka_usu_00005c4c
	.4byte 0x00000000
	.4byte evt_door_1_1
	.4byte evt_door_1_2
	.4byte evt_wall_1
	.4byte minka_npc
	.4byte 0x00000000
	.4byte minka_item
	.4byte door_1_open
	.4byte door_1_close
.endobj door_1

# .data:0x4ADC | 0xE1AC | size: 0x3C
.obj evt_door_2_1_1, local
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7CB8
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie2_door1_usu_00005c60
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_door_2_1_1

# .data:0x4B18 | 0xE1E8 | size: 0x8
.obj evt_door_2_1_2, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_door_2_1_2

# .data:0x4B20 | 0xE1F0 | size: 0x70
.obj evt_wall_2_1, local
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C81
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie2_kai1_usu_00005c74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24A7880
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie2_kai2_usu_00005c88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_wall_2_1

# .data:0x4B90 | 0xE260 | size: 0x150
.obj loop_msg, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000C8
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002001B
	.4byte 0xF5DE0180
	.4byte 0x000000D7
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_mario_wait_movable
	.4byte 0x0001000A
	.4byte 0xFE363C83
	.4byte 0x00020057
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte chk_fuki
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00020059
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_close
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x00020057
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020057
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020059
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020059
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj loop_msg

# .data:0x4CE0 | 0xE3B0 | size: 0x80
.obj mise_kiza_msg, local
	.4byte 0x0000006E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_キザ野郎_usu_0000541c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_stg4_usu_61_3_usu_00005c9c
	.4byte 0x00020033
	.4byte 0xFE363C82
	.4byte 0xF9718882
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x000002BC
	.4byte 0x0001005E
	.4byte loop_msg
	.4byte 0x00000070
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_店の主人_usu_00005304
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_stg4_usu_61_4_usu_00005cac
	.4byte 0x00020033
	.4byte 0xFE363C82
	.4byte 0xF9718883
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x0000012C
	.4byte 0x0001005E
	.4byte loop_msg
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mise_kiza_msg

# .data:0x4D60 | 0xE430 | size: 0xB8
.obj mawari_house_delay, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000B4
	.4byte 0x00020018
	.4byte 0xF8406305
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_monban_buta2
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001005F
	.4byte 0xFD050F83
	.4byte 0x0002005B
	.4byte evt_msg_close
	.4byte str_stg4_usu_61_3_usu_00005c9c
	.4byte 0x0002005B
	.4byte evt_msg_close
	.4byte str_stg4_usu_61_4_usu_00005cac
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_usu01_ie3_usu_00005cbc
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_usu01_ie3_usu_00005cbc
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mawari_house_delay

# .data:0x4E18 | 0xE4E8 | size: 0x5C
.obj door_2_1_open, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00004800
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x0001005F
	.4byte 0xFD050F84
	.4byte 0x0002005B
	.4byte evt_msg_close
	.4byte str_stg4_usu_61_1_usu_00005cc8
	.4byte 0x0002005B
	.4byte evt_msg_close
	.4byte str_stg4_usu_61_2_usu_00005cd8
	.4byte 0x0002005D
	.4byte mise_kiza_msg
	.4byte 0xFD050F83
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_2_1_open

# .data:0x4E74 | 0xE544 | size: 0x48
.obj door_2_1, local
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte str_S_usu01_ie2_door1_usu_00005c60
	.4byte str_A_usu01_ie2_door2_u_usu_00005ce8
	.4byte str_A_usu01_ie2_door2_usu_00005cfc
	.4byte str_S_usu01_ie2_usu_00005d10
	.4byte 0x00000000
	.4byte str_S_usu01_ie2_naka_usu_00005d1c
	.4byte 0x00000000
	.4byte evt_door_2_1_1
	.4byte 0x00000000
	.4byte evt_wall_2_1
	.4byte shop_npc
	.4byte shop_mobj
	.4byte shop_item
	.4byte door_2_1_open
	.4byte mawari_house_delay
.endobj door_2_1

# .data:0x4EBC | 0xE58C | size: 0x3D0
.obj evt_ie2_door2_1, local
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_usu01_ie2_naka2_usu_00005d68
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_usu01_ie2_naka2_usu_00005d68
	.4byte 0x00001000
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_05_usu_00005be4
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte str_item_05_usu_00005be4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_item_05_usu_00005be4
	.4byte 0xFE363C80
	.4byte 0xFFFFFC18
	.4byte 0xFE363C82
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF2B
	.4byte 0xFFFFFE29
	.4byte 0xF24C9680
	.4byte 0x0003005B
	.4byte evt_party_set_homing_dist
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN_WOOD1_usu_00005d7c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie2_door3_usu_00005d90
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_mario_party_door_move
	.4byte 0xFFFFFED7
	.4byte 0xFFFFFE60
	.4byte 0xF24C9680
	.4byte 0x0002005B
	.4byte evt_party_move_behind_mario
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_set_homing_dist
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT_WOOD1_usu_00005da4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie2_door3_usu_00005d90
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005F
	.4byte 0xFD050F83
	.4byte 0x0002005B
	.4byte evt_msg_close
	.4byte str_stg4_usu_61_3_usu_00005c9c
	.4byte 0x0002005B
	.4byte evt_msg_close
	.4byte str_stg4_usu_61_4_usu_00005cac
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000B9
	.4byte 0x0001005B
	.4byte shop_item_disp_off
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte ie2_npc_disp_off
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_WALL_MOVE1_usu_00005db8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_usu01_ie2_mkabe_usu_00005dc8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie2_door3_usu_00005d90
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_FALL1_usu_00005ddc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ie2_door2_1

# .data:0x528C | 0xE95C | size: 0x388
.obj evt_ie2_door2_2, local
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie2_door3_usu_00005d90
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_homing_dist
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0x0002005B
	.4byte evt_party_move_behind_mario
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_WALL_MOVE1_usu_00005db8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_usu01_ie2_mkabe_usu_00005dc8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000B9
	.4byte 0x0001005B
	.4byte shop_item_disp_on
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte ie2_npc_disp_on
	.4byte 0x0002005D
	.4byte mise_kiza_msg
	.4byte 0xFD050F83
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN_WOOD1_usu_00005d7c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie2_door3_usu_00005d90
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_mario_party_door_move
	.4byte 0xFFFFFF2B
	.4byte 0xFFFFFE29
	.4byte 0xF24C9680
	.4byte 0x0002005B
	.4byte evt_party_move_behind_mario
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_set_homing_dist
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT_WOOD1_usu_00005da4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie2_door3_usu_00005d90
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_usu01_ie2_naka2_usu_00005d68
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_usu01_ie2_naka2_usu_00005d68
	.4byte 0x00001000
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_05_usu_00005be4
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte str_item_05_usu_00005be4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_item_05_usu_00005be4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ie2_door2_2

# .data:0x5614 | 0xECE4 | size: 0x30
.obj evt_door_3_1, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7CB8
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie3_door_usu_00005dec
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_door_3_1

# .data:0x5644 | 0xED14 | size: 0x30
.obj evt_door_3_2, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie3_door_usu_00005dec
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_door_3_2

# .data:0x5674 | 0xED44 | size: 0x78
.obj evt_wall_3, local
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C81
	.4byte 0xF24A7880
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie3_kai1_usu_00005e00
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_usu01_ie3_kai2_usu_00005e14
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_wall_3

# .data:0x56EC | 0xEDBC | size: 0x8
.obj door_3_item, local
	.4byte str_item01_usu_00005e28
	.4byte 0x00000000
.endobj door_3_item

# .data:0x56F4 | 0xEDC4 | size: 0x30
.obj door_3_open, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00004800
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_3_open

# .data:0x5724 | 0xEDF4 | size: 0x38
.obj door_3_close, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_3_close

# .data:0x575C | 0xEE2C | size: 0x48
.obj door_3, local
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte str_S_usu01_ie3_door_usu_00005dec
	.4byte str_A_usu01_ie3_doaa_u_usu_00005e30
	.4byte str_A_usu01_ie3_doaa_usu_00005e44
	.4byte str_S_usu01_ie3_usu_00005cbc
	.4byte 0x00000000
	.4byte str_S_usu01_ie3_naka_usu_00005e58
	.4byte 0x00000000
	.4byte evt_door_3_1
	.4byte evt_door_3_2
	.4byte evt_wall_3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte door_3_item
	.4byte door_3_open
	.4byte door_3_close
.endobj door_3

# .data:0x57A4 | 0xEE74 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_e_bero_usu_00005774
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_gra_00_usu_00005e6c
	.4byte str_w_bero_usu_00005e74
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_w_bero_usu_00005e74
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_usu_00_usu_00005e7c
	.4byte str_e_bero_usu_00005774
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

# .data:0x5858 | 0xEF28 | size: 0x140
.obj usu01_gusun, local
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000DB
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406438
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001D
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0002001C
	.4byte 0xFE363C83
	.4byte 0x00000064
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x00000025
	.4byte 0x0000001E
	.4byte 0xFFFFFF0C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_51_usu_00005e84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x00000025
	.4byte 0x0000001E
	.4byte 0xFFFFFF0C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_61_1_usu_00005cc8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x00000025
	.4byte 0x0000001E
	.4byte 0xFFFFFF0C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_61_2_usu_00005cd8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj usu01_gusun

# .data:0x5998 | 0xF068 | size: 0x88
.obj evt_monban_buta_main, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ブタ門番_usu_0000577c
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0xFFFFFFC9
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_門番_usu_0000576c
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG4_TEMPLE_BELL_usu_000056a0
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_usu_00005774
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000B5
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_monban_buta_main

# .data:0x5A20 | 0xF0F0 | size: 0x48
.obj evt_monban_buta, local
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000B5
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001005E
	.4byte evt_monban_buta_main
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_monban_buta

# .data:0x5A68 | 0xF138 | size: 0x44
.obj evt_monban_buta2, local
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000B5
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005E
	.4byte evt_monban_buta_main
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_monban_buta2

# .data:0x5AAC | 0xF17C | size: 0x1DC
.obj evt_monban_look, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000B6
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000B5
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000001A4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_sub_get_dist
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0002001A
	.4byte 0xFE363C86
	.4byte 0x00000064
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0003005B
	.4byte evt_party_yoshi_ride
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_wait_rideon
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ブタ門番_usu_0000577c
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_ブタ門番_usu_0000577c
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_usu_00005e90
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_usu_00005980
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte zero_usu_00005980
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg4_usu_47_usu_00005eac
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000B6
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_monban_look

# .data:0x5C88 | 0xF358 | size: 0x8
.obj lock_tbl, local
	.4byte 0x00000015
	.4byte 0xFFFFFFFF
.endobj lock_tbl

# .data:0x5C90 | 0xF360 | size: 0xA4
.obj lock_item_check, local
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000015
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte lock_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_me_usu_0000512c
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406305
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_お店の奥さん_usu_00005340
	.4byte str_mario_usu_00005578
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_57_usu_00005eb8
	.4byte 0x00000000
	.4byte str_お店の奥さん_usu_00005340
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_me_usu_0000512c
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj lock_item_check

# .data:0x5D34 | 0xF404 | size: 0x34
.obj unlock, local
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_usu01_ie2_door3_usu_00005ec4
	.4byte 0x00000000
	.4byte evt_ie2_door2_1
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000B9
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unlock

# .data:0x5D68 | 0xF438 | size: 0x30
.obj obj_list, local
	.4byte str_mi02_S_item_01_usu_00005ed8
	.4byte str_A_item_01_usu_00005ee8
	.4byte str_mi02_mi02_S_item_02_usu_00005ef4
	.4byte str_A_item_02_usu_00005f08
	.4byte str_mi02_S_item_03_usu_00005f14
	.4byte str_A_item_03_usu_00005f24
	.4byte str_mi02_S_item_04_usu_00005f30
	.4byte str_A_item_04_usu_00005f40
	.4byte str_mi02_S_item_05_usu_00005f4c
	.4byte str_A_item_05_usu_00005f5c
	.4byte str_mi02_S_item_06_usu_00005f68
	.4byte str_A_item_06_usu_00005f78
.endobj obj_list

# .data:0x5D98 | 0xF468 | size: 0x30
.obj goods_list, local
	.4byte 0x00000081
	.4byte 0x00000014
	.4byte 0x000000B1
	.4byte 0x0000000A
	.4byte 0x0000008C
	.4byte 0x0000001E
	.4byte 0x0000009B
	.4byte 0x00000014
	.4byte 0x00000095
	.4byte 0x0000000F
	.4byte 0x00000097
	.4byte 0x00000028
.endobj goods_list

# .data:0x5DC8 | 0xF498 | size: 0x60
.obj trade_list, local
	.4byte 0x00000081
	.4byte 0x000A0000
	.4byte 0x000000B1
	.4byte 0x00050000
	.4byte 0x0000008C
	.4byte 0x000F0000
	.4byte 0x0000009B
	.4byte 0x000A0000
	.4byte 0x00000095
	.4byte 0x00070000
	.4byte 0x00000097
	.4byte 0x00140000
	.4byte 0x000000B6
	.4byte 0x00030000
	.4byte 0x000000A7
	.4byte 0x000E0000
	.4byte 0x00000098
	.4byte 0x00040000
	.4byte 0x000000BF
	.4byte 0x00C80000
	.4byte 0x000000AD
	.4byte 0x000C0000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj trade_list

# .data:0x5E28 | 0xF4F8 | size: 0x98
.obj shopper_data, local
	.4byte str_お店の奥さん_usu_00005340
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_usugurashop_00_usu_00005f84
	.4byte str_usugurashop_01_usu_00005f94
	.4byte str_usugurashop_02_usu_00005fa4
	.4byte str_usugurashop_03_usu_00005fb4
	.4byte str_usugurashop_04_usu_00005fc4
	.4byte str_usugurashop_05_usu_00005fd4
	.4byte str_usugurashop_06_usu_00005fe4
	.4byte str_usugurashop_07_usu_00005ff4
	.4byte str_usugurashop_08_usu_00006004
	.4byte str_usugurashop_09_usu_00006014
	.4byte str_usugurashop_10_usu_00006024
	.4byte str_usugurashop_11_usu_00006034
	.4byte str_usugurashop_12_usu_00006044
	.4byte str_usugurashop_13_usu_00006054
	.4byte str_usugurashop_14_usu_00006064
	.4byte str_usugurashop_15_usu_00006074
	.4byte str_usugurashop_16_usu_00006084
	.4byte str_usugurashop_17_usu_00006094
	.4byte str_usugurashop_18_usu_000060a4
	.4byte str_usugurashop_19_usu_000060b4
	.4byte str_usugurashop_20_usu_000060c4
	.4byte str_usugurashop_21_usu_000060d4
	.4byte str_usugurashop_22_usu_000060e4
	.4byte str_usugurashop_23_usu_000060f4
	.4byte str_usugurashop_24_usu_00006104
	.4byte str_usugurashop_25_usu_00006114
	.4byte str_usugurashop_26_usu_00006124
	.4byte str_usugurashop_27_usu_00006134
	.4byte str_usugurashop_28_usu_00006144
	.4byte str_usugurashop_29_usu_00006154
	.4byte str_usugurashop_30_usu_00006164
	.4byte str_usugurashop_31_usu_00006174
	.4byte str_usugurashop_32_usu_00006184
	.4byte str_usugurashop_33_usu_00006194
	.4byte str_usugurashop_34_usu_000061a4
.endobj shopper_data

# .data:0x5EC0 | 0xF590 | size: 0x2C
.obj shopper_talk1, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_59_usu_00005410
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFF9C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shopper_talk1

# .data:0x5EEC | 0xF5BC | size: 0x2C
.obj shopper_talk2, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_60_usu_000061b4
	.4byte 0x00000000
	.4byte str_me_usu_0000512c
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFF9C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shopper_talk2

# .data:0x5F18 | 0xF5E8 | size: 0x40
.obj booboo_name, local
	.4byte str_ブタキザ野郎_usu_00005428
	.4byte 0x07000000
	.4byte str_ブタおばさん_usu_00005520
	.4byte 0x01000000
	.4byte str_ブタ門番_usu_0000577c
	.4byte 0x03010000
	.4byte str_ブタ村人Ｉ_usu_00005248
	.4byte 0x05010000
	.4byte str_ブタ村人Ｊ_usu_000052b4
	.4byte 0x04010000
	.4byte str_ブタ３人娘Ａ_usu_00005804
	.4byte 0x04010000
	.4byte str_ブタ３人娘Ｂ_usu_00005828
	.4byte 0x04010000
	.4byte str_ブタ３人娘Ｃ_usu_0000584c
	.4byte 0x04010000
.endobj booboo_name

# .data:0x5F58 | 0xF628 | size: 0x8
.obj evt_roll_get, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_roll_get

# .data:0x5F60 | 0xF630 | size: 0x8
.obj key_tbl, local
	.4byte 0x00000023
	.4byte 0xFFFFFFFF
.endobj key_tbl

# .data:0x5F68 | 0xF638 | size: 0x528
.obj evt_majin, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFEFC
	.4byte 0xFFFFFE75
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF15
	.4byte 0xFFFFFE8E
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840630C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_pera_box_usu_00005bb4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_majin3_01_usu_000061c0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_pera_box_usu_00005bb4
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MOBJ_BLACKBOX_SW_usu_000061d4
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte evt_mobj_set_anim
	.4byte str_pera_box_usu_00005bb4
	.4byte str_A_3_usu_000061f0
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_pera_box_usu_00005bb4
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_majin3_02_usu_000061f4
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_G_usu_00006208
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_usu_00005378
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_majin3_03_usu_00006210
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_usu_0000535c
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_usu_00005378
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_majin3_04_usu_00006224
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_usu_000053cc
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_usu_00005378
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_majin3_05_usu_00006238
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_usu_0000535c
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_usu_00005378
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_majin3_06_usu_0000624c
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Z_usu_00006260
	.4byte 0x0001000A
	.4byte 0x00000640
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_usu_00005378
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_majin3_07_usu_00006268
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_pera_box_usu_00005bb4
	.4byte 0x00020032
	.4byte 0xF840630C
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000023
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_pera_box_usu_00005bb4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_majin3_08_usu_0000627c
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_pera_box_usu_00005bb4
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_pera_box_usu_00005bb4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_majin3_09_usu_00006290
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte key_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_pera_box_usu_00005bb4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_majin3_10_usu_000062a4
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_pera_box_usu_00005bb4
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000023
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_pera_box_usu_00005bb4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_usu_majin3_11_usu_000062b8
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_N_usu_00005370
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_majin

# .data:0x6490 | 0xFB60 | size: 0x3B4
.obj evt_majin2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_pera_box_usu_00005bb4
	.4byte 0x0003005B
	.4byte evt_pouch_add_item
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_EVT_PERAMAJIN1_usu_000062cc
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000400
	.4byte 0x0001005B
	.4byte bgm_start_wait
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_kusya_usu_000062e0
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_usu_000062ec
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_usu_000062ec
	.4byte str_OFF_d_kusya_usu_000062e0
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_usu_000062ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000260
	.4byte 0x000001E0
	.4byte 0x0005005B
	.4byte evt_img_set_virtual_point
	.4byte str_img_usu_000062ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_usu_000062ec
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_usu_000062ec
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_PERAMAJIN_AP_usu_000062f0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_PERAMAJIN_CO_usu_0000630c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_usu_000062ec
	.4byte str_A_1_usu_00006324
	.4byte 0x0002005B
	.4byte evt_mario_set_camid
	.4byte 0x00000007
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_usu_000062ec
	.4byte 0x0001005B
	.4byte lect_cam_save
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte roll_majin_lecture_init_27_data_11410
	.4byte 0x0001005E
	.4byte roll_majin_lecture_27_data_115F0
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_PERAMAJIN_BL_usu_00006328
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_init_camid
	.4byte 0x0002005B
	.4byte lect_cam_load
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_PERAMAJIN_GO_usu_00006344
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000201
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_usu_000062ec
	.4byte str_A_2_usu_00006360
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_usu_000062ec
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_PERAMAJIN_GO_usu_00006364
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_usu_000062ec
	.4byte 0x0002005B
	.4byte evt_paper_delete
	.4byte str_OFF_d_kusya_usu_000062e0
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000BB
	.4byte 0x00020032
	.4byte 0xF840630B
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_majin2

# .data:0x6844 | 0xFF14 | size: 0xE4
.obj tree_onoff, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_sub_get_dist
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0xFE363C89
	.4byte 0x0002001B
	.4byte 0xFE363C89
	.4byte 0xFE363C8B
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tree_onoff

# .data:0x6928 | 0xFFF8 | size: 0x30
.obj evt_ki_1, local
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カラスＪ_usu_0000595c
	.4byte str_A_1_usu_00006324
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カラスＪ_usu_0000595c
	.4byte str_S_1_usu_00006380
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ki_1

# .data:0x6958 | 0x10028 | size: 0x50
.obj evt_ki_2, local
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カラスＨ_usu_00005944
	.4byte str_A_1_usu_00006324
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カラスＩ_usu_00005950
	.4byte str_A_1_usu_00006324
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カラスＨ_usu_00005944
	.4byte str_S_1_usu_00006380
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カラスＩ_usu_00005950
	.4byte str_S_1_usu_00006380
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ki_2

# .data:0x69A8 | 0x10078 | size: 0x50
.obj evt_ki_3, local
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カラスＦ_usu_0000592c
	.4byte str_A_1_usu_00006324
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カラスＧ_usu_00005938
	.4byte str_A_1_usu_00006324
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カラスＦ_usu_0000592c
	.4byte str_S_1_usu_00006380
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_カラスＧ_usu_00005938
	.4byte str_S_1_usu_00006380
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ki_3

# .data:0x69F8 | 0x100C8 | size: 0x78
.obj tree_tbl, local
	.4byte 0x00000002
	.4byte str_A_ki_1_usu_00006384
	.4byte str_S_usu01_ki01_usu_0000638c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte evt_ki_1
	.4byte 0x00000002
	.4byte str_A_ki_2_usu_0000639c
	.4byte str_S_usu01_ki02_usu_000063a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte evt_ki_2
	.4byte 0x00000002
	.4byte str_A_ki_3_usu_000063b4
	.4byte str_S_usu01_ki03_usu_000063bc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte evt_ki_3
	.4byte 0x00000002
	.4byte str_A_ki_4_usu_000063cc
	.4byte str_S_usu01_ki05_usu_000063d4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj tree_tbl

# .data:0x6A70 | 0x10140 | size: 0x1C
.obj usu_01_tree_init, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte tree_tbl
	.4byte 0x0001005E
	.4byte evt_sub_tree_access_entry
	.4byte 0x00000002
	.4byte 0x00000001
.endobj usu_01_tree_init

# .data:0x6A8C | 0x1015C | size: 0x88
.obj mobj_box00, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box00_usu_00005bc0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_usu_000063e4
	.4byte 0x00000112
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_usu_000063e4
	.4byte 0x00000102
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box00_usu_00005bc0
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item00_usu_000063e4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mobj_box00

# .data:0x6B14 | 0x101E4 | size: 0x578
.obj usu_01_init_evt_27_data_101E4, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG4_USU1_usu_000063ec
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG4_USU1_usu_000063fc
	.4byte 0x0001005B
	.4byte evt_kagemario_init_27_text_1A44
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005E
	.4byte evt_usu_kagemario_party_kill_27_data_107C0
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000B2
	.4byte 0x000000C8
	.4byte 0x0001005E
	.4byte musume_a_pig_entry
	.4byte 0x0001005E
	.4byte musume_b_pig_entry
	.4byte 0x0001005E
	.4byte musume_c_pig_entry
	.4byte 0x0002002F
	.4byte 0x000000C8
	.4byte 0x000000D7
	.4byte 0x0001005E
	.4byte musume_a_entry
	.4byte 0x0001005E
	.4byte musume_b_entry
	.4byte 0x0001005E
	.4byte musume_c_entry
	.4byte 0x00000031
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000B9
	.4byte 0x000A005B
	.4byte evt_mobj_lock
	.4byte str_usu_00_lock_usu_00005ba8
	.4byte 0x00000015
	.4byte 0xF2465C80
	.4byte 0xF24AA2E6
	.4byte 0xF243BA4D
	.4byte 0x00000087
	.4byte lock_item_check
	.4byte unlock
	.4byte 0xF8406306
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_usu01_ie2_door3_usu_00005ec4
	.4byte 0x00000000
	.4byte evt_ie2_door2_1
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte door_1
	.4byte 0x0001005E
	.4byte evt_door_entry
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte door_2_1
	.4byte 0x0001005E
	.4byte evt_door_entry
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte door_3
	.4byte 0x0001005E
	.4byte evt_door_entry
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_usu01_ie2_door3_u_usu_0000640c
	.4byte 0x00000000
	.4byte evt_ie2_door2_2
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_monban_look
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000B4
	.4byte 0x00020018
	.4byte 0xF8406305
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_monban_buta
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005D
	.4byte usu01_gusun
	.4byte 0xFD050F84
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000B9
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte set_fook_evt
	.4byte shopper_data
	.4byte shopper_talk1
	.4byte 0x00000020
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000D5
	.4byte 0x0003005B
	.4byte set_fook_evt
	.4byte shopper_data
	.4byte shopper_talk2
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_shop_setup
	.4byte obj_list
	.4byte goods_list
	.4byte shopper_data
	.4byte trade_list
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_mi02_S_items_usu_00006420
	.4byte 0x00004000
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F82
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte usu01_check_vivian
	.4byte 0x0001005C
	.4byte usu01_crowFG_talk_event
	.4byte 0x0001005C
	.4byte usu01_crowHI_talk_event
	.4byte 0x0001005C
	.4byte usu01_crowJ_talk_event
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000B7
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_mon_usu_000059d4
	.4byte 0x00000000
	.4byte evt_mon_open
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_monato_usu_000059a0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_mon02_usu_000059dc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_mon01_usu_000059ac
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_mon02_usu_000059cc
	.4byte 0x00000000
	.4byte 0xFFFFFFAB
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_mon_usu_000059d4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte booboo_main
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ki1_usu_00006430
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ki2_usu_00006434
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ki3_usu_00006438
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ki4_usu_0000643c
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ki5_usu_00006440
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte usu_01_tree_init
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_ki3_usu_00006438
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x000001C2
	.4byte 0x0001005C
	.4byte tree_onoff
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_usu_00006444
	.4byte 0x0000007D
	.4byte 0x000000D2
	.4byte 0x00000000
	.4byte 0x00000109
	.4byte 0x00000010
	.4byte 0xF840717E
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_02_usu_00005bcc
	.4byte 0x00000097
	.4byte 0xFFFFFEED
	.4byte 0x00000000
	.4byte 0xFFFFFECA
	.4byte 0x00000010
	.4byte 0xF840630F
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_03_usu_00005bd4
	.4byte 0x00000086
	.4byte 0xFFFFFECF
	.4byte 0x00000000
	.4byte 0xFFFFFE84
	.4byte 0x00000010
	.4byte 0xF8406310
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_04_usu_00005bdc
	.4byte 0x0000009C
	.4byte 0xFFFFFEB1
	.4byte 0x00000000
	.4byte 0xFFFFFE66
	.4byte 0x00000010
	.4byte 0xF8406311
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_05_usu_00005be4
	.4byte 0x000000A4
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0xFFFFFE0C
	.4byte 0x00000010
	.4byte 0xF8406313
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box00_usu_00005bc0
	.4byte 0xFFFFFF01
	.4byte 0x00000000
	.4byte 0xFFFFFEE0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte mobj_box00
	.4byte 0xF840630E
	.4byte 0x0001005B
	.4byte mobj_ry
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte npc_process
	.4byte 0x0000006D
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000BB
	.4byte 0x00020032
	.4byte 0xF840630B
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_pera_box_usu_00005bb4
	.4byte 0xFFFFFEDF
	.4byte 0x00000000
	.4byte 0xFFFFFEAB
	.4byte 0x00000003
	.4byte evt_majin
	.4byte evt_majin2
	.4byte 0xF840630B
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_pera_box_usu_00005bb4
	.4byte 0x00000040
	.4byte 0x0001005B
	.4byte box_r
	.4byte 0x00020018
	.4byte 0xF8407092
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_iri_20_usu_000055f4
	.4byte 0x000000D9
	.4byte 0xFFFFFEA7
	.4byte 0x00000014
	.4byte 0xFFFFFF7C
	.4byte 0x00000010
	.4byte 0xF8406312
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_sub_mail_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj usu_01_init_evt_27_data_101E4

# .data:0x708C | 0x1075C | size: 0x4
.obj gap_04_0001075C_data, global
.hidden gap_04_0001075C_data
	.4byte 0x00000000
.endobj gap_04_0001075C_data
