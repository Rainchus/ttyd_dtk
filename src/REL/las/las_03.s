.include "macros.inc"
.file "las_03.o"

# 0x00000530..0x00000674 | size: 0x144
.text
.balign 4

# .text:0x0 | 0x530 | size: 0x7C
.fn toge_flag_onoff, local
/* 00000530 000005FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000534 00000600  7C 08 02 A6 */	mflr r0
/* 00000538 00000604  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000053C 00000608  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000540 0000060C  7C 7E 1B 78 */	mr r30, r3
/* 00000544 00000610  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000548 00000614  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000054C 00000618  4B FF FB F1 */	bl evtGetValue
/* 00000550 0000061C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000554 00000620  7C 7F 1B 78 */	mr r31, r3
/* 00000558 00000624  7F C3 F3 78 */	mr r3, r30
/* 0000055C 00000628  4B FF FB E1 */	bl evtGetValue
/* 00000560 0000062C  3C 80 00 00 */	lis r4, toge_flag@ha
/* 00000564 00000630  38 00 00 01 */	li r0, 0x1
/* 00000568 00000634  38 84 00 00 */	addi r4, r4, toge_flag@l
/* 0000056C 00000638  2C 03 00 00 */	cmpwi r3, 0x0
/* 00000570 0000063C  A0 84 00 00 */	lhz r4, 0x0(r4)
/* 00000574 00000640  7C 03 F8 30 */	slw r3, r0, r31
/* 00000578 00000644  7C 80 18 78 */	andc r0, r4, r3
/* 0000057C 00000648  54 00 04 3E */	clrlwi r0, r0, 16
/* 00000580 0000064C  41 82 00 0C */	beq .L_0000058C
/* 00000584 00000650  7C 80 1B 78 */	or r0, r4, r3
/* 00000588 00000654  54 00 04 3E */	clrlwi r0, r0, 16
.L_0000058C:
/* 0000058C 00000658  3C 80 00 00 */	lis r4, toge_flag@ha
/* 00000590 0000065C  38 60 00 02 */	li r3, 0x2
/* 00000594 00000660  B0 04 00 00 */	sth r0, toge_flag@l(r4)
/* 00000598 00000664  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000059C 00000668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000005A0 0000066C  7C 08 03 A6 */	mtlr r0
/* 000005A4 00000670  38 21 00 10 */	addi r1, r1, 0x10
/* 000005A8 00000674  4E 80 00 20 */	blr
.endfn toge_flag_onoff

# .text:0x7C | 0x5AC | size: 0x58
.fn toge_check_flag, local
/* 000005AC 00000678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000005B0 0000067C  7C 08 02 A6 */	mflr r0
/* 000005B4 00000680  90 01 00 14 */	stw r0, 0x14(r1)
/* 000005B8 00000684  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000005BC 00000688  7C 7E 1B 78 */	mr r30, r3
/* 000005C0 0000068C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000005C4 00000690  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000005C8 00000694  4B FF FB 75 */	bl evtGetValue
/* 000005CC 00000698  3C 80 00 00 */	lis r4, toge_flag@ha
/* 000005D0 0000069C  38 00 00 01 */	li r0, 0x1
/* 000005D4 000006A0  A0 A4 00 00 */	lhz r5, toge_flag@l(r4)
/* 000005D8 000006A4  7C 00 18 30 */	slw r0, r0, r3
/* 000005DC 000006A8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000005E0 000006AC  7F C3 F3 78 */	mr r3, r30
/* 000005E4 000006B0  7C A5 00 38 */	and r5, r5, r0
/* 000005E8 000006B4  4B FF FB 55 */	bl evtSetValue
/* 000005EC 000006B8  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000005F0 000006BC  38 60 00 02 */	li r3, 0x2
/* 000005F4 000006C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000005F8 000006C4  7C 08 03 A6 */	mtlr r0
/* 000005FC 000006C8  38 21 00 10 */	addi r1, r1, 0x10
/* 00000600 000006CC  4E 80 00 20 */	blr
.endfn toge_check_flag

# .text:0xD4 | 0x604 | size: 0x70
.fn get_toge_name, local
/* 00000604 000006D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000608 000006D4  7C 08 02 A6 */	mflr r0
/* 0000060C 000006D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000610 000006DC  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00000614 000006E0  7C 7D 1B 78 */	mr r29, r3
/* 00000618 000006E4  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 0000061C 000006E8  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00000620 000006EC  4B FF FB 1D */	bl evtGetValue
/* 00000624 000006F0  3C A0 00 00 */	lis r5, toge_data@ha
/* 00000628 000006F4  54 7F 18 38 */	slwi r31, r3, 3
/* 0000062C 000006F8  38 A5 00 00 */	addi r5, r5, toge_data@l
/* 00000630 000006FC  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00000634 00000700  7C A5 F8 2E */	lwzx r5, r5, r31
/* 00000638 00000704  7F A3 EB 78 */	mr r3, r29
/* 0000063C 00000708  4B FF FB 01 */	bl evtSetValue
/* 00000640 0000070C  3C 60 00 00 */	lis r3, toge_data@ha
/* 00000644 00000710  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00000648 00000714  38 03 00 00 */	addi r0, r3, toge_data@l
/* 0000064C 00000718  7F A3 EB 78 */	mr r3, r29
/* 00000650 0000071C  7C A0 FA 14 */	add r5, r0, r31
/* 00000654 00000720  80 A5 00 04 */	lwz r5, 0x4(r5)
/* 00000658 00000724  4B FF FA E5 */	bl evtSetValue
/* 0000065C 00000728  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00000660 0000072C  38 60 00 02 */	li r3, 0x2
/* 00000664 00000730  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000668 00000734  7C 08 03 A6 */	mtlr r0
/* 0000066C 00000738  38 21 00 20 */	addi r1, r1, 0x20
/* 00000670 0000073C  4E 80 00 20 */	blr
.endfn get_toge_name

# 0x00000398..0x00000548 | size: 0x1B0
.rodata
.balign 8

# .rodata:0x0 | 0x398 | size: 0xB
.obj str_S_doa_l_01_las_00011e00, local
	.string "S_doa_l_01"
.endobj str_S_doa_l_01_las_00011e00

# .rodata:0xB | 0x3A3 | size: 0x1
.obj gap_03_000003A3_rodata, global
.hidden gap_03_000003A3_rodata
	.byte 0x00
.endobj gap_03_000003A3_rodata

# .rodata:0xC | 0x3A4 | size: 0xB
.obj str_S_doa_l_02_las_00011e0c, local
	.string "S_doa_l_02"
.endobj str_S_doa_l_02_las_00011e0c

# .rodata:0x17 | 0x3AF | size: 0x1
.obj gap_03_000003AF_rodata, global
.hidden gap_03_000003AF_rodata
	.byte 0x00
.endobj gap_03_000003AF_rodata

# .rodata:0x18 | 0x3B0 | size: 0xB
.obj str_S_doa_r_01_las_00011e18, local
	.string "S_doa_r_01"
.endobj str_S_doa_r_01_las_00011e18

# .rodata:0x23 | 0x3BB | size: 0x1
.obj gap_03_000003BB_rodata, global
.hidden gap_03_000003BB_rodata
	.byte 0x00
.endobj gap_03_000003BB_rodata

# .rodata:0x24 | 0x3BC | size: 0xB
.obj str_S_doa_r_02_las_00011e24, local
	.string "S_doa_r_02"
.endobj str_S_doa_r_02_las_00011e24

# .rodata:0x2F | 0x3C7 | size: 0x1
.obj gap_03_000003C7_rodata, global
.hidden gap_03_000003C7_rodata
	.byte 0x00
.endobj gap_03_000003C7_rodata

# .rodata:0x30 | 0x3C8 | size: 0x7
.obj str_w_bero_las_00011e30, local
	.string "w_bero"
.endobj str_w_bero_las_00011e30

# .rodata:0x37 | 0x3CF | size: 0x1
.obj gap_03_000003CF_rodata, global
.hidden gap_03_000003CF_rodata
	.byte 0x00
.endobj gap_03_000003CF_rodata

# .rodata:0x38 | 0x3D0 | size: 0x7
.obj str_las_02_las_00011e38, local
	.string "las_02"
.endobj str_las_02_las_00011e38

# .rodata:0x3F | 0x3D7 | size: 0x1
.obj gap_03_000003D7_rodata, global
.hidden gap_03_000003D7_rodata
	.byte 0x00
.endobj gap_03_000003D7_rodata

# .rodata:0x40 | 0x3D8 | size: 0x7
.obj str_e_bero_las_00011e40, local
	.string "e_bero"
.endobj str_e_bero_las_00011e40

# .rodata:0x47 | 0x3DF | size: 0x1
.obj gap_03_000003DF_rodata, global
.hidden gap_03_000003DF_rodata
	.byte 0x00
.endobj gap_03_000003DF_rodata

# .rodata:0x48 | 0x3E0 | size: 0x9
.obj str_e_bero_1_las_00011e48, local
	.string "e_bero_1"
.endobj str_e_bero_1_las_00011e48

# .rodata:0x51 | 0x3E9 | size: 0x3
.obj gap_03_000003E9_rodata, global
.hidden gap_03_000003E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003E9_rodata

# .rodata:0x54 | 0x3EC | size: 0x7
.obj str_las_04_las_00011e54, local
	.string "las_04"
.endobj str_las_04_las_00011e54

# .rodata:0x5B | 0x3F3 | size: 0x1
.obj gap_03_000003F3_rodata, global
.hidden gap_03_000003F3_rodata
	.byte 0x00
.endobj gap_03_000003F3_rodata

# .rodata:0x5C | 0x3F4 | size: 0xA
.obj str_A_yuka_02_las_00011e5c, local
	.string "A_yuka_02"
.endobj str_A_yuka_02_las_00011e5c

# .rodata:0x66 | 0x3FE | size: 0x2
.obj gap_03_000003FE_rodata, global
.hidden gap_03_000003FE_rodata
	.2byte 0x0000
.endobj gap_03_000003FE_rodata

# .rodata:0x68 | 0x400 | size: 0xA
.obj str_A_yuka_03_las_00011e68, local
	.string "A_yuka_03"
.endobj str_A_yuka_03_las_00011e68

# .rodata:0x72 | 0x40A | size: 0x2
.obj gap_03_0000040A_rodata, global
.hidden gap_03_0000040A_rodata
	.2byte 0x0000
.endobj gap_03_0000040A_rodata

# .rodata:0x74 | 0x40C | size: 0xA
.obj str_S_toge_01_las_00011e74, local
	.string "S_toge_01"
.endobj str_S_toge_01_las_00011e74

# .rodata:0x7E | 0x416 | size: 0x2
.obj gap_03_00000416_rodata, global
.hidden gap_03_00000416_rodata
	.2byte 0x0000
.endobj gap_03_00000416_rodata

# .rodata:0x80 | 0x418 | size: 0xA
.obj str_A_toge_01_las_00011e80, local
	.string "A_toge_01"
.endobj str_A_toge_01_las_00011e80

# .rodata:0x8A | 0x422 | size: 0x2
.obj gap_03_00000422_rodata, global
.hidden gap_03_00000422_rodata
	.2byte 0x0000
.endobj gap_03_00000422_rodata

# .rodata:0x8C | 0x424 | size: 0xA
.obj str_S_toge_02_las_00011e8c, local
	.string "S_toge_02"
.endobj str_S_toge_02_las_00011e8c

# .rodata:0x96 | 0x42E | size: 0x2
.obj gap_03_0000042E_rodata, global
.hidden gap_03_0000042E_rodata
	.2byte 0x0000
.endobj gap_03_0000042E_rodata

# .rodata:0x98 | 0x430 | size: 0xA
.obj str_A_toge_02_las_00011e98, local
	.string "A_toge_02"
.endobj str_A_toge_02_las_00011e98

# .rodata:0xA2 | 0x43A | size: 0x2
.obj gap_03_0000043A_rodata, global
.hidden gap_03_0000043A_rodata
	.2byte 0x0000
.endobj gap_03_0000043A_rodata

# .rodata:0xA4 | 0x43C | size: 0xA
.obj str_S_toge_03_las_00011ea4, local
	.string "S_toge_03"
.endobj str_S_toge_03_las_00011ea4

# .rodata:0xAE | 0x446 | size: 0x2
.obj gap_03_00000446_rodata, global
.hidden gap_03_00000446_rodata
	.2byte 0x0000
.endobj gap_03_00000446_rodata

# .rodata:0xB0 | 0x448 | size: 0xA
.obj str_A_toge_03_las_00011eb0, local
	.string "A_toge_03"
.endobj str_A_toge_03_las_00011eb0

# .rodata:0xBA | 0x452 | size: 0x2
.obj gap_03_00000452_rodata, global
.hidden gap_03_00000452_rodata
	.2byte 0x0000
.endobj gap_03_00000452_rodata

# .rodata:0xBC | 0x454 | size: 0xA
.obj str_S_toge_04_las_00011ebc, local
	.string "S_toge_04"
.endobj str_S_toge_04_las_00011ebc

# .rodata:0xC6 | 0x45E | size: 0x2
.obj gap_03_0000045E_rodata, global
.hidden gap_03_0000045E_rodata
	.2byte 0x0000
.endobj gap_03_0000045E_rodata

# .rodata:0xC8 | 0x460 | size: 0xA
.obj str_A_toge_04_las_00011ec8, local
	.string "A_toge_04"
.endobj str_A_toge_04_las_00011ec8

# .rodata:0xD2 | 0x46A | size: 0x2
.obj gap_03_0000046A_rodata, global
.hidden gap_03_0000046A_rodata
	.2byte 0x0000
.endobj gap_03_0000046A_rodata

# .rodata:0xD4 | 0x46C | size: 0xA
.obj str_S_toge_05_las_00011ed4, local
	.string "S_toge_05"
.endobj str_S_toge_05_las_00011ed4

# .rodata:0xDE | 0x476 | size: 0x2
.obj gap_03_00000476_rodata, global
.hidden gap_03_00000476_rodata
	.2byte 0x0000
.endobj gap_03_00000476_rodata

# .rodata:0xE0 | 0x478 | size: 0xA
.obj str_A_toge_05_las_00011ee0, local
	.string "A_toge_05"
.endobj str_A_toge_05_las_00011ee0

# .rodata:0xEA | 0x482 | size: 0x2
.obj gap_03_00000482_rodata, global
.hidden gap_03_00000482_rodata
	.2byte 0x0000
.endobj gap_03_00000482_rodata

# .rodata:0xEC | 0x484 | size: 0xA
.obj str_S_toge_06_las_00011eec, local
	.string "S_toge_06"
.endobj str_S_toge_06_las_00011eec

# .rodata:0xF6 | 0x48E | size: 0x2
.obj gap_03_0000048E_rodata, global
.hidden gap_03_0000048E_rodata
	.2byte 0x0000
.endobj gap_03_0000048E_rodata

# .rodata:0xF8 | 0x490 | size: 0xA
.obj str_A_toge_06_las_00011ef8, local
	.string "A_toge_06"
.endobj str_A_toge_06_las_00011ef8

# .rodata:0x102 | 0x49A | size: 0x2
.obj gap_03_0000049A_rodata, global
.hidden gap_03_0000049A_rodata
	.2byte 0x0000
.endobj gap_03_0000049A_rodata

# .rodata:0x104 | 0x49C | size: 0xA
.obj str_S_toge_07_las_00011f04, local
	.string "S_toge_07"
.endobj str_S_toge_07_las_00011f04

# .rodata:0x10E | 0x4A6 | size: 0x2
.obj gap_03_000004A6_rodata, global
.hidden gap_03_000004A6_rodata
	.2byte 0x0000
.endobj gap_03_000004A6_rodata

# .rodata:0x110 | 0x4A8 | size: 0xA
.obj str_A_toge_07_las_00011f10, local
	.string "A_toge_07"
.endobj str_A_toge_07_las_00011f10

# .rodata:0x11A | 0x4B2 | size: 0x2
.obj gap_03_000004B2_rodata, global
.hidden gap_03_000004B2_rodata
	.2byte 0x0000
.endobj gap_03_000004B2_rodata

# .rodata:0x11C | 0x4B4 | size: 0xA
.obj str_S_toge_08_las_00011f1c, local
	.string "S_toge_08"
.endobj str_S_toge_08_las_00011f1c

# .rodata:0x126 | 0x4BE | size: 0x2
.obj gap_03_000004BE_rodata, global
.hidden gap_03_000004BE_rodata
	.2byte 0x0000
.endobj gap_03_000004BE_rodata

# .rodata:0x128 | 0x4C0 | size: 0xA
.obj str_A_toge_08_las_00011f28, local
	.string "A_toge_08"
.endobj str_A_toge_08_las_00011f28

# .rodata:0x132 | 0x4CA | size: 0x2
.obj gap_03_000004CA_rodata, global
.hidden gap_03_000004CA_rodata
	.2byte 0x0000
.endobj gap_03_000004CA_rodata

# .rodata:0x134 | 0x4CC | size: 0xA
.obj str_S_toge_09_las_00011f34, local
	.string "S_toge_09"
.endobj str_S_toge_09_las_00011f34

# .rodata:0x13E | 0x4D6 | size: 0x2
.obj gap_03_000004D6_rodata, global
.hidden gap_03_000004D6_rodata
	.2byte 0x0000
.endobj gap_03_000004D6_rodata

# .rodata:0x140 | 0x4D8 | size: 0xA
.obj str_A_toge_09_las_00011f40, local
	.string "A_toge_09"
.endobj str_A_toge_09_las_00011f40

# .rodata:0x14A | 0x4E2 | size: 0x2
.obj gap_03_000004E2_rodata, global
.hidden gap_03_000004E2_rodata
	.2byte 0x0000
.endobj gap_03_000004E2_rodata

# .rodata:0x14C | 0x4E4 | size: 0x15
.obj str_SFX_MOBJ_FLOOR_TRAP1_las_00011f4c, local
	.string "SFX_MOBJ_FLOOR_TRAP1"
.endobj str_SFX_MOBJ_FLOOR_TRAP1_las_00011f4c

# .rodata:0x161 | 0x4F9 | size: 0x3
.obj gap_03_000004F9_rodata, global
.hidden gap_03_000004F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004F9_rodata

# .rodata:0x164 | 0x4FC | size: 0x15
.obj str_SFX_MOBJ_FLOOR_TRAP2_las_00011f64, local
	.string "SFX_MOBJ_FLOOR_TRAP2"
.endobj str_SFX_MOBJ_FLOOR_TRAP2_las_00011f64

# .rodata:0x179 | 0x511 | size: 0x3
.obj gap_03_00000511_rodata, global
.hidden gap_03_00000511_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000511_rodata

# .rodata:0x17C | 0x514 | size: 0xE
.obj str_BGM_STG8_LST1_las_00011f7c, local
	.string "BGM_STG8_LST1"
.endobj str_BGM_STG8_LST1_las_00011f7c

# .rodata:0x18A | 0x522 | size: 0x2
.obj gap_03_00000522_rodata, global
.hidden gap_03_00000522_rodata
	.2byte 0x0000
.endobj gap_03_00000522_rodata

# .rodata:0x18C | 0x524 | size: 0xE
.obj str_ENV_STG8_LAS1_las_00011f8c, local
	.string "ENV_STG8_LAS1"
.endobj str_ENV_STG8_LAS1_las_00011f8c

# .rodata:0x19A | 0x532 | size: 0x2
.obj gap_03_00000532_rodata, global
.hidden gap_03_00000532_rodata
	.2byte 0x0000
.endobj gap_03_00000532_rodata

# .rodata:0x19C | 0x534 | size: 0xF
.obj str_mobj_badge_gat_las_00011f9c, local
	.string "mobj_badge_gat"
.endobj str_mobj_badge_gat_las_00011f9c

# .rodata:0x1AB | 0x543 | size: 0x5
.obj gap_03_00000543_rodata, global
.hidden gap_03_00000543_rodata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_03_00000543_rodata

# 0x00001348..0x000019E0 | size: 0x698
.data
.balign 8

# .data:0x0 | 0x1348 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1350 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1354 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1358 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x135C | size: 0x4
.obj gap_04_0000135C_data, global
.hidden gap_04_0000135C_data
	.4byte 0x00000000
.endobj gap_04_0000135C_data

# .data:0x18 | 0x1360 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1368 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x136C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1370 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1378 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x137C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1380 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1384 | size: 0x4
.obj gap_04_00001384_data, global
.hidden gap_04_00001384_data
	.4byte 0x00000000
.endobj gap_04_00001384_data

# .data:0x40 | 0x1388 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1390 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1394 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1398 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_01_las_00011e00
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_02_las_00011e0c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x13F0 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_01_las_00011e00
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_02_las_00011e0c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x1448 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_01_las_00011e18
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_02_las_00011e24
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0x158 | 0x14A0 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_01_las_00011e18
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_02_las_00011e24
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x1B0 | 0x14F8 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_las_00011e30
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_02_las_00011e38
	.4byte str_e_bero_las_00011e40
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_e_bero_1_las_00011e48
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_04_las_00011e54
	.4byte str_w_bero_las_00011e30
	.4byte 0x00050005
	.4byte e_door_close
	.4byte e_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x264 | 0x15AC | size: 0x30
.obj dmgRetPoint, local
	.4byte str_A_yuka_02_las_00011e5c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_A_yuka_03_las_00011e68
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj dmgRetPoint

# .data:0x294 | 0x15DC | size: 0x48
.obj toge_data, local
	.4byte str_S_toge_01_las_00011e74
	.4byte str_A_toge_01_las_00011e80
	.4byte str_S_toge_02_las_00011e8c
	.4byte str_A_toge_02_las_00011e98
	.4byte str_S_toge_03_las_00011ea4
	.4byte str_A_toge_03_las_00011eb0
	.4byte str_S_toge_04_las_00011ebc
	.4byte str_A_toge_04_las_00011ec8
	.4byte str_S_toge_05_las_00011ed4
	.4byte str_A_toge_05_las_00011ee0
	.4byte str_S_toge_06_las_00011eec
	.4byte str_A_toge_06_las_00011ef8
	.4byte str_S_toge_07_las_00011f04
	.4byte str_A_toge_07_las_00011f10
	.4byte str_S_toge_08_las_00011f1c
	.4byte str_A_toge_08_las_00011f28
	.4byte str_S_toge_09_las_00011f34
	.4byte str_A_toge_09_las_00011f40
.endobj toge_data

# .data:0x2DC | 0x1624 | size: 0x1E4
.obj toge_evt_sub, local
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte get_toge_name
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte toge_check_flag
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte toge_flag_onoff
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C83
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MOBJ_FLOOR_TRAP1_las_00011f4c
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000096
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C83
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MOBJ_FLOOR_TRAP2_las_00011f64
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte toge_flag_onoff
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_evt_sub

# .data:0x4C0 | 0x1808 | size: 0x158
.obj toge_evt, local
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte dmgRetPoint
	.4byte 0x0001005E
	.4byte evt_gazigazi_entry
	.4byte 0x0001003E
	.4byte toge_data
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x00020040
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_motion
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte get_toge_name
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0008005B
	.4byte evt_sub_area_check
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0xFE363C88
	.4byte 0x0000005A
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x0001005C
	.4byte toge_evt_sub
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFE363C84
	.4byte 0x00000009
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_evt

# .data:0x618 | 0x1960 | size: 0x80
.obj las_03_init_evt_16_data_1960, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG8_LST1_las_00011f7c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS1_las_00011f8c
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_mobj_badge_gat_las_00011f9c
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000108
	.4byte 0x00000000
	.4byte 0xF8406C97
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte toge_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_03_init_evt_16_data_1960

# 0x00000018..0x00000020 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x18 | size: 0x2
.obj toge_flag, local
	.skip 0x2
.endobj toge_flag

# .bss:0x2 | 0x1A | size: 0x6
.obj gap_05_0000001A_bss, global
.hidden gap_05_0000001A_bss
	.skip 0x6
.endobj gap_05_0000001A_bss
