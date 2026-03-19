.include "macros.inc"
.file "unit_togenoko.o"

# 0x0000684C..0x000068CC | size: 0x80
.text
.balign 4

# .text:0x0 | 0x684C | size: 0x80
.fn togenoko_getnum, local
/* 0000684C 00006910  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00006850 00006914  7C 08 02 A6 */	mflr r0
/* 00006854 00006918  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006858 0000691C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 0000685C 00006920  7C 7B 1B 78 */	mr r27, r3
/* 00006860 00006924  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 00006864 00006928  3B A0 00 00 */	li r29, 0x0
/* 00006868 0000692C  3B E3 00 00 */	addi r31, r3, _battleWorkPointer@l
/* 0000686C 00006930  3B 80 00 00 */	li r28, 0x0
/* 00006870 00006934  83 DB 00 18 */	lwz r30, 0x18(r27)
.L_00006874:
/* 00006874 00006938  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 00006878 0000693C  7F 84 E3 78 */	mr r4, r28
/* 0000687C 00006940  4B FF 98 CD */	bl BattleGetUnitPtr
/* 00006880 00006944  28 03 00 00 */	cmplwi r3, 0x0
/* 00006884 00006948  41 82 00 14 */	beq .L_00006898
/* 00006888 0000694C  80 03 00 08 */	lwz r0, 0x8(r3)
/* 0000688C 00006950  2C 00 00 0B */	cmpwi r0, 0xb
/* 00006890 00006954  40 82 00 08 */	bne .L_00006898
/* 00006894 00006958  3B BD 00 01 */	addi r29, r29, 0x1
.L_00006898:
/* 00006898 0000695C  3B 9C 00 01 */	addi r28, r28, 0x1
/* 0000689C 00006960  2C 1C 00 40 */	cmpwi r28, 0x40
/* 000068A0 00006964  41 80 FF D4 */	blt .L_00006874
/* 000068A4 00006968  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000068A8 0000696C  7F 63 DB 78 */	mr r3, r27
/* 000068AC 00006970  7F A5 EB 78 */	mr r5, r29
/* 000068B0 00006974  4B FF 98 99 */	bl evtSetValue
/* 000068B4 00006978  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 000068B8 0000697C  38 60 00 02 */	li r3, 0x2
/* 000068BC 00006980  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000068C0 00006984  7C 08 03 A6 */	mtlr r0
/* 000068C4 00006988  38 21 00 20 */	addi r1, r1, 0x20
/* 000068C8 0000698C  4E 80 00 20 */	blr
.endfn togenoko_getnum

# 0x00005488..0x000056C0 | size: 0x238
.rodata
.balign 8

# .rodata:0x0 | 0x5488 | size: 0x10
.obj str_btl_un_togenoko_tik_0000d2f0, local
	.string "btl_un_togenoko"
.endobj str_btl_un_togenoko_tik_0000d2f0

# .rodata:0x10 | 0x5498 | size: 0x1A
.obj str_SFX_ENM_TOGENOKO_DAM_tik_0000d300, local
	.string "SFX_ENM_TOGENOKO_DAMAGED1"
.endobj str_SFX_ENM_TOGENOKO_DAM_tik_0000d300

# .rodata:0x2A | 0x54B2 | size: 0x2
.obj gap_03_000054B2_rodata, global
.hidden gap_03_000054B2_rodata
	.2byte 0x0000
.endobj gap_03_000054B2_rodata

# .rodata:0x2C | 0x54B4 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tik_0000d31c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tik_0000d31c

# .rodata:0x41 | 0x54C9 | size: 0x3
.obj gap_03_000054C9_rodata, global
.hidden gap_03_000054C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000054C9_rodata

# .rodata:0x44 | 0x54CC | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tik_0000d334, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tik_0000d334

# .rodata:0x58 | 0x54E0 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tik_0000d348, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tik_0000d348

# .rodata:0x71 | 0x54F9 | size: 0x3
.obj gap_03_000054F9_rodata, global
.hidden gap_03_000054F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000054F9_rodata

# .rodata:0x74 | 0x54FC | size: 0x4
.obj str_N_1_tik_0000d364, local
	.string "N_1"
.endobj str_N_1_tik_0000d364

# .rodata:0x78 | 0x5500 | size: 0x4
.obj str_Y_1_tik_0000d368, local
	.string "Y_1"
.endobj str_Y_1_tik_0000d368

# .rodata:0x7C | 0x5504 | size: 0x4
.obj str_K_1_tik_0000d36c, local
	.string "K_1"
.endobj str_K_1_tik_0000d36c

# .rodata:0x80 | 0x5508 | size: 0x4
.obj str_X_1_tik_0000d370, local
	.string "X_1"
.endobj str_X_1_tik_0000d370

# .rodata:0x84 | 0x550C | size: 0x4
.obj str_S_1_tik_0000d374, local
	.string "S_1"
.endobj str_S_1_tik_0000d374

# .rodata:0x88 | 0x5510 | size: 0x4
.obj str_Q_1_tik_0000d378, local
	.string "Q_1"
.endobj str_Q_1_tik_0000d378

# .rodata:0x8C | 0x5514 | size: 0x4
.obj str_D_1_tik_0000d37c, local
	.string "D_1"
.endobj str_D_1_tik_0000d37c

# .rodata:0x90 | 0x5518 | size: 0x4
.obj str_A_1_tik_0000d380, local
	.string "A_1"
.endobj str_A_1_tik_0000d380

# .rodata:0x94 | 0x551C | size: 0x4
.obj str_R_1_tik_0000d384, local
	.string "R_1"
.endobj str_R_1_tik_0000d384

# .rodata:0x98 | 0x5520 | size: 0x4
.obj str_W_1_tik_0000d388, local
	.string "W_1"
.endobj str_W_1_tik_0000d388

# .rodata:0x9C | 0x5524 | size: 0x4
.obj str_T_1_tik_0000d38c, local
	.string "T_1"
.endobj str_T_1_tik_0000d38c

# .rodata:0xA0 | 0x5528 | size: 0x4
.obj str_N_2_tik_0000d390, local
	.string "N_2"
.endobj str_N_2_tik_0000d390

# .rodata:0xA4 | 0x552C | size: 0x4
.obj str_Z_2_tik_0000d394, local
	.string "Z_2"
.endobj str_Z_2_tik_0000d394

# .rodata:0xA8 | 0x5530 | size: 0x4
.obj str_K_2_tik_0000d398, local
	.string "K_2"
.endobj str_K_2_tik_0000d398

# .rodata:0xAC | 0x5534 | size: 0x4
.obj str_S_2_tik_0000d39c, local
	.string "S_2"
.endobj str_S_2_tik_0000d39c

# .rodata:0xB0 | 0x5538 | size: 0x4
.obj str_G_1_tik_0000d3a0, local
	.string "G_1"
.endobj str_G_1_tik_0000d3a0

# .rodata:0xB4 | 0x553C | size: 0xB
.obj str_c_togenoko_tik_0000d3a4, local
	.string "c_togenoko"
.endobj str_c_togenoko_tik_0000d3a4

# .rodata:0xBF | 0x5547 | size: 0x1
.obj gap_03_00005547_rodata, global
.hidden gap_03_00005547_rodata
	.byte 0x00
.endobj gap_03_00005547_rodata

# .rodata:0xC0 | 0x5548 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_tik_0000d3b0, local
	.string "SFX_ENM_TOGENOKO_MOVE3"
.endobj str_SFX_ENM_TOGENOKO_MOV_tik_0000d3b0

# .rodata:0xD7 | 0x555F | size: 0x1
.obj gap_03_0000555F_rodata, global
.hidden gap_03_0000555F_rodata
	.byte 0x00
.endobj gap_03_0000555F_rodata

# .rodata:0xD8 | 0x5560 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_tik_0000d3c8, local
	.string "SFX_ENM_TOGENOKO_MOVE4"
.endobj str_SFX_ENM_TOGENOKO_MOV_tik_0000d3c8

# .rodata:0xEF | 0x5577 | size: 0x1
.obj gap_03_00005577_rodata, global
.hidden gap_03_00005577_rodata
	.byte 0x00
.endobj gap_03_00005577_rodata

# .rodata:0xF0 | 0x5578 | size: 0x1
.obj zero_tik_0000d3e0, local
	.byte 0x00
.endobj zero_tik_0000d3e0

# .rodata:0xF1 | 0x5579 | size: 0x3
.obj gap_03_00005579_rodata, global
.hidden gap_03_00005579_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005579_rodata

# .rodata:0xF4 | 0x557C | size: 0xB
.obj str_toge_flush_tik_0000d3e4, local
	.string "toge_flush"
.endobj str_toge_flush_tik_0000d3e4

# .rodata:0xFF | 0x5587 | size: 0x1
.obj gap_03_00005587_rodata, global
.hidden gap_03_00005587_rodata
	.byte 0x00
.endobj gap_03_00005587_rodata

# .rodata:0x100 | 0x5588 | size: 0x10
.obj str_SFX_ENM_INSIDE1_tik_0000d3f0, local
	.string "SFX_ENM_INSIDE1"
.endobj str_SFX_ENM_INSIDE1_tik_0000d3f0

# .rodata:0x110 | 0x5598 | size: 0x10
.obj str_SFX_ENM_INSIDE2_tik_0000d400, local
	.string "SFX_ENM_INSIDE2"
.endobj str_SFX_ENM_INSIDE2_tik_0000d400

# .rodata:0x120 | 0x55A8 | size: 0x4
.obj str_R_3_tik_0000d410, local
	.string "R_3"
.endobj str_R_3_tik_0000d410

# .rodata:0x124 | 0x55AC | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_tik_0000d414, local
	.string "SFX_ENM_TOGENOKO_MOVE5"
.endobj str_SFX_ENM_TOGENOKO_MOV_tik_0000d414

# .rodata:0x13B | 0x55C3 | size: 0x1
.obj gap_03_000055C3_rodata, global
.hidden gap_03_000055C3_rodata
	.byte 0x00
.endobj gap_03_000055C3_rodata

# .rodata:0x13C | 0x55C4 | size: 0x4
.obj str_A_2_tik_0000d42c, local
	.string "A_2"
.endobj str_A_2_tik_0000d42c

# .rodata:0x140 | 0x55C8 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_tik_0000d430, local
	.string "SFX_ENM_TOGENOKO_MOVE6"
.endobj str_SFX_ENM_TOGENOKO_MOV_tik_0000d430

# .rodata:0x157 | 0x55DF | size: 0x1
.obj gap_03_000055DF_rodata, global
.hidden gap_03_000055DF_rodata
	.byte 0x00
.endobj gap_03_000055DF_rodata

# .rodata:0x158 | 0x55E0 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_tik_0000d448, local
	.string "SFX_ENM_TOGENOKO_MOVE1"
.endobj str_SFX_ENM_TOGENOKO_MOV_tik_0000d448

# .rodata:0x16F | 0x55F7 | size: 0x1
.obj gap_03_000055F7_rodata, global
.hidden gap_03_000055F7_rodata
	.byte 0x00
.endobj gap_03_000055F7_rodata

# .rodata:0x170 | 0x55F8 | size: 0x18
.obj str_SFX_ENM_TOGENOKO_SHE_tik_0000d460, local
	.string "SFX_ENM_TOGENOKO_SHELL1"
.endobj str_SFX_ENM_TOGENOKO_SHE_tik_0000d460

# .rodata:0x188 | 0x5610 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_tik_0000d478, local
	.string "SFX_ENM_TOGENOKO_MOVE2"
.endobj str_SFX_ENM_TOGENOKO_MOV_tik_0000d478

# .rodata:0x19F | 0x5627 | size: 0x1
.obj gap_03_00005627_rodata, global
.hidden gap_03_00005627_rodata
	.byte 0x00
.endobj gap_03_00005627_rodata

# .rodata:0x1A0 | 0x5628 | size: 0xC
.obj str_kemuri_test_tik_0000d490, local
	.string "kemuri_test"
.endobj str_kemuri_test_tik_0000d490

# .rodata:0x1AC | 0x5634 | size: 0x19
.obj str_SFX_ENM_TOGENOKO_ATT_tik_0000d49c, local
	.string "SFX_ENM_TOGENOKO_ATTACK1"
.endobj str_SFX_ENM_TOGENOKO_ATT_tik_0000d49c

# .rodata:0x1C5 | 0x564D | size: 0x3
.obj gap_03_0000564D_rodata, global
.hidden gap_03_0000564D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000564D_rodata

# .rodata:0x1C8 | 0x5650 | size: 0x18
.obj str_SFX_ENM_TOGENOKO_SHE_tik_0000d4b8, local
	.string "SFX_ENM_TOGENOKO_SHELL2"
.endobj str_SFX_ENM_TOGENOKO_SHE_tik_0000d4b8

# .rodata:0x1E0 | 0x5668 | size: 0x19
.obj str_SFX_ENM_TOGENOKO_ATT_tik_0000d4d0, local
	.string "SFX_ENM_TOGENOKO_ATTACK2"
.endobj str_SFX_ENM_TOGENOKO_ATT_tik_0000d4d0

# .rodata:0x1F9 | 0x5681 | size: 0x3
.obj gap_03_00005681_rodata, global
.hidden gap_03_00005681_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005681_rodata

# .rodata:0x1FC | 0x5684 | size: 0x19
.obj str_SFX_ENM_TOGENOKO_CHA_tik_0000d4ec, local
	.string "SFX_ENM_TOGENOKO_CHARGE1"
.endobj str_SFX_ENM_TOGENOKO_CHA_tik_0000d4ec

# .rodata:0x215 | 0x569D | size: 0x3
.obj gap_03_0000569D_rodata, global
.hidden gap_03_0000569D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000569D_rodata

# .rodata:0x218 | 0x56A0 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_CAL_tik_0000d508, local
	.string "SFX_ENM_TOGENOKO_CALL1"
.endobj str_SFX_ENM_TOGENOKO_CAL_tik_0000d508

# .rodata:0x22F | 0x56B7 | size: 0x1
.obj gap_03_000056B7_rodata, global
.hidden gap_03_000056B7_rodata
	.byte 0x00
.endobj gap_03_000056B7_rodata

# .rodata:0x230 | 0x56B8 | size: 0x4
.obj str_B_1_tik_0000d520, local
	.string "B_1"
.endobj str_B_1_tik_0000d520

# .rodata:0x234 | 0x56BC | size: 0x4
.obj gap_03_000056BC_rodata, global
.hidden gap_03_000056BC_rodata
	.4byte 0x00000000
.endobj gap_03_000056BC_rodata

# 0x0002B8D8..0x0002DE28 | size: 0x2550
.data
.balign 8

# .data:0x0 | 0x2B8D8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2B8E0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2B8E4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2B8E8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2B8EC | size: 0x4
.obj gap_04_0002B8EC_data, global
.hidden gap_04_0002B8EC_data
	.4byte 0x00000000
.endobj gap_04_0002B8EC_data

# .data:0x18 | 0x2B8F0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2B8F8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2B8FC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2B900 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2B908 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2B90C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2B910 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2B914 | size: 0x4
.obj gap_04_0002B914_data, global
.hidden gap_04_0002B914_data
	.4byte 0x00000000
.endobj gap_04_0002B914_data

# .data:0x40 | 0x2B918 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2B920 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2B924 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2B928 | size: 0xC4
.obj unit_togenoko_24_data_2B928, global
	.4byte 0x0000000B
	.4byte str_btl_un_togenoko_tik_0000d2f0
	.4byte 0x00060000
	.4byte 0x01011A00
	.4byte 0x02460232
	.4byte 0x270F0024
	.4byte 0x0032FFFC
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x42100000
	.4byte 0x42480000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_TOGENOKO_DAM_tik_0000d300
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tik_0000d31c
	.4byte str_SFX_BTL_DAMAGE_ICE1_tik_0000d334
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tik_0000d348
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_togenoko_24_data_2B928

# .data:0x114 | 0x2B9EC | size: 0x5
.obj defence, local
	.4byte 0x02020202
	.byte 0x02
.endobj defence

# .data:0x119 | 0x2B9F1 | size: 0x3
.obj gap_04_0002B9F1_data, global
.hidden gap_04_0002B9F1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002B9F1_data

# .data:0x11C | 0x2B9F4 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x2B9F9 | size: 0x3
.obj gap_04_0002B9F9_data, global
.hidden gap_04_0002B9F9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002B9F9_data

# .data:0x124 | 0x2B9FC | size: 0x16
.obj regist, local
	.ascii "FKKdKddFdZdZd_PFFdPdd_"
.endobj regist

# .data:0x13A | 0x2BA12 | size: 0x2
.obj gap_04_0002BA12_data, global
.hidden gap_04_0002BA12_data
	.2byte 0x0000
.endobj gap_04_0002BA12_data

# .data:0x13C | 0x2BA14 | size: 0x5
.obj defence_turn, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_turn

# .data:0x141 | 0x2BA19 | size: 0x3
.obj gap_04_0002BA19_data, global
.hidden gap_04_0002BA19_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002BA19_data

# .data:0x144 | 0x2BA1C | size: 0x5
.obj defence_attr_turn, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_turn

# .data:0x149 | 0x2BA21 | size: 0x3
.obj gap_04_0002BA21_data, global
.hidden gap_04_0002BA21_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002BA21_data

# .data:0x14C | 0x2BA24 | size: 0x16
.obj regist_turn, local
	.ascii "dddddddddddddddddddddd"
.endobj regist_turn

# .data:0x162 | 0x2BA3A | size: 0x2
.obj gap_04_0002BA3A_data, global
.hidden gap_04_0002BA3A_data
	.2byte 0x0000
.endobj gap_04_0002BA3A_data

# .data:0x164 | 0x2BA3C | size: 0x5
.obj defence_guard, local
	.ascii "ccccc"
.endobj defence_guard

# .data:0x169 | 0x2BA41 | size: 0x3
.obj gap_04_0002BA41_data, global
.hidden gap_04_0002BA41_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002BA41_data

# .data:0x16C | 0x2BA44 | size: 0x5
.obj defence_attr_guard, local
	.4byte 0x02020202
	.byte 0x02
.endobj defence_attr_guard

# .data:0x171 | 0x2BA49 | size: 0x3
.obj gap_04_0002BA49_data, global
.hidden gap_04_0002BA49_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002BA49_data

# .data:0x174 | 0x2BA4C | size: 0x16
.obj regist_guard, local
	.ascii "dddddddddddddddddddddd"
.endobj regist_guard

# .data:0x18A | 0x2BA62 | size: 0x2
.obj gap_04_0002BA62_data, global
.hidden gap_04_0002BA62_data
	.2byte 0x0000
.endobj gap_04_0002BA62_data

# .data:0x18C | 0x2BA64 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_tik_0000d364
	.4byte 0x00000002
	.4byte str_Y_1_tik_0000d368
	.4byte 0x00000009
	.4byte str_Y_1_tik_0000d368
	.4byte 0x00000005
	.4byte str_K_1_tik_0000d36c
	.4byte 0x00000004
	.4byte str_X_1_tik_0000d370
	.4byte 0x00000003
	.4byte str_X_1_tik_0000d370
	.4byte 0x0000001C
	.4byte str_S_1_tik_0000d374
	.4byte 0x0000001D
	.4byte str_Q_1_tik_0000d378
	.4byte 0x0000001E
	.4byte str_Q_1_tik_0000d378
	.4byte 0x0000001F
	.4byte str_S_1_tik_0000d374
	.4byte 0x00000027
	.4byte str_D_1_tik_0000d37c
	.4byte 0x00000032
	.4byte str_A_1_tik_0000d380
	.4byte 0x0000002A
	.4byte str_R_1_tik_0000d384
	.4byte 0x00000028
	.4byte str_W_1_tik_0000d388
	.4byte 0x00000038
	.4byte str_X_1_tik_0000d370
	.4byte 0x00000039
	.4byte str_X_1_tik_0000d370
	.4byte 0x00000041
	.4byte str_T_1_tik_0000d38c
	.4byte 0x00000045
	.4byte str_S_1_tik_0000d374
.endobj pose_table

# .data:0x21C | 0x2BAF4 | size: 0x78
.obj pose_table_turn, local
	.4byte 0x00000001
	.4byte str_N_2_tik_0000d390
	.4byte 0x00000002
	.4byte str_Z_2_tik_0000d394
	.4byte 0x00000009
	.4byte str_Z_2_tik_0000d394
	.4byte 0x00000005
	.4byte str_K_2_tik_0000d398
	.4byte 0x00000004
	.4byte str_S_2_tik_0000d39c
	.4byte 0x00000003
	.4byte str_S_2_tik_0000d39c
	.4byte 0x0000001C
	.4byte str_S_2_tik_0000d39c
	.4byte 0x0000001D
	.4byte str_Q_1_tik_0000d378
	.4byte 0x0000001E
	.4byte str_Q_1_tik_0000d378
	.4byte 0x0000001F
	.4byte str_D_1_tik_0000d37c
	.4byte 0x00000027
	.4byte str_D_1_tik_0000d37c
	.4byte 0x00000038
	.4byte str_S_2_tik_0000d39c
	.4byte 0x00000039
	.4byte str_S_2_tik_0000d39c
	.4byte 0x00000041
	.4byte str_S_2_tik_0000d39c
	.4byte 0x00000045
	.4byte str_S_2_tik_0000d39c
.endobj pose_table_turn

# .data:0x294 | 0x2BB6C | size: 0x78
.obj pose_table_guard, local
	.4byte 0x00000001
	.4byte str_A_1_tik_0000d380
	.4byte 0x00000002
	.4byte str_A_1_tik_0000d380
	.4byte 0x00000009
	.4byte str_A_1_tik_0000d380
	.4byte 0x00000005
	.4byte str_A_1_tik_0000d380
	.4byte 0x00000004
	.4byte str_A_1_tik_0000d380
	.4byte 0x00000003
	.4byte str_A_1_tik_0000d380
	.4byte 0x0000001C
	.4byte str_A_1_tik_0000d380
	.4byte 0x0000001D
	.4byte str_A_1_tik_0000d380
	.4byte 0x0000001E
	.4byte str_A_1_tik_0000d380
	.4byte 0x0000001F
	.4byte str_A_1_tik_0000d380
	.4byte 0x00000027
	.4byte str_A_1_tik_0000d380
	.4byte 0x00000038
	.4byte str_A_1_tik_0000d380
	.4byte 0x00000039
	.4byte str_A_1_tik_0000d380
	.4byte 0x00000041
	.4byte str_A_1_tik_0000d380
	.4byte 0x00000045
	.4byte str_A_1_tik_0000d380
.endobj pose_table_guard

# .data:0x30C | 0x2BBE4 | size: 0x78
.obj pose_table_guard_turn, local
	.4byte 0x00000001
	.4byte str_G_1_tik_0000d3a0
	.4byte 0x00000002
	.4byte str_G_1_tik_0000d3a0
	.4byte 0x00000009
	.4byte str_G_1_tik_0000d3a0
	.4byte 0x00000005
	.4byte str_G_1_tik_0000d3a0
	.4byte 0x00000004
	.4byte str_G_1_tik_0000d3a0
	.4byte 0x00000003
	.4byte str_G_1_tik_0000d3a0
	.4byte 0x0000001C
	.4byte str_G_1_tik_0000d3a0
	.4byte 0x0000001D
	.4byte str_G_1_tik_0000d3a0
	.4byte 0x0000001E
	.4byte str_G_1_tik_0000d3a0
	.4byte 0x0000001F
	.4byte str_G_1_tik_0000d3a0
	.4byte 0x00000027
	.4byte str_G_1_tik_0000d3a0
	.4byte 0x00000038
	.4byte str_G_1_tik_0000d3a0
	.4byte 0x00000039
	.4byte str_G_1_tik_0000d3a0
	.4byte 0x00000041
	.4byte str_G_1_tik_0000d3a0
	.4byte 0x00000045
	.4byte str_G_1_tik_0000d3a0
.endobj pose_table_guard_turn

# .data:0x384 | 0x2BC5C | size: 0x20
.obj data_table, local
	.4byte 0x0000000D
	.4byte dmg_turn_event
	.4byte 0x00000025
	.4byte dmg_avoid_counter_thorn_head_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x3A4 | 0x2BC7C | size: 0x18
.obj data_table_turn, local
	.4byte 0x0000000D
	.4byte dmg_turn_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_turn

# .data:0x3BC | 0x2BC94 | size: 0x20
.obj data_table_guard, local
	.4byte 0x00000025
	.4byte dmg_avoid_counter_thorn_head_event
	.4byte 0x0000000D
	.4byte dmg_turn_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_guard

# .data:0x3DC | 0x2BCB4 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_togenoko_tik_0000d2f0
	.4byte str_c_togenoko_tik_0000d3a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00001009
	.4byte 0x00000001
	.4byte pose_table
.endobj parts

# .data:0x428 | 0x2BD00 | size: 0xC0
.obj weapon_togenoko_normal_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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
	.4byte 0x00080302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000002
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
.endobj weapon_togenoko_normal_attack

# .data:0x4E8 | 0x2BDC0 | size: 0xC0
.obj weapon_togenoko_shell_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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
	.4byte 0x02101260
	.4byte 0x20004004
	.4byte 0x00080302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000005FF
	.4byte 0x00002000
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
.endobj weapon_togenoko_shell_attack

# .data:0x5A8 | 0x2BE80 | size: 0xC0
.obj weapon_togenoko_charge, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x01004020
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_togenoko_charge

# .data:0x668 | 0x2BF40 | size: 0x94
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
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
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tik_0000d3b0
	.4byte str_SFX_ENM_TOGENOKO_MOV_tik_0000d3c8
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tik_0000d3b0
	.4byte str_SFX_ENM_TOGENOKO_MOV_tik_0000d3c8
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x6FC | 0x2BFD4 | size: 0x28
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x724 | 0x2BFFC | size: 0xF4
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
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000046
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
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000037
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tik_0000d3e0
	.4byte str_toge_flush_tik_0000d3e4
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

# .data:0x818 | 0x2C0F0 | size: 0x1D0
.obj dmg_turn_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence_turn
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence_attr_turn
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFE363C8A
	.4byte regist_turn
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table_turn
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000027
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table_guard_turn
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000045
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFE363C8A
	.4byte data_table_turn
	.4byte 0x0003005B
	.4byte btlevtcmd_OnStatusFlag
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsCounterAttribute
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetOverTurnCount
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_INSIDE1_tik_0000d3f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C8A
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000045
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_turn_event

# .data:0x9E8 | 0x2C2C0 | size: 0x1A0
.obj wakeup_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetOverTurnCount
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetOverTurnCount
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence_attr
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFE363C8A
	.4byte regist
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFE363C8A
	.4byte data_table
	.4byte 0x0003005B
	.4byte btlevtcmd_OffStatusFlag
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsCounterAttribute
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_INSIDE2_tik_0000d400
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_S_1_tik_0000d374
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C8A
	.4byte 0xF24A7E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wakeup_event

# .data:0xB88 | 0x2C460 | size: 0x30
.obj entry_togenoko, local
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_togenoko

# .data:0xBB8 | 0x2C490 | size: 0x534
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_togenoko_normal_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetOverTurnCount
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte wakeup_event
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
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000050
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000050
	.4byte 0x0001005E
	.4byte guard_cancel_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_togenoko_normal_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_togenoko_shell_attack
	.4byte 0x0001005E
	.4byte shell_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
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
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00020037
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00010004
	.4byte 0x00000009
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000009
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000082
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00010004
	.4byte 0x0000000B
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0002005B
	.4byte togenoko_getnum
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000063
	.4byte 0xFE363C8B
	.4byte 0x00010022
	.4byte 0xFE363C8A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xFE363C8B
	.4byte 0x00000028
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0002001A
	.4byte 0xFE363C8B
	.4byte 0x00000014
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0002001A
	.4byte 0xFE363C8B
	.4byte 0x0000000A
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_togenoko_normal_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_togenoko_shell_attack
	.4byte 0x0001005E
	.4byte shell_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_togenoko_charge
	.4byte 0x0001005E
	.4byte charge_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte guard_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x10EC | 0x2C9C4 | size: 0x658
.obj normal_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002EE
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFirstAttackTarget
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000021
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
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
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
	.4byte 0xFE363C89
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
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tik_0000d3b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tik_0000d3c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_3_tik_0000d410
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tik_0000d414
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2_tik_0000d42c
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24AA280
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
	.4byte 0xFE363C89
	.4byte 0x00000000
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
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x000001F4
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_tik_0000d384
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0x0000012C
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24AA280
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_tik_0000d374
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
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
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_tik_0000d374
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C8B
	.4byte 0xFE363C81
	.4byte 0x0002003B
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C8A
	.4byte 0xF24A7D80
	.4byte 0x0002003C
	.4byte 0xFE363C8B
	.4byte 0xF24A7D80
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xF24A7D80
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C8B
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tik_0000d430
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tik_0000d430
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x1744 | 0x2D01C | size: 0x7A4
.obj shell_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
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
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
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
	.4byte 0xFE363C89
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
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tik_0000d448
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_SHE_tik_0000d460
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1_tik_0000d380
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tik_0000d478
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0000000A
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000014
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000028
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0001006F
	.4byte 0xFE363C8D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tik_0000d3e0
	.4byte str_kemuri_test_tik_0000d490
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7BB3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24AAA80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C85
	.4byte 0xF1194D80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24AAA80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C85
	.4byte 0xF1194D80
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x00000064
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24AAA80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0x000000FA
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_ATT_tik_0000d49c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24AAA80
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C8D
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_SHE_tik_0000d4b8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_ATT_tik_0000d4d0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24AA280
	.4byte 0xF24A7C19
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shell_attack_event

# .data:0x1EE8 | 0x2D7C0 | size: 0x18C
.obj charge_event, local
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_togenoko_charge
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_togenoko_charge
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_CHA_tik_0000d4ec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000008
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tik_0000d3b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tik_0000d3c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_3_tik_0000d410
	.4byte 0x00010009
	.4byte 0x00000030
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_tik_0000d374
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_togenoko_charge
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_togenoko_charge
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000001
.endobj charge_event

# .data:0x2074 | 0x2D94C | size: 0x1FC
.obj guard_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_SHE_tik_0000d460
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_A_1_tik_0000d380
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tik_0000d448
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFE363C8A
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7C80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x00020034
	.4byte 0xFE363C8C
	.4byte 0xF24AF280
	.4byte 0x00020034
	.4byte 0xFE363C8D
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x0000000F
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x0002003C
	.4byte 0xFE363C8E
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x0002003B
	.4byte 0xFE363C8C
	.4byte 0xF24A8280
	.4byte 0x0002003A
	.4byte 0xFE363C8D
	.4byte 0xF24AF280
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence_guard
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence_attr_guard
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFE363C8A
	.4byte regist_guard
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table_guard
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFE363C8A
	.4byte data_table_guard
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj guard_event

# .data:0x2270 | 0x2DB48 | size: 0x168
.obj guard_cancel_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_SHE_tik_0000d4b8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_S_1_tik_0000d374
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFE363C8A
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7C80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tik_0000d430
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence_attr
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFE363C8A
	.4byte regist
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFE363C8A
	.4byte data_table
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj guard_cancel_event

# .data:0x23D8 | 0x2DCB0 | size: 0x160
.obj friend_event, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_CAL_tik_0000d508
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_B_1_tik_0000d520
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_tik_0000d374
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_togenoko
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0x0000012C
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte str_R_1_tik_0000d384
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFE363C83
	.4byte 0x00000008
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte str_S_1_tik_0000d374
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj friend_event

# .data:0x2538 | 0x2DE10 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
