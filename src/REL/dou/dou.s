.include "macros.inc"
.file "dou.o"

# 0x00000000..0x0000023C | size: 0x23C
.text
.balign 4

# .text:0x0 | 0x0 | size: 0x2C
.fn dou_mario_pos_osreport_func, local
/* 00000000 000000C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000004 000000C8  7C 08 02 A6 */	mflr r0
/* 00000008 000000CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000000C 000000D0  48 00 00 61 */	bl marioGetPtr
/* 00000010 000000D4  38 60 00 00 */	li r3, 0x0
/* 00000014 000000D8  48 00 00 59 */	bl keyGetButtonTrg
/* 00000018 000000DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000001C 000000E0  38 60 00 00 */	li r3, 0x0
/* 00000020 000000E4  7C 08 03 A6 */	mtlr r0
/* 00000024 000000E8  38 21 00 10 */	addi r1, r1, 0x10
/* 00000028 000000EC  4E 80 00 20 */	blr
.endfn dou_mario_pos_osreport_func

# .text:0x2C | 0x2C | size: 0x40
.fn evt_dou_normal_puka_5_text_2C, global
/* 0000002C 000000F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000030 000000F4  7C 08 02 A6 */	mflr r0
/* 00000034 000000F8  3C 80 00 00 */	lis r4, dou_normal_puka_data@ha
/* 00000038 000000FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000003C 00000100  38 A4 00 00 */	addi r5, r4, dou_normal_puka_data@l
/* 00000040 00000104  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 00000044 00000108  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 00000048 0000010C  54 00 16 BA */	clrlslwi r0, r0, 28, 2
/* 0000004C 00000110  80 86 00 00 */	lwz r4, 0x0(r6)
/* 00000050 00000114  7C 25 04 2E */	lfsx f1, r5, r0
/* 00000054 00000118  48 00 00 19 */	bl evtSetFloat
/* 00000058 0000011C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000005C 00000120  38 60 00 02 */	li r3, 0x2
/* 00000060 00000124  7C 08 03 A6 */	mtlr r0
/* 00000064 00000128  38 21 00 10 */	addi r1, r1, 0x10
/* 00000068 0000012C  4E 80 00 20 */	blr
.endfn evt_dou_normal_puka_5_text_2C

# .text:0x6C | 0x6C | size: 0x4
.fn _unresolved, global
/* 0000006C 00000130  4E 80 00 20 */	blr
.endfn _unresolved

# .text:0x70 | 0x70 | size: 0x4C
.fn _epilog, global
/* 00000070 00000134  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000074 00000138  7C 08 02 A6 */	mflr r0
/* 00000078 0000013C  3C 60 00 00 */	lis r3, _dtors@ha
/* 0000007C 00000140  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000080 00000144  38 03 00 00 */	addi r0, r3, _dtors@l
/* 00000084 00000148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000088 0000014C  7C 1F 03 78 */	mr r31, r0
/* 0000008C 00000150  48 00 00 10 */	b .L_0000009C
.L_00000090:
/* 00000090 00000154  7D 89 03 A6 */	mtctr r12
/* 00000094 00000158  4E 80 04 21 */	bctrl
/* 00000098 0000015C  3B FF 00 04 */	addi r31, r31, 0x4
.L_0000009C:
/* 0000009C 00000160  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 000000A0 00000164  28 0C 00 00 */	cmplwi r12, 0x0
/* 000000A4 00000168  40 82 FF EC */	bne .L_00000090
/* 000000A8 0000016C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000000AC 00000170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000000B0 00000174  7C 08 03 A6 */	mtlr r0
/* 000000B4 00000178  38 21 00 10 */	addi r1, r1, 0x10
/* 000000B8 0000017C  4E 80 00 20 */	blr
.endfn _epilog

# .text:0xBC | 0xBC | size: 0x180
.fn _prolog, global
/* 000000BC 00000180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000000C0 00000184  7C 08 02 A6 */	mflr r0
/* 000000C4 00000188  3C 60 00 00 */	lis r3, _ctors@ha
/* 000000C8 0000018C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000000CC 00000190  38 03 00 00 */	addi r0, r3, _ctors@l
/* 000000D0 00000194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000000D4 00000198  7C 1F 03 78 */	mr r31, r0
/* 000000D8 0000019C  48 00 00 10 */	b .L_000000E8
.L_000000DC:
/* 000000DC 000001A0  7D 89 03 A6 */	mtctr r12
/* 000000E0 000001A4  4E 80 04 21 */	bctrl
/* 000000E4 000001A8  3B FF 00 04 */	addi r31, r31, 0x4
.L_000000E8:
/* 000000E8 000001AC  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 000000EC 000001B0  28 0C 00 00 */	cmplwi r12, 0x0
/* 000000F0 000001B4  40 82 FF EC */	bne .L_000000DC
/* 000000F4 000001B8  3C 60 00 00 */	lis r3, str_dou_00_dou_00003ca0@ha
/* 000000F8 000001BC  3C 80 00 00 */	lis r4, dou_00_init_evt_5_data_4EC@ha
/* 000000FC 000001C0  38 63 00 00 */	addi r3, r3, str_dou_00_dou_00003ca0@l
/* 00000100 000001C4  38 84 00 00 */	addi r4, r4, dou_00_init_evt_5_data_4EC@l
/* 00000104 000001C8  4B FF FF 69 */	bl relSetEvtAddr
/* 00000108 000001CC  3C 60 00 00 */	lis r3, str_dou_01_dou_00003ca8@ha
/* 0000010C 000001D0  3C 80 00 00 */	lis r4, dou_01_init_evt_5_data_80C@ha
/* 00000110 000001D4  38 63 00 00 */	addi r3, r3, str_dou_01_dou_00003ca8@l
/* 00000114 000001D8  38 84 00 00 */	addi r4, r4, dou_01_init_evt_5_data_80C@l
/* 00000118 000001DC  4B FF FF 55 */	bl relSetEvtAddr
/* 0000011C 000001E0  3C 60 00 00 */	lis r3, str_dou_02_dou_00003cb0@ha
/* 00000120 000001E4  3C 80 00 00 */	lis r4, dou_02_init_evt_5_data_1034@ha
/* 00000124 000001E8  38 63 00 00 */	addi r3, r3, str_dou_02_dou_00003cb0@l
/* 00000128 000001EC  38 84 00 00 */	addi r4, r4, dou_02_init_evt_5_data_1034@l
/* 0000012C 000001F0  4B FF FF 41 */	bl relSetEvtAddr
/* 00000130 000001F4  3C 60 00 00 */	lis r3, str_dou_03_dou_00003cb8@ha
/* 00000134 000001F8  3C 80 00 00 */	lis r4, dou_03_init_evt_5_data_1FE4@ha
/* 00000138 000001FC  38 63 00 00 */	addi r3, r3, str_dou_03_dou_00003cb8@l
/* 0000013C 00000200  38 84 00 00 */	addi r4, r4, dou_03_init_evt_5_data_1FE4@l
/* 00000140 00000204  4B FF FF 2D */	bl relSetEvtAddr
/* 00000144 00000208  3C 60 00 00 */	lis r3, str_dou_04_dou_00003cc0@ha
/* 00000148 0000020C  3C 80 00 00 */	lis r4, dou_04_init_evt_5_data_3D68@ha
/* 0000014C 00000210  38 63 00 00 */	addi r3, r3, str_dou_04_dou_00003cc0@l
/* 00000150 00000214  38 84 00 00 */	addi r4, r4, dou_04_init_evt_5_data_3D68@l
/* 00000154 00000218  4B FF FF 19 */	bl relSetEvtAddr
/* 00000158 0000021C  3C 60 00 00 */	lis r3, str_dou_05_dou_00003cc8@ha
/* 0000015C 00000220  3C 80 00 00 */	lis r4, dou_05_init_evt_5_data_45E0@ha
/* 00000160 00000224  38 63 00 00 */	addi r3, r3, str_dou_05_dou_00003cc8@l
/* 00000164 00000228  38 84 00 00 */	addi r4, r4, dou_05_init_evt_5_data_45E0@l
/* 00000168 0000022C  4B FF FF 05 */	bl relSetEvtAddr
/* 0000016C 00000230  3C 60 00 00 */	lis r3, str_dou_06_dou_00003cd0@ha
/* 00000170 00000234  3C 80 00 00 */	lis r4, dou_06_init_evt_5_data_4904@ha
/* 00000174 00000238  38 63 00 00 */	addi r3, r3, str_dou_06_dou_00003cd0@l
/* 00000178 0000023C  38 84 00 00 */	addi r4, r4, dou_06_init_evt_5_data_4904@l
/* 0000017C 00000240  4B FF FE F1 */	bl relSetEvtAddr
/* 00000180 00000244  3C 60 00 00 */	lis r3, str_dou_07_dou_00003cd8@ha
/* 00000184 00000248  3C 80 00 00 */	lis r4, dou_07_init_evt_5_data_5728@ha
/* 00000188 0000024C  38 63 00 00 */	addi r3, r3, str_dou_07_dou_00003cd8@l
/* 0000018C 00000250  38 84 00 00 */	addi r4, r4, dou_07_init_evt_5_data_5728@l
/* 00000190 00000254  4B FF FE DD */	bl relSetEvtAddr
/* 00000194 00000258  3C 60 00 00 */	lis r3, str_dou_08_dou_00003ce0@ha
/* 00000198 0000025C  3C 80 00 00 */	lis r4, dou_08_init_evt_5_data_5C14@ha
/* 0000019C 00000260  38 63 00 00 */	addi r3, r3, str_dou_08_dou_00003ce0@l
/* 000001A0 00000264  38 84 00 00 */	addi r4, r4, dou_08_init_evt_5_data_5C14@l
/* 000001A4 00000268  4B FF FE C9 */	bl relSetEvtAddr
/* 000001A8 0000026C  3C 60 00 00 */	lis r3, str_dou_09_dou_00003ce8@ha
/* 000001AC 00000270  3C 80 00 00 */	lis r4, dou_09_init_evt_5_data_692C@ha
/* 000001B0 00000274  38 63 00 00 */	addi r3, r3, str_dou_09_dou_00003ce8@l
/* 000001B4 00000278  38 84 00 00 */	addi r4, r4, dou_09_init_evt_5_data_692C@l
/* 000001B8 0000027C  4B FF FE B5 */	bl relSetEvtAddr
/* 000001BC 00000280  3C 60 00 00 */	lis r3, str_dou_10_dou_00003cf0@ha
/* 000001C0 00000284  3C 80 00 00 */	lis r4, dou_10_init_evt_5_data_7EE0@ha
/* 000001C4 00000288  38 63 00 00 */	addi r3, r3, str_dou_10_dou_00003cf0@l
/* 000001C8 0000028C  38 84 00 00 */	addi r4, r4, dou_10_init_evt_5_data_7EE0@l
/* 000001CC 00000290  4B FF FE A1 */	bl relSetEvtAddr
/* 000001D0 00000294  3C 60 00 00 */	lis r3, str_dou_11_dou_00003cf8@ha
/* 000001D4 00000298  3C 80 00 00 */	lis r4, dou_11_init_evt_5_data_E3B8@ha
/* 000001D8 0000029C  38 63 00 00 */	addi r3, r3, str_dou_11_dou_00003cf8@l
/* 000001DC 000002A0  38 84 00 00 */	addi r4, r4, dou_11_init_evt_5_data_E3B8@l
/* 000001E0 000002A4  4B FF FE 8D */	bl relSetEvtAddr
/* 000001E4 000002A8  3C 60 00 00 */	lis r3, str_dou_12_dou_00003d00@ha
/* 000001E8 000002AC  3C 80 00 00 */	lis r4, dou_12_init_evt_5_data_1901C@ha
/* 000001EC 000002B0  38 63 00 00 */	addi r3, r3, str_dou_12_dou_00003d00@l
/* 000001F0 000002B4  38 84 00 00 */	addi r4, r4, dou_12_init_evt_5_data_1901C@l
/* 000001F4 000002B8  4B FF FE 79 */	bl relSetEvtAddr
/* 000001F8 000002BC  3C 60 00 00 */	lis r3, str_dou_13_dou_00003d08@ha
/* 000001FC 000002C0  3C 80 00 00 */	lis r4, dou_13_init_evt_5_data_18D9C@ha
/* 00000200 000002C4  38 63 00 00 */	addi r3, r3, str_dou_13_dou_00003d08@l
/* 00000204 000002C8  38 84 00 00 */	addi r4, r4, dou_13_init_evt_5_data_18D9C@l
/* 00000208 000002CC  4B FF FE 65 */	bl relSetEvtAddr
/* 0000020C 000002D0  3C 60 00 00 */	lis r3, str_dou_dou_00003d10@ha
/* 00000210 000002D4  3C 80 00 00 */	lis r4, btlsetup_dou_tbl_5_data_10720@ha
/* 00000214 000002D8  3C A0 00 00 */	lis r5, btl_dou_setup_no_tbl_5_data_10E90@ha
/* 00000218 000002DC  38 63 00 00 */	addi r3, r3, str_dou_dou_00003d10@l
/* 0000021C 000002E0  38 84 00 00 */	addi r4, r4, btlsetup_dou_tbl_5_data_10720@l
/* 00000220 000002E4  38 A5 00 00 */	addi r5, r5, btl_dou_setup_no_tbl_5_data_10E90@l
/* 00000224 000002E8  4B FF FE 49 */	bl relSetBtlAddr
/* 00000228 000002EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000022C 000002F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000230 000002F4  7C 08 03 A6 */	mtlr r0
/* 00000234 000002F8  38 21 00 10 */	addi r1, r1, 0x10
/* 00000238 000002FC  4E 80 00 20 */	blr
.endfn _prolog

# 0x00000000..0x00000088 | size: 0x88
.rodata
.balign 8

# .rodata:0x0 | 0x0 | size: 0x7
.obj str_しずむ_dou_00003c90, local
	.4byte 0x82B582B8
	.byte 0x82, 0xDE, 0x00
.endobj str_しずむ_dou_00003c90

# .rodata:0x7 | 0x7 | size: 0x1
.obj gap_03_00000007_rodata, global
.hidden gap_03_00000007_rodata
	.byte 0x00
.endobj gap_03_00000007_rodata

# .rodata:0x8 | 0x8 | size: 0x5
.obj str_うく_dou_00003c98, local
	.4byte 0x82A482AD
	.byte 0x00
.endobj str_うく_dou_00003c98

# .rodata:0xD | 0xD | size: 0x3
.obj gap_03_0000000D_rodata, global
.hidden gap_03_0000000D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000000D_rodata

# .rodata:0x10 | 0x10 | size: 0x7
.obj str_dou_00_dou_00003ca0, local
	.string "dou_00"
.endobj str_dou_00_dou_00003ca0

# .rodata:0x17 | 0x17 | size: 0x1
.obj gap_03_00000017_rodata, global
.hidden gap_03_00000017_rodata
	.byte 0x00
.endobj gap_03_00000017_rodata

# .rodata:0x18 | 0x18 | size: 0x7
.obj str_dou_01_dou_00003ca8, local
	.string "dou_01"
.endobj str_dou_01_dou_00003ca8

# .rodata:0x1F | 0x1F | size: 0x1
.obj gap_03_0000001F_rodata, global
.hidden gap_03_0000001F_rodata
	.byte 0x00
.endobj gap_03_0000001F_rodata

# .rodata:0x20 | 0x20 | size: 0x7
.obj str_dou_02_dou_00003cb0, local
	.string "dou_02"
.endobj str_dou_02_dou_00003cb0

# .rodata:0x27 | 0x27 | size: 0x1
.obj gap_03_00000027_rodata, global
.hidden gap_03_00000027_rodata
	.byte 0x00
.endobj gap_03_00000027_rodata

# .rodata:0x28 | 0x28 | size: 0x7
.obj str_dou_03_dou_00003cb8, local
	.string "dou_03"
.endobj str_dou_03_dou_00003cb8

# .rodata:0x2F | 0x2F | size: 0x1
.obj gap_03_0000002F_rodata, global
.hidden gap_03_0000002F_rodata
	.byte 0x00
.endobj gap_03_0000002F_rodata

# .rodata:0x30 | 0x30 | size: 0x7
.obj str_dou_04_dou_00003cc0, local
	.string "dou_04"
.endobj str_dou_04_dou_00003cc0

# .rodata:0x37 | 0x37 | size: 0x1
.obj gap_03_00000037_rodata, global
.hidden gap_03_00000037_rodata
	.byte 0x00
.endobj gap_03_00000037_rodata

# .rodata:0x38 | 0x38 | size: 0x7
.obj str_dou_05_dou_00003cc8, local
	.string "dou_05"
.endobj str_dou_05_dou_00003cc8

# .rodata:0x3F | 0x3F | size: 0x1
.obj gap_03_0000003F_rodata, global
.hidden gap_03_0000003F_rodata
	.byte 0x00
.endobj gap_03_0000003F_rodata

# .rodata:0x40 | 0x40 | size: 0x7
.obj str_dou_06_dou_00003cd0, local
	.string "dou_06"
.endobj str_dou_06_dou_00003cd0

# .rodata:0x47 | 0x47 | size: 0x1
.obj gap_03_00000047_rodata, global
.hidden gap_03_00000047_rodata
	.byte 0x00
.endobj gap_03_00000047_rodata

# .rodata:0x48 | 0x48 | size: 0x7
.obj str_dou_07_dou_00003cd8, local
	.string "dou_07"
.endobj str_dou_07_dou_00003cd8

# .rodata:0x4F | 0x4F | size: 0x1
.obj gap_03_0000004F_rodata, global
.hidden gap_03_0000004F_rodata
	.byte 0x00
.endobj gap_03_0000004F_rodata

# .rodata:0x50 | 0x50 | size: 0x7
.obj str_dou_08_dou_00003ce0, local
	.string "dou_08"
.endobj str_dou_08_dou_00003ce0

# .rodata:0x57 | 0x57 | size: 0x1
.obj gap_03_00000057_rodata, global
.hidden gap_03_00000057_rodata
	.byte 0x00
.endobj gap_03_00000057_rodata

# .rodata:0x58 | 0x58 | size: 0x7
.obj str_dou_09_dou_00003ce8, local
	.string "dou_09"
.endobj str_dou_09_dou_00003ce8

# .rodata:0x5F | 0x5F | size: 0x1
.obj gap_03_0000005F_rodata, global
.hidden gap_03_0000005F_rodata
	.byte 0x00
.endobj gap_03_0000005F_rodata

# .rodata:0x60 | 0x60 | size: 0x7
.obj str_dou_10_dou_00003cf0, local
	.string "dou_10"
.endobj str_dou_10_dou_00003cf0

# .rodata:0x67 | 0x67 | size: 0x1
.obj gap_03_00000067_rodata, global
.hidden gap_03_00000067_rodata
	.byte 0x00
.endobj gap_03_00000067_rodata

# .rodata:0x68 | 0x68 | size: 0x7
.obj str_dou_11_dou_00003cf8, local
	.string "dou_11"
.endobj str_dou_11_dou_00003cf8

# .rodata:0x6F | 0x6F | size: 0x1
.obj gap_03_0000006F_rodata, global
.hidden gap_03_0000006F_rodata
	.byte 0x00
.endobj gap_03_0000006F_rodata

# .rodata:0x70 | 0x70 | size: 0x7
.obj str_dou_12_dou_00003d00, local
	.string "dou_12"
.endobj str_dou_12_dou_00003d00

# .rodata:0x77 | 0x77 | size: 0x1
.obj gap_03_00000077_rodata, global
.hidden gap_03_00000077_rodata
	.byte 0x00
.endobj gap_03_00000077_rodata

# .rodata:0x78 | 0x78 | size: 0x7
.obj str_dou_13_dou_00003d08, local
	.string "dou_13"
.endobj str_dou_13_dou_00003d08

# .rodata:0x7F | 0x7F | size: 0x1
.obj gap_03_0000007F_rodata, global
.hidden gap_03_0000007F_rodata
	.byte 0x00
.endobj gap_03_0000007F_rodata

# .rodata:0x80 | 0x80 | size: 0x4
.obj str_dou_dou_00003d10, local
	.string "dou"
.endobj str_dou_dou_00003d10

# .rodata:0x84 | 0x84 | size: 0x4
.obj gap_03_00000084_rodata, global
.hidden gap_03_00000084_rodata
	.4byte 0x00000000
.endobj gap_03_00000084_rodata

# 0x00000000..0x00000278 | size: 0x278
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

# .data:0x60 | 0x60 | size: 0x40
.obj dou_normal_puka_data, local
	.4byte 0x80000000
	.4byte 0xBF000000
	.4byte 0xBF800000
	.4byte 0xBFC00000
	.4byte 0xC0000000
	.4byte 0xC00CCCCD
	.4byte 0xC0200000
	.4byte 0xC02CCCCD
	.4byte 0xC02CCCCD
	.4byte 0xC02CCCCD
	.4byte 0xC0200000
	.4byte 0xC00CCCCD
	.4byte 0xC0000000
	.4byte 0xBFC00000
	.4byte 0xBF800000
	.4byte 0xBF000000
.endobj dou_normal_puka_data

# .data:0xA0 | 0xA0 | size: 0x4C
.obj dou_normal_puka_5_data_A0, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_dou_normal_puka_5_text_2C
	.4byte 0xFE363C81
	.4byte 0x00020058
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000082
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_normal_puka_5_data_A0

# .data:0xEC | 0xEC | size: 0xD8
.obj dou_puka_event_sub, local
	.4byte 0x00010071
	.4byte str_しずむ_dou_00003c90
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020058
	.4byte 0xFE363C86
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
	.4byte 0xFE363C83
	.4byte 0x00010071
	.4byte str_うく_dou_00003c98
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020058
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_sub

# .data:0x1C4 | 0x1C4 | size: 0xA0
.obj dou_puka_event_5_data_1C4, global
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFF6
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x000000C8
	.4byte 0x0001005E
	.4byte dou_puka_event_sub
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFF8
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000096
	.4byte 0x0001005E
	.4byte dou_puka_event_sub
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFB
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000064
	.4byte 0x0001005E
	.4byte dou_puka_event_sub
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000032
	.4byte 0x0001005E
	.4byte dou_puka_event_sub
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_5_data_1C4

# .data:0x264 | 0x264 | size: 0x10
.obj dou_mario_pos_osreport, local
	.4byte 0x0001005B
	.4byte dou_mario_pos_osreport_func
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_mario_pos_osreport

# .data:0x274 | 0x274 | size: 0x4
.obj gap_04_00000274_data, global
.hidden gap_04_00000274_data
	.4byte 0x00000000
.endobj gap_04_00000274_data
