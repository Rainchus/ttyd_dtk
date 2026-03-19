.include "macros.inc"
.file "moo.o"

# 0x000004AC..0x00000604 | size: 0x158
.text
.balign 4

# .text:0x0 | 0x4AC | size: 0x4
.fn _unresolved, global
/* 000004AC 00000570  4E 80 00 20 */	blr
.endfn _unresolved

# .text:0x4 | 0x4B0 | size: 0x4C
.fn _epilog, global
/* 000004B0 00000574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000004B4 00000578  7C 08 02 A6 */	mflr r0
/* 000004B8 0000057C  3C 60 00 00 */	lis r3, _dtors@ha
/* 000004BC 00000580  90 01 00 14 */	stw r0, 0x14(r1)
/* 000004C0 00000584  38 03 00 00 */	addi r0, r3, _dtors@l
/* 000004C4 00000588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000004C8 0000058C  7C 1F 03 78 */	mr r31, r0
/* 000004CC 00000590  48 00 00 10 */	b .L_000004DC
.L_000004D0:
/* 000004D0 00000594  7D 89 03 A6 */	mtctr r12
/* 000004D4 00000598  4E 80 04 21 */	bctrl
/* 000004D8 0000059C  3B FF 00 04 */	addi r31, r31, 0x4
.L_000004DC:
/* 000004DC 000005A0  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 000004E0 000005A4  28 0C 00 00 */	cmplwi r12, 0x0
/* 000004E4 000005A8  40 82 FF EC */	bne .L_000004D0
/* 000004E8 000005AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000004EC 000005B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000004F0 000005B4  7C 08 03 A6 */	mtlr r0
/* 000004F4 000005B8  38 21 00 10 */	addi r1, r1, 0x10
/* 000004F8 000005BC  4E 80 00 20 */	blr
.endfn _epilog

# .text:0x50 | 0x4FC | size: 0x108
.fn _prolog, global
/* 000004FC 000005C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000500 000005C4  7C 08 02 A6 */	mflr r0
/* 00000504 000005C8  3C 60 00 00 */	lis r3, _ctors@ha
/* 00000508 000005CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000050C 000005D0  38 03 00 00 */	addi r0, r3, _ctors@l
/* 00000510 000005D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000514 000005D8  7C 1F 03 78 */	mr r31, r0
/* 00000518 000005DC  48 00 00 10 */	b .L_00000528
.L_0000051C:
/* 0000051C 000005E0  7D 89 03 A6 */	mtctr r12
/* 00000520 000005E4  4E 80 04 21 */	bctrl
/* 00000524 000005E8  3B FF 00 04 */	addi r31, r31, 0x4
.L_00000528:
/* 00000528 000005EC  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 0000052C 000005F0  28 0C 00 00 */	cmplwi r12, 0x0
/* 00000530 000005F4  40 82 FF EC */	bne .L_0000051C
/* 00000534 000005F8  3C 60 00 00 */	lis r3, str_moo_00_moo_000036b8@ha
/* 00000538 000005FC  3C 80 00 00 */	lis r4, moo_00_init_evt_17_data_D28@ha
/* 0000053C 00000600  38 63 00 00 */	addi r3, r3, str_moo_00_moo_000036b8@l
/* 00000540 00000604  38 84 00 00 */	addi r4, r4, moo_00_init_evt_17_data_D28@l
/* 00000544 00000608  4B FF FF 69 */	bl relSetEvtAddr
/* 00000548 0000060C  3C 60 00 00 */	lis r3, str_moo_01_moo_000036c0@ha
/* 0000054C 00000610  3C 80 00 00 */	lis r4, moo_01_init_evt_17_data_10BC@ha
/* 00000550 00000614  38 63 00 00 */	addi r3, r3, str_moo_01_moo_000036c0@l
/* 00000554 00000618  38 84 00 00 */	addi r4, r4, moo_01_init_evt_17_data_10BC@l
/* 00000558 0000061C  4B FF FF 55 */	bl relSetEvtAddr
/* 0000055C 00000620  3C 60 00 00 */	lis r3, str_moo_02_moo_000036c8@ha
/* 00000560 00000624  3C 80 00 00 */	lis r4, moo_02_init_evt_17_data_16DC@ha
/* 00000564 00000628  38 63 00 00 */	addi r3, r3, str_moo_02_moo_000036c8@l
/* 00000568 0000062C  38 84 00 00 */	addi r4, r4, moo_02_init_evt_17_data_16DC@l
/* 0000056C 00000630  4B FF FF 41 */	bl relSetEvtAddr
/* 00000570 00000634  3C 60 00 00 */	lis r3, str_moo_03_moo_000036d0@ha
/* 00000574 00000638  3C 80 00 00 */	lis r4, moo_03_init_evt_17_data_1D3C@ha
/* 00000578 0000063C  38 63 00 00 */	addi r3, r3, str_moo_03_moo_000036d0@l
/* 0000057C 00000640  38 84 00 00 */	addi r4, r4, moo_03_init_evt_17_data_1D3C@l
/* 00000580 00000644  4B FF FF 2D */	bl relSetEvtAddr
/* 00000584 00000648  3C 60 00 00 */	lis r3, str_moo_04_moo_000036d8@ha
/* 00000588 0000064C  3C 80 00 00 */	lis r4, moo_04_init_evt_17_data_267C@ha
/* 0000058C 00000650  38 63 00 00 */	addi r3, r3, str_moo_04_moo_000036d8@l
/* 00000590 00000654  38 84 00 00 */	addi r4, r4, moo_04_init_evt_17_data_267C@l
/* 00000594 00000658  4B FF FF 19 */	bl relSetEvtAddr
/* 00000598 0000065C  3C 60 00 00 */	lis r3, str_moo_05_moo_000036e0@ha
/* 0000059C 00000660  3C 80 00 00 */	lis r4, moo_05_init_evt_17_data_5040@ha
/* 000005A0 00000664  38 63 00 00 */	addi r3, r3, str_moo_05_moo_000036e0@l
/* 000005A4 00000668  38 84 00 00 */	addi r4, r4, moo_05_init_evt_17_data_5040@l
/* 000005A8 0000066C  4B FF FF 05 */	bl relSetEvtAddr
/* 000005AC 00000670  3C 60 00 00 */	lis r3, str_moo_06_moo_000036e8@ha
/* 000005B0 00000674  3C 80 00 00 */	lis r4, moo_06_init_evt_17_data_52AC@ha
/* 000005B4 00000678  38 63 00 00 */	addi r3, r3, str_moo_06_moo_000036e8@l
/* 000005B8 0000067C  38 84 00 00 */	addi r4, r4, moo_06_init_evt_17_data_52AC@l
/* 000005BC 00000680  4B FF FE F1 */	bl relSetEvtAddr
/* 000005C0 00000684  3C 60 00 00 */	lis r3, str_moo_07_moo_000036f0@ha
/* 000005C4 00000688  3C 80 00 00 */	lis r4, moo_07_init_evt_17_data_5560@ha
/* 000005C8 0000068C  38 63 00 00 */	addi r3, r3, str_moo_07_moo_000036f0@l
/* 000005CC 00000690  38 84 00 00 */	addi r4, r4, moo_07_init_evt_17_data_5560@l
/* 000005D0 00000694  4B FF FE DD */	bl relSetEvtAddr
/* 000005D4 00000698  3C 60 00 00 */	lis r3, str_moo_moo_000036f8@ha
/* 000005D8 0000069C  3C 80 00 00 */	lis r4, btlsetup_moo_tbl_17_data_3DCC@ha
/* 000005DC 000006A0  3C A0 00 00 */	lis r5, btl_moo_setup_no_tbl_17_data_4250@ha
/* 000005E0 000006A4  38 63 00 00 */	addi r3, r3, str_moo_moo_000036f8@l
/* 000005E4 000006A8  38 84 00 00 */	addi r4, r4, btlsetup_moo_tbl_17_data_3DCC@l
/* 000005E8 000006AC  38 A5 00 00 */	addi r5, r5, btl_moo_setup_no_tbl_17_data_4250@l
/* 000005EC 000006B0  4B FF FE C1 */	bl relSetBtlAddr
/* 000005F0 000006B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000005F4 000006B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000005F8 000006BC  7C 08 03 A6 */	mtlr r0
/* 000005FC 000006C0  38 21 00 10 */	addi r1, r1, 0x10
/* 00000600 000006C4  4E 80 00 20 */	blr
.endfn _prolog

# 0x00000628..0x00000670 | size: 0x48
.rodata
.balign 8

# .rodata:0x0 | 0x628 | size: 0x7
.obj str_moo_00_moo_000036b8, local
	.string "moo_00"
.endobj str_moo_00_moo_000036b8

# .rodata:0x7 | 0x62F | size: 0x1
.obj gap_03_0000062F_rodata, global
.hidden gap_03_0000062F_rodata
	.byte 0x00
.endobj gap_03_0000062F_rodata

# .rodata:0x8 | 0x630 | size: 0x7
.obj str_moo_01_moo_000036c0, local
	.string "moo_01"
.endobj str_moo_01_moo_000036c0

# .rodata:0xF | 0x637 | size: 0x1
.obj gap_03_00000637_rodata, global
.hidden gap_03_00000637_rodata
	.byte 0x00
.endobj gap_03_00000637_rodata

# .rodata:0x10 | 0x638 | size: 0x7
.obj str_moo_02_moo_000036c8, local
	.string "moo_02"
.endobj str_moo_02_moo_000036c8

# .rodata:0x17 | 0x63F | size: 0x1
.obj gap_03_0000063F_rodata, global
.hidden gap_03_0000063F_rodata
	.byte 0x00
.endobj gap_03_0000063F_rodata

# .rodata:0x18 | 0x640 | size: 0x7
.obj str_moo_03_moo_000036d0, local
	.string "moo_03"
.endobj str_moo_03_moo_000036d0

# .rodata:0x1F | 0x647 | size: 0x1
.obj gap_03_00000647_rodata, global
.hidden gap_03_00000647_rodata
	.byte 0x00
.endobj gap_03_00000647_rodata

# .rodata:0x20 | 0x648 | size: 0x7
.obj str_moo_04_moo_000036d8, local
	.string "moo_04"
.endobj str_moo_04_moo_000036d8

# .rodata:0x27 | 0x64F | size: 0x1
.obj gap_03_0000064F_rodata, global
.hidden gap_03_0000064F_rodata
	.byte 0x00
.endobj gap_03_0000064F_rodata

# .rodata:0x28 | 0x650 | size: 0x7
.obj str_moo_05_moo_000036e0, local
	.string "moo_05"
.endobj str_moo_05_moo_000036e0

# .rodata:0x2F | 0x657 | size: 0x1
.obj gap_03_00000657_rodata, global
.hidden gap_03_00000657_rodata
	.byte 0x00
.endobj gap_03_00000657_rodata

# .rodata:0x30 | 0x658 | size: 0x7
.obj str_moo_06_moo_000036e8, local
	.string "moo_06"
.endobj str_moo_06_moo_000036e8

# .rodata:0x37 | 0x65F | size: 0x1
.obj gap_03_0000065F_rodata, global
.hidden gap_03_0000065F_rodata
	.byte 0x00
.endobj gap_03_0000065F_rodata

# .rodata:0x38 | 0x660 | size: 0x7
.obj str_moo_07_moo_000036f0, local
	.string "moo_07"
.endobj str_moo_07_moo_000036f0

# .rodata:0x3F | 0x667 | size: 0x1
.obj gap_03_00000667_rodata, global
.hidden gap_03_00000667_rodata
	.byte 0x00
.endobj gap_03_00000667_rodata

# .rodata:0x40 | 0x668 | size: 0x4
.obj str_moo_moo_000036f8, local
	.string "moo"
.endobj str_moo_moo_000036f8

# .rodata:0x44 | 0x66C | size: 0x4
.obj gap_03_0000066C_rodata, global
.hidden gap_03_0000066C_rodata
	.4byte 0x00000000
.endobj gap_03_0000066C_rodata

# 0x000029F0..0x00002A40 | size: 0x50
.data
.balign 8

# .data:0x0 | 0x29F0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x29F8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x29FC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2A00 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2A04 | size: 0x4
.obj gap_04_00002A04_data, global
.hidden gap_04_00002A04_data
	.4byte 0x00000000
.endobj gap_04_00002A04_data

# .data:0x18 | 0x2A08 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2A10 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2A14 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2A18 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2A20 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2A24 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2A28 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2A2C | size: 0x4
.obj gap_04_00002A2C_data, global
.hidden gap_04_00002A2C_data
	.4byte 0x00000000
.endobj gap_04_00002A2C_data

# .data:0x40 | 0x2A30 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2A38 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2A3C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364
