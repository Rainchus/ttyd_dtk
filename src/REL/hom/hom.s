.include "macros.inc"
.file "hom.o"

# 0x00000000..0x000000EC | size: 0xEC
.text
.balign 4

# .text:0x0 | 0x0 | size: 0x4
.fn _unresolved, global
/* 00000000 000000C4  4E 80 00 20 */	blr
.endfn _unresolved

# .text:0x4 | 0x4 | size: 0x4C
.fn _epilog, global
/* 00000004 000000C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000008 000000CC  7C 08 02 A6 */	mflr r0
/* 0000000C 000000D0  3C 60 00 00 */	lis r3, _dtors@ha
/* 00000010 000000D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000014 000000D8  38 03 00 00 */	addi r0, r3, _dtors@l
/* 00000018 000000DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 0000001C 000000E0  7C 1F 03 78 */	mr r31, r0
/* 00000020 000000E4  48 00 00 10 */	b .L_00000030
.L_00000024:
/* 00000024 000000E8  7D 89 03 A6 */	mtctr r12
/* 00000028 000000EC  4E 80 04 21 */	bctrl
/* 0000002C 000000F0  3B FF 00 04 */	addi r31, r31, 0x4
.L_00000030:
/* 00000030 000000F4  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 00000034 000000F8  28 0C 00 00 */	cmplwi r12, 0x0
/* 00000038 000000FC  40 82 FF EC */	bne .L_00000024
/* 0000003C 00000100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000040 00000104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000044 00000108  7C 08 03 A6 */	mtlr r0
/* 00000048 0000010C  38 21 00 10 */	addi r1, r1, 0x10
/* 0000004C 00000110  4E 80 00 20 */	blr
.endfn _epilog

# .text:0x50 | 0x50 | size: 0x9C
.fn _prolog, global
/* 00000050 00000114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000054 00000118  7C 08 02 A6 */	mflr r0
/* 00000058 0000011C  3C 60 00 00 */	lis r3, _ctors@ha
/* 0000005C 00000120  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000060 00000124  38 03 00 00 */	addi r0, r3, _ctors@l
/* 00000064 00000128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000068 0000012C  7C 1F 03 78 */	mr r31, r0
/* 0000006C 00000130  48 00 00 10 */	b .L_0000007C
.L_00000070:
/* 00000070 00000134  7D 89 03 A6 */	mtctr r12
/* 00000074 00000138  4E 80 04 21 */	bctrl
/* 00000078 0000013C  3B FF 00 04 */	addi r31, r31, 0x4
.L_0000007C:
/* 0000007C 00000140  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 00000080 00000144  28 0C 00 00 */	cmplwi r12, 0x0
/* 00000084 00000148  40 82 FF EC */	bne .L_00000070
/* 00000088 0000014C  3C 60 00 00 */	lis r3, str_hom_00_hom_000007f8@ha
/* 0000008C 00000150  3C 80 00 00 */	lis r4, hom_00_init_evt_12_data_1D54@ha
/* 00000090 00000154  38 63 00 00 */	addi r3, r3, str_hom_00_hom_000007f8@l
/* 00000094 00000158  38 84 00 00 */	addi r4, r4, hom_00_init_evt_12_data_1D54@l
/* 00000098 0000015C  4B FF FF 69 */	bl relSetEvtAddr
/* 0000009C 00000160  3C 60 00 00 */	lis r3, str_hom_10_hom_00000800@ha
/* 000000A0 00000164  3C 80 00 00 */	lis r4, hom_10_init_evt_12_data_3984@ha
/* 000000A4 00000168  38 63 00 00 */	addi r3, r3, str_hom_10_hom_00000800@l
/* 000000A8 0000016C  38 84 00 00 */	addi r4, r4, hom_10_init_evt_12_data_3984@l
/* 000000AC 00000170  4B FF FF 55 */	bl relSetEvtAddr
/* 000000B0 00000174  3C 60 00 00 */	lis r3, str_hom_11_hom_00000808@ha
/* 000000B4 00000178  3C 80 00 00 */	lis r4, hom_11_init_evt_12_data_3C08@ha
/* 000000B8 0000017C  38 63 00 00 */	addi r3, r3, str_hom_11_hom_00000808@l
/* 000000BC 00000180  38 84 00 00 */	addi r4, r4, hom_11_init_evt_12_data_3C08@l
/* 000000C0 00000184  4B FF FF 41 */	bl relSetEvtAddr
/* 000000C4 00000188  3C 60 00 00 */	lis r3, str_hom_12_hom_00000810@ha
/* 000000C8 0000018C  3C 80 00 00 */	lis r4, hom_12_init_evt_12_data_3E88@ha
/* 000000CC 00000190  38 63 00 00 */	addi r3, r3, str_hom_12_hom_00000810@l
/* 000000D0 00000194  38 84 00 00 */	addi r4, r4, hom_12_init_evt_12_data_3E88@l
/* 000000D4 00000198  4B FF FF 2D */	bl relSetEvtAddr
/* 000000D8 0000019C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000000DC 000001A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000000E0 000001A4  7C 08 03 A6 */	mtlr r0
/* 000000E4 000001A8  38 21 00 10 */	addi r1, r1, 0x10
/* 000000E8 000001AC  4E 80 00 20 */	blr
.endfn _prolog

# 0x00000000..0x00000020 | size: 0x20
.rodata
.balign 8

# .rodata:0x0 | 0x0 | size: 0x7
.obj str_hom_00_hom_000007f8, local
	.string "hom_00"
.endobj str_hom_00_hom_000007f8

# .rodata:0x7 | 0x7 | size: 0x1
.obj gap_03_00000007_rodata, global
.hidden gap_03_00000007_rodata
	.byte 0x00
.endobj gap_03_00000007_rodata

# .rodata:0x8 | 0x8 | size: 0x7
.obj str_hom_10_hom_00000800, local
	.string "hom_10"
.endobj str_hom_10_hom_00000800

# .rodata:0xF | 0xF | size: 0x1
.obj gap_03_0000000F_rodata, global
.hidden gap_03_0000000F_rodata
	.byte 0x00
.endobj gap_03_0000000F_rodata

# .rodata:0x10 | 0x10 | size: 0x7
.obj str_hom_11_hom_00000808, local
	.string "hom_11"
.endobj str_hom_11_hom_00000808

# .rodata:0x17 | 0x17 | size: 0x1
.obj gap_03_00000017_rodata, global
.hidden gap_03_00000017_rodata
	.byte 0x00
.endobj gap_03_00000017_rodata

# .rodata:0x18 | 0x18 | size: 0x7
.obj str_hom_12_hom_00000810, local
	.string "hom_12"
.endobj str_hom_12_hom_00000810

# .rodata:0x1F | 0x1F | size: 0x1
.obj gap_03_0000001F_rodata, global
.hidden gap_03_0000001F_rodata
	.byte 0x00
.endobj gap_03_0000001F_rodata

# 0x00000000..0x00000060 | size: 0x60
.data
.balign 8

# .data:0x0 | 0x0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x10 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x14 | size: 0x4
.obj gap_04_00000014_data, global
.hidden gap_04_00000014_data
	.4byte 0x00000000
.endobj gap_04_00000014_data

# .data:0x18 | 0x18 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x20 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x24 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x28 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x30 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x34 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x38 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3C | size: 0x4
.obj gap_04_0000003C_data, global
.hidden gap_04_0000003C_data
	.4byte 0x00000000
.endobj gap_04_0000003C_data

# .data:0x40 | 0x40 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x48 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x50 | size: 0x8
.obj _three$localstatic4$sqrtf, local
	.4byte 0x40080000
	.4byte 0x00000000
.endobj _three$localstatic4$sqrtf

# .data:0x58 | 0x58 | size: 0x8
.obj _half$localstatic3$sqrtf, local
	.4byte 0x3FE00000
	.4byte 0x00000000
.endobj _half$localstatic3$sqrtf
