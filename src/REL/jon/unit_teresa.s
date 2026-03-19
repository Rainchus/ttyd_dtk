.include "macros.inc"
.file "unit_teresa.o"

# 0x000015D0..0x00001828 | size: 0x258
.text
.balign 4

# .text:0x0 | 0x15D0 | size: 0x9C
.fn teresa_check_teresa, local
/* 000015D0 00001694  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000015D4 00001698  7C 08 02 A6 */	mflr r0
/* 000015D8 0000169C  90 01 00 24 */	stw r0, 0x24(r1)
/* 000015DC 000016A0  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000015E0 000016A4  7C 7D 1B 78 */	mr r29, r3
/* 000015E4 000016A8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000015E8 000016AC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000015EC 000016B0  4B FF F4 85 */	bl evtGetValue
/* 000015F0 000016B4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000015F4 000016B8  3B C0 00 00 */	li r30, 0x0
/* 000015F8 000016BC  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000015FC 000016C0  7C 64 1B 78 */	mr r4, r3
/* 00001600 000016C4  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00001604 000016C8  4B FF F4 6D */	bl BattleGetUnitPtr
/* 00001608 000016CC  28 03 00 00 */	cmplwi r3, 0x0
/* 0000160C 000016D0  40 82 00 1C */	bne .L_00001628
/* 00001610 000016D4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001614 000016D8  7F A3 EB 78 */	mr r3, r29
/* 00001618 000016DC  38 A0 00 00 */	li r5, 0x0
/* 0000161C 000016E0  4B FF F4 55 */	bl evtSetValue
/* 00001620 000016E4  38 60 00 02 */	li r3, 0x2
/* 00001624 000016E8  48 00 00 34 */	b .L_00001658
.L_00001628:
/* 00001628 000016EC  80 03 00 08 */	lwz r0, 0x8(r3)
/* 0000162C 000016F0  2C 00 00 4B */	cmpwi r0, 0x4b
/* 00001630 000016F4  40 82 00 08 */	bne .L_00001638
/* 00001634 000016F8  3B C0 00 01 */	li r30, 0x1
.L_00001638:
/* 00001638 000016FC  2C 00 00 6A */	cmpwi r0, 0x6a
/* 0000163C 00001700  40 82 00 08 */	bne .L_00001644
/* 00001640 00001704  3B C0 00 01 */	li r30, 0x1
.L_00001644:
/* 00001644 00001708  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001648 0000170C  7F A3 EB 78 */	mr r3, r29
/* 0000164C 00001710  7F C5 F3 78 */	mr r5, r30
/* 00001650 00001714  4B FF F4 21 */	bl evtSetValue
/* 00001654 00001718  38 60 00 02 */	li r3, 0x2
.L_00001658:
/* 00001658 0000171C  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 0000165C 00001720  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001660 00001724  7C 08 03 A6 */	mtlr r0
/* 00001664 00001728  38 21 00 20 */	addi r1, r1, 0x20
/* 00001668 0000172C  4E 80 00 20 */	blr
.endfn teresa_check_teresa

# .text:0x9C | 0x166C | size: 0xC0
.fn teresa_check_move, local
/* 0000166C 00001730  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001670 00001734  7C 08 02 A6 */	mflr r0
/* 00001674 00001738  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001678 0000173C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 0000167C 00001740  7C 7B 1B 78 */	mr r27, r3
/* 00001680 00001744  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 00001684 00001748  3B A0 00 00 */	li r29, 0x0
/* 00001688 0000174C  3B E3 00 00 */	addi r31, r3, _battleWorkPointer@l
/* 0000168C 00001750  3B 80 00 00 */	li r28, 0x0
/* 00001690 00001754  83 DB 00 18 */	lwz r30, 0x18(r27)
.L_00001694:
/* 00001694 00001758  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 00001698 0000175C  7F 84 E3 78 */	mr r4, r28
/* 0000169C 00001760  4B FF F3 D5 */	bl BattleGetUnitPtr
/* 000016A0 00001764  28 03 00 00 */	cmplwi r3, 0x0
/* 000016A4 00001768  41 82 00 38 */	beq .L_000016DC
/* 000016A8 0000176C  80 83 00 08 */	lwz r4, 0x8(r3)
/* 000016AC 00001770  2C 04 00 4B */	cmpwi r4, 0x4b
/* 000016B0 00001774  40 82 00 14 */	bne .L_000016C4
/* 000016B4 00001778  80 03 02 18 */	lwz r0, 0x218(r3)
/* 000016B8 0000177C  2C 00 00 00 */	cmpwi r0, 0x0
/* 000016BC 00001780  40 82 00 08 */	bne .L_000016C4
/* 000016C0 00001784  3B BD 00 01 */	addi r29, r29, 0x1
.L_000016C4:
/* 000016C4 00001788  2C 04 00 6A */	cmpwi r4, 0x6a
/* 000016C8 0000178C  40 82 00 14 */	bne .L_000016DC
/* 000016CC 00001790  80 03 02 18 */	lwz r0, 0x218(r3)
/* 000016D0 00001794  2C 00 00 00 */	cmpwi r0, 0x0
/* 000016D4 00001798  40 82 00 08 */	bne .L_000016DC
/* 000016D8 0000179C  3B BD 00 01 */	addi r29, r29, 0x1
.L_000016DC:
/* 000016DC 000017A0  3B 9C 00 01 */	addi r28, r28, 0x1
/* 000016E0 000017A4  2C 1C 00 40 */	cmpwi r28, 0x40
/* 000016E4 000017A8  41 80 FF B0 */	blt .L_00001694
/* 000016E8 000017AC  2C 1D 00 01 */	cmpwi r29, 0x1
/* 000016EC 000017B0  41 80 00 18 */	blt .L_00001704
/* 000016F0 000017B4  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000016F4 000017B8  7F 63 DB 78 */	mr r3, r27
/* 000016F8 000017BC  38 A0 00 01 */	li r5, 0x1
/* 000016FC 000017C0  4B FF F3 75 */	bl evtSetValue
/* 00001700 000017C4  48 00 00 14 */	b .L_00001714
.L_00001704:
/* 00001704 000017C8  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00001708 000017CC  7F 63 DB 78 */	mr r3, r27
/* 0000170C 000017D0  38 A0 00 00 */	li r5, 0x0
/* 00001710 000017D4  4B FF F3 61 */	bl evtSetValue
.L_00001714:
/* 00001714 000017D8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 00001718 000017DC  38 60 00 02 */	li r3, 0x2
/* 0000171C 000017E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001720 000017E4  7C 08 03 A6 */	mtlr r0
/* 00001724 000017E8  38 21 00 20 */	addi r1, r1, 0x20
/* 00001728 000017EC  4E 80 00 20 */	blr
.endfn teresa_check_move

# .text:0x15C | 0x172C | size: 0xFC
.fn teresa_check_trans, local
/* 0000172C 000017F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00001730 000017F4  7C 08 02 A6 */	mflr r0
/* 00001734 000017F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 00001738 000017FC  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 0000173C 00001800  7C 79 1B 78 */	mr r25, r3
/* 00001740 00001804  3B 80 00 00 */	li r28, 0x0
/* 00001744 00001808  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00001748 0000180C  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 0000174C 00001810  4B FF F3 25 */	bl evtGetValue
/* 00001750 00001814  7C 60 1B 78 */	mr r0, r3
/* 00001754 00001818  7F 23 CB 78 */	mr r3, r25
/* 00001758 0000181C  7C 04 03 78 */	mr r4, r0
/* 0000175C 00001820  4B FF F3 15 */	bl BattleTransID
/* 00001760 00001824  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00001764 00001828  7C 7E 1B 78 */	mr r30, r3
/* 00001768 0000182C  3B E4 00 00 */	addi r31, r4, _battleWorkPointer@l
/* 0000176C 00001830  3B 60 00 00 */	li r27, 0x0
.L_00001770:
/* 00001770 00001834  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 00001774 00001838  7F 64 DB 78 */	mr r4, r27
/* 00001778 0000183C  4B FF F2 F9 */	bl BattleGetUnitPtr
/* 0000177C 00001840  7C 7A 1B 79 */	mr. r26, r3
/* 00001780 00001844  41 82 00 58 */	beq .L_000017D8
/* 00001784 00001848  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 00001788 0000184C  2C 00 00 4B */	cmpwi r0, 0x4b
/* 0000178C 00001850  40 82 00 20 */	bne .L_000017AC
/* 00001790 00001854  38 80 00 12 */	li r4, 0x12
/* 00001794 00001858  4B FF F2 DD */	bl BtlUnit_CheckStatus
/* 00001798 0000185C  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000179C 00001860  40 82 00 10 */	bne .L_000017AC
/* 000017A0 00001864  7C 1B F0 00 */	cmpw r27, r30
/* 000017A4 00001868  41 82 00 08 */	beq .L_000017AC
/* 000017A8 0000186C  3B 9C 00 01 */	addi r28, r28, 0x1
.L_000017AC:
/* 000017AC 00001870  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 000017B0 00001874  2C 00 00 6A */	cmpwi r0, 0x6a
/* 000017B4 00001878  40 82 00 24 */	bne .L_000017D8
/* 000017B8 0000187C  7F 43 D3 78 */	mr r3, r26
/* 000017BC 00001880  38 80 00 12 */	li r4, 0x12
/* 000017C0 00001884  4B FF F2 B1 */	bl BtlUnit_CheckStatus
/* 000017C4 00001888  2C 03 00 00 */	cmpwi r3, 0x0
/* 000017C8 0000188C  40 82 00 10 */	bne .L_000017D8
/* 000017CC 00001890  7C 1B F0 00 */	cmpw r27, r30
/* 000017D0 00001894  41 82 00 08 */	beq .L_000017D8
/* 000017D4 00001898  3B 9C 00 01 */	addi r28, r28, 0x1
.L_000017D8:
/* 000017D8 0000189C  3B 7B 00 01 */	addi r27, r27, 0x1
/* 000017DC 000018A0  2C 1B 00 40 */	cmpwi r27, 0x40
/* 000017E0 000018A4  41 80 FF 90 */	blt .L_00001770
/* 000017E4 000018A8  2C 1C 00 01 */	cmpwi r28, 0x1
/* 000017E8 000018AC  41 80 00 18 */	blt .L_00001800
/* 000017EC 000018B0  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 000017F0 000018B4  7F 23 CB 78 */	mr r3, r25
/* 000017F4 000018B8  38 A0 00 01 */	li r5, 0x1
/* 000017F8 000018BC  4B FF F2 79 */	bl evtSetValue
/* 000017FC 000018C0  48 00 00 14 */	b .L_00001810
.L_00001800:
/* 00001800 000018C4  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 00001804 000018C8  7F 23 CB 78 */	mr r3, r25
/* 00001808 000018CC  38 A0 00 00 */	li r5, 0x0
/* 0000180C 000018D0  4B FF F2 65 */	bl evtSetValue
.L_00001810:
/* 00001810 000018D4  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 00001814 000018D8  38 60 00 02 */	li r3, 0x2
/* 00001818 000018DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000181C 000018E0  7C 08 03 A6 */	mtlr r0
/* 00001820 000018E4  38 21 00 30 */	addi r1, r1, 0x30
/* 00001824 000018E8  4E 80 00 20 */	blr
.endfn teresa_check_trans

# 0x00002B80..0x00002CA8 | size: 0x128
.rodata
.balign 8

# .rodata:0x0 | 0x2B80 | size: 0xE
.obj str_btl_un_teresa_jon_00009bb0, local
	.string "btl_un_teresa"
.endobj str_btl_un_teresa_jon_00009bb0

# .rodata:0xE | 0x2B8E | size: 0x2
.obj gap_03_00002B8E_rodata, global
.hidden gap_03_00002B8E_rodata
	.2byte 0x0000
.endobj gap_03_00002B8E_rodata

# .rodata:0x10 | 0x2B90 | size: 0x18
.obj str_SFX_ENM_TELESA_DAMAG_jon_00009bc0, local
	.string "SFX_ENM_TELESA_DAMAGED1"
.endobj str_SFX_ENM_TELESA_DAMAG_jon_00009bc0

# .rodata:0x28 | 0x2BA8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_00009bd8, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_00009bd8

# .rodata:0x3D | 0x2BBD | size: 0x3
.obj gap_03_00002BBD_rodata, global
.hidden gap_03_00002BBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002BBD_rodata

# .rodata:0x40 | 0x2BC0 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_00009bf0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_00009bf0

# .rodata:0x54 | 0x2BD4 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_00009c04, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_00009c04

# .rodata:0x6D | 0x2BED | size: 0x3
.obj gap_03_00002BED_rodata, global
.hidden gap_03_00002BED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002BED_rodata

# .rodata:0x70 | 0x2BF0 | size: 0x9
.obj str_c_teresa_jon_00009c20, local
	.string "c_teresa"
.endobj str_c_teresa_jon_00009c20

# .rodata:0x79 | 0x2BF9 | size: 0x3
.obj gap_03_00002BF9_rodata, global
.hidden gap_03_00002BF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002BF9_rodata

# .rodata:0x7C | 0x2BFC | size: 0x4
.obj str_N_1_jon_00009c2c, local
	.string "N_1"
.endobj str_N_1_jon_00009c2c

# .rodata:0x80 | 0x2C00 | size: 0x4
.obj str_Y_1_jon_00009c30, local
	.string "Y_1"
.endobj str_Y_1_jon_00009c30

# .rodata:0x84 | 0x2C04 | size: 0x4
.obj str_K_1_jon_00009c34, local
	.string "K_1"
.endobj str_K_1_jon_00009c34

# .rodata:0x88 | 0x2C08 | size: 0x4
.obj str_X_1_jon_00009c38, local
	.string "X_1"
.endobj str_X_1_jon_00009c38

# .rodata:0x8C | 0x2C0C | size: 0x4
.obj str_S_1_jon_00009c3c, local
	.string "S_1"
.endobj str_S_1_jon_00009c3c

# .rodata:0x90 | 0x2C10 | size: 0x4
.obj str_Q_1_jon_00009c40, local
	.string "Q_1"
.endobj str_Q_1_jon_00009c40

# .rodata:0x94 | 0x2C14 | size: 0x4
.obj str_A_2_jon_00009c44, local
	.string "A_2"
.endobj str_A_2_jon_00009c44

# .rodata:0x98 | 0x2C18 | size: 0x4
.obj str_D_1_jon_00009c48, local
	.string "D_1"
.endobj str_D_1_jon_00009c48

# .rodata:0x9C | 0x2C1C | size: 0x4
.obj str_W_1_jon_00009c4c, local
	.string "W_1"
.endobj str_W_1_jon_00009c4c

# .rodata:0xA0 | 0x2C20 | size: 0x4
.obj str_R_1_jon_00009c50, local
	.string "R_1"
.endobj str_R_1_jon_00009c50

# .rodata:0xA4 | 0x2C24 | size: 0x4
.obj str_T_1_jon_00009c54, local
	.string "T_1"
.endobj str_T_1_jon_00009c54

# .rodata:0xA8 | 0x2C28 | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE3_jon_00009c58, local
	.string "SFX_ENM_TELESA_MOVE3"
.endobj str_SFX_ENM_TELESA_MOVE3_jon_00009c58

# .rodata:0xBD | 0x2C3D | size: 0x3
.obj gap_03_00002C3D_rodata, global
.hidden gap_03_00002C3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002C3D_rodata

# .rodata:0xC0 | 0x2C40 | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE4_jon_00009c70, local
	.string "SFX_ENM_TELESA_MOVE4"
.endobj str_SFX_ENM_TELESA_MOVE4_jon_00009c70

# .rodata:0xD5 | 0x2C55 | size: 0x3
.obj gap_03_00002C55_rodata, global
.hidden gap_03_00002C55_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002C55_rodata

# .rodata:0xD8 | 0x2C58 | size: 0x4
.obj str_A_1_jon_00009c88, local
	.string "A_1"
.endobj str_A_1_jon_00009c88

# .rodata:0xDC | 0x2C5C | size: 0x17
.obj str_SFX_ENM_TELESA_ATTAC_jon_00009c8c, local
	.string "SFX_ENM_TELESA_ATTACK1"
.endobj str_SFX_ENM_TELESA_ATTAC_jon_00009c8c

# .rodata:0xF3 | 0x2C73 | size: 0x1
.obj gap_03_00002C73_rodata, global
.hidden gap_03_00002C73_rodata
	.byte 0x00
.endobj gap_03_00002C73_rodata

# .rodata:0xF4 | 0x2C74 | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE2_jon_00009ca4, local
	.string "SFX_ENM_TELESA_MOVE2"
.endobj str_SFX_ENM_TELESA_MOVE2_jon_00009ca4

# .rodata:0x109 | 0x2C89 | size: 0x3
.obj gap_03_00002C89_rodata, global
.hidden gap_03_00002C89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002C89_rodata

# .rodata:0x10C | 0x2C8C | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE1_jon_00009cbc, local
	.string "SFX_ENM_TELESA_MOVE1"
.endobj str_SFX_ENM_TELESA_MOVE1_jon_00009cbc

# .rodata:0x121 | 0x2CA1 | size: 0x7
.obj gap_03_00002CA1_rodata, global
.hidden gap_03_00002CA1_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002CA1_rodata

# 0x00026050..0x000278D0 | size: 0x1880
.data
.balign 8

# .data:0x0 | 0x26050 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x26058 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2605C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x26060 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x26064 | size: 0x4
.obj gap_04_00026064_data, global
.hidden gap_04_00026064_data
	.4byte 0x00000000
.endobj gap_04_00026064_data

# .data:0x18 | 0x26068 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x26070 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x26074 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x26078 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x26080 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x26084 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x26088 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2608C | size: 0x4
.obj gap_04_0002608C_data, global
.hidden gap_04_0002608C_data
	.4byte 0x00000000
.endobj gap_04_0002608C_data

# .data:0x40 | 0x26090 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x26098 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2609C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x260A0 | size: 0xC4
.obj unit_teresa_14_data_260A0, global
	.4byte 0x0000004B
	.4byte str_btl_un_teresa_jon_00009bb0
	.4byte 0x00070000
	.4byte 0x01011100
	.4byte 0x02460132
	.4byte 0x270F0022
	.4byte 0x00200000
	.4byte 0x00200000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x00000000
	.4byte 0x0000FFFD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x41A66666
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x00000000
	.4byte 0x42080000
	.4byte 0x42000000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_TELESA_DAMAG_jon_00009bc0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_00009bd8
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_00009bf0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_00009c04
	.4byte 0x00000004
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_teresa_14_data_260A0

# .data:0x114 | 0x26164 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x26169 | size: 0x3
.obj gap_04_00026169_data, global
.hidden gap_04_00026169_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00026169_data

# .data:0x11C | 0x2616C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x26171 | size: 0x3
.obj gap_04_00026171_data, global
.hidden gap_04_00026171_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00026171_data

# .data:0x124 | 0x26174 | size: 0x16
.obj regist, local
	.4byte 0x32326900
	.4byte 0x32646432
	.4byte 0x645A645A
	.4byte 0x645F3C32
	.4byte 0x5A640A64
	.2byte 0x640A
.endobj regist

# .data:0x13A | 0x2618A | size: 0x2
.obj gap_04_0002618A_data, global
.hidden gap_04_0002618A_data
	.2byte 0x0000
.endobj gap_04_0002618A_data

# .data:0x13C | 0x2618C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_teresa_jon_00009bb0
	.4byte str_c_teresa_jon_00009c20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x188 | 0x261D8 | size: 0xC0
.obj weapon_teresa_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000003
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
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80002004
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
.endobj weapon_teresa_attack

# .data:0x248 | 0x26298 | size: 0xC0
.obj weapon_teresa_trans_myself, local
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
	.4byte 0x01101260
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_teresa_trans_myself

# .data:0x308 | 0x26358 | size: 0xC0
.obj weapon_teresa_trans, local
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
	.4byte 0x01101160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
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
	.4byte 0x64020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_teresa_trans

# .data:0x3C8 | 0x26418 | size: 0xC0
.obj weapon_teresa_move, local
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
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x000007FF
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
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_teresa_move

# .data:0x488 | 0x264D8 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_jon_00009c2c
	.4byte 0x00000002
	.4byte str_Y_1_jon_00009c30
	.4byte 0x00000009
	.4byte str_Y_1_jon_00009c30
	.4byte 0x00000005
	.4byte str_K_1_jon_00009c34
	.4byte 0x00000004
	.4byte str_X_1_jon_00009c38
	.4byte 0x00000003
	.4byte str_X_1_jon_00009c38
	.4byte 0x0000001C
	.4byte str_S_1_jon_00009c3c
	.4byte 0x0000001D
	.4byte str_Q_1_jon_00009c40
	.4byte 0x0000001E
	.4byte str_Q_1_jon_00009c40
	.4byte 0x0000001F
	.4byte str_A_2_jon_00009c44
	.4byte 0x00000027
	.4byte str_D_1_jon_00009c48
	.4byte 0x00000028
	.4byte str_W_1_jon_00009c4c
	.4byte 0x0000002A
	.4byte str_R_1_jon_00009c50
	.4byte 0x00000038
	.4byte str_X_1_jon_00009c38
	.4byte 0x00000039
	.4byte str_X_1_jon_00009c38
	.4byte 0x00000041
	.4byte str_T_1_jon_00009c54
	.4byte 0x00000045
	.4byte str_S_1_jon_00009c3c
.endobj pose_table

# .data:0x510 | 0x26560 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x518 | 0x26568 | size: 0xBC
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x5D4 | 0x26624 | size: 0x28
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

# .data:0x5FC | 0x2664C | size: 0x264
.obj attack_event, local
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
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000012
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte teresa_check_trans
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte teresa_check_move
	.4byte 0xFE363C8F
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
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
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte trans_myself_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte trans_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte move_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x860 | 0x268B0 | size: 0x588
.obj normal_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
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
	.4byte weapon_teresa_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_teresa_attack
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
	.4byte weapon_teresa_attack
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
	.4byte weapon_teresa_attack
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
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TELESA_MOVE3_jon_00009c58
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000100
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x00000010
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TELESA_MOVE4_jon_00009c70
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1_jon_00009c88
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFFFFFFFF
	.4byte 0x00010005
	.4byte 0x00000008
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0xFFFFFFFB
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000009
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TELESA_ATTAC_jon_00009c8c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2_jon_00009c44
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_teresa_attack
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
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_X_1_jon_00009c38
	.4byte 0x00010009
	.4byte 0x0000003C
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
	.4byte weapon_teresa_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_teresa_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010009
	.4byte 0x0000001E
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
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0xDE8 | 0x26E38 | size: 0x310
.obj trans_myself_event, local
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000012
	.4byte 0xFE363C88
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_teresa_trans_myself
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_teresa_trans_myself
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
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
	.4byte 0x0000001E
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TELESA_MOVE2_jon_00009ca4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020018
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000100
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x00000008
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1_jon_00009c88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jon_00009c3c
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x0000000C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jon_00009c3c
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_teresa_trans_myself
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_teresa_trans_myself
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000001
.endobj trans_myself_event

# .data:0x10F8 | 0x27148 | size: 0x484
.obj trans_event, local
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_teresa_trans
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_teresa_trans
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte teresa_check_teresa
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x00000012
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_teresa_trans
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_teresa_trans
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
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TELESA_MOVE3_jon_00009c58
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000100
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x00000010
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0xFFFFFFFB
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TELESA_MOVE4_jon_00009c70
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFFFFFFFF
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x00000010
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_teresa_trans_myself
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_teresa_trans_myself
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFB
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jon_00009c3c
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj trans_event

# .data:0x157C | 0x275CC | size: 0x150
.obj move_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_teresa_move
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_teresa_move
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
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000050
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte teresa_check_teresa
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C86
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte move_event_sub
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jon_00009c3c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_event

# .data:0x16CC | 0x2771C | size: 0x19C
.obj move_event_sub, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000C
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x0000003C
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_T_1_jon_00009c54
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TELESA_MOVE1_jon_00009cbc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x0000000A
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_event_sub

# .data:0x1868 | 0x278B8 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
