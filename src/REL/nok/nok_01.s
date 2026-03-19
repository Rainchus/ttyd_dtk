.include "macros.inc"
.file "nok_01.o"

# 0x000003C4..0x000006EC | size: 0x328
.text
.balign 4

# .text:0x0 | 0x3C4 | size: 0x64
.fn starstone_set_ry, local
/* 000003C4 00000488  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000003C8 0000048C  7C 08 02 A6 */	mflr r0
/* 000003CC 00000490  90 01 00 24 */	stw r0, 0x24(r1)
/* 000003D0 00000494  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 000003D4 00000498  BF C1 00 10 */	stmw r30, 0x10(r1)
/* 000003D8 0000049C  7C 7E 1B 78 */	mr r30, r3
/* 000003DC 000004A0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000003E0 000004A4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000003E4 000004A8  4B FF FD 65 */	bl evtGetValue
/* 000003E8 000004AC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000003EC 000004B0  7C 7F 1B 78 */	mr r31, r3
/* 000003F0 000004B4  7F C3 F3 78 */	mr r3, r30
/* 000003F4 000004B8  4B FF FD 55 */	bl evtGetFloat
/* 000003F8 000004BC  FF E0 08 90 */	fmr f31, f1
/* 000003FC 000004C0  7F E3 FB 78 */	mr r3, r31
/* 00000400 000004C4  4B FF FD 49 */	bl effNameToPtr
/* 00000404 000004C8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000408 000004CC  38 60 00 02 */	li r3, 0x2
/* 0000040C 000004D0  D3 E4 00 1C */	stfs f31, 0x1c(r4)
/* 00000410 000004D4  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 00000414 000004D8  BB C1 00 10 */	lmw r30, 0x10(r1)
/* 00000418 000004DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000041C 000004E0  7C 08 03 A6 */	mtlr r0
/* 00000420 000004E4  38 21 00 20 */	addi r1, r1, 0x20
/* 00000424 000004E8  4E 80 00 20 */	blr
.endfn starstone_set_ry

# .text:0x64 | 0x428 | size: 0x9C
.fn starstone_set_pos, local
/* 00000428 000004EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000042C 000004F0  7C 08 02 A6 */	mflr r0
/* 00000430 000004F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 00000434 000004F8  39 61 00 30 */	addi r11, r1, 0x30
/* 00000438 000004FC  4B FF FD 11 */	bl _savefpr_29
/* 0000043C 00000500  BF A1 00 0C */	stmw r29, 0xc(r1)
/* 00000440 00000504  7C 7D 1B 78 */	mr r29, r3
/* 00000444 00000508  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000448 0000050C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000044C 00000510  4B FF FC FD */	bl evtGetValue
/* 00000450 00000514  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000454 00000518  7C 7E 1B 78 */	mr r30, r3
/* 00000458 0000051C  7F A3 EB 78 */	mr r3, r29
/* 0000045C 00000520  4B FF FC ED */	bl evtGetFloat
/* 00000460 00000524  FF A0 08 90 */	fmr f29, f1
/* 00000464 00000528  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00000468 0000052C  7F A3 EB 78 */	mr r3, r29
/* 0000046C 00000530  4B FF FC DD */	bl evtGetFloat
/* 00000470 00000534  FF C0 08 90 */	fmr f30, f1
/* 00000474 00000538  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00000478 0000053C  7F A3 EB 78 */	mr r3, r29
/* 0000047C 00000540  4B FF FC CD */	bl evtGetFloat
/* 00000480 00000544  FF E0 08 90 */	fmr f31, f1
/* 00000484 00000548  7F C3 F3 78 */	mr r3, r30
/* 00000488 0000054C  4B FF FC C1 */	bl effNameToPtr
/* 0000048C 00000550  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000490 00000554  D3 A4 00 08 */	stfs f29, 0x8(r4)
/* 00000494 00000558  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000498 0000055C  D3 C4 00 0C */	stfs f30, 0xc(r4)
/* 0000049C 00000560  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000004A0 00000564  38 60 00 02 */	li r3, 0x2
/* 000004A4 00000568  D3 E4 00 10 */	stfs f31, 0x10(r4)
/* 000004A8 0000056C  39 61 00 30 */	addi r11, r1, 0x30
/* 000004AC 00000570  4B FF FC 9D */	bl _restfpr_29
/* 000004B0 00000574  BB A1 00 0C */	lmw r29, 0xc(r1)
/* 000004B4 00000578  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000004B8 0000057C  7C 08 03 A6 */	mtlr r0
/* 000004BC 00000580  38 21 00 30 */	addi r1, r1, 0x30
/* 000004C0 00000584  4E 80 00 20 */	blr
.endfn starstone_set_pos

# .text:0x100 | 0x4C4 | size: 0xB0
.fn starstone_entry, local
/* 000004C4 00000588  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 000004C8 0000058C  7C 08 02 A6 */	mflr r0
/* 000004CC 00000590  90 01 00 44 */	stw r0, 0x44(r1)
/* 000004D0 00000594  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 000004D4 00000598  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 000004D8 0000059C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 000004DC 000005A0  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 000004E0 000005A4  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000004E4 000005A8  7C 7D 1B 78 */	mr r29, r3
/* 000004E8 000005AC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000004EC 000005B0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000004F0 000005B4  4B FF FC 59 */	bl evtGetValue
/* 000004F4 000005B8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000004F8 000005BC  7C 7E 1B 78 */	mr r30, r3
/* 000004FC 000005C0  7F A3 EB 78 */	mr r3, r29
/* 00000500 000005C4  4B FF FC 49 */	bl evtGetFloat
/* 00000504 000005C8  FF E0 08 90 */	fmr f31, f1
/* 00000508 000005CC  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000050C 000005D0  7F A3 EB 78 */	mr r3, r29
/* 00000510 000005D4  4B FF FC 39 */	bl evtGetFloat
/* 00000514 000005D8  FF C0 08 90 */	fmr f30, f1
/* 00000518 000005DC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000051C 000005E0  7F A3 EB 78 */	mr r3, r29
/* 00000520 000005E4  4B FF FC 29 */	bl evtGetFloat
/* 00000524 000005E8  FC 00 08 90 */	fmr f0, f1
/* 00000528 000005EC  3C 60 00 00 */	lis r3, float_1_nok_0000226c@ha
/* 0000052C 000005F0  C0 83 00 00 */	lfs f4, float_1_nok_0000226c@l(r3)
/* 00000530 000005F4  FC 20 F8 90 */	fmr f1, f31
/* 00000534 000005F8  FC 40 F0 90 */	fmr f2, f30
/* 00000538 000005FC  38 60 00 00 */	li r3, 0x0
/* 0000053C 00000600  FC 60 00 90 */	fmr f3, f0
/* 00000540 00000604  4B FF FC 09 */	bl effStarStoneEntry
/* 00000544 00000608  7F C4 F3 78 */	mr r4, r30
/* 00000548 0000060C  4B FF FC 01 */	bl effSetName
/* 0000054C 00000610  38 60 00 02 */	li r3, 0x2
/* 00000550 00000614  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 00000554 00000618  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 00000558 0000061C  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 0000055C 00000620  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 00000560 00000624  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00000564 00000628  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00000568 0000062C  7C 08 03 A6 */	mtlr r0
/* 0000056C 00000630  38 21 00 40 */	addi r1, r1, 0x40
/* 00000570 00000634  4E 80 00 20 */	blr
.endfn starstone_entry

# .text:0x1B0 | 0x574 | size: 0x70
.fn anim_tevcallback, local
/* 00000574 00000638  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000578 0000063C  7C 08 02 A6 */	mflr r0
/* 0000057C 00000640  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000580 00000644  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00000584 00000648  7C 7D 1B 78 */	mr r29, r3
/* 00000588 0000064C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000058C 00000650  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000590 00000654  4B FF FB B9 */	bl evtGetValue
/* 00000594 00000658  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000598 0000065C  7C 7E 1B 78 */	mr r30, r3
/* 0000059C 00000660  7F A3 EB 78 */	mr r3, r29
/* 000005A0 00000664  4B FF FB A9 */	bl evtGetValue
/* 000005A4 00000668  7C 7F 1B 78 */	mr r31, r3
/* 000005A8 0000066C  7F C3 F3 78 */	mr r3, r30
/* 000005AC 00000670  4B FF FB 9D */	bl npcNameToPtr_NoAssert
/* 000005B0 00000674  28 03 00 00 */	cmplwi r3, 0x0
/* 000005B4 00000678  40 82 00 0C */	bne .L_000005C0
/* 000005B8 0000067C  38 60 00 02 */	li r3, 0x2
/* 000005BC 00000680  48 00 00 14 */	b .L_000005D0
.L_000005C0:
/* 000005C0 00000684  80 63 01 04 */	lwz r3, 0x104(r3)
/* 000005C4 00000688  57 E4 C1 0E */	clrlslwi r4, r31, 28, 24
/* 000005C8 0000068C  4B FF FB 81 */	bl animPoseSetMaterialFlagOn
/* 000005CC 00000690  38 60 00 02 */	li r3, 0x2
.L_000005D0:
/* 000005D0 00000694  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000005D4 00000698  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000005D8 0000069C  7C 08 03 A6 */	mtlr r0
/* 000005DC 000006A0  38 21 00 20 */	addi r1, r1, 0x20
/* 000005E0 000006A4  4E 80 00 20 */	blr
.endfn anim_tevcallback

# .text:0x220 | 0x5E4 | size: 0xC0
.fn yami_view, local
/* 000005E4 000006A8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 000005E8 000006AC  7C 08 02 A6 */	mflr r0
/* 000005EC 000006B0  90 01 00 74 */	stw r0, 0x74(r1)
/* 000005F0 000006B4  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 000005F4 000006B8  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000005F8 000006BC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000005FC 000006C0  4B FF FB 4D */	bl evtGetFloat
/* 00000600 000006C4  3C 60 00 00 */	lis r3, float_neg100_nok_00002270@ha
/* 00000604 000006C8  3C 80 00 00 */	lis r4, vec3_nok_00001fe4@ha
/* 00000608 000006CC  C0 03 00 00 */	lfs f0, float_neg100_nok_00002270@l(r3)
/* 0000060C 000006D0  39 04 00 00 */	addi r8, r4, vec3_nok_00001fe4@l
/* 00000610 000006D4  3C A0 00 00 */	lis r5, vec3_nok_00001ffc@ha
/* 00000614 000006D8  84 85 00 00 */	lwzu r4, vec3_nok_00001ffc@l(r5)
/* 00000618 000006DC  80 08 00 00 */	lwz r0, 0x0(r8)
/* 0000061C 000006E0  3C 60 00 00 */	lis r3, vec3_nok_00001ff0@ha
/* 00000620 000006E4  38 C3 00 00 */	addi r6, r3, vec3_nok_00001ff0@l
/* 00000624 000006E8  90 81 00 08 */	stw r4, 0x8(r1)
/* 00000628 000006EC  83 E5 00 04 */	lwz r31, 0x4(r5)
/* 0000062C 000006F0  EC 00 08 2A */	fadds f0, f0, f1
/* 00000630 000006F4  90 01 00 20 */	stw r0, 0x20(r1)
/* 00000634 000006F8  38 61 00 2C */	addi r3, r1, 0x2c
/* 00000638 000006FC  81 85 00 08 */	lwz r12, 0x8(r5)
/* 0000063C 00000700  38 81 00 20 */	addi r4, r1, 0x20
/* 00000640 00000704  81 66 00 00 */	lwz r11, 0x0(r6)
/* 00000644 00000708  81 46 00 04 */	lwz r10, 0x4(r6)
/* 00000648 0000070C  38 A1 00 14 */	addi r5, r1, 0x14
/* 0000064C 00000710  81 26 00 08 */	lwz r9, 0x8(r6)
/* 00000650 00000714  38 C1 00 08 */	addi r6, r1, 0x8
/* 00000654 00000718  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 00000658 0000071C  80 08 00 08 */	lwz r0, 0x8(r8)
/* 0000065C 00000720  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000660 00000724  91 81 00 10 */	stw r12, 0x10(r1)
/* 00000664 00000728  D0 21 00 08 */	stfs f1, 0x8(r1)
/* 00000668 0000072C  91 61 00 14 */	stw r11, 0x14(r1)
/* 0000066C 00000730  91 41 00 18 */	stw r10, 0x18(r1)
/* 00000670 00000734  91 21 00 1C */	stw r9, 0x1c(r1)
/* 00000674 00000738  90 E1 00 24 */	stw r7, 0x24(r1)
/* 00000678 0000073C  90 01 00 28 */	stw r0, 0x28(r1)
/* 0000067C 00000740  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 00000680 00000744  4B FF FA C9 */	bl C_MTXLookAt
/* 00000684 00000748  38 61 00 2C */	addi r3, r1, 0x2c
/* 00000688 0000074C  4B FF FA C1 */	bl envSetYamiView
/* 0000068C 00000750  80 01 00 74 */	lwz r0, 0x74(r1)
/* 00000690 00000754  38 60 00 02 */	li r3, 0x2
/* 00000694 00000758  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 00000698 0000075C  7C 08 03 A6 */	mtlr r0
/* 0000069C 00000760  38 21 00 70 */	addi r1, r1, 0x70
/* 000006A0 00000764  4E 80 00 20 */	blr
.endfn yami_view

# .text:0x2E0 | 0x6A4 | size: 0x48
.fn iri_08_msg, local
/* 000006A4 00000768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000006A8 0000076C  7C 08 02 A6 */	mflr r0
/* 000006AC 00000770  2C 03 00 03 */	cmpwi r3, 0x3
/* 000006B0 00000774  90 01 00 14 */	stw r0, 0x14(r1)
/* 000006B4 00000778  80 64 00 00 */	lwz r3, 0x0(r4)
/* 000006B8 0000077C  40 82 00 24 */	bne .L_000006DC
/* 000006BC 00000780  A0 03 00 08 */	lhz r0, 0x8(r3)
/* 000006C0 00000784  28 00 00 09 */	cmplwi r0, 0x9
/* 000006C4 00000788  40 82 00 18 */	bne .L_000006DC
/* 000006C8 0000078C  3C 80 FA A3 */	lis r4, 0xfaa3
/* 000006CC 00000790  38 60 00 00 */	li r3, 0x0
/* 000006D0 00000794  38 84 B5 80 */	subi r4, r4, 0x4a80
/* 000006D4 00000798  38 A0 00 00 */	li r5, 0x0
/* 000006D8 0000079C  4B FF FA 71 */	bl evtSetValue
.L_000006DC:
/* 000006DC 000007A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000006E0 000007A4  7C 08 03 A6 */	mtlr r0
/* 000006E4 000007A8  38 21 00 10 */	addi r1, r1, 0x10
/* 000006E8 000007AC  4E 80 00 20 */	blr
.endfn iri_08_msg

# 0x00000BA8..0x00001818 | size: 0xC70
.rodata
.balign 8

# .rodata:0x0 | 0xBA8 | size: 0x3
.obj str_me_nok_00001608, local
	.string "me"
.endobj str_me_nok_00001608

# .rodata:0x3 | 0xBAB | size: 0x1
.obj gap_03_00000BAB_rodata, global
.hidden gap_03_00000BAB_rodata
	.byte 0x00
.endobj gap_03_00000BAB_rodata

# .rodata:0x4 | 0xBAC | size: 0xC
.obj str_stg1_nok_20_nok_0000160c, local
	.string "stg1_nok_20"
.endobj str_stg1_nok_20_nok_0000160c

# .rodata:0x10 | 0xBB8 | size: 0xF
.obj str_stg1_nok_20_01_nok_00001618, local
	.string "stg1_nok_20_01"
.endobj str_stg1_nok_20_01_nok_00001618

# .rodata:0x1F | 0xBC7 | size: 0x1
.obj gap_03_00000BC7_rodata, global
.hidden gap_03_00000BC7_rodata
	.byte 0x00
.endobj gap_03_00000BC7_rodata

# .rodata:0x20 | 0xBC8 | size: 0xC
.obj str_stg1_nok_21_nok_00001628, local
	.string "stg1_nok_21"
.endobj str_stg1_nok_21_nok_00001628

# .rodata:0x2C | 0xBD4 | size: 0xE
.obj str_stg1_nok_21_1_nok_00001634, local
	.string "stg1_nok_21_1"
.endobj str_stg1_nok_21_1_nok_00001634

# .rodata:0x3A | 0xBE2 | size: 0x2
.obj gap_03_00000BE2_rodata, global
.hidden gap_03_00000BE2_rodata
	.2byte 0x0000
.endobj gap_03_00000BE2_rodata

# .rodata:0x3C | 0xBE4 | size: 0x10
.obj str_stg1_nok_21_1_1_nok_00001644, local
	.string "stg1_nok_21_1_1"
.endobj str_stg1_nok_21_1_1_nok_00001644

# .rodata:0x4C | 0xBF4 | size: 0xC
.obj str_stg1_nok_22_nok_00001654, local
	.string "stg1_nok_22"
.endobj str_stg1_nok_22_nok_00001654

# .rodata:0x58 | 0xC00 | size: 0xF
.obj str_stg1_nok_22_01_nok_00001660, local
	.string "stg1_nok_22_01"
.endobj str_stg1_nok_22_01_nok_00001660

# .rodata:0x67 | 0xC0F | size: 0x1
.obj gap_03_00000C0F_rodata, global
.hidden gap_03_00000C0F_rodata
	.byte 0x00
.endobj gap_03_00000C0F_rodata

# .rodata:0x68 | 0xC10 | size: 0xC
.obj str_stg1_nok_23_nok_00001670, local
	.string "stg1_nok_23"
.endobj str_stg1_nok_23_nok_00001670

# .rodata:0x74 | 0xC1C | size: 0x12
.obj str_stg1_nok_23_yesno_nok_0000167c, local
	.string "stg1_nok_23_yesno"
.endobj str_stg1_nok_23_yesno_nok_0000167c

# .rodata:0x86 | 0xC2E | size: 0x2
.obj gap_03_00000C2E_rodata, global
.hidden gap_03_00000C2E_rodata
	.2byte 0x0000
.endobj gap_03_00000C2E_rodata

# .rodata:0x88 | 0xC30 | size: 0xF
.obj str_stg1_nok_23_01_nok_00001690, local
	.string "stg1_nok_23_01"
.endobj str_stg1_nok_23_01_nok_00001690

# .rodata:0x97 | 0xC3F | size: 0x1
.obj gap_03_00000C3F_rodata, global
.hidden gap_03_00000C3F_rodata
	.byte 0x00
.endobj gap_03_00000C3F_rodata

# .rodata:0x98 | 0xC40 | size: 0x11
.obj str_stg1_nok_23_01_1_nok_000016a0, local
	.string "stg1_nok_23_01_1"
.endobj str_stg1_nok_23_01_1_nok_000016a0

# .rodata:0xA9 | 0xC51 | size: 0x3
.obj gap_03_00000C51_rodata, global
.hidden gap_03_00000C51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C51_rodata

# .rodata:0xAC | 0xC54 | size: 0x13
.obj str_stg1_nok_23_01_1_1_nok_000016b4, local
	.string "stg1_nok_23_01_1_1"
.endobj str_stg1_nok_23_01_1_1_nok_000016b4

# .rodata:0xBF | 0xC67 | size: 0x1
.obj gap_03_00000C67_rodata, global
.hidden gap_03_00000C67_rodata
	.byte 0x00
.endobj gap_03_00000C67_rodata

# .rodata:0xC0 | 0xC68 | size: 0xC
.obj str_stg1_nok_24_nok_000016c8, local
	.string "stg1_nok_24"
.endobj str_stg1_nok_24_nok_000016c8

# .rodata:0xCC | 0xC74 | size: 0xF
.obj str_stg1_nok_24_01_nok_000016d4, local
	.string "stg1_nok_24_01"
.endobj str_stg1_nok_24_01_nok_000016d4

# .rodata:0xDB | 0xC83 | size: 0x1
.obj gap_03_00000C83_rodata, global
.hidden gap_03_00000C83_rodata
	.byte 0x00
.endobj gap_03_00000C83_rodata

# .rodata:0xDC | 0xC84 | size: 0xC
.obj str_stg1_nok_25_nok_000016e4, local
	.string "stg1_nok_25"
.endobj str_stg1_nok_25_nok_000016e4

# .rodata:0xE8 | 0xC90 | size: 0xE
.obj str_stg1_nok_25_1_nok_000016f0, local
	.string "stg1_nok_25_1"
.endobj str_stg1_nok_25_1_nok_000016f0

# .rodata:0xF6 | 0xC9E | size: 0x2
.obj gap_03_00000C9E_rodata, global
.hidden gap_03_00000C9E_rodata
	.2byte 0x0000
.endobj gap_03_00000C9E_rodata

# .rodata:0xF8 | 0xCA0 | size: 0x10
.obj str_stg1_nok_25_1_1_nok_00001700, local
	.string "stg1_nok_25_1_1"
.endobj str_stg1_nok_25_1_1_nok_00001700

# .rodata:0x108 | 0xCB0 | size: 0xC
.obj str_stg1_nok_28_nok_00001710, local
	.string "stg1_nok_28"
.endobj str_stg1_nok_28_nok_00001710

# .rodata:0x114 | 0xCBC | size: 0x6
.obj str_M_S_1_nok_0000171c, local
	.string "M_S_1"
.endobj str_M_S_1_nok_0000171c

# .rodata:0x11A | 0xCC2 | size: 0x2
.obj gap_03_00000CC2_rodata, global
.hidden gap_03_00000CC2_rodata
	.2byte 0x0000
.endobj gap_03_00000CC2_rodata

# .rodata:0x11C | 0xCC4 | size: 0x6
.obj str_A_mon_nok_00001724, local
	.string "A_mon"
.endobj str_A_mon_nok_00001724

# .rodata:0x122 | 0xCCA | size: 0x2
.obj gap_03_00000CCA_rodata, global
.hidden gap_03_00000CCA_rodata
	.2byte 0x0000
.endobj gap_03_00000CCA_rodata

# .rodata:0x124 | 0xCCC | size: 0xD
.obj str_門番ノコノコ_nok_0000172c, local
	.4byte 0x96E594D4
	.4byte 0x836D8352
	.4byte 0x836D8352
	.byte 0x00
.endobj str_門番ノコノコ_nok_0000172c

# .rodata:0x131 | 0xCD9 | size: 0x3
.obj gap_03_00000CD9_rodata, global
.hidden gap_03_00000CD9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000CD9_rodata

# .rodata:0x134 | 0xCDC | size: 0x10
.obj str_SFX_FENCE_OPEN1_nok_0000173c, local
	.string "SFX_FENCE_OPEN1"
.endobj str_SFX_FENCE_OPEN1_nok_0000173c

# .rodata:0x144 | 0xCEC | size: 0x6
.obj str_S_mon_nok_0000174c, local
	.string "S_mon"
.endobj str_S_mon_nok_0000174c

# .rodata:0x14A | 0xCF2 | size: 0x2
.obj gap_03_00000CF2_rodata, global
.hidden gap_03_00000CF2_rodata
	.2byte 0x0000
.endobj gap_03_00000CF2_rodata

# .rodata:0x14C | 0xCF4 | size: 0xB
.obj str_ノコタロウ_nok_00001754, local
	.4byte 0x836D8352
	.4byte 0x835E838D
	.byte 0x83, 0x45, 0x00
.endobj str_ノコタロウ_nok_00001754

# .rodata:0x157 | 0xCFF | size: 0x1
.obj gap_03_00000CFF_rodata, global
.hidden gap_03_00000CFF_rodata
	.byte 0x00
.endobj gap_03_00000CFF_rodata

# .rodata:0x158 | 0xD00 | size: 0x6
.obj str_mario_nok_00001760, local
	.string "mario"
.endobj str_mario_nok_00001760

# .rodata:0x15E | 0xD06 | size: 0x2
.obj gap_03_00000D06_rodata, global
.hidden gap_03_00000D06_rodata
	.2byte 0x0000
.endobj gap_03_00000D06_rodata

# .rodata:0x160 | 0xD08 | size: 0xC
.obj str_stg1_nok_29_nok_00001768, local
	.string "stg1_nok_29"
.endobj str_stg1_nok_29_nok_00001768

# .rodata:0x16C | 0xD14 | size: 0xC
.obj str_stg1_nok_30_nok_00001774, local
	.string "stg1_nok_30"
.endobj str_stg1_nok_30_nok_00001774

# .rodata:0x178 | 0xD20 | size: 0xF
.obj str_stg1_nok_30_01_nok_00001780, local
	.string "stg1_nok_30_01"
.endobj str_stg1_nok_30_01_nok_00001780

# .rodata:0x187 | 0xD2F | size: 0x1
.obj gap_03_00000D2F_rodata, global
.hidden gap_03_00000D2F_rodata
	.byte 0x00
.endobj gap_03_00000D2F_rodata

# .rodata:0x188 | 0xD30 | size: 0x6
.obj str_party_nok_00001790, local
	.string "party"
.endobj str_party_nok_00001790

# .rodata:0x18E | 0xD36 | size: 0x2
.obj gap_03_00000D36_rodata, global
.hidden gap_03_00000D36_rodata
	.2byte 0x0000
.endobj gap_03_00000D36_rodata

# .rodata:0x190 | 0xD38 | size: 0xC
.obj str_stg1_nok_26_nok_00001798, local
	.string "stg1_nok_26"
.endobj str_stg1_nok_26_nok_00001798

# .rodata:0x19C | 0xD44 | size: 0x12
.obj str_stg1_nok_31_01_00_nok_000017a4, local
	.string "stg1_nok_31_01_00"
.endobj str_stg1_nok_31_01_00_nok_000017a4

# .rodata:0x1AE | 0xD56 | size: 0x2
.obj gap_03_00000D56_rodata, global
.hidden gap_03_00000D56_rodata
	.2byte 0x0000
.endobj gap_03_00000D56_rodata

# .rodata:0x1B0 | 0xD58 | size: 0x12
.obj str_stg1_nok_31_01_01_nok_000017b8, local
	.string "stg1_nok_31_01_01"
.endobj str_stg1_nok_31_01_01_nok_000017b8

# .rodata:0x1C2 | 0xD6A | size: 0x2
.obj gap_03_00000D6A_rodata, global
.hidden gap_03_00000D6A_rodata
	.2byte 0x0000
.endobj gap_03_00000D6A_rodata

# .rodata:0x1C4 | 0xD6C | size: 0x11
.obj str_stg1_nok_31_02_1_nok_000017cc, local
	.string "stg1_nok_31_02_1"
.endobj str_stg1_nok_31_02_1_nok_000017cc

# .rodata:0x1D5 | 0xD7D | size: 0x3
.obj gap_03_00000D7D_rodata, global
.hidden gap_03_00000D7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D7D_rodata

# .rodata:0x1D8 | 0xD80 | size: 0x11
.obj str_stg1_nok_31_02_2_nok_000017e0, local
	.string "stg1_nok_31_02_2"
.endobj str_stg1_nok_31_02_2_nok_000017e0

# .rodata:0x1E9 | 0xD91 | size: 0x3
.obj gap_03_00000D91_rodata, global
.hidden gap_03_00000D91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D91_rodata

# .rodata:0x1EC | 0xD94 | size: 0x13
.obj str_stg1_nok_31_02_2_1_nok_000017f4, local
	.string "stg1_nok_31_02_2_1"
.endobj str_stg1_nok_31_02_2_1_nok_000017f4

# .rodata:0x1FF | 0xDA7 | size: 0x1
.obj gap_03_00000DA7_rodata, global
.hidden gap_03_00000DA7_rodata
	.byte 0x00
.endobj gap_03_00000DA7_rodata

# .rodata:0x200 | 0xDA8 | size: 0xC
.obj str_stg1_nok_27_nok_00001808, local
	.string "stg1_nok_27"
.endobj str_stg1_nok_27_nok_00001808

# .rodata:0x20C | 0xDB4 | size: 0xF
.obj str_stg1_nok_27_01_nok_00001814, local
	.string "stg1_nok_27_01"
.endobj str_stg1_nok_27_01_nok_00001814

# .rodata:0x21B | 0xDC3 | size: 0x1
.obj gap_03_00000DC3_rodata, global
.hidden gap_03_00000DC3_rodata
	.byte 0x00
.endobj gap_03_00000DC3_rodata

# .rodata:0x21C | 0xDC4 | size: 0xC
.obj str_stg1_nok_31_nok_00001824, local
	.string "stg1_nok_31"
.endobj str_stg1_nok_31_nok_00001824

# .rodata:0x228 | 0xDD0 | size: 0xF
.obj str_stg1_nok_31_01_nok_00001830, local
	.string "stg1_nok_31_01"
.endobj str_stg1_nok_31_01_nok_00001830

# .rodata:0x237 | 0xDDF | size: 0x1
.obj gap_03_00000DDF_rodata, global
.hidden gap_03_00000DDF_rodata
	.byte 0x00
.endobj gap_03_00000DDF_rodata

# .rodata:0x238 | 0xDE0 | size: 0xC
.obj str_stg1_nok_79_nok_00001840, local
	.string "stg1_nok_79"
.endobj str_stg1_nok_79_nok_00001840

# .rodata:0x244 | 0xDEC | size: 0xC
.obj str_stg1_nok_80_nok_0000184c, local
	.string "stg1_nok_80"
.endobj str_stg1_nok_80_nok_0000184c

# .rodata:0x250 | 0xDF8 | size: 0xC
.obj str_stg1_nok_81_nok_00001858, local
	.string "stg1_nok_81"
.endobj str_stg1_nok_81_nok_00001858

# .rodata:0x25C | 0xE04 | size: 0xC
.obj str_stg1_nok_82_nok_00001864, local
	.string "stg1_nok_82"
.endobj str_stg1_nok_82_nok_00001864

# .rodata:0x268 | 0xE10 | size: 0xC
.obj str_stg1_nok_83_nok_00001870, local
	.string "stg1_nok_83"
.endobj str_stg1_nok_83_nok_00001870

# .rodata:0x274 | 0xE1C | size: 0xC
.obj str_stg1_nok_84_nok_0000187c, local
	.string "stg1_nok_84"
.endobj str_stg1_nok_84_nok_0000187c

# .rodata:0x280 | 0xE28 | size: 0xE
.obj str_stg1_nok_84_1_nok_00001888, local
	.string "stg1_nok_84_1"
.endobj str_stg1_nok_84_1_nok_00001888

# .rodata:0x28E | 0xE36 | size: 0x2
.obj gap_03_00000E36_rodata, global
.hidden gap_03_00000E36_rodata
	.2byte 0x0000
.endobj gap_03_00000E36_rodata

# .rodata:0x290 | 0xE38 | size: 0xB
.obj str_irai_14_00_nok_00001898, local
	.string "irai_14_00"
.endobj str_irai_14_00_nok_00001898

# .rodata:0x29B | 0xE43 | size: 0x1
.obj gap_03_00000E43_rodata, global
.hidden gap_03_00000E43_rodata
	.byte 0x00
.endobj gap_03_00000E43_rodata

# .rodata:0x29C | 0xE44 | size: 0xB
.obj str_irai_14_01_nok_000018a4, local
	.string "irai_14_01"
.endobj str_irai_14_01_nok_000018a4

# .rodata:0x2A7 | 0xE4F | size: 0x1
.obj gap_03_00000E4F_rodata, global
.hidden gap_03_00000E4F_rodata
	.byte 0x00
.endobj gap_03_00000E4F_rodata

# .rodata:0x2A8 | 0xE50 | size: 0xC
.obj str_stg1_nok_32_nok_000018b0, local
	.string "stg1_nok_32"
.endobj str_stg1_nok_32_nok_000018b0

# .rodata:0x2B4 | 0xE5C | size: 0xF
.obj str_stg1_nok_32_01_nok_000018bc, local
	.string "stg1_nok_32_01"
.endobj str_stg1_nok_32_01_nok_000018bc

# .rodata:0x2C3 | 0xE6B | size: 0x1
.obj gap_03_00000E6B_rodata, global
.hidden gap_03_00000E6B_rodata
	.byte 0x00
.endobj gap_03_00000E6B_rodata

# .rodata:0x2C4 | 0xE6C | size: 0xC
.obj str_stg1_nok_33_nok_000018cc, local
	.string "stg1_nok_33"
.endobj str_stg1_nok_33_nok_000018cc

# .rodata:0x2D0 | 0xE78 | size: 0xE
.obj str_stg1_nok_33_1_nok_000018d8, local
	.string "stg1_nok_33_1"
.endobj str_stg1_nok_33_1_nok_000018d8

# .rodata:0x2DE | 0xE86 | size: 0x2
.obj gap_03_00000E86_rodata, global
.hidden gap_03_00000E86_rodata
	.2byte 0x0000
.endobj gap_03_00000E86_rodata

# .rodata:0x2E0 | 0xE88 | size: 0x10
.obj str_stg1_nok_33_1_1_nok_000018e8, local
	.string "stg1_nok_33_1_1"
.endobj str_stg1_nok_33_1_1_nok_000018e8

# .rodata:0x2F0 | 0xE98 | size: 0xC
.obj str_stg1_nok_37_nok_000018f8, local
	.string "stg1_nok_37"
.endobj str_stg1_nok_37_nok_000018f8

# .rodata:0x2FC | 0xEA4 | size: 0x1B
.obj str_SFX_VOICE_MARIO_SURP_nok_00001904, local
	.string "SFX_VOICE_MARIO_SURPRISED1"
.endobj str_SFX_VOICE_MARIO_SURP_nok_00001904

# .rodata:0x317 | 0xEBF | size: 0x1
.obj gap_03_00000EBF_rodata, global
.hidden gap_03_00000EBF_rodata
	.byte 0x00
.endobj gap_03_00000EBF_rodata

# .rodata:0x318 | 0xEC0 | size: 0x6
.obj str_M_N_7_nok_00001920, local
	.string "M_N_7"
.endobj str_M_N_7_nok_00001920

# .rodata:0x31E | 0xEC6 | size: 0x2
.obj gap_03_00000EC6_rodata, global
.hidden gap_03_00000EC6_rodata
	.2byte 0x0000
.endobj gap_03_00000EC6_rodata

# .rodata:0x320 | 0xEC8 | size: 0x6
.obj str_M_N_B_nok_00001928, local
	.string "M_N_B"
.endobj str_M_N_B_nok_00001928

# .rodata:0x326 | 0xECE | size: 0x2
.obj gap_03_00000ECE_rodata, global
.hidden gap_03_00000ECE_rodata
	.2byte 0x0000
.endobj gap_03_00000ECE_rodata

# .rodata:0x328 | 0xED0 | size: 0xC
.obj str_stg1_nok_38_nok_00001930, local
	.string "stg1_nok_38"
.endobj str_stg1_nok_38_nok_00001930

# .rodata:0x334 | 0xEDC | size: 0x6
.obj str_M_I_2_nok_0000193c, local
	.string "M_I_2"
.endobj str_M_I_2_nok_0000193c

# .rodata:0x33A | 0xEE2 | size: 0x2
.obj gap_03_00000EE2_rodata, global
.hidden gap_03_00000EE2_rodata
	.2byte 0x0000
.endobj gap_03_00000EE2_rodata

# .rodata:0x33C | 0xEE4 | size: 0xC
.obj str_stg1_nok_39_nok_00001944, local
	.string "stg1_nok_39"
.endobj str_stg1_nok_39_nok_00001944

# .rodata:0x348 | 0xEF0 | size: 0x6
.obj str_M_N_2_nok_00001950, local
	.string "M_N_2"
.endobj str_M_N_2_nok_00001950

# .rodata:0x34E | 0xEF6 | size: 0x2
.obj gap_03_00000EF6_rodata, global
.hidden gap_03_00000EF6_rodata
	.2byte 0x0000
.endobj gap_03_00000EF6_rodata

# .rodata:0x350 | 0xEF8 | size: 0xC
.obj str_stg1_nok_40_nok_00001958, local
	.string "stg1_nok_40"
.endobj str_stg1_nok_40_nok_00001958

# .rodata:0x35C | 0xF04 | size: 0xF
.obj str_stg1_nok_40_yn_nok_00001964, local
	.string "stg1_nok_40_yn"
.endobj str_stg1_nok_40_yn_nok_00001964

# .rodata:0x36B | 0xF13 | size: 0x1
.obj gap_03_00000F13_rodata, global
.hidden gap_03_00000F13_rodata
	.byte 0x00
.endobj gap_03_00000F13_rodata

# .rodata:0x36C | 0xF14 | size: 0xC
.obj str_stg1_nok_41_nok_00001974, local
	.string "stg1_nok_41"
.endobj str_stg1_nok_41_nok_00001974

# .rodata:0x378 | 0xF20 | size: 0xF
.obj str_stg1_nok_41_yn_nok_00001980, local
	.string "stg1_nok_41_yn"
.endobj str_stg1_nok_41_yn_nok_00001980

# .rodata:0x387 | 0xF2F | size: 0x1
.obj gap_03_00000F2F_rodata, global
.hidden gap_03_00000F2F_rodata
	.byte 0x00
.endobj gap_03_00000F2F_rodata

# .rodata:0x388 | 0xF30 | size: 0xC
.obj str_stg1_nok_42_nok_00001990, local
	.string "stg1_nok_42"
.endobj str_stg1_nok_42_nok_00001990

# .rodata:0x394 | 0xF3C | size: 0xF
.obj str_stg1_nok_42_yn_nok_0000199c, local
	.string "stg1_nok_42_yn"
.endobj str_stg1_nok_42_yn_nok_0000199c

# .rodata:0x3A3 | 0xF4B | size: 0x1
.obj gap_03_00000F4B_rodata, global
.hidden gap_03_00000F4B_rodata
	.byte 0x00
.endobj gap_03_00000F4B_rodata

# .rodata:0x3A4 | 0xF4C | size: 0xC
.obj str_stg1_nok_43_nok_000019ac, local
	.string "stg1_nok_43"
.endobj str_stg1_nok_43_nok_000019ac

# .rodata:0x3B0 | 0xF58 | size: 0xC
.obj str_stg1_nok_44_nok_000019b8, local
	.string "stg1_nok_44"
.endobj str_stg1_nok_44_nok_000019b8

# .rodata:0x3BC | 0xF64 | size: 0xF
.obj str_stg1_nok_44_yn_nok_000019c4, local
	.string "stg1_nok_44_yn"
.endobj str_stg1_nok_44_yn_nok_000019c4

# .rodata:0x3CB | 0xF73 | size: 0x1
.obj gap_03_00000F73_rodata, global
.hidden gap_03_00000F73_rodata
	.byte 0x00
.endobj gap_03_00000F73_rodata

# .rodata:0x3CC | 0xF74 | size: 0xC
.obj str_stg1_nok_45_nok_000019d4, local
	.string "stg1_nok_45"
.endobj str_stg1_nok_45_nok_000019d4

# .rodata:0x3D8 | 0xF80 | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_nok_000019e0, local
	.string "SFX_VOICE_MARIO_NOD1_4"
.endobj str_SFX_VOICE_MARIO_NOD1_nok_000019e0

# .rodata:0x3EF | 0xF97 | size: 0x1
.obj gap_03_00000F97_rodata, global
.hidden gap_03_00000F97_rodata
	.byte 0x00
.endobj gap_03_00000F97_rodata

# .rodata:0x3F0 | 0xF98 | size: 0xC
.obj str_stg1_nok_46_nok_000019f8, local
	.string "stg1_nok_46"
.endobj str_stg1_nok_46_nok_000019f8

# .rodata:0x3FC | 0xFA4 | size: 0xC
.obj str_irai_08_001_nok_00001a04, local
	.string "irai_08_001"
.endobj str_irai_08_001_nok_00001a04

# .rodata:0x408 | 0xFB0 | size: 0xC
.obj str_irai_08_002_nok_00001a10, local
	.string "irai_08_002"
.endobj str_irai_08_002_nok_00001a10

# .rodata:0x414 | 0xFBC | size: 0xA
.obj str_item_irai_nok_00001a1c, local
	.string "item_irai"
.endobj str_item_irai_nok_00001a1c

# .rodata:0x41E | 0xFC6 | size: 0x2
.obj gap_03_00000FC6_rodata, global
.hidden gap_03_00000FC6_rodata
	.2byte 0x0000
.endobj gap_03_00000FC6_rodata

# .rodata:0x420 | 0xFC8 | size: 0xE
.obj str_irai_08_003_1_nok_00001a28, local
	.string "irai_08_003_1"
.endobj str_irai_08_003_1_nok_00001a28

# .rodata:0x42E | 0xFD6 | size: 0x2
.obj gap_03_00000FD6_rodata, global
.hidden gap_03_00000FD6_rodata
	.2byte 0x0000
.endobj gap_03_00000FD6_rodata

# .rodata:0x430 | 0xFD8 | size: 0x7
.obj str_iri_08_nok_00001a38, local
	.string "iri_08"
.endobj str_iri_08_nok_00001a38

# .rodata:0x437 | 0xFDF | size: 0x1
.obj gap_03_00000FDF_rodata, global
.hidden gap_03_00000FDF_rodata
	.byte 0x00
.endobj gap_03_00000FDF_rodata

# .rodata:0x438 | 0xFE0 | size: 0xC
.obj str_irai_08_004_nok_00001a40, local
	.string "irai_08_004"
.endobj str_irai_08_004_nok_00001a40

# .rodata:0x444 | 0xFEC | size: 0x13
.obj str_sys_request_finish_nok_00001a4c, local
	.string "sys_request_finish"
.endobj str_sys_request_finish_nok_00001a4c

# .rodata:0x457 | 0xFFF | size: 0x1
.obj gap_03_00000FFF_rodata, global
.hidden gap_03_00000FFF_rodata
	.byte 0x00
.endobj gap_03_00000FFF_rodata

# .rodata:0x458 | 0x1000 | size: 0xB
.obj str_irai_17_00_nok_00001a60, local
	.string "irai_17_00"
.endobj str_irai_17_00_nok_00001a60

# .rodata:0x463 | 0x100B | size: 0x1
.obj gap_03_0000100B_rodata, global
.hidden gap_03_0000100B_rodata
	.byte 0x00
.endobj gap_03_0000100B_rodata

# .rodata:0x464 | 0x100C | size: 0xB
.obj str_irai_17_01_nok_00001a6c, local
	.string "irai_17_01"
.endobj str_irai_17_01_nok_00001a6c

# .rodata:0x46F | 0x1017 | size: 0x1
.obj gap_03_00001017_rodata, global
.hidden gap_03_00001017_rodata
	.byte 0x00
.endobj gap_03_00001017_rodata

# .rodata:0x470 | 0x1018 | size: 0xA
.obj str_kairanban_nok_00001a78, local
	.string "kairanban"
.endobj str_kairanban_nok_00001a78

# .rodata:0x47A | 0x1022 | size: 0x2
.obj gap_03_00001022_rodata, global
.hidden gap_03_00001022_rodata
	.2byte 0x0000
.endobj gap_03_00001022_rodata

# .rodata:0x47C | 0x1024 | size: 0xB
.obj str_irai_17_02_nok_00001a84, local
	.string "irai_17_02"
.endobj str_irai_17_02_nok_00001a84

# .rodata:0x487 | 0x102F | size: 0x1
.obj gap_03_0000102F_rodata, global
.hidden gap_03_0000102F_rodata
	.byte 0x00
.endobj gap_03_0000102F_rodata

# .rodata:0x488 | 0x1030 | size: 0xC
.obj str_stg1_nok_56_nok_00001a90, local
	.string "stg1_nok_56"
.endobj str_stg1_nok_56_nok_00001a90

# .rodata:0x494 | 0x103C | size: 0xC
.obj str_stg1_nok_47_nok_00001a9c, local
	.string "stg1_nok_47"
.endobj str_stg1_nok_47_nok_00001a9c

# .rodata:0x4A0 | 0x1048 | size: 0xF
.obj str_stg1_nok_56_01_nok_00001aa8, local
	.string "stg1_nok_56_01"
.endobj str_stg1_nok_56_01_nok_00001aa8

# .rodata:0x4AF | 0x1057 | size: 0x1
.obj gap_03_00001057_rodata, global
.hidden gap_03_00001057_rodata
	.byte 0x00
.endobj gap_03_00001057_rodata

# .rodata:0x4B0 | 0x1058 | size: 0xC
.obj str_stg1_nok_57_nok_00001ab8, local
	.string "stg1_nok_57"
.endobj str_stg1_nok_57_nok_00001ab8

# .rodata:0x4BC | 0x1064 | size: 0x11
.obj str_stg1_nok_57_1_00_nok_00001ac4, local
	.string "stg1_nok_57_1_00"
.endobj str_stg1_nok_57_1_00_nok_00001ac4

# .rodata:0x4CD | 0x1075 | size: 0x3
.obj gap_03_00001075_rodata, global
.hidden gap_03_00001075_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001075_rodata

# .rodata:0x4D0 | 0x1078 | size: 0xE
.obj str_stg1_nok_57_1_nok_00001ad8, local
	.string "stg1_nok_57_1"
.endobj str_stg1_nok_57_1_nok_00001ad8

# .rodata:0x4DE | 0x1086 | size: 0x2
.obj gap_03_00001086_rodata, global
.hidden gap_03_00001086_rodata
	.2byte 0x0000
.endobj gap_03_00001086_rodata

# .rodata:0x4E0 | 0x1088 | size: 0x10
.obj str_stg1_nok_57_1_1_nok_00001ae8, local
	.string "stg1_nok_57_1_1"
.endobj str_stg1_nok_57_1_1_nok_00001ae8

# .rodata:0x4F0 | 0x1098 | size: 0xC
.obj str_stg1_nok_64_nok_00001af8, local
	.string "stg1_nok_64"
.endobj str_stg1_nok_64_nok_00001af8

# .rodata:0x4FC | 0x10A4 | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_nok_00001b04, local
	.string "SFX_VOICE_MARIO_NOD1_5"
.endobj str_SFX_VOICE_MARIO_NOD1_nok_00001b04

# .rodata:0x513 | 0x10BB | size: 0x1
.obj gap_03_000010BB_rodata, global
.hidden gap_03_000010BB_rodata
	.byte 0x00
.endobj gap_03_000010BB_rodata

# .rodata:0x514 | 0x10BC | size: 0xF
.obj str_stg1_nok_64_01_nok_00001b1c, local
	.string "stg1_nok_64_01"
.endobj str_stg1_nok_64_01_nok_00001b1c

# .rodata:0x523 | 0x10CB | size: 0x1
.obj gap_03_000010CB_rodata, global
.hidden gap_03_000010CB_rodata
	.byte 0x00
.endobj gap_03_000010CB_rodata

# .rodata:0x524 | 0x10CC | size: 0xC
.obj str_stg1_nok_65_nok_00001b2c, local
	.string "stg1_nok_65"
.endobj str_stg1_nok_65_nok_00001b2c

# .rodata:0x530 | 0x10D8 | size: 0x2
.obj str_a_nok_00001b38, local
	.string "a"
.endobj str_a_nok_00001b38

# .rodata:0x532 | 0x10DA | size: 0x2
.obj gap_03_000010DA_rodata, global
.hidden gap_03_000010DA_rodata
	.2byte 0x0000
.endobj gap_03_000010DA_rodata

# .rodata:0x534 | 0x10DC | size: 0xC
.obj str_stg1_nok_66_nok_00001b3c, local
	.string "stg1_nok_66"
.endobj str_stg1_nok_66_nok_00001b3c

# .rodata:0x540 | 0x10E8 | size: 0xF
.obj str_stg1_nok_66_01_nok_00001b48, local
	.string "stg1_nok_66_01"
.endobj str_stg1_nok_66_01_nok_00001b48

# .rodata:0x54F | 0x10F7 | size: 0x1
.obj gap_03_000010F7_rodata, global
.hidden gap_03_000010F7_rodata
	.byte 0x00
.endobj gap_03_000010F7_rodata

# .rodata:0x550 | 0x10F8 | size: 0xC
.obj str_stg1_nok_67_nok_00001b58, local
	.string "stg1_nok_67"
.endobj str_stg1_nok_67_nok_00001b58

# .rodata:0x55C | 0x1104 | size: 0xC
.obj str_stg1_nok_68_nok_00001b64, local
	.string "stg1_nok_68"
.endobj str_stg1_nok_68_nok_00001b64

# .rodata:0x568 | 0x1110 | size: 0xC
.obj str_stg1_nok_70_nok_00001b70, local
	.string "stg1_nok_70"
.endobj str_stg1_nok_70_nok_00001b70

# .rodata:0x574 | 0x111C | size: 0xC
.obj str_stg1_nok_69_nok_00001b7c, local
	.string "stg1_nok_69"
.endobj str_stg1_nok_69_nok_00001b7c

# .rodata:0x580 | 0x1128 | size: 0xC
.obj str_stg1_nok_71_nok_00001b88, local
	.string "stg1_nok_71"
.endobj str_stg1_nok_71_nok_00001b88

# .rodata:0x58C | 0x1134 | size: 0xC
.obj str_stg1_nok_72_nok_00001b94, local
	.string "stg1_nok_72"
.endobj str_stg1_nok_72_nok_00001b94

# .rodata:0x598 | 0x1140 | size: 0xC
.obj str_stg1_nok_73_nok_00001ba0, local
	.string "stg1_nok_73"
.endobj str_stg1_nok_73_nok_00001ba0

# .rodata:0x5A4 | 0x114C | size: 0xC
.obj str_stg1_nok_74_nok_00001bac, local
	.string "stg1_nok_74"
.endobj str_stg1_nok_74_nok_00001bac

# .rodata:0x5B0 | 0x1158 | size: 0xC
.obj str_stg1_nok_75_nok_00001bb8, local
	.string "stg1_nok_75"
.endobj str_stg1_nok_75_nok_00001bb8

# .rodata:0x5BC | 0x1164 | size: 0xC
.obj str_stg1_nok_76_nok_00001bc4, local
	.string "stg1_nok_76"
.endobj str_stg1_nok_76_nok_00001bc4

# .rodata:0x5C8 | 0x1170 | size: 0xC
.obj str_stg1_nok_77_nok_00001bd0, local
	.string "stg1_nok_77"
.endobj str_stg1_nok_77_nok_00001bd0

# .rodata:0x5D4 | 0x117C | size: 0xC
.obj str_stg1_nok_78_nok_00001bdc, local
	.string "stg1_nok_78"
.endobj str_stg1_nok_78_nok_00001bdc

# .rodata:0x5E0 | 0x1188 | size: 0xC
.obj str_stg1_nok_34_nok_00001be8, local
	.string "stg1_nok_34"
.endobj str_stg1_nok_34_nok_00001be8

# .rodata:0x5EC | 0x1194 | size: 0x9
.obj str_踊り子１_nok_00001bf4, local
	.4byte 0x977882E8
	.4byte 0x8E718250
	.byte 0x00
.endobj str_踊り子１_nok_00001bf4

# .rodata:0x5F5 | 0x119D | size: 0x3
.obj gap_03_0000119D_rodata, global
.hidden gap_03_0000119D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000119D_rodata

# .rodata:0x5F8 | 0x11A0 | size: 0xC
.obj str_stg1_nok_35_nok_00001c00, local
	.string "stg1_nok_35"
.endobj str_stg1_nok_35_nok_00001c00

# .rodata:0x604 | 0x11AC | size: 0x9
.obj str_踊り子２_nok_00001c0c, local
	.4byte 0x977882E8
	.4byte 0x8E718251
	.byte 0x00
.endobj str_踊り子２_nok_00001c0c

# .rodata:0x60D | 0x11B5 | size: 0x3
.obj gap_03_000011B5_rodata, global
.hidden gap_03_000011B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000011B5_rodata

# .rodata:0x610 | 0x11B8 | size: 0xC
.obj str_stg1_nok_36_nok_00001c18, local
	.string "stg1_nok_36"
.endobj str_stg1_nok_36_nok_00001c18

# .rodata:0x61C | 0x11C4 | size: 0x9
.obj str_踊り子３_nok_00001c24, local
	.4byte 0x977882E8
	.4byte 0x8E718252
	.byte 0x00
.endobj str_踊り子３_nok_00001c24

# .rodata:0x625 | 0x11CD | size: 0x3
.obj gap_03_000011CD_rodata, global
.hidden gap_03_000011CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000011CD_rodata

# .rodata:0x628 | 0x11D0 | size: 0xF
.obj str_stg1_nok_36_01_nok_00001c30, local
	.string "stg1_nok_36_01"
.endobj str_stg1_nok_36_01_nok_00001c30

# .rodata:0x637 | 0x11DF | size: 0x1
.obj gap_03_000011DF_rodata, global
.hidden gap_03_000011DF_rodata
	.byte 0x00
.endobj gap_03_000011DF_rodata

# .rodata:0x638 | 0x11E0 | size: 0xF
.obj str_stg1_nok_36_02_nok_00001c40, local
	.string "stg1_nok_36_02"
.endobj str_stg1_nok_36_02_nok_00001c40

# .rodata:0x647 | 0x11EF | size: 0x1
.obj gap_03_000011EF_rodata, global
.hidden gap_03_000011EF_rodata
	.byte 0x00
.endobj gap_03_000011EF_rodata

# .rodata:0x648 | 0x11F0 | size: 0xF
.obj str_stg1_nok_36_03_nok_00001c50, local
	.string "stg1_nok_36_03"
.endobj str_stg1_nok_36_03_nok_00001c50

# .rodata:0x657 | 0x11FF | size: 0x1
.obj gap_03_000011FF_rodata, global
.hidden gap_03_000011FF_rodata
	.byte 0x00
.endobj gap_03_000011FF_rodata

# .rodata:0x658 | 0x1200 | size: 0xA
.obj str_c_dance_r_nok_00001c60, local
	.string "c_dance_r"
.endobj str_c_dance_r_nok_00001c60

# .rodata:0x662 | 0x120A | size: 0x2
.obj gap_03_0000120A_rodata, global
.hidden gap_03_0000120A_rodata
	.2byte 0x0000
.endobj gap_03_0000120A_rodata

# .rodata:0x664 | 0x120C | size: 0x7
.obj str_踊り子_nok_00001c6c, local
	.4byte 0x977882E8
	.byte 0x8E, 0x71, 0x00
.endobj str_踊り子_nok_00001c6c

# .rodata:0x66B | 0x1213 | size: 0x1
.obj gap_03_00001213_rodata, global
.hidden gap_03_00001213_rodata
	.byte 0x00
.endobj gap_03_00001213_rodata

# .rodata:0x66C | 0x1214 | size: 0xA
.obj str_c_dance_p_nok_00001c74, local
	.string "c_dance_p"
.endobj str_c_dance_p_nok_00001c74

# .rodata:0x676 | 0x121E | size: 0x2
.obj gap_03_0000121E_rodata, global
.hidden gap_03_0000121E_rodata
	.2byte 0x0000
.endobj gap_03_0000121E_rodata

# .rodata:0x678 | 0x1220 | size: 0xD
.obj str_踊り子ピンク_nok_00001c80, local
	.4byte 0x977882E8
	.4byte 0x8E718373
	.4byte 0x8393834E
	.byte 0x00
.endobj str_踊り子ピンク_nok_00001c80

# .rodata:0x685 | 0x122D | size: 0x3
.obj gap_03_0000122D_rodata, global
.hidden gap_03_0000122D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000122D_rodata

# .rodata:0x688 | 0x1230 | size: 0xA
.obj str_c_dance_k_nok_00001c90, local
	.string "c_dance_k"
.endobj str_c_dance_k_nok_00001c90

# .rodata:0x692 | 0x123A | size: 0x2
.obj gap_03_0000123A_rodata, global
.hidden gap_03_0000123A_rodata
	.2byte 0x0000
.endobj gap_03_0000123A_rodata

# .rodata:0x694 | 0x123C | size: 0xB
.obj str_踊り子黄緑_nok_00001c9c, local
	.4byte 0x977882E8
	.4byte 0x8E7189A9
	.byte 0x97, 0xCE, 0x00
.endobj str_踊り子黄緑_nok_00001c9c

# .rodata:0x69F | 0x1247 | size: 0x1
.obj gap_03_00001247_rodata, global
.hidden gap_03_00001247_rodata
	.byte 0x00
.endobj gap_03_00001247_rodata

# .rodata:0x6A0 | 0x1248 | size: 0xA
.obj str_ノコノコG_nok_00001ca8, local
	.4byte 0x836D8352
	.4byte 0x836D8352
	.2byte 0x4700
.endobj str_ノコノコG_nok_00001ca8

# .rodata:0x6AA | 0x1252 | size: 0x2
.obj gap_03_00001252_rodata, global
.hidden gap_03_00001252_rodata
	.2byte 0x0000
.endobj gap_03_00001252_rodata

# .rodata:0x6AC | 0x1254 | size: 0xA
.obj str_ノコノコH_nok_00001cb4, local
	.4byte 0x836D8352
	.4byte 0x836D8352
	.2byte 0x4800
.endobj str_ノコノコH_nok_00001cb4

# .rodata:0x6B6 | 0x125E | size: 0x2
.obj gap_03_0000125E_rodata, global
.hidden gap_03_0000125E_rodata
	.2byte 0x0000
.endobj gap_03_0000125E_rodata

# .rodata:0x6B8 | 0x1260 | size: 0xA
.obj str_ノコノコI_nok_00001cc0, local
	.4byte 0x836D8352
	.4byte 0x836D8352
	.2byte 0x4900
.endobj str_ノコノコI_nok_00001cc0

# .rodata:0x6C2 | 0x126A | size: 0x2
.obj gap_03_0000126A_rodata, global
.hidden gap_03_0000126A_rodata
	.2byte 0x0000
.endobj gap_03_0000126A_rodata

# .rodata:0x6C4 | 0x126C | size: 0xA
.obj str_ノコノコK_nok_00001ccc, local
	.4byte 0x836D8352
	.4byte 0x836D8352
	.2byte 0x4B00
.endobj str_ノコノコK_nok_00001ccc

# .rodata:0x6CE | 0x1276 | size: 0x2
.obj gap_03_00001276_rodata, global
.hidden gap_03_00001276_rodata
	.2byte 0x0000
.endobj gap_03_00001276_rodata

# .rodata:0x6D0 | 0x1278 | size: 0x5
.obj str_村長_nok_00001cd8, local
	.4byte 0x91BA92B7
	.byte 0x00
.endobj str_村長_nok_00001cd8

# .rodata:0x6D5 | 0x127D | size: 0x3
.obj gap_03_0000127D_rodata, global
.hidden gap_03_0000127D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000127D_rodata

# .rodata:0x6D8 | 0x1280 | size: 0xD
.obj str_ノコタロウ父_nok_00001ce0, local
	.4byte 0x836D8352
	.4byte 0x835E838D
	.4byte 0x83459583
	.byte 0x00
.endobj str_ノコタロウ父_nok_00001ce0

# .rodata:0x6E5 | 0x128D | size: 0x3
.obj gap_03_0000128D_rodata, global
.hidden gap_03_0000128D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000128D_rodata

# .rodata:0x6E8 | 0x1290 | size: 0x9
.obj str_ノコリン_nok_00001cf0, local
	.4byte 0x836D8352
	.4byte 0x838A8393
	.byte 0x00
.endobj str_ノコリン_nok_00001cf0

# .rodata:0x6F1 | 0x1299 | size: 0x3
.obj gap_03_00001299_rodata, global
.hidden gap_03_00001299_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001299_rodata

# .rodata:0x6F4 | 0x129C | size: 0x7
.obj str_w_bero_nok_00001cfc, local
	.string "w_bero"
.endobj str_w_bero_nok_00001cfc

# .rodata:0x6FB | 0x12A3 | size: 0x1
.obj gap_03_000012A3_rodata, global
.hidden gap_03_000012A3_rodata
	.byte 0x00
.endobj gap_03_000012A3_rodata

# .rodata:0x6FC | 0x12A4 | size: 0x7
.obj str_nok_00_nok_00001d04, local
	.string "nok_00"
.endobj str_nok_00_nok_00001d04

# .rodata:0x703 | 0x12AB | size: 0x1
.obj gap_03_000012AB_rodata, global
.hidden gap_03_000012AB_rodata
	.byte 0x00
.endobj gap_03_000012AB_rodata

# .rodata:0x704 | 0x12AC | size: 0x7
.obj str_e_bero_nok_00001d0c, local
	.string "e_bero"
.endobj str_e_bero_nok_00001d0c

# .rodata:0x70B | 0x12B3 | size: 0x1
.obj gap_03_000012B3_rodata, global
.hidden gap_03_000012B3_rodata
	.byte 0x00
.endobj gap_03_000012B3_rodata

# .rodata:0x70C | 0x12B4 | size: 0x7
.obj str_hei_02_nok_00001d14, local
	.string "hei_02"
.endobj str_hei_02_nok_00001d14

# .rodata:0x713 | 0x12BB | size: 0x1
.obj gap_03_000012BB_rodata, global
.hidden gap_03_000012BB_rodata
	.byte 0x00
.endobj gap_03_000012BB_rodata

# .rodata:0x714 | 0x12BC | size: 0x8
.obj str_dokan_1_nok_00001d1c, local
	.string "dokan_1"
.endobj str_dokan_1_nok_00001d1c

# .rodata:0x71C | 0x12C4 | size: 0x7
.obj str_tik_16_nok_00001d24, local
	.string "tik_16"
.endobj str_tik_16_nok_00001d24

# .rodata:0x723 | 0x12CB | size: 0x1
.obj gap_03_000012CB_rodata, global
.hidden gap_03_000012CB_rodata
	.byte 0x00
.endobj gap_03_000012CB_rodata

# .rodata:0x724 | 0x12CC | size: 0x8
.obj str_dokan_2_nok_00001d2c, local
	.string "dokan_2"
.endobj str_dokan_2_nok_00001d2c

# .rodata:0x72C | 0x12D4 | size: 0x9
.obj str_kururin3_nok_00001d34, local
	.string "kururin3"
.endobj str_kururin3_nok_00001d34

# .rodata:0x735 | 0x12DD | size: 0x3
.obj gap_03_000012DD_rodata, global
.hidden gap_03_000012DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012DD_rodata

# .rodata:0x738 | 0x12E0 | size: 0xA
.obj str_A_son_doa_nok_00001d40, local
	.string "A_son_doa"
.endobj str_A_son_doa_nok_00001d40

# .rodata:0x742 | 0x12EA | size: 0x2
.obj gap_03_000012EA_rodata, global
.hidden gap_03_000012EA_rodata
	.2byte 0x0000
.endobj gap_03_000012EA_rodata

# .rodata:0x744 | 0x12EC | size: 0xD
.obj str_A_son_in_doa_nok_00001d4c, local
	.string "A_son_in_doa"
.endobj str_A_son_in_doa_nok_00001d4c

# .rodata:0x751 | 0x12F9 | size: 0x3
.obj gap_03_000012F9_rodata, global
.hidden gap_03_000012F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012F9_rodata

# .rodata:0x754 | 0x12FC | size: 0xB
.obj str_S_son_open_nok_00001d5c, local
	.string "S_son_open"
.endobj str_S_son_open_nok_00001d5c

# .rodata:0x75F | 0x1307 | size: 0x1
.obj gap_03_00001307_rodata, global
.hidden gap_03_00001307_rodata
	.byte 0x00
.endobj gap_03_00001307_rodata

# .rodata:0x760 | 0x1308 | size: 0xF
.obj str_S_son_doa_open_nok_00001d68, local
	.string "S_son_doa_open"
.endobj str_S_son_doa_open_nok_00001d68

# .rodata:0x76F | 0x1317 | size: 0x1
.obj gap_03_00001317_rodata, global
.hidden gap_03_00001317_rodata
	.byte 0x00
.endobj gap_03_00001317_rodata

# .rodata:0x770 | 0x1318 | size: 0xC
.obj str_S_son_close_nok_00001d78, local
	.string "S_son_close"
.endobj str_S_son_close_nok_00001d78

# .rodata:0x77C | 0x1324 | size: 0x10
.obj str_S_son_doa_close_nok_00001d84, local
	.string "S_son_doa_close"
.endobj str_S_son_doa_close_nok_00001d84

# .rodata:0x78C | 0x1334 | size: 0xA
.obj str_S_son_mae_nok_00001d94, local
	.string "S_son_mae"
.endobj str_S_son_mae_nok_00001d94

# .rodata:0x796 | 0x133E | size: 0x2
.obj gap_03_0000133E_rodata, global
.hidden gap_03_0000133E_rodata
	.2byte 0x0000
.endobj gap_03_0000133E_rodata

# .rodata:0x798 | 0x1340 | size: 0xB
.obj str_S_son_doa1_nok_00001da0, local
	.string "S_son_doa1"
.endobj str_S_son_doa1_nok_00001da0

# .rodata:0x7A3 | 0x134B | size: 0x1
.obj gap_03_0000134B_rodata, global
.hidden gap_03_0000134B_rodata
	.byte 0x00
.endobj gap_03_0000134B_rodata

# .rodata:0x7A4 | 0x134C | size: 0x9
.obj str_S_son_in_nok_00001dac, local
	.string "S_son_in"
.endobj str_S_son_in_nok_00001dac

# .rodata:0x7AD | 0x1355 | size: 0x3
.obj gap_03_00001355_rodata, global
.hidden gap_03_00001355_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001355_rodata

# .rodata:0x7B0 | 0x1358 | size: 0x9
.obj str_A_son_in_nok_00001db8, local
	.string "A_son_in"
.endobj str_A_son_in_nok_00001db8

# .rodata:0x7B9 | 0x1361 | size: 0x3
.obj gap_03_00001361_rodata, global
.hidden gap_03_00001361_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001361_rodata

# .rodata:0x7BC | 0x1364 | size: 0xA
.obj str_S_taro_in_nok_00001dc4, local
	.string "S_taro_in"
.endobj str_S_taro_in_nok_00001dc4

# .rodata:0x7C6 | 0x136E | size: 0x2
.obj gap_03_0000136E_rodata, global
.hidden gap_03_0000136E_rodata
	.2byte 0x0000
.endobj gap_03_0000136E_rodata

# .rodata:0x7C8 | 0x1370 | size: 0x4
.obj str_box_nok_00001dd0, local
	.string "box"
.endobj str_box_nok_00001dd0

# .rodata:0x7CC | 0x1374 | size: 0x8
.obj str_item_01_nok_00001dd4, local
	.string "item_01"
.endobj str_item_01_nok_00001dd4

# .rodata:0x7D4 | 0x137C | size: 0xB
.obj str_A_taro_doa_nok_00001ddc, local
	.string "A_taro_doa"
.endobj str_A_taro_doa_nok_00001ddc

# .rodata:0x7DF | 0x1387 | size: 0x1
.obj gap_03_00001387_rodata, global
.hidden gap_03_00001387_rodata
	.byte 0x00
.endobj gap_03_00001387_rodata

# .rodata:0x7E0 | 0x1388 | size: 0xE
.obj str_A_taro_in_doa_nok_00001de8, local
	.string "A_taro_in_doa"
.endobj str_A_taro_in_doa_nok_00001de8

# .rodata:0x7EE | 0x1396 | size: 0x2
.obj gap_03_00001396_rodata, global
.hidden gap_03_00001396_rodata
	.2byte 0x0000
.endobj gap_03_00001396_rodata

# .rodata:0x7F0 | 0x1398 | size: 0xC
.obj str_S_taro_open_nok_00001df8, local
	.string "S_taro_open"
.endobj str_S_taro_open_nok_00001df8

# .rodata:0x7FC | 0x13A4 | size: 0x10
.obj str_S_taro_doa_open_nok_00001e04, local
	.string "S_taro_doa_open"
.endobj str_S_taro_doa_open_nok_00001e04

# .rodata:0x80C | 0x13B4 | size: 0xD
.obj str_S_taro_close_nok_00001e14, local
	.string "S_taro_close"
.endobj str_S_taro_close_nok_00001e14

# .rodata:0x819 | 0x13C1 | size: 0x3
.obj gap_03_000013C1_rodata, global
.hidden gap_03_000013C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013C1_rodata

# .rodata:0x81C | 0x13C4 | size: 0x11
.obj str_S_taro_doa_close_nok_00001e24, local
	.string "S_taro_doa_close"
.endobj str_S_taro_doa_close_nok_00001e24

# .rodata:0x82D | 0x13D5 | size: 0x3
.obj gap_03_000013D5_rodata, global
.hidden gap_03_000013D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013D5_rodata

# .rodata:0x830 | 0x13D8 | size: 0xB
.obj str_S_taro_mae_nok_00001e38, local
	.string "S_taro_mae"
.endobj str_S_taro_mae_nok_00001e38

# .rodata:0x83B | 0x13E3 | size: 0x1
.obj gap_03_000013E3_rodata, global
.hidden gap_03_000013E3_rodata
	.byte 0x00
.endobj gap_03_000013E3_rodata

# .rodata:0x83C | 0x13E4 | size: 0xB
.obj str_S_taro_doa_nok_00001e44, local
	.string "S_taro_doa"
.endobj str_S_taro_doa_nok_00001e44

# .rodata:0x847 | 0x13EF | size: 0x1
.obj gap_03_000013EF_rodata, global
.hidden gap_03_000013EF_rodata
	.byte 0x00
.endobj gap_03_000013EF_rodata

# .rodata:0x848 | 0x13F0 | size: 0xA
.obj str_A_taro_in_nok_00001e50, local
	.string "A_taro_in"
.endobj str_A_taro_in_nok_00001e50

# .rodata:0x852 | 0x13FA | size: 0x2
.obj gap_03_000013FA_rodata, global
.hidden gap_03_000013FA_rodata
	.2byte 0x0000
.endobj gap_03_000013FA_rodata

# .rodata:0x854 | 0x13FC | size: 0x9
.obj str_S_ie_sit_nok_00001e5c, local
	.string "S_ie_sit"
.endobj str_S_ie_sit_nok_00001e5c

# .rodata:0x85D | 0x1405 | size: 0x3
.obj gap_03_00001405_rodata, global
.hidden gap_03_00001405_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001405_rodata

# .rodata:0x860 | 0x1408 | size: 0x9
.obj str_A_ie_doa_nok_00001e68, local
	.string "A_ie_doa"
.endobj str_A_ie_doa_nok_00001e68

# .rodata:0x869 | 0x1411 | size: 0x3
.obj gap_03_00001411_rodata, global
.hidden gap_03_00001411_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001411_rodata

# .rodata:0x86C | 0x1414 | size: 0xC
.obj str_S_ie_in_doa_nok_00001e74, local
	.string "S_ie_in_doa"
.endobj str_S_ie_in_doa_nok_00001e74

# .rodata:0x878 | 0x1420 | size: 0xA
.obj str_S_ie_open_nok_00001e80, local
	.string "S_ie_open"
.endobj str_S_ie_open_nok_00001e80

# .rodata:0x882 | 0x142A | size: 0x2
.obj gap_03_0000142A_rodata, global
.hidden gap_03_0000142A_rodata
	.2byte 0x0000
.endobj gap_03_0000142A_rodata

# .rodata:0x884 | 0x142C | size: 0xE
.obj str_S_ie_doa_open_nok_00001e8c, local
	.string "S_ie_doa_open"
.endobj str_S_ie_doa_open_nok_00001e8c

# .rodata:0x892 | 0x143A | size: 0x2
.obj gap_03_0000143A_rodata, global
.hidden gap_03_0000143A_rodata
	.2byte 0x0000
.endobj gap_03_0000143A_rodata

# .rodata:0x894 | 0x143C | size: 0xB
.obj str_S_ie_close_nok_00001e9c, local
	.string "S_ie_close"
.endobj str_S_ie_close_nok_00001e9c

# .rodata:0x89F | 0x1447 | size: 0x1
.obj gap_03_00001447_rodata, global
.hidden gap_03_00001447_rodata
	.byte 0x00
.endobj gap_03_00001447_rodata

# .rodata:0x8A0 | 0x1448 | size: 0xF
.obj str_S_ie_doa_close_nok_00001ea8, local
	.string "S_ie_doa_close"
.endobj str_S_ie_doa_close_nok_00001ea8

# .rodata:0x8AF | 0x1457 | size: 0x1
.obj gap_03_00001457_rodata, global
.hidden gap_03_00001457_rodata
	.byte 0x00
.endobj gap_03_00001457_rodata

# .rodata:0x8B0 | 0x1458 | size: 0x9
.obj str_S_ie_mae_nok_00001eb8, local
	.string "S_ie_mae"
.endobj str_S_ie_mae_nok_00001eb8

# .rodata:0x8B9 | 0x1461 | size: 0x3
.obj gap_03_00001461_rodata, global
.hidden gap_03_00001461_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001461_rodata

# .rodata:0x8BC | 0x1464 | size: 0x9
.obj str_S_ie_doa_nok_00001ec4, local
	.string "S_ie_doa"
.endobj str_S_ie_doa_nok_00001ec4

# .rodata:0x8C5 | 0x146D | size: 0x3
.obj gap_03_0000146D_rodata, global
.hidden gap_03_0000146D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000146D_rodata

# .rodata:0x8C8 | 0x1470 | size: 0x8
.obj str_S_ie_in_nok_00001ed0, local
	.string "S_ie_in"
.endobj str_S_ie_in_nok_00001ed0

# .rodata:0x8D0 | 0x1478 | size: 0x8
.obj str_A_ie_in_nok_00001ed8, local
	.string "A_ie_in"
.endobj str_A_ie_in_nok_00001ed8

# .rodata:0x8D8 | 0x1480 | size: 0x7
.obj str_mod_00_nok_00001ee0, local
	.string "mod_00"
.endobj str_mod_00_nok_00001ee0

# .rodata:0x8DF | 0x1487 | size: 0x1
.obj gap_03_00001487_rodata, global
.hidden gap_03_00001487_rodata
	.byte 0x00
.endobj gap_03_00001487_rodata

# .rodata:0x8E0 | 0x1488 | size: 0x7
.obj str_mod_01_nok_00001ee8, local
	.string "mod_01"
.endobj str_mod_01_nok_00001ee8

# .rodata:0x8E7 | 0x148F | size: 0x1
.obj gap_03_0000148F_rodata, global
.hidden gap_03_0000148F_rodata
	.byte 0x00
.endobj gap_03_0000148F_rodata

# .rodata:0x8E8 | 0x1490 | size: 0x7
.obj str_mod_02_nok_00001ef0, local
	.string "mod_02"
.endobj str_mod_02_nok_00001ef0

# .rodata:0x8EF | 0x1497 | size: 0x1
.obj gap_03_00001497_rodata, global
.hidden gap_03_00001497_rodata
	.byte 0x00
.endobj gap_03_00001497_rodata

# .rodata:0x8F0 | 0x1498 | size: 0x7
.obj str_mod_03_nok_00001ef8, local
	.string "mod_03"
.endobj str_mod_03_nok_00001ef8

# .rodata:0x8F7 | 0x149F | size: 0x1
.obj gap_03_0000149F_rodata, global
.hidden gap_03_0000149F_rodata
	.byte 0x00
.endobj gap_03_0000149F_rodata

# .rodata:0x8F8 | 0x14A0 | size: 0x7
.obj str_mod_04_nok_00001f00, local
	.string "mod_04"
.endobj str_mod_04_nok_00001f00

# .rodata:0x8FF | 0x14A7 | size: 0x1
.obj gap_03_000014A7_rodata, global
.hidden gap_03_000014A7_rodata
	.byte 0x00
.endobj gap_03_000014A7_rodata

# .rodata:0x900 | 0x14A8 | size: 0x7
.obj str_mod_05_nok_00001f08, local
	.string "mod_05"
.endobj str_mod_05_nok_00001f08

# .rodata:0x907 | 0x14AF | size: 0x1
.obj gap_03_000014AF_rodata, global
.hidden gap_03_000014AF_rodata
	.byte 0x00
.endobj gap_03_000014AF_rodata

# .rodata:0x908 | 0x14B0 | size: 0x7
.obj str_mod_06_nok_00001f10, local
	.string "mod_06"
.endobj str_mod_06_nok_00001f10

# .rodata:0x90F | 0x14B7 | size: 0x1
.obj gap_03_000014B7_rodata, global
.hidden gap_03_000014B7_rodata
	.byte 0x00
.endobj gap_03_000014B7_rodata

# .rodata:0x910 | 0x14B8 | size: 0x7
.obj str_mod_07_nok_00001f18, local
	.string "mod_07"
.endobj str_mod_07_nok_00001f18

# .rodata:0x917 | 0x14BF | size: 0x1
.obj gap_03_000014BF_rodata, global
.hidden gap_03_000014BF_rodata
	.byte 0x00
.endobj gap_03_000014BF_rodata

# .rodata:0x918 | 0x14C0 | size: 0x7
.obj str_mod_08_nok_00001f20, local
	.string "mod_08"
.endobj str_mod_08_nok_00001f20

# .rodata:0x91F | 0x14C7 | size: 0x1
.obj gap_03_000014C7_rodata, global
.hidden gap_03_000014C7_rodata
	.byte 0x00
.endobj gap_03_000014C7_rodata

# .rodata:0x920 | 0x14C8 | size: 0x7
.obj str_mod_09_nok_00001f28, local
	.string "mod_09"
.endobj str_mod_09_nok_00001f28

# .rodata:0x927 | 0x14CF | size: 0x1
.obj gap_03_000014CF_rodata, global
.hidden gap_03_000014CF_rodata
	.byte 0x00
.endobj gap_03_000014CF_rodata

# .rodata:0x928 | 0x14D0 | size: 0x8
.obj str_mod_010_nok_00001f30, local
	.string "mod_010"
.endobj str_mod_010_nok_00001f30

# .rodata:0x930 | 0x14D8 | size: 0x8
.obj str_A_hasi1_nok_00001f38, local
	.string "A_hasi1"
.endobj str_A_hasi1_nok_00001f38

# .rodata:0x938 | 0x14E0 | size: 0xC
.obj str_stg1_nok_85_nok_00001f40, local
	.string "stg1_nok_85"
.endobj str_stg1_nok_85_nok_00001f40

# .rodata:0x944 | 0x14EC | size: 0xC
.obj str_stg1_nok_86_nok_00001f4c, local
	.string "stg1_nok_86"
.endobj str_stg1_nok_86_nok_00001f4c

# .rodata:0x950 | 0x14F8 | size: 0xC
.obj str_stg1_nok_87_nok_00001f58, local
	.string "stg1_nok_87"
.endobj str_stg1_nok_87_nok_00001f58

# .rodata:0x95C | 0x1504 | size: 0xC
.obj str_stg1_nok_88_nok_00001f64, local
	.string "stg1_nok_88"
.endobj str_stg1_nok_88_nok_00001f64

# .rodata:0x968 | 0x1510 | size: 0xC
.obj str_stg1_nok_89_nok_00001f70, local
	.string "stg1_nok_89"
.endobj str_stg1_nok_89_nok_00001f70

# .rodata:0x974 | 0x151C | size: 0xC
.obj str_stg1_nok_90_nok_00001f7c, local
	.string "stg1_nok_90"
.endobj str_stg1_nok_90_nok_00001f7c

# .rodata:0x980 | 0x1528 | size: 0xC
.obj str_stg1_nok_91_nok_00001f88, local
	.string "stg1_nok_91"
.endobj str_stg1_nok_91_nok_00001f88

# .rodata:0x98C | 0x1534 | size: 0xD
.obj str_クリスチーヌ_nok_00001f94, local
	.4byte 0x834E838A
	.4byte 0x83588360
	.4byte 0x815B836B
	.byte 0x00
.endobj str_クリスチーヌ_nok_00001f94

# .rodata:0x999 | 0x1541 | size: 0x3
.obj gap_03_00001541_rodata, global
.hidden gap_03_00001541_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001541_rodata

# .rodata:0x99C | 0x1544 | size: 0xC
.obj str_stg1_nok_92_nok_00001fa4, local
	.string "stg1_nok_92"
.endobj str_stg1_nok_92_nok_00001fa4

# .rodata:0x9A8 | 0x1550 | size: 0xC
.obj str_stg1_nok_94_nok_00001fb0, local
	.string "stg1_nok_94"
.endobj str_stg1_nok_94_nok_00001fb0

# .rodata:0x9B4 | 0x155C | size: 0xC
.obj str_stg1_nok_95_nok_00001fbc, local
	.string "stg1_nok_95"
.endobj str_stg1_nok_95_nok_00001fbc

# .rodata:0x9C0 | 0x1568 | size: 0xC
.obj str_stg1_nok_96_nok_00001fc8, local
	.string "stg1_nok_96"
.endobj str_stg1_nok_96_nok_00001fc8

# .rodata:0x9CC | 0x1574 | size: 0x6
.obj str_c_pkr_nok_00001fd4, local
	.string "c_pkr"
.endobj str_c_pkr_nok_00001fd4

# .rodata:0x9D2 | 0x157A | size: 0x2
.obj gap_03_0000157A_rodata, global
.hidden gap_03_0000157A_rodata
	.2byte 0x0000
.endobj gap_03_0000157A_rodata

# .rodata:0x9D4 | 0x157C | size: 0x8
.obj str_PKR_S_1_nok_00001fdc, local
	.string "PKR_S_1"
.endobj str_PKR_S_1_nok_00001fdc

# .rodata:0x9DC | 0x1584 | size: 0xC
.obj vec3_nok_00001fe4, local
	.4byte 0x00000000
	.4byte 0x42C80000
	.4byte 0x00000000
.endobj vec3_nok_00001fe4

# .rodata:0x9E8 | 0x1590 | size: 0xC
.obj vec3_nok_00001ff0, local
	.4byte 0x00000000
	.4byte 0x3F800000
	.4byte 0x00000000
.endobj vec3_nok_00001ff0

# .rodata:0x9F4 | 0x159C | size: 0xC
.obj vec3_nok_00001ffc, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_nok_00001ffc

# .rodata:0xA00 | 0x15A8 | size: 0x1
.obj zero_nok_00002008, local
	.byte 0x00
.endobj zero_nok_00002008

# .rodata:0xA01 | 0x15A9 | size: 0x3
.obj gap_03_000015A9_rodata, global
.hidden gap_03_000015A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000015A9_rodata

# .rodata:0xA04 | 0x15AC | size: 0x2
.obj str_S_nok_0000200c, local
	.string "S"
.endobj str_S_nok_0000200c

# .rodata:0xA06 | 0x15AE | size: 0x2
.obj gap_03_000015AE_rodata, global
.hidden gap_03_000015AE_rodata
	.2byte 0x0000
.endobj gap_03_000015AE_rodata

# .rodata:0xA08 | 0x15B0 | size: 0x15
.obj str_SFX_STG8_WORLD_DARK1_nok_00002010, local
	.string "SFX_STG8_WORLD_DARK1"
.endobj str_SFX_STG8_WORLD_DARK1_nok_00002010

# .rodata:0xA1D | 0x15C5 | size: 0x3
.obj gap_03_000015C5_rodata, global
.hidden gap_03_000015C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000015C5_rodata

# .rodata:0xA20 | 0x15C8 | size: 0xD
.obj str_stg8_dark_01_nok_00002028, local
	.string "stg8_dark_01"
.endobj str_stg8_dark_01_nok_00002028

# .rodata:0xA2D | 0x15D5 | size: 0x3
.obj gap_03_000015D5_rodata, global
.hidden gap_03_000015D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000015D5_rodata

# .rodata:0xA30 | 0x15D8 | size: 0x7
.obj str_mri_00_nok_00002038, local
	.string "mri_00"
.endobj str_mri_00_nok_00002038

# .rodata:0xA37 | 0x15DF | size: 0x1
.obj gap_03_000015DF_rodata, global
.hidden gap_03_000015DF_rodata
	.byte 0x00
.endobj gap_03_000015DF_rodata

# .rodata:0xA38 | 0x15E0 | size: 0xC
.obj str_sekai_yami1_nok_00002040, local
	.string "sekai_yami1"
.endobj str_sekai_yami1_nok_00002040

# .rodata:0xA44 | 0x15EC | size: 0xA
.obj str_starstone_nok_0000204c, local
	.string "starstone"
.endobj str_starstone_nok_0000204c

# .rodata:0xA4E | 0x15F6 | size: 0x2
.obj gap_03_000015F6_rodata, global
.hidden gap_03_000015F6_rodata
	.2byte 0x0000
.endobj gap_03_000015F6_rodata

# .rodata:0xA50 | 0x15F8 | size: 0x7
.obj str_S_hasi_nok_00002058, local
	.string "S_hasi"
.endobj str_S_hasi_nok_00002058

# .rodata:0xA57 | 0x15FF | size: 0x1
.obj gap_03_000015FF_rodata, global
.hidden gap_03_000015FF_rodata
	.byte 0x00
.endobj gap_03_000015FF_rodata

# .rodata:0xA58 | 0x1600 | size: 0x10
.obj str_stg8_las_148_03_nok_00002060, local
	.string "stg8_las_148_03"
.endobj str_stg8_las_148_03_nok_00002060

# .rodata:0xA68 | 0x1610 | size: 0x10
.obj str_stg8_las_148_04_nok_00002070, local
	.string "stg8_las_148_04"
.endobj str_stg8_las_148_04_nok_00002070

# .rodata:0xA78 | 0x1620 | size: 0x10
.obj str_stg8_las_148_05_nok_00002080, local
	.string "stg8_las_148_05"
.endobj str_stg8_las_148_05_nok_00002080

# .rodata:0xA88 | 0x1630 | size: 0x10
.obj str_stg8_las_148_06_nok_00002090, local
	.string "stg8_las_148_06"
.endobj str_stg8_las_148_06_nok_00002090

# .rodata:0xA98 | 0x1640 | size: 0x10
.obj str_stg8_las_148_07_nok_000020a0, local
	.string "stg8_las_148_07"
.endobj str_stg8_las_148_07_nok_000020a0

# .rodata:0xAA8 | 0x1650 | size: 0x10
.obj str_stg8_las_148_08_nok_000020b0, local
	.string "stg8_las_148_08"
.endobj str_stg8_las_148_08_nok_000020b0

# .rodata:0xAB8 | 0x1660 | size: 0x10
.obj str_stg8_las_148_09_nok_000020c0, local
	.string "stg8_las_148_09"
.endobj str_stg8_las_148_09_nok_000020c0

# .rodata:0xAC8 | 0x1670 | size: 0xC
.obj str_minnnanokoe_nok_000020d0, local
	.string "minnnanokoe"
.endobj str_minnnanokoe_nok_000020d0

# .rodata:0xAD4 | 0x167C | size: 0x8
.obj str_S_dakan_nok_000020dc, local
	.string "S_dakan"
.endobj str_S_dakan_nok_000020dc

# .rodata:0xADC | 0x1684 | size: 0x8
.obj str_A_dokan_nok_000020e4, local
	.string "A_dokan"
.endobj str_A_dokan_nok_000020e4

# .rodata:0xAE4 | 0x168C | size: 0xE
.obj str_nok_01_for_E3_nok_000020ec, local
	.string "nok_01_for_E3"
.endobj str_nok_01_for_E3_nok_000020ec

# .rodata:0xAF2 | 0x169A | size: 0x2
.obj gap_03_0000169A_rodata, global
.hidden gap_03_0000169A_rodata
	.2byte 0x0000
.endobj gap_03_0000169A_rodata

# .rodata:0xAF4 | 0x169C | size: 0x7
.obj str_kpa_02_nok_000020fc, local
	.string "kpa_02"
.endobj str_kpa_02_nok_000020fc

# .rodata:0xAFB | 0x16A3 | size: 0x1
.obj gap_03_000016A3_rodata, global
.hidden gap_03_000016A3_rodata
	.byte 0x00
.endobj gap_03_000016A3_rodata

# .rodata:0xAFC | 0x16A4 | size: 0x8
.obj str_PNK_T_1_nok_00002104, local
	.string "PNK_T_1"
.endobj str_PNK_T_1_nok_00002104

# .rodata:0xB04 | 0x16AC | size: 0x8
.obj str_PNK_S_1_nok_0000210c, local
	.string "PNK_S_1"
.endobj str_PNK_S_1_nok_0000210c

# .rodata:0xB0C | 0x16B4 | size: 0x4
.obj str_T_1_nok_00002114, local
	.string "T_1"
.endobj str_T_1_nok_00002114

# .rodata:0xB10 | 0x16B8 | size: 0x4
.obj str_S_1_nok_00002118, local
	.string "S_1"
.endobj str_S_1_nok_00002118

# .rodata:0xB14 | 0x16BC | size: 0x8
.obj str_PNK_O_1_nok_0000211c, local
	.string "PNK_O_1"
.endobj str_PNK_O_1_nok_0000211c

# .rodata:0xB1C | 0x16C4 | size: 0x8
.obj str_PKR_T_1_nok_00002124, local
	.string "PKR_T_1"
.endobj str_PKR_T_1_nok_00002124

# .rodata:0xB24 | 0x16CC | size: 0x8
.obj str_PNK_T_3_nok_0000212c, local
	.string "PNK_T_3"
.endobj str_PNK_T_3_nok_0000212c

# .rodata:0xB2C | 0x16D4 | size: 0x8
.obj str_PNK_Y_1_nok_00002134, local
	.string "PNK_Y_1"
.endobj str_PNK_Y_1_nok_00002134

# .rodata:0xB34 | 0x16DC | size: 0xE
.obj str_BGM_STG1_NOK1_nok_0000213c, local
	.string "BGM_STG1_NOK1"
.endobj str_BGM_STG1_NOK1_nok_0000213c

# .rodata:0xB42 | 0x16EA | size: 0x2
.obj gap_03_000016EA_rodata, global
.hidden gap_03_000016EA_rodata
	.2byte 0x0000
.endobj gap_03_000016EA_rodata

# .rodata:0xB44 | 0x16EC | size: 0x6
.obj str_ep_38_nok_0000214c, local
	.string "ep_38"
.endobj str_ep_38_nok_0000214c

# .rodata:0xB4A | 0x16F2 | size: 0x2
.obj gap_03_000016F2_rodata, global
.hidden gap_03_000016F2_rodata
	.2byte 0x0000
.endobj gap_03_000016F2_rodata

# .rodata:0xB4C | 0x16F4 | size: 0x11
.obj str_BGM_ZAKO_BATTLE1_nok_00002154, local
	.string "BGM_ZAKO_BATTLE1"
.endobj str_BGM_ZAKO_BATTLE1_nok_00002154

# .rodata:0xB5D | 0x1705 | size: 0x3
.obj gap_03_00001705_rodata, global
.hidden gap_03_00001705_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001705_rodata

# .rodata:0xB60 | 0x1708 | size: 0x7
.obj str_tou_08_nok_00002168, local
	.string "tou_08"
.endobj str_tou_08_nok_00002168

# .rodata:0xB67 | 0x170F | size: 0x1
.obj gap_03_0000170F_rodata, global
.hidden gap_03_0000170F_rodata
	.byte 0x00
.endobj gap_03_0000170F_rodata

# .rodata:0xB68 | 0x1710 | size: 0xC
.obj str_item_kusa_4_nok_00002170, local
	.string "item_kusa_4"
.endobj str_item_kusa_4_nok_00002170

# .rodata:0xB74 | 0x171C | size: 0xC
.obj str_item_kusa_5_nok_0000217c, local
	.string "item_kusa_5"
.endobj str_item_kusa_5_nok_0000217c

# .rodata:0xB80 | 0x1728 | size: 0xC
.obj str_item_kusa_6_nok_00002188, local
	.string "item_kusa_6"
.endobj str_item_kusa_6_nok_00002188

# .rodata:0xB8C | 0x1734 | size: 0xE
.obj str_A_kamehapa_04_nok_00002194, local
	.string "A_kamehapa_04"
.endobj str_A_kamehapa_04_nok_00002194

# .rodata:0xB9A | 0x1742 | size: 0x2
.obj gap_03_00001742_rodata, global
.hidden gap_03_00001742_rodata
	.2byte 0x0000
.endobj gap_03_00001742_rodata

# .rodata:0xB9C | 0x1744 | size: 0xE
.obj str_S_kamehapa_04_nok_000021a4, local
	.string "S_kamehapa_04"
.endobj str_S_kamehapa_04_nok_000021a4

# .rodata:0xBAA | 0x1752 | size: 0x2
.obj gap_03_00001752_rodata, global
.hidden gap_03_00001752_rodata
	.2byte 0x0000
.endobj gap_03_00001752_rodata

# .rodata:0xBAC | 0x1754 | size: 0xE
.obj str_A_kamehapa_05_nok_000021b4, local
	.string "A_kamehapa_05"
.endobj str_A_kamehapa_05_nok_000021b4

# .rodata:0xBBA | 0x1762 | size: 0x2
.obj gap_03_00001762_rodata, global
.hidden gap_03_00001762_rodata
	.2byte 0x0000
.endobj gap_03_00001762_rodata

# .rodata:0xBBC | 0x1764 | size: 0xE
.obj str_S_kamehapa_05_nok_000021c4, local
	.string "S_kamehapa_05"
.endobj str_S_kamehapa_05_nok_000021c4

# .rodata:0xBCA | 0x1772 | size: 0x2
.obj gap_03_00001772_rodata, global
.hidden gap_03_00001772_rodata
	.2byte 0x0000
.endobj gap_03_00001772_rodata

# .rodata:0xBCC | 0x1774 | size: 0xE
.obj str_A_kamehapa_06_nok_000021d4, local
	.string "A_kamehapa_06"
.endobj str_A_kamehapa_06_nok_000021d4

# .rodata:0xBDA | 0x1782 | size: 0x2
.obj gap_03_00001782_rodata, global
.hidden gap_03_00001782_rodata
	.2byte 0x0000
.endobj gap_03_00001782_rodata

# .rodata:0xBDC | 0x1784 | size: 0xE
.obj str_S_kamehapa_06_nok_000021e4, local
	.string "S_kamehapa_06"
.endobj str_S_kamehapa_06_nok_000021e4

# .rodata:0xBEA | 0x1792 | size: 0x2
.obj gap_03_00001792_rodata, global
.hidden gap_03_00001792_rodata
	.2byte 0x0000
.endobj gap_03_00001792_rodata

# .rodata:0xBEC | 0x1794 | size: 0x13
.obj str_BGM_EVT_STG8_WITCH_nok_000021f4, local
	.string "BGM_EVT_STG8_WITCH"
.endobj str_BGM_EVT_STG8_WITCH_nok_000021f4

# .rodata:0xBFF | 0x17A7 | size: 0x1
.obj gap_03_000017A7_rodata, global
.hidden gap_03_000017A7_rodata
	.byte 0x00
.endobj gap_03_000017A7_rodata

# .rodata:0xC00 | 0x17A8 | size: 0x14
.obj str_BGM_EVT_STG8_VOICE1_nok_00002208, local
	.string "BGM_EVT_STG8_VOICE1"
.endobj str_BGM_EVT_STG8_VOICE1_nok_00002208

# .rodata:0xC14 | 0x17BC | size: 0xE
.obj str_ENV_STG1_NOK2_nok_0000221c, local
	.string "ENV_STG1_NOK2"
.endobj str_ENV_STG1_NOK2_nok_0000221c

# .rodata:0xC22 | 0x17CA | size: 0x2
.obj gap_03_000017CA_rodata, global
.hidden gap_03_000017CA_rodata
	.2byte 0x0000
.endobj gap_03_000017CA_rodata

# .rodata:0xC24 | 0x17CC | size: 0x7
.obj str_S_kawa_nok_0000222c, local
	.string "S_kawa"
.endobj str_S_kawa_nok_0000222c

# .rodata:0xC2B | 0x17D3 | size: 0x1
.obj gap_03_000017D3_rodata, global
.hidden gap_03_000017D3_rodata
	.byte 0x00
.endobj gap_03_000017D3_rodata

# .rodata:0xC2C | 0x17D4 | size: 0x9
.obj str_kururin2_nok_00002234, local
	.string "kururin2"
.endobj str_kururin2_nok_00002234

# .rodata:0xC35 | 0x17DD | size: 0x3
.obj gap_03_000017DD_rodata, global
.hidden gap_03_000017DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000017DD_rodata

# .rodata:0xC38 | 0x17E0 | size: 0xA
.obj str_S_guround_nok_00002240, local
	.string "S_guround"
.endobj str_S_guround_nok_00002240

# .rodata:0xC42 | 0x17EA | size: 0x2
.obj gap_03_000017EA_rodata, global
.hidden gap_03_000017EA_rodata
	.2byte 0x0000
.endobj gap_03_000017EA_rodata

# .rodata:0xC44 | 0x17EC | size: 0x8
.obj str_item_00_nok_0000224c, local
	.string "item_00"
.endobj str_item_00_nok_0000224c

# .rodata:0xC4C | 0x17F4 | size: 0xA
.obj str_butterfly_nok_00002254, local
	.string "butterfly"
.endobj str_butterfly_nok_00002254

# .rodata:0xC56 | 0x17FE | size: 0x2
.obj gap_03_000017FE_rodata, global
.hidden gap_03_000017FE_rodata
	.2byte 0x0000
.endobj gap_03_000017FE_rodata

# .rodata:0xC58 | 0x1800 | size: 0xA
.obj str_nokotarou_nok_00002260, local
	.string "nokotarou"
.endobj str_nokotarou_nok_00002260
	.2byte 0x0000

# .rodata:0xC64 | 0x180C | size: 0x4
.obj float_1_nok_0000226c, local
	.float 1
.endobj float_1_nok_0000226c

# .rodata:0xC68 | 0x1810 | size: 0x4
.obj float_neg100_nok_00002270, local
	.float -100
.endobj float_neg100_nok_00002270

# .rodata:0xC6C | 0x1814 | size: 0x4
.obj gap_03_00001814_rodata, global
.hidden gap_03_00001814_rodata
	.4byte 0x00000000
.endobj gap_03_00001814_rodata

# 0x00003158..0x000072B8 | size: 0x4160
.data
.balign 8

# .data:0x0 | 0x3158 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x3160 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3164 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x3168 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x316C | size: 0x4
.obj gap_04_0000316C_data, global
.hidden gap_04_0000316C_data
	.4byte 0x00000000
.endobj gap_04_0000316C_data

# .data:0x18 | 0x3170 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x3178 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x317C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x3180 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x3188 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x318C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x3190 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3194 | size: 0x4
.obj gap_04_00003194_data, global
.hidden gap_04_00003194_data
	.4byte 0x00000000
.endobj gap_04_00003194_data

# .data:0x40 | 0x3198 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x31A0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x31A4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x31A8 | size: 0x4C
.obj nokonoko_G_regl, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_nok_00001608
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte urouro_init_func
	.4byte str_me_nok_00001608
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C0A80
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte urouro_main_func
	.4byte str_me_nok_00001608
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_G_regl

# .data:0x9C | 0x31F4 | size: 0xB0
.obj nokonoko_G_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_20_nok_0000160c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000038
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_20_01_nok_00001618
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000041
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_21_nok_00001628
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_21_1_nok_00001634
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_21_1_1_nok_00001644
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_G_talk

# .data:0x14C | 0x32A4 | size: 0x4C
.obj nokonoko_H_regl, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_nok_00001608
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte urouro_init_func
	.4byte str_me_nok_00001608
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C0A80
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte urouro_main_func
	.4byte str_me_nok_00001608
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_H_regl

# .data:0x198 | 0x32F0 | size: 0xD0
.obj nokonoko_H_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_22_nok_00001654
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000038
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_22_01_nok_00001660
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000041
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_23_nok_00001670
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg1_nok_23_yesno_nok_0000167c
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg1_nok_23_01_nok_00001690
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_23_01_1_nok_000016a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_23_01_1_1_nok_000016b4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_H_talk

# .data:0x268 | 0x33C0 | size: 0x4C
.obj nokonoko_I_regl, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_nok_00001608
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte urouro_init_func
	.4byte str_me_nok_00001608
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C0A80
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte urouro_main_func
	.4byte str_me_nok_00001608
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_I_regl

# .data:0x2B4 | 0x340C | size: 0xB0
.obj nokonoko_I_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_24_nok_000016c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000038
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_24_01_nok_000016d4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000041
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_25_nok_000016e4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_25_1_nok_000016f0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_25_1_1_nok_00001700
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_I_talk

# .data:0x364 | 0x34BC | size: 0x374
.obj open_gate, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_nok_00001608
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_28_nok_00001710
	.4byte 0x00000000
	.4byte str_me_nok_00001608
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_nok_0000171c
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_mon_nok_00001724
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_nok_00001608
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_門番ノコノコ_nok_0000172c
	.4byte 0x000001A4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24B5680
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000898
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_nok_00001608
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_門番ノコノコ_nok_0000172c
	.4byte 0x00000172
	.4byte 0xFFFFFFB4
	.4byte 0x00000000
	.4byte 0xF24B4680
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_hit_get_position
	.4byte str_A_mon_nok_00001724
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_FENCE_OPEN1_nok_0000173c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_S_mon_nok_0000174c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_S_mon_nok_0000174c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x000000A5
	.4byte 0x00000000
	.4byte 0xFFFFFFD7
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ノコタロウ_nok_00001754
	.4byte str_mario_nok_00001760
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_29_nok_00001768
	.4byte 0x00000000
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C5
	.4byte 0x0000004B
	.4byte 0x000000E6
	.4byte 0x000000C5
	.4byte 0x00000014
	.4byte 0xFFFFFFCC
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0x0000015E
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0x0000014A
	.4byte 0xFFFFFFE2
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000140
	.4byte 0x00000055
	.4byte 0x00000105
	.4byte 0x00000140
	.4byte 0x00000020
	.4byte 0xFFFFFFF5
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x00000127
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24C8280
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_30_nok_00001774
	.4byte 0x00000000
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x000000A5
	.4byte 0xFFFFFFF2
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0xFFFFFFE2
	.4byte 0x00000041
	.4byte 0xFFFFFE28
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_nok_00001608
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_30_01_nok_00001780
	.4byte 0x00000000
	.4byte str_party_nok_00001790
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000001C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj open_gate

# .data:0x6D8 | 0x3830 | size: 0x38
.obj monban_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000001C
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_nok_00001608
	.4byte 0x00000172
	.4byte 0x00000000
	.4byte 0xFFFFFFB4
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj monban_init

# .data:0x710 | 0x3868 | size: 0xE0
.obj monban_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000001B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_26_nok_00001798
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x0000001C
	.4byte 0x0001005E
	.4byte open_gate
	.4byte 0x00010026
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_31_01_00_nok_000017a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000038
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_31_01_01_nok_000017b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000041
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_31_02_1_nok_000017cc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_31_02_2_nok_000017e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_31_02_2_1_nok_000017f4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj monban_talk

# .data:0x7F0 | 0x3948 | size: 0x68
.obj nokotarou_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_nok_00001608
	.4byte 0xFFFFFFDD
	.4byte 0x00000041
	.4byte 0xFFFFFE57
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_nok_00001608
	.4byte 0x0000005A
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_nok_00001608
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokotarou_init

# .data:0x858 | 0x39B0 | size: 0x90
.obj nokotarou_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000001B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_27_nok_00001808
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x0000001C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_27_01_nok_00001814
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x0000001D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_31_nok_00001824
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_31_01_nok_00001830
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokotarou_talk

# .data:0x8E8 | 0x3A40 | size: 0x4C
.obj nokopapa_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010027
	.4byte 0x00000037
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_nok_00001608
	.4byte 0x0000005C
	.4byte 0x00000032
	.4byte 0xFFFFFECC
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_nok_00001608
	.4byte 0x0000010E
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokopapa_init

# .data:0x934 | 0x3A8C | size: 0x120
.obj nokopapa_talk, local
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000B2
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_79_nok_00001840
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_80_nok_0000184c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x00000175
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_81_nok_00001858
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_82_nok_00001864
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x00000192
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_83_nok_00001870
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_84_nok_0000187c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_84_1_nok_00001888
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokopapa_talk

# .data:0xA54 | 0x3BAC | size: 0x114
.obj nokonoko_K_talk, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000000E
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_14_00_nok_00001898
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709D
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_14_01_nok_000018a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_32_nok_000018b0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000038
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_32_01_nok_000018bc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000041
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_33_nok_000018cc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_33_1_nok_000018d8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_33_1_1_nok_000018e8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_K_talk

# .data:0xB68 | 0x3CC0 | size: 0x2E0
.obj boss_noko_open_gate, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_37_nok_000018f8
	.4byte 0x00000000
	.4byte str_me_nok_00001608
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_nok_00001608
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_nok_00001904
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_7_nok_00001920
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFFFFFECA
	.4byte 0x0000006E
	.4byte 0xFFFFFEC2
	.4byte 0x000000C8
	.4byte 0x00000001
	.4byte 0xFFFFFC18
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_nok_00001608
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_party_move_behind_mario
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_nok_00001608
	.4byte str_mario_nok_00001760
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_B_nok_00001928
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_nok_0000171c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_38_nok_00001930
	.4byte 0x00000000
	.4byte str_me_nok_00001608
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_nok_0000193c
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_nok_0000171c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_39_nok_00001944
	.4byte 0x00000000
	.4byte str_me_nok_00001608
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_nok_00001950
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_nok_0000171c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_40_nok_00001958
	.4byte 0x00000000
	.4byte str_me_nok_00001608
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg1_nok_40_yn_nok_00001964
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg1_nok_41_nok_00001974
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg1_nok_41_yn_nok_00001980
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg1_nok_42_nok_00001990
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg1_nok_42_yn_nok_0000199c
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg1_nok_43_nok_000019ac
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_nok_0000193c
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_nok_0000171c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_44_nok_000019b8
	.4byte 0x00000000
	.4byte str_me_nok_00001608
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg1_nok_44_yn_nok_000019c4
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg1_nok_45_nok_000019d4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_nok_000019e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_nok_00001950
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_nok_0000171c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_46_nok_000019f8
	.4byte 0x00000000
	.4byte str_me_nok_00001608
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000001B
	.4byte 0x00000002
	.4byte 0x00000001
.endobj boss_noko_open_gate

# .data:0xE48 | 0x3FA0 | size: 0x8
.obj iri_17_item_tbl, local
	.4byte 0x00000062
	.4byte 0xFFFFFFFF
.endobj iri_17_item_tbl

# .data:0xE50 | 0x3FA8 | size: 0x580
.obj boss_noko_talk, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x00000008
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_nok_00001608
	.4byte 0x00000020
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0xFFFFFF06
	.4byte 0xFFFFFEC0
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFEE8
	.4byte 0xFFFFFEC0
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFECA
	.4byte 0xFFFFFEC0
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_nok_00001608
	.4byte str_mario_nok_00001760
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_me_nok_00001608
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_nok_00001608
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0001005B
	.4byte evt_mario_sleep_on
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_08_001_nok_00001a04
	.4byte iri_08_msg
	.4byte str_me_nok_00001608
	.4byte 0x0001005B
	.4byte evt_mario_sleep_off
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_08_002_nok_00001a10
	.4byte 0x00000000
	.4byte str_me_nok_00001608
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
	.4byte str_item_irai_nok_00001a1c
	.4byte 0x000000AE
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item_irai_nok_00001a1c
	.4byte 0x00020032
	.4byte 0xF84061DD
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_08_003_1_nok_00001a28
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_nok_00001608
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_nok_00001608
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_nok_00001608
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_nok_00001608
	.4byte 0xFFFFFEC3
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_iri_08_nok_00001a38
	.4byte 0x000000AE
	.4byte 0xFFFFFEC3
	.4byte 0x00000080
	.4byte 0xFFFFFE8A
	.4byte 0x00000010
	.4byte 0xF84061DD
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_nok_00001608
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_nok_00001608
	.4byte str_mario_nok_00001760
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_me_nok_00001608
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_nok_00001608
	.4byte 0x40000020
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_08_004_nok_00001a40
	.4byte 0x00000000
	.4byte str_me_nok_00001608
	.4byte 0x00020032
	.4byte 0xF5DE070C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8407086
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_sys_request_finish_nok_00001a4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x00000011
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF840709E
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF840709F
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_17_00_nok_00001a60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte iri_17_item_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000062
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_17_01_nok_00001a6c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_kairanban_nok_00001a78
	.4byte 0x00000062
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_kairanban_nok_00001a78
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_kairanban_nok_00001a78
	.4byte 0x00020032
	.4byte 0xF840709F
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_17_02_nok_00001a84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000001B
	.4byte 0x0001005E
	.4byte boss_noko_open_gate
	.4byte 0x00010026
	.4byte 0x00000022
	.4byte 0x00020018
	.4byte 0xF840626E
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF840626F
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_56_nok_00001a90
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_47_nok_00001a9c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000038
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_56_01_nok_00001aa8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000041
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_57_nok_00001ab8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000162
	.4byte 0x00020032
	.4byte 0xF8406AA5
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_57_1_00_nok_00001ac4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_57_1_nok_00001ad8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_57_1_1_nok_00001ae8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj boss_noko_talk

# .data:0x13D0 | 0x4528 | size: 0x78
.obj nokorin_init, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_nok_00001608
	.4byte 0xFFFFFFAB
	.4byte 0x00000032
	.4byte 0xFFFFFED4
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000038
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84061DB
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_nok_00001608
	.4byte 0x0000001E
	.4byte 0x00000032
	.4byte 0xFFFFFEC5
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_nok_00001608
	.4byte 0x0000005A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokorin_init

# .data:0x1448 | 0x45A0 | size: 0x464
.obj nokorin_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF84061D9
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84061D9
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_64_nok_00001af8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_nok_00001b04
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_nok_00001950
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_nok_0000171c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_64_01_nok_00001b1c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_65_nok_00001b2c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84061DA
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84061DA
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte str_a_nok_00001b38
	.4byte str_me_nok_00001608
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_66_nok_00001b3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_66_01_nok_00001b48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000038
	.4byte 0x00020018
	.4byte 0xF84061DB
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xF84061DB
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_67_nok_00001b58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_68_nok_00001b64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_nok_00001608
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_nok_00001608
	.4byte 0x00020030
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_nok_00001608
	.4byte 0xFFFFFFAB
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_nok_00001608
	.4byte 0x00020030
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_70_nok_00001b70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_69_nok_00001b7c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_70_nok_00001b70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x00000047
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_71_nok_00001b88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_72_nok_00001b94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x000000B2
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_73_nok_00001ba0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_74_nok_00001bac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x00000160
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_75_nok_00001bb8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_76_nok_00001bc4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_77_nok_00001bd0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_78_nok_00001bdc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_77_nok_00001bd0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_78_nok_00001bdc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokorin_talk

# .data:0x18AC | 0x4A04 | size: 0xB0
.obj odoriko_1_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_34_nok_00001be8
	.4byte 0x00000000
	.4byte str_踊り子１_nok_00001bf4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_35_nok_00001c00
	.4byte 0x00000000
	.4byte str_踊り子２_nok_00001c0c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_36_nok_00001c18
	.4byte 0x00000000
	.4byte str_踊り子３_nok_00001c24
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_36_01_nok_00001c30
	.4byte 0x00000000
	.4byte str_踊り子１_nok_00001bf4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_36_02_nok_00001c40
	.4byte 0x00000000
	.4byte str_踊り子２_nok_00001c0c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_36_03_nok_00001c50
	.4byte 0x00000000
	.4byte str_踊り子３_nok_00001c24
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj odoriko_1_talk

# .data:0x195C | 0x4AB4 | size: 0x84
.obj odoriko_1_init, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_踊り子１_nok_00001bf4
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte 0xFE363C80
	.4byte str_c_dance_r_nok_00001c60
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte 0xFE363C80
	.4byte str_踊り子_nok_00001c6c
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte odoriko_1_talk
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000600
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C80
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C80
	.4byte 0x0000001B
	.4byte 0x00000000
	.4byte 0x00000172
	.4byte 0x00000002
	.4byte 0x00000001
.endobj odoriko_1_init

# .data:0x19E0 | 0x4B38 | size: 0xB0
.obj odoriko_2_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_34_nok_00001be8
	.4byte 0x00000000
	.4byte str_踊り子１_nok_00001bf4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_35_nok_00001c00
	.4byte 0x00000000
	.4byte str_踊り子２_nok_00001c0c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_36_nok_00001c18
	.4byte 0x00000000
	.4byte str_踊り子３_nok_00001c24
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_36_01_nok_00001c30
	.4byte 0x00000000
	.4byte str_踊り子１_nok_00001bf4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_36_02_nok_00001c40
	.4byte 0x00000000
	.4byte str_踊り子２_nok_00001c0c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_36_03_nok_00001c50
	.4byte 0x00000000
	.4byte str_踊り子３_nok_00001c24
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj odoriko_2_talk

# .data:0x1A90 | 0x4BE8 | size: 0x84
.obj odoriko_2_init, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_踊り子２_nok_00001c0c
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte 0xFE363C80
	.4byte str_c_dance_p_nok_00001c74
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte 0xFE363C80
	.4byte str_踊り子ピンク_nok_00001c80
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte odoriko_2_talk
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000600
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C80
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C80
	.4byte 0x00000043
	.4byte 0x00000000
	.4byte 0x00000154
	.4byte 0x00000002
	.4byte 0x00000001
.endobj odoriko_2_init

# .data:0x1B14 | 0x4C6C | size: 0xB0
.obj odoriko_3_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_34_nok_00001be8
	.4byte 0x00000000
	.4byte str_踊り子１_nok_00001bf4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_35_nok_00001c00
	.4byte 0x00000000
	.4byte str_踊り子２_nok_00001c0c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_36_nok_00001c18
	.4byte 0x00000000
	.4byte str_踊り子３_nok_00001c24
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_36_01_nok_00001c30
	.4byte 0x00000000
	.4byte str_踊り子１_nok_00001bf4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_36_02_nok_00001c40
	.4byte 0x00000000
	.4byte str_踊り子２_nok_00001c0c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_36_03_nok_00001c50
	.4byte 0x00000000
	.4byte str_踊り子３_nok_00001c24
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj odoriko_3_talk

# .data:0x1BC4 | 0x4D1C | size: 0x84
.obj odoriko_3_init, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_踊り子３_nok_00001c24
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte 0xFE363C80
	.4byte str_c_dance_k_nok_00001c90
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte 0xFE363C80
	.4byte str_踊り子黄緑_nok_00001c9c
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte odoriko_3_talk
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000600
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C80
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C80
	.4byte 0x00000055
	.4byte 0x00000000
	.4byte 0x00000186
	.4byte 0x00000002
	.4byte 0x00000001
.endobj odoriko_3_init

# .data:0x1C48 | 0x4DA0 | size: 0x398
.obj npcEnt, local
	.4byte str_ノコノコG_nok_00001ca8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte nokonoko_G_regl
	.4byte nokonoko_G_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ノコノコH_nok_00001cb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte nokonoko_H_regl
	.4byte nokonoko_H_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ノコノコI_nok_00001cc0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte nokonoko_I_regl
	.4byte nokonoko_I_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ノコノコK_nok_00001ccc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte nokonoko_K_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_村長_nok_00001cd8
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte boss_noko_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_門番ノコノコ_nok_0000172c
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte monban_init
	.4byte 0x00000000
	.4byte monban_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte nokotarou_init
	.4byte 0x00000000
	.4byte nokotarou_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte nokopapa_init
	.4byte 0x00000000
	.4byte nokopapa_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte nokorin_init
	.4byte 0x00000000
	.4byte nokorin_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x1FE0 | 0x5138 | size: 0xF0
.obj bero_entry_data, local
	.4byte str_w_bero_nok_00001cfc
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_nok_00_nok_00001d04
	.4byte str_e_bero_nok_00001d0c
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_nok_00001d0c
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_hei_02_nok_00001d14
	.4byte str_w_bero_nok_00001cfc
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_1_nok_00001d1c
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte str_tik_16_nok_00001d24
	.4byte str_dokan_2_nok_00001d2c
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

# .data:0x20D0 | 0x5228 | size: 0x8
.obj son_npc, local
	.4byte str_村長_nok_00001cd8
	.4byte 0x00000000
.endobj son_npc

# .data:0x20D8 | 0x5230 | size: 0x8
.obj son_mobj, local
	.4byte str_kururin3_nok_00001d34
	.4byte 0x00000000
.endobj son_mobj

# .data:0x20E0 | 0x5238 | size: 0x8
.obj son_item, local
	.4byte str_iri_08_nok_00001a38
	.4byte 0x00000000
.endobj son_item

# .data:0x20E8 | 0x5240 | size: 0x4C
.obj son_data, local
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte str_A_son_doa_nok_00001d40
	.4byte 0x00000009
	.4byte str_A_son_in_doa_nok_00001d4c
	.4byte str_S_son_open_nok_00001d5c
	.4byte str_S_son_doa_open_nok_00001d68
	.4byte str_S_son_close_nok_00001d78
	.4byte str_S_son_doa_close_nok_00001d84
	.4byte str_S_son_mae_nok_00001d94
	.4byte str_S_son_doa1_nok_00001da0
	.4byte str_S_son_in_nok_00001dac
	.4byte str_A_son_in_nok_00001db8
	.4byte str_S_son_in_nok_00001dac
	.4byte str_A_son_in_nok_00001db8
	.4byte son_npc
	.4byte 0x00000000
	.4byte son_mobj
	.4byte son_item
.endobj son_data

# .data:0x2134 | 0x528C | size: 0x8
.obj taro_npc, local
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x00000000
.endobj taro_npc

# .data:0x213C | 0x5294 | size: 0x8
.obj taro_map, local
	.4byte str_S_taro_in_nok_00001dc4
	.4byte 0x00000000
.endobj taro_map

# .data:0x2144 | 0x529C | size: 0x8
.obj taro_mobj, local
	.4byte str_box_nok_00001dd0
	.4byte 0x00000000
.endobj taro_mobj

# .data:0x214C | 0x52A4 | size: 0x8
.obj taro_item, local
	.4byte str_item_01_nok_00001dd4
	.4byte 0x00000000
.endobj taro_item

# .data:0x2154 | 0x52AC | size: 0x4C
.obj taro_data, local
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte str_A_taro_doa_nok_00001ddc
	.4byte 0x00000009
	.4byte str_A_taro_in_doa_nok_00001de8
	.4byte str_S_taro_open_nok_00001df8
	.4byte str_S_taro_doa_open_nok_00001e04
	.4byte str_S_taro_close_nok_00001e14
	.4byte str_S_taro_doa_close_nok_00001e24
	.4byte str_S_taro_mae_nok_00001e38
	.4byte str_S_taro_doa_nok_00001e44
	.4byte str_S_taro_in_nok_00001dc4
	.4byte str_A_taro_in_nok_00001e50
	.4byte str_S_taro_in_nok_00001dc4
	.4byte str_A_taro_in_nok_00001e50
	.4byte taro_npc
	.4byte taro_map
	.4byte taro_mobj
	.4byte taro_item
.endobj taro_data

# .data:0x21A0 | 0x52F8 | size: 0x8
.obj ie_npc, local
	.4byte str_ノコノコK_nok_00001ccc
	.4byte 0x00000000
.endobj ie_npc

# .data:0x21A8 | 0x5300 | size: 0x8
.obj ie_map, local
	.4byte str_S_ie_sit_nok_00001e5c
	.4byte 0x00000000
.endobj ie_map

# .data:0x21B0 | 0x5308 | size: 0x4C
.obj ie_data, local
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte str_A_ie_doa_nok_00001e68
	.4byte 0x00000009
	.4byte str_S_ie_in_doa_nok_00001e74
	.4byte str_S_ie_open_nok_00001e80
	.4byte str_S_ie_doa_open_nok_00001e8c
	.4byte str_S_ie_close_nok_00001e9c
	.4byte str_S_ie_doa_close_nok_00001ea8
	.4byte str_S_ie_mae_nok_00001eb8
	.4byte str_S_ie_doa_nok_00001ec4
	.4byte str_S_ie_in_nok_00001ed0
	.4byte str_A_ie_in_nok_00001ed8
	.4byte str_S_ie_in_nok_00001ed0
	.4byte str_A_ie_in_nok_00001ed8
	.4byte ie_npc
	.4byte ie_map
	.4byte 0x00000000
	.4byte 0x00000000
.endobj ie_data

# .data:0x21FC | 0x5354 | size: 0xD0
.obj hitDmgRetPoints, local
	.4byte str_mod_00_nok_00001ee0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_01_nok_00001ee8
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_02_nok_00001ef0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_03_nok_00001ef8
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_04_nok_00001f00
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_05_nok_00001f08
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_06_nok_00001f10
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_07_nok_00001f18
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_08_nok_00001f20
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_09_nok_00001f28
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_010_nok_00001f30
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_A_hasi1_nok_00001f38
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj hitDmgRetPoints

# .data:0x22CC | 0x5424 | size: 0x520
.obj nokotarou_tabidachi, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x0000008E
	.4byte 0x000001C5
	.4byte 0x00000000
	.4byte 0x0000002F
	.4byte 0xFFFFFFAA
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x00010066
	.4byte 0x00000004
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000014
	.4byte 0x00000064
	.4byte 0x00000108
	.4byte 0x00000014
	.4byte 0x00000028
	.4byte 0xFFFFFFAA
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_85_nok_00001f40
	.4byte 0x00000000
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_86_nok_00001f4c
	.4byte 0x00000000
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_87_nok_00001f58
	.4byte 0x00000000
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004D
	.4byte 0x00000064
	.4byte 0x00000108
	.4byte 0x0000004D
	.4byte 0x00000028
	.4byte 0xFFFFFFAA
	.4byte 0x00000190
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_88_nok_00001f64
	.4byte 0x00000000
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_89_nok_00001f70
	.4byte 0x00000000
	.4byte str_村長_nok_00001cd8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000108
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0xFFFFFFAA
	.4byte 0x00000190
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_90_nok_00001f7c
	.4byte 0x00000000
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x40000600
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0xFFFFFFE7
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x00000200
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_91_nok_00001f88
	.4byte 0x00000000
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0x40000620
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0xFFFFFFBF
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0x00000200
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_92_nok_00001fa4
	.4byte 0x00000000
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD8
	.4byte 0x00000064
	.4byte 0x00000108
	.4byte 0xFFFFFFD8
	.4byte 0x00000028
	.4byte 0xFFFFFFAA
	.4byte 0x00000190
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte str_mario_nok_00001760
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_94_nok_00001fb0
	.4byte 0x00000000
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_95_nok_00001fbc
	.4byte 0x00000000
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_96_nok_00001fc8
	.4byte 0x00000000
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0x00020018
	.4byte 0xF840615C
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_mario_set_party_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_get_dir
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_delete
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_mario_goodbye_party
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_mario_set_party_pos
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_get_dir
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_delete
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000003E
	.4byte 0x00010067
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokotarou_tabidachi

# .data:0x27EC | 0x5944 | size: 0x164
.obj nokotarou_tabidachi_init, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte str_c_pkr_nok_00001fd4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte str_PKR_S_1_nok_00001fdc
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0xFFFFFFBF
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xFFFFFFBA
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_村長_nok_00001cd8
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_村長_nok_00001cd8
	.4byte 0x0000010E
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte nokotarou_tabidachi
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokotarou_tabidachi_init

# .data:0x2950 | 0x5AA8 | size: 0xEC
.obj sekai_yami_npc, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0002001D
	.4byte 0xFD050F80
	.4byte 0xFE363C81
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001005F
	.4byte 0xFE363C81
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_nok_00002008
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000030
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000190
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sekai_yami_npc

# .data:0x2A3C | 0x5B94 | size: 0x3A8
.obj sekai_yami_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_村長_nok_00001cd8
	.4byte 0xFFFFFF06
	.4byte 0x00000046
	.4byte 0xFFFFFF83
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_村長_nok_00001cd8
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_ノコノコG_nok_00001ca8
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_ノコノコH_nok_00001cb4
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_ノコノコI_nok_00001cc0
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000028A
	.4byte 0x0000005A
	.4byte 0x000001D3
	.4byte 0x0000000D
	.4byte 0x0000005A
	.4byte 0xFFFFFFEF
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000FF
	.4byte 0x00000040
	.4byte 0x000007D0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_bg_set_color
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x000000FF
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte envSetYami
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_nok_0000200c
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_nok_0000200c
	.4byte 0x00000100
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ノコノコG_nok_00001ca8
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ノコノコH_nok_00001cb4
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ノコノコI_nok_00001cc0
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_村長_nok_00001cd8
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0xFFFFFDA8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ノコノコG_nok_00001ca8
	.4byte 0x0001005C
	.4byte sekai_yami_npc
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ノコノコH_nok_00001cb4
	.4byte 0x0001005C
	.4byte sekai_yami_npc
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ノコノコI_nok_00001cc0
	.4byte 0x0001005C
	.4byte sekai_yami_npc
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_村長_nok_00001cd8
	.4byte 0x0002005D
	.4byte sekai_yami_npc
	.4byte 0xFD050F81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x0001005C
	.4byte sekai_yami_npc
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_WORLD_DARK1_nok_00002010
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFDA8
	.4byte 0x00000258
	.4byte 0x00001388
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002005B
	.4byte yami_view
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000002B
	.4byte 0x00000078
	.4byte 0x0000008D
	.4byte 0xFFFFFF8B
	.4byte 0x00000078
	.4byte 0x00000014
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005F
	.4byte 0xFD050F81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_村長_nok_00001cd8
	.4byte 0x0000010E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_村長_nok_00001cd8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_dark_01_nok_00002028
	.4byte 0x00000000
	.4byte str_村長_nok_00001cd8
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0000012C
	.4byte 0x00000009
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_mri_00_nok_00002038
	.4byte str_sekai_yami1_nok_00002040
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sekai_yami_evt

# .data:0x2DE4 | 0x5F3C | size: 0x680
.obj minnnanokoe_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_村長_nok_00001cd8
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_村長_nok_00001cd8
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0xFFFFFF6A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコノコG_nok_00001ca8
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコノコH_nok_00001cb4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコノコI_nok_00001cc0
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコノコK_nok_00001ccc
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_門番ノコノコ_nok_0000172c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte envSetYami
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_nok_0000200c
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_nok_0000200c
	.4byte 0x00000100
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_村長_nok_00001cd8
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte yami_view
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_bg_set_color
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x000000FF
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000232
	.4byte 0x00000140
	.4byte 0x000001DA
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte starstone_entry
	.4byte str_starstone_nok_0000204c
	.4byte 0x00000000
	.4byte 0x000001C2
	.4byte 0xFFFFFFCE
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hasi_nok_00002058
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x000001C2
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte starstone_set_pos
	.4byte str_starstone_nok_0000204c
	.4byte 0x00000000
	.4byte 0xFD050F80
	.4byte 0xFFFFFFCE
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte starstone_set_ry
	.4byte str_starstone_nok_0000204c
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0xF24A8680
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000001C2
	.4byte 0x00000032
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00001388
	.4byte 0x0000157C
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x0000157C
	.4byte 0x00001388
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_村長_nok_00001cd8
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_nok_00002008
	.4byte str_村長_nok_00001cd8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_03_nok_00002060
	.4byte 0x00000000
	.4byte str_村長_nok_00001cd8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000D3
	.4byte 0x00000085
	.4byte 0x00000091
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0xFFFFFFCE
	.4byte 0x000007D0
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_村長_nok_00001cd8
	.4byte 0x40000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_村長_nok_00001cd8
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFFCE
	.4byte 0x000007D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_04_nok_00002070
	.4byte 0x00000000
	.4byte str_村長_nok_00001cd8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x00000019
	.4byte 0xFFFFFFB5
	.4byte 0x000007D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_05_nok_00002080
	.4byte 0x00000000
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x00000000
	.4byte 0xFFFFFF6A
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_06_nok_00002090
	.4byte 0x00000000
	.4byte str_村長_nok_00001cd8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_07_nok_000020a0
	.4byte 0x00000000
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_08_nok_000020b0
	.4byte 0x00000000
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000BA
	.4byte 0x00000072
	.4byte 0x00000022
	.4byte 0x0000002E
	.4byte 0x0000003C
	.4byte 0xFFFFFF9E
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_09_nok_000020c0
	.4byte 0x00000000
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000232
	.4byte 0x00000140
	.4byte 0x000001DA
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0xFFFFFFCE
	.4byte 0x00001770
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0000012C
	.4byte 0x00000009
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_mri_00_nok_00002038
	.4byte str_minnnanokoe_nok_000020d0
	.4byte 0x00000002
	.4byte 0x00000001
.endobj minnnanokoe_evt

# .data:0x3464 | 0x65BC | size: 0x44
.obj evt_switch_init, local
	.4byte 0x00020018
	.4byte 0xF84060C2
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_dakan_nok_000020dc
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_dokan_nok_000020e4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_switch_init

# .data:0x34A8 | 0x6600 | size: 0x30
.obj e3_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_nok_01_for_E3_nok_000020ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_kpa_02_nok_000020fc
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e3_talk

# .data:0x34D8 | 0x6630 | size: 0x7C
.obj epilogue_npc_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte str_c_pkr_nok_00001fd4
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xFFFFFFBF
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0x00000420
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコノコH_nok_00001cb4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_npc_entry

# .data:0x3554 | 0x66AC | size: 0x308
.obj epilogue_evt_sub, local
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコタロウ_nok_00001754
	.4byte str_PNK_T_1_nok_00002104
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコタロウ_nok_00001754
	.4byte str_PNK_S_1_nok_0000210c
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコリン_nok_00001cf0
	.4byte str_T_1_nok_00002114
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコリン_nok_00001cf0
	.4byte str_S_1_nok_00002118
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte 0xFFFFFFDD
	.4byte 0xFFFFFFBF
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_nok_00002008
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0000010E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコタロウ_nok_00001754
	.4byte str_PNK_O_1_nok_0000211c
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x00000032
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x00000023
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte str_PKR_T_1_nok_00002124
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte str_PKR_S_1_nok_00001fdc
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコタロウ_nok_00001754
	.4byte str_PNK_T_1_nok_00002104
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコタロウ_nok_00001754
	.4byte str_PNK_S_1_nok_0000210c
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコリン_nok_00001cf0
	.4byte str_T_1_nok_00002114
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x00000064
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_村長_nok_00001cd8
	.4byte 0x00020010
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_村長_nok_00001cd8
	.4byte 0xFFFFFF8F
	.4byte 0xFFFFFF54
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_村長_nok_00001cd8
	.4byte 0xFFFFFFA6
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコリン_nok_00001cf0
	.4byte str_S_1_nok_00002118
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte str_PKR_T_1_nok_00002124
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クリスチーヌ_nok_00001f94
	.4byte str_PKR_S_1_nok_00001fdc
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコタロウ_nok_00001754
	.4byte str_PNK_T_3_nok_0000212c
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコタロウ_nok_00001754
	.4byte str_PNK_Y_1_nok_00002134
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコリン_nok_00001cf0
	.4byte str_T_1_nok_00002114
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコリン_nok_00001cf0
	.4byte str_S_1_nok_00002118
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_evt_sub

# .data:0x385C | 0x69B4 | size: 0x250
.obj epilogue_evt, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG1_NOK1_nok_0000213c
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0000004B
	.4byte 0x00000000
	.4byte 0xFFFFFFBA
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x00008020
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x0000006E
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ノコリン_nok_00001cf0
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ノコタロウ父_nok_00001ce0
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_村長_nok_00001cd8
	.4byte 0xFFFFFF06
	.4byte 0x0000004B
	.4byte 0xFFFFFF42
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_村長_nok_00001cd8
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_村長_nok_00001cd8
	.4byte 0x00000020
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000085
	.4byte 0x00000205
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0xFFFFFFB3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ノコタロウ_nok_00001754
	.4byte 0x00008000
	.4byte 0x0001005C
	.4byte epilogue_evt_sub
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_38_nok_0000214c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_ZAKO_BATTLE1_nok_00002154
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_ノコノコH_nok_00001cb4
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_ノコノコH_nok_00001cb4
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x00000BB8
	.4byte 0x0003005B
	.4byte evt_snd_envoff_f
	.4byte 0x00000200
	.4byte 0x00000BB8
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte 0x00000384
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_08_nok_00002168
	.4byte zero_nok_00002008
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_evt

# .data:0x3AAC | 0x6C04 | size: 0x64
.obj evt_kusa_4, local
	.4byte 0x00020019
	.4byte 0xF70F2E81
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_kusa_4_nok_00002170
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_kusa_4_nok_00002170
	.4byte 0x000000AE
	.4byte 0xFFFFFE69
	.4byte 0x00000046
	.4byte 0xFFFFFF60
	.4byte 0x00000004
	.4byte 0xF9718884
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kusa_4

# .data:0x3B10 | 0x6C68 | size: 0x64
.obj evt_kusa_5, local
	.4byte 0x00020019
	.4byte 0xF70F2E81
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_kusa_5_nok_0000217c
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_kusa_5_nok_0000217c
	.4byte 0x000000AE
	.4byte 0xFFFFFE3C
	.4byte 0x00000046
	.4byte 0xFFFFFF60
	.4byte 0x00000004
	.4byte 0xF9718884
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kusa_5

# .data:0x3B74 | 0x6CCC | size: 0x64
.obj evt_kusa_6, local
	.4byte 0x00020019
	.4byte 0xF70F2E81
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_kusa_6_nok_00002188
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_kusa_6_nok_00002188
	.4byte 0x000000AE
	.4byte 0xFFFFFE96
	.4byte 0x00000046
	.4byte 0xFFFFFF60
	.4byte 0x00000004
	.4byte 0xF9718884
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kusa_6

# .data:0x3BD8 | 0x6D30 | size: 0x40
.obj kusa_data, local
	.4byte 0x00000000
	.4byte str_A_kamehapa_04_nok_00002194
	.4byte str_S_kamehapa_04_nok_000021a4
	.4byte evt_kusa_4
	.4byte 0x00000000
	.4byte str_A_kamehapa_05_nok_000021b4
	.4byte str_S_kamehapa_05_nok_000021c4
	.4byte evt_kusa_5
	.4byte 0x00000000
	.4byte str_A_kamehapa_06_nok_000021d4
	.4byte str_S_kamehapa_06_nok_000021e4
	.4byte evt_kusa_6
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj kusa_data

# .data:0x3C18 | 0x6D70 | size: 0x544
.obj nok_01_init_evt_20_data_6D70, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005C
	.4byte evt_switch_init
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_sekai_yami1_nok_00002040
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_minnnanokoe_nok_000020d0
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_sekai_yami1_nok_00002040
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG8_WITCH_nok_000021f4
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_minnnanokoe_nok_000020d0
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG8_VOICE1_nok_00002208
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG1_NOK1_nok_0000213c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_NOK2_nok_0000221c
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000017
	.4byte 0x0002001C
	.4byte 0xF5DE0180
	.4byte 0x00000038
	.4byte 0x0001005E
	.4byte odoriko_1_init
	.4byte 0x0001005E
	.4byte odoriko_2_init
	.4byte 0x0001005E
	.4byte odoriko_3_init
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_S_kawa_nok_0000222c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte son_data
	.4byte 0x0001005E
	.4byte evt_door_setup
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte taro_data
	.4byte 0x0001005E
	.4byte evt_door_setup
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte ie_data
	.4byte 0x0001005E
	.4byte evt_door_setup
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x0000001C
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_S_mon_nok_0000174c
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_mon_nok_00001724
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte kusa_data
	.4byte 0x0001005E
	.4byte evt_sub_kusa_access_entry
	.4byte 0x00020032
	.4byte 0xF9718884
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000002
	.4byte 0xF70F2E81
	.4byte 0x0002005B
	.4byte evt_sub_get_system_flag
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00001000
	.4byte 0x00020032
	.4byte 0xF9718884
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0008005B
	.4byte evt_mobj_kururing_floor
	.4byte str_kururin2_nok_00002234
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x0000008C
	.4byte str_S_guround_nok_00002240
	.4byte 0x0000007D
	.4byte 0xF8407162
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_00_nok_0000224c
	.4byte 0x0000010B
	.4byte 0xFFFFFF4C
	.4byte 0x00000046
	.4byte 0xFFFFFE57
	.4byte 0x00000010
	.4byte 0xF84061DC
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8407086
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_iri_08_nok_00001a38
	.4byte 0x000000AE
	.4byte 0xFFFFFEC3
	.4byte 0x00000080
	.4byte 0xFFFFFE8A
	.4byte 0x00000010
	.4byte 0xF84061DD
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_butterfly_nok_00002254
	.4byte 0xFE363C80
	.4byte 0xFFFFFE75
	.4byte 0x00000014
	.4byte 0x000000E1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_butterfly_nok_00002254
	.4byte 0xFE363C80
	.4byte 0xFFFFFF56
	.4byte 0x00000014
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_butterfly_nok_00002254
	.4byte 0xFE363C80
	.4byte 0x000000B4
	.4byte 0x00000014
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_butterfly_nok_00002254
	.4byte 0xFE363C80
	.4byte 0x00000190
	.4byte 0x00000014
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte hitDmgRetPoints
	.4byte 0x0001005E
	.4byte evt_gazigazi_entry
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_nokotarou_nok_00002260
	.4byte 0x0001005B
	.4byte evt_pouch_mario_recovery
	.4byte 0x0001005B
	.4byte evt_pouch_all_party_recovery
	.4byte 0x0001005E
	.4byte nokotarou_tabidachi_init
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_sekai_yami1_nok_00002040
	.4byte 0x0001005C
	.4byte sekai_yami_evt
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_minnnanokoe_nok_000020d0
	.4byte 0x0001005C
	.4byte minnnanokoe_evt
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000192
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte epilogue_npc_entry
	.4byte 0x0001005C
	.4byte epilogue_evt
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_sub_mail_event
	.4byte 0x0002005B
	.4byte evt_sub_get_system_flag
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00001000
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_門番ノコノコ_nok_0000172c
	.4byte 0x00000006
	.4byte e3_talk
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nok_01_init_evt_20_data_6D70

# .data:0x415C | 0x72B4 | size: 0x4
.obj gap_04_000072B4_data, global
.hidden gap_04_000072B4_data
	.4byte 0x00000000
.endobj gap_04_000072B4_data
