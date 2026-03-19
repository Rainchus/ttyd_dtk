.include "macros.inc"
.file "win.o"

# 0x00000D88..0x00000ECC | size: 0x144
.text
.balign 4

# .text:0x0 | 0xD88 | size: 0x4
.fn _unresolved, global
/* 00000D88 00000E4C  4E 80 00 20 */	blr
.endfn _unresolved

# .text:0x4 | 0xD8C | size: 0x4C
.fn _epilog, global
/* 00000D8C 00000E50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000D90 00000E54  7C 08 02 A6 */	mflr r0
/* 00000D94 00000E58  3C 60 00 00 */	lis r3, _dtors@ha
/* 00000D98 00000E5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000D9C 00000E60  38 03 00 00 */	addi r0, r3, _dtors@l
/* 00000DA0 00000E64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000DA4 00000E68  7C 1F 03 78 */	mr r31, r0
/* 00000DA8 00000E6C  48 00 00 10 */	b .L_00000DB8
.L_00000DAC:
/* 00000DAC 00000E70  7D 89 03 A6 */	mtctr r12
/* 00000DB0 00000E74  4E 80 04 21 */	bctrl
/* 00000DB4 00000E78  3B FF 00 04 */	addi r31, r31, 0x4
.L_00000DB8:
/* 00000DB8 00000E7C  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 00000DBC 00000E80  28 0C 00 00 */	cmplwi r12, 0x0
/* 00000DC0 00000E84  40 82 FF EC */	bne .L_00000DAC
/* 00000DC4 00000E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000DC8 00000E8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000DCC 00000E90  7C 08 03 A6 */	mtlr r0
/* 00000DD0 00000E94  38 21 00 10 */	addi r1, r1, 0x10
/* 00000DD4 00000E98  4E 80 00 20 */	blr
.endfn _epilog

# .text:0x50 | 0xDD8 | size: 0xF4
.fn _prolog, global
/* 00000DD8 00000E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000DDC 00000EA0  7C 08 02 A6 */	mflr r0
/* 00000DE0 00000EA4  3C 60 00 00 */	lis r3, _ctors@ha
/* 00000DE4 00000EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000DE8 00000EAC  38 03 00 00 */	addi r0, r3, _ctors@l
/* 00000DEC 00000EB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000DF0 00000EB4  7C 1F 03 78 */	mr r31, r0
/* 00000DF4 00000EB8  48 00 00 10 */	b .L_00000E04
.L_00000DF8:
/* 00000DF8 00000EBC  7D 89 03 A6 */	mtctr r12
/* 00000DFC 00000EC0  4E 80 04 21 */	bctrl
/* 00000E00 00000EC4  3B FF 00 04 */	addi r31, r31, 0x4
.L_00000E04:
/* 00000E04 00000EC8  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 00000E08 00000ECC  28 0C 00 00 */	cmplwi r12, 0x0
/* 00000E0C 00000ED0  40 82 FF EC */	bne .L_00000DF8
/* 00000E10 00000ED4  3C 60 00 00 */	lis r3, str_win_00_win_00004bf8@ha
/* 00000E14 00000ED8  3C 80 00 00 */	lis r4, win_00_init_evt_28_data_3524@ha
/* 00000E18 00000EDC  38 63 00 00 */	addi r3, r3, str_win_00_win_00004bf8@l
/* 00000E1C 00000EE0  38 84 00 00 */	addi r4, r4, win_00_init_evt_28_data_3524@l
/* 00000E20 00000EE4  4B FF FF 69 */	bl relSetEvtAddr
/* 00000E24 00000EE8  3C 60 00 00 */	lis r3, str_win_01_win_00004c00@ha
/* 00000E28 00000EEC  3C 80 00 00 */	lis r4, win_01_init_evt_28_data_4338@ha
/* 00000E2C 00000EF0  38 63 00 00 */	addi r3, r3, str_win_01_win_00004c00@l
/* 00000E30 00000EF4  38 84 00 00 */	addi r4, r4, win_01_init_evt_28_data_4338@l
/* 00000E34 00000EF8  4B FF FF 55 */	bl relSetEvtAddr
/* 00000E38 00000EFC  3C 60 00 00 */	lis r3, str_win_02_win_00004c08@ha
/* 00000E3C 00000F00  3C 80 00 00 */	lis r4, win_02_init_evt_28_data_4A44@ha
/* 00000E40 00000F04  38 63 00 00 */	addi r3, r3, str_win_02_win_00004c08@l
/* 00000E44 00000F08  38 84 00 00 */	addi r4, r4, win_02_init_evt_28_data_4A44@l
/* 00000E48 00000F0C  4B FF FF 41 */	bl relSetEvtAddr
/* 00000E4C 00000F10  3C 60 00 00 */	lis r3, str_win_03_win_00004c10@ha
/* 00000E50 00000F14  3C 80 00 00 */	lis r4, win_03_init_evt_28_data_5410@ha
/* 00000E54 00000F18  38 63 00 00 */	addi r3, r3, str_win_03_win_00004c10@l
/* 00000E58 00000F1C  38 84 00 00 */	addi r4, r4, win_03_init_evt_28_data_5410@l
/* 00000E5C 00000F20  4B FF FF 2D */	bl relSetEvtAddr
/* 00000E60 00000F24  3C 60 00 00 */	lis r3, str_win_04_win_00004c18@ha
/* 00000E64 00000F28  3C 80 00 00 */	lis r4, win_04_init_evt_28_data_9934@ha
/* 00000E68 00000F2C  38 63 00 00 */	addi r3, r3, str_win_04_win_00004c18@l
/* 00000E6C 00000F30  38 84 00 00 */	addi r4, r4, win_04_init_evt_28_data_9934@l
/* 00000E70 00000F34  4B FF FF 19 */	bl relSetEvtAddr
/* 00000E74 00000F38  3C 60 00 00 */	lis r3, str_win_05_win_00004c20@ha
/* 00000E78 00000F3C  3C 80 00 00 */	lis r4, win_05_init_evt_28_data_9E48@ha
/* 00000E7C 00000F40  38 63 00 00 */	addi r3, r3, str_win_05_win_00004c20@l
/* 00000E80 00000F44  38 84 00 00 */	addi r4, r4, win_05_init_evt_28_data_9E48@l
/* 00000E84 00000F48  4B FF FF 05 */	bl relSetEvtAddr
/* 00000E88 00000F4C  3C 60 00 00 */	lis r3, str_win_06_win_00004c28@ha
/* 00000E8C 00000F50  3C 80 00 00 */	lis r4, win_06_init_evt_28_data_10794@ha
/* 00000E90 00000F54  38 63 00 00 */	addi r3, r3, str_win_06_win_00004c28@l
/* 00000E94 00000F58  38 84 00 00 */	addi r4, r4, win_06_init_evt_28_data_10794@l
/* 00000E98 00000F5C  4B FF FE F1 */	bl relSetEvtAddr
/* 00000E9C 00000F60  3C 60 00 00 */	lis r3, str_win_win_00004c30@ha
/* 00000EA0 00000F64  3C 80 00 00 */	lis r4, btlsetup_win_tbl_28_data_B7C8@ha
/* 00000EA4 00000F68  3C A0 00 00 */	lis r5, btl_win_setup_no_tbl_28_data_BA2C@ha
/* 00000EA8 00000F6C  38 63 00 00 */	addi r3, r3, str_win_win_00004c30@l
/* 00000EAC 00000F70  38 84 00 00 */	addi r4, r4, btlsetup_win_tbl_28_data_B7C8@l
/* 00000EB0 00000F74  38 A5 00 00 */	addi r5, r5, btl_win_setup_no_tbl_28_data_BA2C@l
/* 00000EB4 00000F78  4B FF FE D5 */	bl relSetBtlAddr
/* 00000EB8 00000F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000EBC 00000F80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000EC0 00000F84  7C 08 03 A6 */	mtlr r0
/* 00000EC4 00000F88  38 21 00 10 */	addi r1, r1, 0x10
/* 00000EC8 00000F8C  4E 80 00 20 */	blr
.endfn _prolog

# 0x00001440..0x000014F0 | size: 0xB0
.rodata
.balign 8

# .rodata:0x0 | 0x1440 | size: 0x14
.obj str_SFX_DOOR_OPEN_WOOD3_win_00004b88, local
	.string "SFX_DOOR_OPEN_WOOD3"
.endobj str_SFX_DOOR_OPEN_WOOD3_win_00004b88

# .rodata:0x14 | 0x1454 | size: 0x14
.obj str_SFX_DOOR_SHUT_WOOD2_win_00004b9c, local
	.string "SFX_DOOR_SHUT_WOOD2"
.endobj str_SFX_DOOR_SHUT_WOOD2_win_00004b9c

# .rodata:0x28 | 0x1468 | size: 0xE
.obj str_SFX_HIT_TREE1_win_00004bb0, local
	.string "SFX_HIT_TREE1"
.endobj str_SFX_HIT_TREE1_win_00004bb0

# .rodata:0x36 | 0x1476 | size: 0x2
.obj gap_03_00001476_rodata, global
.hidden gap_03_00001476_rodata
	.2byte 0x0000
.endobj gap_03_00001476_rodata

# .rodata:0x38 | 0x1478 | size: 0x16
.obj str_SFX_HIT_TREE1_LEAVES_win_00004bc0, local
	.string "SFX_HIT_TREE1_LEAVES1"
.endobj str_SFX_HIT_TREE1_LEAVES_win_00004bc0

# .rodata:0x4E | 0x148E | size: 0x2
.obj gap_03_0000148E_rodata, global
.hidden gap_03_0000148E_rodata
	.2byte 0x0000
.endobj gap_03_0000148E_rodata

# .rodata:0x50 | 0x1490 | size: 0x7
.obj str_ガイド_win_00004bd8, local
	.4byte 0x834B8343
	.byte 0x83, 0x68, 0x00
.endobj str_ガイド_win_00004bd8

# .rodata:0x57 | 0x1497 | size: 0x1
.obj gap_03_00001497_rodata, global
.hidden gap_03_00001497_rodata
	.byte 0x00
.endobj gap_03_00001497_rodata

# .rodata:0x58 | 0x1498 | size: 0x16
.obj str_SFX_STG2_PUNI_MOVE2__win_00004be0, local
	.string "SFX_STG2_PUNI_MOVE2_1"
.endobj str_SFX_STG2_PUNI_MOVE2__win_00004be0

# .rodata:0x6E | 0x14AE | size: 0x2
.obj gap_03_000014AE_rodata, global
.hidden gap_03_000014AE_rodata
	.2byte 0x0000
.endobj gap_03_000014AE_rodata

# .rodata:0x70 | 0x14B0 | size: 0x7
.obj str_win_00_win_00004bf8, local
	.string "win_00"
.endobj str_win_00_win_00004bf8

# .rodata:0x77 | 0x14B7 | size: 0x1
.obj gap_03_000014B7_rodata, global
.hidden gap_03_000014B7_rodata
	.byte 0x00
.endobj gap_03_000014B7_rodata

# .rodata:0x78 | 0x14B8 | size: 0x7
.obj str_win_01_win_00004c00, local
	.string "win_01"
.endobj str_win_01_win_00004c00

# .rodata:0x7F | 0x14BF | size: 0x1
.obj gap_03_000014BF_rodata, global
.hidden gap_03_000014BF_rodata
	.byte 0x00
.endobj gap_03_000014BF_rodata

# .rodata:0x80 | 0x14C0 | size: 0x7
.obj str_win_02_win_00004c08, local
	.string "win_02"
.endobj str_win_02_win_00004c08

# .rodata:0x87 | 0x14C7 | size: 0x1
.obj gap_03_000014C7_rodata, global
.hidden gap_03_000014C7_rodata
	.byte 0x00
.endobj gap_03_000014C7_rodata

# .rodata:0x88 | 0x14C8 | size: 0x7
.obj str_win_03_win_00004c10, local
	.string "win_03"
.endobj str_win_03_win_00004c10

# .rodata:0x8F | 0x14CF | size: 0x1
.obj gap_03_000014CF_rodata, global
.hidden gap_03_000014CF_rodata
	.byte 0x00
.endobj gap_03_000014CF_rodata

# .rodata:0x90 | 0x14D0 | size: 0x7
.obj str_win_04_win_00004c18, local
	.string "win_04"
.endobj str_win_04_win_00004c18

# .rodata:0x97 | 0x14D7 | size: 0x1
.obj gap_03_000014D7_rodata, global
.hidden gap_03_000014D7_rodata
	.byte 0x00
.endobj gap_03_000014D7_rodata

# .rodata:0x98 | 0x14D8 | size: 0x7
.obj str_win_05_win_00004c20, local
	.string "win_05"
.endobj str_win_05_win_00004c20

# .rodata:0x9F | 0x14DF | size: 0x1
.obj gap_03_000014DF_rodata, global
.hidden gap_03_000014DF_rodata
	.byte 0x00
.endobj gap_03_000014DF_rodata

# .rodata:0xA0 | 0x14E0 | size: 0x7
.obj str_win_06_win_00004c28, local
	.string "win_06"
.endobj str_win_06_win_00004c28

# .rodata:0xA7 | 0x14E7 | size: 0x1
.obj gap_03_000014E7_rodata, global
.hidden gap_03_000014E7_rodata
	.byte 0x00
.endobj gap_03_000014E7_rodata

# .rodata:0xA8 | 0x14E8 | size: 0x4
.obj str_win_win_00004c30, local
	.string "win"
.endobj str_win_win_00004c30

# .rodata:0xAC | 0x14EC | size: 0x4
.obj gap_03_000014EC_rodata, global
.hidden gap_03_000014EC_rodata
	.4byte 0x00000000
.endobj gap_03_000014EC_rodata

# 0x00009EF0..0x0000A4D8 | size: 0x5E8
.data
.balign 8

# .data:0x0 | 0x9EF0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x9EF8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x9EFC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x9F00 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x9F04 | size: 0x4
.obj gap_04_00009F04_data, global
.hidden gap_04_00009F04_data
	.4byte 0x00000000
.endobj gap_04_00009F04_data

# .data:0x18 | 0x9F08 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x9F10 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x9F14 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x9F18 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x9F20 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x9F24 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x9F28 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x9F2C | size: 0x4
.obj gap_04_00009F2C_data, global
.hidden gap_04_00009F2C_data
	.4byte 0x00000000
.endobj gap_04_00009F2C_data

# .data:0x40 | 0x9F30 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x9F38 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x9F3C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x9F40 | size: 0x150
.obj evt_win_door_open_pure_28_data_9F40, global
	.4byte 0x0000006B
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C88
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN_WOOD3_win_00004b88
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C88
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT_WOOD2_win_00004b9c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFBA
	.4byte 0xFE363C81
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
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
.endobj evt_win_door_open_pure_28_data_9F40

# .data:0x1A0 | 0xA090 | size: 0x40
.obj evt_win_door_open_28_data_A090, global
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005B
	.4byte evt_bero_mario_go
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000320
	.4byte 0x0001005E
	.4byte evt_win_door_open_pure_28_data_9F40
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_win_door_open_28_data_A090

# .data:0x1E0 | 0xA0D0 | size: 0x108
.obj evt_win_door_close_pure, local
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C88
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT_WOOD2_win_00004b9c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
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
.endobj evt_win_door_close_pure

# .data:0x2E8 | 0xA1D8 | size: 0xA4
.obj evt_win_door_close_28_data_A1D8, global
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0001005B
	.4byte evt_bero_mario_go
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000046
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000320
	.4byte 0x0001005E
	.4byte evt_win_door_close_pure
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_win_door_close_28_data_A1D8

# .data:0x38C | 0xA27C | size: 0x1A8
.obj _tree_anime, local
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C82
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_HIT_TREE1_win_00004bb0
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_HIT_TREE1_LEAVES_win_00004bc0
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte 0xFE363C8A
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _tree_anime

# .data:0x534 | 0xA424 | size: 0x64
.obj win_tree_entry, local
	.4byte 0x0001003E
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00040042
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte _tree_anime
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj win_tree_entry

# .data:0x598 | 0xA488 | size: 0x50
.obj win_puni_walk_se_28_data_A488, global
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガイド_win_00004bd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_MOVE2__win_00004be0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj win_puni_walk_se_28_data_A488
