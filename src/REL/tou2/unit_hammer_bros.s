.include "macros.inc"
.file "unit_hammer_bros.o"

# 0x0000568C..0x00005814 | size: 0x188
.text
.balign 4

# .text:0x0 | 0x568C | size: 0x74
.fn hammer_bros_get_next_target, local
/* 0000568C 00005750  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 00005690 00005754  38 A5 00 00 */	addi r5, r5, _battleWorkPointer@l
/* 00005694 00005758  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 00005698 0000575C  38 C5 04 28 */	addi r6, r5, 0x428
/* 0000569C 00005760  88 A5 0E DF */	lbz r5, 0xedf(r5)
/* 000056A0 00005764  38 05 00 01 */	addi r0, r5, 0x1
/* 000056A4 00005768  98 06 0A B7 */	stb r0, 0xab7(r6)
/* 000056A8 0000576C  88 A6 0A B7 */	lbz r5, 0xab7(r6)
/* 000056AC 00005770  88 06 0A 6C */	lbz r0, 0xa6c(r6)
/* 000056B0 00005774  7C A5 07 74 */	extsb r5, r5
/* 000056B4 00005778  7C 00 07 74 */	extsb r0, r0
/* 000056B8 0000577C  7C 05 00 00 */	cmpw r5, r0
/* 000056BC 00005780  40 80 00 30 */	bge .L_000056EC
/* 000056C0 00005784  7C A6 2A 14 */	add r5, r6, r5
/* 000056C4 00005788  88 05 0A 6D */	lbz r0, 0xa6d(r5)
/* 000056C8 0000578C  7C 00 07 74 */	extsb r0, r0
/* 000056CC 00005790  1C A0 00 24 */	mulli r5, r0, 0x24
/* 000056D0 00005794  38 A5 00 04 */	addi r5, r5, 0x4
/* 000056D4 00005798  7C A6 2A 14 */	add r5, r6, r5
/* 000056D8 0000579C  A8 05 00 00 */	lha r0, 0x0(r5)
/* 000056DC 000057A0  90 03 00 00 */	stw r0, 0x0(r3)
/* 000056E0 000057A4  A8 05 00 02 */	lha r0, 0x2(r5)
/* 000056E4 000057A8  90 04 00 00 */	stw r0, 0x0(r4)
/* 000056E8 000057AC  4E 80 00 20 */	blr
.L_000056EC:
/* 000056EC 000057B0  38 A0 FF FF */	li r5, -0x1
/* 000056F0 000057B4  38 00 00 00 */	li r0, 0x0
/* 000056F4 000057B8  90 A3 00 00 */	stw r5, 0x0(r3)
/* 000056F8 000057BC  90 04 00 00 */	stw r0, 0x0(r4)
/* 000056FC 000057C0  4E 80 00 20 */	blr
.endfn hammer_bros_get_next_target

# .text:0x74 | 0x5700 | size: 0x44
.fn hammer_bros_get_target, local
/* 00005700 000057C4  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 00005704 000057C8  38 A5 00 00 */	addi r5, r5, _battleWorkPointer@l
/* 00005708 000057CC  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 0000570C 000057D0  38 C5 04 28 */	addi r6, r5, 0x428
/* 00005710 000057D4  88 05 0E DF */	lbz r0, 0xedf(r5)
/* 00005714 000057D8  7C 00 07 74 */	extsb r0, r0
/* 00005718 000057DC  7C A6 02 14 */	add r5, r6, r0
/* 0000571C 000057E0  88 05 0A 6D */	lbz r0, 0xa6d(r5)
/* 00005720 000057E4  7C 00 07 74 */	extsb r0, r0
/* 00005724 000057E8  1C A0 00 24 */	mulli r5, r0, 0x24
/* 00005728 000057EC  38 A5 00 04 */	addi r5, r5, 0x4
/* 0000572C 000057F0  7C A6 2A 14 */	add r5, r6, r5
/* 00005730 000057F4  A8 05 00 00 */	lha r0, 0x0(r5)
/* 00005734 000057F8  90 03 00 00 */	stw r0, 0x0(r3)
/* 00005738 000057FC  A8 05 00 02 */	lha r0, 0x2(r5)
/* 0000573C 00005800  90 04 00 00 */	stw r0, 0x0(r4)
/* 00005740 00005804  4E 80 00 20 */	blr
.endfn hammer_bros_get_target

# .text:0xB8 | 0x5744 | size: 0xD0
.fn hammer_bros_nagemakuri_set_target, local
/* 00005744 00005808  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 00005748 0000580C  7C 08 02 A6 */	mflr r0
/* 0000574C 00005810  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005750 00005814  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 00005754 00005818  BF 21 00 B4 */	stmw r25, 0xb4(r1)
/* 00005758 0000581C  3B E0 00 00 */	li r31, 0x0
/* 0000575C 00005820  7C 79 1B 78 */	mr r25, r3
/* 00005760 00005824  3B 80 00 00 */	li r28, 0x0
/* 00005764 00005828  83 63 00 18 */	lwz r27, 0x18(r3)
/* 00005768 0000582C  38 61 00 58 */	addi r3, r1, 0x58
/* 0000576C 00005830  80 A4 00 00 */	lwz r5, _battleWorkPointer@l(r4)
/* 00005770 00005834  38 81 00 08 */	addi r4, r1, 0x8
/* 00005774 00005838  9B E5 0E DF */	stb r31, 0xedf(r5)
/* 00005778 0000583C  4B FF FF 89 */	bl hammer_bros_get_target
/* 0000577C 00005840  3B C1 00 58 */	addi r30, r1, 0x58
.L_00005780:
/* 00005780 00005844  7C 1E F8 2E */	lwzx r0, r30, r31
/* 00005784 00005848  2C 00 FF FF */	cmpwi r0, -0x1
/* 00005788 0000584C  40 82 00 0C */	bne .L_00005794
/* 0000578C 00005850  7F 9A E3 78 */	mr r26, r28
/* 00005790 00005854  48 00 00 24 */	b .L_000057B4
.L_00005794:
/* 00005794 00005858  7F C3 F3 78 */	mr r3, r30
/* 00005798 0000585C  3B FF 00 04 */	addi r31, r31, 0x4
/* 0000579C 00005860  38 81 00 08 */	addi r4, r1, 0x8
/* 000057A0 00005864  3B 9C 00 01 */	addi r28, r28, 0x1
/* 000057A4 00005868  7C 63 FA 14 */	add r3, r3, r31
/* 000057A8 0000586C  7C 84 FA 14 */	add r4, r4, r31
/* 000057AC 00005870  4B FF FE E1 */	bl hammer_bros_get_next_target
/* 000057B0 00005874  4B FF FF D0 */	b .L_00005780
.L_000057B4:
/* 000057B4 00005878  3B C1 00 58 */	addi r30, r1, 0x58
/* 000057B8 0000587C  3B E1 00 08 */	addi r31, r1, 0x8
/* 000057BC 00005880  3B 80 00 00 */	li r28, 0x0
.L_000057C0:
/* 000057C0 00005884  7F 43 D3 78 */	mr r3, r26
/* 000057C4 00005888  4B FF F8 51 */	bl irand
/* 000057C8 0000588C  54 7D 10 3A */	slwi r29, r3, 2
/* 000057CC 00005890  80 9B 00 00 */	lwz r4, 0x0(r27)
/* 000057D0 00005894  7C BE E8 2E */	lwzx r5, r30, r29
/* 000057D4 00005898  7F 23 CB 78 */	mr r3, r25
/* 000057D8 0000589C  4B FF F8 3D */	bl evtSetValue
/* 000057DC 000058A0  80 9B 00 04 */	lwz r4, 0x4(r27)
/* 000057E0 000058A4  7F 23 CB 78 */	mr r3, r25
/* 000057E4 000058A8  7C BF E8 2E */	lwzx r5, r31, r29
/* 000057E8 000058AC  3B 7B 00 08 */	addi r27, r27, 0x8
/* 000057EC 000058B0  4B FF F8 29 */	bl evtSetValue
/* 000057F0 000058B4  3B 9C 00 01 */	addi r28, r28, 0x1
/* 000057F4 000058B8  2C 1C 00 05 */	cmpwi r28, 0x5
/* 000057F8 000058BC  41 80 FF C8 */	blt .L_000057C0
/* 000057FC 000058C0  BB 21 00 B4 */	lmw r25, 0xb4(r1)
/* 00005800 000058C4  38 60 00 02 */	li r3, 0x2
/* 00005804 000058C8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 00005808 000058CC  7C 08 03 A6 */	mtlr r0
/* 0000580C 000058D0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 00005810 000058D4  4E 80 00 20 */	blr
.endfn hammer_bros_nagemakuri_set_target

# 0x00004510..0x00004640 | size: 0x130
.rodata
.balign 8

# .rodata:0x0 | 0x4510 | size: 0x13
.obj str_btl_un_hammer_bros_tou2_0000dc50, local
	.string "btl_un_hammer_bros"
.endobj str_btl_un_hammer_bros_tou2_0000dc50

# .rodata:0x13 | 0x4523 | size: 0x1
.obj gap_03_00004523_rodata, global
.hidden gap_03_00004523_rodata
	.byte 0x00
.endobj gap_03_00004523_rodata

# .rodata:0x14 | 0x4524 | size: 0x18
.obj str_SFX_ENM_HUMMER_DAMAG_tou2_0000dc64, local
	.string "SFX_ENM_HUMMER_DAMAGED1"
.endobj str_SFX_ENM_HUMMER_DAMAG_tou2_0000dc64

# .rodata:0x2C | 0x453C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000dc7c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000dc7c

# .rodata:0x41 | 0x4551 | size: 0x3
.obj gap_03_00004551_rodata, global
.hidden gap_03_00004551_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004551_rodata

# .rodata:0x44 | 0x4554 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_0000dc94, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_0000dc94

# .rodata:0x58 | 0x4568 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000dca8, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000dca8

# .rodata:0x71 | 0x4581 | size: 0x3
.obj gap_03_00004581_rodata, global
.hidden gap_03_00004581_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004581_rodata

# .rodata:0x74 | 0x4584 | size: 0x8
.obj str_BRO_N_1_tou2_0000dcc4, local
	.string "BRO_N_1"
.endobj str_BRO_N_1_tou2_0000dcc4

# .rodata:0x7C | 0x458C | size: 0x8
.obj str_BRO_Y_1_tou2_0000dccc, local
	.string "BRO_Y_1"
.endobj str_BRO_Y_1_tou2_0000dccc

# .rodata:0x84 | 0x4594 | size: 0x8
.obj str_BRO_K_1_tou2_0000dcd4, local
	.string "BRO_K_1"
.endobj str_BRO_K_1_tou2_0000dcd4

# .rodata:0x8C | 0x459C | size: 0x8
.obj str_BRO_X_1_tou2_0000dcdc, local
	.string "BRO_X_1"
.endobj str_BRO_X_1_tou2_0000dcdc

# .rodata:0x94 | 0x45A4 | size: 0x8
.obj str_BRO_D_1_tou2_0000dce4, local
	.string "BRO_D_1"
.endobj str_BRO_D_1_tou2_0000dce4

# .rodata:0x9C | 0x45AC | size: 0x8
.obj str_BRO_S_1_tou2_0000dcec, local
	.string "BRO_S_1"
.endobj str_BRO_S_1_tou2_0000dcec

# .rodata:0xA4 | 0x45B4 | size: 0x8
.obj str_BRO_Q_1_tou2_0000dcf4, local
	.string "BRO_Q_1"
.endobj str_BRO_Q_1_tou2_0000dcf4

# .rodata:0xAC | 0x45BC | size: 0x8
.obj str_BRO_R_1_tou2_0000dcfc, local
	.string "BRO_R_1"
.endobj str_BRO_R_1_tou2_0000dcfc

# .rodata:0xB4 | 0x45C4 | size: 0x8
.obj str_BRO_W_1_tou2_0000dd04, local
	.string "BRO_W_1"
.endobj str_BRO_W_1_tou2_0000dd04

# .rodata:0xBC | 0x45CC | size: 0x8
.obj str_BRO_T_1_tou2_0000dd0c, local
	.string "BRO_T_1"
.endobj str_BRO_T_1_tou2_0000dd0c

# .rodata:0xC4 | 0x45D4 | size: 0xB
.obj str_c_burosu_h_tou2_0000dd14, local
	.string "c_burosu_h"
.endobj str_c_burosu_h_tou2_0000dd14

# .rodata:0xCF | 0x45DF | size: 0x1
.obj gap_03_000045DF_rodata, global
.hidden gap_03_000045DF_rodata
	.byte 0x00
.endobj gap_03_000045DF_rodata

# .rodata:0xD0 | 0x45E0 | size: 0x17
.obj str_SFX_ENM_HUMMER_ATTAC_tou2_0000dd20, local
	.string "SFX_ENM_HUMMER_ATTACK1"
.endobj str_SFX_ENM_HUMMER_ATTAC_tou2_0000dd20

# .rodata:0xE7 | 0x45F7 | size: 0x1
.obj gap_03_000045F7_rodata, global
.hidden gap_03_000045F7_rodata
	.byte 0x00
.endobj gap_03_000045F7_rodata

# .rodata:0xE8 | 0x45F8 | size: 0x9
.obj str_BRO_A_1B_tou2_0000dd38, local
	.string "BRO_A_1B"
.endobj str_BRO_A_1B_tou2_0000dd38

# .rodata:0xF1 | 0x4601 | size: 0x3
.obj gap_03_00004601_rodata, global
.hidden gap_03_00004601_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004601_rodata

# .rodata:0xF4 | 0x4604 | size: 0x17
.obj str_SFX_ENM_HUMMER_ATTAC_tou2_0000dd44, local
	.string "SFX_ENM_HUMMER_ATTACK2"
.endobj str_SFX_ENM_HUMMER_ATTAC_tou2_0000dd44

# .rodata:0x10B | 0x461B | size: 0x1
.obj gap_03_0000461B_rodata, global
.hidden gap_03_0000461B_rodata
	.byte 0x00
.endobj gap_03_0000461B_rodata

# .rodata:0x10C | 0x461C | size: 0x17
.obj str_SFX_ENM_HUMMER_ATTAC_tou2_0000dd5c, local
	.string "SFX_ENM_HUMMER_ATTACK3"
.endobj str_SFX_ENM_HUMMER_ATTAC_tou2_0000dd5c

# .rodata:0x123 | 0x4633 | size: 0x1
.obj gap_03_00004633_rodata, global
.hidden gap_03_00004633_rodata
	.byte 0x00
.endobj gap_03_00004633_rodata

# .rodata:0x124 | 0x4634 | size: 0x9
.obj str_BRO_A_1A_tou2_0000dd74, local
	.string "BRO_A_1A"
.endobj str_BRO_A_1A_tou2_0000dd74

# .rodata:0x12D | 0x463D | size: 0x3
.obj gap_03_0000463D_rodata, global
.hidden gap_03_0000463D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000463D_rodata

# 0x00024F68..0x000269E8 | size: 0x1A80
.data
.balign 8

# .data:0x0 | 0x24F68 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x24F70 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x24F74 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x24F78 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x24F7C | size: 0x4
.obj gap_04_00024F7C_data, global
.hidden gap_04_00024F7C_data
	.4byte 0x00000000
.endobj gap_04_00024F7C_data

# .data:0x18 | 0x24F80 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x24F88 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x24F8C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x24F90 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x24F98 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x24F9C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x24FA0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x24FA4 | size: 0x4
.obj gap_04_00024FA4_data, global
.hidden gap_04_00024FA4_data
	.4byte 0x00000000
.endobj gap_04_00024FA4_data

# .data:0x40 | 0x24FA8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x24FB0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x24FB4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x24FB8 | size: 0xC4
.obj unit_hammer_bros_26_data_24FB8, global
	.4byte 0x00000038
	.4byte str_btl_un_hammer_bros_tou2_0000dc50
	.4byte 0x00070000
	.4byte 0x01011A00
	.4byte 0x02460232
	.4byte 0x270F0024
	.4byte 0x002C0003
	.4byte 0x002C0000
	.4byte 0x00000000
	.4byte 0x41B00000
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
	.4byte 0x41700000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x41E00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41B00000
	.4byte 0x00000000
	.4byte 0x42100000
	.4byte 0x42300000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_HUMMER_DAMAG_tou2_0000dc64
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000dc7c
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000dc94
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000dca8
	.4byte 0x00000000
	.4byte regist
	.4byte 0x06000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_hammer_bros_26_data_24FB8

# .data:0x114 | 0x2507C | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x119 | 0x25081 | size: 0x3
.obj gap_04_00025081_data, global
.hidden gap_04_00025081_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00025081_data

# .data:0x11C | 0x25084 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x25089 | size: 0x3
.obj gap_04_00025089_data, global
.hidden gap_04_00025089_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00025089_data

# .data:0x124 | 0x2508C | size: 0x16
.obj regist, local
	.ascii "PPFdPddFdPdPd_PF<dPdd_"
.endobj regist

# .data:0x13A | 0x250A2 | size: 0x2
.obj gap_04_000250A2_data, global
.hidden gap_04_000250A2_data
	.2byte 0x0000
.endobj gap_04_000250A2_data

# .data:0x13C | 0x250A4 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_BRO_N_1_tou2_0000dcc4
	.4byte 0x00000002
	.4byte str_BRO_Y_1_tou2_0000dccc
	.4byte 0x00000009
	.4byte str_BRO_Y_1_tou2_0000dccc
	.4byte 0x00000005
	.4byte str_BRO_K_1_tou2_0000dcd4
	.4byte 0x00000004
	.4byte str_BRO_X_1_tou2_0000dcdc
	.4byte 0x00000003
	.4byte str_BRO_X_1_tou2_0000dcdc
	.4byte 0x0000001B
	.4byte str_BRO_D_1_tou2_0000dce4
	.4byte 0x0000001C
	.4byte str_BRO_S_1_tou2_0000dcec
	.4byte 0x0000001D
	.4byte str_BRO_Q_1_tou2_0000dcf4
	.4byte 0x0000001E
	.4byte str_BRO_Q_1_tou2_0000dcf4
	.4byte 0x0000001F
	.4byte str_BRO_S_1_tou2_0000dcec
	.4byte 0x00000027
	.4byte str_BRO_D_1_tou2_0000dce4
	.4byte 0x0000002A
	.4byte str_BRO_R_1_tou2_0000dcfc
	.4byte 0x00000028
	.4byte str_BRO_W_1_tou2_0000dd04
	.4byte 0x00000038
	.4byte str_BRO_X_1_tou2_0000dcdc
	.4byte 0x00000039
	.4byte str_BRO_X_1_tou2_0000dcdc
	.4byte 0x00000041
	.4byte str_BRO_T_1_tou2_0000dd0c
	.4byte 0x00000045
	.4byte str_BRO_S_1_tou2_0000dcec
.endobj pose_table

# .data:0x1CC | 0x25134 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1D4 | 0x2513C | size: 0x1C8
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_hammer_bros_tou2_0000dc50
	.4byte str_c_burosu_h_tou2_0000dd14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42340000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_hammer_bros_tou2_0000dc50
	.4byte str_c_burosu_h_tou2_0000dd14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000003
	.4byte str_btl_un_hammer_bros_tou2_0000dc50
	.4byte str_c_burosu_h_tou2_0000dd14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000004
	.4byte str_btl_un_hammer_bros_tou2_0000dc50
	.4byte str_c_burosu_h_tou2_0000dd14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000005
	.4byte str_btl_un_hammer_bros_tou2_0000dc50
	.4byte str_c_burosu_h_tou2_0000dd14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000006
	.4byte str_btl_un_hammer_bros_tou2_0000dc50
	.4byte str_c_burosu_h_tou2_0000dd14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x39C | 0x25304 | size: 0xC0
.obj weapon_hammer_bros_attack, local
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
	.4byte 0x20001000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80002000
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
.endobj weapon_hammer_bros_attack

# .data:0x45C | 0x253C4 | size: 0xC0
.obj weapon_hammer_bros_renzoku_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000002
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
	.4byte 0x20001000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80002000
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
.endobj weapon_hammer_bros_renzoku_attack

# .data:0x51C | 0x25484 | size: 0xC0
.obj weapon_hammer_bros_nagemakuri_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000002
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
	.4byte 0x20001000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80000000
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
.endobj weapon_hammer_bros_nagemakuri_attack

# .data:0x5DC | 0x25544 | size: 0x54
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
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x630 | 0x25598 | size: 0x28
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

# .data:0x658 | 0x255C0 | size: 0x180
.obj attack_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000E
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte normal_attack_event
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
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0001005E
	.4byte renzoku_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte nagemakuri_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte normal_attack_event
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

# .data:0x7D8 | 0x25740 | size: 0x68
.obj start_avoid, local
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj start_avoid

# .data:0x840 | 0x257A8 | size: 0x3F8
.obj hammer_bros_attack_common_event1, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HUMMER_ATTAC_tou2_0000dd20
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte str_BRO_A_1B_tou2_0000dd38
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF79
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x02000000
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HUMMER_ATTAC_tou2_0000dd44
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte start_avoid
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte start_avoid
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0000003C
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_JumpPartsContinue
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HUMMER_ATTAC_tou2_0000dd5c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x00000064
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7CE6
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HUMMER_ATTAC_tou2_0000dd5c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x00000096
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7C19
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x02000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hammer_bros_attack_common_event1

# .data:0xC38 | 0x25BA0 | size: 0x1C0
.obj hammer_bros_attack_common_event2, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HUMMER_ATTAC_tou2_0000dd20
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte str_BRO_A_1B_tou2_0000dd38
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF79
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x02000000
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HUMMER_ATTAC_tou2_0000dd44
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0000003C
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hammer_bros_attack_common_event2

# .data:0xDF8 | 0x25D60 | size: 0xEC
.obj hammer_bros_attack_common_event3, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte str_BRO_A_1B_tou2_0000dd38
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0xF24A8280
	.4byte 0xF24A7C80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x02000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hammer_bros_attack_common_event3

# .data:0xEE4 | 0x25E4C | size: 0x224
.obj damage_check_event_sub, local
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
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
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
	.4byte 0x0001005E
	.4byte hammer_bros_attack_common_event1
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_hammer_bros_renzoku_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0xFE363C86
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte hammer_bros_attack_common_event2
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte hammer_bros_attack_common_event3
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_check_event_sub

# .data:0x1108 | 0x26070 | size: 0x1C0
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
	.4byte weapon_hammer_bros_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_hammer_bros_attack
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_hammer_bros_attack
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
	.4byte weapon_hammer_bros_attack
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_BRO_A_1A_tou2_0000dd74
	.4byte 0x00010009
	.4byte 0x0000001B
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_hammer_bros_attack
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x12C8 | 0x26230 | size: 0x1BC
.obj renzoku_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_hammer_bros_renzoku_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_hammer_bros_renzoku_attack
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
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_hammer_bros_renzoku_attack
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
	.4byte weapon_hammer_bros_renzoku_attack
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
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C8E
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_BRO_A_1A_tou2_0000dd74
	.4byte 0x00010009
	.4byte 0x0000001B
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000003
	.4byte 0x0001005C
	.4byte renzoku_attack_event_sub_last
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte renzoku_attack_event_sub_no_last
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event

# .data:0x1484 | 0x263EC | size: 0x34
.obj renzoku_attack_event_sub_no_last, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_hammer_bros_renzoku_attack
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event_sub_no_last

# .data:0x14B8 | 0x26420 | size: 0x9C
.obj renzoku_attack_event_sub_last, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte hammer_bros_attack_common_event2
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_hammer_bros_renzoku_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_hammer_bros_renzoku_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0001005E
	.4byte hammer_bros_attack_common_event3
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_hammer_bros_renzoku_attack
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event_sub_last

# .data:0x1554 | 0x264BC | size: 0x2E8
.obj nagemakuri_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_hammer_bros_nagemakuri_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_hammer_bros_nagemakuri_attack
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
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_hammer_bros_nagemakuri_attack
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_hammer_bros_nagemakuri_attack
	.4byte 0x000B005B
	.4byte hammer_bros_nagemakuri_set_target
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C86
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C88
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0xFE363C87
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C8C
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0xFE363C84
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_BRO_A_1A_tou2_0000dd74
	.4byte 0x00010009
	.4byte 0x0000001B
	.4byte 0x0001005C
	.4byte nagemakuri_attack_event_sub
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nagemakuri_attack_event

# .data:0x183C | 0x267A4 | size: 0xC4
.obj nagemakuri_attack_event_sub, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0xFE363C84
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C8D
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte nagemakuri_attack_event_sub_last
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0xFE363C86
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte nagemakuri_attack_event_sub_no_last
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nagemakuri_attack_event_sub

# .data:0x1900 | 0x26868 | size: 0x34
.obj nagemakuri_attack_event_sub_no_last, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_hammer_bros_nagemakuri_attack
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nagemakuri_attack_event_sub_no_last

# .data:0x1934 | 0x2689C | size: 0x130
.obj nagemakuri_attack_event_sub_last, local
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0xFE363C86
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte hammer_bros_attack_common_event2
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_hammer_bros_nagemakuri_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_hammer_bros_nagemakuri_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0001005E
	.4byte hammer_bros_attack_common_event3
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_hammer_bros_nagemakuri_attack
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nagemakuri_attack_event_sub_last

# .data:0x1A64 | 0x269CC | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1A7C | 0x269E4 | size: 0x4
.obj gap_04_000269E4_data, global
.hidden gap_04_000269E4_data
	.4byte 0x00000000
.endobj gap_04_000269E4_data
