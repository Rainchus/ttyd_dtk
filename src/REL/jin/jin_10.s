.include "macros.inc"
.file "jin_10.o"

# 0x00004B70..0x00004CE4 | size: 0x174
.text
.balign 4

# .text:0x0 | 0x4B70 | size: 0x58
.fn get_width, local
/* 00004B70 00004C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00004B74 00004C38  7C 08 02 A6 */	mflr r0
/* 00004B78 00004C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00004B7C 00004C40  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00004B80 00004C44  7C 7E 1B 78 */	mr r30, r3
/* 00004B84 00004C48  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00004B88 00004C4C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004B8C 00004C50  4B FF B4 75 */	bl evtGetValue
/* 00004B90 00004C54  4B FF B4 71 */	bl partyGetPtr
/* 00004B94 00004C58  3C 80 00 00 */	lis r4, float_0p8_jin_00008554@ha
/* 00004B98 00004C5C  C0 03 00 F4 */	lfs f0, 0xf4(r3)
/* 00004B9C 00004C60  C0 24 00 00 */	lfs f1, float_0p8_jin_00008554@l(r4)
/* 00004BA0 00004C64  7F C3 F3 78 */	mr r3, r30
/* 00004BA4 00004C68  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00004BA8 00004C6C  EC 21 00 32 */	fmuls f1, f1, f0
/* 00004BAC 00004C70  4B FF B4 55 */	bl evtSetFloat
/* 00004BB0 00004C74  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00004BB4 00004C78  38 60 00 02 */	li r3, 0x2
/* 00004BB8 00004C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00004BBC 00004C80  7C 08 03 A6 */	mtlr r0
/* 00004BC0 00004C84  38 21 00 10 */	addi r1, r1, 0x10
/* 00004BC4 00004C88  4E 80 00 20 */	blr
.endfn get_width

# .text:0x58 | 0x4BC8 | size: 0xB4
.fn set_pos, local
/* 00004BC8 00004C8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00004BCC 00004C90  7C 08 02 A6 */	mflr r0
/* 00004BD0 00004C94  90 01 00 44 */	stw r0, 0x44(r1)
/* 00004BD4 00004C98  39 61 00 40 */	addi r11, r1, 0x40
/* 00004BD8 00004C9C  4B FF B4 29 */	bl _savefpr_29
/* 00004BDC 00004CA0  BF C1 00 20 */	stmw r30, 0x20(r1)
/* 00004BE0 00004CA4  7C 7E 1B 78 */	mr r30, r3
/* 00004BE4 00004CA8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00004BE8 00004CAC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004BEC 00004CB0  4B FF B4 15 */	bl evtGetFloat
/* 00004BF0 00004CB4  FF A0 08 90 */	fmr f29, f1
/* 00004BF4 00004CB8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00004BF8 00004CBC  7F C3 F3 78 */	mr r3, r30
/* 00004BFC 00004CC0  4B FF B4 05 */	bl evtGetFloat
/* 00004C00 00004CC4  FF C0 08 90 */	fmr f30, f1
/* 00004C04 00004CC8  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00004C08 00004CCC  7F C3 F3 78 */	mr r3, r30
/* 00004C0C 00004CD0  4B FF B3 F5 */	bl evtGetFloat
/* 00004C10 00004CD4  FF E0 08 90 */	fmr f31, f1
/* 00004C14 00004CD8  4B FF B3 ED */	bl marioGetPtr
/* 00004C18 00004CDC  3C 80 00 00 */	lis r4, vec3_jin_00008500@ha
/* 00004C1C 00004CE0  38 A4 00 00 */	addi r5, r4, vec3_jin_00008500@l
/* 00004C20 00004CE4  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00004C24 00004CE8  80 85 00 04 */	lwz r4, 0x4(r5)
/* 00004C28 00004CEC  90 01 00 08 */	stw r0, 0x8(r1)
/* 00004C2C 00004CF0  80 05 00 08 */	lwz r0, 0x8(r5)
/* 00004C30 00004CF4  90 81 00 0C */	stw r4, 0xc(r1)
/* 00004C34 00004CF8  D3 A1 00 08 */	stfs f29, 0x8(r1)
/* 00004C38 00004CFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 00004C3C 00004D00  80 01 00 08 */	lwz r0, 0x8(r1)
/* 00004C40 00004D04  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 00004C44 00004D08  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 00004C48 00004D0C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 00004C4C 00004D10  90 03 00 8C */	stw r0, 0x8c(r3)
/* 00004C50 00004D14  80 01 00 10 */	lwz r0, 0x10(r1)
/* 00004C54 00004D18  90 83 00 90 */	stw r4, 0x90(r3)
/* 00004C58 00004D1C  90 03 00 94 */	stw r0, 0x94(r3)
/* 00004C5C 00004D20  38 60 00 02 */	li r3, 0x2
/* 00004C60 00004D24  39 61 00 40 */	addi r11, r1, 0x40
/* 00004C64 00004D28  4B FF B3 9D */	bl _restfpr_29
/* 00004C68 00004D2C  BB C1 00 20 */	lmw r30, 0x20(r1)
/* 00004C6C 00004D30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00004C70 00004D34  7C 08 03 A6 */	mtlr r0
/* 00004C74 00004D38  38 21 00 40 */	addi r1, r1, 0x40
/* 00004C78 00004D3C  4E 80 00 20 */	blr
.endfn set_pos

# .text:0x10C | 0x4C7C | size: 0x68
.fn get_pos, local
/* 00004C7C 00004D40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00004C80 00004D44  7C 08 02 A6 */	mflr r0
/* 00004C84 00004D48  90 01 00 24 */	stw r0, 0x24(r1)
/* 00004C88 00004D4C  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00004C8C 00004D50  7C 7D 1B 78 */	mr r29, r3
/* 00004C90 00004D54  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00004C94 00004D58  4B FF B3 6D */	bl marioGetPtr
/* 00004C98 00004D5C  7C 7F 1B 78 */	mr r31, r3
/* 00004C9C 00004D60  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00004CA0 00004D64  C0 23 00 8C */	lfs f1, 0x8c(r3)
/* 00004CA4 00004D68  7F A3 EB 78 */	mr r3, r29
/* 00004CA8 00004D6C  4B FF B3 59 */	bl evtSetFloat
/* 00004CAC 00004D70  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00004CB0 00004D74  7F A3 EB 78 */	mr r3, r29
/* 00004CB4 00004D78  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 00004CB8 00004D7C  4B FF B3 49 */	bl evtSetFloat
/* 00004CBC 00004D80  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00004CC0 00004D84  7F A3 EB 78 */	mr r3, r29
/* 00004CC4 00004D88  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 00004CC8 00004D8C  4B FF B3 39 */	bl evtSetFloat
/* 00004CCC 00004D90  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00004CD0 00004D94  38 60 00 02 */	li r3, 0x2
/* 00004CD4 00004D98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00004CD8 00004D9C  7C 08 03 A6 */	mtlr r0
/* 00004CDC 00004DA0  38 21 00 20 */	addi r1, r1, 0x20
/* 00004CE0 00004DA4  4E 80 00 20 */	blr
.endfn get_pos

# 0x000012A8..0x00001338 | size: 0x90
.rodata
.balign 8

# .rodata:0x0 | 0x12A8 | size: 0x7
.obj str_door11_jin_000084c8, local
	.string "door11"
.endobj str_door11_jin_000084c8

# .rodata:0x7 | 0x12AF | size: 0x1
.obj gap_03_000012AF_rodata, global
.hidden gap_03_000012AF_rodata
	.byte 0x00
.endobj gap_03_000012AF_rodata

# .rodata:0x8 | 0x12B0 | size: 0x7
.obj str_w_bero_jin_000084d0, local
	.string "w_bero"
.endobj str_w_bero_jin_000084d0

# .rodata:0xF | 0x12B7 | size: 0x1
.obj gap_03_000012B7_rodata, global
.hidden gap_03_000012B7_rodata
	.byte 0x00
.endobj gap_03_000012B7_rodata

# .rodata:0x10 | 0x12B8 | size: 0x7
.obj str_jin_09_jin_000084d8, local
	.string "jin_09"
.endobj str_jin_09_jin_000084d8

# .rodata:0x17 | 0x12BF | size: 0x1
.obj gap_03_000012BF_rodata, global
.hidden gap_03_000012BF_rodata
	.byte 0x00
.endobj gap_03_000012BF_rodata

# .rodata:0x18 | 0x12C0 | size: 0x7
.obj str_e_bero_jin_000084e0, local
	.string "e_bero"
.endobj str_e_bero_jin_000084e0

# .rodata:0x1F | 0x12C7 | size: 0x1
.obj gap_03_000012C7_rodata, global
.hidden gap_03_000012C7_rodata
	.byte 0x00
.endobj gap_03_000012C7_rodata

# .rodata:0x20 | 0x12C8 | size: 0x7
.obj str_n_bero_jin_000084e8, local
	.string "n_bero"
.endobj str_n_bero_jin_000084e8

# .rodata:0x27 | 0x12CF | size: 0x1
.obj gap_03_000012CF_rodata, global
.hidden gap_03_000012CF_rodata
	.byte 0x00
.endobj gap_03_000012CF_rodata

# .rodata:0x28 | 0x12D0 | size: 0x7
.obj str_jin_11_jin_000084f0, local
	.string "jin_11"
.endobj str_jin_11_jin_000084f0

# .rodata:0x2F | 0x12D7 | size: 0x1
.obj gap_03_000012D7_rodata, global
.hidden gap_03_000012D7_rodata
	.byte 0x00
.endobj gap_03_000012D7_rodata

# .rodata:0x30 | 0x12D8 | size: 0x7
.obj str_s_bero_jin_000084f8, local
	.string "s_bero"
.endobj str_s_bero_jin_000084f8

# .rodata:0x37 | 0x12DF | size: 0x1
.obj gap_03_000012DF_rodata, global
.hidden gap_03_000012DF_rodata
	.byte 0x00
.endobj gap_03_000012DF_rodata

# .rodata:0x38 | 0x12E0 | size: 0xC
.obj vec3_jin_00008500, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_jin_00008500

# .rodata:0x44 | 0x12EC | size: 0x5
.obj str_saku_jin_0000850c, local
	.string "saku"
.endobj str_saku_jin_0000850c

# .rodata:0x49 | 0x12F1 | size: 0x3
.obj gap_03_000012F1_rodata, global
.hidden gap_03_000012F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012F1_rodata

# .rodata:0x4C | 0x12F4 | size: 0x14
.obj str_SFX_STG4_GRID_MOVE1_jin_00008514, local
	.string "SFX_STG4_GRID_MOVE1"
.endobj str_SFX_STG4_GRID_MOVE1_jin_00008514

# .rodata:0x60 | 0x1308 | size: 0x7
.obj str_a_saku_jin_00008528, local
	.string "a_saku"
.endobj str_a_saku_jin_00008528

# .rodata:0x67 | 0x130F | size: 0x1
.obj gap_03_0000130F_rodata, global
.hidden gap_03_0000130F_rodata
	.byte 0x00
.endobj gap_03_0000130F_rodata

# .rodata:0x68 | 0x1310 | size: 0xE
.obj str_BGM_STG4_JIN1_jin_00008530, local
	.string "BGM_STG4_JIN1"
.endobj str_BGM_STG4_JIN1_jin_00008530

# .rodata:0x76 | 0x131E | size: 0x2
.obj gap_03_0000131E_rodata, global
.hidden gap_03_0000131E_rodata
	.2byte 0x0000
.endobj gap_03_0000131E_rodata

# .rodata:0x78 | 0x1320 | size: 0xE
.obj str_ENV_STG4_JIN1_jin_00008540, local
	.string "ENV_STG4_JIN1"
.endobj str_ENV_STG4_JIN1_jin_00008540

# .rodata:0x86 | 0x132E | size: 0x2
.obj gap_03_0000132E_rodata, global
.hidden gap_03_0000132E_rodata
	.2byte 0x0000
.endobj gap_03_0000132E_rodata

# .rodata:0x88 | 0x1330 | size: 0x2
.obj str_m_jin_00008550, local
	.string "m"
.endobj str_m_jin_00008550
	.2byte 0x0000

# .rodata:0x8C | 0x1334 | size: 0x4
.obj float_0p8_jin_00008554, local
	.float 0.8
.endobj float_0p8_jin_00008554

# 0x0000A328..0x0000AC20 | size: 0x8F8
.data
.balign 8

# .data:0x0 | 0xA328 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xA330 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xA334 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xA338 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xA33C | size: 0x4
.obj gap_04_0000A33C_data, global
.hidden gap_04_0000A33C_data
	.4byte 0x00000000
.endobj gap_04_0000A33C_data

# .data:0x18 | 0xA340 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xA348 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xA34C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xA350 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xA358 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xA35C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xA360 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xA364 | size: 0x4
.obj gap_04_0000A364_data, global
.hidden gap_04_0000A364_data
	.4byte 0x00000000
.endobj gap_04_0000A364_data

# .data:0x40 | 0xA368 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xA370 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xA374 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xA378 | size: 0x30
.obj door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door11_jin_000084c8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_close

# .data:0x80 | 0xA3A8 | size: 0x30
.obj door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door11_jin_000084c8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_open

# .data:0xB0 | 0xA3D8 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_jin_000084d0
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_jin_09_jin_000084d8
	.4byte str_e_bero_jin_000084e0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_n_bero_jin_000084e8
	.4byte 0x00010002
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_jin_11_jin_000084f0
	.4byte str_s_bero_jin_000084f8
	.4byte 0x00050005
	.4byte door_close
	.4byte door_open
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

# .data:0x164 | 0xA48C | size: 0x210
.obj push_evt, local
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_saku_jin_0000850c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_GRID_MOVE1_jin_00008514
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFD050F83
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_saku_jin_0000850c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFD050F83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_mario_push
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_saku_jin_0000850c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7C80
	.4byte 0x00000020
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7680
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFD050F8A
	.4byte 0xFE363C8A
	.4byte 0x00020017
	.4byte 0xFD050F8A
	.4byte 0xF24E9E80
	.4byte 0x00020034
	.4byte 0xFD050F8A
	.4byte 0xF24E9E80
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F83
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020016
	.4byte 0xFD050F8A
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F8A
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F83
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFD050F8B
	.4byte 0xFD050F8A
	.4byte 0x0002003D
	.4byte 0xFD050F8B
	.4byte 0xF24A8A80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_saku_jin_0000850c
	.4byte 0xFD050F8A
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_saku_jin_00008528
	.4byte 0x0004005B
	.4byte get_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte set_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x00000001
.endobj push_evt

# .data:0x374 | 0xA69C | size: 0x3F0
.obj unpush_evt, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_push
	.4byte 0xFE363C80
	.4byte 0x0002000D
	.4byte 0xFE363C80
	.4byte str_a_saku_jin_00008528
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_saku_jin_0000850c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_get_status
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_saku_jin_0000850c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020014
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x00000021
	.4byte 0x00020014
	.4byte 0xFE363C80
	.4byte 0xF24ACA80
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_saku_jin_0000850c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte get_width
	.4byte 0x00000000
	.4byte 0xFE363C86
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020014
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x00000021
	.4byte 0x00020014
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_exparty
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_saku_jin_0000850c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte get_width
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020014
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x00000021
	.4byte 0x00020014
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F83
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0002003B
	.4byte 0xFD050F8A
	.4byte 0xF24A7C80
	.4byte 0x00020014
	.4byte 0xFD050F8A
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F8A
	.4byte 0xF24A7A80
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F83
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_saku_jin_0000850c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_GRID_MOVE1_jin_00008514
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFD050F83
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFD050F8B
	.4byte 0xFD050F8A
	.4byte 0x0002003D
	.4byte 0xFD050F8B
	.4byte 0xF24A8A80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_saku_jin_0000850c
	.4byte 0xFD050F8A
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_saku_jin_00008528
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_saku_jin_0000850c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFD050F83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unpush_evt

# .data:0x764 | 0xAA8C | size: 0xA8
.obj vivi_chk, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_get_status
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_saku_jin_0000850c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020014
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x00000021
	.4byte 0x00020014
	.4byte 0xFE363C80
	.4byte 0xF24ADE80
	.4byte 0x00000020
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj vivi_chk

# .data:0x80C | 0xAB34 | size: 0xEC
.obj jin_10_init_evt_13_data_AB34, global
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG4_JIN1_jin_00008530
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG4_JIN1_jin_00008540
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_kagemario_init_13_text_4DE8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005E
	.4byte evt_usu_kagemario_party_kill_13_data_AF00
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_m_jin_00008550
	.4byte 0x0000003C
	.4byte 0x0000003C
	.4byte 0xFFFFFFE7
	.4byte 0x000000F3
	.4byte 0x00000000
	.4byte 0xF8406441
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFD050F8A
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F8B
	.4byte 0xF24A7A80
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_a_saku_jin_00008528
	.4byte str_saku_jin_0000850c
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte str_a_saku_jin_00008528
	.4byte 0x00000000
	.4byte push_evt
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte unpush_evt
	.4byte 0x0001005C
	.4byte vivi_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jin_10_init_evt_13_data_AB34
