.include "macros.inc"
.file "gon.o"

# 0x00000000..0x000001E4 | size: 0x1E4
.text
.balign 4

# .text:0x0 | 0x0 | size: 0x194
.fn _prolog, global
/* 00000000 000000E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000004 000000E8  7C 08 02 A6 */	mflr r0
/* 00000008 000000EC  3C 60 00 00 */	lis r3, _ctors@ha
/* 0000000C 000000F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000010 000000F4  38 03 00 00 */	addi r0, r3, _ctors@l
/* 00000014 000000F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000018 000000FC  7C 1F 03 78 */	mr r31, r0
/* 0000001C 00000100  48 00 00 10 */	b .L_0000002C
.L_00000020:
/* 00000020 00000104  7D 89 03 A6 */	mtctr r12
/* 00000024 00000108  4E 80 04 21 */	bctrl
/* 00000028 0000010C  3B FF 00 04 */	addi r31, r31, 0x4
.L_0000002C:
/* 0000002C 00000110  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 00000030 00000114  28 0C 00 00 */	cmplwi r12, 0x0
/* 00000034 00000118  40 82 FF EC */	bne .L_00000020
/* 00000038 0000011C  3C 60 00 00 */	lis r3, str_gon_00_gon_00003dd0@ha
/* 0000003C 00000120  3C 80 00 00 */	lis r4, gon_00_init_evt_8_data_218@ha
/* 00000040 00000124  38 63 00 00 */	addi r3, r3, str_gon_00_gon_00003dd0@l
/* 00000044 00000128  38 84 00 00 */	addi r4, r4, gon_00_init_evt_8_data_218@l
/* 00000048 0000012C  48 00 01 99 */	bl relSetEvtAddr
/* 0000004C 00000130  3C 60 00 00 */	lis r3, str_gon_01_gon_00003dd8@ha
/* 00000050 00000134  3C 80 00 00 */	lis r4, gon_01_init_evt_8_data_1030@ha
/* 00000054 00000138  38 63 00 00 */	addi r3, r3, str_gon_01_gon_00003dd8@l
/* 00000058 0000013C  38 84 00 00 */	addi r4, r4, gon_01_init_evt_8_data_1030@l
/* 0000005C 00000140  48 00 01 85 */	bl relSetEvtAddr
/* 00000060 00000144  3C 60 00 00 */	lis r3, str_gon_02_gon_00003de0@ha
/* 00000064 00000148  3C 80 00 00 */	lis r4, gon_02_init_evt_8_data_1418@ha
/* 00000068 0000014C  38 63 00 00 */	addi r3, r3, str_gon_02_gon_00003de0@l
/* 0000006C 00000150  38 84 00 00 */	addi r4, r4, gon_02_init_evt_8_data_1418@l
/* 00000070 00000154  48 00 01 71 */	bl relSetEvtAddr
/* 00000074 00000158  3C 60 00 00 */	lis r3, str_gon_03_gon_00003de8@ha
/* 00000078 0000015C  3C 80 00 00 */	lis r4, gon_03_init_evt_8_data_2918@ha
/* 0000007C 00000160  38 63 00 00 */	addi r3, r3, str_gon_03_gon_00003de8@l
/* 00000080 00000164  38 84 00 00 */	addi r4, r4, gon_03_init_evt_8_data_2918@l
/* 00000084 00000168  48 00 01 5D */	bl relSetEvtAddr
/* 00000088 0000016C  3C 60 00 00 */	lis r3, str_gon_04_gon_00003df0@ha
/* 0000008C 00000170  3C 80 00 00 */	lis r4, gon_04_init_evt_8_data_50E4@ha
/* 00000090 00000174  38 63 00 00 */	addi r3, r3, str_gon_04_gon_00003df0@l
/* 00000094 00000178  38 84 00 00 */	addi r4, r4, gon_04_init_evt_8_data_50E4@l
/* 00000098 0000017C  48 00 01 49 */	bl relSetEvtAddr
/* 0000009C 00000180  3C 60 00 00 */	lis r3, str_gon_05_gon_00003df8@ha
/* 000000A0 00000184  3C 80 00 00 */	lis r4, gon_05_init_evt_8_data_6BE0@ha
/* 000000A4 00000188  38 63 00 00 */	addi r3, r3, str_gon_05_gon_00003df8@l
/* 000000A8 0000018C  38 84 00 00 */	addi r4, r4, gon_05_init_evt_8_data_6BE0@l
/* 000000AC 00000190  48 00 01 35 */	bl relSetEvtAddr
/* 000000B0 00000194  3C 60 00 00 */	lis r3, str_gon_06_gon_00003e00@ha
/* 000000B4 00000198  3C 80 00 00 */	lis r4, gon_06_init_evt_8_data_8160@ha
/* 000000B8 0000019C  38 63 00 00 */	addi r3, r3, str_gon_06_gon_00003e00@l
/* 000000BC 000001A0  38 84 00 00 */	addi r4, r4, gon_06_init_evt_8_data_8160@l
/* 000000C0 000001A4  48 00 01 21 */	bl relSetEvtAddr
/* 000000C4 000001A8  3C 60 00 00 */	lis r3, str_gon_07_gon_00003e08@ha
/* 000000C8 000001AC  3C 80 00 00 */	lis r4, gon_07_init_evt_8_data_91A0@ha
/* 000000CC 000001B0  38 63 00 00 */	addi r3, r3, str_gon_07_gon_00003e08@l
/* 000000D0 000001B4  38 84 00 00 */	addi r4, r4, gon_07_init_evt_8_data_91A0@l
/* 000000D4 000001B8  48 00 01 0D */	bl relSetEvtAddr
/* 000000D8 000001BC  3C 60 00 00 */	lis r3, str_gon_08_gon_00003e10@ha
/* 000000DC 000001C0  3C 80 00 00 */	lis r4, gon_08_init_evt_8_data_A23C@ha
/* 000000E0 000001C4  38 63 00 00 */	addi r3, r3, str_gon_08_gon_00003e10@l
/* 000000E4 000001C8  38 84 00 00 */	addi r4, r4, gon_08_init_evt_8_data_A23C@l
/* 000000E8 000001CC  48 00 00 F9 */	bl relSetEvtAddr
/* 000000EC 000001D0  3C 60 00 00 */	lis r3, str_gon_09_gon_00003e18@ha
/* 000000F0 000001D4  3C 80 00 00 */	lis r4, gon_09_init_evt_8_data_AF4C@ha
/* 000000F4 000001D8  38 63 00 00 */	addi r3, r3, str_gon_09_gon_00003e18@l
/* 000000F8 000001DC  38 84 00 00 */	addi r4, r4, gon_09_init_evt_8_data_AF4C@l
/* 000000FC 000001E0  48 00 00 E5 */	bl relSetEvtAddr
/* 00000100 000001E4  3C 60 00 00 */	lis r3, str_gon_10_gon_00003e20@ha
/* 00000104 000001E8  3C 80 00 00 */	lis r4, gon_10_init_evt_8_data_B56C@ha
/* 00000108 000001EC  38 63 00 00 */	addi r3, r3, str_gon_10_gon_00003e20@l
/* 0000010C 000001F0  38 84 00 00 */	addi r4, r4, gon_10_init_evt_8_data_B56C@l
/* 00000110 000001F4  48 00 00 D1 */	bl relSetEvtAddr
/* 00000114 000001F8  3C 60 00 00 */	lis r3, str_gon_11_gon_00003e28@ha
/* 00000118 000001FC  3C 80 00 00 */	lis r4, gon_11_init_evt_8_data_D344@ha
/* 0000011C 00000200  38 63 00 00 */	addi r3, r3, str_gon_11_gon_00003e28@l
/* 00000120 00000204  38 84 00 00 */	addi r4, r4, gon_11_init_evt_8_data_D344@l
/* 00000124 00000208  48 00 00 BD */	bl relSetEvtAddr
/* 00000128 0000020C  3C 60 00 00 */	lis r3, str_gon_12_gon_00003e30@ha
/* 0000012C 00000210  3C 80 00 00 */	lis r4, gon_12_init_evt_8_data_E1EC@ha
/* 00000130 00000214  38 63 00 00 */	addi r3, r3, str_gon_12_gon_00003e30@l
/* 00000134 00000218  38 84 00 00 */	addi r4, r4, gon_12_init_evt_8_data_E1EC@l
/* 00000138 0000021C  48 00 00 A9 */	bl relSetEvtAddr
/* 0000013C 00000220  3C 60 00 00 */	lis r3, str_gon_13_gon_00003e38@ha
/* 00000140 00000224  3C 80 00 00 */	lis r4, gon_13_init_evt_8_data_1EBE0@ha
/* 00000144 00000228  38 63 00 00 */	addi r3, r3, str_gon_13_gon_00003e38@l
/* 00000148 0000022C  38 84 00 00 */	addi r4, r4, gon_13_init_evt_8_data_1EBE0@l
/* 0000014C 00000230  48 00 00 95 */	bl relSetEvtAddr
/* 00000150 00000234  3C 60 00 00 */	lis r3, str_gon_bt00_gon_00003e40@ha
/* 00000154 00000238  3C 80 00 00 */	lis r4, gon_bt00_init_evt_8_data_E3B0@ha
/* 00000158 0000023C  38 63 00 00 */	addi r3, r3, str_gon_bt00_gon_00003e40@l
/* 0000015C 00000240  38 84 00 00 */	addi r4, r4, gon_bt00_init_evt_8_data_E3B0@l
/* 00000160 00000244  48 00 00 81 */	bl relSetEvtAddr
/* 00000164 00000248  3C 60 00 00 */	lis r3, str_gon_gon_00003e4c@ha
/* 00000168 0000024C  3C 80 00 00 */	lis r4, btlsetup_gon_tbl_8_data_FC54@ha
/* 0000016C 00000250  3C A0 00 00 */	lis r5, btl_gon_setup_no_tbl_8_data_1022C@ha
/* 00000170 00000254  38 63 00 00 */	addi r3, r3, str_gon_gon_00003e4c@l
/* 00000174 00000258  38 84 00 00 */	addi r4, r4, btlsetup_gon_tbl_8_data_FC54@l
/* 00000178 0000025C  38 A5 00 00 */	addi r5, r5, btl_gon_setup_no_tbl_8_data_1022C@l
/* 0000017C 00000260  48 00 00 65 */	bl relSetBtlAddr
/* 00000180 00000264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000184 00000268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000188 0000026C  7C 08 03 A6 */	mtlr r0
/* 0000018C 00000270  38 21 00 10 */	addi r1, r1, 0x10
/* 00000190 00000274  4E 80 00 20 */	blr
.endfn _prolog

# .text:0x194 | 0x194 | size: 0x4C
.fn _epilog, global
/* 00000194 00000278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000198 0000027C  7C 08 02 A6 */	mflr r0
/* 0000019C 00000280  3C 60 00 00 */	lis r3, _dtors@ha
/* 000001A0 00000284  90 01 00 14 */	stw r0, 0x14(r1)
/* 000001A4 00000288  38 03 00 00 */	addi r0, r3, _dtors@l
/* 000001A8 0000028C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000001AC 00000290  7C 1F 03 78 */	mr r31, r0
/* 000001B0 00000294  48 00 00 10 */	b .L_000001C0
.L_000001B4:
/* 000001B4 00000298  7D 89 03 A6 */	mtctr r12
/* 000001B8 0000029C  4E 80 04 21 */	bctrl
/* 000001BC 000002A0  3B FF 00 04 */	addi r31, r31, 0x4
.L_000001C0:
/* 000001C0 000002A4  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 000001C4 000002A8  28 0C 00 00 */	cmplwi r12, 0x0
/* 000001C8 000002AC  40 82 FF EC */	bne .L_000001B4
/* 000001CC 000002B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000001D0 000002B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000001D4 000002B8  7C 08 03 A6 */	mtlr r0
/* 000001D8 000002BC  38 21 00 10 */	addi r1, r1, 0x10
/* 000001DC 000002C0  4E 80 00 20 */	blr
.endfn _epilog

# .text:0x1E0 | 0x1E0 | size: 0x4
.fn _unresolved, global
/* 000001E0 000002C4  4E 80 00 20 */	blr
.endfn _unresolved

# 0x00000000..0x00000080 | size: 0x80
.rodata
.balign 8

# .rodata:0x0 | 0x0 | size: 0x7
.obj str_gon_00_gon_00003dd0, local
	.string "gon_00"
.endobj str_gon_00_gon_00003dd0

# .rodata:0x7 | 0x7 | size: 0x1
.obj gap_03_00000007_rodata, global
.hidden gap_03_00000007_rodata
	.byte 0x00
.endobj gap_03_00000007_rodata

# .rodata:0x8 | 0x8 | size: 0x7
.obj str_gon_01_gon_00003dd8, local
	.string "gon_01"
.endobj str_gon_01_gon_00003dd8

# .rodata:0xF | 0xF | size: 0x1
.obj gap_03_0000000F_rodata, global
.hidden gap_03_0000000F_rodata
	.byte 0x00
.endobj gap_03_0000000F_rodata

# .rodata:0x10 | 0x10 | size: 0x7
.obj str_gon_02_gon_00003de0, local
	.string "gon_02"
.endobj str_gon_02_gon_00003de0

# .rodata:0x17 | 0x17 | size: 0x1
.obj gap_03_00000017_rodata, global
.hidden gap_03_00000017_rodata
	.byte 0x00
.endobj gap_03_00000017_rodata

# .rodata:0x18 | 0x18 | size: 0x7
.obj str_gon_03_gon_00003de8, local
	.string "gon_03"
.endobj str_gon_03_gon_00003de8

# .rodata:0x1F | 0x1F | size: 0x1
.obj gap_03_0000001F_rodata, global
.hidden gap_03_0000001F_rodata
	.byte 0x00
.endobj gap_03_0000001F_rodata

# .rodata:0x20 | 0x20 | size: 0x7
.obj str_gon_04_gon_00003df0, local
	.string "gon_04"
.endobj str_gon_04_gon_00003df0

# .rodata:0x27 | 0x27 | size: 0x1
.obj gap_03_00000027_rodata, global
.hidden gap_03_00000027_rodata
	.byte 0x00
.endobj gap_03_00000027_rodata

# .rodata:0x28 | 0x28 | size: 0x7
.obj str_gon_05_gon_00003df8, local
	.string "gon_05"
.endobj str_gon_05_gon_00003df8

# .rodata:0x2F | 0x2F | size: 0x1
.obj gap_03_0000002F_rodata, global
.hidden gap_03_0000002F_rodata
	.byte 0x00
.endobj gap_03_0000002F_rodata

# .rodata:0x30 | 0x30 | size: 0x7
.obj str_gon_06_gon_00003e00, local
	.string "gon_06"
.endobj str_gon_06_gon_00003e00

# .rodata:0x37 | 0x37 | size: 0x1
.obj gap_03_00000037_rodata, global
.hidden gap_03_00000037_rodata
	.byte 0x00
.endobj gap_03_00000037_rodata

# .rodata:0x38 | 0x38 | size: 0x7
.obj str_gon_07_gon_00003e08, local
	.string "gon_07"
.endobj str_gon_07_gon_00003e08

# .rodata:0x3F | 0x3F | size: 0x1
.obj gap_03_0000003F_rodata, global
.hidden gap_03_0000003F_rodata
	.byte 0x00
.endobj gap_03_0000003F_rodata

# .rodata:0x40 | 0x40 | size: 0x7
.obj str_gon_08_gon_00003e10, local
	.string "gon_08"
.endobj str_gon_08_gon_00003e10

# .rodata:0x47 | 0x47 | size: 0x1
.obj gap_03_00000047_rodata, global
.hidden gap_03_00000047_rodata
	.byte 0x00
.endobj gap_03_00000047_rodata

# .rodata:0x48 | 0x48 | size: 0x7
.obj str_gon_09_gon_00003e18, local
	.string "gon_09"
.endobj str_gon_09_gon_00003e18

# .rodata:0x4F | 0x4F | size: 0x1
.obj gap_03_0000004F_rodata, global
.hidden gap_03_0000004F_rodata
	.byte 0x00
.endobj gap_03_0000004F_rodata

# .rodata:0x50 | 0x50 | size: 0x7
.obj str_gon_10_gon_00003e20, local
	.string "gon_10"
.endobj str_gon_10_gon_00003e20

# .rodata:0x57 | 0x57 | size: 0x1
.obj gap_03_00000057_rodata, global
.hidden gap_03_00000057_rodata
	.byte 0x00
.endobj gap_03_00000057_rodata

# .rodata:0x58 | 0x58 | size: 0x7
.obj str_gon_11_gon_00003e28, local
	.string "gon_11"
.endobj str_gon_11_gon_00003e28

# .rodata:0x5F | 0x5F | size: 0x1
.obj gap_03_0000005F_rodata, global
.hidden gap_03_0000005F_rodata
	.byte 0x00
.endobj gap_03_0000005F_rodata

# .rodata:0x60 | 0x60 | size: 0x7
.obj str_gon_12_gon_00003e30, local
	.string "gon_12"
.endobj str_gon_12_gon_00003e30

# .rodata:0x67 | 0x67 | size: 0x1
.obj gap_03_00000067_rodata, global
.hidden gap_03_00000067_rodata
	.byte 0x00
.endobj gap_03_00000067_rodata

# .rodata:0x68 | 0x68 | size: 0x7
.obj str_gon_13_gon_00003e38, local
	.string "gon_13"
.endobj str_gon_13_gon_00003e38

# .rodata:0x6F | 0x6F | size: 0x1
.obj gap_03_0000006F_rodata, global
.hidden gap_03_0000006F_rodata
	.byte 0x00
.endobj gap_03_0000006F_rodata

# .rodata:0x70 | 0x70 | size: 0x9
.obj str_gon_bt00_gon_00003e40, local
	.string "gon_bt00"
.endobj str_gon_bt00_gon_00003e40

# .rodata:0x79 | 0x79 | size: 0x3
.obj gap_03_00000079_rodata, global
.hidden gap_03_00000079_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000079_rodata

# .rodata:0x7C | 0x7C | size: 0x4
.obj str_gon_gon_00003e4c, local
	.string "gon"
.endobj str_gon_gon_00003e4c

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
