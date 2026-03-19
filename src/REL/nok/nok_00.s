.include "macros.inc"
.file "nok_00.o"

# 0x00000228..0x000003C4 | size: 0x19C
.text
.balign 4

# .text:0x0 | 0x228 | size: 0x4C
.fn nok_stg2_013_cb, local
/* 00000228 000002EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000022C 000002F0  7C 08 02 A6 */	mflr r0
/* 00000230 000002F4  2C 03 00 05 */	cmpwi r3, 0x5
/* 00000234 000002F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000238 000002FC  80 64 00 00 */	lwz r3, 0x0(r4)
/* 0000023C 00000300  41 82 00 08 */	beq .L_00000244
/* 00000240 00000304  48 00 00 24 */	b .L_00000264
.L_00000244:
/* 00000244 00000308  80 03 00 10 */	lwz r0, 0x10(r3)
/* 00000248 0000030C  2C 00 00 31 */	cmpwi r0, 0x31
/* 0000024C 00000310  40 81 00 18 */	ble .L_00000264
/* 00000250 00000314  3C 80 F9 72 */	lis r4, 0xf972
/* 00000254 00000318  38 60 00 00 */	li r3, 0x0
/* 00000258 0000031C  38 84 88 82 */	subi r4, r4, 0x777e
/* 0000025C 00000320  38 A0 00 01 */	li r5, 0x1
/* 00000260 00000324  4B FF FE E9 */	bl evtSetValue
.L_00000264:
/* 00000264 00000328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000268 0000032C  7C 08 03 A6 */	mtlr r0
/* 0000026C 00000330  38 21 00 10 */	addi r1, r1, 0x10
/* 00000270 00000334  4E 80 00 20 */	blr
.endfn nok_stg2_013_cb

# .text:0x4C | 0x274 | size: 0x20
.fn pposter_nok_on, local
/* 00000274 00000338  3C 80 00 00 */	lis r4, poster@ha
/* 00000278 0000033C  38 60 00 02 */	li r3, 0x2
/* 0000027C 00000340  38 84 00 00 */	addi r4, r4, poster@l
/* 00000280 00000344  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00000284 00000348  80 04 00 00 */	lwz r0, 0x0(r4)
/* 00000288 0000034C  60 00 00 01 */	ori r0, r0, 0x1
/* 0000028C 00000350  90 04 00 00 */	stw r0, 0x0(r4)
/* 00000290 00000354  4E 80 00 20 */	blr
.endfn pposter_nok_on

# .text:0x6C | 0x294 | size: 0xC8
.fn pposter_init, local
/* 00000294 00000358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000298 0000035C  7C 08 02 A6 */	mflr r0
/* 0000029C 00000360  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 000002A0 00000364  38 80 00 0C */	li r4, 0xc
/* 000002A4 00000368  90 01 00 14 */	stw r0, 0x14(r1)
/* 000002A8 0000036C  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 000002AC 00000370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000002B0 00000374  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000002B4 00000378  4B FF FE 95 */	bl _mapAlloc
/* 000002B8 0000037C  3C A0 00 00 */	lis r5, poster@ha
/* 000002BC 00000380  38 80 00 00 */	li r4, 0x0
/* 000002C0 00000384  38 C5 00 00 */	addi r6, r5, poster@l
/* 000002C4 00000388  38 A0 00 0C */	li r5, 0xc
/* 000002C8 0000038C  90 66 00 00 */	stw r3, 0x0(r6)
/* 000002CC 00000390  4B FF FE 7D */	bl memset
/* 000002D0 00000394  3C 60 00 00 */	lis r3, str_poster_nok_000012c4@ha
/* 000002D4 00000398  38 63 00 00 */	addi r3, r3, str_poster_nok_000012c4@l
/* 000002D8 0000039C  4B FF FE 71 */	bl npcNameToPtr
/* 000002DC 000003A0  3C 80 00 00 */	lis r4, str_pPlaneShape2_nok_000015ec@ha
/* 000002E0 000003A4  80 63 01 04 */	lwz r3, 0x104(r3)
/* 000002E4 000003A8  38 84 00 00 */	addi r4, r4, str_pPlaneShape2_nok_000015ec@l
/* 000002E8 000003AC  4B FF FE 61 */	bl animPoseGetShapeIdx
/* 000002EC 000003B0  3C A0 00 00 */	lis r5, poster@ha
/* 000002F0 000003B4  3C 80 00 00 */	lis r4, str_ノコノコA_nok_00000dd8@ha
/* 000002F4 000003B8  38 A5 00 00 */	addi r5, r5, poster@l
/* 000002F8 000003BC  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 000002FC 000003C0  38 04 00 00 */	addi r0, r4, str_ノコノコA_nok_00000dd8@l
/* 00000300 000003C4  90 65 00 08 */	stw r3, 0x8(r5)
/* 00000304 000003C8  7C 03 03 78 */	mr r3, r0
/* 00000308 000003CC  4B FF FE 41 */	bl npcNameToPtr
/* 0000030C 000003D0  7C 7F 1B 78 */	mr r31, r3
/* 00000310 000003D4  3C 60 00 00 */	lis r3, str_locator7_nok_000015fc@ha
/* 00000314 000003D8  38 83 00 00 */	addi r4, r3, str_locator7_nok_000015fc@l
/* 00000318 000003DC  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 0000031C 000003E0  4B FF FE 2D */	bl animPoseGetGroupIdx
/* 00000320 000003E4  3C A0 00 00 */	lis r5, poster@ha
/* 00000324 000003E8  3C 80 00 00 */	lis r4, draw_poster@ha
/* 00000328 000003EC  38 C5 00 00 */	addi r6, r5, poster@l
/* 0000032C 000003F0  80 C6 00 00 */	lwz r6, 0x0(r6)
/* 00000330 000003F4  38 A0 00 00 */	li r5, 0x0
/* 00000334 000003F8  38 84 00 00 */	addi r4, r4, draw_poster@l
/* 00000338 000003FC  90 66 00 04 */	stw r3, 0x4(r6)
/* 0000033C 00000400  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 00000340 00000404  4B FF FE 09 */	bl animPoseSetDispCallBack
/* 00000344 00000408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000348 0000040C  38 60 00 02 */	li r3, 0x2
/* 0000034C 00000410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000350 00000414  7C 08 03 A6 */	mtlr r0
/* 00000354 00000418  38 21 00 10 */	addi r1, r1, 0x10
/* 00000358 0000041C  4E 80 00 20 */	blr
.endfn pposter_init

# .text:0x134 | 0x35C | size: 0x68
.fn draw_poster, local
/* 0000035C 00000420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000360 00000424  7C 08 02 A6 */	mflr r0
/* 00000364 00000428  3C 60 00 00 */	lis r3, str_poster_nok_000012c4@ha
/* 00000368 0000042C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000036C 00000430  38 63 00 00 */	addi r3, r3, str_poster_nok_000012c4@l
/* 00000370 00000434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000374 00000438  7C 9F 23 78 */	mr r31, r4
/* 00000378 0000043C  4B FF FD D1 */	bl npcNameToPtr
/* 0000037C 00000440  3C 80 00 00 */	lis r4, poster@ha
/* 00000380 00000444  38 84 00 00 */	addi r4, r4, poster@l
/* 00000384 00000448  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00000388 0000044C  80 04 00 04 */	lwz r0, 0x4(r4)
/* 0000038C 00000450  7C 1F 00 00 */	cmpw r31, r0
/* 00000390 00000454  40 82 00 20 */	bne .L_000003B0
/* 00000394 00000458  80 04 00 00 */	lwz r0, 0x0(r4)
/* 00000398 0000045C  54 00 07 FF */	clrlwi. r0, r0, 31
/* 0000039C 00000460  40 82 00 08 */	bne .L_000003A4
/* 000003A0 00000464  48 00 00 10 */	b .L_000003B0
.L_000003A4:
/* 000003A4 00000468  80 63 01 04 */	lwz r3, 0x104(r3)
/* 000003A8 0000046C  80 84 00 08 */	lwz r4, 0x8(r4)
/* 000003AC 00000470  4B FF FD 9D */	bl animPoseDrawShape
.L_000003B0:
/* 000003B0 00000474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000003B4 00000478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000003B8 0000047C  7C 08 03 A6 */	mtlr r0
/* 000003BC 00000480  38 21 00 10 */	addi r1, r1, 0x10
/* 000003C0 00000484  4E 80 00 20 */	blr
.endfn draw_poster

# 0x00000030..0x00000BA8 | size: 0xB78
.rodata
.balign 8

# .rodata:0x0 | 0x30 | size: 0x3
.obj str_me_nok_00000a90, local
	.string "me"
.endobj str_me_nok_00000a90

# .rodata:0x3 | 0x33 | size: 0x1
.obj gap_03_00000033_rodata, global
.hidden gap_03_00000033_rodata
	.byte 0x00
.endobj gap_03_00000033_rodata

# .rodata:0x4 | 0x34 | size: 0xC
.obj str_stg1_nok_02_nok_00000a94, local
	.string "stg1_nok_02"
.endobj str_stg1_nok_02_nok_00000a94

# .rodata:0x10 | 0x40 | size: 0xF
.obj str_stg1_nok_02_01_nok_00000aa0, local
	.string "stg1_nok_02_01"
.endobj str_stg1_nok_02_01_nok_00000aa0

# .rodata:0x1F | 0x4F | size: 0x1
.obj gap_03_0000004F_rodata, global
.hidden gap_03_0000004F_rodata
	.byte 0x00
.endobj gap_03_0000004F_rodata

# .rodata:0x20 | 0x50 | size: 0xC
.obj str_stg1_nok_03_nok_00000ab0, local
	.string "stg1_nok_03"
.endobj str_stg1_nok_03_nok_00000ab0

# .rodata:0x2C | 0x5C | size: 0xC
.obj str_stg7_nok_01_nok_00000abc, local
	.string "stg7_nok_01"
.endobj str_stg7_nok_01_nok_00000abc

# .rodata:0x38 | 0x68 | size: 0xE
.obj str_stg1_nok_03_1_nok_00000ac8, local
	.string "stg1_nok_03_1"
.endobj str_stg1_nok_03_1_nok_00000ac8

# .rodata:0x46 | 0x76 | size: 0x2
.obj gap_03_00000076_rodata, global
.hidden gap_03_00000076_rodata
	.2byte 0x0000
.endobj gap_03_00000076_rodata

# .rodata:0x48 | 0x78 | size: 0xE
.obj str_stg7_nok_01_1_nok_00000ad8, local
	.string "stg7_nok_01_1"
.endobj str_stg7_nok_01_1_nok_00000ad8

# .rodata:0x56 | 0x86 | size: 0x2
.obj gap_03_00000086_rodata, global
.hidden gap_03_00000086_rodata
	.2byte 0x0000
.endobj gap_03_00000086_rodata

# .rodata:0x58 | 0x88 | size: 0xC
.obj str_stg1_nok_04_nok_00000ae8, local
	.string "stg1_nok_04"
.endobj str_stg1_nok_04_nok_00000ae8

# .rodata:0x64 | 0x94 | size: 0xF
.obj str_stg1_nok_04_01_nok_00000af4, local
	.string "stg1_nok_04_01"
.endobj str_stg1_nok_04_01_nok_00000af4

# .rodata:0x73 | 0xA3 | size: 0x1
.obj gap_03_000000A3_rodata, global
.hidden gap_03_000000A3_rodata
	.byte 0x00
.endobj gap_03_000000A3_rodata

# .rodata:0x74 | 0xA4 | size: 0xC
.obj str_stg1_nok_05_nok_00000b04, local
	.string "stg1_nok_05"
.endobj str_stg1_nok_05_nok_00000b04

# .rodata:0x80 | 0xB0 | size: 0xE
.obj str_stg1_nok_05_1_nok_00000b10, local
	.string "stg1_nok_05_1"
.endobj str_stg1_nok_05_1_nok_00000b10

# .rodata:0x8E | 0xBE | size: 0x2
.obj gap_03_000000BE_rodata, global
.hidden gap_03_000000BE_rodata
	.2byte 0x0000
.endobj gap_03_000000BE_rodata

# .rodata:0x90 | 0xC0 | size: 0x10
.obj str_stg1_nok_05_1_1_nok_00000b20, local
	.string "stg1_nok_05_1_1"
.endobj str_stg1_nok_05_1_1_nok_00000b20

# .rodata:0xA0 | 0xD0 | size: 0x8
.obj str_KNP_O_1_nok_00000b30, local
	.string "KNP_O_1"
.endobj str_KNP_O_1_nok_00000b30

# .rodata:0xA8 | 0xD8 | size: 0x20
.obj str_イャーン_さわらないで！！_key_nok_00000b38, local
	.4byte 0x83438383
	.4byte 0x815B8393
	.4byte 0x814082B3
	.4byte 0x82ED82E7
	.4byte 0x82C882A2
	.4byte 0x82C58149
	.4byte 0x81493C6B
	.4byte 0x65793E00
.endobj str_イャーン_さわらないで！！_key_nok_00000b38

# .rodata:0xC8 | 0xF8 | size: 0x8
.obj str_KNP_S_1_nok_00000b58, local
	.string "KNP_S_1"
.endobj str_KNP_S_1_nok_00000b58

# .rodata:0xD0 | 0x100 | size: 0xC
.obj str_stg1_nok_06_nok_00000b60, local
	.string "stg1_nok_06"
.endobj str_stg1_nok_06_nok_00000b60

# .rodata:0xDC | 0x10C | size: 0xF
.obj str_stg1_nok_06_01_nok_00000b6c, local
	.string "stg1_nok_06_01"
.endobj str_stg1_nok_06_01_nok_00000b6c

# .rodata:0xEB | 0x11B | size: 0x1
.obj gap_03_0000011B_rodata, global
.hidden gap_03_0000011B_rodata
	.byte 0x00
.endobj gap_03_0000011B_rodata

# .rodata:0xEC | 0x11C | size: 0xC
.obj str_stg1_nok_07_nok_00000b7c, local
	.string "stg1_nok_07"
.endobj str_stg1_nok_07_nok_00000b7c

# .rodata:0xF8 | 0x128 | size: 0xE
.obj str_stg1_nok_07_1_nok_00000b88, local
	.string "stg1_nok_07_1"
.endobj str_stg1_nok_07_1_nok_00000b88

# .rodata:0x106 | 0x136 | size: 0x2
.obj gap_03_00000136_rodata, global
.hidden gap_03_00000136_rodata
	.2byte 0x0000
.endobj gap_03_00000136_rodata

# .rodata:0x108 | 0x138 | size: 0x10
.obj str_stg1_nok_07_1_1_nok_00000b98, local
	.string "stg1_nok_07_1_1"
.endobj str_stg1_nok_07_1_1_nok_00000b98

# .rodata:0x118 | 0x148 | size: 0xC
.obj str_stg1_nok_08_nok_00000ba8, local
	.string "stg1_nok_08"
.endobj str_stg1_nok_08_nok_00000ba8

# .rodata:0x124 | 0x154 | size: 0xF
.obj str_stg1_nok_08_01_nok_00000bb4, local
	.string "stg1_nok_08_01"
.endobj str_stg1_nok_08_01_nok_00000bb4

# .rodata:0x133 | 0x163 | size: 0x1
.obj gap_03_00000163_rodata, global
.hidden gap_03_00000163_rodata
	.byte 0x00
.endobj gap_03_00000163_rodata

# .rodata:0x134 | 0x164 | size: 0xC
.obj str_stg1_nok_09_nok_00000bc4, local
	.string "stg1_nok_09"
.endobj str_stg1_nok_09_nok_00000bc4

# .rodata:0x140 | 0x170 | size: 0x12
.obj str_stg1_nok_09_yesno_nok_00000bd0, local
	.string "stg1_nok_09_yesno"
.endobj str_stg1_nok_09_yesno_nok_00000bd0

# .rodata:0x152 | 0x182 | size: 0x2
.obj gap_03_00000182_rodata, global
.hidden gap_03_00000182_rodata
	.2byte 0x0000
.endobj gap_03_00000182_rodata

# .rodata:0x154 | 0x184 | size: 0xF
.obj str_stg1_nok_09_01_nok_00000be4, local
	.string "stg1_nok_09_01"
.endobj str_stg1_nok_09_01_nok_00000be4

# .rodata:0x163 | 0x193 | size: 0x1
.obj gap_03_00000193_rodata, global
.hidden gap_03_00000193_rodata
	.byte 0x00
.endobj gap_03_00000193_rodata

# .rodata:0x164 | 0x194 | size: 0x11
.obj str_stg1_nok_09_01_1_nok_00000bf4, local
	.string "stg1_nok_09_01_1"
.endobj str_stg1_nok_09_01_1_nok_00000bf4

# .rodata:0x175 | 0x1A5 | size: 0x3
.obj gap_03_000001A5_rodata, global
.hidden gap_03_000001A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000001A5_rodata

# .rodata:0x178 | 0x1A8 | size: 0x13
.obj str_stg1_nok_09_01_1_1_nok_00000c08, local
	.string "stg1_nok_09_01_1_1"
.endobj str_stg1_nok_09_01_1_1_nok_00000c08

# .rodata:0x18B | 0x1BB | size: 0x1
.obj gap_03_000001BB_rodata, global
.hidden gap_03_000001BB_rodata
	.byte 0x00
.endobj gap_03_000001BB_rodata

# .rodata:0x18C | 0x1BC | size: 0xC
.obj str_irai_15_001_nok_00000c1c, local
	.string "irai_15_001"
.endobj str_irai_15_001_nok_00000c1c

# .rodata:0x198 | 0x1C8 | size: 0xC
.obj str_irai_15_002_nok_00000c28, local
	.string "irai_15_002"
.endobj str_irai_15_002_nok_00000c28

# .rodata:0x1A4 | 0x1D4 | size: 0xC
.obj str_irai_15_003_nok_00000c34, local
	.string "irai_15_003"
.endobj str_irai_15_003_nok_00000c34

# .rodata:0x1B0 | 0x1E0 | size: 0xC
.obj str_irai_15_004_nok_00000c40, local
	.string "irai_15_004"
.endobj str_irai_15_004_nok_00000c40

# .rodata:0x1BC | 0x1EC | size: 0xC
.obj str_irai_15_008_nok_00000c4c, local
	.string "irai_15_008"
.endobj str_irai_15_008_nok_00000c4c

# .rodata:0x1C8 | 0x1F8 | size: 0xC
.obj str_irai_15_005_nok_00000c58, local
	.string "irai_15_005"
.endobj str_irai_15_005_nok_00000c58

# .rodata:0x1D4 | 0x204 | size: 0x3
.obj str_df_nok_00000c64, local
	.string "df"
.endobj str_df_nok_00000c64

# .rodata:0x1D7 | 0x207 | size: 0x1
.obj gap_03_00000207_rodata, global
.hidden gap_03_00000207_rodata
	.byte 0x00
.endobj gap_03_00000207_rodata

# .rodata:0x1D8 | 0x208 | size: 0xC
.obj str_irai_15_007_nok_00000c68, local
	.string "irai_15_007"
.endobj str_irai_15_007_nok_00000c68

# .rodata:0x1E4 | 0x214 | size: 0x13
.obj str_sys_request_finish_nok_00000c74, local
	.string "sys_request_finish"
.endobj str_sys_request_finish_nok_00000c74

# .rodata:0x1F7 | 0x227 | size: 0x1
.obj gap_03_00000227_rodata, global
.hidden gap_03_00000227_rodata
	.byte 0x00
.endobj gap_03_00000227_rodata

# .rodata:0x1F8 | 0x228 | size: 0xC
.obj str_irai_15_009_nok_00000c88, local
	.string "irai_15_009"
.endobj str_irai_15_009_nok_00000c88

# .rodata:0x204 | 0x234 | size: 0xC
.obj str_irai_15_010_nok_00000c94, local
	.string "irai_15_010"
.endobj str_irai_15_010_nok_00000c94

# .rodata:0x210 | 0x240 | size: 0x10
.obj str_irai_15_010_sel_nok_00000ca0, local
	.string "irai_15_010_sel"
.endobj str_irai_15_010_sel_nok_00000ca0

# .rodata:0x220 | 0x250 | size: 0xC
.obj str_irai_15_012_nok_00000cb0, local
	.string "irai_15_012"
.endobj str_irai_15_012_nok_00000cb0

# .rodata:0x22C | 0x25C | size: 0xC
.obj str_irai_15_013_nok_00000cbc, local
	.string "irai_15_013"
.endobj str_irai_15_013_nok_00000cbc

# .rodata:0x238 | 0x268 | size: 0xC
.obj str_irai_15_015_nok_00000cc8, local
	.string "irai_15_015"
.endobj str_irai_15_015_nok_00000cc8

# .rodata:0x244 | 0x274 | size: 0xC
.obj str_irai_15_016_nok_00000cd4, local
	.string "irai_15_016"
.endobj str_irai_15_016_nok_00000cd4

# .rodata:0x250 | 0x280 | size: 0xC
.obj str_stg1_nok_17_nok_00000ce0, local
	.string "stg1_nok_17"
.endobj str_stg1_nok_17_nok_00000ce0

# .rodata:0x25C | 0x28C | size: 0xF
.obj str_stg1_nok_17_01_nok_00000cec, local
	.string "stg1_nok_17_01"
.endobj str_stg1_nok_17_01_nok_00000cec

# .rodata:0x26B | 0x29B | size: 0x1
.obj gap_03_0000029B_rodata, global
.hidden gap_03_0000029B_rodata
	.byte 0x00
.endobj gap_03_0000029B_rodata

# .rodata:0x26C | 0x29C | size: 0xC
.obj str_stg1_nok_18_nok_00000cfc, local
	.string "stg1_nok_18"
.endobj str_stg1_nok_18_nok_00000cfc

# .rodata:0x278 | 0x2A8 | size: 0xE
.obj str_stg1_nok_18_1_nok_00000d08, local
	.string "stg1_nok_18_1"
.endobj str_stg1_nok_18_1_nok_00000d08

# .rodata:0x286 | 0x2B6 | size: 0x2
.obj gap_03_000002B6_rodata, global
.hidden gap_03_000002B6_rodata
	.2byte 0x0000
.endobj gap_03_000002B6_rodata

# .rodata:0x288 | 0x2B8 | size: 0x10
.obj str_stg1_nok_18_1_1_nok_00000d18, local
	.string "stg1_nok_18_1_1"
.endobj str_stg1_nok_18_1_1_nok_00000d18

# .rodata:0x298 | 0x2C8 | size: 0xF
.obj str_stg1_nok_19_01_nok_00000d28, local
	.string "stg1_nok_19_01"
.endobj str_stg1_nok_19_01_nok_00000d28

# .rodata:0x2A7 | 0x2D7 | size: 0x1
.obj gap_03_000002D7_rodata, global
.hidden gap_03_000002D7_rodata
	.byte 0x00
.endobj gap_03_000002D7_rodata

# .rodata:0x2A8 | 0x2D8 | size: 0xF
.obj str_stg1_nok_19_02_nok_00000d38, local
	.string "stg1_nok_19_02"
.endobj str_stg1_nok_19_02_nok_00000d38

# .rodata:0x2B7 | 0x2E7 | size: 0x1
.obj gap_03_000002E7_rodata, global
.hidden gap_03_000002E7_rodata
	.byte 0x00
.endobj gap_03_000002E7_rodata

# .rodata:0x2B8 | 0x2E8 | size: 0xF
.obj str_stg1_nok_19_03_nok_00000d48, local
	.string "stg1_nok_19_03"
.endobj str_stg1_nok_19_03_nok_00000d48

# .rodata:0x2C7 | 0x2F7 | size: 0x1
.obj gap_03_000002F7_rodata, global
.hidden gap_03_000002F7_rodata
	.byte 0x00
.endobj gap_03_000002F7_rodata

# .rodata:0x2C8 | 0x2F8 | size: 0xF
.obj str_stg1_nok_19_04_nok_00000d58, local
	.string "stg1_nok_19_04"
.endobj str_stg1_nok_19_04_nok_00000d58

# .rodata:0x2D7 | 0x307 | size: 0x1
.obj gap_03_00000307_rodata, global
.hidden gap_03_00000307_rodata
	.byte 0x00
.endobj gap_03_00000307_rodata

# .rodata:0x2D8 | 0x308 | size: 0xC
.obj str_stg1_nok_10_nok_00000d68, local
	.string "stg1_nok_10"
.endobj str_stg1_nok_10_nok_00000d68

# .rodata:0x2E4 | 0x314 | size: 0xC
.obj str_stg1_nok_11_nok_00000d74, local
	.string "stg1_nok_11"
.endobj str_stg1_nok_11_nok_00000d74

# .rodata:0x2F0 | 0x320 | size: 0x6
.obj str_party_nok_00000d80, local
	.string "party"
.endobj str_party_nok_00000d80

# .rodata:0x2F6 | 0x326 | size: 0x2
.obj gap_03_00000326_rodata, global
.hidden gap_03_00000326_rodata
	.2byte 0x0000
.endobj gap_03_00000326_rodata

# .rodata:0x2F8 | 0x328 | size: 0xC
.obj str_stg1_nok_12_nok_00000d88, local
	.string "stg1_nok_12"
.endobj str_stg1_nok_12_nok_00000d88

# .rodata:0x304 | 0x334 | size: 0xC
.obj str_stg1_nok_13_nok_00000d94, local
	.string "stg1_nok_13"
.endobj str_stg1_nok_13_nok_00000d94

# .rodata:0x310 | 0x340 | size: 0xC
.obj str_stg1_nok_14_nok_00000da0, local
	.string "stg1_nok_14"
.endobj str_stg1_nok_14_nok_00000da0

# .rodata:0x31C | 0x34C | size: 0xC
.obj str_stg1_nok_15_nok_00000dac, local
	.string "stg1_nok_15"
.endobj str_stg1_nok_15_nok_00000dac

# .rodata:0x328 | 0x358 | size: 0xC
.obj str_stg1_nok_16_nok_00000db8, local
	.string "stg1_nok_16"
.endobj str_stg1_nok_16_nok_00000db8

# .rodata:0x334 | 0x364 | size: 0x9
.obj str_キザ野郎_nok_00000dc4, local
	.4byte 0x834C8355
	.4byte 0x96EC9859
	.byte 0x00
.endobj str_キザ野郎_nok_00000dc4

# .rodata:0x33D | 0x36D | size: 0x3
.obj gap_03_0000036D_rodata, global
.hidden gap_03_0000036D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000036D_rodata

# .rodata:0x340 | 0x370 | size: 0x7
.obj str_c_kiza_nok_00000dd0, local
	.string "c_kiza"
.endobj str_c_kiza_nok_00000dd0

# .rodata:0x347 | 0x377 | size: 0x1
.obj gap_03_00000377_rodata, global
.hidden gap_03_00000377_rodata
	.byte 0x00
.endobj gap_03_00000377_rodata

# .rodata:0x348 | 0x378 | size: 0xA
.obj str_ノコノコA_nok_00000dd8, local
	.4byte 0x836D8352
	.4byte 0x836D8352
	.2byte 0x4100
.endobj str_ノコノコA_nok_00000dd8

# .rodata:0x352 | 0x382 | size: 0x2
.obj gap_03_00000382_rodata, global
.hidden gap_03_00000382_rodata
	.2byte 0x0000
.endobj gap_03_00000382_rodata

# .rodata:0x354 | 0x384 | size: 0xA
.obj str_ノコノコB_nok_00000de4, local
	.4byte 0x836D8352
	.4byte 0x836D8352
	.2byte 0x4200
.endobj str_ノコノコB_nok_00000de4

# .rodata:0x35E | 0x38E | size: 0x2
.obj gap_03_0000038E_rodata, global
.hidden gap_03_0000038E_rodata
	.2byte 0x0000
.endobj gap_03_0000038E_rodata

# .rodata:0x360 | 0x390 | size: 0xA
.obj str_ノコノコC_nok_00000df0, local
	.4byte 0x836D8352
	.4byte 0x836D8352
	.2byte 0x4300
.endobj str_ノコノコC_nok_00000df0

# .rodata:0x36A | 0x39A | size: 0x2
.obj gap_03_0000039A_rodata, global
.hidden gap_03_0000039A_rodata
	.2byte 0x0000
.endobj gap_03_0000039A_rodata

# .rodata:0x36C | 0x39C | size: 0xA
.obj str_ノコノコD_nok_00000dfc, local
	.4byte 0x836D8352
	.4byte 0x836D8352
	.2byte 0x4400
.endobj str_ノコノコD_nok_00000dfc

# .rodata:0x376 | 0x3A6 | size: 0x2
.obj gap_03_000003A6_rodata, global
.hidden gap_03_000003A6_rodata
	.2byte 0x0000
.endobj gap_03_000003A6_rodata

# .rodata:0x378 | 0x3A8 | size: 0xA
.obj str_ノコノコF_nok_00000e08, local
	.4byte 0x836D8352
	.4byte 0x836D8352
	.2byte 0x4600
.endobj str_ノコノコF_nok_00000e08

# .rodata:0x382 | 0x3B2 | size: 0x2
.obj gap_03_000003B2_rodata, global
.hidden gap_03_000003B2_rodata
	.2byte 0x0000
.endobj gap_03_000003B2_rodata

# .rodata:0x384 | 0x3B4 | size: 0x7
.obj str_宿店員_nok_00000e14, local
	.4byte 0x8F689358
	.byte 0x88, 0xF5, 0x00
.endobj str_宿店員_nok_00000e14

# .rodata:0x38B | 0x3BB | size: 0x1
.obj gap_03_000003BB_rodata, global
.hidden gap_03_000003BB_rodata
	.byte 0x00
.endobj gap_03_000003BB_rodata

# .rodata:0x38C | 0x3BC | size: 0x5
.obj str_店員_nok_00000e1c, local
	.4byte 0x935888F5
	.byte 0x00
.endobj str_店員_nok_00000e1c

# .rodata:0x391 | 0x3C1 | size: 0x3
.obj gap_03_000003C1_rodata, global
.hidden gap_03_000003C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003C1_rodata

# .rodata:0x394 | 0x3C4 | size: 0x5
.obj str_ババ_nok_00000e24, local
	.4byte 0x836F836F
	.byte 0x00
.endobj str_ババ_nok_00000e24

# .rodata:0x399 | 0x3C9 | size: 0x3
.obj gap_03_000003C9_rodata, global
.hidden gap_03_000003C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003C9_rodata

# .rodata:0x39C | 0x3CC | size: 0x9
.obj str_ホワイト_nok_00000e2c, local
	.4byte 0x837A838F
	.4byte 0x83438367
	.byte 0x00
.endobj str_ホワイト_nok_00000e2c

# .rodata:0x3A5 | 0x3D5 | size: 0x3
.obj gap_03_000003D5_rodata, global
.hidden gap_03_000003D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003D5_rodata

# .rodata:0x3A8 | 0x3D8 | size: 0x7
.obj str_w_bero_nok_00000e38, local
	.string "w_bero"
.endobj str_w_bero_nok_00000e38

# .rodata:0x3AF | 0x3DF | size: 0x1
.obj gap_03_000003DF_rodata, global
.hidden gap_03_000003DF_rodata
	.byte 0x00
.endobj gap_03_000003DF_rodata

# .rodata:0x3B0 | 0x3E0 | size: 0x7
.obj str_hei_01_nok_00000e40, local
	.string "hei_01"
.endobj str_hei_01_nok_00000e40

# .rodata:0x3B7 | 0x3E7 | size: 0x1
.obj gap_03_000003E7_rodata, global
.hidden gap_03_000003E7_rodata
	.byte 0x00
.endobj gap_03_000003E7_rodata

# .rodata:0x3B8 | 0x3E8 | size: 0x7
.obj str_e_bero_nok_00000e48, local
	.string "e_bero"
.endobj str_e_bero_nok_00000e48

# .rodata:0x3BF | 0x3EF | size: 0x1
.obj gap_03_000003EF_rodata, global
.hidden gap_03_000003EF_rodata
	.byte 0x00
.endobj gap_03_000003EF_rodata

# .rodata:0x3C0 | 0x3F0 | size: 0x7
.obj str_nok_01_nok_00000e50, local
	.string "nok_01"
.endobj str_nok_01_nok_00000e50

# .rodata:0x3C7 | 0x3F7 | size: 0x1
.obj gap_03_000003F7_rodata, global
.hidden gap_03_000003F7_rodata
	.byte 0x00
.endobj gap_03_000003F7_rodata

# .rodata:0x3C8 | 0x3F8 | size: 0xA
.obj str_S_yad_mae_nok_00000e58, local
	.string "S_yad_mae"
.endobj str_S_yad_mae_nok_00000e58

# .rodata:0x3D2 | 0x402 | size: 0x2
.obj gap_03_00000402_rodata, global
.hidden gap_03_00000402_rodata
	.2byte 0x0000
.endobj gap_03_00000402_rodata

# .rodata:0x3D4 | 0x404 | size: 0xC
.obj str_A_yad_doa01_nok_00000e64, local
	.string "A_yad_doa01"
.endobj str_A_yad_doa01_nok_00000e64

# .rodata:0x3E0 | 0x410 | size: 0xD
.obj str_A_yad_in_doa_nok_00000e70, local
	.string "A_yad_in_doa"
.endobj str_A_yad_in_doa_nok_00000e70

# .rodata:0x3ED | 0x41D | size: 0x3
.obj gap_03_0000041D_rodata, global
.hidden gap_03_0000041D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000041D_rodata

# .rodata:0x3F0 | 0x420 | size: 0xC
.obj str_S_yado_open_nok_00000e80, local
	.string "S_yado_open"
.endobj str_S_yado_open_nok_00000e80

# .rodata:0x3FC | 0x42C | size: 0x10
.obj str_S_yado_doa_open_nok_00000e8c, local
	.string "S_yado_doa_open"
.endobj str_S_yado_doa_open_nok_00000e8c

# .rodata:0x40C | 0x43C | size: 0xD
.obj str_S_yado_close_nok_00000e9c, local
	.string "S_yado_close"
.endobj str_S_yado_close_nok_00000e9c

# .rodata:0x419 | 0x449 | size: 0x3
.obj gap_03_00000449_rodata, global
.hidden gap_03_00000449_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000449_rodata

# .rodata:0x41C | 0x44C | size: 0x11
.obj str_S_yado_doa_close_nok_00000eac, local
	.string "S_yado_doa_close"
.endobj str_S_yado_doa_close_nok_00000eac

# .rodata:0x42D | 0x45D | size: 0x3
.obj gap_03_0000045D_rodata, global
.hidden gap_03_0000045D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000045D_rodata

# .rodata:0x430 | 0x460 | size: 0xC
.obj str_S_yad_doa01_nok_00000ec0, local
	.string "S_yad_doa01"
.endobj str_S_yad_doa01_nok_00000ec0

# .rodata:0x43C | 0x46C | size: 0xA
.obj str_S_yado_in_nok_00000ecc, local
	.string "S_yado_in"
.endobj str_S_yado_in_nok_00000ecc

# .rodata:0x446 | 0x476 | size: 0x2
.obj gap_03_00000476_rodata, global
.hidden gap_03_00000476_rodata
	.2byte 0x0000
.endobj gap_03_00000476_rodata

# .rodata:0x448 | 0x478 | size: 0xA
.obj str_A_yado_in_nok_00000ed8, local
	.string "A_yado_in"
.endobj str_A_yado_in_nok_00000ed8

# .rodata:0x452 | 0x482 | size: 0x2
.obj gap_03_00000482_rodata, global
.hidden gap_03_00000482_rodata
	.2byte 0x0000
.endobj gap_03_00000482_rodata

# .rodata:0x454 | 0x484 | size: 0xB
.obj str_A_mise_doa_nok_00000ee4, local
	.string "A_mise_doa"
.endobj str_A_mise_doa_nok_00000ee4

# .rodata:0x45F | 0x48F | size: 0x1
.obj gap_03_0000048F_rodata, global
.hidden gap_03_0000048F_rodata
	.byte 0x00
.endobj gap_03_0000048F_rodata

# .rodata:0x460 | 0x490 | size: 0xE
.obj str_A_mise_in_doa_nok_00000ef0, local
	.string "A_mise_in_doa"
.endobj str_A_mise_in_doa_nok_00000ef0

# .rodata:0x46E | 0x49E | size: 0x2
.obj gap_03_0000049E_rodata, global
.hidden gap_03_0000049E_rodata
	.2byte 0x0000
.endobj gap_03_0000049E_rodata

# .rodata:0x470 | 0x4A0 | size: 0xC
.obj str_S_mise_open_nok_00000f00, local
	.string "S_mise_open"
.endobj str_S_mise_open_nok_00000f00

# .rodata:0x47C | 0x4AC | size: 0x10
.obj str_S_mise_doa_open_nok_00000f0c, local
	.string "S_mise_doa_open"
.endobj str_S_mise_doa_open_nok_00000f0c

# .rodata:0x48C | 0x4BC | size: 0xD
.obj str_S_mise_close_nok_00000f1c, local
	.string "S_mise_close"
.endobj str_S_mise_close_nok_00000f1c

# .rodata:0x499 | 0x4C9 | size: 0x3
.obj gap_03_000004C9_rodata, global
.hidden gap_03_000004C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004C9_rodata

# .rodata:0x49C | 0x4CC | size: 0x11
.obj str_S_mise_doa_close_nok_00000f2c, local
	.string "S_mise_doa_close"
.endobj str_S_mise_doa_close_nok_00000f2c

# .rodata:0x4AD | 0x4DD | size: 0x3
.obj gap_03_000004DD_rodata, global
.hidden gap_03_000004DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004DD_rodata

# .rodata:0x4B0 | 0x4E0 | size: 0xB
.obj str_S_mise_mae_nok_00000f40, local
	.string "S_mise_mae"
.endobj str_S_mise_mae_nok_00000f40

# .rodata:0x4BB | 0x4EB | size: 0x1
.obj gap_03_000004EB_rodata, global
.hidden gap_03_000004EB_rodata
	.byte 0x00
.endobj gap_03_000004EB_rodata

# .rodata:0x4BC | 0x4EC | size: 0xB
.obj str_S_mise_doa_nok_00000f4c, local
	.string "S_mise_doa"
.endobj str_S_mise_doa_nok_00000f4c

# .rodata:0x4C7 | 0x4F7 | size: 0x1
.obj gap_03_000004F7_rodata, global
.hidden gap_03_000004F7_rodata
	.byte 0x00
.endobj gap_03_000004F7_rodata

# .rodata:0x4C8 | 0x4F8 | size: 0xA
.obj str_S_mise_in_nok_00000f58, local
	.string "S_mise_in"
.endobj str_S_mise_in_nok_00000f58

# .rodata:0x4D2 | 0x502 | size: 0x2
.obj gap_03_00000502_rodata, global
.hidden gap_03_00000502_rodata
	.2byte 0x0000
.endobj gap_03_00000502_rodata

# .rodata:0x4D4 | 0x504 | size: 0xA
.obj str_A_mise_in_nok_00000f64, local
	.string "A_mise_in"
.endobj str_A_mise_in_nok_00000f64

# .rodata:0x4DE | 0x50E | size: 0x2
.obj gap_03_0000050E_rodata, global
.hidden gap_03_0000050E_rodata
	.2byte 0x0000
.endobj gap_03_0000050E_rodata

# .rodata:0x4E0 | 0x510 | size: 0x9
.obj str_S_ie_mae_nok_00000f70, local
	.string "S_ie_mae"
.endobj str_S_ie_mae_nok_00000f70

# .rodata:0x4E9 | 0x519 | size: 0x3
.obj gap_03_00000519_rodata, global
.hidden gap_03_00000519_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000519_rodata

# .rodata:0x4EC | 0x51C | size: 0x9
.obj str_A_ie_doa_nok_00000f7c, local
	.string "A_ie_doa"
.endobj str_A_ie_doa_nok_00000f7c

# .rodata:0x4F5 | 0x525 | size: 0x3
.obj gap_03_00000525_rodata, global
.hidden gap_03_00000525_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000525_rodata

# .rodata:0x4F8 | 0x528 | size: 0xC
.obj str_A_ie_in_doa_nok_00000f88, local
	.string "A_ie_in_doa"
.endobj str_A_ie_in_doa_nok_00000f88

# .rodata:0x504 | 0x534 | size: 0xA
.obj str_S_ie_open_nok_00000f94, local
	.string "S_ie_open"
.endobj str_S_ie_open_nok_00000f94

# .rodata:0x50E | 0x53E | size: 0x2
.obj gap_03_0000053E_rodata, global
.hidden gap_03_0000053E_rodata
	.2byte 0x0000
.endobj gap_03_0000053E_rodata

# .rodata:0x510 | 0x540 | size: 0xE
.obj str_S_ie_doa_open_nok_00000fa0, local
	.string "S_ie_doa_open"
.endobj str_S_ie_doa_open_nok_00000fa0

# .rodata:0x51E | 0x54E | size: 0x2
.obj gap_03_0000054E_rodata, global
.hidden gap_03_0000054E_rodata
	.2byte 0x0000
.endobj gap_03_0000054E_rodata

# .rodata:0x520 | 0x550 | size: 0xB
.obj str_S_ie_close_nok_00000fb0, local
	.string "S_ie_close"
.endobj str_S_ie_close_nok_00000fb0

# .rodata:0x52B | 0x55B | size: 0x1
.obj gap_03_0000055B_rodata, global
.hidden gap_03_0000055B_rodata
	.byte 0x00
.endobj gap_03_0000055B_rodata

# .rodata:0x52C | 0x55C | size: 0xF
.obj str_S_ie_doa_close_nok_00000fbc, local
	.string "S_ie_doa_close"
.endobj str_S_ie_doa_close_nok_00000fbc

# .rodata:0x53B | 0x56B | size: 0x1
.obj gap_03_0000056B_rodata, global
.hidden gap_03_0000056B_rodata
	.byte 0x00
.endobj gap_03_0000056B_rodata

# .rodata:0x53C | 0x56C | size: 0x9
.obj str_S_ie_doa_nok_00000fcc, local
	.string "S_ie_doa"
.endobj str_S_ie_doa_nok_00000fcc

# .rodata:0x545 | 0x575 | size: 0x3
.obj gap_03_00000575_rodata, global
.hidden gap_03_00000575_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000575_rodata

# .rodata:0x548 | 0x578 | size: 0x8
.obj str_S_ie_in_nok_00000fd8, local
	.string "S_ie_in"
.endobj str_S_ie_in_nok_00000fd8

# .rodata:0x550 | 0x580 | size: 0x8
.obj str_A_ie_in_nok_00000fe0, local
	.string "A_ie_in"
.endobj str_A_ie_in_nok_00000fe0

# .rodata:0x558 | 0x588 | size: 0xA
.obj str_S_item_01_nok_00000fe8, local
	.string "S_item_01"
.endobj str_S_item_01_nok_00000fe8

# .rodata:0x562 | 0x592 | size: 0x2
.obj gap_03_00000592_rodata, global
.hidden gap_03_00000592_rodata
	.2byte 0x0000
.endobj gap_03_00000592_rodata

# .rodata:0x564 | 0x594 | size: 0xA
.obj str_A_item_01_nok_00000ff4, local
	.string "A_item_01"
.endobj str_A_item_01_nok_00000ff4

# .rodata:0x56E | 0x59E | size: 0x2
.obj gap_03_0000059E_rodata, global
.hidden gap_03_0000059E_rodata
	.2byte 0x0000
.endobj gap_03_0000059E_rodata

# .rodata:0x570 | 0x5A0 | size: 0xA
.obj str_S_item_02_nok_00001000, local
	.string "S_item_02"
.endobj str_S_item_02_nok_00001000

# .rodata:0x57A | 0x5AA | size: 0x2
.obj gap_03_000005AA_rodata, global
.hidden gap_03_000005AA_rodata
	.2byte 0x0000
.endobj gap_03_000005AA_rodata

# .rodata:0x57C | 0x5AC | size: 0xA
.obj str_A_item_02_nok_0000100c, local
	.string "A_item_02"
.endobj str_A_item_02_nok_0000100c

# .rodata:0x586 | 0x5B6 | size: 0x2
.obj gap_03_000005B6_rodata, global
.hidden gap_03_000005B6_rodata
	.2byte 0x0000
.endobj gap_03_000005B6_rodata

# .rodata:0x588 | 0x5B8 | size: 0xA
.obj str_S_item_03_nok_00001018, local
	.string "S_item_03"
.endobj str_S_item_03_nok_00001018

# .rodata:0x592 | 0x5C2 | size: 0x2
.obj gap_03_000005C2_rodata, global
.hidden gap_03_000005C2_rodata
	.2byte 0x0000
.endobj gap_03_000005C2_rodata

# .rodata:0x594 | 0x5C4 | size: 0xA
.obj str_A_item_03_nok_00001024, local
	.string "A_item_03"
.endobj str_A_item_03_nok_00001024

# .rodata:0x59E | 0x5CE | size: 0x2
.obj gap_03_000005CE_rodata, global
.hidden gap_03_000005CE_rodata
	.2byte 0x0000
.endobj gap_03_000005CE_rodata

# .rodata:0x5A0 | 0x5D0 | size: 0xA
.obj str_S_item_04_nok_00001030, local
	.string "S_item_04"
.endobj str_S_item_04_nok_00001030

# .rodata:0x5AA | 0x5DA | size: 0x2
.obj gap_03_000005DA_rodata, global
.hidden gap_03_000005DA_rodata
	.2byte 0x0000
.endobj gap_03_000005DA_rodata

# .rodata:0x5AC | 0x5DC | size: 0xA
.obj str_A_item_04_nok_0000103c, local
	.string "A_item_04"
.endobj str_A_item_04_nok_0000103c

# .rodata:0x5B6 | 0x5E6 | size: 0x2
.obj gap_03_000005E6_rodata, global
.hidden gap_03_000005E6_rodata
	.2byte 0x0000
.endobj gap_03_000005E6_rodata

# .rodata:0x5B8 | 0x5E8 | size: 0xA
.obj str_S_item_05_nok_00001048, local
	.string "S_item_05"
.endobj str_S_item_05_nok_00001048

# .rodata:0x5C2 | 0x5F2 | size: 0x2
.obj gap_03_000005F2_rodata, global
.hidden gap_03_000005F2_rodata
	.2byte 0x0000
.endobj gap_03_000005F2_rodata

# .rodata:0x5C4 | 0x5F4 | size: 0xA
.obj str_A_item_05_nok_00001054, local
	.string "A_item_05"
.endobj str_A_item_05_nok_00001054

# .rodata:0x5CE | 0x5FE | size: 0x2
.obj gap_03_000005FE_rodata, global
.hidden gap_03_000005FE_rodata
	.2byte 0x0000
.endobj gap_03_000005FE_rodata

# .rodata:0x5D0 | 0x600 | size: 0xA
.obj str_S_item_06_nok_00001060, local
	.string "S_item_06"
.endobj str_S_item_06_nok_00001060

# .rodata:0x5DA | 0x60A | size: 0x2
.obj gap_03_0000060A_rodata, global
.hidden gap_03_0000060A_rodata
	.2byte 0x0000
.endobj gap_03_0000060A_rodata

# .rodata:0x5DC | 0x60C | size: 0xA
.obj str_A_item_06_nok_0000106c, local
	.string "A_item_06"
.endobj str_A_item_06_nok_0000106c

# .rodata:0x5E6 | 0x616 | size: 0x2
.obj gap_03_00000616_rodata, global
.hidden gap_03_00000616_rodata
	.2byte 0x0000
.endobj gap_03_00000616_rodata

# .rodata:0x5E8 | 0x618 | size: 0x8
.obj str_shop_00_nok_00001078, local
	.string "shop_00"
.endobj str_shop_00_nok_00001078

# .rodata:0x5F0 | 0x620 | size: 0x8
.obj str_shop_01_nok_00001080, local
	.string "shop_01"
.endobj str_shop_01_nok_00001080

# .rodata:0x5F8 | 0x628 | size: 0x8
.obj str_shop_02_nok_00001088, local
	.string "shop_02"
.endobj str_shop_02_nok_00001088

# .rodata:0x600 | 0x630 | size: 0x8
.obj str_shop_03_nok_00001090, local
	.string "shop_03"
.endobj str_shop_03_nok_00001090

# .rodata:0x608 | 0x638 | size: 0x8
.obj str_shop_04_nok_00001098, local
	.string "shop_04"
.endobj str_shop_04_nok_00001098

# .rodata:0x610 | 0x640 | size: 0x8
.obj str_shop_05_nok_000010a0, local
	.string "shop_05"
.endobj str_shop_05_nok_000010a0

# .rodata:0x618 | 0x648 | size: 0x8
.obj str_shop_06_nok_000010a8, local
	.string "shop_06"
.endobj str_shop_06_nok_000010a8

# .rodata:0x620 | 0x650 | size: 0x8
.obj str_shop_07_nok_000010b0, local
	.string "shop_07"
.endobj str_shop_07_nok_000010b0

# .rodata:0x628 | 0x658 | size: 0x8
.obj str_shop_08_nok_000010b8, local
	.string "shop_08"
.endobj str_shop_08_nok_000010b8

# .rodata:0x630 | 0x660 | size: 0x8
.obj str_shop_09_nok_000010c0, local
	.string "shop_09"
.endobj str_shop_09_nok_000010c0

# .rodata:0x638 | 0x668 | size: 0x8
.obj str_shop_10_nok_000010c8, local
	.string "shop_10"
.endobj str_shop_10_nok_000010c8

# .rodata:0x640 | 0x670 | size: 0x8
.obj str_shop_11_nok_000010d0, local
	.string "shop_11"
.endobj str_shop_11_nok_000010d0

# .rodata:0x648 | 0x678 | size: 0x8
.obj str_shop_12_nok_000010d8, local
	.string "shop_12"
.endobj str_shop_12_nok_000010d8

# .rodata:0x650 | 0x680 | size: 0x8
.obj str_shop_13_nok_000010e0, local
	.string "shop_13"
.endobj str_shop_13_nok_000010e0

# .rodata:0x658 | 0x688 | size: 0x8
.obj str_shop_14_nok_000010e8, local
	.string "shop_14"
.endobj str_shop_14_nok_000010e8

# .rodata:0x660 | 0x690 | size: 0x8
.obj str_shop_15_nok_000010f0, local
	.string "shop_15"
.endobj str_shop_15_nok_000010f0

# .rodata:0x668 | 0x698 | size: 0x8
.obj str_shop_16_nok_000010f8, local
	.string "shop_16"
.endobj str_shop_16_nok_000010f8

# .rodata:0x670 | 0x6A0 | size: 0x8
.obj str_shop_17_nok_00001100, local
	.string "shop_17"
.endobj str_shop_17_nok_00001100

# .rodata:0x678 | 0x6A8 | size: 0x8
.obj str_shop_18_nok_00001108, local
	.string "shop_18"
.endobj str_shop_18_nok_00001108

# .rodata:0x680 | 0x6B0 | size: 0x8
.obj str_shop_19_nok_00001110, local
	.string "shop_19"
.endobj str_shop_19_nok_00001110

# .rodata:0x688 | 0x6B8 | size: 0x8
.obj str_shop_20_nok_00001118, local
	.string "shop_20"
.endobj str_shop_20_nok_00001118

# .rodata:0x690 | 0x6C0 | size: 0x8
.obj str_shop_21_nok_00001120, local
	.string "shop_21"
.endobj str_shop_21_nok_00001120

# .rodata:0x698 | 0x6C8 | size: 0x8
.obj str_shop_22_nok_00001128, local
	.string "shop_22"
.endobj str_shop_22_nok_00001128

# .rodata:0x6A0 | 0x6D0 | size: 0x8
.obj str_shop_23_nok_00001130, local
	.string "shop_23"
.endobj str_shop_23_nok_00001130

# .rodata:0x6A8 | 0x6D8 | size: 0x8
.obj str_shop_24_nok_00001138, local
	.string "shop_24"
.endobj str_shop_24_nok_00001138

# .rodata:0x6B0 | 0x6E0 | size: 0x8
.obj str_shop_25_nok_00001140, local
	.string "shop_25"
.endobj str_shop_25_nok_00001140

# .rodata:0x6B8 | 0x6E8 | size: 0x8
.obj str_shop_26_nok_00001148, local
	.string "shop_26"
.endobj str_shop_26_nok_00001148

# .rodata:0x6C0 | 0x6F0 | size: 0x8
.obj str_shop_27_nok_00001150, local
	.string "shop_27"
.endobj str_shop_27_nok_00001150

# .rodata:0x6C8 | 0x6F8 | size: 0x8
.obj str_shop_28_nok_00001158, local
	.string "shop_28"
.endobj str_shop_28_nok_00001158

# .rodata:0x6D0 | 0x700 | size: 0x8
.obj str_shop_29_nok_00001160, local
	.string "shop_29"
.endobj str_shop_29_nok_00001160

# .rodata:0x6D8 | 0x708 | size: 0x8
.obj str_shop_30_nok_00001168, local
	.string "shop_30"
.endobj str_shop_30_nok_00001168

# .rodata:0x6E0 | 0x710 | size: 0x8
.obj str_shop_31_nok_00001170, local
	.string "shop_31"
.endobj str_shop_31_nok_00001170

# .rodata:0x6E8 | 0x718 | size: 0x8
.obj str_shop_32_nok_00001178, local
	.string "shop_32"
.endobj str_shop_32_nok_00001178

# .rodata:0x6F0 | 0x720 | size: 0x8
.obj str_shop_33_nok_00001180, local
	.string "shop_33"
.endobj str_shop_33_nok_00001180

# .rodata:0x6F8 | 0x728 | size: 0x8
.obj str_shop_34_nok_00001188, local
	.string "shop_34"
.endobj str_shop_34_nok_00001188

# .rodata:0x700 | 0x730 | size: 0x8
.obj str_yado_00_nok_00001190, local
	.string "yado_00"
.endobj str_yado_00_nok_00001190

# .rodata:0x708 | 0x738 | size: 0x8
.obj str_yado_01_nok_00001198, local
	.string "yado_01"
.endobj str_yado_01_nok_00001198

# .rodata:0x710 | 0x740 | size: 0x8
.obj str_yado_02_nok_000011a0, local
	.string "yado_02"
.endobj str_yado_02_nok_000011a0

# .rodata:0x718 | 0x748 | size: 0x8
.obj str_yado_03_nok_000011a8, local
	.string "yado_03"
.endobj str_yado_03_nok_000011a8

# .rodata:0x720 | 0x750 | size: 0x8
.obj str_yado_04_nok_000011b0, local
	.string "yado_04"
.endobj str_yado_04_nok_000011b0

# .rodata:0x728 | 0x758 | size: 0x8
.obj str_yado_05_nok_000011b8, local
	.string "yado_05"
.endobj str_yado_05_nok_000011b8

# .rodata:0x730 | 0x760 | size: 0x8
.obj str_yado_06_nok_000011c0, local
	.string "yado_06"
.endobj str_yado_06_nok_000011c0

# .rodata:0x738 | 0x768 | size: 0x8
.obj str_yado_07_nok_000011c8, local
	.string "yado_07"
.endobj str_yado_07_nok_000011c8

# .rodata:0x740 | 0x770 | size: 0x8
.obj str_yado_08_nok_000011d0, local
	.string "yado_08"
.endobj str_yado_08_nok_000011d0

# .rodata:0x748 | 0x778 | size: 0x8
.obj str_yado_09_nok_000011d8, local
	.string "yado_09"
.endobj str_yado_09_nok_000011d8

# .rodata:0x750 | 0x780 | size: 0x8
.obj str_yado_10_nok_000011e0, local
	.string "yado_10"
.endobj str_yado_10_nok_000011e0

# .rodata:0x758 | 0x788 | size: 0x8
.obj str_yado_11_nok_000011e8, local
	.string "yado_11"
.endobj str_yado_11_nok_000011e8

# .rodata:0x760 | 0x790 | size: 0x8
.obj str_yado_12_nok_000011f0, local
	.string "yado_12"
.endobj str_yado_12_nok_000011f0

# .rodata:0x768 | 0x798 | size: 0x8
.obj str_yado_13_nok_000011f8, local
	.string "yado_13"
.endobj str_yado_13_nok_000011f8

# .rodata:0x770 | 0x7A0 | size: 0xC
.obj str_stg1_nok_01_nok_00001200, local
	.string "stg1_nok_01"
.endobj str_stg1_nok_01_nok_00001200

# .rodata:0x77C | 0x7AC | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_nok_0000120c, local
	.string "SFX_VOICE_MARIO_HAND_UP1_1"
.endobj str_SFX_VOICE_MARIO_HAND_nok_0000120c

# .rodata:0x797 | 0x7C7 | size: 0x1
.obj gap_03_000007C7_rodata, global
.hidden gap_03_000007C7_rodata
	.byte 0x00
.endobj gap_03_000007C7_rodata

# .rodata:0x798 | 0x7C8 | size: 0xF
.obj str_stg1_nok_01_01_nok_00001228, local
	.string "stg1_nok_01_01"
.endobj str_stg1_nok_01_01_nok_00001228

# .rodata:0x7A7 | 0x7D7 | size: 0x1
.obj gap_03_000007D7_rodata, global
.hidden gap_03_000007D7_rodata
	.byte 0x00
.endobj gap_03_000007D7_rodata

# .rodata:0x7A8 | 0x7D8 | size: 0xF
.obj str_stg1_nok_01_02_nok_00001238, local
	.string "stg1_nok_01_02"
.endobj str_stg1_nok_01_02_nok_00001238

# .rodata:0x7B7 | 0x7E7 | size: 0x1
.obj gap_03_000007E7_rodata, global
.hidden gap_03_000007E7_rodata
	.byte 0x00
.endobj gap_03_000007E7_rodata

# .rodata:0x7B8 | 0x7E8 | size: 0xF
.obj str_stg1_nok_01_03_nok_00001248, local
	.string "stg1_nok_01_03"
.endobj str_stg1_nok_01_03_nok_00001248

# .rodata:0x7C7 | 0x7F7 | size: 0x1
.obj gap_03_000007F7_rodata, global
.hidden gap_03_000007F7_rodata
	.byte 0x00
.endobj gap_03_000007F7_rodata

# .rodata:0x7C8 | 0x7F8 | size: 0xF
.obj str_stg1_nok_01_04_nok_00001258, local
	.string "stg1_nok_01_04"
.endobj str_stg1_nok_01_04_nok_00001258

# .rodata:0x7D7 | 0x807 | size: 0x1
.obj gap_03_00000807_rodata, global
.hidden gap_03_00000807_rodata
	.byte 0x00
.endobj gap_03_00000807_rodata

# .rodata:0x7D8 | 0x808 | size: 0xE
.obj str_BGM_STG1_NOK1_nok_00001268, local
	.string "BGM_STG1_NOK1"
.endobj str_BGM_STG1_NOK1_nok_00001268

# .rodata:0x7E6 | 0x816 | size: 0x2
.obj gap_03_00000816_rodata, global
.hidden gap_03_00000816_rodata
	.2byte 0x0000
.endobj gap_03_00000816_rodata

# .rodata:0x7E8 | 0x818 | size: 0x7
.obj str_mod_00_nok_00001278, local
	.string "mod_00"
.endobj str_mod_00_nok_00001278

# .rodata:0x7EF | 0x81F | size: 0x1
.obj gap_03_0000081F_rodata, global
.hidden gap_03_0000081F_rodata
	.byte 0x00
.endobj gap_03_0000081F_rodata

# .rodata:0x7F0 | 0x820 | size: 0x7
.obj str_mod_01_nok_00001280, local
	.string "mod_01"
.endobj str_mod_01_nok_00001280

# .rodata:0x7F7 | 0x827 | size: 0x1
.obj gap_03_00000827_rodata, global
.hidden gap_03_00000827_rodata
	.byte 0x00
.endobj gap_03_00000827_rodata

# .rodata:0x7F8 | 0x828 | size: 0x7
.obj str_mod_02_nok_00001288, local
	.string "mod_02"
.endobj str_mod_02_nok_00001288

# .rodata:0x7FF | 0x82F | size: 0x1
.obj gap_03_0000082F_rodata, global
.hidden gap_03_0000082F_rodata
	.byte 0x00
.endobj gap_03_0000082F_rodata

# .rodata:0x800 | 0x830 | size: 0x7
.obj str_mod_04_nok_00001290, local
	.string "mod_04"
.endobj str_mod_04_nok_00001290

# .rodata:0x807 | 0x837 | size: 0x1
.obj gap_03_00000837_rodata, global
.hidden gap_03_00000837_rodata
	.byte 0x00
.endobj gap_03_00000837_rodata

# .rodata:0x808 | 0x838 | size: 0x7
.obj str_mod_05_nok_00001298, local
	.string "mod_05"
.endobj str_mod_05_nok_00001298

# .rodata:0x80F | 0x83F | size: 0x1
.obj gap_03_0000083F_rodata, global
.hidden gap_03_0000083F_rodata
	.byte 0x00
.endobj gap_03_0000083F_rodata

# .rodata:0x810 | 0x840 | size: 0x7
.obj str_mod_06_nok_000012a0, local
	.string "mod_06"
.endobj str_mod_06_nok_000012a0

# .rodata:0x817 | 0x847 | size: 0x1
.obj gap_03_00000847_rodata, global
.hidden gap_03_00000847_rodata
	.byte 0x00
.endobj gap_03_00000847_rodata

# .rodata:0x818 | 0x848 | size: 0x7
.obj str_mod_07_nok_000012a8, local
	.string "mod_07"
.endobj str_mod_07_nok_000012a8

# .rodata:0x81F | 0x84F | size: 0x1
.obj gap_03_0000084F_rodata, global
.hidden gap_03_0000084F_rodata
	.byte 0x00
.endobj gap_03_0000084F_rodata

# .rodata:0x820 | 0x850 | size: 0x7
.obj str_mod_08_nok_000012b0, local
	.string "mod_08"
.endobj str_mod_08_nok_000012b0

# .rodata:0x827 | 0x857 | size: 0x1
.obj gap_03_00000857_rodata, global
.hidden gap_03_00000857_rodata
	.byte 0x00
.endobj gap_03_00000857_rodata

# .rodata:0x828 | 0x858 | size: 0x9
.obj str_A_hasi04_nok_000012b8, local
	.string "A_hasi04"
.endobj str_A_hasi04_nok_000012b8

# .rodata:0x831 | 0x861 | size: 0x3
.obj gap_03_00000861_rodata, global
.hidden gap_03_00000861_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000861_rodata

# .rodata:0x834 | 0x864 | size: 0x7
.obj str_poster_nok_000012c4, local
	.string "poster"
.endobj str_poster_nok_000012c4

# .rodata:0x83B | 0x86B | size: 0x1
.obj gap_03_0000086B_rodata, global
.hidden gap_03_0000086B_rodata
	.byte 0x00
.endobj gap_03_0000086B_rodata

# .rodata:0x83C | 0x86C | size: 0xA
.obj str_c_p_peach_nok_000012cc, local
	.string "c_p_peach"
.endobj str_c_p_peach_nok_000012cc

# .rodata:0x846 | 0x876 | size: 0x2
.obj gap_03_00000876_rodata, global
.hidden gap_03_00000876_rodata
	.2byte 0x0000
.endobj gap_03_00000876_rodata

# .rodata:0x848 | 0x878 | size: 0xB
.obj str_S_ie_mad02_nok_000012d8, local
	.string "S_ie_mad02"
.endobj str_S_ie_mad02_nok_000012d8

# .rodata:0x853 | 0x883 | size: 0x1
.obj gap_03_00000883_rodata, global
.hidden gap_03_00000883_rodata
	.byte 0x00
.endobj gap_03_00000883_rodata

# .rodata:0x854 | 0x884 | size: 0xE
.obj str_ENV_STG1_NOK1_nok_000012e4, local
	.string "ENV_STG1_NOK1"
.endobj str_ENV_STG1_NOK1_nok_000012e4

# .rodata:0x862 | 0x892 | size: 0x2
.obj gap_03_00000892_rodata, global
.hidden gap_03_00000892_rodata
	.2byte 0x0000
.endobj gap_03_00000892_rodata

# .rodata:0x864 | 0x894 | size: 0x18
.obj str_SFX_KUPPA_KAMEBABA_F_nok_000012f4, local
	.string "SFX_KUPPA_KAMEBABA_FLY1"
.endobj str_SFX_KUPPA_KAMEBABA_F_nok_000012f4

# .rodata:0x87C | 0x8AC | size: 0x1
.obj zero_nok_0000130c, local
	.byte 0x00
.endobj zero_nok_0000130c

# .rodata:0x87D | 0x8AD | size: 0x3
.obj gap_03_000008AD_rodata, global
.hidden gap_03_000008AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000008AD_rodata

# .rodata:0x880 | 0x8B0 | size: 0xD
.obj str_kpa_stg2_004_nok_00001310, local
	.string "kpa_stg2_004"
.endobj str_kpa_stg2_004_nok_00001310

# .rodata:0x88D | 0x8BD | size: 0x3
.obj gap_03_000008BD_rodata, global
.hidden gap_03_000008BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000008BD_rodata

# .rodata:0x890 | 0x8C0 | size: 0xF
.obj str_BGM_EVT_KUPPA1_nok_00001320, local
	.string "BGM_EVT_KUPPA1"
.endobj str_BGM_EVT_KUPPA1_nok_00001320

# .rodata:0x89F | 0x8CF | size: 0x1
.obj gap_03_000008CF_rodata, global
.hidden gap_03_000008CF_rodata
	.byte 0x00
.endobj gap_03_000008CF_rodata

# .rodata:0x8A0 | 0x8D0 | size: 0x8
.obj str_NOK_S_2_nok_00001330, local
	.string "NOK_S_2"
.endobj str_NOK_S_2_nok_00001330

# .rodata:0x8A8 | 0x8D8 | size: 0x8
.obj str_NOK_T_2_nok_00001338, local
	.string "NOK_T_2"
.endobj str_NOK_T_2_nok_00001338

# .rodata:0x8B0 | 0x8E0 | size: 0xF
.obj str_kpa_stg2_004_1_nok_00001340, local
	.string "kpa_stg2_004_1"
.endobj str_kpa_stg2_004_1_nok_00001340

# .rodata:0x8BF | 0x8EF | size: 0x1
.obj gap_03_000008EF_rodata, global
.hidden gap_03_000008EF_rodata
	.byte 0x00
.endobj gap_03_000008EF_rodata

# .rodata:0x8C0 | 0x8F0 | size: 0x8
.obj str_NOK_R_2_nok_00001350, local
	.string "NOK_R_2"
.endobj str_NOK_R_2_nok_00001350

# .rodata:0x8C8 | 0x8F8 | size: 0x17
.obj str_SFX_KUPPA_NOKO_ESCAP_nok_00001358, local
	.string "SFX_KUPPA_NOKO_ESCAPE1"
.endobj str_SFX_KUPPA_NOKO_ESCAP_nok_00001358

# .rodata:0x8DF | 0x90F | size: 0x1
.obj gap_03_0000090F_rodata, global
.hidden gap_03_0000090F_rodata
	.byte 0x00
.endobj gap_03_0000090F_rodata

# .rodata:0x8E0 | 0x910 | size: 0xF
.obj str_SFX_DOOR_SHUT1_nok_00001370, local
	.string "SFX_DOOR_SHUT1"
.endobj str_SFX_DOOR_SHUT1_nok_00001370

# .rodata:0x8EF | 0x91F | size: 0x1
.obj gap_03_0000091F_rodata, global
.hidden gap_03_0000091F_rodata
	.byte 0x00
.endobj gap_03_0000091F_rodata

# .rodata:0x8F0 | 0x920 | size: 0x6
.obj str_mario_nok_00001380, local
	.string "mario"
.endobj str_mario_nok_00001380

# .rodata:0x8F6 | 0x926 | size: 0x2
.obj gap_03_00000926_rodata, global
.hidden gap_03_00000926_rodata
	.2byte 0x0000
.endobj gap_03_00000926_rodata

# .rodata:0x8F8 | 0x928 | size: 0x8
.obj str_KPA_S_1_nok_00001388, local
	.string "KPA_S_1"
.endobj str_KPA_S_1_nok_00001388

# .rodata:0x900 | 0x930 | size: 0x8
.obj str_KPA_T_1_nok_00001390, local
	.string "KPA_T_1"
.endobj str_KPA_T_1_nok_00001390

# .rodata:0x908 | 0x938 | size: 0xD
.obj str_kpa_stg2_007_nok_00001398, local
	.string "kpa_stg2_007"
.endobj str_kpa_stg2_007_nok_00001398

# .rodata:0x915 | 0x945 | size: 0x3
.obj gap_03_00000945_rodata, global
.hidden gap_03_00000945_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000945_rodata

# .rodata:0x918 | 0x948 | size: 0xD
.obj str_kpa_stg2_008_nok_000013a8, local
	.string "kpa_stg2_008"
.endobj str_kpa_stg2_008_nok_000013a8

# .rodata:0x925 | 0x955 | size: 0x3
.obj gap_03_00000955_rodata, global
.hidden gap_03_00000955_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000955_rodata

# .rodata:0x928 | 0x958 | size: 0x16
.obj str_SFX_KUPPA_FIND_PEACH_nok_000013b8, local
	.string "SFX_KUPPA_FIND_PEACH1"
.endobj str_SFX_KUPPA_FIND_PEACH_nok_000013b8

# .rodata:0x93E | 0x96E | size: 0x2
.obj gap_03_0000096E_rodata, global
.hidden gap_03_0000096E_rodata
	.2byte 0x0000
.endobj gap_03_0000096E_rodata

# .rodata:0x940 | 0x970 | size: 0xD
.obj str_kpa_stg2_009_nok_000013d0, local
	.string "kpa_stg2_009"
.endobj str_kpa_stg2_009_nok_000013d0

# .rodata:0x94D | 0x97D | size: 0x3
.obj gap_03_0000097D_rodata, global
.hidden gap_03_0000097D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000097D_rodata

# .rodata:0x950 | 0x980 | size: 0x19
.obj str_SFX_VOICE_KOOPA_LAUG_nok_000013e0, local
	.string "SFX_VOICE_KOOPA_LAUGH2_1"
.endobj str_SFX_VOICE_KOOPA_LAUG_nok_000013e0

# .rodata:0x969 | 0x999 | size: 0x3
.obj gap_03_00000999_rodata, global
.hidden gap_03_00000999_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000999_rodata

# .rodata:0x96C | 0x99C | size: 0x8
.obj str_KPA_S_3_nok_000013fc, local
	.string "KPA_S_3"
.endobj str_KPA_S_3_nok_000013fc

# .rodata:0x974 | 0x9A4 | size: 0x8
.obj str_KPA_T_2_nok_00001404, local
	.string "KPA_T_2"
.endobj str_KPA_T_2_nok_00001404

# .rodata:0x97C | 0x9AC | size: 0xD
.obj str_kpa_stg2_010_nok_0000140c, local
	.string "kpa_stg2_010"
.endobj str_kpa_stg2_010_nok_0000140c

# .rodata:0x989 | 0x9B9 | size: 0x3
.obj gap_03_000009B9_rodata, global
.hidden gap_03_000009B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009B9_rodata

# .rodata:0x98C | 0x9BC | size: 0xD
.obj str_kpa_stg2_011_nok_0000141c, local
	.string "kpa_stg2_011"
.endobj str_kpa_stg2_011_nok_0000141c

# .rodata:0x999 | 0x9C9 | size: 0x3
.obj gap_03_000009C9_rodata, global
.hidden gap_03_000009C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009C9_rodata

# .rodata:0x99C | 0x9CC | size: 0xD
.obj str_kpa_stg2_012_nok_0000142c, local
	.string "kpa_stg2_012"
.endobj str_kpa_stg2_012_nok_0000142c

# .rodata:0x9A9 | 0x9D9 | size: 0x3
.obj gap_03_000009D9_rodata, global
.hidden gap_03_000009D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009D9_rodata

# .rodata:0x9AC | 0x9DC | size: 0x4
.obj str_A_4_nok_0000143c, local
	.string "A_4"
.endobj str_A_4_nok_0000143c

# .rodata:0x9B0 | 0x9E0 | size: 0xD
.obj str_kpa_stg2_013_nok_00001440, local
	.string "kpa_stg2_013"
.endobj str_kpa_stg2_013_nok_00001440

# .rodata:0x9BD | 0x9ED | size: 0x3
.obj gap_03_000009ED_rodata, global
.hidden gap_03_000009ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009ED_rodata

# .rodata:0x9C0 | 0x9F0 | size: 0xD
.obj str_kpa_stg2_014_nok_00001450, local
	.string "kpa_stg2_014"
.endobj str_kpa_stg2_014_nok_00001450

# .rodata:0x9CD | 0x9FD | size: 0x3
.obj gap_03_000009FD_rodata, global
.hidden gap_03_000009FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009FD_rodata

# .rodata:0x9D0 | 0xA00 | size: 0xD
.obj str_kpa_stg2_015_nok_00001460, local
	.string "kpa_stg2_015"
.endobj str_kpa_stg2_015_nok_00001460

# .rodata:0x9DD | 0xA0D | size: 0x3
.obj gap_03_00000A0D_rodata, global
.hidden gap_03_00000A0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A0D_rodata

# .rodata:0x9E0 | 0xA10 | size: 0x1D
.obj str_SFX_VOICE_KOOPA_SURP_nok_00001470, local
	.string "SFX_VOICE_KOOPA_SURPRISED1_2"
.endobj str_SFX_VOICE_KOOPA_SURP_nok_00001470

# .rodata:0x9FD | 0xA2D | size: 0x3
.obj gap_03_00000A2D_rodata, global
.hidden gap_03_00000A2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A2D_rodata

# .rodata:0xA00 | 0xA30 | size: 0xD
.obj str_kpa_stg2_016_nok_00001490, local
	.string "kpa_stg2_016"
.endobj str_kpa_stg2_016_nok_00001490

# .rodata:0xA0D | 0xA3D | size: 0x3
.obj gap_03_00000A3D_rodata, global
.hidden gap_03_00000A3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A3D_rodata

# .rodata:0xA10 | 0xA40 | size: 0x8
.obj str_NOK_R_4_nok_000014a0, local
	.string "NOK_R_4"
.endobj str_NOK_R_4_nok_000014a0

# .rodata:0xA18 | 0xA48 | size: 0x15
.obj str_SFX_KUPPA_NOKO_JUMP1_nok_000014a8, local
	.string "SFX_KUPPA_NOKO_JUMP1"
.endobj str_SFX_KUPPA_NOKO_JUMP1_nok_000014a8

# .rodata:0xA2D | 0xA5D | size: 0x3
.obj gap_03_00000A5D_rodata, global
.hidden gap_03_00000A5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A5D_rodata

# .rodata:0xA30 | 0xA60 | size: 0x8
.obj str_NOK_A_1_nok_000014c0, local
	.string "NOK_A_1"
.endobj str_NOK_A_1_nok_000014c0

# .rodata:0xA38 | 0xA68 | size: 0x4
.obj str_A_1_nok_000014c8, local
	.string "A_1"
.endobj str_A_1_nok_000014c8

# .rodata:0xA3C | 0xA6C | size: 0x8
.obj str_NOK_S_3_nok_000014cc, local
	.string "NOK_S_3"
.endobj str_NOK_S_3_nok_000014cc

# .rodata:0xA44 | 0xA74 | size: 0x4
.obj str_Z_2_nok_000014d4, local
	.string "Z_2"
.endobj str_Z_2_nok_000014d4

# .rodata:0xA48 | 0xA78 | size: 0x17
.obj str_SFX_KUPPA_NOKO_POSTE_nok_000014d8, local
	.string "SFX_KUPPA_NOKO_POSTER1"
.endobj str_SFX_KUPPA_NOKO_POSTE_nok_000014d8

# .rodata:0xA5F | 0xA8F | size: 0x1
.obj gap_03_00000A8F_rodata, global
.hidden gap_03_00000A8F_rodata
	.byte 0x00
.endobj gap_03_00000A8F_rodata

# .rodata:0xA60 | 0xA90 | size: 0x8
.obj str_KPA_O_1_nok_000014f0, local
	.string "KPA_O_1"
.endobj str_KPA_O_1_nok_000014f0

# .rodata:0xA68 | 0xA98 | size: 0x1D
.obj str_SFX_VOICE_KOOPA_SURP_nok_000014f8, local
	.string "SFX_VOICE_KOOPA_SURPRISED1_1"
.endobj str_SFX_VOICE_KOOPA_SURP_nok_000014f8

# .rodata:0xA85 | 0xAB5 | size: 0x3
.obj gap_03_00000AB5_rodata, global
.hidden gap_03_00000AB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000AB5_rodata

# .rodata:0xA88 | 0xAB8 | size: 0x8
.obj str_KPA_S_5_nok_00001518, local
	.string "KPA_S_5"
.endobj str_KPA_S_5_nok_00001518

# .rodata:0xA90 | 0xAC0 | size: 0x8
.obj str_NOK_R_3_nok_00001520, local
	.string "NOK_R_3"
.endobj str_NOK_R_3_nok_00001520

# .rodata:0xA98 | 0xAC8 | size: 0xD
.obj str_S_ie_in_kabe_nok_00001528, local
	.string "S_ie_in_kabe"
.endobj str_S_ie_in_kabe_nok_00001528

# .rodata:0xAA5 | 0xAD5 | size: 0x3
.obj gap_03_00000AD5_rodata, global
.hidden gap_03_00000AD5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000AD5_rodata

# .rodata:0xAA8 | 0xAD8 | size: 0xF
.obj str_SFX_DOOR_OPEN1_nok_00001538, local
	.string "SFX_DOOR_OPEN1"
.endobj str_SFX_DOOR_OPEN1_nok_00001538

# .rodata:0xAB7 | 0xAE7 | size: 0x1
.obj gap_03_00000AE7_rodata, global
.hidden gap_03_00000AE7_rodata
	.byte 0x00
.endobj gap_03_00000AE7_rodata

# .rodata:0xAB8 | 0xAE8 | size: 0x8
.obj str_KPA_T_5_nok_00001548, local
	.string "KPA_T_5"
.endobj str_KPA_T_5_nok_00001548

# .rodata:0xAC0 | 0xAF0 | size: 0xD
.obj str_kpa_stg2_017_nok_00001550, local
	.string "kpa_stg2_017"
.endobj str_kpa_stg2_017_nok_00001550

# .rodata:0xACD | 0xAFD | size: 0x3
.obj gap_03_00000AFD_rodata, global
.hidden gap_03_00000AFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000AFD_rodata

# .rodata:0xAD0 | 0xB00 | size: 0xD
.obj str_kpa_stg2_018_nok_00001560, local
	.string "kpa_stg2_018"
.endobj str_kpa_stg2_018_nok_00001560

# .rodata:0xADD | 0xB0D | size: 0x3
.obj gap_03_00000B0D_rodata, global
.hidden gap_03_00000B0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B0D_rodata

# .rodata:0xAE0 | 0xB10 | size: 0x1C
.obj str_SFX_VOICE_KOOPA_SATI_nok_00001570, local
	.string "SFX_VOICE_KOOPA_SATIATED2_2"
.endobj str_SFX_VOICE_KOOPA_SATI_nok_00001570

# .rodata:0xAFC | 0xB2C | size: 0x8
.obj str_KPA_S_2_nok_0000158c, local
	.string "KPA_S_2"
.endobj str_KPA_S_2_nok_0000158c

# .rodata:0xB04 | 0xB34 | size: 0x8
.obj str_KPA_T_4_nok_00001594, local
	.string "KPA_T_4"
.endobj str_KPA_T_4_nok_00001594

# .rodata:0xB0C | 0xB3C | size: 0xD
.obj str_kpa_stg2_019_nok_0000159c, local
	.string "kpa_stg2_019"
.endobj str_kpa_stg2_019_nok_0000159c

# .rodata:0xB19 | 0xB49 | size: 0x3
.obj gap_03_00000B49_rodata, global
.hidden gap_03_00000B49_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B49_rodata

# .rodata:0xB1C | 0xB4C | size: 0x7
.obj str_mri_00_nok_000015ac, local
	.string "mri_00"
.endobj str_mri_00_nok_000015ac

# .rodata:0xB23 | 0xB53 | size: 0x1
.obj gap_03_00000B53_rodata, global
.hidden gap_03_00000B53_rodata
	.byte 0x00
.endobj gap_03_00000B53_rodata

# .rodata:0xB24 | 0xB54 | size: 0x7
.obj str_S_kawa_nok_000015b4, local
	.string "S_kawa"
.endobj str_S_kawa_nok_000015b4

# .rodata:0xB2B | 0xB5B | size: 0x1
.obj gap_03_00000B5B_rodata, global
.hidden gap_03_00000B5B_rodata
	.byte 0x00
.endobj gap_03_00000B5B_rodata

# .rodata:0xB2C | 0xB5C | size: 0xA
.obj str_mobj_save_nok_000015bc, local
	.string "mobj_save"
.endobj str_mobj_save_nok_000015bc

# .rodata:0xB36 | 0xB66 | size: 0x2
.obj gap_03_00000B66_rodata, global
.hidden gap_03_00000B66_rodata
	.2byte 0x0000
.endobj gap_03_00000B66_rodata

# .rodata:0xB38 | 0xB68 | size: 0xA
.obj str_butterfly_nok_000015c8, local
	.string "butterfly"
.endobj str_butterfly_nok_000015c8

# .rodata:0xB42 | 0xB72 | size: 0x2
.obj gap_03_00000B72_rodata, global
.hidden gap_03_00000B72_rodata
	.2byte 0x0000
.endobj gap_03_00000B72_rodata

# .rodata:0xB44 | 0xB74 | size: 0x9
.obj str_kururin1_nok_000015d4, local
	.string "kururin1"
.endobj str_kururin1_nok_000015d4

# .rodata:0xB4D | 0xB7D | size: 0x3
.obj gap_03_00000B7D_rodata, global
.hidden gap_03_00000B7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B7D_rodata

# .rodata:0xB50 | 0xB80 | size: 0xB
.obj str_S_ground03_nok_000015e0, local
	.string "S_ground03"
.endobj str_S_ground03_nok_000015e0

# .rodata:0xB5B | 0xB8B | size: 0x1
.obj gap_03_00000B8B_rodata, global
.hidden gap_03_00000B8B_rodata
	.byte 0x00
.endobj gap_03_00000B8B_rodata

# .rodata:0xB5C | 0xB8C | size: 0xD
.obj str_pPlaneShape2_nok_000015ec, local
	.string "pPlaneShape2"
.endobj str_pPlaneShape2_nok_000015ec

# .rodata:0xB69 | 0xB99 | size: 0x3
.obj gap_03_00000B99_rodata, global
.hidden gap_03_00000B99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B99_rodata

# .rodata:0xB6C | 0xB9C | size: 0x9
.obj str_locator7_nok_000015fc, local
	.string "locator7"
.endobj str_locator7_nok_000015fc

# .rodata:0xB75 | 0xBA5 | size: 0x3
.obj gap_03_00000BA5_rodata, global
.hidden gap_03_00000BA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000BA5_rodata

# 0x000001E8..0x00003158 | size: 0x2F70
.data
.balign 8

# .data:0x0 | 0x1E8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1F0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1F4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1F8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1FC | size: 0x4
.obj gap_04_000001FC_data, global
.hidden gap_04_000001FC_data
	.4byte 0x00000000
.endobj gap_04_000001FC_data

# .data:0x18 | 0x200 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x208 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x20C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x210 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x218 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x21C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x220 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x224 | size: 0x4
.obj gap_04_00000224_data, global
.hidden gap_04_00000224_data
	.4byte 0x00000000
.endobj gap_04_00000224_data

# .data:0x40 | 0x228 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x230 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x234 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x238 | size: 0x6C
.obj nokonoko_A_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_nok_00000a90
	.4byte 0x00000600
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x0000001A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_nok_00000a90
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0x00000041
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000074
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_nok_00000a90
	.4byte 0xFFFFFEFC
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_A_init

# .data:0xBC | 0x2A4 | size: 0x8
.obj nokonoko_A_regl, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_A_regl

# .data:0xC4 | 0x2AC | size: 0xDC
.obj nokonoko_A_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_02_nok_00000a94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000038
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_02_01_nok_00000aa0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000041
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_03_nok_00000ab0
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
	.4byte str_stg7_nok_01_nok_00000abc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_03_1_nok_00000ac8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_nok_01_1_nok_00000ad8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_A_talk

# .data:0x1A0 | 0x388 | size: 0x30
.obj nokonoko_B_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_nok_00000a90
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_nok_00000a90
	.4byte 0x00000008
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_B_init

# .data:0x1D0 | 0x3B8 | size: 0x4C
.obj nokonoko_B_regl, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_nok_00000a90
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte urouro_init_func
	.4byte str_me_nok_00000a90
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C0A80
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte urouro_main_func
	.4byte str_me_nok_00000a90
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_B_regl

# .data:0x21C | 0x404 | size: 0xB0
.obj nokonoko_B_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_04_nok_00000ae8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000038
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_04_01_nok_00000af4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000041
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_05_nok_00000b04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_05_1_nok_00000b10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_05_1_1_nok_00000b20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_B_talk

# .data:0x2CC | 0x4B4 | size: 0x48
.obj nokonoko_B_damage, local
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_nok_00000a90
	.4byte str_KNP_O_1_nok_00000b30
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000001
	.4byte str_イャーン_さわらないで！！_key_nok_00000b38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_nok_00000a90
	.4byte str_KNP_S_1_nok_00000b58
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_B_damage

# .data:0x314 | 0x4FC | size: 0x4C
.obj nokonoko_C_regl, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_nok_00000a90
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte urouro_init_func
	.4byte str_me_nok_00000a90
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C0A80
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte urouro_main_func
	.4byte str_me_nok_00000a90
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_C_regl

# .data:0x360 | 0x548 | size: 0xB0
.obj nokonoko_C_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_06_nok_00000b60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000038
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_06_01_nok_00000b6c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000041
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_07_nok_00000b7c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_07_1_nok_00000b88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_07_1_1_nok_00000b98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_C_talk

# .data:0x410 | 0x5F8 | size: 0xD0
.obj nokonoko_D_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_08_nok_00000ba8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000038
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_08_01_nok_00000bb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000041
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_09_nok_00000bc4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg1_nok_09_yesno_nok_00000bd0
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg1_nok_09_01_nok_00000be4
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_09_01_1_nok_00000bf4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_09_01_1_1_nok_00000c08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_D_talk

# .data:0x4E0 | 0x6C8 | size: 0x8
.obj iri_15_item_tbl1, local
	.4byte 0x0000009F
	.4byte 0xFFFFFFFF
.endobj iri_15_item_tbl1

# .data:0x4E8 | 0x6D0 | size: 0x8
.obj iri_15_item_tbl2, local
	.4byte 0x000000CE
	.4byte 0xFFFFFFFF
.endobj iri_15_item_tbl2

# .data:0x4F0 | 0x6D8 | size: 0x4F8
.obj nokonoko_F_talk, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000000F
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_15_001_nok_00000c1c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709D
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_15_002_nok_00000c28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_pouch_get_haveitemcnt
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF840709F
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x0000009F
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x0000009F
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xF840709E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_15_003_nok_00000c34
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709E
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_15_004_nok_00000c40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709F
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_15_008_nok_00000c4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_15_008_nok_00000c4c
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x000000CE
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x000000CE
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_15_005_nok_00000c58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_df_nok_00000c64
	.4byte 0x000000A7
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_df_nok_00000c64
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_df_nok_00000c64
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_15_007_nok_00000c68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_save_playtime
	.4byte 0xF5DE0725
	.4byte 0x00020032
	.4byte 0xF5DE070C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840708D
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_sys_request_finish_nok_00000c74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_15_009_nok_00000c88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_15_009_nok_00000c88
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF840708D
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_15_010_nok_00000c94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_15_010_sel_nok_00000ca0
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_15_012_nok_00000cb0
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_pouch_get_haveitemcnt
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x0000009F
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x0000009F
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_15_013_nok_00000cbc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_df_nok_00000c64
	.4byte 0x000000A7
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_df_nok_00000c64
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_df_nok_00000c64
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_15_015_nok_00000cc8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_15_016_nok_00000cd4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_15_016_nok_00000cd4
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_15_016_nok_00000cd4
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
	.4byte str_stg1_nok_17_nok_00000ce0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000038
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_17_01_nok_00000cec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000041
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_18_nok_00000cfc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_18_1_nok_00000d08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_18_1_1_nok_00000d18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_F_talk

# .data:0x9E8 | 0xBD0 | size: 0x60
.obj init_white, local
	.4byte 0x0002005B
	.4byte evt_sub_get_system_flag
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00001000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x00000074
	.4byte 0x00010026
	.4byte 0x0000010D
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_nok_00000a90
	.4byte 0x00000177
	.4byte 0x00000032
	.4byte 0xFFFFFF97
	.4byte 0x0000002A
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_white

# .data:0xA48 | 0xC30 | size: 0x90
.obj talk_white, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_19_01_nok_00000d28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000037
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_19_02_nok_00000d38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_19_03_nok_00000d48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_19_04_nok_00000d58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_white

# .data:0xAD8 | 0xCC0 | size: 0x4C
.obj kizayarou_regl, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_nok_00000a90
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte urouro_init_func
	.4byte str_me_nok_00000a90
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C0A80
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte urouro_main_func
	.4byte str_me_nok_00000a90
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kizayarou_regl

# .data:0xB24 | 0xD0C | size: 0x170
.obj kizayarou_talk, local
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF9718881
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_10_nok_00000d68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_me_nok_00000a90
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_11_nok_00000d74
	.4byte 0x00000000
	.4byte str_party_nok_00000d80
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_12_nok_00000d88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_13_nok_00000d94
	.4byte 0x00000000
	.4byte str_party_nok_00000d80
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF9718881
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_14_nok_00000da0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_me_nok_00000a90
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_15_nok_00000dac
	.4byte 0x00000000
	.4byte str_party_nok_00000d80
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_16_nok_00000db8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kizayarou_talk

# .data:0xC94 | 0xE7C | size: 0x98
.obj kizayarou_init, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_キザ野郎_nok_00000dc4
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte 0xFE363C80
	.4byte str_c_kiza_nok_00000dd0
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte 0xFE363C80
	.4byte str_キザ野郎_nok_00000dc4
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte kizayarou_talk
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte kizayarou_regl
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C80
	.4byte 0x0000015E
	.4byte 0x00000000
	.4byte 0x000000AF
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C80
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000600
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kizayarou_init

# .data:0xD2C | 0xF14 | size: 0x398
.obj npcEnt, local
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte nokonoko_A_init
	.4byte nokonoko_A_regl
	.4byte nokonoko_A_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ノコノコB_nok_00000de4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte nokonoko_B_regl
	.4byte nokonoko_B_talk
	.4byte nokonoko_B_damage
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ノコノコC_nok_00000df0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte nokonoko_C_regl
	.4byte nokonoko_C_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ノコノコD_nok_00000dfc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte nokonoko_D_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ノコノコF_nok_00000e08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte nokonoko_F_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_宿店員_nok_00000e14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_店員_nok_00000e1c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ババ_nok_00000e24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ホワイト_nok_00000e2c
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_white
	.4byte 0x00000000
	.4byte talk_white
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x10C4 | 0x12AC | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_nok_00000e38
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_hei_01_nok_00000e40
	.4byte str_e_bero_nok_00000e48
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_nok_00000e48
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_nok_01_nok_00000e50
	.4byte str_w_bero_nok_00000e38
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

# .data:0x1178 | 0x1360 | size: 0x8
.obj yado_npc, local
	.4byte str_宿店員_nok_00000e14
	.4byte 0x00000000
.endobj yado_npc

# .data:0x1180 | 0x1368 | size: 0x8
.obj yado_map, local
	.4byte str_S_yad_mae_nok_00000e58
	.4byte 0x00000000
.endobj yado_map

# .data:0x1188 | 0x1370 | size: 0x4C
.obj yado_data, local
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte str_A_yad_doa01_nok_00000e64
	.4byte 0x00000009
	.4byte str_A_yad_in_doa_nok_00000e70
	.4byte str_S_yado_open_nok_00000e80
	.4byte str_S_yado_doa_open_nok_00000e8c
	.4byte str_S_yado_close_nok_00000e9c
	.4byte str_S_yado_doa_close_nok_00000eac
	.4byte str_S_yad_mae_nok_00000e58
	.4byte str_S_yad_doa01_nok_00000ec0
	.4byte str_S_yado_in_nok_00000ecc
	.4byte str_A_yado_in_nok_00000ed8
	.4byte str_S_yado_in_nok_00000ecc
	.4byte str_A_yado_in_nok_00000ed8
	.4byte yado_npc
	.4byte yado_map
	.4byte 0x00000000
	.4byte 0x00000000
.endobj yado_data

# .data:0x11D4 | 0x13BC | size: 0x8
.obj mise_npc, local
	.4byte str_店員_nok_00000e1c
	.4byte 0x00000000
.endobj mise_npc

# .data:0x11DC | 0x13C4 | size: 0x4C
.obj mise_data, local
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte str_A_mise_doa_nok_00000ee4
	.4byte 0x00000009
	.4byte str_A_mise_in_doa_nok_00000ef0
	.4byte str_S_mise_open_nok_00000f00
	.4byte str_S_mise_doa_open_nok_00000f0c
	.4byte str_S_mise_close_nok_00000f1c
	.4byte str_S_mise_doa_close_nok_00000f2c
	.4byte str_S_mise_mae_nok_00000f40
	.4byte str_S_mise_doa_nok_00000f4c
	.4byte str_S_mise_in_nok_00000f58
	.4byte str_A_mise_in_nok_00000f64
	.4byte str_S_mise_in_nok_00000f58
	.4byte str_A_mise_in_nok_00000f64
	.4byte mise_npc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj mise_data

# .data:0x1228 | 0x1410 | size: 0x8
.obj ie_npc, local
	.4byte str_ノコノコD_nok_00000dfc
	.4byte 0x00000000
.endobj ie_npc

# .data:0x1230 | 0x1418 | size: 0x8
.obj ie_map, local
	.4byte str_S_ie_mae_nok_00000f70
	.4byte 0x00000000
.endobj ie_map

# .data:0x1238 | 0x1420 | size: 0x4C
.obj ie_data, local
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte str_A_ie_doa_nok_00000f7c
	.4byte 0x00000009
	.4byte str_A_ie_in_doa_nok_00000f88
	.4byte str_S_ie_open_nok_00000f94
	.4byte str_S_ie_doa_open_nok_00000fa0
	.4byte str_S_ie_close_nok_00000fb0
	.4byte str_S_ie_doa_close_nok_00000fbc
	.4byte str_S_ie_mae_nok_00000f70
	.4byte str_S_ie_doa_nok_00000fcc
	.4byte str_S_ie_in_nok_00000fd8
	.4byte str_A_ie_in_nok_00000fe0
	.4byte str_S_ie_in_nok_00000fd8
	.4byte str_A_ie_in_nok_00000fe0
	.4byte ie_npc
	.4byte ie_map
	.4byte 0x00000000
	.4byte 0x00000000
.endobj ie_data

# .data:0x1284 | 0x146C | size: 0x30
.obj obj_list, local
	.4byte str_S_item_01_nok_00000fe8
	.4byte str_A_item_01_nok_00000ff4
	.4byte str_S_item_02_nok_00001000
	.4byte str_A_item_02_nok_0000100c
	.4byte str_S_item_03_nok_00001018
	.4byte str_A_item_03_nok_00001024
	.4byte str_S_item_04_nok_00001030
	.4byte str_A_item_04_nok_0000103c
	.4byte str_S_item_05_nok_00001048
	.4byte str_A_item_05_nok_00001054
	.4byte str_S_item_06_nok_00001060
	.4byte str_A_item_06_nok_0000106c
.endobj obj_list

# .data:0x12B4 | 0x149C | size: 0x30
.obj goods_list, local
	.4byte 0x00000084
	.4byte 0x00000008
	.4byte 0x0000008B
	.4byte 0x00000005
	.4byte 0x0000008F
	.4byte 0x00000005
	.4byte 0x00000093
	.4byte 0x00000008
	.4byte 0x0000009A
	.4byte 0x00000005
	.4byte 0x00000094
	.4byte 0x00000004
.endobj goods_list

# .data:0x12E4 | 0x14CC | size: 0x68
.obj trade_list, local
	.4byte 0x00000084
	.4byte 0x00040000
	.4byte 0x0000008B
	.4byte 0x00020000
	.4byte 0x0000008F
	.4byte 0x00020000
	.4byte 0x00000093
	.4byte 0x00040000
	.4byte 0x0000009A
	.4byte 0x00020000
	.4byte 0x00000094
	.4byte 0x00020000
	.4byte 0x0000008A
	.4byte 0x000A0000
	.4byte 0x000000DF
	.4byte 0x003C0000
	.4byte 0x000000DE
	.4byte 0x00040000
	.4byte 0x000000EA
	.4byte 0x000A0000
	.4byte 0x000000A7
	.4byte 0x00020000
	.4byte 0x000000A9
	.4byte 0x00050000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj trade_list

# .data:0x134C | 0x1534 | size: 0x98
.obj shopper_data, local
	.4byte str_店員_nok_00000e1c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_shop_00_nok_00001078
	.4byte str_shop_01_nok_00001080
	.4byte str_shop_02_nok_00001088
	.4byte str_shop_03_nok_00001090
	.4byte str_shop_04_nok_00001098
	.4byte str_shop_05_nok_000010a0
	.4byte str_shop_06_nok_000010a8
	.4byte str_shop_07_nok_000010b0
	.4byte str_shop_08_nok_000010b8
	.4byte str_shop_09_nok_000010c0
	.4byte str_shop_10_nok_000010c8
	.4byte str_shop_11_nok_000010d0
	.4byte str_shop_12_nok_000010d8
	.4byte str_shop_13_nok_000010e0
	.4byte str_shop_14_nok_000010e8
	.4byte str_shop_15_nok_000010f0
	.4byte str_shop_16_nok_000010f8
	.4byte str_shop_17_nok_00001100
	.4byte str_shop_18_nok_00001108
	.4byte str_shop_19_nok_00001110
	.4byte str_shop_20_nok_00001118
	.4byte str_shop_21_nok_00001120
	.4byte str_shop_22_nok_00001128
	.4byte str_shop_23_nok_00001130
	.4byte str_shop_24_nok_00001138
	.4byte str_shop_25_nok_00001140
	.4byte str_shop_26_nok_00001148
	.4byte str_shop_27_nok_00001150
	.4byte str_shop_28_nok_00001158
	.4byte str_shop_29_nok_00001160
	.4byte str_shop_30_nok_00001168
	.4byte str_shop_31_nok_00001170
	.4byte str_shop_32_nok_00001178
	.4byte str_shop_33_nok_00001180
	.4byte str_shop_34_nok_00001188
.endobj shopper_data

# .data:0x13E4 | 0x15CC | size: 0x98
.obj kino_dt, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0xC3868000
	.4byte 0x42240000
	.4byte 0xC3800000
	.4byte 0xC3860000
	.4byte 0x41C80000
	.4byte 0xC35C0000
	.4byte 0xC3F78000
	.4byte 0x43630000
	.4byte 0xC2600000
	.4byte 0xC3A38000
	.4byte 0x42B40000
	.4byte 0xC3610000
	.4byte 0xC1F00000
	.4byte 0xC3A50000
	.4byte 0x41C80000
	.4byte 0xC3340000
	.4byte str_宿店員_nok_00000e14
	.4byte str_yado_00_nok_00001190
	.4byte str_yado_01_nok_00001198
	.4byte str_yado_02_nok_000011a0
	.4byte str_yado_03_nok_000011a8
	.4byte str_yado_04_nok_000011b0
	.4byte str_yado_05_nok_000011b8
	.4byte str_yado_06_nok_000011c0
	.4byte str_yado_07_nok_000011c8
	.4byte str_yado_08_nok_000011d0
	.4byte str_yado_09_nok_000011d8
	.4byte str_yado_10_nok_000011e0
	.4byte str_yado_11_nok_000011e8
	.4byte str_yado_12_nok_000011f0
	.4byte str_yado_13_nok_000011f8
	.4byte 0x00000000
	.4byte 0x00000000
.endobj kino_dt

# .data:0x147C | 0x1664 | size: 0x30C
.obj first_time_camera, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFDDF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFDD5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0x00000041
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000002DA
	.4byte 0x00000269
	.4byte 0x00000393
	.4byte 0x000000F5
	.4byte 0x0000005D
	.4byte 0x00000090
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_telop_entry
	.4byte 0x00000002
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xF2437280
	.4byte 0xF250BA80
	.4byte 0xF2579A80
	.4byte 0xF245CA80
	.4byte 0xF24D0E80
	.4byte 0xF24E7680
	.4byte 0x00001770
	.4byte 0x0000000D
	.4byte 0x0001000A
	.4byte 0x00002134
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xF2448A80
	.4byte 0xF24BE280
	.4byte 0xF24FFA80
	.4byte 0xF2448A80
	.4byte 0xF24B0680
	.4byte 0xF24B3680
	.4byte 0x00000000
	.4byte 0x0000000D
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00001770
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE70
	.4byte 0x00000041
	.4byte 0xF24C5A80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0xFFFFFEA2
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_01_nok_00001200
	.4byte 0x00000000
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x0002005B
	.4byte evt_mario_get_motion
	.4byte 0xFE363C80
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_HAND_nok_0000120c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001005B
	.4byte evt_mario_set_talk_motion
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_motion
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_01_01_nok_00001228
	.4byte 0x00000000
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_goodbye_party
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_hello_party
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0xFFFFFE62
	.4byte 0x0000004F
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_01_02_nok_00001238
	.4byte 0x00000000
	.4byte str_party_nok_00000d80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_01_03_nok_00001248
	.4byte 0x00000000
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_nok_01_04_nok_00001258
	.4byte 0x00000000
	.4byte str_party_nok_00000d80
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000300
	.4byte str_BGM_STG1_NOK1_nok_00001268
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000001A
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj first_time_camera

# .data:0x1788 | 0x1970 | size: 0xA0
.obj hitDmgRetPoints, local
	.4byte str_mod_00_nok_00001278
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_01_nok_00001280
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_02_nok_00001288
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_04_nok_00001290
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_05_nok_00001298
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_06_nok_000012a0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_07_nok_000012a8
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_08_nok_000012b0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_A_hasi04_nok_000012b8
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj hitDmgRetPoints

# .data:0x1828 | 0x1A10 | size: 0x8C
.obj nok_00_koopa_npc_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_poster_nok_000012c4
	.4byte str_c_p_peach_nok_000012cc
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_poster_nok_000012c4
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_poster_nok_000012c4
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_ie_mad02_nok_000012d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002003B
	.4byte 0xFE363C81
	.4byte 0xF24ADE80
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xF24A9A80
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_poster_nok_000012c4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte pposter_init
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nok_00_koopa_npc_entry

# .data:0x18B4 | 0x1A9C | size: 0x1388
.obj nok_00_koopa_evt, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG1_NOK1_nok_00001268
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_NOK1_nok_000012e4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFE0C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_nok_00000e24
	.4byte 0xFFFFFDDA
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x00008000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x0000005A
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEC5
	.4byte 0x00000092
	.4byte 0x00000211
	.4byte 0xFFFFFEC5
	.4byte 0x00000032
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_nok_00000e24
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KAMEBABA_F_nok_000012f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0008005B
	.4byte evt_npc_kamek_move_position
	.4byte str_ババ_nok_00000e24
	.4byte 0xFFFFFE6B
	.4byte 0x00000039
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFEAA
	.4byte 0x00000050
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_nok_0000130c
	.4byte str_ノコノコA_nok_00000dd8
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
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x00008000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg2_004_nok_00001310
	.4byte 0x00000000
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_KUPPA1_nok_00001320
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_NOK1_nok_000012e4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ノコノコA_nok_00000dd8
	.4byte str_NOK_S_2_nok_00001330
	.4byte str_NOK_T_2_nok_00001338
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg2_004_1_nok_00001340
	.4byte 0x00000000
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコノコA_nok_00000dd8
	.4byte str_NOK_R_2_nok_00001350
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x0000005A
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_NOKO_ESCAP_nok_00001358
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_blur_onoff
	.4byte 0x00000001
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0xFFFFFFBA
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_blur_onoff
	.4byte 0x00000000
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_mise_doa_nok_00000f4c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFF06
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT1_nok_00001370
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_ie_doa_nok_00000fcc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFF38
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT1_nok_00001370
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x00000080
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ノコノコB_nok_00000de4
	.4byte 0x00000080
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ノコノコC_nok_00000df0
	.4byte 0x00000080
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ノコノコD_nok_00000dfc
	.4byte 0x00000080
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEB1
	.4byte 0x00000085
	.4byte 0x000001AE
	.4byte 0xFFFFFEB1
	.4byte 0x00000037
	.4byte 0xFFFFFFF3
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_nok_00001380
	.4byte str_KPA_S_1_nok_00001388
	.4byte str_KPA_T_1_nok_00001390
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg2_007_nok_00001398
	.4byte 0x00000000
	.4byte str_mario_nok_00001380
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_nok_0000130c
	.4byte str_ババ_nok_00000e24
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
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_nok_00000e24
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KAMEBABA_F_nok_000012f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ババ_nok_00000e24
	.4byte 0x00000020
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEE8
	.4byte 0x00000085
	.4byte 0x000001AE
	.4byte 0xFFFFFEE8
	.4byte 0x00000037
	.4byte 0xFFFFFFF3
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0008005B
	.4byte evt_npc_kamek_move_position
	.4byte str_ババ_nok_00000e24
	.4byte 0xFFFFFEED
	.4byte 0x00000087
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ババ_nok_00000e24
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg2_008_nok_000013a8
	.4byte 0x00000000
	.4byte str_ババ_nok_00000e24
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000122
	.4byte 0x00000090
	.4byte 0x000001DF
	.4byte 0x00000122
	.4byte 0x00000039
	.4byte 0xFFFFFFF3
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000015E
	.4byte 0x000000A6
	.4byte 0x000000A2
	.4byte 0x0000015E
	.4byte 0x00000073
	.4byte 0xFFFFFF7A
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_KUPPA_FIND_PEACH_nok_000013b8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg2_009_nok_000013d0
	.4byte 0x00000000
	.4byte str_mario_nok_00001380
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000012C
	.4byte 0x000000C0
	.4byte 0x0000016B
	.4byte 0x0000012C
	.4byte 0x00000069
	.4byte 0xFFFFFF7E
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000082
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x000000BE
	.4byte 0xFFFFFFDB
	.4byte 0x00000078
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0x000000E6
	.4byte 0x00000019
	.4byte 0xFFFFFFAB
	.4byte 0x00000258
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_LAUG_nok_000013e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_nok_00001380
	.4byte str_KPA_S_3_nok_000013fc
	.4byte str_KPA_T_2_nok_00001404
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg2_010_nok_0000140c
	.4byte 0x00000000
	.4byte str_mario_nok_00001380
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000015E
	.4byte 0x000000A6
	.4byte 0x000000A2
	.4byte 0x0000015E
	.4byte 0x00000073
	.4byte 0xFFFFFF7A
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000003
	.4byte 0x00000163
	.4byte 0x00000064
	.4byte 0xFFFFFF6A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg2_011_nok_0000141c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000012C
	.4byte 0x000000C0
	.4byte 0x0000016B
	.4byte 0x0000012C
	.4byte 0x00000069
	.4byte 0xFFFFFF7E
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_nok_00001380
	.4byte str_KPA_S_1_nok_00001388
	.4byte str_KPA_T_1_nok_00001390
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg2_012_nok_0000142c
	.4byte 0x00000000
	.4byte str_mario_nok_00001380
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000BE
	.4byte 0x000000B0
	.4byte 0x0000016B
	.4byte 0x000000BE
	.4byte 0x0000005A
	.4byte 0xFFFFFF7E
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_nok_00000e24
	.4byte 0x0000001E
	.4byte 0x00000046
	.4byte 0xFFFFFFDD
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_nok_00000e24
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KAMEBABA_F_nok_000012f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0008005B
	.4byte evt_npc_kamek_move_position
	.4byte str_ババ_nok_00000e24
	.4byte 0x00000096
	.4byte 0xFFFFFFDD
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF9718882
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xF9718882
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_nok_00000e24
	.4byte str_A_4_nok_0000143c
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg2_013_nok_00001440
	.4byte nok_stg2_013_cb
	.4byte str_ババ_nok_00000e24
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_nok_00001380
	.4byte str_KPA_S_3_nok_000013fc
	.4byte str_KPA_T_2_nok_00001404
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg2_014_nok_00001450
	.4byte 0x00000000
	.4byte str_mario_nok_00001380
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x00000080
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x000001A4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg2_015_nok_00001460
	.4byte 0x00000000
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_S_1_nok_00001388
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F80
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000144
	.4byte 0x000000BD
	.4byte 0x00000227
	.4byte 0x00000144
	.4byte 0x00000055
	.4byte 0xFFFFFFD4
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_SURP_nok_00001470
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000041
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000002
	.4byte zero_nok_0000130c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_nok_0000130c
	.4byte str_ババ_nok_00000e24
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
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000193
	.4byte 0x00000068
	.4byte 0x0000014B
	.4byte 0x00000193
	.4byte 0x0000002B
	.4byte 0xFFFFFFEF
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg2_016_nok_00001490
	.4byte 0x00000000
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000132
	.4byte 0x000000A8
	.4byte 0x00000158
	.4byte 0x00000132
	.4byte 0x00000055
	.4byte 0xFFFFFF7E
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコノコA_nok_00000dd8
	.4byte str_NOK_R_4_nok_000014a0
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x00000198
	.4byte 0xFFFFFFD2
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_NOKO_JUMP1_nok_000014a8
	.4byte 0x00000198
	.4byte 0x00000000
	.4byte 0xFFFFFFD2
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x00000176
	.4byte 0x00000032
	.4byte 0xFFFFFFB3
	.4byte 0x000001F4
	.4byte 0x0000003C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x00000176
	.4byte 0xFFFFFF83
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_NOKO_JUMP1_nok_000014a8
	.4byte 0x00000176
	.4byte 0x00000032
	.4byte 0xFFFFFF83
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x00000176
	.4byte 0x00000040
	.4byte 0xFFFFFF67
	.4byte 0x000001F4
	.4byte 0x00000014
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000002EE
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコノコA_nok_00000dd8
	.4byte str_NOK_A_1_nok_000014c0
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_poster_nok_000012c4
	.4byte str_A_1_nok_000014c8
	.4byte 0x0001000A
	.4byte 0x000002EE
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコノコA_nok_00000dd8
	.4byte str_NOK_S_3_nok_000014cc
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_poster_nok_000012c4
	.4byte str_Z_2_nok_000014d4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_poster_nok_000012c4
	.4byte 0x00000080
	.4byte 0x0001005B
	.4byte pposter_nok_on
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x00000400
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_NOKO_JUMP1_nok_000014a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_snd_sfxon_3d_ex
	.4byte str_SFX_KUPPA_NOKO_POSTE_nok_000014d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000002EE
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000005DC
	.4byte 0x00000032
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_O_1_nok_000014f0
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_SURP_nok_000014f8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000041
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000002
	.4byte zero_nok_0000130c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_nok_0000130c
	.4byte str_ババ_nok_00000e24
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
	.4byte kpa_chg_pose
	.4byte str_KPA_S_5_nok_00001518
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコノコA_nok_00000dd8
	.4byte str_NOK_R_3_nok_00001520
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x0000013C
	.4byte 0xFFFFFF66
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x00000118
	.4byte 0xFFFFFF39
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ie_in_kabe_nok_00001528
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_ie_doa_nok_00000fcc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN1_nok_00001538
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24A8680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_ie_doa_nok_00000fcc
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_ie_doa_nok_00000fcc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte evt_snd_sfxon_3d_ex
	.4byte str_SFX_DOOR_SHUT1_nok_00001370
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000190
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24BE280
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0xF24A8680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_ie_doa_nok_00000fcc
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x40000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x00000102
	.4byte 0xFFFFFF4D
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコノコA_nok_00000dd8
	.4byte 0x0000014F
	.4byte 0xFFFFFF19
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000D0
	.4byte 0x000000B1
	.4byte 0x0000014D
	.4byte 0x000000D0
	.4byte 0x00000061
	.4byte 0xFFFFFF7A
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_nok_00001380
	.4byte str_KPA_S_5_nok_00001518
	.4byte str_KPA_T_5_nok_00001548
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg2_017_nok_00001550
	.4byte 0x00000000
	.4byte str_mario_nok_00001380
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg2_018_nok_00001560
	.4byte 0x00000000
	.4byte str_ババ_nok_00000e24
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_SATI_nok_00001570
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00007D00
	.4byte 0x00010005
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x000002EE
	.4byte 0x0003005B
	.4byte evt_snd_bgm_freq
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_nok_00001380
	.4byte str_KPA_S_2_nok_0000158c
	.4byte str_KPA_T_4_nok_00001594
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg2_019_nok_0000159c
	.4byte 0x00000000
	.4byte str_mario_nok_00001380
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000075
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000006
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0001005E
	.4byte unk_evt_803bac3c
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x0000003A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_mri_00_nok_000015ac
	.4byte zero_nok_0000130c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nok_00_koopa_evt

# .data:0x2C3C | 0x2E24 | size: 0x334
.obj nok_00_init_evt_20_data_2E24, global
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000074
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte nok_00_koopa_npc_entry
	.4byte 0x0001005C
	.4byte nok_00_koopa_evt
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG1_NOK1_nok_00001268
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_NOK1_nok_000012e4
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000001A
	.4byte 0x0001005C
	.4byte bero_case_entry
	.4byte 0x0001005C
	.4byte first_time_camera
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00000021
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
	.4byte kizayarou_init
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84061D8
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84061D8
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_S_kawa_nok_000015b4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte yado_data
	.4byte 0x0001005E
	.4byte evt_door_setup
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte mise_data
	.4byte 0x0001005E
	.4byte evt_door_setup
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte ie_data
	.4byte 0x0001005E
	.4byte evt_door_setup
	.4byte 0x00020019
	.4byte 0xF5DE0180
	.4byte 0x00000074
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_nok_000015bc
	.4byte 0x0000009B
	.4byte 0x0000003C
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_shop_setup
	.4byte obj_list
	.4byte goods_list
	.4byte shopper_data
	.4byte trade_list
	.4byte 0x0002005B
	.4byte evt_kinopio_setup
	.4byte kino_dt
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_butterfly_nok_000015c8
	.4byte 0xFE363C80
	.4byte 0xFFFFFE75
	.4byte 0x00000014
	.4byte 0x000000FA
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
	.4byte str_butterfly_nok_000015c8
	.4byte 0xFE363C80
	.4byte 0xFFFFFFB0
	.4byte 0x00000014
	.4byte 0x0000010E
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
	.4byte str_butterfly_nok_000015c8
	.4byte 0xFE363C80
	.4byte 0xFFFFFFD8
	.4byte 0x00000014
	.4byte 0x000001D6
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
	.4byte str_butterfly_nok_000015c8
	.4byte 0xFE363C80
	.4byte 0x00000177
	.4byte 0x00000014
	.4byte 0x000000FA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte hitDmgRetPoints
	.4byte 0x0001005E
	.4byte evt_gazigazi_entry
	.4byte 0x0008005B
	.4byte evt_mobj_kururing_floor
	.4byte str_kururin1_nok_000015d4
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0x0000015E
	.4byte str_S_ground03_nok_000015e0
	.4byte 0x0000007D
	.4byte 0xF8407161
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nok_00_init_evt_20_data_2E24

# 0x00000000..0x00000004 | size: 0x4
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x0 | size: 0x4
.obj poster, local
	.skip 0x4
.endobj poster
