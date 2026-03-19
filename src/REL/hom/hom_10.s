.include "macros.inc"
.file "hom_10.o"

# 0x00000650..0x00000728 | size: 0xD8
.text
.balign 4

# .text:0x0 | 0x650 | size: 0x28
.fn resha_tev, local
/* 00000650 00000714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000654 00000718  7C 08 02 A6 */	mflr r0
/* 00000658 0000071C  7C 64 1B 78 */	mr r4, r3
/* 0000065C 00000720  38 60 00 07 */	li r3, 0x7
/* 00000660 00000724  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000664 00000728  4B FF F9 9D */	bl envAddTev
/* 00000668 0000072C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000066C 00000730  7C 08 03 A6 */	mtlr r0
/* 00000670 00000734  38 21 00 10 */	addi r1, r1, 0x10
/* 00000674 00000738  4E 80 00 20 */	blr
.endfn resha_tev

# .text:0x28 | 0x678 | size: 0xB0
.fn ramp_r, local
/* 00000678 0000073C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000067C 00000740  7C 08 02 A6 */	mflr r0
/* 00000680 00000744  90 01 00 34 */	stw r0, 0x34(r1)
/* 00000684 00000748  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 00000688 0000074C  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 0000068C 00000750  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 00000690 00000754  3C 80 FD 05 */	lis r4, 0xfd05
/* 00000694 00000758  7C 7F 1B 78 */	mr r31, r3
/* 00000698 0000075C  38 84 0F 80 */	addi r4, r4, 0xf80
/* 0000069C 00000760  4B FF F9 65 */	bl evtGetFloat
/* 000006A0 00000764  3C 60 00 00 */	lis r3, gp@ha
/* 000006A4 00000768  3C 00 43 30 */	lis r0, 0x4330
/* 000006A8 0000076C  38 83 00 00 */	addi r4, r3, gp@l
/* 000006AC 00000770  90 01 00 08 */	stw r0, 0x8(r1)
/* 000006B0 00000774  80 A4 00 00 */	lwz r5, 0x0(r4)
/* 000006B4 00000778  3C 60 00 00 */	lis r3, double_to_int_mask_hom_00001060@ha
/* 000006B8 0000077C  38 83 00 00 */	addi r4, r3, double_to_int_mask_hom_00001060@l
/* 000006BC 00000780  FF E0 0A 10 */	fabs f31, f1
/* 000006C0 00000784  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 000006C4 00000788  3C 60 00 00 */	lis r3, float_15_hom_00001054@ha
/* 000006C8 0000078C  C8 44 00 00 */	lfd f2, 0x0(r4)
/* 000006CC 00000790  90 01 00 0C */	stw r0, 0xc(r1)
/* 000006D0 00000794  C0 03 00 00 */	lfs f0, float_15_hom_00001054@l(r3)
/* 000006D4 00000798  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 000006D8 0000079C  EC 21 10 28 */	fsubs f1, f1, f2
/* 000006DC 000007A0  EC 21 00 24 */	fdivs f1, f1, f0
/* 000006E0 000007A4  4B FF F9 21 */	bl sin
/* 000006E4 000007A8  3C 60 00 00 */	lis r3, float_1p8_hom_00001058@ha
/* 000006E8 000007AC  3C 80 FE 36 */	lis r4, 0xfe36
/* 000006EC 000007B0  C0 03 00 00 */	lfs f0, float_1p8_hom_00001058@l(r3)
/* 000006F0 000007B4  FC 20 08 18 */	frsp f1, f1
/* 000006F4 000007B8  7F E3 FB 78 */	mr r3, r31
/* 000006F8 000007BC  38 84 3C 8A */	addi r4, r4, 0x3c8a
/* 000006FC 000007C0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 00000700 000007C4  EC 20 00 72 */	fmuls f1, f0, f1
/* 00000704 000007C8  4B FF F8 FD */	bl evtSetFloat
/* 00000708 000007CC  38 60 00 02 */	li r3, 0x2
/* 0000070C 000007D0  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 00000710 000007D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00000714 000007D8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 00000718 000007DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 0000071C 000007E0  7C 08 03 A6 */	mtlr r0
/* 00000720 000007E4  38 21 00 30 */	addi r1, r1, 0x30
/* 00000724 000007E8  4E 80 00 20 */	blr
.endfn ramp_r

# 0x00000430..0x00000870 | size: 0x440
.rodata
.balign 8

# .rodata:0x0 | 0x430 | size: 0x8
.obj str_sha_1_1_hom_00000c28, local
	.string "sha_1_1"
.endobj str_sha_1_1_hom_00000c28

# .rodata:0x8 | 0x438 | size: 0x8
.obj str_sha_1_2_hom_00000c30, local
	.string "sha_1_2"
.endobj str_sha_1_2_hom_00000c30

# .rodata:0x10 | 0x440 | size: 0x8
.obj str_sha_1_3_hom_00000c38, local
	.string "sha_1_3"
.endobj str_sha_1_3_hom_00000c38

# .rodata:0x18 | 0x448 | size: 0x8
.obj str_sha_1_4_hom_00000c40, local
	.string "sha_1_4"
.endobj str_sha_1_4_hom_00000c40

# .rodata:0x20 | 0x450 | size: 0x8
.obj str_sha_1_5_hom_00000c48, local
	.string "sha_1_5"
.endobj str_sha_1_5_hom_00000c48

# .rodata:0x28 | 0x458 | size: 0x8
.obj str_sha_2_1_hom_00000c50, local
	.string "sha_2_1"
.endobj str_sha_2_1_hom_00000c50

# .rodata:0x30 | 0x460 | size: 0x8
.obj str_sha_2_2_hom_00000c58, local
	.string "sha_2_2"
.endobj str_sha_2_2_hom_00000c58

# .rodata:0x38 | 0x468 | size: 0x8
.obj str_sha_2_3_hom_00000c60, local
	.string "sha_2_3"
.endobj str_sha_2_3_hom_00000c60

# .rodata:0x40 | 0x470 | size: 0x8
.obj str_sha_3_1_hom_00000c68, local
	.string "sha_3_1"
.endobj str_sha_3_1_hom_00000c68

# .rodata:0x48 | 0x478 | size: 0x8
.obj str_sha_3_2_hom_00000c70, local
	.string "sha_3_2"
.endobj str_sha_3_2_hom_00000c70

# .rodata:0x50 | 0x480 | size: 0x8
.obj str_sha_3_3_hom_00000c78, local
	.string "sha_3_3"
.endobj str_sha_3_3_hom_00000c78

# .rodata:0x58 | 0x488 | size: 0x8
.obj str_sha_4_1_hom_00000c80, local
	.string "sha_4_1"
.endobj str_sha_4_1_hom_00000c80

# .rodata:0x60 | 0x490 | size: 0x8
.obj str_sha_4_2_hom_00000c88, local
	.string "sha_4_2"
.endobj str_sha_4_2_hom_00000c88

# .rodata:0x68 | 0x498 | size: 0x8
.obj str_sha_4_3_hom_00000c90, local
	.string "sha_4_3"
.endobj str_sha_4_3_hom_00000c90

# .rodata:0x70 | 0x4A0 | size: 0x8
.obj str_sha_5_1_hom_00000c98, local
	.string "sha_5_1"
.endobj str_sha_5_1_hom_00000c98

# .rodata:0x78 | 0x4A8 | size: 0x8
.obj str_sha_5_2_hom_00000ca0, local
	.string "sha_5_2"
.endobj str_sha_5_2_hom_00000ca0

# .rodata:0x80 | 0x4B0 | size: 0x8
.obj str_sha_5_3_hom_00000ca8, local
	.string "sha_5_3"
.endobj str_sha_5_3_hom_00000ca8

# .rodata:0x88 | 0x4B8 | size: 0x8
.obj str_sha_6_1_hom_00000cb0, local
	.string "sha_6_1"
.endobj str_sha_6_1_hom_00000cb0

# .rodata:0x90 | 0x4C0 | size: 0x8
.obj str_sha_6_2_hom_00000cb8, local
	.string "sha_6_2"
.endobj str_sha_6_2_hom_00000cb8

# .rodata:0x98 | 0x4C8 | size: 0x8
.obj str_sha_6_3_hom_00000cc0, local
	.string "sha_6_3"
.endobj str_sha_6_3_hom_00000cc0

# .rodata:0xA0 | 0x4D0 | size: 0xA
.obj str_sha_1_1_c_hom_00000cc8, local
	.string "sha_1_1_c"
.endobj str_sha_1_1_c_hom_00000cc8

# .rodata:0xAA | 0x4DA | size: 0x2
.obj gap_03_000004DA_rodata, global
.hidden gap_03_000004DA_rodata
	.2byte 0x0000
.endobj gap_03_000004DA_rodata

# .rodata:0xAC | 0x4DC | size: 0xA
.obj str_sha_1_2_c_hom_00000cd4, local
	.string "sha_1_2_c"
.endobj str_sha_1_2_c_hom_00000cd4

# .rodata:0xB6 | 0x4E6 | size: 0x2
.obj gap_03_000004E6_rodata, global
.hidden gap_03_000004E6_rodata
	.2byte 0x0000
.endobj gap_03_000004E6_rodata

# .rodata:0xB8 | 0x4E8 | size: 0xA
.obj str_sha_1_3_c_hom_00000ce0, local
	.string "sha_1_3_c"
.endobj str_sha_1_3_c_hom_00000ce0

# .rodata:0xC2 | 0x4F2 | size: 0x2
.obj gap_03_000004F2_rodata, global
.hidden gap_03_000004F2_rodata
	.2byte 0x0000
.endobj gap_03_000004F2_rodata

# .rodata:0xC4 | 0x4F4 | size: 0xA
.obj str_sha_1_4_c_hom_00000cec, local
	.string "sha_1_4_c"
.endobj str_sha_1_4_c_hom_00000cec

# .rodata:0xCE | 0x4FE | size: 0x2
.obj gap_03_000004FE_rodata, global
.hidden gap_03_000004FE_rodata
	.2byte 0x0000
.endobj gap_03_000004FE_rodata

# .rodata:0xD0 | 0x500 | size: 0xA
.obj str_sha_1_5_c_hom_00000cf8, local
	.string "sha_1_5_c"
.endobj str_sha_1_5_c_hom_00000cf8

# .rodata:0xDA | 0x50A | size: 0x2
.obj gap_03_0000050A_rodata, global
.hidden gap_03_0000050A_rodata
	.2byte 0x0000
.endobj gap_03_0000050A_rodata

# .rodata:0xDC | 0x50C | size: 0xA
.obj str_sha_6_1_c_hom_00000d04, local
	.string "sha_6_1_c"
.endobj str_sha_6_1_c_hom_00000d04

# .rodata:0xE6 | 0x516 | size: 0x2
.obj gap_03_00000516_rodata, global
.hidden gap_03_00000516_rodata
	.2byte 0x0000
.endobj gap_03_00000516_rodata

# .rodata:0xE8 | 0x518 | size: 0xA
.obj str_sha_6_2_c_hom_00000d10, local
	.string "sha_6_2_c"
.endobj str_sha_6_2_c_hom_00000d10

# .rodata:0xF2 | 0x522 | size: 0x2
.obj gap_03_00000522_rodata, global
.hidden gap_03_00000522_rodata
	.2byte 0x0000
.endobj gap_03_00000522_rodata

# .rodata:0xF4 | 0x524 | size: 0xA
.obj str_sha_6_3_c_hom_00000d1c, local
	.string "sha_6_3_c"
.endobj str_sha_6_3_c_hom_00000d1c

# .rodata:0xFE | 0x52E | size: 0x2
.obj gap_03_0000052E_rodata, global
.hidden gap_03_0000052E_rodata
	.2byte 0x0000
.endobj gap_03_0000052E_rodata

# .rodata:0x100 | 0x530 | size: 0x6
.obj str_bou_1_hom_00000d28, local
	.string "bou_1"
.endobj str_bou_1_hom_00000d28

# .rodata:0x106 | 0x536 | size: 0x2
.obj gap_03_00000536_rodata, global
.hidden gap_03_00000536_rodata
	.2byte 0x0000
.endobj gap_03_00000536_rodata

# .rodata:0x108 | 0x538 | size: 0x6
.obj str_bou_2_hom_00000d30, local
	.string "bou_2"
.endobj str_bou_2_hom_00000d30

# .rodata:0x10E | 0x53E | size: 0x2
.obj gap_03_0000053E_rodata, global
.hidden gap_03_0000053E_rodata
	.2byte 0x0000
.endobj gap_03_0000053E_rodata

# .rodata:0x110 | 0x540 | size: 0x6
.obj str_bou_3_hom_00000d38, local
	.string "bou_3"
.endobj str_bou_3_hom_00000d38

# .rodata:0x116 | 0x546 | size: 0x2
.obj gap_03_00000546_rodata, global
.hidden gap_03_00000546_rodata
	.2byte 0x0000
.endobj gap_03_00000546_rodata

# .rodata:0x118 | 0x548 | size: 0x6
.obj str_bou_4_hom_00000d40, local
	.string "bou_4"
.endobj str_bou_4_hom_00000d40

# .rodata:0x11E | 0x54E | size: 0x2
.obj gap_03_0000054E_rodata, global
.hidden gap_03_0000054E_rodata
	.2byte 0x0000
.endobj gap_03_0000054E_rodata

# .rodata:0x120 | 0x550 | size: 0x8
.obj str_bou_1_c_hom_00000d48, local
	.string "bou_1_c"
.endobj str_bou_1_c_hom_00000d48

# .rodata:0x128 | 0x558 | size: 0x8
.obj str_bou_2_c_hom_00000d50, local
	.string "bou_2_c"
.endobj str_bou_2_c_hom_00000d50

# .rodata:0x130 | 0x560 | size: 0x8
.obj str_bou_3_c_hom_00000d58, local
	.string "bou_3_c"
.endobj str_bou_3_c_hom_00000d58

# .rodata:0x138 | 0x568 | size: 0x8
.obj str_bou_4_c_hom_00000d60, local
	.string "bou_4_c"
.endobj str_bou_4_c_hom_00000d60

# .rodata:0x140 | 0x570 | size: 0x6
.obj str_jimen_hom_00000d68, local
	.string "jimen"
.endobj str_jimen_hom_00000d68

# .rodata:0x146 | 0x576 | size: 0x2
.obj gap_03_00000576_rodata, global
.hidden gap_03_00000576_rodata
	.2byte 0x0000
.endobj gap_03_00000576_rodata

# .rodata:0x148 | 0x578 | size: 0x5
.obj str_yama_hom_00000d70, local
	.string "yama"
.endobj str_yama_hom_00000d70

# .rodata:0x14D | 0x57D | size: 0x3
.obj gap_03_0000057D_rodata, global
.hidden gap_03_0000057D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000057D_rodata

# .rodata:0x150 | 0x580 | size: 0x8
.obj str_iwayama_hom_00000d78, local
	.string "iwayama"
.endobj str_iwayama_hom_00000d78

# .rodata:0x158 | 0x588 | size: 0xB
.obj str_hosi_right_hom_00000d80, local
	.string "hosi_right"
.endobj str_hosi_right_hom_00000d80

# .rodata:0x163 | 0x593 | size: 0x1
.obj gap_03_00000593_rodata, global
.hidden gap_03_00000593_rodata
	.byte 0x00
.endobj gap_03_00000593_rodata

# .rodata:0x164 | 0x594 | size: 0xA
.obj str_hosi_left_hom_00000d8c, local
	.string "hosi_left"
.endobj str_hosi_left_hom_00000d8c

# .rodata:0x16E | 0x59E | size: 0x2
.obj gap_03_0000059E_rodata, global
.hidden gap_03_0000059E_rodata
	.2byte 0x0000
.endobj gap_03_0000059E_rodata

# .rodata:0x170 | 0x5A0 | size: 0xC
.obj str_hosi_center_hom_00000d98, local
	.string "hosi_center"
.endobj str_hosi_center_hom_00000d98

# .rodata:0x17C | 0x5AC | size: 0xD
.obj str_hosi_right_c_hom_00000da4, local
	.string "hosi_right_c"
.endobj str_hosi_right_c_hom_00000da4

# .rodata:0x189 | 0x5B9 | size: 0x3
.obj gap_03_000005B9_rodata, global
.hidden gap_03_000005B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005B9_rodata

# .rodata:0x18C | 0x5BC | size: 0xC
.obj str_hosi_left_c_hom_00000db4, local
	.string "hosi_left_c"
.endobj str_hosi_left_c_hom_00000db4

# .rodata:0x198 | 0x5C8 | size: 0xE
.obj str_hosi_center_c_hom_00000dc0, local
	.string "hosi_center_c"
.endobj str_hosi_center_c_hom_00000dc0

# .rodata:0x1A6 | 0x5D6 | size: 0x2
.obj gap_03_000005D6_rodata, global
.hidden gap_03_000005D6_rodata
	.2byte 0x0000
.endobj gap_03_000005D6_rodata

# .rodata:0x1A8 | 0x5D8 | size: 0x6
.obj str_ranpu_hom_00000dd0, local
	.string "ranpu"
.endobj str_ranpu_hom_00000dd0

# .rodata:0x1AE | 0x5DE | size: 0x2
.obj gap_03_000005DE_rodata, global
.hidden gap_03_000005DE_rodata
	.2byte 0x0000
.endobj gap_03_000005DE_rodata

# .rodata:0x1B0 | 0x5E0 | size: 0x15
.obj str_SFX_STG6_TRAIN_BELL1_hom_00000dd8, local
	.string "SFX_STG6_TRAIN_BELL1"
.endobj str_SFX_STG6_TRAIN_BELL1_hom_00000dd8

# .rodata:0x1C5 | 0x5F5 | size: 0x3
.obj gap_03_000005F5_rodata, global
.hidden gap_03_000005F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005F5_rodata

# .rodata:0x1C8 | 0x5F8 | size: 0x7
.obj str_gor_04_hom_00000df0, local
	.string "gor_04"
.endobj str_gor_04_hom_00000df0

# .rodata:0x1CF | 0x5FF | size: 0x1
.obj gap_03_000005FF_rodata, global
.hidden gap_03_000005FF_rodata
	.byte 0x00
.endobj gap_03_000005FF_rodata

# .rodata:0x1D0 | 0x600 | size: 0x15
.obj str_SFX_STG6_TRAIN_MOVE1_hom_00000df8, local
	.string "SFX_STG6_TRAIN_MOVE1"
.endobj str_SFX_STG6_TRAIN_MOVE1_hom_00000df8

# .rodata:0x1E5 | 0x615 | size: 0x3
.obj gap_03_00000615_rodata, global
.hidden gap_03_00000615_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000615_rodata

# .rodata:0x1E8 | 0x618 | size: 0x7
.obj str_hom_00_hom_00000e10, local
	.string "hom_00"
.endobj str_hom_00_hom_00000e10

# .rodata:0x1EF | 0x61F | size: 0x1
.obj gap_03_0000061F_rodata, global
.hidden gap_03_0000061F_rodata
	.byte 0x00
.endobj gap_03_0000061F_rodata

# .rodata:0x1F0 | 0x620 | size: 0x17
.obj str_SFX_STG6_TRAIN_MOVE1_hom_00000e18, local
	.string "SFX_STG6_TRAIN_MOVE1_2"
.endobj str_SFX_STG6_TRAIN_MOVE1_hom_00000e18

# .rodata:0x207 | 0x637 | size: 0x1
.obj gap_03_00000637_rodata, global
.hidden gap_03_00000637_rodata
	.byte 0x00
.endobj gap_03_00000637_rodata

# .rodata:0x208 | 0x638 | size: 0x19
.obj str_SFX_STG6_TRAIN_MOVE1_hom_00000e30, local
	.string "SFX_STG6_TRAIN_MOVE1_2_2"
.endobj str_SFX_STG6_TRAIN_MOVE1_hom_00000e30

# .rodata:0x221 | 0x651 | size: 0x3
.obj gap_03_00000651_rodata, global
.hidden gap_03_00000651_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000651_rodata

# .rodata:0x224 | 0x654 | size: 0x7
.obj str_pik_00_hom_00000e4c, local
	.string "pik_00"
.endobj str_pik_00_hom_00000e4c

# .rodata:0x22B | 0x65B | size: 0x1
.obj gap_03_0000065B_rodata, global
.hidden gap_03_0000065B_rodata
	.byte 0x00
.endobj gap_03_0000065B_rodata

# .rodata:0x22C | 0x65C | size: 0x17
.obj str_SFX_STG6_TRAIN_MOVE1_hom_00000e54, local
	.string "SFX_STG6_TRAIN_MOVE1_3"
.endobj str_SFX_STG6_TRAIN_MOVE1_hom_00000e54

# .rodata:0x243 | 0x673 | size: 0x1
.obj gap_03_00000673_rodata, global
.hidden gap_03_00000673_rodata
	.byte 0x00
.endobj gap_03_00000673_rodata

# .rodata:0x244 | 0x674 | size: 0x6
.obj str_train_hom_00000e6c, local
	.string "train"
.endobj str_train_hom_00000e6c

# .rodata:0x24A | 0x67A | size: 0x2
.obj gap_03_0000067A_rodata, global
.hidden gap_03_0000067A_rodata
	.2byte 0x0000
.endobj gap_03_0000067A_rodata

# .rodata:0x24C | 0x67C | size: 0x19
.obj str_SFX_STG6_TRAIN_MOVE1_hom_00000e74, local
	.string "SFX_STG6_TRAIN_MOVE1_2_3"
.endobj str_SFX_STG6_TRAIN_MOVE1_hom_00000e74

# .rodata:0x265 | 0x695 | size: 0x3
.obj gap_03_00000695_rodata, global
.hidden gap_03_00000695_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000695_rodata

# .rodata:0x268 | 0x698 | size: 0x15
.obj str_SFX_STG6_TRAIN_MOVE2_hom_00000e90, local
	.string "SFX_STG6_TRAIN_MOVE2"
.endobj str_SFX_STG6_TRAIN_MOVE2_hom_00000e90

# .rodata:0x27D | 0x6AD | size: 0x3
.obj gap_03_000006AD_rodata, global
.hidden gap_03_000006AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000006AD_rodata

# .rodata:0x280 | 0x6B0 | size: 0x17
.obj str_SFX_STG6_TRAIN_MOVE2_hom_00000ea8, local
	.string "SFX_STG6_TRAIN_MOVE2_2"
.endobj str_SFX_STG6_TRAIN_MOVE2_hom_00000ea8

# .rodata:0x297 | 0x6C7 | size: 0x1
.obj gap_03_000006C7_rodata, global
.hidden gap_03_000006C7_rodata
	.byte 0x00
.endobj gap_03_000006C7_rodata

# .rodata:0x298 | 0x6C8 | size: 0x17
.obj str_SFX_STG6_TRAIN_MOVE2_hom_00000ec0, local
	.string "SFX_STG6_TRAIN_MOVE2_3"
.endobj str_SFX_STG6_TRAIN_MOVE2_hom_00000ec0

# .rodata:0x2AF | 0x6DF | size: 0x1
.obj gap_03_000006DF_rodata, global
.hidden gap_03_000006DF_rodata
	.byte 0x00
.endobj gap_03_000006DF_rodata

# .rodata:0x2B0 | 0x6E0 | size: 0x19
.obj str_SFX_STG6_TRAIN_MOVE2_hom_00000ed8, local
	.string "SFX_STG6_TRAIN_MOVE2_2_2"
.endobj str_SFX_STG6_TRAIN_MOVE2_hom_00000ed8

# .rodata:0x2C9 | 0x6F9 | size: 0x3
.obj gap_03_000006F9_rodata, global
.hidden gap_03_000006F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000006F9_rodata

# .rodata:0x2CC | 0x6FC | size: 0x8
.obj str_ranpu_c_hom_00000ef4, local
	.string "ranpu_c"
.endobj str_ranpu_c_hom_00000ef4

# .rodata:0x2D4 | 0x704 | size: 0x9
.obj str_pika_1_1_hom_00000efc, local
	.string "pika_1_1"
.endobj str_pika_1_1_hom_00000efc

# .rodata:0x2DD | 0x70D | size: 0x3
.obj gap_03_0000070D_rodata, global
.hidden gap_03_0000070D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000070D_rodata

# .rodata:0x2E0 | 0x710 | size: 0x9
.obj str_pika_1_2_hom_00000f08, local
	.string "pika_1_2"
.endobj str_pika_1_2_hom_00000f08

# .rodata:0x2E9 | 0x719 | size: 0x3
.obj gap_03_00000719_rodata, global
.hidden gap_03_00000719_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000719_rodata

# .rodata:0x2EC | 0x71C | size: 0x9
.obj str_pika_1_3_hom_00000f14, local
	.string "pika_1_3"
.endobj str_pika_1_3_hom_00000f14

# .rodata:0x2F5 | 0x725 | size: 0x3
.obj gap_03_00000725_rodata, global
.hidden gap_03_00000725_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000725_rodata

# .rodata:0x2F8 | 0x728 | size: 0x9
.obj str_pika_1_4_hom_00000f20, local
	.string "pika_1_4"
.endobj str_pika_1_4_hom_00000f20

# .rodata:0x301 | 0x731 | size: 0x3
.obj gap_03_00000731_rodata, global
.hidden gap_03_00000731_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000731_rodata

# .rodata:0x304 | 0x734 | size: 0x7
.obj str_pika_2_hom_00000f2c, local
	.string "pika_2"
.endobj str_pika_2_hom_00000f2c

# .rodata:0x30B | 0x73B | size: 0x1
.obj gap_03_0000073B_rodata, global
.hidden gap_03_0000073B_rodata
	.byte 0x00
.endobj gap_03_0000073B_rodata

# .rodata:0x30C | 0x73C | size: 0x7
.obj str_pika_3_hom_00000f34, local
	.string "pika_3"
.endobj str_pika_3_hom_00000f34

# .rodata:0x313 | 0x743 | size: 0x1
.obj gap_03_00000743_rodata, global
.hidden gap_03_00000743_rodata
	.byte 0x00
.endobj gap_03_00000743_rodata

# .rodata:0x314 | 0x744 | size: 0x7
.obj str_pika_4_hom_00000f3c, local
	.string "pika_4"
.endobj str_pika_4_hom_00000f3c

# .rodata:0x31B | 0x74B | size: 0x1
.obj gap_03_0000074B_rodata, global
.hidden gap_03_0000074B_rodata
	.byte 0x00
.endobj gap_03_0000074B_rodata

# .rodata:0x31C | 0x74C | size: 0x7
.obj str_pika_5_hom_00000f44, local
	.string "pika_5"
.endobj str_pika_5_hom_00000f44

# .rodata:0x323 | 0x753 | size: 0x1
.obj gap_03_00000753_rodata, global
.hidden gap_03_00000753_rodata
	.byte 0x00
.endobj gap_03_00000753_rodata

# .rodata:0x324 | 0x754 | size: 0x7
.obj str_pika_6_hom_00000f4c, local
	.string "pika_6"
.endobj str_pika_6_hom_00000f4c

# .rodata:0x32B | 0x75B | size: 0x1
.obj gap_03_0000075B_rodata, global
.hidden gap_03_0000075B_rodata
	.byte 0x00
.endobj gap_03_0000075B_rodata

# .rodata:0x32C | 0x75C | size: 0xB
.obj str_pika_1_1_c_hom_00000f54, local
	.string "pika_1_1_c"
.endobj str_pika_1_1_c_hom_00000f54

# .rodata:0x337 | 0x767 | size: 0x1
.obj gap_03_00000767_rodata, global
.hidden gap_03_00000767_rodata
	.byte 0x00
.endobj gap_03_00000767_rodata

# .rodata:0x338 | 0x768 | size: 0xB
.obj str_pika_1_2_c_hom_00000f60, local
	.string "pika_1_2_c"
.endobj str_pika_1_2_c_hom_00000f60

# .rodata:0x343 | 0x773 | size: 0x1
.obj gap_03_00000773_rodata, global
.hidden gap_03_00000773_rodata
	.byte 0x00
.endobj gap_03_00000773_rodata

# .rodata:0x344 | 0x774 | size: 0xB
.obj str_pika_1_3_c_hom_00000f6c, local
	.string "pika_1_3_c"
.endobj str_pika_1_3_c_hom_00000f6c

# .rodata:0x34F | 0x77F | size: 0x1
.obj gap_03_0000077F_rodata, global
.hidden gap_03_0000077F_rodata
	.byte 0x00
.endobj gap_03_0000077F_rodata

# .rodata:0x350 | 0x780 | size: 0xB
.obj str_pika_1_4_c_hom_00000f78, local
	.string "pika_1_4_c"
.endobj str_pika_1_4_c_hom_00000f78

# .rodata:0x35B | 0x78B | size: 0x1
.obj gap_03_0000078B_rodata, global
.hidden gap_03_0000078B_rodata
	.byte 0x00
.endobj gap_03_0000078B_rodata

# .rodata:0x35C | 0x78C | size: 0x9
.obj str_pika_6_c_hom_00000f84, local
	.string "pika_6_c"
.endobj str_pika_6_c_hom_00000f84

# .rodata:0x365 | 0x795 | size: 0x3
.obj gap_03_00000795_rodata, global
.hidden gap_03_00000795_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000795_rodata

# .rodata:0x368 | 0x798 | size: 0x7
.obj str_hom_10_hom_00000f90, local
	.string "hom_10"
.endobj str_hom_10_hom_00000f90

# .rodata:0x36F | 0x79F | size: 0x1
.obj gap_03_0000079F_rodata, global
.hidden gap_03_0000079F_rodata
	.byte 0x00
.endobj gap_03_0000079F_rodata

# .rodata:0x370 | 0x7A0 | size: 0x7
.obj str_hom_11_hom_00000f98, local
	.string "hom_11"
.endobj str_hom_11_hom_00000f98

# .rodata:0x377 | 0x7A7 | size: 0x1
.obj gap_03_000007A7_rodata, global
.hidden gap_03_000007A7_rodata
	.byte 0x00
.endobj gap_03_000007A7_rodata

# .rodata:0x378 | 0x7A8 | size: 0x7
.obj str_hom_12_hom_00000fa0, local
	.string "hom_12"
.endobj str_hom_12_hom_00000fa0

# .rodata:0x37F | 0x7AF | size: 0x1
.obj gap_03_000007AF_rodata, global
.hidden gap_03_000007AF_rodata
	.byte 0x00
.endobj gap_03_000007AF_rodata

# .rodata:0x380 | 0x7B0 | size: 0x9
.obj str_rsh_06_a_hom_00000fa8, local
	.string "rsh_06_a"
.endobj str_rsh_06_a_hom_00000fa8

# .rodata:0x389 | 0x7B9 | size: 0x3
.obj gap_03_000007B9_rodata, global
.hidden gap_03_000007B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000007B9_rodata

# .rodata:0x38C | 0x7BC | size: 0x8
.obj str_train_7_hom_00000fb4, local
	.string "train_7"
.endobj str_train_7_hom_00000fb4

# .rodata:0x394 | 0x7C4 | size: 0x8
.obj str_train_8_hom_00000fbc, local
	.string "train_8"
.endobj str_train_8_hom_00000fbc

# .rodata:0x39C | 0x7CC | size: 0xA
.obj str_renketu_6_hom_00000fc4, local
	.string "renketu_6"
.endobj str_renketu_6_hom_00000fc4

# .rodata:0x3A6 | 0x7D6 | size: 0x2
.obj gap_03_000007D6_rodata, global
.hidden gap_03_000007D6_rodata
	.2byte 0x0000
.endobj gap_03_000007D6_rodata

# .rodata:0x3A8 | 0x7D8 | size: 0xA
.obj str_renketu_7_hom_00000fd0, local
	.string "renketu_7"
.endobj str_renketu_7_hom_00000fd0

# .rodata:0x3B2 | 0x7E2 | size: 0x2
.obj gap_03_000007E2_rodata, global
.hidden gap_03_000007E2_rodata
	.2byte 0x0000
.endobj gap_03_000007E2_rodata

# .rodata:0x3B4 | 0x7E4 | size: 0x8
.obj str_train_1_hom_00000fdc, local
	.string "train_1"
.endobj str_train_1_hom_00000fdc

# .rodata:0x3BC | 0x7EC | size: 0x8
.obj str_train_6_hom_00000fe4, local
	.string "train_6"
.endobj str_train_6_hom_00000fe4

# .rodata:0x3C4 | 0x7F4 | size: 0xA
.obj str_renketu_1_hom_00000fec, local
	.string "renketu_1"
.endobj str_renketu_1_hom_00000fec

# .rodata:0x3CE | 0x7FE | size: 0x2
.obj gap_03_000007FE_rodata, global
.hidden gap_03_000007FE_rodata
	.2byte 0x0000
.endobj gap_03_000007FE_rodata

# .rodata:0x3D0 | 0x800 | size: 0xA
.obj str_renketu_5_hom_00000ff8, local
	.string "renketu_5"
.endobj str_renketu_5_hom_00000ff8

# .rodata:0x3DA | 0x80A | size: 0x2
.obj gap_03_0000080A_rodata, global
.hidden gap_03_0000080A_rodata
	.2byte 0x0000
.endobj gap_03_0000080A_rodata

# .rodata:0x3DC | 0x80C | size: 0xE
.obj str_ENV_STG6_RSH2_hom_00001004, local
	.string "ENV_STG6_RSH2"
.endobj str_ENV_STG6_RSH2_hom_00001004

# .rodata:0x3EA | 0x81A | size: 0x2
.obj gap_03_0000081A_rodata, global
.hidden gap_03_0000081A_rodata
	.2byte 0x0000
.endobj gap_03_0000081A_rodata

# .rodata:0x3EC | 0x81C | size: 0x8
.obj str_renketu_hom_00001014, local
	.string "renketu"
.endobj str_renketu_hom_00001014

# .rodata:0x3F4 | 0x824 | size: 0xA
.obj str_renketu_2_hom_0000101c, local
	.string "renketu_2"
.endobj str_renketu_2_hom_0000101c

# .rodata:0x3FE | 0x82E | size: 0x2
.obj gap_03_0000082E_rodata, global
.hidden gap_03_0000082E_rodata
	.2byte 0x0000
.endobj gap_03_0000082E_rodata

# .rodata:0x400 | 0x830 | size: 0xA
.obj str_renketu_3_hom_00001028, local
	.string "renketu_3"
.endobj str_renketu_3_hom_00001028

# .rodata:0x40A | 0x83A | size: 0x2
.obj gap_03_0000083A_rodata, global
.hidden gap_03_0000083A_rodata
	.2byte 0x0000
.endobj gap_03_0000083A_rodata

# .rodata:0x40C | 0x83C | size: 0xA
.obj str_renketu_4_hom_00001034, local
	.string "renketu_4"
.endobj str_renketu_4_hom_00001034

# .rodata:0x416 | 0x846 | size: 0x2
.obj gap_03_00000846_rodata, global
.hidden gap_03_00000846_rodata
	.2byte 0x0000
.endobj gap_03_00000846_rodata

# .rodata:0x418 | 0x848 | size: 0x9
.obj str_rsh_02_a_hom_00001040, local
	.string "rsh_02_a"
.endobj str_rsh_02_a_hom_00001040

# .rodata:0x421 | 0x851 | size: 0x3
.obj gap_03_00000851_rodata, global
.hidden gap_03_00000851_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000851_rodata

# .rodata:0x424 | 0x854 | size: 0x7
.obj str_nidome_hom_0000104c, local
	.string "nidome"
.endobj str_nidome_hom_0000104c
	.byte 0x00

# .rodata:0x42C | 0x85C | size: 0x4
.obj float_15_hom_00001054, local
	.float 15
.endobj float_15_hom_00001054

# .rodata:0x430 | 0x860 | size: 0x4
.obj float_1p8_hom_00001058, local
	.float 1.8
.endobj float_1p8_hom_00001058
	.4byte 0x00000000

# .rodata:0x438 | 0x868 | size: 0x8
.obj double_to_int_mask_hom_00001060, local
	.double 4503599627370496
.endobj double_to_int_mask_hom_00001060

# 0x00002160..0x00003BB8 | size: 0x1A58
.data
.balign 8

# .data:0x0 | 0x2160 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2168 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x216C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2170 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2174 | size: 0x4
.obj gap_04_00002174_data, global
.hidden gap_04_00002174_data
	.4byte 0x00000000
.endobj gap_04_00002174_data

# .data:0x18 | 0x2178 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2180 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2184 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2188 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2190 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2194 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2198 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x219C | size: 0x4
.obj gap_04_0000219C_data, global
.hidden gap_04_0000219C_data
	.4byte 0x00000000
.endobj gap_04_0000219C_data

# .data:0x40 | 0x21A0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x21A8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x21AC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x21B0 | size: 0x1D0
.obj sharinDt, local
	.4byte str_sha_1_1_hom_00000c28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_1_2_hom_00000c30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_1_3_hom_00000c38
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_1_4_hom_00000c40
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte str_sha_1_5_hom_00000c48
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte str_sha_2_1_hom_00000c50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_2_2_hom_00000c58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_2_3_hom_00000c60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_3_1_hom_00000c68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_3_2_hom_00000c70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_3_3_hom_00000c78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_4_1_hom_00000c80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_4_2_hom_00000c88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_4_3_hom_00000c90
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_5_1_hom_00000c98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_5_2_hom_00000ca0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_5_3_hom_00000ca8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_6_1_hom_00000cb0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_6_2_hom_00000cb8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_6_3_hom_00000cc0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_1_1_c_hom_00000cc8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7680
	.4byte str_sha_1_2_c_hom_00000cd4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7680
	.4byte str_sha_1_3_c_hom_00000ce0
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xF24A7680
	.4byte str_sha_1_4_c_hom_00000cec
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24A7680
	.4byte str_sha_1_5_c_hom_00000cf8
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24A7680
	.4byte str_sha_6_1_c_hom_00000d04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_6_2_c_hom_00000d10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_6_3_c_hom_00000d1c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj sharinDt

# .data:0x220 | 0x2380 | size: 0x15C
.obj evt_sharin_main, local
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00010022
	.4byte 0xFE363C81
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24ADA0F
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24AF70F
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24B5694
	.4byte 0x00000031
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C82
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xFD050F80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xFD050F81
	.4byte 0x00000031
	.4byte 0x0002003D
	.4byte 0xFE363C89
	.4byte 0xFE363C8B
	.4byte 0x0002003C
	.4byte 0xFE363C89
	.4byte 0xF24B5FAE
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xFE363C89
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C8C
	.4byte 0xFE363C8A
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sharin_main

# .data:0x37C | 0x24DC | size: 0x4C
.obj evt_sharin, local
	.4byte 0x0001003E
	.4byte sharinDt
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00040042
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_sharin_main
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sharin

# .data:0x3C8 | 0x2528 | size: 0xB4
.obj clankDt, local
	.4byte str_bou_1_hom_00000d28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0xF24A7E80
	.4byte str_bou_2_hom_00000d30
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24ABC80
	.4byte 0xF24A7E80
	.4byte str_bou_3_hom_00000d38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0xF24A7E80
	.4byte str_bou_4_hom_00000d40
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24ABC80
	.4byte 0xF24A7E80
	.4byte str_bou_1_c_hom_00000d48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0xF24A7680
	.4byte str_bou_2_c_hom_00000d50
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24ABC80
	.4byte 0xF24A7680
	.4byte str_bou_3_c_hom_00000d58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0xF24A7680
	.4byte str_bou_4_c_hom_00000d60
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24ABC80
	.4byte 0xF24A7680
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj clankDt

# .data:0x47C | 0x25DC | size: 0x1A0
.obj evt_clank_main, local
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00010022
	.4byte 0xFE363C81
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24ADA0F
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24AF70F
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24B5694
	.4byte 0x00000031
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C82
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xFD050F80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xFD050F81
	.4byte 0x00000031
	.4byte 0x0002003D
	.4byte 0xFE363C89
	.4byte 0xFE363C8B
	.4byte 0x0002003C
	.4byte 0xFE363C89
	.4byte 0xF24B5FAE
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xFE363C89
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C8C
	.4byte 0xFE363C8A
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0002003C
	.4byte 0xFE363C8D
	.4byte 0xFE363C83
	.4byte 0x0002003C
	.4byte 0xFE363C8E
	.4byte 0xFE363C83
	.4byte 0x0002003B
	.4byte 0xFE363C8E
	.4byte 0xFE363C83
	.4byte 0x0002003C
	.4byte 0xFE363C8E
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C8E
	.4byte 0xFE363C8D
	.4byte 0xF24A7A80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_clank_main

# .data:0x61C | 0x277C | size: 0x54
.obj evt_clank, local
	.4byte 0x0001003E
	.4byte clankDt
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00040042
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0001003F
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_clank_main
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_clank

# .data:0x670 | 0x27D0 | size: 0x144
.obj evt_bg, local
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0xF256FA80
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xF2637A80
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xF23DFA80
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xF2637A80
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C8B
	.4byte 0xF26FFA80
	.4byte 0x0002003B
	.4byte 0xFE363C8B
	.4byte 0xF2957A80
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8B
	.4byte 0xF224FA80
	.4byte 0x0002003A
	.4byte 0xFE363C8B
	.4byte 0xF2957A80
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_jimen_hom_00000d68
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_yama_hom_00000d70
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_iwayama_hom_00000d78
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_bg

# .data:0x7B4 | 0x2914 | size: 0x160
.obj evt_hoshi, local
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xFD050F80
	.4byte 0x0002003D
	.4byte 0xFE363C89
	.4byte 0xF24AF280
	.4byte 0x0002003C
	.4byte 0xFE363C89
	.4byte 0xF24B5FAE
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xFE363C89
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_right_hom_00000d80
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_left_hom_00000d8c
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_center_hom_00000d98
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_right_c_hom_00000da4
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_left_c_hom_00000db4
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_center_c_hom_00000dc0
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_hoshi

# .data:0x914 | 0x2A74 | size: 0x3D0
.obj hom_10_evt_resha_start_12_data_2A74, global
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF840697B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ranpu_hom_00000dd0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_TRAIN_BELL1_hom_00000dd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_TRAIN_BELL1_hom_00000dd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_hom_00000df0
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_hom_00000df8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_hom_00000e10
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000153
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_hom_00000e18
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_hom_00000e30
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_hom_00000e4c
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_hom_00000e54
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_hom_00000e10
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_hom_00000e6c
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_hom_00000df0
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_hom_00000e6c
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFA24
	.4byte 0x00004E20
	.4byte 0x00010003
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A3E80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005D
	.4byte evt_sub_stopwatch
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0003005B
	.4byte evt_sub_get_stopwatch
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0x000005DC
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFD050F81
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
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFD050F81
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_start_12_data_2A74

# .data:0xCE4 | 0x2E44 | size: 0x40C
.obj hom_10_evt_resha_start2_12_data_2E44, global
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF840697B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ranpu_hom_00000dd0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_TRAIN_BELL1_hom_00000dd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_TRAIN_BELL1_hom_00000dd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_hom_00000df0
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_hom_00000df8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_hom_00000e10
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_hom_00000e74
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_hom_00000e4c
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_hom_00000e54
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_hom_00000e10
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_hom_00000e6c
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_hom_00000df0
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_hom_00000e6c
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_hom_00000e4c
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_hom_00000e6c
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000005DC
	.4byte 0x00004E20
	.4byte 0x00010003
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24AB680
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005D
	.4byte evt_sub_stopwatch
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0003005B
	.4byte evt_sub_get_stopwatch
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0x000005DC
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFD050F81
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
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFD050F81
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_start2_12_data_2E44

# .data:0x10F0 | 0x3250 | size: 0x2C
.obj hom_10_evt_resha_start3_12_data_3250, global
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A3E80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A3E80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_start3_12_data_3250

# .data:0x111C | 0x327C | size: 0x2C
.obj hom_10_evt_resha_start4_12_data_327C, global
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24AB680
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24AB680
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_start4_12_data_327C

# .data:0x1148 | 0x32A8 | size: 0x168
.obj stop_1, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF2795A80
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_hom_00000df0
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_hom_00000e90
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_hom_00000e10
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_hom_00000ea8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_hom_00000e4c
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_hom_00000ec0
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000BB8
	.4byte 0x00000000
	.4byte 0x00002710
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_hom_00000e6c
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C82
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFD050F80
	.4byte 0xF24A7680
	.4byte 0x0002003C
	.4byte 0xFD050F81
	.4byte 0xF24A7680
	.4byte 0x00020034
	.4byte 0xFE363C82
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
	.4byte 0xF840697F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj stop_1

# .data:0x12B0 | 0x3410 | size: 0x168
.obj stop_2, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF21B9A80
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_hom_00000df0
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_hom_00000e90
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_hom_00000e10
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_hom_00000ed8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_hom_00000e4c
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_hom_00000ec0
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFF448
	.4byte 0x00000000
	.4byte 0x00002710
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_hom_00000e6c
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C82
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFD050F80
	.4byte 0xF24A7680
	.4byte 0x0002003C
	.4byte 0xFD050F81
	.4byte 0xF24A7680
	.4byte 0x00020034
	.4byte 0xFE363C82
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
	.4byte 0xF840697F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj stop_2

# .data:0x1418 | 0x3578 | size: 0x90
.obj hom_10_evt_resha_stop_12_data_3578, global
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_hom_00000e4c
	.4byte 0x0001005C
	.4byte stop_1
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_hom_00000df0
	.4byte 0x0001005C
	.4byte stop_2
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_hom_00000e10
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte stop_1
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte stop_2
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_stop_12_data_3578

# .data:0x14A8 | 0x3608 | size: 0x84
.obj evt_ramp, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte ramp_r
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ranpu_hom_00000dd0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ranpu_c_hom_00000ef4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ramp

# .data:0x152C | 0x368C | size: 0x3C
.obj pika_tbl, local
	.4byte str_pika_1_1_hom_00000efc
	.4byte str_pika_1_2_hom_00000f08
	.4byte str_pika_1_3_hom_00000f14
	.4byte str_pika_1_4_hom_00000f20
	.4byte str_pika_2_hom_00000f2c
	.4byte str_pika_3_hom_00000f34
	.4byte str_pika_4_hom_00000f3c
	.4byte str_pika_5_hom_00000f44
	.4byte str_pika_6_hom_00000f4c
	.4byte str_pika_1_1_c_hom_00000f54
	.4byte str_pika_1_2_c_hom_00000f60
	.4byte str_pika_1_3_c_hom_00000f6c
	.4byte str_pika_1_4_c_hom_00000f78
	.4byte str_pika_6_c_hom_00000f84
	.4byte 0x00000000
.endobj pika_tbl

# .data:0x1568 | 0x36C8 | size: 0x28
.obj pika_tbl_rsh_06, local
	.4byte str_pika_1_1_hom_00000efc
	.4byte str_pika_1_2_hom_00000f08
	.4byte str_pika_1_3_hom_00000f14
	.4byte str_pika_1_4_hom_00000f20
	.4byte str_pika_2_hom_00000f2c
	.4byte str_pika_3_hom_00000f34
	.4byte str_pika_4_hom_00000f3c
	.4byte str_pika_5_hom_00000f44
	.4byte str_pika_6_hom_00000f4c
	.4byte 0x00000000
.endobj pika_tbl_rsh_06

# .data:0x1590 | 0x36F0 | size: 0x198
.obj hom_10_evt_resha_sub, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A7A80
	.4byte 0x0001005C
	.4byte evt_sharin
	.4byte 0x0001005C
	.4byte evt_clank
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_10_hom_00000f90
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_11_hom_00000f98
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_12_hom_00000fa0
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_rsh_06_a_hom_00000fa8
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_bg
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_hoshi
	.4byte 0x0001005C
	.4byte evt_ramp
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte resha_tev
	.4byte 0x0001003E
	.4byte pika_tbl
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_rsh_06_a_hom_00000fa8
	.4byte 0x0001003E
	.4byte pika_tbl_rsh_06
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001003F
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x10000000
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_sub

# .data:0x1728 | 0x3888 | size: 0x8C
.obj hom_10_evt_resha_right_12_data_3888, global
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_sub
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000D
	.4byte 0xFE363C80
	.4byte str_rsh_06_a_hom_00000fa8
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_7_hom_00000fb4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_8_hom_00000fbc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_6_hom_00000fc4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_7_hom_00000fd0
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_right_12_data_3888

# .data:0x17B4 | 0x3914 | size: 0x70
.obj hom_10_evt_resha_left_12_data_3914, global
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_sub
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_1_hom_00000fdc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_6_hom_00000fe4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_1_hom_00000fec
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_5_hom_00000ff8
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_left_12_data_3914

# .data:0x1824 | 0x3984 | size: 0x230
.obj hom_10_init_evt_12_data_3984, global
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG6_RSH2_hom_00001004
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
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
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_right_12_data_3888
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_start3_12_data_3250
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFE0C
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_hom_00001014
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_1_hom_00000fec
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_2_hom_0000101c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_3_hom_00001028
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_4_hom_00001034
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_5_hom_00000ff8
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_left_12_data_3914
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_start4_12_data_327C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_hom_00000e6c
	.4byte 0xFFFFFA24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_cam_letter_box_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0x0000012C
	.4byte 0x00000578
	.4byte 0xFE363C80
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C81
	.4byte 0x0000012C
	.4byte 0x00000578
	.4byte 0xFE363C81
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00001F40
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_rsh_02_a_hom_00001040
	.4byte str_nidome_hom_0000104c
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_init_evt_12_data_3984

# .data:0x1A54 | 0x3BB4 | size: 0x4
.obj gap_04_00003BB4_data, global
.hidden gap_04_00003BB4_data
	.4byte 0x00000000
.endobj gap_04_00003BB4_data
