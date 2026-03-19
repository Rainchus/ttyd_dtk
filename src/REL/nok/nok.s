.include "macros.inc"
.file "nok.o"

# 0x00000000..0x00000228 | size: 0x228
.text
.balign 4

# .text:0x0 | 0x0 | size: 0x148
.fn evt_nokonoko_urouro_check_func, local
/* 00000000 000000C4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 00000004 000000C8  7C 08 02 A6 */	mflr r0
/* 00000008 000000CC  90 01 00 74 */	stw r0, 0x74(r1)
/* 0000000C 000000D0  39 61 00 70 */	addi r11, r1, 0x70
/* 00000010 000000D4  48 00 01 39 */	bl _savefpr_28
/* 00000014 000000D8  BF 81 00 40 */	stmw r28, 0x40(r1)
/* 00000018 000000DC  7C 7D 1B 78 */	mr r29, r3
/* 0000001C 000000E0  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00000020 000000E4  83 FC 00 00 */	lwz r31, 0x0(r28)
/* 00000024 000000E8  83 DC 00 04 */	lwz r30, 0x4(r28)
/* 00000028 000000EC  80 9C 00 08 */	lwz r4, 0x8(r28)
/* 0000002C 000000F0  48 00 01 1D */	bl evtGetFloat
/* 00000030 000000F4  FF A0 08 90 */	fmr f29, f1
/* 00000034 000000F8  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 00000038 000000FC  7F A3 EB 78 */	mr r3, r29
/* 0000003C 00000100  48 00 01 0D */	bl evtGetFloat
/* 00000040 00000104  FF 80 08 90 */	fmr f28, f1
/* 00000044 00000108  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 00000048 0000010C  7F A3 EB 78 */	mr r3, r29
/* 0000004C 00000110  48 00 00 FD */	bl evtGetFloat
/* 00000050 00000114  FF C0 08 90 */	fmr f30, f1
/* 00000054 00000118  7F A3 EB 78 */	mr r3, r29
/* 00000058 0000011C  7F E4 FB 78 */	mr r4, r31
/* 0000005C 00000120  48 00 00 ED */	bl evtGetFloat
/* 00000060 00000124  FF E0 08 90 */	fmr f31, f1
/* 00000064 00000128  7F A3 EB 78 */	mr r3, r29
/* 00000068 0000012C  7F C4 F3 78 */	mr r4, r30
/* 0000006C 00000130  48 00 00 DD */	bl evtGetFloat
/* 00000070 00000134  3C 60 00 00 */	lis r3, vec3_nok_00000a60@ha
/* 00000074 00000138  3C 80 00 00 */	lis r4, vec3_nok_00000a6c@ha
/* 00000078 0000013C  39 23 00 00 */	addi r9, r3, vec3_nok_00000a60@l
/* 0000007C 00000140  38 61 00 20 */	addi r3, r1, 0x20
/* 00000080 00000144  38 C4 00 00 */	addi r6, r4, vec3_nok_00000a6c@l
/* 00000084 00000148  81 09 00 00 */	lwz r8, 0x0(r9)
/* 00000088 0000014C  80 E9 00 08 */	lwz r7, 0x8(r9)
/* 0000008C 00000150  38 81 00 2C */	addi r4, r1, 0x2c
/* 00000090 00000154  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 00000094 00000158  80 06 00 08 */	lwz r0, 0x8(r6)
/* 00000098 0000015C  91 01 00 14 */	stw r8, 0x14(r1)
/* 0000009C 00000160  81 29 00 04 */	lwz r9, 0x4(r9)
/* 000000A0 00000164  80 C6 00 04 */	lwz r6, 0x4(r6)
/* 000000A4 00000168  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 000000A8 0000016C  90 A1 00 08 */	stw r5, 0x8(r1)
/* 000000AC 00000170  90 01 00 10 */	stw r0, 0x10(r1)
/* 000000B0 00000174  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 000000B4 00000178  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 000000B8 0000017C  81 01 00 14 */	lwz r8, 0x14(r1)
/* 000000BC 00000180  D3 A1 00 08 */	stfs f29, 0x8(r1)
/* 000000C0 00000184  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 000000C4 00000188  D3 81 00 10 */	stfs f28, 0x10(r1)
/* 000000C8 0000018C  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 000000CC 00000190  80 01 00 10 */	lwz r0, 0x10(r1)
/* 000000D0 00000194  91 21 00 18 */	stw r9, 0x18(r1)
/* 000000D4 00000198  91 01 00 2C */	stw r8, 0x2c(r1)
/* 000000D8 0000019C  91 21 00 30 */	stw r9, 0x30(r1)
/* 000000DC 000001A0  90 E1 00 34 */	stw r7, 0x34(r1)
/* 000000E0 000001A4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 000000E4 000001A8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 000000E8 000001AC  90 C1 00 24 */	stw r6, 0x24(r1)
/* 000000EC 000001B0  90 01 00 28 */	stw r0, 0x28(r1)
/* 000000F0 000001B4  48 00 00 59 */	bl PSVECDistance
/* 000000F4 000001B8  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 000000F8 000001BC  4C 40 13 82 */	cror eq, lt, eq
/* 000000FC 000001C0  40 82 00 0C */	bne .L_00000108
/* 00000100 000001C4  38 60 00 02 */	li r3, 0x2
/* 00000104 000001C8  48 00 00 28 */	b .L_0000012C
.L_00000108:
/* 00000108 000001CC  FC 20 E8 90 */	fmr f1, f29
/* 0000010C 000001D0  7F A3 EB 78 */	mr r3, r29
/* 00000110 000001D4  7F E4 FB 78 */	mr r4, r31
/* 00000114 000001D8  48 00 00 35 */	bl evtSetFloat
/* 00000118 000001DC  FC 20 E0 90 */	fmr f1, f28
/* 0000011C 000001E0  7F A3 EB 78 */	mr r3, r29
/* 00000120 000001E4  7F C4 F3 78 */	mr r4, r30
/* 00000124 000001E8  48 00 00 25 */	bl evtSetFloat
/* 00000128 000001EC  38 60 00 02 */	li r3, 0x2
.L_0000012C:
/* 0000012C 000001F0  39 61 00 70 */	addi r11, r1, 0x70
/* 00000130 000001F4  48 00 00 19 */	bl _restfpr_28
/* 00000134 000001F8  BB 81 00 40 */	lmw r28, 0x40(r1)
/* 00000138 000001FC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 0000013C 00000200  7C 08 03 A6 */	mtlr r0
/* 00000140 00000204  38 21 00 70 */	addi r1, r1, 0x70
/* 00000144 00000208  4E 80 00 20 */	blr
.endfn evt_nokonoko_urouro_check_func

# .text:0x148 | 0x148 | size: 0x4
.fn _unresolved, global
/* 00000148 0000020C  4E 80 00 20 */	blr
.endfn _unresolved

# .text:0x14C | 0x14C | size: 0x4C
.fn _epilog, global
/* 0000014C 00000210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000150 00000214  7C 08 02 A6 */	mflr r0
/* 00000154 00000218  3C 60 00 00 */	lis r3, _dtors@ha
/* 00000158 0000021C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000015C 00000220  38 03 00 00 */	addi r0, r3, _dtors@l
/* 00000160 00000224  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000164 00000228  7C 1F 03 78 */	mr r31, r0
/* 00000168 0000022C  48 00 00 10 */	b .L_00000178
.L_0000016C:
/* 0000016C 00000230  7D 89 03 A6 */	mtctr r12
/* 00000170 00000234  4E 80 04 21 */	bctrl
/* 00000174 00000238  3B FF 00 04 */	addi r31, r31, 0x4
.L_00000178:
/* 00000178 0000023C  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 0000017C 00000240  28 0C 00 00 */	cmplwi r12, 0x0
/* 00000180 00000244  40 82 FF EC */	bne .L_0000016C
/* 00000184 00000248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000188 0000024C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 0000018C 00000250  7C 08 03 A6 */	mtlr r0
/* 00000190 00000254  38 21 00 10 */	addi r1, r1, 0x10
/* 00000194 00000258  4E 80 00 20 */	blr
.endfn _epilog

# .text:0x198 | 0x198 | size: 0x90
.fn _prolog, global
/* 00000198 0000025C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000019C 00000260  7C 08 02 A6 */	mflr r0
/* 000001A0 00000264  3C 60 00 00 */	lis r3, _ctors@ha
/* 000001A4 00000268  90 01 00 14 */	stw r0, 0x14(r1)
/* 000001A8 0000026C  38 03 00 00 */	addi r0, r3, _ctors@l
/* 000001AC 00000270  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000001B0 00000274  7C 1F 03 78 */	mr r31, r0
/* 000001B4 00000278  48 00 00 10 */	b .L_000001C4
.L_000001B8:
/* 000001B8 0000027C  7D 89 03 A6 */	mtctr r12
/* 000001BC 00000280  4E 80 04 21 */	bctrl
/* 000001C0 00000284  3B FF 00 04 */	addi r31, r31, 0x4
.L_000001C4:
/* 000001C4 00000288  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 000001C8 0000028C  28 0C 00 00 */	cmplwi r12, 0x0
/* 000001CC 00000290  40 82 FF EC */	bne .L_000001B8
/* 000001D0 00000294  3C 60 00 00 */	lis r3, str_nok_00_nok_00000a7c@ha
/* 000001D4 00000298  3C 80 00 00 */	lis r4, nok_00_init_evt_20_data_2E24@ha
/* 000001D8 0000029C  38 63 00 00 */	addi r3, r3, str_nok_00_nok_00000a7c@l
/* 000001DC 000002A0  38 84 00 00 */	addi r4, r4, nok_00_init_evt_20_data_2E24@l
/* 000001E0 000002A4  4B FF FF 69 */	bl relSetEvtAddr
/* 000001E4 000002A8  3C 60 00 00 */	lis r3, str_nok_01_nok_00000a84@ha
/* 000001E8 000002AC  3C 80 00 00 */	lis r4, nok_01_init_evt_20_data_6D70@ha
/* 000001EC 000002B0  38 63 00 00 */	addi r3, r3, str_nok_01_nok_00000a84@l
/* 000001F0 000002B4  38 84 00 00 */	addi r4, r4, nok_01_init_evt_20_data_6D70@l
/* 000001F4 000002B8  4B FF FF 55 */	bl relSetEvtAddr
/* 000001F8 000002BC  3C 60 00 00 */	lis r3, str_nok_nok_00000a8c@ha
/* 000001FC 000002C0  3C 80 00 00 */	lis r4, btlsetup_nok_tbl_20_data_9DAC@ha
/* 00000200 000002C4  3C A0 00 00 */	lis r5, btl_nok_setup_no_tbl_20_data_9E34@ha
/* 00000204 000002C8  38 63 00 00 */	addi r3, r3, str_nok_nok_00000a8c@l
/* 00000208 000002CC  38 84 00 00 */	addi r4, r4, btlsetup_nok_tbl_20_data_9DAC@l
/* 0000020C 000002D0  38 A5 00 00 */	addi r5, r5, btl_nok_setup_no_tbl_20_data_9E34@l
/* 00000210 000002D4  4B FF FF 39 */	bl relSetBtlAddr
/* 00000214 000002D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000218 000002DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 0000021C 000002E0  7C 08 03 A6 */	mtlr r0
/* 00000220 000002E4  38 21 00 10 */	addi r1, r1, 0x10
/* 00000224 000002E8  4E 80 00 20 */	blr
.endfn _prolog

# 0x00000000..0x00000030 | size: 0x30
.rodata
.balign 8

# .rodata:0x0 | 0x0 | size: 0xC
.obj vec3_nok_00000a60, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_nok_00000a60

# .rodata:0xC | 0xC | size: 0xC
.obj vec3_nok_00000a6c, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_nok_00000a6c

# .rodata:0x18 | 0x18 | size: 0x3
.obj str_me_nok_00000a78, local
	.string "me"
.endobj str_me_nok_00000a78

# .rodata:0x1B | 0x1B | size: 0x1
.obj gap_03_0000001B_rodata, global
.hidden gap_03_0000001B_rodata
	.byte 0x00
.endobj gap_03_0000001B_rodata

# .rodata:0x1C | 0x1C | size: 0x7
.obj str_nok_00_nok_00000a7c, local
	.string "nok_00"
.endobj str_nok_00_nok_00000a7c

# .rodata:0x23 | 0x23 | size: 0x1
.obj gap_03_00000023_rodata, global
.hidden gap_03_00000023_rodata
	.byte 0x00
.endobj gap_03_00000023_rodata

# .rodata:0x24 | 0x24 | size: 0x7
.obj str_nok_01_nok_00000a84, local
	.string "nok_01"
.endobj str_nok_01_nok_00000a84

# .rodata:0x2B | 0x2B | size: 0x1
.obj gap_03_0000002B_rodata, global
.hidden gap_03_0000002B_rodata
	.byte 0x00
.endobj gap_03_0000002B_rodata

# .rodata:0x2C | 0x2C | size: 0x4
.obj str_nok_nok_00000a8c, local
	.string "nok"
.endobj str_nok_nok_00000a8c

# 0x00000000..0x000001E8 | size: 0x1E8
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

# .data:0x60 | 0x60 | size: 0x184
.obj nokonoko_urouro_regl, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_nok_00000a78
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000012C
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_me_nok_00000a78
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000000C8
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000190
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_me_nok_00000a78
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000000C8
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000320
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_nok_00000a78
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_npc_get_loiter_dir
	.4byte 0xFE363C83
	.4byte 0xF24C5A80
	.4byte 0xF24E3A80
	.4byte 0x0005005B
	.4byte evt_npc_add_dirdist
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xF24B4280
	.4byte 0x0006005B
	.4byte evt_nokonoko_urouro_check_func
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0xFE363C88
	.4byte 0xF24B9280
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_nok_00000a78
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_sub_get_dir
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_nok_00000a78
	.4byte 0xFE363C83
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_nok_00000a78
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokonoko_urouro_regl

# .data:0x1E4 | 0x1E4 | size: 0x4
.obj gap_04_000001E4_data, global
.hidden gap_04_000001E4_data
	.4byte 0x00000000
.endobj gap_04_000001E4_data
