.include "macros.inc"
.file "unit_iron_sinemon2.o"

# 0x000059A0..0x00005A8C | size: 0xEC
.text
.balign 4

# .text:0x0 | 0x59A0 | size: 0x54
.fn yoshi_exist, local
/* 000059A0 00005A64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000059A4 00005A68  7C 08 02 A6 */	mflr r0
/* 000059A8 00005A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000059AC 00005A70  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000059B0 00005A74  7C 7E 1B 78 */	mr r30, r3
/* 000059B4 00005A78  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000059B8 00005A7C  4B FF F6 5D */	bl pouchGetPtr
/* 000059BC 00005A80  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 000059C0 00005A84  38 A0 00 00 */	li r5, 0x0
/* 000059C4 00005A88  54 00 07 FF */	clrlwi. r0, r0, 31
/* 000059C8 00005A8C  41 82 00 08 */	beq .L_000059D0
/* 000059CC 00005A90  38 A0 00 01 */	li r5, 0x1
.L_000059D0:
/* 000059D0 00005A94  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000059D4 00005A98  7F C3 F3 78 */	mr r3, r30
/* 000059D8 00005A9C  4B FF F6 3D */	bl evtSetValue
/* 000059DC 00005AA0  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000059E0 00005AA4  38 60 00 02 */	li r3, 0x2
/* 000059E4 00005AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000059E8 00005AAC  7C 08 03 A6 */	mtlr r0
/* 000059EC 00005AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 000059F0 00005AB4  4E 80 00 20 */	blr
.endfn yoshi_exist

# .text:0x54 | 0x59F4 | size: 0x98
.fn get_id, local
/* 000059F4 00005AB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000059F8 00005ABC  7C 08 02 A6 */	mflr r0
/* 000059FC 00005AC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005A00 00005AC4  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 00005A04 00005AC8  7C 7A 1B 78 */	mr r26, r3
/* 00005A08 00005ACC  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 00005A0C 00005AD0  3B A0 00 00 */	li r29, 0x0
/* 00005A10 00005AD4  3B E3 00 00 */	addi r31, r3, _battleWorkPointer@l
/* 00005A14 00005AD8  83 DA 00 18 */	lwz r30, 0x18(r26)
.L_00005A18:
/* 00005A18 00005ADC  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 00005A1C 00005AE0  7F A4 EB 78 */	mr r4, r29
/* 00005A20 00005AE4  4B FF F5 F5 */	bl BattleGetUnitPtr
/* 00005A24 00005AE8  28 03 00 00 */	cmplwi r3, 0x0
/* 00005A28 00005AEC  41 82 00 20 */	beq .L_00005A48
/* 00005A2C 00005AF0  80 03 00 08 */	lwz r0, 0x8(r3)
/* 00005A30 00005AF4  2C 00 00 3D */	cmpwi r0, 0x3d
/* 00005A34 00005AF8  40 82 00 08 */	bne .L_00005A3C
/* 00005A38 00005AFC  7F BC EB 78 */	mr r28, r29
.L_00005A3C:
/* 00005A3C 00005B00  2C 00 00 3E */	cmpwi r0, 0x3e
/* 00005A40 00005B04  40 82 00 08 */	bne .L_00005A48
/* 00005A44 00005B08  7F BB EB 78 */	mr r27, r29
.L_00005A48:
/* 00005A48 00005B0C  3B BD 00 01 */	addi r29, r29, 0x1
/* 00005A4C 00005B10  2C 1D 00 40 */	cmpwi r29, 0x40
/* 00005A50 00005B14  41 80 FF C8 */	blt .L_00005A18
/* 00005A54 00005B18  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00005A58 00005B1C  7F 43 D3 78 */	mr r3, r26
/* 00005A5C 00005B20  7F 85 E3 78 */	mr r5, r28
/* 00005A60 00005B24  4B FF F5 B5 */	bl evtSetValue
/* 00005A64 00005B28  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00005A68 00005B2C  7F 43 D3 78 */	mr r3, r26
/* 00005A6C 00005B30  7F 65 DB 78 */	mr r5, r27
/* 00005A70 00005B34  4B FF F5 A5 */	bl evtSetValue
/* 00005A74 00005B38  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 00005A78 00005B3C  38 60 00 02 */	li r3, 0x2
/* 00005A7C 00005B40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005A80 00005B44  7C 08 03 A6 */	mtlr r0
/* 00005A84 00005B48  38 21 00 20 */	addi r1, r1, 0x20
/* 00005A88 00005B4C  4E 80 00 20 */	blr
.endfn get_id

# 0x00004CB8..0x00004E70 | size: 0x1B8
.rodata
.balign 8

# .rodata:0x0 | 0x4CB8 | size: 0x15
.obj str_btl_un_iron_sinemon2_tou2_0000e3f8, local
	.string "btl_un_iron_sinemon2"
.endobj str_btl_un_iron_sinemon2_tou2_0000e3f8

# .rodata:0x15 | 0x4CCD | size: 0x3
.obj gap_03_00004CCD_rodata, global
.hidden gap_03_00004CCD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004CCD_rodata

# .rodata:0x18 | 0x4CD0 | size: 0x17
.obj str_SFX_BOSS_ISIN_DAMAGE_tou2_0000e410, local
	.string "SFX_BOSS_ISIN_DAMAGED1"
.endobj str_SFX_BOSS_ISIN_DAMAGE_tou2_0000e410

# .rodata:0x2F | 0x4CE7 | size: 0x1
.obj gap_03_00004CE7_rodata, global
.hidden gap_03_00004CE7_rodata
	.byte 0x00
.endobj gap_03_00004CE7_rodata

# .rodata:0x30 | 0x4CE8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000e428, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000e428

# .rodata:0x45 | 0x4CFD | size: 0x3
.obj gap_03_00004CFD_rodata, global
.hidden gap_03_00004CFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004CFD_rodata

# .rodata:0x48 | 0x4D00 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_0000e440, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_0000e440

# .rodata:0x5C | 0x4D14 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000e454, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000e454

# .rodata:0x75 | 0x4D2D | size: 0x3
.obj gap_03_00004D2D_rodata, global
.hidden gap_03_00004D2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004D2D_rodata

# .rodata:0x78 | 0x4D30 | size: 0xC
.obj str_c_sinemon_m_tou2_0000e470, local
	.string "c_sinemon_m"
.endobj str_c_sinemon_m_tou2_0000e470

# .rodata:0x84 | 0x4D3C | size: 0x8
.obj str_SIN_N_1_tou2_0000e47c, local
	.string "SIN_N_1"
.endobj str_SIN_N_1_tou2_0000e47c

# .rodata:0x8C | 0x4D44 | size: 0x8
.obj str_SIN_Y_1_tou2_0000e484, local
	.string "SIN_Y_1"
.endobj str_SIN_Y_1_tou2_0000e484

# .rodata:0x94 | 0x4D4C | size: 0x8
.obj str_SIN_K_1_tou2_0000e48c, local
	.string "SIN_K_1"
.endobj str_SIN_K_1_tou2_0000e48c

# .rodata:0x9C | 0x4D54 | size: 0x8
.obj str_SIN_I_1_tou2_0000e494, local
	.string "SIN_I_1"
.endobj str_SIN_I_1_tou2_0000e494

# .rodata:0xA4 | 0x4D5C | size: 0x8
.obj str_SIS_I_1_tou2_0000e49c, local
	.string "SIS_I_1"
.endobj str_SIS_I_1_tou2_0000e49c

# .rodata:0xAC | 0x4D64 | size: 0x8
.obj str_SIN_S_1_tou2_0000e4a4, local
	.string "SIN_S_1"
.endobj str_SIN_S_1_tou2_0000e4a4

# .rodata:0xB4 | 0x4D6C | size: 0x8
.obj str_SIN_Q_1_tou2_0000e4ac, local
	.string "SIN_Q_1"
.endobj str_SIN_Q_1_tou2_0000e4ac

# .rodata:0xBC | 0x4D74 | size: 0x9
.obj str_SIN_A_1a_tou2_0000e4b4, local
	.string "SIN_A_1a"
.endobj str_SIN_A_1a_tou2_0000e4b4

# .rodata:0xC5 | 0x4D7D | size: 0x3
.obj gap_03_00004D7D_rodata, global
.hidden gap_03_00004D7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004D7D_rodata

# .rodata:0xC8 | 0x4D80 | size: 0x8
.obj str_SIN_D_1_tou2_0000e4c0, local
	.string "SIN_D_1"
.endobj str_SIN_D_1_tou2_0000e4c0

# .rodata:0xD0 | 0x4D88 | size: 0x8
.obj str_SIN_W_1_tou2_0000e4c8, local
	.string "SIN_W_1"
.endobj str_SIN_W_1_tou2_0000e4c8

# .rodata:0xD8 | 0x4D90 | size: 0x8
.obj str_SIN_R_1_tou2_0000e4d0, local
	.string "SIN_R_1"
.endobj str_SIN_R_1_tou2_0000e4d0

# .rodata:0xE0 | 0x4D98 | size: 0x8
.obj str_SIN_T_1_tou2_0000e4d8, local
	.string "SIN_T_1"
.endobj str_SIN_T_1_tou2_0000e4d8

# .rodata:0xE8 | 0x4DA0 | size: 0x14
.obj str_SFX_BOSS_ISIN_MOVE1_tou2_0000e4e0, local
	.string "SFX_BOSS_ISIN_MOVE1"
.endobj str_SFX_BOSS_ISIN_MOVE1_tou2_0000e4e0

# .rodata:0xFC | 0x4DB4 | size: 0x14
.obj str_SFX_BOSS_ISIN_MOVE2_tou2_0000e4f4, local
	.string "SFX_BOSS_ISIN_MOVE2"
.endobj str_SFX_BOSS_ISIN_MOVE2_tou2_0000e4f4

# .rodata:0x110 | 0x4DC8 | size: 0x1
.obj zero_tou2_0000e508, local
	.byte 0x00
.endobj zero_tou2_0000e508

# .rodata:0x111 | 0x4DC9 | size: 0x3
.obj gap_03_00004DC9_rodata, global
.hidden gap_03_00004DC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DC9_rodata

# .rodata:0x114 | 0x4DCC | size: 0xB
.obj str_toge_flush_tou2_0000e50c, local
	.string "toge_flush"
.endobj str_toge_flush_tou2_0000e50c

# .rodata:0x11F | 0x4DD7 | size: 0x1
.obj gap_03_00004DD7_rodata, global
.hidden gap_03_00004DD7_rodata
	.byte 0x00
.endobj gap_03_00004DD7_rodata

# .rodata:0x120 | 0x4DD8 | size: 0xD
.obj str_stg3_tou_272_tou2_0000e518, local
	.string "stg3_tou_272"
.endobj str_stg3_tou_272_tou2_0000e518

# .rodata:0x12D | 0x4DE5 | size: 0x3
.obj gap_03_00004DE5_rodata, global
.hidden gap_03_00004DE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DE5_rodata

# .rodata:0x130 | 0x4DE8 | size: 0xD
.obj str_stg3_tou_273_tou2_0000e528, local
	.string "stg3_tou_273"
.endobj str_stg3_tou_273_tou2_0000e528

# .rodata:0x13D | 0x4DF5 | size: 0x3
.obj gap_03_00004DF5_rodata, global
.hidden gap_03_00004DF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DF5_rodata

# .rodata:0x140 | 0x4DF8 | size: 0xD
.obj str_stg3_tou_266_tou2_0000e538, local
	.string "stg3_tou_266"
.endobj str_stg3_tou_266_tou2_0000e538

# .rodata:0x14D | 0x4E05 | size: 0x3
.obj gap_03_00004E05_rodata, global
.hidden gap_03_00004E05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E05_rodata

# .rodata:0x150 | 0x4E08 | size: 0xD
.obj str_stg3_tou_267_tou2_0000e548, local
	.string "stg3_tou_267"
.endobj str_stg3_tou_267_tou2_0000e548

# .rodata:0x15D | 0x4E15 | size: 0x3
.obj gap_03_00004E15_rodata, global
.hidden gap_03_00004E15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E15_rodata

# .rodata:0x160 | 0x4E18 | size: 0xD
.obj str_stg3_tou_268_tou2_0000e558, local
	.string "stg3_tou_268"
.endobj str_stg3_tou_268_tou2_0000e558

# .rodata:0x16D | 0x4E25 | size: 0x3
.obj gap_03_00004E25_rodata, global
.hidden gap_03_00004E25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E25_rodata

# .rodata:0x170 | 0x4E28 | size: 0xD
.obj str_stg3_tou_269_tou2_0000e568, local
	.string "stg3_tou_269"
.endobj str_stg3_tou_269_tou2_0000e568

# .rodata:0x17D | 0x4E35 | size: 0x3
.obj gap_03_00004E35_rodata, global
.hidden gap_03_00004E35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E35_rodata

# .rodata:0x180 | 0x4E38 | size: 0xD
.obj str_stg3_tou_270_tou2_0000e578, local
	.string "stg3_tou_270"
.endobj str_stg3_tou_270_tou2_0000e578

# .rodata:0x18D | 0x4E45 | size: 0x3
.obj gap_03_00004E45_rodata, global
.hidden gap_03_00004E45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E45_rodata

# .rodata:0x190 | 0x4E48 | size: 0xD
.obj str_stg3_tou_271_tou2_0000e588, local
	.string "stg3_tou_271"
.endobj str_stg3_tou_271_tou2_0000e588

# .rodata:0x19D | 0x4E55 | size: 0x3
.obj gap_03_00004E55_rodata, global
.hidden gap_03_00004E55_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E55_rodata

# .rodata:0x1A0 | 0x4E58 | size: 0x14
.obj str_SFX_BOSS_ISIN_MOVE3_tou2_0000e598, local
	.string "SFX_BOSS_ISIN_MOVE3"
.endobj str_SFX_BOSS_ISIN_MOVE3_tou2_0000e598

# .rodata:0x1B4 | 0x4E6C | size: 0x4
.obj gap_03_00004E6C_rodata, global
.hidden gap_03_00004E6C_rodata
	.4byte 0x00000000
.endobj gap_03_00004E6C_rodata

# 0x0002ABB8..0x0002BBD0 | size: 0x1018
.data
.balign 8

# .data:0x0 | 0x2ABB8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2ABC0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2ABC4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2ABC8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2ABCC | size: 0x4
.obj gap_04_0002ABCC_data, global
.hidden gap_04_0002ABCC_data
	.4byte 0x00000000
.endobj gap_04_0002ABCC_data

# .data:0x18 | 0x2ABD0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2ABD8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2ABDC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2ABE0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2ABE8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2ABEC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2ABF0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2ABF4 | size: 0x4
.obj gap_04_0002ABF4_data, global
.hidden gap_04_0002ABF4_data
	.4byte 0x00000000
.endobj gap_04_0002ABF4_data

# .data:0x40 | 0x2ABF8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2AC00 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2AC04 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2AC08 | size: 0xC4
.obj unit_iron_sinemon2_26_data_2AC08, global
	.4byte 0x0000003E
	.4byte str_btl_un_iron_sinemon2_tou2_0000e3f8
	.4byte 0x00060000
	.4byte 0x01011200
	.4byte 0x02640146
	.4byte 0x00090034
	.4byte 0x00360004
	.4byte 0x00360000
	.4byte 0x00000000
	.4byte 0x41D80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x42100000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41D80000
	.4byte 0x00000000
	.4byte 0x42500000
	.4byte 0x42580000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_ISIN_DAMAGE_tou2_0000e410
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000e428
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000e440
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000e454
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event2
	.4byte data_table
.endobj unit_iron_sinemon2_26_data_2AC08

# .data:0x114 | 0x2ACCC | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x2ACD1 | size: 0x3
.obj gap_04_0002ACD1_data, global
.hidden gap_04_0002ACD1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002ACD1_data

# .data:0x11C | 0x2ACD4 | size: 0x5
.obj defence_attr, local
	.4byte 0x04040404
	.byte 0x04
.endobj defence_attr

# .data:0x121 | 0x2ACD9 | size: 0x3
.obj gap_04_0002ACD9_data, global
.hidden gap_04_0002ACD9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002ACD9_data

# .data:0x124 | 0x2ACDC | size: 0x5
.obj defence_turn, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_turn

# .data:0x129 | 0x2ACE1 | size: 0x3
.obj gap_04_0002ACE1_data, global
.hidden gap_04_0002ACE1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002ACE1_data

# .data:0x12C | 0x2ACE4 | size: 0x16
.obj regist, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist

# .data:0x142 | 0x2ACFA | size: 0x2
.obj gap_04_0002ACFA_data, global
.hidden gap_04_0002ACFA_data
	.2byte 0x0000
.endobj gap_04_0002ACFA_data

# .data:0x144 | 0x2ACFC | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_iron_sinemon2_tou2_0000e3f8
	.4byte str_c_sinemon_m_tou2_0000e470
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42340000
	.4byte 0x00000000
	.4byte 0x001E001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte pose_table
.endobj parts

# .data:0x190 | 0x2AD48 | size: 0xC0
.obj weapon_iron_sinemon_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000004
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
	.4byte 0x01101260
	.4byte 0x21002000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x000000C7
	.4byte 0x000007FF
	.4byte 0x00002004
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
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_iron_sinemon_attack

# .data:0x250 | 0x2AE08 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_SIN_N_1_tou2_0000e47c
	.4byte 0x00000002
	.4byte str_SIN_Y_1_tou2_0000e484
	.4byte 0x00000009
	.4byte str_SIN_Y_1_tou2_0000e484
	.4byte 0x00000005
	.4byte str_SIN_K_1_tou2_0000e48c
	.4byte 0x00000004
	.4byte str_SIN_I_1_tou2_0000e494
	.4byte 0x00000003
	.4byte str_SIS_I_1_tou2_0000e49c
	.4byte 0x0000001C
	.4byte str_SIN_S_1_tou2_0000e4a4
	.4byte 0x0000001D
	.4byte str_SIN_Q_1_tou2_0000e4ac
	.4byte 0x0000001E
	.4byte str_SIN_Q_1_tou2_0000e4ac
	.4byte 0x0000001F
	.4byte str_SIN_A_1a_tou2_0000e4b4
	.4byte 0x00000027
	.4byte str_SIN_D_1_tou2_0000e4c0
	.4byte 0x00000032
	.4byte str_SIN_A_1a_tou2_0000e4b4
	.4byte 0x00000028
	.4byte str_SIN_W_1_tou2_0000e4c8
	.4byte 0x0000002A
	.4byte str_SIN_R_1_tou2_0000e4d0
	.4byte 0x00000041
	.4byte str_SIN_T_1_tou2_0000e4d8
	.4byte 0x00000038
	.4byte str_SIN_I_1_tou2_0000e494
	.4byte 0x00000039
	.4byte str_SIN_I_1_tou2_0000e494
	.4byte 0x00000045
	.4byte str_SIN_S_1_tou2_0000e4a4
.endobj pose_table

# .data:0x2E0 | 0x2AE98 | size: 0x18
.obj data_table, local
	.4byte 0x00000025
	.4byte dmg_avoid_counter_thorn_head_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x2F8 | 0x2AEB0 | size: 0x48
.obj init_event1, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte get_id
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x0001005E
	.4byte init_event_sub
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event1

# .data:0x340 | 0x2AEF8 | size: 0x48
.obj init_event2, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte get_id
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte init_event_sub
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event2

# .data:0x388 | 0x2AF40 | size: 0xBC
.obj init_event_sub, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventPhase
	.4byte 0xFFFFFFFE
	.4byte phase_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte attack_event
	.4byte 0x0005005B
	.4byte btlevtcmd_SetBaseScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8080
	.4byte 0xF24A8080
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_ISIN_MOVE1_tou2_0000e4e0
	.4byte str_SFX_BOSS_ISIN_MOVE2_tou2_0000e4f4
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_ISIN_MOVE1_tou2_0000e4e0
	.4byte str_SFX_BOSS_ISIN_MOVE2_tou2_0000e4f4
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_sub

# .data:0x444 | 0x2AFFC | size: 0x130
.obj dmg_avoid_counter_thorn_head_event, local
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000043
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000E
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000025
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000034
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_0000e508
	.4byte str_toge_flush_tou2_0000e50c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_avoid_counter_thorn_head_event

# .data:0x574 | 0x2B12C | size: 0x198
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF840654F
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetTotalDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x0000005B
	.4byte 0x0000004A
	.4byte 0x0000014E
	.4byte 0x0000005B
	.4byte 0x00000034
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000004
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_272_tou2_0000e518
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_273_tou2_0000e528
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF840654F
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFC
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x70C | 0x2B2C4 | size: 0x2F0
.obj phase_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406550
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFFFFFFFC
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFFFFFF98
	.4byte 0x0000004A
	.4byte 0x0000014E
	.4byte 0xFFFFFF9A
	.4byte 0x00000034
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000004
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840654E
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_battle_party
	.4byte str_stg3_tou_266_tou2_0000e538
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_msg_print_battle_party
	.4byte str_stg3_tou_267_tou2_0000e548
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x0000005B
	.4byte 0x0000004A
	.4byte 0x0000014E
	.4byte 0x0000005B
	.4byte 0x00000034
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000004
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte yoshi_exist
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000041
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000045
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_268_tou2_0000e558
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPoseType
	.4byte 0xFE363C80
	.4byte 0x00000041
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPoseType
	.4byte 0xFE363C80
	.4byte 0x00000045
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_269_tou2_0000e568
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000041
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000045
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_270_tou2_0000e578
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPoseType
	.4byte 0xFE363C80
	.4byte 0x00000041
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPoseType
	.4byte 0xFE363C80
	.4byte 0x00000045
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_271_tou2_0000e588
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF840654E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840654E
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFC
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x9FC | 0x2B5B4 | size: 0x604
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_EnemyItemUseCheck
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_iron_sinemon_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_iron_sinemon_attack
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckToken
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte subsetevt_confuse_flustered
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_iron_sinemon_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_iron_sinemon_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0001006F
	.4byte 0xFE363C8E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_ISIN_MOVE1_tou2_0000e4e0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_ISIN_MOVE2_tou2_0000e4f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_ISIN_MOVE3_tou2_0000e598
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000002EE
	.4byte 0x0001005F
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xF24AF280
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_iron_sinemon_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x0001002B
	.4byte 0x00000004
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000004B
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0002005B
	.4byte evt_btl_camera_noshake
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_add_zoom
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_iron_sinemon_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_iron_sinemon_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7E80
	.4byte 0xF24A7C19
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000004B
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_ISIN_MOVE1_tou2_0000e4e0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7C80
	.4byte 0xF24A7C19
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_ISIN_MOVE1_tou2_0000e4e0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_btl_camera_noshake
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1000 | 0x2BBB8 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
