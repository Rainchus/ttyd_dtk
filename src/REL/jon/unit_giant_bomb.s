.include "macros.inc"
.file "unit_giant_bomb.o"

# 0x00005054..0x000051B4 | size: 0x160
.text
.balign 4

# .text:0x0 | 0x5054 | size: 0xE0
.fn _fire_point_callback, local
/* 00005054 00005118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00005058 0000511C  7C 08 02 A6 */	mflr r0
/* 0000505C 00005120  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005060 00005124  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00005064 00005128  83 E3 04 EC */	lwz r31, 0x4ec(r3)
/* 00005068 0000512C  80 1F 02 18 */	lwz r0, 0x218(r31)
/* 0000506C 00005130  2C 00 00 00 */	cmpwi r0, 0x0
/* 00005070 00005134  41 82 00 B0 */	beq .L_00005120
/* 00005074 00005138  80 1F 02 1C */	lwz r0, 0x21c(r31)
/* 00005078 0000513C  80 63 01 C0 */	lwz r3, 0x1c0(r3)
/* 0000507C 00005140  2C 00 00 02 */	cmpwi r0, 0x2
/* 00005080 00005144  41 82 00 3C */	beq .L_000050BC
/* 00005084 00005148  40 80 00 48 */	bge .L_000050CC
/* 00005088 0000514C  2C 00 00 00 */	cmpwi r0, 0x0
/* 0000508C 00005150  41 82 00 10 */	beq .L_0000509C
/* 00005090 00005154  40 80 00 1C */	bge .L_000050AC
/* 00005094 00005158  48 00 00 38 */	b .L_000050CC
/* 00005098 0000515C  48 00 00 34 */	b .L_000050CC
.L_0000509C:
/* 0000509C 00005160  3C A0 00 00 */	lis r5, str_locator11_jon_0000d700@ha
/* 000050A0 00005164  38 05 00 00 */	addi r0, r5, str_locator11_jon_0000d700@l
/* 000050A4 00005168  7C 1E 03 78 */	mr r30, r0
/* 000050A8 0000516C  48 00 00 30 */	b .L_000050D8
.L_000050AC:
/* 000050AC 00005170  3C A0 00 00 */	lis r5, str_locator10_jon_0000d70c@ha
/* 000050B0 00005174  38 05 00 00 */	addi r0, r5, str_locator10_jon_0000d70c@l
/* 000050B4 00005178  7C 1E 03 78 */	mr r30, r0
/* 000050B8 0000517C  48 00 00 20 */	b .L_000050D8
.L_000050BC:
/* 000050BC 00005180  3C A0 00 00 */	lis r5, str_locator9_jon_0000d718@ha
/* 000050C0 00005184  38 05 00 00 */	addi r0, r5, str_locator9_jon_0000d718@l
/* 000050C4 00005188  7C 1E 03 78 */	mr r30, r0
/* 000050C8 0000518C  48 00 00 10 */	b .L_000050D8
.L_000050CC:
/* 000050CC 00005190  3C A0 00 00 */	lis r5, str_locator8_jon_0000d724@ha
/* 000050D0 00005194  38 05 00 00 */	addi r0, r5, str_locator8_jon_0000d724@l
/* 000050D4 00005198  7C 1E 03 78 */	mr r30, r0
.L_000050D8:
/* 000050D8 0000519C  4B FF B9 99 */	bl animPoseGetGroupName
/* 000050DC 000051A0  7C 64 1B 78 */	mr r4, r3
/* 000050E0 000051A4  7F C3 F3 78 */	mr r3, r30
/* 000050E4 000051A8  4B FF B9 8D */	bl strcmp
/* 000050E8 000051AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 000050EC 000051B0  40 82 00 34 */	bne .L_00005120
/* 000050F0 000051B4  7F E3 FB 78 */	mr r3, r31
/* 000050F4 000051B8  38 80 00 02 */	li r4, 0x2
/* 000050F8 000051BC  4B FF B9 79 */	bl BtlUnit_GetPartsPtr
/* 000050FC 000051C0  83 C3 01 C0 */	lwz r30, 0x1c0(r3)
/* 00005100 000051C4  3C 60 00 00 */	lis r3, str_pPlaneShape3_jon_0000d730@ha
/* 00005104 000051C8  38 83 00 00 */	addi r4, r3, str_pPlaneShape3_jon_0000d730@l
/* 00005108 000051CC  7F C3 F3 78 */	mr r3, r30
/* 0000510C 000051D0  4B FF B9 65 */	bl animPoseGetShapeIdx
/* 00005110 000051D4  7C 60 1B 78 */	mr r0, r3
/* 00005114 000051D8  7F C3 F3 78 */	mr r3, r30
/* 00005118 000051DC  7C 04 03 78 */	mr r4, r0
/* 0000511C 000051E0  4B FF B9 55 */	bl animPoseDrawShape
.L_00005120:
/* 00005120 000051E4  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00005124 000051E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00005128 000051EC  7C 08 03 A6 */	mtlr r0
/* 0000512C 000051F0  38 21 00 10 */	addi r1, r1, 0x10
/* 00005130 000051F4  4E 80 00 20 */	blr
.endfn _fire_point_callback

# .text:0xE0 | 0x5134 | size: 0x80
.fn _set_draw_callback, local
/* 00005134 000051F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00005138 000051FC  7C 08 02 A6 */	mflr r0
/* 0000513C 00005200  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 00005140 00005204  38 80 FF FE */	li r4, -0x2
/* 00005144 00005208  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005148 0000520C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 0000514C 00005210  83 E5 00 00 */	lwz r31, _battleWorkPointer@l(r5)
/* 00005150 00005214  4B FF B9 21 */	bl BattleTransID
/* 00005154 00005218  7C 60 1B 78 */	mr r0, r3
/* 00005158 0000521C  7F E3 FB 78 */	mr r3, r31
/* 0000515C 00005220  7C 04 03 78 */	mr r4, r0
/* 00005160 00005224  4B FF B9 11 */	bl BattleGetUnitPtr
/* 00005164 00005228  38 80 00 01 */	li r4, 0x1
/* 00005168 0000522C  7C 7F 1B 78 */	mr r31, r3
/* 0000516C 00005230  4B FF B9 05 */	bl BtlUnit_GetPartsPtr
/* 00005170 00005234  3C 80 00 00 */	lis r4, _fire_point_callback@ha
/* 00005174 00005238  7C 65 1B 78 */	mr r5, r3
/* 00005178 0000523C  80 63 01 C0 */	lwz r3, 0x1c0(r3)
/* 0000517C 00005240  38 84 00 00 */	addi r4, r4, _fire_point_callback@l
/* 00005180 00005244  4B FF B8 F1 */	bl animPoseSetDispCallBack
/* 00005184 00005248  7F E3 FB 78 */	mr r3, r31
/* 00005188 0000524C  38 80 00 02 */	li r4, 0x2
/* 0000518C 00005250  4B FF B8 E5 */	bl BtlUnit_GetPartsPtr
/* 00005190 00005254  80 03 01 AC */	lwz r0, 0x1ac(r3)
/* 00005194 00005258  64 00 01 00 */	oris r0, r0, 0x100
/* 00005198 0000525C  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 0000519C 00005260  38 60 00 02 */	li r3, 0x2
/* 000051A0 00005264  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000051A4 00005268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000051A8 0000526C  7C 08 03 A6 */	mtlr r0
/* 000051AC 00005270  38 21 00 10 */	addi r1, r1, 0x10
/* 000051B0 00005274  4E 80 00 20 */	blr
.endfn _set_draw_callback

# 0x000064A0..0x00006710 | size: 0x270
.rodata
.balign 8

# .rodata:0x0 | 0x64A0 | size: 0x12
.obj str_btl_un_giant_bomb_jon_0000d4d0, local
	.string "btl_un_giant_bomb"
.endobj str_btl_un_giant_bomb_jon_0000d4d0

# .rodata:0x12 | 0x64B2 | size: 0x2
.obj gap_03_000064B2_rodata, global
.hidden gap_03_000064B2_rodata
	.2byte 0x0000
.endobj gap_03_000064B2_rodata

# .rodata:0x14 | 0x64B4 | size: 0x18
.obj str_SFX_ENM_HEAVYB_DAMAG_jon_0000d4e4, local
	.string "SFX_ENM_HEAVYB_DAMAGED1"
.endobj str_SFX_ENM_HEAVYB_DAMAG_jon_0000d4e4

# .rodata:0x2C | 0x64CC | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000d4fc, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000d4fc

# .rodata:0x41 | 0x64E1 | size: 0x3
.obj gap_03_000064E1_rodata, global
.hidden gap_03_000064E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000064E1_rodata

# .rodata:0x44 | 0x64E4 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000d514, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000d514

# .rodata:0x58 | 0x64F8 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000d528, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000d528

# .rodata:0x71 | 0x6511 | size: 0x3
.obj gap_03_00006511_rodata, global
.hidden gap_03_00006511_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006511_rodata

# .rodata:0x74 | 0x6514 | size: 0x4
.obj str_N_1_jon_0000d544, local
	.string "N_1"
.endobj str_N_1_jon_0000d544

# .rodata:0x78 | 0x6518 | size: 0x4
.obj str_Y_1_jon_0000d548, local
	.string "Y_1"
.endobj str_Y_1_jon_0000d548

# .rodata:0x7C | 0x651C | size: 0x4
.obj str_K_1_jon_0000d54c, local
	.string "K_1"
.endobj str_K_1_jon_0000d54c

# .rodata:0x80 | 0x6520 | size: 0x4
.obj str_X_1_jon_0000d550, local
	.string "X_1"
.endobj str_X_1_jon_0000d550

# .rodata:0x84 | 0x6524 | size: 0x4
.obj str_Z_1_jon_0000d554, local
	.string "Z_1"
.endobj str_Z_1_jon_0000d554

# .rodata:0x88 | 0x6528 | size: 0x4
.obj str_S_1_jon_0000d558, local
	.string "S_1"
.endobj str_S_1_jon_0000d558

# .rodata:0x8C | 0x652C | size: 0x4
.obj str_D_1_jon_0000d55c, local
	.string "D_1"
.endobj str_D_1_jon_0000d55c

# .rodata:0x90 | 0x6530 | size: 0x4
.obj str_N_2_jon_0000d560, local
	.string "N_2"
.endobj str_N_2_jon_0000d560

# .rodata:0x94 | 0x6534 | size: 0x4
.obj str_Y_2_jon_0000d564, local
	.string "Y_2"
.endobj str_Y_2_jon_0000d564

# .rodata:0x98 | 0x6538 | size: 0x4
.obj str_K_2_jon_0000d568, local
	.string "K_2"
.endobj str_K_2_jon_0000d568

# .rodata:0x9C | 0x653C | size: 0x4
.obj str_X_2_jon_0000d56c, local
	.string "X_2"
.endobj str_X_2_jon_0000d56c

# .rodata:0xA0 | 0x6540 | size: 0x5
.obj str_Z_2B_jon_0000d570, local
	.string "Z_2B"
.endobj str_Z_2B_jon_0000d570

# .rodata:0xA5 | 0x6545 | size: 0x3
.obj gap_03_00006545_rodata, global
.hidden gap_03_00006545_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006545_rodata

# .rodata:0xA8 | 0x6548 | size: 0x5
.obj str_S_2B_jon_0000d578, local
	.string "S_2B"
.endobj str_S_2B_jon_0000d578

# .rodata:0xAD | 0x654D | size: 0x3
.obj gap_03_0000654D_rodata, global
.hidden gap_03_0000654D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000654D_rodata

# .rodata:0xB0 | 0x6550 | size: 0x4
.obj str_D_2_jon_0000d580, local
	.string "D_2"
.endobj str_D_2_jon_0000d580

# .rodata:0xB4 | 0x6554 | size: 0x5
.obj str_Z_2A_jon_0000d584, local
	.string "Z_2A"
.endobj str_Z_2A_jon_0000d584

# .rodata:0xB9 | 0x6559 | size: 0x3
.obj gap_03_00006559_rodata, global
.hidden gap_03_00006559_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006559_rodata

# .rodata:0xBC | 0x655C | size: 0x5
.obj str_S_2A_jon_0000d58c, local
	.string "S_2A"
.endobj str_S_2A_jon_0000d58c

# .rodata:0xC1 | 0x6561 | size: 0x3
.obj gap_03_00006561_rodata, global
.hidden gap_03_00006561_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006561_rodata

# .rodata:0xC4 | 0x6564 | size: 0x4
.obj str_N_3_jon_0000d594, local
	.string "N_3"
.endobj str_N_3_jon_0000d594

# .rodata:0xC8 | 0x6568 | size: 0x4
.obj str_Y_3_jon_0000d598, local
	.string "Y_3"
.endobj str_Y_3_jon_0000d598

# .rodata:0xCC | 0x656C | size: 0x4
.obj str_K_3_jon_0000d59c, local
	.string "K_3"
.endobj str_K_3_jon_0000d59c

# .rodata:0xD0 | 0x6570 | size: 0x4
.obj str_X_3_jon_0000d5a0, local
	.string "X_3"
.endobj str_X_3_jon_0000d5a0

# .rodata:0xD4 | 0x6574 | size: 0x5
.obj str_Z_3B_jon_0000d5a4, local
	.string "Z_3B"
.endobj str_Z_3B_jon_0000d5a4

# .rodata:0xD9 | 0x6579 | size: 0x3
.obj gap_03_00006579_rodata, global
.hidden gap_03_00006579_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006579_rodata

# .rodata:0xDC | 0x657C | size: 0x5
.obj str_S_3B_jon_0000d5ac, local
	.string "S_3B"
.endobj str_S_3B_jon_0000d5ac

# .rodata:0xE1 | 0x6581 | size: 0x3
.obj gap_03_00006581_rodata, global
.hidden gap_03_00006581_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006581_rodata

# .rodata:0xE4 | 0x6584 | size: 0x4
.obj str_D_3_jon_0000d5b4, local
	.string "D_3"
.endobj str_D_3_jon_0000d5b4

# .rodata:0xE8 | 0x6588 | size: 0x5
.obj str_Z_3A_jon_0000d5b8, local
	.string "Z_3A"
.endobj str_Z_3A_jon_0000d5b8

# .rodata:0xED | 0x658D | size: 0x3
.obj gap_03_0000658D_rodata, global
.hidden gap_03_0000658D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000658D_rodata

# .rodata:0xF0 | 0x6590 | size: 0x5
.obj str_S_3A_jon_0000d5c0, local
	.string "S_3A"
.endobj str_S_3A_jon_0000d5c0

# .rodata:0xF5 | 0x6595 | size: 0x3
.obj gap_03_00006595_rodata, global
.hidden gap_03_00006595_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006595_rodata

# .rodata:0xF8 | 0x6598 | size: 0x4
.obj str_N_4_jon_0000d5c8, local
	.string "N_4"
.endobj str_N_4_jon_0000d5c8

# .rodata:0xFC | 0x659C | size: 0x4
.obj str_Y_4_jon_0000d5cc, local
	.string "Y_4"
.endobj str_Y_4_jon_0000d5cc

# .rodata:0x100 | 0x65A0 | size: 0x4
.obj str_K_4_jon_0000d5d0, local
	.string "K_4"
.endobj str_K_4_jon_0000d5d0

# .rodata:0x104 | 0x65A4 | size: 0x4
.obj str_X_4_jon_0000d5d4, local
	.string "X_4"
.endobj str_X_4_jon_0000d5d4

# .rodata:0x108 | 0x65A8 | size: 0x5
.obj str_Z_4A_jon_0000d5d8, local
	.string "Z_4A"
.endobj str_Z_4A_jon_0000d5d8

# .rodata:0x10D | 0x65AD | size: 0x3
.obj gap_03_000065AD_rodata, global
.hidden gap_03_000065AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000065AD_rodata

# .rodata:0x110 | 0x65B0 | size: 0x5
.obj str_S_4A_jon_0000d5e0, local
	.string "S_4A"
.endobj str_S_4A_jon_0000d5e0

# .rodata:0x115 | 0x65B5 | size: 0x3
.obj gap_03_000065B5_rodata, global
.hidden gap_03_000065B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000065B5_rodata

# .rodata:0x118 | 0x65B8 | size: 0x4
.obj str_D_4_jon_0000d5e8, local
	.string "D_4"
.endobj str_D_4_jon_0000d5e8

# .rodata:0x11C | 0x65BC | size: 0x5
.obj str_Z_4B_jon_0000d5ec, local
	.string "Z_4B"
.endobj str_Z_4B_jon_0000d5ec

# .rodata:0x121 | 0x65C1 | size: 0x3
.obj gap_03_000065C1_rodata, global
.hidden gap_03_000065C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000065C1_rodata

# .rodata:0x124 | 0x65C4 | size: 0x5
.obj str_S_4B_jon_0000d5f4, local
	.string "S_4B"
.endobj str_S_4B_jon_0000d5f4

# .rodata:0x129 | 0x65C9 | size: 0x3
.obj gap_03_000065C9_rodata, global
.hidden gap_03_000065C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000065C9_rodata

# .rodata:0x12C | 0x65CC | size: 0x4
.obj str_B_4_jon_0000d5fc, local
	.string "B_4"
.endobj str_B_4_jon_0000d5fc

# .rodata:0x130 | 0x65D0 | size: 0x4
.obj str_B_1_jon_0000d600, local
	.string "B_1"
.endobj str_B_1_jon_0000d600

# .rodata:0x134 | 0x65D4 | size: 0x4
.obj str_B_7_jon_0000d604, local
	.string "B_7"
.endobj str_B_7_jon_0000d604

# .rodata:0x138 | 0x65D8 | size: 0x5
.obj str_B_10_jon_0000d608, local
	.string "B_10"
.endobj str_B_10_jon_0000d608

# .rodata:0x13D | 0x65DD | size: 0x3
.obj gap_03_000065DD_rodata, global
.hidden gap_03_000065DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000065DD_rodata

# .rodata:0x140 | 0x65E0 | size: 0x4
.obj str_B_5_jon_0000d610, local
	.string "B_5"
.endobj str_B_5_jon_0000d610

# .rodata:0x144 | 0x65E4 | size: 0x4
.obj str_B_2_jon_0000d614, local
	.string "B_2"
.endobj str_B_2_jon_0000d614

# .rodata:0x148 | 0x65E8 | size: 0x4
.obj str_B_8_jon_0000d618, local
	.string "B_8"
.endobj str_B_8_jon_0000d618

# .rodata:0x14C | 0x65EC | size: 0x5
.obj str_B_11_jon_0000d61c, local
	.string "B_11"
.endobj str_B_11_jon_0000d61c

# .rodata:0x151 | 0x65F1 | size: 0x3
.obj gap_03_000065F1_rodata, global
.hidden gap_03_000065F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000065F1_rodata

# .rodata:0x154 | 0x65F4 | size: 0x4
.obj str_B_6_jon_0000d624, local
	.string "B_6"
.endobj str_B_6_jon_0000d624

# .rodata:0x158 | 0x65F8 | size: 0x4
.obj str_B_3_jon_0000d628, local
	.string "B_3"
.endobj str_B_3_jon_0000d628

# .rodata:0x15C | 0x65FC | size: 0x4
.obj str_B_9_jon_0000d62c, local
	.string "B_9"
.endobj str_B_9_jon_0000d62c

# .rodata:0x160 | 0x6600 | size: 0x5
.obj str_B_12_jon_0000d630, local
	.string "B_12"
.endobj str_B_12_jon_0000d630

# .rodata:0x165 | 0x6605 | size: 0x3
.obj gap_03_00006605_rodata, global
.hidden gap_03_00006605_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006605_rodata

# .rodata:0x168 | 0x6608 | size: 0x15
.obj str_SFX_ENM_HEAVYB_WAIT3_jon_0000d638, local
	.string "SFX_ENM_HEAVYB_WAIT3"
.endobj str_SFX_ENM_HEAVYB_WAIT3_jon_0000d638

# .rodata:0x17D | 0x661D | size: 0x3
.obj gap_03_0000661D_rodata, global
.hidden gap_03_0000661D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000661D_rodata

# .rodata:0x180 | 0x6620 | size: 0x8
.obj str_c_giant_jon_0000d650, local
	.string "c_giant"
.endobj str_c_giant_jon_0000d650

# .rodata:0x188 | 0x6628 | size: 0x11
.obj str_ジャイアントボム_jon_0000d658, local
	.4byte 0x83578383
	.4byte 0x83438341
	.4byte 0x83938367
	.4byte 0x837B8380
	.byte 0x00
.endobj str_ジャイアントボム_jon_0000d658

# .rodata:0x199 | 0x6639 | size: 0x3
.obj gap_03_00006639_rodata, global
.hidden gap_03_00006639_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006639_rodata

# .rodata:0x19C | 0x663C | size: 0x4
.obj str_F_1_jon_0000d66c, local
	.string "F_1"
.endobj str_F_1_jon_0000d66c

# .rodata:0x1A0 | 0x6640 | size: 0x15
.obj str_SFX_ENM_HEAVYB_WAIT2_jon_0000d670, local
	.string "SFX_ENM_HEAVYB_WAIT2"
.endobj str_SFX_ENM_HEAVYB_WAIT2_jon_0000d670

# .rodata:0x1B5 | 0x6655 | size: 0x3
.obj gap_03_00006655_rodata, global
.hidden gap_03_00006655_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006655_rodata

# .rodata:0x1B8 | 0x6658 | size: 0x17
.obj str_SFX_ENM_HEAVYB_ATTAC_jon_0000d688, local
	.string "SFX_ENM_HEAVYB_ATTACK1"
.endobj str_SFX_ENM_HEAVYB_ATTAC_jon_0000d688

# .rodata:0x1CF | 0x666F | size: 0x1
.obj gap_03_0000666F_rodata, global
.hidden gap_03_0000666F_rodata
	.byte 0x00
.endobj gap_03_0000666F_rodata

# .rodata:0x1D0 | 0x6670 | size: 0x4
.obj str_G_1_jon_0000d6a0, local
	.string "G_1"
.endobj str_G_1_jon_0000d6a0

# .rodata:0x1D4 | 0x6674 | size: 0x4
.obj str_G_2_jon_0000d6a4, local
	.string "G_2"
.endobj str_G_2_jon_0000d6a4

# .rodata:0x1D8 | 0x6678 | size: 0x4
.obj str_G_3_jon_0000d6a8, local
	.string "G_3"
.endobj str_G_3_jon_0000d6a8

# .rodata:0x1DC | 0x667C | size: 0x4
.obj str_G_4_jon_0000d6ac, local
	.string "G_4"
.endobj str_G_4_jon_0000d6ac

# .rodata:0x1E0 | 0x6680 | size: 0x15
.obj str_SFX_ENM_HEAVYB_WAIT1_jon_0000d6b0, local
	.string "SFX_ENM_HEAVYB_WAIT1"
.endobj str_SFX_ENM_HEAVYB_WAIT1_jon_0000d6b0

# .rodata:0x1F5 | 0x6695 | size: 0x3
.obj gap_03_00006695_rodata, global
.hidden gap_03_00006695_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006695_rodata

# .rodata:0x1F8 | 0x6698 | size: 0x17
.obj str_SFX_ENM_HEAVYB_ATTAC_jon_0000d6c8, local
	.string "SFX_ENM_HEAVYB_ATTACK2"
.endobj str_SFX_ENM_HEAVYB_ATTAC_jon_0000d6c8

# .rodata:0x20F | 0x66AF | size: 0x1
.obj gap_03_000066AF_rodata, global
.hidden gap_03_000066AF_rodata
	.byte 0x00
.endobj gap_03_000066AF_rodata

# .rodata:0x210 | 0x66B0 | size: 0x17
.obj str_SFX_ENM_HEAVYB_ATTAC_jon_0000d6e0, local
	.string "SFX_ENM_HEAVYB_ATTACK3"
.endobj str_SFX_ENM_HEAVYB_ATTAC_jon_0000d6e0

# .rodata:0x227 | 0x66C7 | size: 0x1
.obj gap_03_000066C7_rodata, global
.hidden gap_03_000066C7_rodata
	.byte 0x00
.endobj gap_03_000066C7_rodata

# .rodata:0x228 | 0x66C8 | size: 0x5
.obj str_bomb_jon_0000d6f8, local
	.string "bomb"
.endobj str_bomb_jon_0000d6f8

# .rodata:0x22D | 0x66CD | size: 0x3
.obj gap_03_000066CD_rodata, global
.hidden gap_03_000066CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000066CD_rodata

# .rodata:0x230 | 0x66D0 | size: 0xA
.obj str_locator11_jon_0000d700, local
	.string "locator11"
.endobj str_locator11_jon_0000d700

# .rodata:0x23A | 0x66DA | size: 0x2
.obj gap_03_000066DA_rodata, global
.hidden gap_03_000066DA_rodata
	.2byte 0x0000
.endobj gap_03_000066DA_rodata

# .rodata:0x23C | 0x66DC | size: 0xA
.obj str_locator10_jon_0000d70c, local
	.string "locator10"
.endobj str_locator10_jon_0000d70c

# .rodata:0x246 | 0x66E6 | size: 0x2
.obj gap_03_000066E6_rodata, global
.hidden gap_03_000066E6_rodata
	.2byte 0x0000
.endobj gap_03_000066E6_rodata

# .rodata:0x248 | 0x66E8 | size: 0x9
.obj str_locator9_jon_0000d718, local
	.string "locator9"
.endobj str_locator9_jon_0000d718

# .rodata:0x251 | 0x66F1 | size: 0x3
.obj gap_03_000066F1_rodata, global
.hidden gap_03_000066F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000066F1_rodata

# .rodata:0x254 | 0x66F4 | size: 0x9
.obj str_locator8_jon_0000d724, local
	.string "locator8"
.endobj str_locator8_jon_0000d724

# .rodata:0x25D | 0x66FD | size: 0x3
.obj gap_03_000066FD_rodata, global
.hidden gap_03_000066FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000066FD_rodata

# .rodata:0x260 | 0x6700 | size: 0xD
.obj str_pPlaneShape3_jon_0000d730, local
	.string "pPlaneShape3"
.endobj str_pPlaneShape3_jon_0000d730

# .rodata:0x26D | 0x670D | size: 0x3
.obj gap_03_0000670D_rodata, global
.hidden gap_03_0000670D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000670D_rodata

# 0x0005B8B8..0x0005CFE0 | size: 0x1728
.data
.balign 8

# .data:0x0 | 0x5B8B8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x5B8C0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x5B8C4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x5B8C8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x5B8CC | size: 0x4
.obj gap_04_0005B8CC_data, global
.hidden gap_04_0005B8CC_data
	.4byte 0x00000000
.endobj gap_04_0005B8CC_data

# .data:0x18 | 0x5B8D0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x5B8D8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x5B8DC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x5B8E0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x5B8E8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x5B8EC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x5B8F0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x5B8F4 | size: 0x4
.obj gap_04_0005B8F4_data, global
.hidden gap_04_0005B8F4_data
	.4byte 0x00000000
.endobj gap_04_0005B8F4_data

# .data:0x40 | 0x5B8F8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x5B900 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x5B904 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x5B908 | size: 0xC4
.obj unit_giant_bomb_14_data_5B908, global
	.4byte 0x000000A8
	.4byte str_btl_un_giant_bomb_jon_0000d4d0
	.4byte 0x000A0000
	.4byte 0x01012202
	.4byte 0x05460032
	.4byte 0x270F0036
	.4byte 0x00460007
	.4byte 0x00460000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41D80000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41D80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x42580000
	.4byte 0x428C0000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_DAMAG_jon_0000d4e4
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000d4fc
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000d514
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000d528
	.4byte 0x00000000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_giant_bomb_14_data_5B908

# .data:0x114 | 0x5B9CC | size: 0xC0
.obj weapon_heavy_bomb_super_explosion, local
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
	.4byte 0x02101020
	.4byte 0x20000000
	.4byte 0x03000302
	.4byte 0x00000000
	.4byte 0x00022087
	.4byte 0x000007FF
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
	.4byte 0x00323264
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_heavy_bomb_super_explosion

# .data:0x1D4 | 0x5BA8C | size: 0xC0
.obj weapon_heavy_bomb_guard, local
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
	.4byte 0x02004020
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00020008
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640303
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_heavy_bomb_guard

# .data:0x294 | 0x5BB4C | size: 0xC0
.obj weapon_heavy_bomb_guard_2, local
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
	.4byte 0x02004020
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00020008
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00006403
	.4byte 0x03000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_heavy_bomb_guard_2

# .data:0x354 | 0x5BC0C | size: 0xC0
.obj weapon_heavy_bomb_guard_3, local
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
	.4byte 0x02004020
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00020008
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_heavy_bomb_guard_3

# .data:0x414 | 0x5BCCC | size: 0x5
.obj defence, local
	.4byte 0x02020202
	.byte 0x02
.endobj defence

# .data:0x419 | 0x5BCD1 | size: 0x3
.obj gap_04_0005BCD1_data, global
.hidden gap_04_0005BCD1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0005BCD1_data

# .data:0x41C | 0x5BCD4 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x421 | 0x5BCD9 | size: 0x3
.obj gap_04_0005BCD9_data, global
.hidden gap_04_0005BCD9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0005BCD9_data

# .data:0x424 | 0x5BCDC | size: 0x16
.obj regist, local
	.4byte 0x46373264
	.4byte 0x3264645A
	.4byte 0x64466446
	.4byte 0x6455323C
	.4byte 0x0A643264
	.2byte 0x6414
.endobj regist

# .data:0x43A | 0x5BCF2 | size: 0x2
.obj gap_04_0005BCF2_data, global
.hidden gap_04_0005BCF2_data
	.2byte 0x0000
.endobj gap_04_0005BCF2_data

# .data:0x43C | 0x5BCF4 | size: 0x80
.obj pose_table_3, local
	.4byte 0x00000001
	.4byte str_N_1_jon_0000d544
	.4byte 0x00000009
	.4byte str_Y_1_jon_0000d548
	.4byte 0x00000002
	.4byte str_Y_1_jon_0000d548
	.4byte 0x00000003
	.4byte str_K_1_jon_0000d54c
	.4byte 0x00000004
	.4byte str_X_1_jon_0000d550
	.4byte 0x00000005
	.4byte str_K_1_jon_0000d54c
	.4byte 0x00000009
	.4byte str_Z_1_jon_0000d554
	.4byte 0x0000001C
	.4byte str_S_1_jon_0000d558
	.4byte 0x0000001D
	.4byte str_D_1_jon_0000d55c
	.4byte 0x00000023
	.4byte str_S_1_jon_0000d558
	.4byte 0x0000001F
	.4byte str_S_1_jon_0000d558
	.4byte 0x00000027
	.4byte str_D_1_jon_0000d55c
	.4byte 0x00000038
	.4byte str_X_1_jon_0000d550
	.4byte 0x00000039
	.4byte str_X_1_jon_0000d550
	.4byte 0x00000041
	.4byte str_S_1_jon_0000d558
	.4byte 0x00000045
	.4byte str_S_1_jon_0000d558
.endobj pose_table_3

# .data:0x4BC | 0x5BD74 | size: 0x80
.obj pose_table_3_fire, local
	.4byte 0x00000001
	.4byte str_N_1_jon_0000d544
	.4byte 0x00000009
	.4byte str_Y_1_jon_0000d548
	.4byte 0x00000002
	.4byte str_Y_1_jon_0000d548
	.4byte 0x00000003
	.4byte str_K_1_jon_0000d54c
	.4byte 0x00000004
	.4byte str_X_1_jon_0000d550
	.4byte 0x00000005
	.4byte str_K_1_jon_0000d54c
	.4byte 0x00000009
	.4byte str_Z_1_jon_0000d554
	.4byte 0x0000001C
	.4byte str_S_1_jon_0000d558
	.4byte 0x0000001D
	.4byte str_D_1_jon_0000d55c
	.4byte 0x00000023
	.4byte str_S_1_jon_0000d558
	.4byte 0x0000001F
	.4byte str_S_1_jon_0000d558
	.4byte 0x00000027
	.4byte str_D_1_jon_0000d55c
	.4byte 0x00000038
	.4byte str_X_1_jon_0000d550
	.4byte 0x00000039
	.4byte str_X_1_jon_0000d550
	.4byte 0x00000041
	.4byte str_S_1_jon_0000d558
	.4byte 0x00000045
	.4byte str_S_1_jon_0000d558
.endobj pose_table_3_fire

# .data:0x53C | 0x5BDF4 | size: 0x80
.obj pose_table_2, local
	.4byte 0x00000001
	.4byte str_N_2_jon_0000d560
	.4byte 0x00000009
	.4byte str_Y_2_jon_0000d564
	.4byte 0x00000002
	.4byte str_Y_2_jon_0000d564
	.4byte 0x00000003
	.4byte str_K_2_jon_0000d568
	.4byte 0x00000004
	.4byte str_X_2_jon_0000d56c
	.4byte 0x00000005
	.4byte str_K_2_jon_0000d568
	.4byte 0x00000009
	.4byte str_Z_2B_jon_0000d570
	.4byte 0x0000001C
	.4byte str_S_2B_jon_0000d578
	.4byte 0x0000001D
	.4byte str_D_2_jon_0000d580
	.4byte 0x00000023
	.4byte str_S_2B_jon_0000d578
	.4byte 0x0000001F
	.4byte str_S_2B_jon_0000d578
	.4byte 0x00000027
	.4byte str_D_2_jon_0000d580
	.4byte 0x00000038
	.4byte str_X_2_jon_0000d56c
	.4byte 0x00000039
	.4byte str_X_2_jon_0000d56c
	.4byte 0x00000041
	.4byte str_S_2B_jon_0000d578
	.4byte 0x00000045
	.4byte str_S_2B_jon_0000d578
.endobj pose_table_2

# .data:0x5BC | 0x5BE74 | size: 0x80
.obj pose_table_2_fire, local
	.4byte 0x00000001
	.4byte str_N_2_jon_0000d560
	.4byte 0x00000009
	.4byte str_Y_2_jon_0000d564
	.4byte 0x00000002
	.4byte str_Y_2_jon_0000d564
	.4byte 0x00000003
	.4byte str_K_2_jon_0000d568
	.4byte 0x00000004
	.4byte str_X_2_jon_0000d56c
	.4byte 0x00000005
	.4byte str_K_2_jon_0000d568
	.4byte 0x00000009
	.4byte str_Z_2A_jon_0000d584
	.4byte 0x0000001C
	.4byte str_S_2A_jon_0000d58c
	.4byte 0x0000001D
	.4byte str_D_2_jon_0000d580
	.4byte 0x00000023
	.4byte str_S_2A_jon_0000d58c
	.4byte 0x0000001F
	.4byte str_S_2A_jon_0000d58c
	.4byte 0x00000027
	.4byte str_D_2_jon_0000d580
	.4byte 0x00000038
	.4byte str_X_2_jon_0000d56c
	.4byte 0x00000039
	.4byte str_X_2_jon_0000d56c
	.4byte 0x00000041
	.4byte str_S_2A_jon_0000d58c
	.4byte 0x00000045
	.4byte str_S_2A_jon_0000d58c
.endobj pose_table_2_fire

# .data:0x63C | 0x5BEF4 | size: 0x80
.obj pose_table_1, local
	.4byte 0x00000001
	.4byte str_N_3_jon_0000d594
	.4byte 0x00000009
	.4byte str_Y_3_jon_0000d598
	.4byte 0x00000002
	.4byte str_Y_3_jon_0000d598
	.4byte 0x00000003
	.4byte str_K_3_jon_0000d59c
	.4byte 0x00000004
	.4byte str_X_3_jon_0000d5a0
	.4byte 0x00000005
	.4byte str_K_3_jon_0000d59c
	.4byte 0x00000009
	.4byte str_Z_3B_jon_0000d5a4
	.4byte 0x0000001C
	.4byte str_S_3B_jon_0000d5ac
	.4byte 0x0000001D
	.4byte str_D_3_jon_0000d5b4
	.4byte 0x00000023
	.4byte str_S_3B_jon_0000d5ac
	.4byte 0x0000001F
	.4byte str_S_3B_jon_0000d5ac
	.4byte 0x00000027
	.4byte str_D_3_jon_0000d5b4
	.4byte 0x00000038
	.4byte str_X_3_jon_0000d5a0
	.4byte 0x00000039
	.4byte str_X_3_jon_0000d5a0
	.4byte 0x00000041
	.4byte str_S_3B_jon_0000d5ac
	.4byte 0x00000045
	.4byte str_S_3B_jon_0000d5ac
.endobj pose_table_1

# .data:0x6BC | 0x5BF74 | size: 0x80
.obj pose_table_1_fire, local
	.4byte 0x00000001
	.4byte str_N_3_jon_0000d594
	.4byte 0x00000009
	.4byte str_Y_3_jon_0000d598
	.4byte 0x00000002
	.4byte str_Y_3_jon_0000d598
	.4byte 0x00000003
	.4byte str_K_3_jon_0000d59c
	.4byte 0x00000004
	.4byte str_X_3_jon_0000d5a0
	.4byte 0x00000005
	.4byte str_K_3_jon_0000d59c
	.4byte 0x00000009
	.4byte str_Z_3A_jon_0000d5b8
	.4byte 0x0000001C
	.4byte str_S_3A_jon_0000d5c0
	.4byte 0x0000001D
	.4byte str_D_3_jon_0000d5b4
	.4byte 0x00000023
	.4byte str_S_3A_jon_0000d5c0
	.4byte 0x0000001F
	.4byte str_S_3A_jon_0000d5c0
	.4byte 0x00000027
	.4byte str_D_3_jon_0000d5b4
	.4byte 0x00000038
	.4byte str_X_3_jon_0000d5a0
	.4byte 0x00000039
	.4byte str_X_3_jon_0000d5a0
	.4byte 0x00000041
	.4byte str_S_3A_jon_0000d5c0
	.4byte 0x00000045
	.4byte str_S_3A_jon_0000d5c0
.endobj pose_table_1_fire

# .data:0x73C | 0x5BFF4 | size: 0x80
.obj pose_table_0_fire, local
	.4byte 0x00000001
	.4byte str_N_4_jon_0000d5c8
	.4byte 0x00000009
	.4byte str_Y_4_jon_0000d5cc
	.4byte 0x00000002
	.4byte str_Y_4_jon_0000d5cc
	.4byte 0x00000003
	.4byte str_K_4_jon_0000d5d0
	.4byte 0x00000004
	.4byte str_X_4_jon_0000d5d4
	.4byte 0x00000005
	.4byte str_K_4_jon_0000d5d0
	.4byte 0x00000009
	.4byte str_Z_4A_jon_0000d5d8
	.4byte 0x0000001C
	.4byte str_S_4A_jon_0000d5e0
	.4byte 0x0000001D
	.4byte str_D_4_jon_0000d5e8
	.4byte 0x00000023
	.4byte str_S_4A_jon_0000d5e0
	.4byte 0x0000001F
	.4byte str_S_4A_jon_0000d5e0
	.4byte 0x00000027
	.4byte str_D_4_jon_0000d5e8
	.4byte 0x00000038
	.4byte str_X_4_jon_0000d5d4
	.4byte 0x00000039
	.4byte str_X_4_jon_0000d5d4
	.4byte 0x00000041
	.4byte str_S_4A_jon_0000d5e0
	.4byte 0x00000045
	.4byte str_S_4A_jon_0000d5e0
.endobj pose_table_0_fire

# .data:0x7BC | 0x5C074 | size: 0x80
.obj pose_table_0, local
	.4byte 0x00000001
	.4byte str_N_4_jon_0000d5c8
	.4byte 0x00000009
	.4byte str_Y_4_jon_0000d5cc
	.4byte 0x00000002
	.4byte str_Y_4_jon_0000d5cc
	.4byte 0x00000003
	.4byte str_K_4_jon_0000d5d0
	.4byte 0x00000004
	.4byte str_X_4_jon_0000d5d4
	.4byte 0x00000005
	.4byte str_K_4_jon_0000d5d0
	.4byte 0x00000009
	.4byte str_Z_4B_jon_0000d5ec
	.4byte 0x0000001C
	.4byte str_S_4B_jon_0000d5f4
	.4byte 0x0000001D
	.4byte str_D_4_jon_0000d5e8
	.4byte 0x00000023
	.4byte str_S_4B_jon_0000d5f4
	.4byte 0x0000001F
	.4byte str_S_4B_jon_0000d5f4
	.4byte 0x00000027
	.4byte str_D_4_jon_0000d5e8
	.4byte 0x00000038
	.4byte str_X_4_jon_0000d5d4
	.4byte 0x00000039
	.4byte str_X_4_jon_0000d5d4
	.4byte 0x00000041
	.4byte str_S_4B_jon_0000d5f4
	.4byte 0x00000045
	.4byte str_S_4B_jon_0000d5f4
.endobj pose_table_0

# .data:0x83C | 0x5C0F4 | size: 0x68
.obj pose_table_3_to_2, local
	.4byte 0x00000001
	.4byte str_B_4_jon_0000d5fc
	.4byte 0x00000009
	.4byte str_B_1_jon_0000d600
	.4byte 0x00000002
	.4byte str_B_1_jon_0000d600
	.4byte 0x00000003
	.4byte str_B_7_jon_0000d604
	.4byte 0x00000004
	.4byte str_B_10_jon_0000d608
	.4byte 0x00000005
	.4byte str_B_7_jon_0000d604
	.4byte 0x0000001C
	.4byte str_B_1_jon_0000d600
	.4byte 0x0000001F
	.4byte str_B_1_jon_0000d600
	.4byte 0x00000027
	.4byte str_B_1_jon_0000d600
	.4byte 0x00000038
	.4byte str_B_10_jon_0000d608
	.4byte 0x00000039
	.4byte str_B_10_jon_0000d608
	.4byte 0x00000041
	.4byte str_B_1_jon_0000d600
	.4byte 0x00000045
	.4byte str_B_1_jon_0000d600
.endobj pose_table_3_to_2

# .data:0x8A4 | 0x5C15C | size: 0x68
.obj pose_table_2_to_1, local
	.4byte 0x00000001
	.4byte str_B_5_jon_0000d610
	.4byte 0x00000009
	.4byte str_B_2_jon_0000d614
	.4byte 0x00000002
	.4byte str_B_2_jon_0000d614
	.4byte 0x00000003
	.4byte str_B_8_jon_0000d618
	.4byte 0x00000004
	.4byte str_B_11_jon_0000d61c
	.4byte 0x00000005
	.4byte str_B_8_jon_0000d618
	.4byte 0x0000001C
	.4byte str_B_2_jon_0000d614
	.4byte 0x0000001F
	.4byte str_B_2_jon_0000d614
	.4byte 0x00000027
	.4byte str_B_2_jon_0000d614
	.4byte 0x00000038
	.4byte str_B_11_jon_0000d61c
	.4byte 0x00000039
	.4byte str_B_11_jon_0000d61c
	.4byte 0x00000041
	.4byte str_B_2_jon_0000d614
	.4byte 0x00000045
	.4byte str_B_2_jon_0000d614
.endobj pose_table_2_to_1

# .data:0x90C | 0x5C1C4 | size: 0x68
.obj pose_table_1_to_0, local
	.4byte 0x00000001
	.4byte str_B_6_jon_0000d624
	.4byte 0x00000009
	.4byte str_B_3_jon_0000d628
	.4byte 0x00000002
	.4byte str_B_3_jon_0000d628
	.4byte 0x00000003
	.4byte str_B_9_jon_0000d62c
	.4byte 0x00000004
	.4byte str_B_12_jon_0000d630
	.4byte 0x00000005
	.4byte str_B_9_jon_0000d62c
	.4byte 0x0000001C
	.4byte str_B_3_jon_0000d628
	.4byte 0x0000001F
	.4byte str_B_3_jon_0000d628
	.4byte 0x00000027
	.4byte str_B_3_jon_0000d628
	.4byte 0x00000038
	.4byte str_B_12_jon_0000d630
	.4byte 0x00000039
	.4byte str_B_12_jon_0000d630
	.4byte 0x00000041
	.4byte str_B_3_jon_0000d628
	.4byte 0x00000045
	.4byte str_B_3_jon_0000d628
.endobj pose_table_1_to_0

# .data:0x974 | 0x5C22C | size: 0x18
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000034
	.4byte explosion_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x98C | 0x5C244 | size: 0xB4
.obj pose_sound_timing_table, local
	.4byte str_S_3A_jon_0000d5c0
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000d638
	.4byte 0x00000001
	.4byte str_S_3A_jon_0000d5c0
	.4byte 0x3E888889
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000d638
	.4byte 0x00000001
	.4byte str_S_3A_jon_0000d5c0
	.4byte 0x3F088889
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000d638
	.4byte 0x00000001
	.4byte str_S_3A_jon_0000d5c0
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000d638
	.4byte 0x00000001
	.4byte str_S_4A_jon_0000d5e0
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000d638
	.4byte 0x00000001
	.4byte str_S_4A_jon_0000d5e0
	.4byte 0x3E2AAAAB
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000d638
	.4byte 0x00000001
	.4byte str_S_4A_jon_0000d5e0
	.4byte 0x3EAAAAAB
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000d638
	.4byte 0x00000001
	.4byte str_S_4A_jon_0000d5e0
	.4byte 0x3F000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000d638
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
.endobj pose_sound_timing_table

# .data:0xA40 | 0x5C2F8 | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_giant_bomb_jon_0000d4d0
	.4byte str_c_giant_jon_0000d650
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42820000
	.4byte 0x00000000
	.4byte 0x00410046
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table_3
	.4byte 0x00000002
	.4byte str_ジャイアントボム_jon_0000d658
	.4byte str_c_giant_jon_0000d650
	.4byte 0x00000000
	.4byte 0x42A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F000F
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x02010000
	.4byte 0x00000000
	.4byte pose_table_3
.endobj parts

# .data:0xAD8 | 0x5C390 | size: 0xE4
.obj init_event, local
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
	.4byte btldefaultevt_Confuse
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_F_1_jon_0000d66c
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseSoundTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_sound_timing_table
	.4byte 0x0001005B
	.4byte _set_draw_callback
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xBBC | 0x5C474 | size: 0x1D8
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_2
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_1
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_0
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFE363C8A
	.4byte 0x00000100
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamageCode
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x0001002B
	.4byte 0x0000001B
	.4byte 0x0001002B
	.4byte 0x00000018
	.4byte 0x0001002B
	.4byte 0x00000019
	.4byte 0x0001002B
	.4byte 0x00000034
	.4byte 0x0001002B
	.4byte 0x0000002E
	.4byte 0x0001002B
	.4byte 0x00000032
	.4byte 0x0001002B
	.4byte 0x00000036
	.4byte 0x00010004
	.4byte 0x00000032
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000002
	.4byte 0x00010003
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001D
	.4byte 0x0001005E
	.4byte dead_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0xD94 | 0x5C64C | size: 0x1F8
.obj phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000003
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_K_4_jon_0000d5d0
	.4byte 0x0003005B
	.4byte btlevtcmd_AfterReactionEntry
	.4byte 0xFFFFFFFE
	.4byte 0x00000034
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_WAIT2_jon_0000d670
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_3_to_2
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_2_to_1
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_1_to_0
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_2_fire
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_1_fire
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_0_fire
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0xF8C | 0x5C844 | size: 0x2BC
.obj attack_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_ATTAC_jon_0000d688
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_1_jon_0000d6a0
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_2_jon_0000d6a4
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_3_jon_0000d6a8
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_4_jon_0000d6ac
	.4byte 0x00000031
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_WAIT1_jon_0000d6b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_ATTAC_jon_0000d6c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_1_jon_0000d6a0
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_2_jon_0000d6a4
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_3_jon_0000d6a8
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_4_jon_0000d6ac
	.4byte 0x00000031
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_heavy_bomb_guard
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_heavy_bomb_guard_2
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_heavy_bomb_guard_3
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1248 | 0x5CB00 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1260 | 0x5CB18 | size: 0xD0
.obj dead_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamageCode
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x0001002B
	.4byte 0x0000001B
	.4byte 0x0001002B
	.4byte 0x00000018
	.4byte 0x0001002B
	.4byte 0x00000019
	.4byte 0x0001002B
	.4byte 0x00000034
	.4byte 0x0001002B
	.4byte 0x0000002E
	.4byte 0x0001002B
	.4byte 0x00000032
	.4byte 0x0001002B
	.4byte 0x00000036
	.4byte 0x00010004
	.4byte 0x00000032
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core
	.4byte 0x00000002
	.4byte 0x00010003
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte btlevtcmd_AfterReactionEntry
	.4byte 0xFFFFFFFE
	.4byte 0x00000034
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0x1330 | 0x5CBE8 | size: 0x3F8
.obj explosion_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_ATTAC_jon_0000d6e0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHeight
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00020038
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_bomb_jon_0000d6f8
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte btlevtcmd_StageDispellFog
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_bomb_jon_0000d6f8
	.4byte 0x00000004
	.4byte 0xFFFFFFD8
	.4byte 0x0000001E
	.4byte 0x00000014
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000007D
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_bomb_jon_0000d6f8
	.4byte 0x00000004
	.4byte 0x00000028
	.4byte 0x0000005A
	.4byte 0x00000014
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000007D
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_bomb_jon_0000d6f8
	.4byte 0x00000004
	.4byte 0x00000028
	.4byte 0x0000001E
	.4byte 0x00000014
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000007D
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_bomb_jon_0000d6f8
	.4byte 0x00000004
	.4byte 0xFFFFFFD8
	.4byte 0x0000005A
	.4byte 0x00000014
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000007D
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_bomb_jon_0000d6f8
	.4byte 0x00000004
	.4byte 0xFFFFFF9C
	.4byte 0x0000003C
	.4byte 0x00000014
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000007D
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_bomb_jon_0000d6f8
	.4byte 0x00000004
	.4byte 0x00000064
	.4byte 0x0000003C
	.4byte 0x00000014
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_heavy_bomb_super_explosion
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_heavy_bomb_super_explosion
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_heavy_bomb_super_explosion
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_heavy_bomb_super_explosion
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_heavy_bomb_super_explosion
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_heavy_bomb_super_explosion
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj explosion_event
