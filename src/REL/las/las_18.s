.include "macros.inc"
.file "las_18.o"

# 0x00005A68..0x00005BEC | size: 0x184
.text
.balign 4

# .text:0x0 | 0x5A68 | size: 0x68
.fn get_mobj_seq, local
/* 00005A68 00005B34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00005A6C 00005B38  7C 08 02 A6 */	mflr r0
/* 00005A70 00005B3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005A74 00005B40  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00005A78 00005B44  7C 7E 1B 78 */	mr r30, r3
/* 00005A7C 00005B48  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005A80 00005B4C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005A84 00005B50  4B FF A6 B9 */	bl evtGetValue
/* 00005A88 00005B54  4B FF A6 B5 */	bl mobjNameToPtrNoAssert
/* 00005A8C 00005B58  7C 65 1B 79 */	mr. r5, r3
/* 00005A90 00005B5C  40 82 00 18 */	bne .L_00005AA8
/* 00005A94 00005B60  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005A98 00005B64  7F C3 F3 78 */	mr r3, r30
/* 00005A9C 00005B68  38 A0 00 01 */	li r5, 0x1
/* 00005AA0 00005B6C  4B FF A6 9D */	bl evtSetValue
/* 00005AA4 00005B70  48 00 00 14 */	b .L_00005AB8
.L_00005AA8:
/* 00005AA8 00005B74  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005AAC 00005B78  7F C3 F3 78 */	mr r3, r30
/* 00005AB0 00005B7C  80 A5 01 DC */	lwz r5, 0x1dc(r5)
/* 00005AB4 00005B80  4B FF A6 89 */	bl evtSetValue
.L_00005AB8:
/* 00005AB8 00005B84  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00005ABC 00005B88  38 60 00 02 */	li r3, 0x2
/* 00005AC0 00005B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00005AC4 00005B90  7C 08 03 A6 */	mtlr r0
/* 00005AC8 00005B94  38 21 00 10 */	addi r1, r1, 0x10
/* 00005ACC 00005B98  4E 80 00 20 */	blr
.endfn get_mobj_seq

# .text:0x68 | 0x5AD0 | size: 0x74
.fn switch_alpha_off, local
/* 00005AD0 00005B9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005AD4 00005BA0  7C 08 02 A6 */	mflr r0
/* 00005AD8 00005BA4  3C 60 00 00 */	lis r3, str_switch_las_00013b30@ha
/* 00005ADC 00005BA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005AE0 00005BAC  38 63 00 00 */	addi r3, r3, str_switch_las_00013b30@l
/* 00005AE4 00005BB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 00005AE8 00005BB4  4B FF A6 55 */	bl mobjNameToPtrNoAssert
/* 00005AEC 00005BB8  7C 7F 1B 79 */	mr. r31, r3
/* 00005AF0 00005BBC  40 82 00 0C */	bne .L_00005AFC
/* 00005AF4 00005BC0  38 60 00 02 */	li r3, 0x2
/* 00005AF8 00005BC4  48 00 00 38 */	b .L_00005B30
.L_00005AFC:
/* 00005AFC 00005BC8  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 00005B00 00005BCC  3C 60 00 00 */	lis r3, dat_las_00013b2c@ha
/* 00005B04 00005BD0  38 81 00 08 */	addi r4, r1, 0x8
/* 00005B08 00005BD4  54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 00005B0C 00005BD8  90 1F 00 00 */	stw r0, 0x0(r31)
/* 00005B10 00005BDC  80 03 00 00 */	lwz r0, dat_las_00013b2c@l(r3)
/* 00005B14 00005BE0  90 01 00 08 */	stw r0, 0x8(r1)
/* 00005B18 00005BE4  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 00005B1C 00005BE8  4B FF A6 21 */	bl animPoseSetMaterialEvtColor
/* 00005B20 00005BEC  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 00005B24 00005BF0  38 80 00 40 */	li r4, 0x40
/* 00005B28 00005BF4  4B FF A6 15 */	bl animPoseSetMaterialFlagOff
/* 00005B2C 00005BF8  38 60 00 02 */	li r3, 0x2
.L_00005B30:
/* 00005B30 00005BFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005B34 00005C00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 00005B38 00005C04  7C 08 03 A6 */	mtlr r0
/* 00005B3C 00005C08  38 21 00 20 */	addi r1, r1, 0x20
/* 00005B40 00005C0C  4E 80 00 20 */	blr
.endfn switch_alpha_off

# .text:0xDC | 0x5B44 | size: 0xA8
.fn switch_set_alpha, local
/* 00005B44 00005C10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005B48 00005C14  7C 08 02 A6 */	mflr r0
/* 00005B4C 00005C18  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005B50 00005C1C  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00005B54 00005C20  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00005B58 00005C24  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00005B5C 00005C28  4B FF A5 E1 */	bl evtGetValue
/* 00005B60 00005C2C  3C 80 00 00 */	lis r4, str_switch_las_00013b30@ha
/* 00005B64 00005C30  7C 7E 1B 78 */	mr r30, r3
/* 00005B68 00005C34  38 64 00 00 */	addi r3, r4, str_switch_las_00013b30@l
/* 00005B6C 00005C38  4B FF A5 D1 */	bl mobjNameToPtrNoAssert
/* 00005B70 00005C3C  7C 7F 1B 79 */	mr. r31, r3
/* 00005B74 00005C40  40 82 00 0C */	bne .L_00005B80
/* 00005B78 00005C44  38 60 00 02 */	li r3, 0x2
/* 00005B7C 00005C48  48 00 00 5C */	b .L_00005BD8
.L_00005B80:
/* 00005B80 00005C4C  2C 1E 00 24 */	cmpwi r30, 0x24
/* 00005B84 00005C50  40 81 00 14 */	ble .L_00005B98
/* 00005B88 00005C54  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 00005B8C 00005C58  54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 00005B90 00005C5C  90 1F 00 00 */	stw r0, 0x0(r31)
/* 00005B94 00005C60  48 00 00 10 */	b .L_00005BA4
.L_00005B98:
/* 00005B98 00005C64  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 00005B9C 00005C68  60 00 00 02 */	ori r0, r0, 0x2
/* 00005BA0 00005C6C  90 1F 00 00 */	stw r0, 0x0(r31)
.L_00005BA4:
/* 00005BA4 00005C70  3C 60 00 00 */	lis r3, dat_las_00013b28@ha
/* 00005BA8 00005C74  38 81 00 0C */	addi r4, r1, 0xc
/* 00005BAC 00005C78  80 03 00 00 */	lwz r0, dat_las_00013b28@l(r3)
/* 00005BB0 00005C7C  90 01 00 08 */	stw r0, 0x8(r1)
/* 00005BB4 00005C80  9B C1 00 0B */	stb r30, 0xb(r1)
/* 00005BB8 00005C84  80 01 00 08 */	lwz r0, 0x8(r1)
/* 00005BBC 00005C88  90 01 00 0C */	stw r0, 0xc(r1)
/* 00005BC0 00005C8C  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 00005BC4 00005C90  4B FF A5 79 */	bl animPoseSetMaterialEvtColor
/* 00005BC8 00005C94  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 00005BCC 00005C98  38 80 00 40 */	li r4, 0x40
/* 00005BD0 00005C9C  4B FF A5 6D */	bl animPoseSetMaterialFlagOn
/* 00005BD4 00005CA0  38 60 00 02 */	li r3, 0x2
.L_00005BD8:
/* 00005BD8 00005CA4  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00005BDC 00005CA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005BE0 00005CAC  7C 08 03 A6 */	mtlr r0
/* 00005BE4 00005CB0  38 21 00 20 */	addi r1, r1, 0x20
/* 00005BE8 00005CB4  4E 80 00 20 */	blr
.endfn switch_set_alpha

# 0x00002090..0x00002118 | size: 0x88
.rodata
.balign 8

# .rodata:0x0 | 0x2090 | size: 0x8
.obj str_S_door1_las_00013af8, local
	.string "S_door1"
.endobj str_S_door1_las_00013af8

# .rodata:0x8 | 0x2098 | size: 0x9
.obj str_w_bero_1_las_00013b00, local
	.string "w_bero_1"
.endobj str_w_bero_1_las_00013b00

# .rodata:0x11 | 0x20A1 | size: 0x3
.obj gap_03_000020A1_rodata, global
.hidden gap_03_000020A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000020A1_rodata

# .rodata:0x14 | 0x20A4 | size: 0x7
.obj str_las_10_las_00013b0c, local
	.string "las_10"
.endobj str_las_10_las_00013b0c

# .rodata:0x1B | 0x20AB | size: 0x1
.obj gap_03_000020AB_rodata, global
.hidden gap_03_000020AB_rodata
	.byte 0x00
.endobj gap_03_000020AB_rodata

# .rodata:0x1C | 0x20AC | size: 0xA
.obj str_se_bero_2_las_00013b14, local
	.string "se_bero_2"
.endobj str_se_bero_2_las_00013b14

# .rodata:0x26 | 0x20B6 | size: 0x2
.obj gap_03_000020B6_rodata, global
.hidden gap_03_000020B6_rodata
	.2byte 0x0000
.endobj gap_03_000020B6_rodata

# .rodata:0x28 | 0x20B8 | size: 0x4
.obj str_box_las_00013b20, local
	.string "box"
.endobj str_box_las_00013b20

# .rodata:0x2C | 0x20BC | size: 0x4
.obj str_key_las_00013b24, local
	.string "key"
.endobj str_key_las_00013b24

# .rodata:0x30 | 0x20C0 | size: 0x4
.obj dat_las_00013b28, local
	.4byte 0xFFFFFF00
.endobj dat_las_00013b28

# .rodata:0x34 | 0x20C4 | size: 0x4
.obj dat_las_00013b2c, local
	.4byte 0xFFFFFFFF
.endobj dat_las_00013b2c

# .rodata:0x38 | 0x20C8 | size: 0x7
.obj str_switch_las_00013b30, local
	.string "switch"
.endobj str_switch_las_00013b30

# .rodata:0x3F | 0x20CF | size: 0x1
.obj gap_03_000020CF_rodata, global
.hidden gap_03_000020CF_rodata
	.byte 0x00
.endobj gap_03_000020CF_rodata

# .rodata:0x40 | 0x20D0 | size: 0x14
.obj str_BGM_FF_ENV_SUCCESS1_las_00013b38, local
	.string "BGM_FF_ENV_SUCCESS1"
.endobj str_BGM_FF_ENV_SUCCESS1_las_00013b38

# .rodata:0x54 | 0x20E4 | size: 0xC
.obj str_stg8_las_43_las_00013b4c, local
	.string "stg8_las_43"
.endobj str_stg8_las_43_las_00013b4c

# .rodata:0x60 | 0x20F0 | size: 0xE
.obj str_BGM_STG8_LST2_las_00013b58, local
	.string "BGM_STG8_LST2"
.endobj str_BGM_STG8_LST2_las_00013b58

# .rodata:0x6E | 0x20FE | size: 0x2
.obj gap_03_000020FE_rodata, global
.hidden gap_03_000020FE_rodata
	.2byte 0x0000
.endobj gap_03_000020FE_rodata

# .rodata:0x70 | 0x2100 | size: 0xE
.obj str_ENV_STG8_LAS1_las_00013b68, local
	.string "ENV_STG8_LAS1"
.endobj str_ENV_STG8_LAS1_las_00013b68

# .rodata:0x7E | 0x210E | size: 0x2
.obj gap_03_0000210E_rodata, global
.hidden gap_03_0000210E_rodata
	.2byte 0x0000
.endobj gap_03_0000210E_rodata

# .rodata:0x80 | 0x2110 | size: 0x7
.obj str_A_pure_las_00013b78, local
	.string "A_pure"
.endobj str_A_pure_las_00013b78

# .rodata:0x87 | 0x2117 | size: 0x1
.obj gap_03_00002117_rodata, global
.hidden gap_03_00002117_rodata
	.byte 0x00
.endobj gap_03_00002117_rodata

# 0x0000C4F8..0x0000CA20 | size: 0x528
.data
.balign 8

# .data:0x0 | 0xC4F8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xC500 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xC504 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xC508 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xC50C | size: 0x4
.obj gap_04_0000C50C_data, global
.hidden gap_04_0000C50C_data
	.4byte 0x00000000
.endobj gap_04_0000C50C_data

# .data:0x18 | 0xC510 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xC518 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xC51C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xC520 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xC528 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xC52C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xC530 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xC534 | size: 0x4
.obj gap_04_0000C534_data, global
.hidden gap_04_0000C534_data
	.4byte 0x00000000
.endobj gap_04_0000C534_data

# .data:0x40 | 0xC538 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xC540 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xC544 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xC548 | size: 0x30
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_door1_las_00013af8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0x80 | 0xC578 | size: 0x30
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_door1_las_00013af8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0xB0 | 0xC5A8 | size: 0x78
.obj bero_entry_data, local
	.4byte str_w_bero_1_las_00013b00
	.4byte 0x00010001
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_10_las_00013b0c
	.4byte str_se_bero_2_las_00013b14
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
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

# .data:0x128 | 0xC620 | size: 0x78
.obj box_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_las_00013b20
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_key_las_00013b24
	.4byte 0x0000002D
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_box_las_00013b20
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_key_las_00013b24
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj box_evt

# .data:0x1A0 | 0xC698 | size: 0x170
.obj vivian_check, local
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte get_mobj_seq
	.4byte str_switch_las_00013b30
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_get_status
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C8F
	.4byte 0x00000004
	.4byte 0x00000020
	.4byte 0x00020036
	.4byte 0xFE363C8F
	.4byte 0x00000004
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020036
	.4byte 0xFE363C8F
	.4byte 0x00000004
	.4byte 0x00000021
	.4byte 0x0002001B
	.4byte 0xFE363C8F
	.4byte 0x000000A0
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x000000A0
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte switch_set_alpha
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x000000A0
	.4byte 0x00020018
	.4byte 0xF8406C9E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406C9E
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_las_00013b38
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj vivian_check

# .data:0x310 | 0xC808 | size: 0xC0
.obj switch_evt, local
	.4byte 0x0001005B
	.4byte switch_alpha_off
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000004E2
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x0000016B
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xFFFFFFE2
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mobj_set_position
	.4byte str_box_las_00013b20
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_box_las_00013b20
	.4byte 0x00004040
	.4byte 0x0003005B
	.4byte evt_mobj_hit_onoff
	.4byte str_box_las_00013b20
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_box_las_00013b20
	.4byte 0x0001005E
	.4byte box_syutugen_16_data_60
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj switch_evt

# .data:0x3D0 | 0xC8C8 | size: 0x38
.obj hint_plate, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_43_las_00013b4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hint_plate

# .data:0x408 | 0xC900 | size: 0x11C
.obj las_18_init_evt_16_data_C900, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG8_LST2_las_00013b58
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS1_las_00013b68
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
	.4byte 0x0008005B
	.4byte evt_mobj_floatswitch_blue
	.4byte 0x00000000
	.4byte str_switch_las_00013b30
	.4byte 0x0000004B
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte switch_evt
	.4byte 0xF8406C80
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000001
	.4byte str_switch_las_00013b30
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xF8406C80
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte vivian_check
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_box_las_00013b20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte box_evt
	.4byte 0xF8406C91
	.4byte 0x00020018
	.4byte 0xF8406C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000001
	.4byte str_box_las_00013b20
	.4byte 0x00004000
	.4byte 0x0003005B
	.4byte evt_mobj_hit_onoff
	.4byte str_box_las_00013b20
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_pure_las_00013b78
	.4byte 0x00000000
	.4byte hint_plate
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_18_init_evt_16_data_C900

# .data:0x524 | 0xCA1C | size: 0x4
.obj gap_04_0000CA1C_data, global
.hidden gap_04_0000CA1C_data
	.4byte 0x00000000
.endobj gap_04_0000CA1C_data
