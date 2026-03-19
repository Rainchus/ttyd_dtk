.include "macros.inc"
.file "jin.o"

# 0x00000000..0x00000270 | size: 0x270
.text
.balign 4

# .text:0x0 | 0x0 | size: 0x4
.fn _unresolved, global
/* 00000000 000000C4  4E 80 00 20 */	blr
.endfn _unresolved

# .text:0x4 | 0x4 | size: 0x84
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
/* 0000003C 00000100  3C 80 00 00 */	lis r4, partyPoseTbl@ha
/* 00000040 00000104  3C 60 00 00 */	lis r3, pose_buf@ha
/* 00000044 00000108  38 C4 00 00 */	addi r6, r4, partyPoseTbl@l
/* 00000048 0000010C  80 83 00 00 */	lwz r4, pose_buf@l(r3)
/* 0000004C 00000110  38 A0 00 3C */	li r5, 0x3c
/* 00000050 00000114  38 66 01 68 */	addi r3, r6, 0x168
/* 00000054 00000118  4B FF FF AD */	bl memcpy
/* 00000058 0000011C  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 0000005C 00000120  3C 60 00 00 */	lis r3, pose_buf@ha
/* 00000060 00000124  38 A4 00 00 */	addi r5, r4, mapalloc_base_ptr@l
/* 00000064 00000128  38 83 00 00 */	addi r4, r3, pose_buf@l
/* 00000068 0000012C  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000006C 00000130  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00000070 00000134  4B FF FF 91 */	bl _mapFree
/* 00000074 00000138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000078 0000013C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 0000007C 00000140  7C 08 03 A6 */	mtlr r0
/* 00000080 00000144  38 21 00 10 */	addi r1, r1, 0x10
/* 00000084 00000148  4E 80 00 20 */	blr
.endfn _epilog

# .text:0x88 | 0x88 | size: 0x18C
.fn _prolog, global
/* 00000088 0000014C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000008C 00000150  7C 08 02 A6 */	mflr r0
/* 00000090 00000154  3C 60 00 00 */	lis r3, _ctors@ha
/* 00000094 00000158  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000098 0000015C  38 03 00 00 */	addi r0, r3, _ctors@l
/* 0000009C 00000160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000000A0 00000164  7C 1F 03 78 */	mr r31, r0
/* 000000A4 00000168  48 00 00 10 */	b .L_000000B4
.L_000000A8:
/* 000000A8 0000016C  7D 89 03 A6 */	mtctr r12
/* 000000AC 00000170  4E 80 04 21 */	bctrl
/* 000000B0 00000174  3B FF 00 04 */	addi r31, r31, 0x4
.L_000000B4:
/* 000000B4 00000178  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 000000B8 0000017C  28 0C 00 00 */	cmplwi r12, 0x0
/* 000000BC 00000180  40 82 FF EC */	bne .L_000000A8
/* 000000C0 00000184  3C 60 00 00 */	lis r3, str_jin_00_jin_00007220@ha
/* 000000C4 00000188  3C 80 00 00 */	lis r4, jin_00_init_evt_13_data_3664@ha
/* 000000C8 0000018C  38 63 00 00 */	addi r3, r3, str_jin_00_jin_00007220@l
/* 000000CC 00000190  38 84 00 00 */	addi r4, r4, jin_00_init_evt_13_data_3664@l
/* 000000D0 00000194  4B FF FF 31 */	bl relSetEvtAddr
/* 000000D4 00000198  3C 60 00 00 */	lis r3, str_jin_01_jin_00007228@ha
/* 000000D8 0000019C  3C 80 00 00 */	lis r4, jin_01_init_evt_13_data_3F54@ha
/* 000000DC 000001A0  38 63 00 00 */	addi r3, r3, str_jin_01_jin_00007228@l
/* 000000E0 000001A4  38 84 00 00 */	addi r4, r4, jin_01_init_evt_13_data_3F54@l
/* 000000E4 000001A8  4B FF FF 1D */	bl relSetEvtAddr
/* 000000E8 000001AC  3C 60 00 00 */	lis r3, str_jin_02_jin_00007230@ha
/* 000000EC 000001B0  3C 80 00 00 */	lis r4, jin_02_init_evt_13_data_44F4@ha
/* 000000F0 000001B4  38 63 00 00 */	addi r3, r3, str_jin_02_jin_00007230@l
/* 000000F4 000001B8  38 84 00 00 */	addi r4, r4, jin_02_init_evt_13_data_44F4@l
/* 000000F8 000001BC  4B FF FF 09 */	bl relSetEvtAddr
/* 000000FC 000001C0  3C 60 00 00 */	lis r3, str_jin_03_jin_00007238@ha
/* 00000100 000001C4  3C 80 00 00 */	lis r4, jin_03_init_evt_13_data_49AC@ha
/* 00000104 000001C8  38 63 00 00 */	addi r3, r3, str_jin_03_jin_00007238@l
/* 00000108 000001CC  38 84 00 00 */	addi r4, r4, jin_03_init_evt_13_data_49AC@l
/* 0000010C 000001D0  4B FF FE F5 */	bl relSetEvtAddr
/* 00000110 000001D4  3C 60 00 00 */	lis r3, str_jin_04_jin_00007240@ha
/* 00000114 000001D8  3C 80 00 00 */	lis r4, jin_04_init_evt_13_data_77AC@ha
/* 00000118 000001DC  38 63 00 00 */	addi r3, r3, str_jin_04_jin_00007240@l
/* 0000011C 000001E0  38 84 00 00 */	addi r4, r4, jin_04_init_evt_13_data_77AC@l
/* 00000120 000001E4  4B FF FE E1 */	bl relSetEvtAddr
/* 00000124 000001E8  3C 60 00 00 */	lis r3, str_jin_05_jin_00007248@ha
/* 00000128 000001EC  3C 80 00 00 */	lis r4, jin_05_init_evt_13_data_7B60@ha
/* 0000012C 000001F0  38 63 00 00 */	addi r3, r3, str_jin_05_jin_00007248@l
/* 00000130 000001F4  38 84 00 00 */	addi r4, r4, jin_05_init_evt_13_data_7B60@l
/* 00000134 000001F8  4B FF FE CD */	bl relSetEvtAddr
/* 00000138 000001FC  3C 60 00 00 */	lis r3, str_jin_06_jin_00007250@ha
/* 0000013C 00000200  3C 80 00 00 */	lis r4, jin_06_init_evt_13_data_7EF8@ha
/* 00000140 00000204  38 63 00 00 */	addi r3, r3, str_jin_06_jin_00007250@l
/* 00000144 00000208  38 84 00 00 */	addi r4, r4, jin_06_init_evt_13_data_7EF8@l
/* 00000148 0000020C  4B FF FE B9 */	bl relSetEvtAddr
/* 0000014C 00000210  3C 60 00 00 */	lis r3, str_jin_07_jin_00007258@ha
/* 00000150 00000214  3C 80 00 00 */	lis r4, jin_07_init_evt_13_data_8F34@ha
/* 00000154 00000218  38 63 00 00 */	addi r3, r3, str_jin_07_jin_00007258@l
/* 00000158 0000021C  38 84 00 00 */	addi r4, r4, jin_07_init_evt_13_data_8F34@l
/* 0000015C 00000220  4B FF FE A5 */	bl relSetEvtAddr
/* 00000160 00000224  3C 60 00 00 */	lis r3, str_jin_08_jin_00007260@ha
/* 00000164 00000228  3C 80 00 00 */	lis r4, jin_08_init_evt_13_data_9C88@ha
/* 00000168 0000022C  38 63 00 00 */	addi r3, r3, str_jin_08_jin_00007260@l
/* 0000016C 00000230  38 84 00 00 */	addi r4, r4, jin_08_init_evt_13_data_9C88@l
/* 00000170 00000234  4B FF FE 91 */	bl relSetEvtAddr
/* 00000174 00000238  3C 60 00 00 */	lis r3, str_jin_09_jin_00007268@ha
/* 00000178 0000023C  3C 80 00 00 */	lis r4, jin_09_init_evt_13_data_9FCC@ha
/* 0000017C 00000240  38 63 00 00 */	addi r3, r3, str_jin_09_jin_00007268@l
/* 00000180 00000244  38 84 00 00 */	addi r4, r4, jin_09_init_evt_13_data_9FCC@l
/* 00000184 00000248  4B FF FE 7D */	bl relSetEvtAddr
/* 00000188 0000024C  3C 60 00 00 */	lis r3, str_jin_10_jin_00007270@ha
/* 0000018C 00000250  3C 80 00 00 */	lis r4, jin_10_init_evt_13_data_AB34@ha
/* 00000190 00000254  38 63 00 00 */	addi r3, r3, str_jin_10_jin_00007270@l
/* 00000194 00000258  38 84 00 00 */	addi r4, r4, jin_10_init_evt_13_data_AB34@l
/* 00000198 0000025C  4B FF FE 69 */	bl relSetEvtAddr
/* 0000019C 00000260  3C 60 00 00 */	lis r3, str_jin_11_jin_00007278@ha
/* 000001A0 00000264  3C 80 00 00 */	lis r4, jin_11_init_evt_13_data_ADC8@ha
/* 000001A4 00000268  38 63 00 00 */	addi r3, r3, str_jin_11_jin_00007278@l
/* 000001A8 0000026C  38 84 00 00 */	addi r4, r4, jin_11_init_evt_13_data_ADC8@l
/* 000001AC 00000270  4B FF FE 55 */	bl relSetEvtAddr
/* 000001B0 00000274  3C 60 00 00 */	lis r3, str_jin_jin_00007280@ha
/* 000001B4 00000278  3C 80 00 00 */	lis r4, btlsetup_jin_tbl_13_data_11580@ha
/* 000001B8 0000027C  3C A0 00 00 */	lis r5, btl_jin_setup_no_tbl_13_data_11C68@ha
/* 000001BC 00000280  38 63 00 00 */	addi r3, r3, str_jin_jin_00007280@l
/* 000001C0 00000284  38 84 00 00 */	addi r4, r4, btlsetup_jin_tbl_13_data_11580@l
/* 000001C4 00000288  38 A5 00 00 */	addi r5, r5, btl_jin_setup_no_tbl_13_data_11C68@l
/* 000001C8 0000028C  4B FF FE 39 */	bl relSetBtlAddr
/* 000001CC 00000290  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 000001D0 00000294  38 80 00 3C */	li r4, 0x3c
/* 000001D4 00000298  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 000001D8 0000029C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000001DC 000002A0  4B FF FE 25 */	bl _mapAlloc
/* 000001E0 000002A4  3C A0 00 00 */	lis r5, pose_buf@ha
/* 000001E4 000002A8  3C 80 00 00 */	lis r4, partyPoseTbl@ha
/* 000001E8 000002AC  38 C5 00 00 */	addi r6, r5, pose_buf@l
/* 000001EC 000002B0  38 A0 00 3C */	li r5, 0x3c
/* 000001F0 000002B4  38 84 00 00 */	addi r4, r4, partyPoseTbl@l
/* 000001F4 000002B8  90 66 00 00 */	stw r3, 0x0(r6)
/* 000001F8 000002BC  38 84 01 68 */	addi r4, r4, 0x168
/* 000001FC 000002C0  4B FF FE 05 */	bl memcpy
/* 00000200 000002C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000204 000002C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000208 000002CC  7C 08 03 A6 */	mtlr r0
/* 0000020C 000002D0  38 21 00 10 */	addi r1, r1, 0x10
/* 00000210 000002D4  4E 80 00 20 */	blr
.endfn _prolog

# .text:0x214 | 0x214 | size: 0x5C
.fn evt_jin_vivian_pose_set_13_text_214, global
/* 00000214 000002D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000218 000002DC  7C 08 02 A6 */	mflr r0
/* 0000021C 000002E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000220 000002E4  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000224 000002E8  7C 7E 1B 78 */	mr r30, r3
/* 00000228 000002EC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000022C 000002F0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000230 000002F4  4B FF FD D1 */	bl evtGetValue
/* 00000234 000002F8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000238 000002FC  7C 7F 1B 78 */	mr r31, r3
/* 0000023C 00000300  7F C3 F3 78 */	mr r3, r30
/* 00000240 00000304  4B FF FD C1 */	bl evtGetValue
/* 00000244 00000308  3C 80 00 00 */	lis r4, partyPoseTbl@ha
/* 00000248 0000030C  57 E0 10 3A */	slwi r0, r31, 2
/* 0000024C 00000310  38 84 00 00 */	addi r4, r4, partyPoseTbl@l
/* 00000250 00000314  7C 84 02 14 */	add r4, r4, r0
/* 00000254 00000318  90 64 01 68 */	stw r3, 0x168(r4)
/* 00000258 0000031C  38 60 00 02 */	li r3, 0x2
/* 0000025C 00000320  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00000260 00000324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000264 00000328  7C 08 03 A6 */	mtlr r0
/* 00000268 0000032C  38 21 00 10 */	addi r1, r1, 0x10
/* 0000026C 00000330  4E 80 00 20 */	blr
.endfn evt_jin_vivian_pose_set_13_text_214

# 0x00000000..0x00000068 | size: 0x68
.rodata
.balign 8

# .rodata:0x0 | 0x0 | size: 0x7
.obj str_jin_00_jin_00007220, local
	.string "jin_00"
.endobj str_jin_00_jin_00007220

# .rodata:0x7 | 0x7 | size: 0x1
.obj gap_03_00000007_rodata, global
.hidden gap_03_00000007_rodata
	.byte 0x00
.endobj gap_03_00000007_rodata

# .rodata:0x8 | 0x8 | size: 0x7
.obj str_jin_01_jin_00007228, local
	.string "jin_01"
.endobj str_jin_01_jin_00007228

# .rodata:0xF | 0xF | size: 0x1
.obj gap_03_0000000F_rodata, global
.hidden gap_03_0000000F_rodata
	.byte 0x00
.endobj gap_03_0000000F_rodata

# .rodata:0x10 | 0x10 | size: 0x7
.obj str_jin_02_jin_00007230, local
	.string "jin_02"
.endobj str_jin_02_jin_00007230

# .rodata:0x17 | 0x17 | size: 0x1
.obj gap_03_00000017_rodata, global
.hidden gap_03_00000017_rodata
	.byte 0x00
.endobj gap_03_00000017_rodata

# .rodata:0x18 | 0x18 | size: 0x7
.obj str_jin_03_jin_00007238, local
	.string "jin_03"
.endobj str_jin_03_jin_00007238

# .rodata:0x1F | 0x1F | size: 0x1
.obj gap_03_0000001F_rodata, global
.hidden gap_03_0000001F_rodata
	.byte 0x00
.endobj gap_03_0000001F_rodata

# .rodata:0x20 | 0x20 | size: 0x7
.obj str_jin_04_jin_00007240, local
	.string "jin_04"
.endobj str_jin_04_jin_00007240

# .rodata:0x27 | 0x27 | size: 0x1
.obj gap_03_00000027_rodata, global
.hidden gap_03_00000027_rodata
	.byte 0x00
.endobj gap_03_00000027_rodata

# .rodata:0x28 | 0x28 | size: 0x7
.obj str_jin_05_jin_00007248, local
	.string "jin_05"
.endobj str_jin_05_jin_00007248

# .rodata:0x2F | 0x2F | size: 0x1
.obj gap_03_0000002F_rodata, global
.hidden gap_03_0000002F_rodata
	.byte 0x00
.endobj gap_03_0000002F_rodata

# .rodata:0x30 | 0x30 | size: 0x7
.obj str_jin_06_jin_00007250, local
	.string "jin_06"
.endobj str_jin_06_jin_00007250

# .rodata:0x37 | 0x37 | size: 0x1
.obj gap_03_00000037_rodata, global
.hidden gap_03_00000037_rodata
	.byte 0x00
.endobj gap_03_00000037_rodata

# .rodata:0x38 | 0x38 | size: 0x7
.obj str_jin_07_jin_00007258, local
	.string "jin_07"
.endobj str_jin_07_jin_00007258

# .rodata:0x3F | 0x3F | size: 0x1
.obj gap_03_0000003F_rodata, global
.hidden gap_03_0000003F_rodata
	.byte 0x00
.endobj gap_03_0000003F_rodata

# .rodata:0x40 | 0x40 | size: 0x7
.obj str_jin_08_jin_00007260, local
	.string "jin_08"
.endobj str_jin_08_jin_00007260

# .rodata:0x47 | 0x47 | size: 0x1
.obj gap_03_00000047_rodata, global
.hidden gap_03_00000047_rodata
	.byte 0x00
.endobj gap_03_00000047_rodata

# .rodata:0x48 | 0x48 | size: 0x7
.obj str_jin_09_jin_00007268, local
	.string "jin_09"
.endobj str_jin_09_jin_00007268

# .rodata:0x4F | 0x4F | size: 0x1
.obj gap_03_0000004F_rodata, global
.hidden gap_03_0000004F_rodata
	.byte 0x00
.endobj gap_03_0000004F_rodata

# .rodata:0x50 | 0x50 | size: 0x7
.obj str_jin_10_jin_00007270, local
	.string "jin_10"
.endobj str_jin_10_jin_00007270

# .rodata:0x57 | 0x57 | size: 0x1
.obj gap_03_00000057_rodata, global
.hidden gap_03_00000057_rodata
	.byte 0x00
.endobj gap_03_00000057_rodata

# .rodata:0x58 | 0x58 | size: 0x7
.obj str_jin_11_jin_00007278, local
	.string "jin_11"
.endobj str_jin_11_jin_00007278

# .rodata:0x5F | 0x5F | size: 0x1
.obj gap_03_0000005F_rodata, global
.hidden gap_03_0000005F_rodata
	.byte 0x00
.endobj gap_03_0000005F_rodata

# .rodata:0x60 | 0x60 | size: 0x4
.obj str_jin_jin_00007280, local
	.string "jin"
.endobj str_jin_jin_00007280

# .rodata:0x64 | 0x64 | size: 0x4
.obj gap_03_00000064_rodata, global
.hidden gap_03_00000064_rodata
	.4byte 0x00000000
.endobj gap_03_00000064_rodata

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

# 0x00000000..0x00000008 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x0 | size: 0x4
.obj pose_buf, local
	.skip 0x4
.endobj pose_buf

# .bss:0x4 | 0x4 | size: 0x4
.obj gap_05_00000004_bss, global
.hidden gap_05_00000004_bss
	.skip 0x4
.endobj gap_05_00000004_bss
