.include "macros.inc"
.file "yuu.s"

# 0x000036C4..0x000037B0 | size: 0xEC
.text
.balign 4

# .text:0x0 | 0x36C4 | size: 0x4
.fn _unresolved, global
/* 000036C4 00003790  4E 80 00 20 */	blr
.endfn _unresolved

# .text:0x4 | 0x36C8 | size: 0x4C
.fn _epilog, global
/* 000036C8 00003794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000036CC 00003798  7C 08 02 A6 */	mflr r0
/* 000036D0 0000379C  3C 60 00 00 */	lis r3, _dtors@ha
/* 000036D4 000037A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 000036D8 000037A4  38 03 00 00 */	addi r0, r3, _dtors@l
/* 000036DC 000037A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000036E0 000037AC  7C 1F 03 78 */	mr r31, r0
/* 000036E4 000037B0  48 00 00 10 */	b .L_000036F4
.L_000036E8:
/* 000036E8 000037B4  7D 89 03 A6 */	mtctr r12
/* 000036EC 000037B8  4E 80 04 21 */	bctrl
/* 000036F0 000037BC  3B FF 00 04 */	addi r31, r31, 0x4
.L_000036F4:
/* 000036F4 000037C0  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 000036F8 000037C4  28 0C 00 00 */	cmplwi r12, 0x0
/* 000036FC 000037C8  40 82 FF EC */	bne .L_000036E8
/* 00003700 000037CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00003704 000037D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00003708 000037D4  7C 08 03 A6 */	mtlr r0
/* 0000370C 000037D8  38 21 00 10 */	addi r1, r1, 0x10
/* 00003710 000037DC  4E 80 00 20 */	blr
.endfn _epilog

# .text:0x50 | 0x3714 | size: 0x9C
.fn _prolog, global
/* 00003714 000037E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00003718 000037E4  7C 08 02 A6 */	mflr r0
/* 0000371C 000037E8  3C 60 00 00 */	lis r3, _ctors@ha
/* 00003720 000037EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 00003724 000037F0  38 03 00 00 */	addi r0, r3, _ctors@l
/* 00003728 000037F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 0000372C 000037F8  7C 1F 03 78 */	mr r31, r0
/* 00003730 000037FC  48 00 00 10 */	b .L_00003740
.L_00003734:
/* 00003734 00003800  7D 89 03 A6 */	mtctr r12
/* 00003738 00003804  4E 80 04 21 */	bctrl
/* 0000373C 00003808  3B FF 00 04 */	addi r31, r31, 0x4
.L_00003740:
/* 00003740 0000380C  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 00003744 00003810  28 0C 00 00 */	cmplwi r12, 0x0
/* 00003748 00003814  40 82 FF EC */	bne .L_00003734
/* 0000374C 00003818  3C 60 00 00 */	lis r3, str_yuu_00_yuu_000156d0@ha
/* 00003750 0000381C  3C 80 00 00 */	lis r4, yuu_00_init_evt_29_data_4294@ha
/* 00003754 00003820  38 63 00 00 */	addi r3, r3, str_yuu_00_yuu_000156d0@l
/* 00003758 00003824  38 84 00 00 */	addi r4, r4, yuu_00_init_evt_29_data_4294@l
/* 0000375C 00003828  4B FF FF 69 */	bl relSetEvtAddr
/* 00003760 0000382C  3C 60 00 00 */	lis r3, str_yuu_01_yuu_000156d8@ha
/* 00003764 00003830  3C 80 00 00 */	lis r4, yuu_01_init_evt_29_data_5208@ha
/* 00003768 00003834  38 63 00 00 */	addi r3, r3, str_yuu_01_yuu_000156d8@l
/* 0000376C 00003838  38 84 00 00 */	addi r4, r4, yuu_01_init_evt_29_data_5208@l
/* 00003770 0000383C  4B FF FF 55 */	bl relSetEvtAddr
/* 00003774 00003840  3C 60 00 00 */	lis r3, str_yuu_02_yuu_000156e0@ha
/* 00003778 00003844  3C 80 00 00 */	lis r4, yuu_02_init_evt_29_data_D74@ha
/* 0000377C 00003848  38 63 00 00 */	addi r3, r3, str_yuu_02_yuu_000156e0@l
/* 00003780 0000384C  38 84 00 00 */	addi r4, r4, yuu_02_init_evt_29_data_D74@l
/* 00003784 00003850  4B FF FF 41 */	bl relSetEvtAddr
/* 00003788 00003854  3C 60 00 00 */	lis r3, str_yuu_03_yuu_000156e8@ha
/* 0000378C 00003858  3C 80 00 00 */	lis r4, yuu_03_init_evt_29_data_1994@ha
/* 00003790 0000385C  38 63 00 00 */	addi r3, r3, str_yuu_03_yuu_000156e8@l
/* 00003794 00003860  38 84 00 00 */	addi r4, r4, yuu_03_init_evt_29_data_1994@l
/* 00003798 00003864  4B FF FF 2D */	bl relSetEvtAddr
/* 0000379C 00003868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000037A0 0000386C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000037A4 00003870  7C 08 03 A6 */	mtlr r0
/* 000037A8 00003874  38 21 00 10 */	addi r1, r1, 0x10
/* 000037AC 00003878  4E 80 00 20 */	blr
.endfn _prolog

# 0x00000430..0x00000450 | size: 0x20
.rodata
.balign 8

# .rodata:0x0 | 0x430 | size: 0x7
.obj str_yuu_00_yuu_000156d0, local
	.string "yuu_00"
.endobj str_yuu_00_yuu_000156d0

# .rodata:0x7 | 0x437 | size: 0x1
.obj gap_03_00000437_rodata, global
.hidden gap_03_00000437_rodata
	.byte 0x00
.endobj gap_03_00000437_rodata

# .rodata:0x8 | 0x438 | size: 0x7
.obj str_yuu_01_yuu_000156d8, local
	.string "yuu_01"
.endobj str_yuu_01_yuu_000156d8

# .rodata:0xF | 0x43F | size: 0x1
.obj gap_03_0000043F_rodata, global
.hidden gap_03_0000043F_rodata
	.byte 0x00
.endobj gap_03_0000043F_rodata

# .rodata:0x10 | 0x440 | size: 0x7
.obj str_yuu_02_yuu_000156e0, local
	.string "yuu_02"
.endobj str_yuu_02_yuu_000156e0

# .rodata:0x17 | 0x447 | size: 0x1
.obj gap_03_00000447_rodata, global
.hidden gap_03_00000447_rodata
	.byte 0x00
.endobj gap_03_00000447_rodata

# .rodata:0x18 | 0x448 | size: 0x7
.obj str_yuu_03_yuu_000156e8, local
	.string "yuu_03"
.endobj str_yuu_03_yuu_000156e8

# .rodata:0x1F | 0x44F | size: 0x1
.obj gap_03_0000044F_rodata, global
.hidden gap_03_0000044F_rodata
	.byte 0x00
.endobj gap_03_0000044F_rodata

# 0x00001C30..0x00001C80 | size: 0x50
.data
.balign 8

# .data:0x0 | 0x1C30 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1C38 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1C3C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1C40 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1C44 | size: 0x4
.obj gap_04_00001C44_data, global
.hidden gap_04_00001C44_data
	.4byte 0x00000000
.endobj gap_04_00001C44_data

# .data:0x18 | 0x1C48 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1C50 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1C54 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1C58 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1C60 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1C64 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1C68 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1C6C | size: 0x4
.obj gap_04_00001C6C_data, global
.hidden gap_04_00001C6C_data
	.4byte 0x00000000
.endobj gap_04_00001C6C_data

# .data:0x40 | 0x1C70 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1C78 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1C7C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364
