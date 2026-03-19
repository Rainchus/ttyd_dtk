.include "macros.inc"
.file "unit_togenoko_ace.o"

# 0x000026A0..0x00002720 | size: 0x80
.text
.balign 4

# .text:0x0 | 0x26A0 | size: 0x80
.fn togenoko_getnum, local
/* 000026A0 00002764  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000026A4 00002768  7C 08 02 A6 */	mflr r0
/* 000026A8 0000276C  90 01 00 24 */	stw r0, 0x24(r1)
/* 000026AC 00002770  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 000026B0 00002774  7C 7B 1B 78 */	mr r27, r3
/* 000026B4 00002778  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 000026B8 0000277C  3B A0 00 00 */	li r29, 0x0
/* 000026BC 00002780  3B E3 00 00 */	addi r31, r3, _battleWorkPointer@l
/* 000026C0 00002784  3B 80 00 00 */	li r28, 0x0
/* 000026C4 00002788  83 DB 00 18 */	lwz r30, 0x18(r27)
.L_000026C8:
/* 000026C8 0000278C  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 000026CC 00002790  7F 84 E3 78 */	mr r4, r28
/* 000026D0 00002794  4B FF E3 A1 */	bl BattleGetUnitPtr
/* 000026D4 00002798  28 03 00 00 */	cmplwi r3, 0x0
/* 000026D8 0000279C  41 82 00 14 */	beq .L_000026EC
/* 000026DC 000027A0  80 03 00 08 */	lwz r0, 0x8(r3)
/* 000026E0 000027A4  2C 00 00 3C */	cmpwi r0, 0x3c
/* 000026E4 000027A8  40 82 00 08 */	bne .L_000026EC
/* 000026E8 000027AC  3B BD 00 01 */	addi r29, r29, 0x1
.L_000026EC:
/* 000026EC 000027B0  3B 9C 00 01 */	addi r28, r28, 0x1
/* 000026F0 000027B4  2C 1C 00 40 */	cmpwi r28, 0x40
/* 000026F4 000027B8  41 80 FF D4 */	blt .L_000026C8
/* 000026F8 000027BC  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000026FC 000027C0  7F 63 DB 78 */	mr r3, r27
/* 00002700 000027C4  7F A5 EB 78 */	mr r5, r29
/* 00002704 000027C8  4B FF E3 6D */	bl evtSetValue
/* 00002708 000027CC  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 0000270C 000027D0  38 60 00 02 */	li r3, 0x2
/* 00002710 000027D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00002714 000027D8  7C 08 03 A6 */	mtlr r0
/* 00002718 000027DC  38 21 00 20 */	addi r1, r1, 0x20
/* 0000271C 000027E0  4E 80 00 20 */	blr
.endfn togenoko_getnum

# 0x00004C20..0x00004E60 | size: 0x240
.rodata
.balign 8

# .rodata:0x0 | 0x4C20 | size: 0x14
.obj str_btl_un_togenoko_ace_jon_0000bc50, local
	.string "btl_un_togenoko_ace"
.endobj str_btl_un_togenoko_ace_jon_0000bc50

# .rodata:0x14 | 0x4C34 | size: 0x1A
.obj str_SFX_ENM_TOGENOKO_DAM_jon_0000bc64, local
	.string "SFX_ENM_TOGENOKO_DAMAGED1"
.endobj str_SFX_ENM_TOGENOKO_DAM_jon_0000bc64

# .rodata:0x2E | 0x4C4E | size: 0x2
.obj gap_03_00004C4E_rodata, global
.hidden gap_03_00004C4E_rodata
	.2byte 0x0000
.endobj gap_03_00004C4E_rodata

# .rodata:0x30 | 0x4C50 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000bc80, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000bc80

# .rodata:0x45 | 0x4C65 | size: 0x3
.obj gap_03_00004C65_rodata, global
.hidden gap_03_00004C65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C65_rodata

# .rodata:0x48 | 0x4C68 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000bc98, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000bc98

# .rodata:0x5C | 0x4C7C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000bcac, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000bcac

# .rodata:0x75 | 0x4C95 | size: 0x3
.obj gap_03_00004C95_rodata, global
.hidden gap_03_00004C95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C95_rodata

# .rodata:0x78 | 0x4C98 | size: 0x4
.obj str_N_1_jon_0000bcc8, local
	.string "N_1"
.endobj str_N_1_jon_0000bcc8

# .rodata:0x7C | 0x4C9C | size: 0x4
.obj str_Y_1_jon_0000bccc, local
	.string "Y_1"
.endobj str_Y_1_jon_0000bccc

# .rodata:0x80 | 0x4CA0 | size: 0x4
.obj str_K_1_jon_0000bcd0, local
	.string "K_1"
.endobj str_K_1_jon_0000bcd0

# .rodata:0x84 | 0x4CA4 | size: 0x4
.obj str_X_1_jon_0000bcd4, local
	.string "X_1"
.endobj str_X_1_jon_0000bcd4

# .rodata:0x88 | 0x4CA8 | size: 0x4
.obj str_S_1_jon_0000bcd8, local
	.string "S_1"
.endobj str_S_1_jon_0000bcd8

# .rodata:0x8C | 0x4CAC | size: 0x4
.obj str_Q_1_jon_0000bcdc, local
	.string "Q_1"
.endobj str_Q_1_jon_0000bcdc

# .rodata:0x90 | 0x4CB0 | size: 0x4
.obj str_D_1_jon_0000bce0, local
	.string "D_1"
.endobj str_D_1_jon_0000bce0

# .rodata:0x94 | 0x4CB4 | size: 0x4
.obj str_A_1_jon_0000bce4, local
	.string "A_1"
.endobj str_A_1_jon_0000bce4

# .rodata:0x98 | 0x4CB8 | size: 0x4
.obj str_R_1_jon_0000bce8, local
	.string "R_1"
.endobj str_R_1_jon_0000bce8

# .rodata:0x9C | 0x4CBC | size: 0x4
.obj str_W_1_jon_0000bcec, local
	.string "W_1"
.endobj str_W_1_jon_0000bcec

# .rodata:0xA0 | 0x4CC0 | size: 0x4
.obj str_T_1_jon_0000bcf0, local
	.string "T_1"
.endobj str_T_1_jon_0000bcf0

# .rodata:0xA4 | 0x4CC4 | size: 0x4
.obj str_N_2_jon_0000bcf4, local
	.string "N_2"
.endobj str_N_2_jon_0000bcf4

# .rodata:0xA8 | 0x4CC8 | size: 0x4
.obj str_Z_2_jon_0000bcf8, local
	.string "Z_2"
.endobj str_Z_2_jon_0000bcf8

# .rodata:0xAC | 0x4CCC | size: 0x4
.obj str_K_2_jon_0000bcfc, local
	.string "K_2"
.endobj str_K_2_jon_0000bcfc

# .rodata:0xB0 | 0x4CD0 | size: 0x4
.obj str_S_2_jon_0000bd00, local
	.string "S_2"
.endobj str_S_2_jon_0000bd00

# .rodata:0xB4 | 0x4CD4 | size: 0x4
.obj str_G_1_jon_0000bd04, local
	.string "G_1"
.endobj str_G_1_jon_0000bd04

# .rodata:0xB8 | 0x4CD8 | size: 0xD
.obj str_c_togenoko_b_jon_0000bd08, local
	.string "c_togenoko_b"
.endobj str_c_togenoko_b_jon_0000bd08

# .rodata:0xC5 | 0x4CE5 | size: 0x3
.obj gap_03_00004CE5_rodata, global
.hidden gap_03_00004CE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004CE5_rodata

# .rodata:0xC8 | 0x4CE8 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_jon_0000bd18, local
	.string "SFX_ENM_TOGENOKO_MOVE3"
.endobj str_SFX_ENM_TOGENOKO_MOV_jon_0000bd18

# .rodata:0xDF | 0x4CFF | size: 0x1
.obj gap_03_00004CFF_rodata, global
.hidden gap_03_00004CFF_rodata
	.byte 0x00
.endobj gap_03_00004CFF_rodata

# .rodata:0xE0 | 0x4D00 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_jon_0000bd30, local
	.string "SFX_ENM_TOGENOKO_MOVE4"
.endobj str_SFX_ENM_TOGENOKO_MOV_jon_0000bd30

# .rodata:0xF7 | 0x4D17 | size: 0x1
.obj gap_03_00004D17_rodata, global
.hidden gap_03_00004D17_rodata
	.byte 0x00
.endobj gap_03_00004D17_rodata

# .rodata:0xF8 | 0x4D18 | size: 0x1
.obj zero_jon_0000bd48, local
	.byte 0x00
.endobj zero_jon_0000bd48

# .rodata:0xF9 | 0x4D19 | size: 0x3
.obj gap_03_00004D19_rodata, global
.hidden gap_03_00004D19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004D19_rodata

# .rodata:0xFC | 0x4D1C | size: 0xB
.obj str_toge_flush_jon_0000bd4c, local
	.string "toge_flush"
.endobj str_toge_flush_jon_0000bd4c

# .rodata:0x107 | 0x4D27 | size: 0x1
.obj gap_03_00004D27_rodata, global
.hidden gap_03_00004D27_rodata
	.byte 0x00
.endobj gap_03_00004D27_rodata

# .rodata:0x108 | 0x4D28 | size: 0x10
.obj str_SFX_ENM_INSIDE1_jon_0000bd58, local
	.string "SFX_ENM_INSIDE1"
.endobj str_SFX_ENM_INSIDE1_jon_0000bd58

# .rodata:0x118 | 0x4D38 | size: 0x10
.obj str_SFX_ENM_INSIDE2_jon_0000bd68, local
	.string "SFX_ENM_INSIDE2"
.endobj str_SFX_ENM_INSIDE2_jon_0000bd68

# .rodata:0x128 | 0x4D48 | size: 0x4
.obj str_R_3_jon_0000bd78, local
	.string "R_3"
.endobj str_R_3_jon_0000bd78

# .rodata:0x12C | 0x4D4C | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_jon_0000bd7c, local
	.string "SFX_ENM_TOGENOKO_MOVE5"
.endobj str_SFX_ENM_TOGENOKO_MOV_jon_0000bd7c

# .rodata:0x143 | 0x4D63 | size: 0x1
.obj gap_03_00004D63_rodata, global
.hidden gap_03_00004D63_rodata
	.byte 0x00
.endobj gap_03_00004D63_rodata

# .rodata:0x144 | 0x4D64 | size: 0x4
.obj str_A_2_jon_0000bd94, local
	.string "A_2"
.endobj str_A_2_jon_0000bd94

# .rodata:0x148 | 0x4D68 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_jon_0000bd98, local
	.string "SFX_ENM_TOGENOKO_MOVE6"
.endobj str_SFX_ENM_TOGENOKO_MOV_jon_0000bd98

# .rodata:0x15F | 0x4D7F | size: 0x1
.obj gap_03_00004D7F_rodata, global
.hidden gap_03_00004D7F_rodata
	.byte 0x00
.endobj gap_03_00004D7F_rodata

# .rodata:0x160 | 0x4D80 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_jon_0000bdb0, local
	.string "SFX_ENM_TOGENOKO_MOVE1"
.endobj str_SFX_ENM_TOGENOKO_MOV_jon_0000bdb0

# .rodata:0x177 | 0x4D97 | size: 0x1
.obj gap_03_00004D97_rodata, global
.hidden gap_03_00004D97_rodata
	.byte 0x00
.endobj gap_03_00004D97_rodata

# .rodata:0x178 | 0x4D98 | size: 0x18
.obj str_SFX_ENM_TOGENOKO_SHE_jon_0000bdc8, local
	.string "SFX_ENM_TOGENOKO_SHELL1"
.endobj str_SFX_ENM_TOGENOKO_SHE_jon_0000bdc8

# .rodata:0x190 | 0x4DB0 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_jon_0000bde0, local
	.string "SFX_ENM_TOGENOKO_MOVE2"
.endobj str_SFX_ENM_TOGENOKO_MOV_jon_0000bde0

# .rodata:0x1A7 | 0x4DC7 | size: 0x1
.obj gap_03_00004DC7_rodata, global
.hidden gap_03_00004DC7_rodata
	.byte 0x00
.endobj gap_03_00004DC7_rodata

# .rodata:0x1A8 | 0x4DC8 | size: 0xC
.obj str_kemuri_test_jon_0000bdf8, local
	.string "kemuri_test"
.endobj str_kemuri_test_jon_0000bdf8

# .rodata:0x1B4 | 0x4DD4 | size: 0x19
.obj str_SFX_ENM_TOGENOKO_ATT_jon_0000be04, local
	.string "SFX_ENM_TOGENOKO_ATTACK1"
.endobj str_SFX_ENM_TOGENOKO_ATT_jon_0000be04

# .rodata:0x1CD | 0x4DED | size: 0x3
.obj gap_03_00004DED_rodata, global
.hidden gap_03_00004DED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DED_rodata

# .rodata:0x1D0 | 0x4DF0 | size: 0x18
.obj str_SFX_ENM_TOGENOKO_SHE_jon_0000be20, local
	.string "SFX_ENM_TOGENOKO_SHELL2"
.endobj str_SFX_ENM_TOGENOKO_SHE_jon_0000be20

# .rodata:0x1E8 | 0x4E08 | size: 0x19
.obj str_SFX_ENM_TOGENOKO_ATT_jon_0000be38, local
	.string "SFX_ENM_TOGENOKO_ATTACK2"
.endobj str_SFX_ENM_TOGENOKO_ATT_jon_0000be38

# .rodata:0x201 | 0x4E21 | size: 0x3
.obj gap_03_00004E21_rodata, global
.hidden gap_03_00004E21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E21_rodata

# .rodata:0x204 | 0x4E24 | size: 0x19
.obj str_SFX_ENM_TOGENOKO_CHA_jon_0000be54, local
	.string "SFX_ENM_TOGENOKO_CHARGE1"
.endobj str_SFX_ENM_TOGENOKO_CHA_jon_0000be54

# .rodata:0x21D | 0x4E3D | size: 0x3
.obj gap_03_00004E3D_rodata, global
.hidden gap_03_00004E3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E3D_rodata

# .rodata:0x220 | 0x4E40 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_CAL_jon_0000be70, local
	.string "SFX_ENM_TOGENOKO_CALL1"
.endobj str_SFX_ENM_TOGENOKO_CAL_jon_0000be70

# .rodata:0x237 | 0x4E57 | size: 0x1
.obj gap_03_00004E57_rodata, global
.hidden gap_03_00004E57_rodata
	.byte 0x00
.endobj gap_03_00004E57_rodata

# .rodata:0x238 | 0x4E58 | size: 0x4
.obj str_B_1_jon_0000be88, local
	.string "B_1"
.endobj str_B_1_jon_0000be88

# .rodata:0x23C | 0x4E5C | size: 0x4
.obj gap_03_00004E5C_rodata, global
.hidden gap_03_00004E5C_rodata
	.4byte 0x00000000
.endobj gap_03_00004E5C_rodata

# 0x00041D50..0x000442A0 | size: 0x2550
.data
.balign 8

# .data:0x0 | 0x41D50 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x41D58 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x41D5C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x41D60 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x41D64 | size: 0x4
.obj gap_04_00041D64_data, global
.hidden gap_04_00041D64_data
	.4byte 0x00000000
.endobj gap_04_00041D64_data

# .data:0x18 | 0x41D68 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x41D70 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x41D74 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x41D78 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x41D80 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x41D84 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x41D88 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x41D8C | size: 0x4
.obj gap_04_00041D8C_data, global
.hidden gap_04_00041D8C_data
	.4byte 0x00000000
.endobj gap_04_00041D8C_data

# .data:0x40 | 0x41D90 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x41D98 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x41D9C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x41DA0 | size: 0xC4
.obj unit_togenoko_ace_14_data_41DA0, global
	.4byte 0x0000003C
	.4byte str_btl_un_togenoko_ace_jon_0000bc50
	.4byte 0x00190000
	.4byte 0x01011E01
	.4byte 0x03460232
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
	.4byte str_SFX_ENM_TOGENOKO_DAM_jon_0000bc64
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000bc80
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000bc98
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000bcac
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_togenoko_ace_14_data_41DA0

# .data:0x114 | 0x41E64 | size: 0x5
.obj defence, local
	.4byte 0x02020202
	.byte 0x02
.endobj defence

# .data:0x119 | 0x41E69 | size: 0x3
.obj gap_04_00041E69_data, global
.hidden gap_04_00041E69_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00041E69_data

# .data:0x11C | 0x41E6C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x41E71 | size: 0x3
.obj gap_04_00041E71_data, global
.hidden gap_04_00041E71_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00041E71_data

# .data:0x124 | 0x41E74 | size: 0x16
.obj regist, local
	.ascii "<AAdAdd<dUdUdZF<<dFdd_"
.endobj regist

# .data:0x13A | 0x41E8A | size: 0x2
.obj gap_04_00041E8A_data, global
.hidden gap_04_00041E8A_data
	.2byte 0x0000
.endobj gap_04_00041E8A_data

# .data:0x13C | 0x41E8C | size: 0x5
.obj defence_turn, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_turn

# .data:0x141 | 0x41E91 | size: 0x3
.obj gap_04_00041E91_data, global
.hidden gap_04_00041E91_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00041E91_data

# .data:0x144 | 0x41E94 | size: 0x5
.obj defence_attr_turn, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_turn

# .data:0x149 | 0x41E99 | size: 0x3
.obj gap_04_00041E99_data, global
.hidden gap_04_00041E99_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00041E99_data

# .data:0x14C | 0x41E9C | size: 0x16
.obj regist_turn, local
	.ascii "dddddddddddddddddddddd"
.endobj regist_turn

# .data:0x162 | 0x41EB2 | size: 0x2
.obj gap_04_00041EB2_data, global
.hidden gap_04_00041EB2_data
	.2byte 0x0000
.endobj gap_04_00041EB2_data

# .data:0x164 | 0x41EB4 | size: 0x5
.obj defence_guard, local
	.ascii "ccccc"
.endobj defence_guard

# .data:0x169 | 0x41EB9 | size: 0x3
.obj gap_04_00041EB9_data, global
.hidden gap_04_00041EB9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00041EB9_data

# .data:0x16C | 0x41EBC | size: 0x5
.obj defence_attr_guard, local
	.4byte 0x02020202
	.byte 0x02
.endobj defence_attr_guard

# .data:0x171 | 0x41EC1 | size: 0x3
.obj gap_04_00041EC1_data, global
.hidden gap_04_00041EC1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00041EC1_data

# .data:0x174 | 0x41EC4 | size: 0x16
.obj regist_guard, local
	.ascii "dddddddddddddddddddddd"
.endobj regist_guard

# .data:0x18A | 0x41EDA | size: 0x2
.obj gap_04_00041EDA_data, global
.hidden gap_04_00041EDA_data
	.2byte 0x0000
.endobj gap_04_00041EDA_data

# .data:0x18C | 0x41EDC | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_jon_0000bcc8
	.4byte 0x00000002
	.4byte str_Y_1_jon_0000bccc
	.4byte 0x00000009
	.4byte str_Y_1_jon_0000bccc
	.4byte 0x00000005
	.4byte str_K_1_jon_0000bcd0
	.4byte 0x00000004
	.4byte str_X_1_jon_0000bcd4
	.4byte 0x00000003
	.4byte str_X_1_jon_0000bcd4
	.4byte 0x0000001C
	.4byte str_S_1_jon_0000bcd8
	.4byte 0x0000001D
	.4byte str_Q_1_jon_0000bcdc
	.4byte 0x0000001E
	.4byte str_Q_1_jon_0000bcdc
	.4byte 0x0000001F
	.4byte str_S_1_jon_0000bcd8
	.4byte 0x00000027
	.4byte str_D_1_jon_0000bce0
	.4byte 0x00000032
	.4byte str_A_1_jon_0000bce4
	.4byte 0x0000002A
	.4byte str_R_1_jon_0000bce8
	.4byte 0x00000028
	.4byte str_W_1_jon_0000bcec
	.4byte 0x00000038
	.4byte str_X_1_jon_0000bcd4
	.4byte 0x00000039
	.4byte str_X_1_jon_0000bcd4
	.4byte 0x00000041
	.4byte str_T_1_jon_0000bcf0
	.4byte 0x00000045
	.4byte str_S_1_jon_0000bcd8
.endobj pose_table

# .data:0x21C | 0x41F6C | size: 0x78
.obj pose_table_turn, local
	.4byte 0x00000001
	.4byte str_N_2_jon_0000bcf4
	.4byte 0x00000002
	.4byte str_Z_2_jon_0000bcf8
	.4byte 0x00000009
	.4byte str_Z_2_jon_0000bcf8
	.4byte 0x00000005
	.4byte str_K_2_jon_0000bcfc
	.4byte 0x00000004
	.4byte str_S_2_jon_0000bd00
	.4byte 0x00000003
	.4byte str_S_2_jon_0000bd00
	.4byte 0x0000001C
	.4byte str_S_2_jon_0000bd00
	.4byte 0x0000001D
	.4byte str_Q_1_jon_0000bcdc
	.4byte 0x0000001E
	.4byte str_Q_1_jon_0000bcdc
	.4byte 0x0000001F
	.4byte str_D_1_jon_0000bce0
	.4byte 0x00000027
	.4byte str_D_1_jon_0000bce0
	.4byte 0x00000038
	.4byte str_S_2_jon_0000bd00
	.4byte 0x00000039
	.4byte str_S_2_jon_0000bd00
	.4byte 0x00000041
	.4byte str_S_2_jon_0000bd00
	.4byte 0x00000045
	.4byte str_S_2_jon_0000bd00
.endobj pose_table_turn

# .data:0x294 | 0x41FE4 | size: 0x78
.obj pose_table_guard, local
	.4byte 0x00000001
	.4byte str_A_1_jon_0000bce4
	.4byte 0x00000002
	.4byte str_A_1_jon_0000bce4
	.4byte 0x00000009
	.4byte str_A_1_jon_0000bce4
	.4byte 0x00000005
	.4byte str_A_1_jon_0000bce4
	.4byte 0x00000004
	.4byte str_A_1_jon_0000bce4
	.4byte 0x00000003
	.4byte str_A_1_jon_0000bce4
	.4byte 0x0000001C
	.4byte str_A_1_jon_0000bce4
	.4byte 0x0000001D
	.4byte str_A_1_jon_0000bce4
	.4byte 0x0000001E
	.4byte str_A_1_jon_0000bce4
	.4byte 0x0000001F
	.4byte str_A_1_jon_0000bce4
	.4byte 0x00000027
	.4byte str_A_1_jon_0000bce4
	.4byte 0x00000038
	.4byte str_A_1_jon_0000bce4
	.4byte 0x00000039
	.4byte str_A_1_jon_0000bce4
	.4byte 0x00000041
	.4byte str_A_1_jon_0000bce4
	.4byte 0x00000045
	.4byte str_A_1_jon_0000bce4
.endobj pose_table_guard

# .data:0x30C | 0x4205C | size: 0x78
.obj pose_table_guard_turn, local
	.4byte 0x00000001
	.4byte str_G_1_jon_0000bd04
	.4byte 0x00000002
	.4byte str_G_1_jon_0000bd04
	.4byte 0x00000009
	.4byte str_G_1_jon_0000bd04
	.4byte 0x00000005
	.4byte str_G_1_jon_0000bd04
	.4byte 0x00000004
	.4byte str_G_1_jon_0000bd04
	.4byte 0x00000003
	.4byte str_G_1_jon_0000bd04
	.4byte 0x0000001C
	.4byte str_G_1_jon_0000bd04
	.4byte 0x0000001D
	.4byte str_G_1_jon_0000bd04
	.4byte 0x0000001E
	.4byte str_G_1_jon_0000bd04
	.4byte 0x0000001F
	.4byte str_G_1_jon_0000bd04
	.4byte 0x00000027
	.4byte str_G_1_jon_0000bd04
	.4byte 0x00000038
	.4byte str_G_1_jon_0000bd04
	.4byte 0x00000039
	.4byte str_G_1_jon_0000bd04
	.4byte 0x00000041
	.4byte str_G_1_jon_0000bd04
	.4byte 0x00000045
	.4byte str_G_1_jon_0000bd04
.endobj pose_table_guard_turn

# .data:0x384 | 0x420D4 | size: 0x20
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

# .data:0x3A4 | 0x420F4 | size: 0x18
.obj data_table_turn, local
	.4byte 0x0000000D
	.4byte dmg_turn_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_turn

# .data:0x3BC | 0x4210C | size: 0x20
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

# .data:0x3DC | 0x4212C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_togenoko_ace_jon_0000bc50
	.4byte str_c_togenoko_b_jon_0000bd08
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

# .data:0x428 | 0x42178 | size: 0xC0
.obj weapon_togenoko_normal_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000005
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

# .data:0x4E8 | 0x42238 | size: 0xC0
.obj weapon_togenoko_shell_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000005
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

# .data:0x5A8 | 0x422F8 | size: 0xC0
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
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_togenoko_charge

# .data:0x668 | 0x423B8 | size: 0x94
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
	.4byte str_SFX_ENM_TOGENOKO_MOV_jon_0000bd18
	.4byte str_SFX_ENM_TOGENOKO_MOV_jon_0000bd30
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_jon_0000bd18
	.4byte str_SFX_ENM_TOGENOKO_MOV_jon_0000bd30
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x6FC | 0x4244C | size: 0x28
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

# .data:0x724 | 0x42474 | size: 0xF4
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
	.4byte zero_jon_0000bd48
	.4byte str_toge_flush_jon_0000bd4c
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

# .data:0x818 | 0x42568 | size: 0x1D0
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
	.4byte str_SFX_ENM_INSIDE1_jon_0000bd58
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

# .data:0x9E8 | 0x42738 | size: 0x1A0
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
	.4byte str_SFX_ENM_INSIDE2_jon_0000bd68
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_S_1_jon_0000bcd8
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

# .data:0xB88 | 0x428D8 | size: 0x30
.obj entry_togenoko, local
	.4byte unit_togenoko_ace_14_data_41DA0
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

# .data:0xBB8 | 0x42908 | size: 0x534
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
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000023
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000032
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
	.4byte 0x00000000
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
	.4byte 0x00000000
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
	.4byte 0x00000000
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
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000023
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000032
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
	.4byte 0x00000023
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
	.4byte 0x0000000F
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

# .data:0x10EC | 0x42E3C | size: 0x658
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
	.4byte str_SFX_ENM_TOGENOKO_MOV_jon_0000bd18
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_jon_0000bd30
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
	.4byte str_R_3_jon_0000bd78
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_jon_0000bd7c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2_jon_0000bd94
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
	.4byte str_R_1_jon_0000bce8
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
	.4byte str_S_1_jon_0000bcd8
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
	.4byte str_S_1_jon_0000bcd8
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
	.4byte str_SFX_ENM_TOGENOKO_MOV_jon_0000bd98
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
	.4byte str_SFX_ENM_TOGENOKO_MOV_jon_0000bd98
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

# .data:0x1744 | 0x43494 | size: 0x7A4
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
	.4byte str_SFX_ENM_TOGENOKO_MOV_jon_0000bdb0
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
	.4byte str_SFX_ENM_TOGENOKO_SHE_jon_0000bdc8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1_jon_0000bce4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_jon_0000bde0
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
	.4byte zero_jon_0000bd48
	.4byte str_kemuri_test_jon_0000bdf8
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
	.4byte str_SFX_ENM_TOGENOKO_ATT_jon_0000be04
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
	.4byte str_SFX_ENM_TOGENOKO_SHE_jon_0000be20
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_ATT_jon_0000be38
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

# .data:0x1EE8 | 0x43C38 | size: 0x18C
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
	.4byte str_SFX_ENM_TOGENOKO_CHA_jon_0000be54
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000008
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_jon_0000bd18
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_jon_0000bd30
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
	.4byte str_R_3_jon_0000bd78
	.4byte 0x00010009
	.4byte 0x00000030
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jon_0000bcd8
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

# .data:0x2074 | 0x43DC4 | size: 0x1FC
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
	.4byte str_SFX_ENM_TOGENOKO_SHE_jon_0000bdc8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_A_1_jon_0000bce4
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_jon_0000bdb0
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

# .data:0x2270 | 0x43FC0 | size: 0x168
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
	.4byte str_SFX_ENM_TOGENOKO_SHE_jon_0000be20
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_S_1_jon_0000bcd8
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
	.4byte str_SFX_ENM_TOGENOKO_MOV_jon_0000bd98
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

# .data:0x23D8 | 0x44128 | size: 0x160
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
	.4byte str_SFX_ENM_TOGENOKO_CAL_jon_0000be70
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_B_1_jon_0000be88
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jon_0000bcd8
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
	.4byte str_R_1_jon_0000bce8
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
	.4byte str_S_1_jon_0000bcd8
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

# .data:0x2538 | 0x44288 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
