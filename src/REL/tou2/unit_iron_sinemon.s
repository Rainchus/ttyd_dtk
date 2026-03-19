.include "macros.inc"
.file "unit_iron_sinemon.o"

# 0x000058B4..0x000059A0 | size: 0xEC
.text
.balign 4

# .text:0x0 | 0x58B4 | size: 0x54
.fn yoshi_exist, local
/* 000058B4 00005978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000058B8 0000597C  7C 08 02 A6 */	mflr r0
/* 000058BC 00005980  90 01 00 14 */	stw r0, 0x14(r1)
/* 000058C0 00005984  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000058C4 00005988  7C 7E 1B 78 */	mr r30, r3
/* 000058C8 0000598C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000058CC 00005990  4B FF F7 49 */	bl pouchGetPtr
/* 000058D0 00005994  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 000058D4 00005998  38 A0 00 00 */	li r5, 0x0
/* 000058D8 0000599C  54 00 07 FF */	clrlwi. r0, r0, 31
/* 000058DC 000059A0  41 82 00 08 */	beq .L_000058E4
/* 000058E0 000059A4  38 A0 00 01 */	li r5, 0x1
.L_000058E4:
/* 000058E4 000059A8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000058E8 000059AC  7F C3 F3 78 */	mr r3, r30
/* 000058EC 000059B0  4B FF F7 29 */	bl evtSetValue
/* 000058F0 000059B4  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000058F4 000059B8  38 60 00 02 */	li r3, 0x2
/* 000058F8 000059BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000058FC 000059C0  7C 08 03 A6 */	mtlr r0
/* 00005900 000059C4  38 21 00 10 */	addi r1, r1, 0x10
/* 00005904 000059C8  4E 80 00 20 */	blr
.endfn yoshi_exist

# .text:0x54 | 0x5908 | size: 0x98
.fn get_id, local
/* 00005908 000059CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000590C 000059D0  7C 08 02 A6 */	mflr r0
/* 00005910 000059D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005914 000059D8  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 00005918 000059DC  7C 7A 1B 78 */	mr r26, r3
/* 0000591C 000059E0  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 00005920 000059E4  3B A0 00 00 */	li r29, 0x0
/* 00005924 000059E8  3B E3 00 00 */	addi r31, r3, _battleWorkPointer@l
/* 00005928 000059EC  83 DA 00 18 */	lwz r30, 0x18(r26)
.L_0000592C:
/* 0000592C 000059F0  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 00005930 000059F4  7F A4 EB 78 */	mr r4, r29
/* 00005934 000059F8  4B FF F6 E1 */	bl BattleGetUnitPtr
/* 00005938 000059FC  28 03 00 00 */	cmplwi r3, 0x0
/* 0000593C 00005A00  41 82 00 20 */	beq .L_0000595C
/* 00005940 00005A04  80 03 00 08 */	lwz r0, 0x8(r3)
/* 00005944 00005A08  2C 00 00 3D */	cmpwi r0, 0x3d
/* 00005948 00005A0C  40 82 00 08 */	bne .L_00005950
/* 0000594C 00005A10  7F BC EB 78 */	mr r28, r29
.L_00005950:
/* 00005950 00005A14  2C 00 00 3E */	cmpwi r0, 0x3e
/* 00005954 00005A18  40 82 00 08 */	bne .L_0000595C
/* 00005958 00005A1C  7F BB EB 78 */	mr r27, r29
.L_0000595C:
/* 0000595C 00005A20  3B BD 00 01 */	addi r29, r29, 0x1
/* 00005960 00005A24  2C 1D 00 40 */	cmpwi r29, 0x40
/* 00005964 00005A28  41 80 FF C8 */	blt .L_0000592C
/* 00005968 00005A2C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 0000596C 00005A30  7F 43 D3 78 */	mr r3, r26
/* 00005970 00005A34  7F 85 E3 78 */	mr r5, r28
/* 00005974 00005A38  4B FF F6 A1 */	bl evtSetValue
/* 00005978 00005A3C  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 0000597C 00005A40  7F 43 D3 78 */	mr r3, r26
/* 00005980 00005A44  7F 65 DB 78 */	mr r5, r27
/* 00005984 00005A48  4B FF F6 91 */	bl evtSetValue
/* 00005988 00005A4C  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 0000598C 00005A50  38 60 00 02 */	li r3, 0x2
/* 00005990 00005A54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005994 00005A58  7C 08 03 A6 */	mtlr r0
/* 00005998 00005A5C  38 21 00 20 */	addi r1, r1, 0x20
/* 0000599C 00005A60  4E 80 00 20 */	blr
.endfn get_id

# 0x00004B08..0x00004CB8 | size: 0x1B0
.rodata
.balign 8

# .rodata:0x0 | 0x4B08 | size: 0x14
.obj str_btl_un_iron_sinemon_tou2_0000e248, local
	.string "btl_un_iron_sinemon"
.endobj str_btl_un_iron_sinemon_tou2_0000e248

# .rodata:0x14 | 0x4B1C | size: 0x17
.obj str_SFX_BOSS_ISIN_DAMAGE_tou2_0000e25c, local
	.string "SFX_BOSS_ISIN_DAMAGED1"
.endobj str_SFX_BOSS_ISIN_DAMAGE_tou2_0000e25c

# .rodata:0x2B | 0x4B33 | size: 0x1
.obj gap_03_00004B33_rodata, global
.hidden gap_03_00004B33_rodata
	.byte 0x00
.endobj gap_03_00004B33_rodata

# .rodata:0x2C | 0x4B34 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000e274, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000e274

# .rodata:0x41 | 0x4B49 | size: 0x3
.obj gap_03_00004B49_rodata, global
.hidden gap_03_00004B49_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004B49_rodata

# .rodata:0x44 | 0x4B4C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_0000e28c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_0000e28c

# .rodata:0x58 | 0x4B60 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000e2a0, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000e2a0

# .rodata:0x71 | 0x4B79 | size: 0x3
.obj gap_03_00004B79_rodata, global
.hidden gap_03_00004B79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004B79_rodata

# .rodata:0x74 | 0x4B7C | size: 0xC
.obj str_c_sinemon_a_tou2_0000e2bc, local
	.string "c_sinemon_a"
.endobj str_c_sinemon_a_tou2_0000e2bc

# .rodata:0x80 | 0x4B88 | size: 0x8
.obj str_SIN_N_1_tou2_0000e2c8, local
	.string "SIN_N_1"
.endobj str_SIN_N_1_tou2_0000e2c8

# .rodata:0x88 | 0x4B90 | size: 0x8
.obj str_SIN_Y_1_tou2_0000e2d0, local
	.string "SIN_Y_1"
.endobj str_SIN_Y_1_tou2_0000e2d0

# .rodata:0x90 | 0x4B98 | size: 0x8
.obj str_SIN_K_1_tou2_0000e2d8, local
	.string "SIN_K_1"
.endobj str_SIN_K_1_tou2_0000e2d8

# .rodata:0x98 | 0x4BA0 | size: 0x8
.obj str_SIN_I_1_tou2_0000e2e0, local
	.string "SIN_I_1"
.endobj str_SIN_I_1_tou2_0000e2e0

# .rodata:0xA0 | 0x4BA8 | size: 0x8
.obj str_SIS_I_1_tou2_0000e2e8, local
	.string "SIS_I_1"
.endobj str_SIS_I_1_tou2_0000e2e8

# .rodata:0xA8 | 0x4BB0 | size: 0x8
.obj str_SIN_S_1_tou2_0000e2f0, local
	.string "SIN_S_1"
.endobj str_SIN_S_1_tou2_0000e2f0

# .rodata:0xB0 | 0x4BB8 | size: 0x8
.obj str_SIN_Q_1_tou2_0000e2f8, local
	.string "SIN_Q_1"
.endobj str_SIN_Q_1_tou2_0000e2f8

# .rodata:0xB8 | 0x4BC0 | size: 0x9
.obj str_SIN_A_1a_tou2_0000e300, local
	.string "SIN_A_1a"
.endobj str_SIN_A_1a_tou2_0000e300

# .rodata:0xC1 | 0x4BC9 | size: 0x3
.obj gap_03_00004BC9_rodata, global
.hidden gap_03_00004BC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004BC9_rodata

# .rodata:0xC4 | 0x4BCC | size: 0x8
.obj str_SIN_D_1_tou2_0000e30c, local
	.string "SIN_D_1"
.endobj str_SIN_D_1_tou2_0000e30c

# .rodata:0xCC | 0x4BD4 | size: 0x8
.obj str_SIN_W_1_tou2_0000e314, local
	.string "SIN_W_1"
.endobj str_SIN_W_1_tou2_0000e314

# .rodata:0xD4 | 0x4BDC | size: 0x8
.obj str_SIN_R_1_tou2_0000e31c, local
	.string "SIN_R_1"
.endobj str_SIN_R_1_tou2_0000e31c

# .rodata:0xDC | 0x4BE4 | size: 0x8
.obj str_SIN_T_1_tou2_0000e324, local
	.string "SIN_T_1"
.endobj str_SIN_T_1_tou2_0000e324

# .rodata:0xE4 | 0x4BEC | size: 0x14
.obj str_SFX_BOSS_ISIN_MOVE1_tou2_0000e32c, local
	.string "SFX_BOSS_ISIN_MOVE1"
.endobj str_SFX_BOSS_ISIN_MOVE1_tou2_0000e32c

# .rodata:0xF8 | 0x4C00 | size: 0x14
.obj str_SFX_BOSS_ISIN_MOVE2_tou2_0000e340, local
	.string "SFX_BOSS_ISIN_MOVE2"
.endobj str_SFX_BOSS_ISIN_MOVE2_tou2_0000e340

# .rodata:0x10C | 0x4C14 | size: 0x1
.obj zero_tou2_0000e354, local
	.byte 0x00
.endobj zero_tou2_0000e354

# .rodata:0x10D | 0x4C15 | size: 0x3
.obj gap_03_00004C15_rodata, global
.hidden gap_03_00004C15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C15_rodata

# .rodata:0x110 | 0x4C18 | size: 0xB
.obj str_toge_flush_tou2_0000e358, local
	.string "toge_flush"
.endobj str_toge_flush_tou2_0000e358

# .rodata:0x11B | 0x4C23 | size: 0x1
.obj gap_03_00004C23_rodata, global
.hidden gap_03_00004C23_rodata
	.byte 0x00
.endobj gap_03_00004C23_rodata

# .rodata:0x11C | 0x4C24 | size: 0xD
.obj str_stg3_tou_272_tou2_0000e364, local
	.string "stg3_tou_272"
.endobj str_stg3_tou_272_tou2_0000e364

# .rodata:0x129 | 0x4C31 | size: 0x3
.obj gap_03_00004C31_rodata, global
.hidden gap_03_00004C31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C31_rodata

# .rodata:0x12C | 0x4C34 | size: 0xD
.obj str_stg3_tou_273_tou2_0000e374, local
	.string "stg3_tou_273"
.endobj str_stg3_tou_273_tou2_0000e374

# .rodata:0x139 | 0x4C41 | size: 0x3
.obj gap_03_00004C41_rodata, global
.hidden gap_03_00004C41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C41_rodata

# .rodata:0x13C | 0x4C44 | size: 0xD
.obj str_stg3_tou_266_tou2_0000e384, local
	.string "stg3_tou_266"
.endobj str_stg3_tou_266_tou2_0000e384

# .rodata:0x149 | 0x4C51 | size: 0x3
.obj gap_03_00004C51_rodata, global
.hidden gap_03_00004C51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C51_rodata

# .rodata:0x14C | 0x4C54 | size: 0xD
.obj str_stg3_tou_267_tou2_0000e394, local
	.string "stg3_tou_267"
.endobj str_stg3_tou_267_tou2_0000e394

# .rodata:0x159 | 0x4C61 | size: 0x3
.obj gap_03_00004C61_rodata, global
.hidden gap_03_00004C61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C61_rodata

# .rodata:0x15C | 0x4C64 | size: 0xD
.obj str_stg3_tou_268_tou2_0000e3a4, local
	.string "stg3_tou_268"
.endobj str_stg3_tou_268_tou2_0000e3a4

# .rodata:0x169 | 0x4C71 | size: 0x3
.obj gap_03_00004C71_rodata, global
.hidden gap_03_00004C71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C71_rodata

# .rodata:0x16C | 0x4C74 | size: 0xD
.obj str_stg3_tou_269_tou2_0000e3b4, local
	.string "stg3_tou_269"
.endobj str_stg3_tou_269_tou2_0000e3b4

# .rodata:0x179 | 0x4C81 | size: 0x3
.obj gap_03_00004C81_rodata, global
.hidden gap_03_00004C81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C81_rodata

# .rodata:0x17C | 0x4C84 | size: 0xD
.obj str_stg3_tou_270_tou2_0000e3c4, local
	.string "stg3_tou_270"
.endobj str_stg3_tou_270_tou2_0000e3c4

# .rodata:0x189 | 0x4C91 | size: 0x3
.obj gap_03_00004C91_rodata, global
.hidden gap_03_00004C91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C91_rodata

# .rodata:0x18C | 0x4C94 | size: 0xD
.obj str_stg3_tou_271_tou2_0000e3d4, local
	.string "stg3_tou_271"
.endobj str_stg3_tou_271_tou2_0000e3d4

# .rodata:0x199 | 0x4CA1 | size: 0x3
.obj gap_03_00004CA1_rodata, global
.hidden gap_03_00004CA1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004CA1_rodata

# .rodata:0x19C | 0x4CA4 | size: 0x14
.obj str_SFX_BOSS_ISIN_MOVE3_tou2_0000e3e4, local
	.string "SFX_BOSS_ISIN_MOVE3"
.endobj str_SFX_BOSS_ISIN_MOVE3_tou2_0000e3e4

# 0x00029BA0..0x0002ABB8 | size: 0x1018
.data
.balign 8

# .data:0x0 | 0x29BA0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x29BA8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x29BAC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x29BB0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x29BB4 | size: 0x4
.obj gap_04_00029BB4_data, global
.hidden gap_04_00029BB4_data
	.4byte 0x00000000
.endobj gap_04_00029BB4_data

# .data:0x18 | 0x29BB8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x29BC0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x29BC4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x29BC8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x29BD0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x29BD4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x29BD8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x29BDC | size: 0x4
.obj gap_04_00029BDC_data, global
.hidden gap_04_00029BDC_data
	.4byte 0x00000000
.endobj gap_04_00029BDC_data

# .data:0x40 | 0x29BE0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x29BE8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x29BEC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x29BF0 | size: 0xC4
.obj unit_iron_sinemon_26_data_29BF0, global
	.4byte 0x0000003D
	.4byte str_btl_un_iron_sinemon_tou2_0000e248
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
	.4byte str_SFX_BOSS_ISIN_DAMAGE_tou2_0000e25c
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000e274
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000e28c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000e2a0
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event1
	.4byte data_table
.endobj unit_iron_sinemon_26_data_29BF0

# .data:0x114 | 0x29CB4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x29CB9 | size: 0x3
.obj gap_04_00029CB9_data, global
.hidden gap_04_00029CB9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00029CB9_data

# .data:0x11C | 0x29CBC | size: 0x5
.obj defence_attr, local
	.4byte 0x04040404
	.byte 0x04
.endobj defence_attr

# .data:0x121 | 0x29CC1 | size: 0x3
.obj gap_04_00029CC1_data, global
.hidden gap_04_00029CC1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00029CC1_data

# .data:0x124 | 0x29CC4 | size: 0x5
.obj defence_turn, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_turn

# .data:0x129 | 0x29CC9 | size: 0x3
.obj gap_04_00029CC9_data, global
.hidden gap_04_00029CC9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00029CC9_data

# .data:0x12C | 0x29CCC | size: 0x16
.obj regist, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist

# .data:0x142 | 0x29CE2 | size: 0x2
.obj gap_04_00029CE2_data, global
.hidden gap_04_00029CE2_data
	.2byte 0x0000
.endobj gap_04_00029CE2_data

# .data:0x144 | 0x29CE4 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_iron_sinemon_tou2_0000e248
	.4byte str_c_sinemon_a_tou2_0000e2bc
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

# .data:0x190 | 0x29D30 | size: 0xC0
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

# .data:0x250 | 0x29DF0 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_SIN_N_1_tou2_0000e2c8
	.4byte 0x00000002
	.4byte str_SIN_Y_1_tou2_0000e2d0
	.4byte 0x00000009
	.4byte str_SIN_Y_1_tou2_0000e2d0
	.4byte 0x00000005
	.4byte str_SIN_K_1_tou2_0000e2d8
	.4byte 0x00000004
	.4byte str_SIN_I_1_tou2_0000e2e0
	.4byte 0x00000003
	.4byte str_SIS_I_1_tou2_0000e2e8
	.4byte 0x0000001C
	.4byte str_SIN_S_1_tou2_0000e2f0
	.4byte 0x0000001D
	.4byte str_SIN_Q_1_tou2_0000e2f8
	.4byte 0x0000001E
	.4byte str_SIN_Q_1_tou2_0000e2f8
	.4byte 0x0000001F
	.4byte str_SIN_A_1a_tou2_0000e300
	.4byte 0x00000027
	.4byte str_SIN_D_1_tou2_0000e30c
	.4byte 0x00000032
	.4byte str_SIN_A_1a_tou2_0000e300
	.4byte 0x00000028
	.4byte str_SIN_W_1_tou2_0000e314
	.4byte 0x0000002A
	.4byte str_SIN_R_1_tou2_0000e31c
	.4byte 0x00000041
	.4byte str_SIN_T_1_tou2_0000e324
	.4byte 0x00000038
	.4byte str_SIN_I_1_tou2_0000e2e0
	.4byte 0x00000039
	.4byte str_SIN_I_1_tou2_0000e2e0
	.4byte 0x00000045
	.4byte str_SIN_S_1_tou2_0000e2f0
.endobj pose_table

# .data:0x2E0 | 0x29E80 | size: 0x18
.obj data_table, local
	.4byte 0x00000025
	.4byte dmg_avoid_counter_thorn_head_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x2F8 | 0x29E98 | size: 0x48
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

# .data:0x340 | 0x29EE0 | size: 0x48
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

# .data:0x388 | 0x29F28 | size: 0xBC
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
	.4byte str_SFX_BOSS_ISIN_MOVE1_tou2_0000e32c
	.4byte str_SFX_BOSS_ISIN_MOVE2_tou2_0000e340
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_ISIN_MOVE1_tou2_0000e32c
	.4byte str_SFX_BOSS_ISIN_MOVE2_tou2_0000e340
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_sub

# .data:0x444 | 0x29FE4 | size: 0x130
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
	.4byte zero_tou2_0000e354
	.4byte str_toge_flush_tou2_0000e358
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

# .data:0x574 | 0x2A114 | size: 0x198
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
	.4byte str_stg3_tou_272_tou2_0000e364
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
	.4byte str_stg3_tou_273_tou2_0000e374
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

# .data:0x70C | 0x2A2AC | size: 0x2F0
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
	.4byte str_stg3_tou_266_tou2_0000e384
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_msg_print_battle_party
	.4byte str_stg3_tou_267_tou2_0000e394
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
	.4byte str_stg3_tou_268_tou2_0000e3a4
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
	.4byte str_stg3_tou_269_tou2_0000e3b4
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
	.4byte str_stg3_tou_270_tou2_0000e3c4
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
	.4byte str_stg3_tou_271_tou2_0000e3d4
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

# .data:0x9FC | 0x2A59C | size: 0x604
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
	.4byte str_SFX_BOSS_ISIN_MOVE1_tou2_0000e32c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_ISIN_MOVE2_tou2_0000e340
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
	.4byte str_SFX_BOSS_ISIN_MOVE3_tou2_0000e3e4
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
	.4byte str_SFX_BOSS_ISIN_MOVE1_tou2_0000e32c
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
	.4byte str_SFX_BOSS_ISIN_MOVE1_tou2_0000e32c
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

# .data:0x1000 | 0x2ABA0 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
