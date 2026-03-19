.include "macros.inc"
.file "unit_heavy_bom.o"

# 0x000115EC..0x0001174C | size: 0x160
.text
.balign 4

# .text:0x0 | 0x115EC | size: 0xE0
.fn _fire_point_callback, local
/* 000115EC 000116B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000115F0 000116BC  7C 08 02 A6 */	mflr r0
/* 000115F4 000116C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 000115F8 000116C4  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000115FC 000116C8  83 E3 04 EC */	lwz r31, 0x4ec(r3)
/* 00011600 000116CC  80 1F 02 18 */	lwz r0, 0x218(r31)
/* 00011604 000116D0  2C 00 00 00 */	cmpwi r0, 0x0
/* 00011608 000116D4  41 82 00 B0 */	beq .L_000116B8
/* 0001160C 000116D8  80 1F 02 1C */	lwz r0, 0x21c(r31)
/* 00011610 000116DC  80 63 01 C0 */	lwz r3, 0x1c0(r3)
/* 00011614 000116E0  2C 00 00 02 */	cmpwi r0, 0x2
/* 00011618 000116E4  41 82 00 3C */	beq .L_00011654
/* 0001161C 000116E8  40 80 00 48 */	bge .L_00011664
/* 00011620 000116EC  2C 00 00 00 */	cmpwi r0, 0x0
/* 00011624 000116F0  41 82 00 10 */	beq .L_00011634
/* 00011628 000116F4  40 80 00 1C */	bge .L_00011644
/* 0001162C 000116F8  48 00 00 38 */	b .L_00011664
/* 00011630 000116FC  48 00 00 34 */	b .L_00011664
.L_00011634:
/* 00011634 00011700  3C A0 00 00 */	lis r5, str_locator11_las_0001a630@ha
/* 00011638 00011704  38 05 00 00 */	addi r0, r5, str_locator11_las_0001a630@l
/* 0001163C 00011708  7C 1E 03 78 */	mr r30, r0
/* 00011640 0001170C  48 00 00 30 */	b .L_00011670
.L_00011644:
/* 00011644 00011710  3C A0 00 00 */	lis r5, str_locator10_las_0001a63c@ha
/* 00011648 00011714  38 05 00 00 */	addi r0, r5, str_locator10_las_0001a63c@l
/* 0001164C 00011718  7C 1E 03 78 */	mr r30, r0
/* 00011650 0001171C  48 00 00 20 */	b .L_00011670
.L_00011654:
/* 00011654 00011720  3C A0 00 00 */	lis r5, str_locator9_las_0001a648@ha
/* 00011658 00011724  38 05 00 00 */	addi r0, r5, str_locator9_las_0001a648@l
/* 0001165C 00011728  7C 1E 03 78 */	mr r30, r0
/* 00011660 0001172C  48 00 00 10 */	b .L_00011670
.L_00011664:
/* 00011664 00011730  3C A0 00 00 */	lis r5, str_locator8_las_0001a654@ha
/* 00011668 00011734  38 05 00 00 */	addi r0, r5, str_locator8_las_0001a654@l
/* 0001166C 00011738  7C 1E 03 78 */	mr r30, r0
.L_00011670:
/* 00011670 0001173C  4B FE EA CD */	bl animPoseGetGroupName
/* 00011674 00011740  7C 64 1B 78 */	mr r4, r3
/* 00011678 00011744  7F C3 F3 78 */	mr r3, r30
/* 0001167C 00011748  4B FE EA C1 */	bl strcmp
/* 00011680 0001174C  2C 03 00 00 */	cmpwi r3, 0x0
/* 00011684 00011750  40 82 00 34 */	bne .L_000116B8
/* 00011688 00011754  7F E3 FB 78 */	mr r3, r31
/* 0001168C 00011758  38 80 00 02 */	li r4, 0x2
/* 00011690 0001175C  4B FE EA AD */	bl BtlUnit_GetPartsPtr
/* 00011694 00011760  83 C3 01 C0 */	lwz r30, 0x1c0(r3)
/* 00011698 00011764  3C 60 00 00 */	lis r3, str_pPlaneShape3_las_0001a660@ha
/* 0001169C 00011768  38 83 00 00 */	addi r4, r3, str_pPlaneShape3_las_0001a660@l
/* 000116A0 0001176C  7F C3 F3 78 */	mr r3, r30
/* 000116A4 00011770  4B FE EA 99 */	bl animPoseGetShapeIdx
/* 000116A8 00011774  7C 60 1B 78 */	mr r0, r3
/* 000116AC 00011778  7F C3 F3 78 */	mr r3, r30
/* 000116B0 0001177C  7C 04 03 78 */	mr r4, r0
/* 000116B4 00011780  4B FE EA 89 */	bl animPoseDrawShape
.L_000116B8:
/* 000116B8 00011784  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000116BC 00011788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000116C0 0001178C  7C 08 03 A6 */	mtlr r0
/* 000116C4 00011790  38 21 00 10 */	addi r1, r1, 0x10
/* 000116C8 00011794  4E 80 00 20 */	blr
.endfn _fire_point_callback

# .text:0xE0 | 0x116CC | size: 0x80
.fn _set_draw_callback, local
/* 000116CC 00011798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000116D0 0001179C  7C 08 02 A6 */	mflr r0
/* 000116D4 000117A0  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 000116D8 000117A4  38 80 FF FE */	li r4, -0x2
/* 000116DC 000117A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 000116E0 000117AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000116E4 000117B0  83 E5 00 00 */	lwz r31, _battleWorkPointer@l(r5)
/* 000116E8 000117B4  4B FE EA 55 */	bl BattleTransID
/* 000116EC 000117B8  7C 60 1B 78 */	mr r0, r3
/* 000116F0 000117BC  7F E3 FB 78 */	mr r3, r31
/* 000116F4 000117C0  7C 04 03 78 */	mr r4, r0
/* 000116F8 000117C4  4B FE EA 45 */	bl BattleGetUnitPtr
/* 000116FC 000117C8  38 80 00 01 */	li r4, 0x1
/* 00011700 000117CC  7C 7F 1B 78 */	mr r31, r3
/* 00011704 000117D0  4B FE EA 39 */	bl BtlUnit_GetPartsPtr
/* 00011708 000117D4  3C 80 00 00 */	lis r4, _fire_point_callback@ha
/* 0001170C 000117D8  7C 65 1B 78 */	mr r5, r3
/* 00011710 000117DC  80 63 01 C0 */	lwz r3, 0x1c0(r3)
/* 00011714 000117E0  38 84 00 00 */	addi r4, r4, _fire_point_callback@l
/* 00011718 000117E4  4B FE EA 25 */	bl animPoseSetDispCallBack
/* 0001171C 000117E8  7F E3 FB 78 */	mr r3, r31
/* 00011720 000117EC  38 80 00 02 */	li r4, 0x2
/* 00011724 000117F0  4B FE EA 19 */	bl BtlUnit_GetPartsPtr
/* 00011728 000117F4  80 03 01 AC */	lwz r0, 0x1ac(r3)
/* 0001172C 000117F8  64 00 01 00 */	oris r0, r0, 0x100
/* 00011730 000117FC  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 00011734 00011800  38 60 00 02 */	li r3, 0x2
/* 00011738 00011804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 0001173C 00011808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00011740 0001180C  7C 08 03 A6 */	mtlr r0
/* 00011744 00011810  38 21 00 10 */	addi r1, r1, 0x10
/* 00011748 00011814  4E 80 00 20 */	blr
.endfn _set_draw_callback

# 0x000089A0..0x00008C08 | size: 0x268
.rodata
.balign 8

# .rodata:0x0 | 0x89A0 | size: 0x11
.obj str_btl_un_heavy_bom_las_0001a408, local
	.string "btl_un_heavy_bom"
.endobj str_btl_un_heavy_bom_las_0001a408

# .rodata:0x11 | 0x89B1 | size: 0x3
.obj gap_03_000089B1_rodata, global
.hidden gap_03_000089B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000089B1_rodata

# .rodata:0x14 | 0x89B4 | size: 0x18
.obj str_SFX_ENM_HEAVYB_DAMAG_las_0001a41c, local
	.string "SFX_ENM_HEAVYB_DAMAGED1"
.endobj str_SFX_ENM_HEAVYB_DAMAG_las_0001a41c

# .rodata:0x2C | 0x89CC | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_las_0001a434, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_las_0001a434

# .rodata:0x41 | 0x89E1 | size: 0x3
.obj gap_03_000089E1_rodata, global
.hidden gap_03_000089E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000089E1_rodata

# .rodata:0x44 | 0x89E4 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_las_0001a44c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_las_0001a44c

# .rodata:0x58 | 0x89F8 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_las_0001a460, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_las_0001a460

# .rodata:0x71 | 0x8A11 | size: 0x3
.obj gap_03_00008A11_rodata, global
.hidden gap_03_00008A11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008A11_rodata

# .rodata:0x74 | 0x8A14 | size: 0x4
.obj str_N_1_las_0001a47c, local
	.string "N_1"
.endobj str_N_1_las_0001a47c

# .rodata:0x78 | 0x8A18 | size: 0x4
.obj str_Y_1_las_0001a480, local
	.string "Y_1"
.endobj str_Y_1_las_0001a480

# .rodata:0x7C | 0x8A1C | size: 0x4
.obj str_K_1_las_0001a484, local
	.string "K_1"
.endobj str_K_1_las_0001a484

# .rodata:0x80 | 0x8A20 | size: 0x4
.obj str_X_1_las_0001a488, local
	.string "X_1"
.endobj str_X_1_las_0001a488

# .rodata:0x84 | 0x8A24 | size: 0x4
.obj str_Z_1_las_0001a48c, local
	.string "Z_1"
.endobj str_Z_1_las_0001a48c

# .rodata:0x88 | 0x8A28 | size: 0x4
.obj str_S_1_las_0001a490, local
	.string "S_1"
.endobj str_S_1_las_0001a490

# .rodata:0x8C | 0x8A2C | size: 0x4
.obj str_D_1_las_0001a494, local
	.string "D_1"
.endobj str_D_1_las_0001a494

# .rodata:0x90 | 0x8A30 | size: 0x4
.obj str_N_2_las_0001a498, local
	.string "N_2"
.endobj str_N_2_las_0001a498

# .rodata:0x94 | 0x8A34 | size: 0x4
.obj str_Y_2_las_0001a49c, local
	.string "Y_2"
.endobj str_Y_2_las_0001a49c

# .rodata:0x98 | 0x8A38 | size: 0x4
.obj str_K_2_las_0001a4a0, local
	.string "K_2"
.endobj str_K_2_las_0001a4a0

# .rodata:0x9C | 0x8A3C | size: 0x4
.obj str_X_2_las_0001a4a4, local
	.string "X_2"
.endobj str_X_2_las_0001a4a4

# .rodata:0xA0 | 0x8A40 | size: 0x5
.obj str_Z_2B_las_0001a4a8, local
	.string "Z_2B"
.endobj str_Z_2B_las_0001a4a8

# .rodata:0xA5 | 0x8A45 | size: 0x3
.obj gap_03_00008A45_rodata, global
.hidden gap_03_00008A45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008A45_rodata

# .rodata:0xA8 | 0x8A48 | size: 0x5
.obj str_S_2B_las_0001a4b0, local
	.string "S_2B"
.endobj str_S_2B_las_0001a4b0

# .rodata:0xAD | 0x8A4D | size: 0x3
.obj gap_03_00008A4D_rodata, global
.hidden gap_03_00008A4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008A4D_rodata

# .rodata:0xB0 | 0x8A50 | size: 0x4
.obj str_D_2_las_0001a4b8, local
	.string "D_2"
.endobj str_D_2_las_0001a4b8

# .rodata:0xB4 | 0x8A54 | size: 0x5
.obj str_Z_2A_las_0001a4bc, local
	.string "Z_2A"
.endobj str_Z_2A_las_0001a4bc

# .rodata:0xB9 | 0x8A59 | size: 0x3
.obj gap_03_00008A59_rodata, global
.hidden gap_03_00008A59_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008A59_rodata

# .rodata:0xBC | 0x8A5C | size: 0x5
.obj str_S_2A_las_0001a4c4, local
	.string "S_2A"
.endobj str_S_2A_las_0001a4c4

# .rodata:0xC1 | 0x8A61 | size: 0x3
.obj gap_03_00008A61_rodata, global
.hidden gap_03_00008A61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008A61_rodata

# .rodata:0xC4 | 0x8A64 | size: 0x4
.obj str_N_3_las_0001a4cc, local
	.string "N_3"
.endobj str_N_3_las_0001a4cc

# .rodata:0xC8 | 0x8A68 | size: 0x4
.obj str_Y_3_las_0001a4d0, local
	.string "Y_3"
.endobj str_Y_3_las_0001a4d0

# .rodata:0xCC | 0x8A6C | size: 0x4
.obj str_K_3_las_0001a4d4, local
	.string "K_3"
.endobj str_K_3_las_0001a4d4

# .rodata:0xD0 | 0x8A70 | size: 0x4
.obj str_X_3_las_0001a4d8, local
	.string "X_3"
.endobj str_X_3_las_0001a4d8

# .rodata:0xD4 | 0x8A74 | size: 0x5
.obj str_Z_3B_las_0001a4dc, local
	.string "Z_3B"
.endobj str_Z_3B_las_0001a4dc

# .rodata:0xD9 | 0x8A79 | size: 0x3
.obj gap_03_00008A79_rodata, global
.hidden gap_03_00008A79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008A79_rodata

# .rodata:0xDC | 0x8A7C | size: 0x5
.obj str_S_3B_las_0001a4e4, local
	.string "S_3B"
.endobj str_S_3B_las_0001a4e4

# .rodata:0xE1 | 0x8A81 | size: 0x3
.obj gap_03_00008A81_rodata, global
.hidden gap_03_00008A81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008A81_rodata

# .rodata:0xE4 | 0x8A84 | size: 0x4
.obj str_D_3_las_0001a4ec, local
	.string "D_3"
.endobj str_D_3_las_0001a4ec

# .rodata:0xE8 | 0x8A88 | size: 0x5
.obj str_Z_3A_las_0001a4f0, local
	.string "Z_3A"
.endobj str_Z_3A_las_0001a4f0

# .rodata:0xED | 0x8A8D | size: 0x3
.obj gap_03_00008A8D_rodata, global
.hidden gap_03_00008A8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008A8D_rodata

# .rodata:0xF0 | 0x8A90 | size: 0x5
.obj str_S_3A_las_0001a4f8, local
	.string "S_3A"
.endobj str_S_3A_las_0001a4f8

# .rodata:0xF5 | 0x8A95 | size: 0x3
.obj gap_03_00008A95_rodata, global
.hidden gap_03_00008A95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008A95_rodata

# .rodata:0xF8 | 0x8A98 | size: 0x4
.obj str_N_4_las_0001a500, local
	.string "N_4"
.endobj str_N_4_las_0001a500

# .rodata:0xFC | 0x8A9C | size: 0x4
.obj str_Y_4_las_0001a504, local
	.string "Y_4"
.endobj str_Y_4_las_0001a504

# .rodata:0x100 | 0x8AA0 | size: 0x4
.obj str_K_4_las_0001a508, local
	.string "K_4"
.endobj str_K_4_las_0001a508

# .rodata:0x104 | 0x8AA4 | size: 0x4
.obj str_X_4_las_0001a50c, local
	.string "X_4"
.endobj str_X_4_las_0001a50c

# .rodata:0x108 | 0x8AA8 | size: 0x5
.obj str_Z_4A_las_0001a510, local
	.string "Z_4A"
.endobj str_Z_4A_las_0001a510

# .rodata:0x10D | 0x8AAD | size: 0x3
.obj gap_03_00008AAD_rodata, global
.hidden gap_03_00008AAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008AAD_rodata

# .rodata:0x110 | 0x8AB0 | size: 0x5
.obj str_S_4A_las_0001a518, local
	.string "S_4A"
.endobj str_S_4A_las_0001a518

# .rodata:0x115 | 0x8AB5 | size: 0x3
.obj gap_03_00008AB5_rodata, global
.hidden gap_03_00008AB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008AB5_rodata

# .rodata:0x118 | 0x8AB8 | size: 0x4
.obj str_D_4_las_0001a520, local
	.string "D_4"
.endobj str_D_4_las_0001a520

# .rodata:0x11C | 0x8ABC | size: 0x5
.obj str_Z_4B_las_0001a524, local
	.string "Z_4B"
.endobj str_Z_4B_las_0001a524

# .rodata:0x121 | 0x8AC1 | size: 0x3
.obj gap_03_00008AC1_rodata, global
.hidden gap_03_00008AC1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008AC1_rodata

# .rodata:0x124 | 0x8AC4 | size: 0x5
.obj str_S_4B_las_0001a52c, local
	.string "S_4B"
.endobj str_S_4B_las_0001a52c

# .rodata:0x129 | 0x8AC9 | size: 0x3
.obj gap_03_00008AC9_rodata, global
.hidden gap_03_00008AC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008AC9_rodata

# .rodata:0x12C | 0x8ACC | size: 0x4
.obj str_B_4_las_0001a534, local
	.string "B_4"
.endobj str_B_4_las_0001a534

# .rodata:0x130 | 0x8AD0 | size: 0x4
.obj str_B_1_las_0001a538, local
	.string "B_1"
.endobj str_B_1_las_0001a538

# .rodata:0x134 | 0x8AD4 | size: 0x4
.obj str_B_7_las_0001a53c, local
	.string "B_7"
.endobj str_B_7_las_0001a53c

# .rodata:0x138 | 0x8AD8 | size: 0x5
.obj str_B_10_las_0001a540, local
	.string "B_10"
.endobj str_B_10_las_0001a540

# .rodata:0x13D | 0x8ADD | size: 0x3
.obj gap_03_00008ADD_rodata, global
.hidden gap_03_00008ADD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008ADD_rodata

# .rodata:0x140 | 0x8AE0 | size: 0x4
.obj str_B_5_las_0001a548, local
	.string "B_5"
.endobj str_B_5_las_0001a548

# .rodata:0x144 | 0x8AE4 | size: 0x4
.obj str_B_2_las_0001a54c, local
	.string "B_2"
.endobj str_B_2_las_0001a54c

# .rodata:0x148 | 0x8AE8 | size: 0x4
.obj str_B_8_las_0001a550, local
	.string "B_8"
.endobj str_B_8_las_0001a550

# .rodata:0x14C | 0x8AEC | size: 0x5
.obj str_B_11_las_0001a554, local
	.string "B_11"
.endobj str_B_11_las_0001a554

# .rodata:0x151 | 0x8AF1 | size: 0x3
.obj gap_03_00008AF1_rodata, global
.hidden gap_03_00008AF1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008AF1_rodata

# .rodata:0x154 | 0x8AF4 | size: 0x4
.obj str_B_6_las_0001a55c, local
	.string "B_6"
.endobj str_B_6_las_0001a55c

# .rodata:0x158 | 0x8AF8 | size: 0x4
.obj str_B_3_las_0001a560, local
	.string "B_3"
.endobj str_B_3_las_0001a560

# .rodata:0x15C | 0x8AFC | size: 0x4
.obj str_B_9_las_0001a564, local
	.string "B_9"
.endobj str_B_9_las_0001a564

# .rodata:0x160 | 0x8B00 | size: 0x5
.obj str_B_12_las_0001a568, local
	.string "B_12"
.endobj str_B_12_las_0001a568

# .rodata:0x165 | 0x8B05 | size: 0x3
.obj gap_03_00008B05_rodata, global
.hidden gap_03_00008B05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008B05_rodata

# .rodata:0x168 | 0x8B08 | size: 0x15
.obj str_SFX_ENM_HEAVYB_WAIT3_las_0001a570, local
	.string "SFX_ENM_HEAVYB_WAIT3"
.endobj str_SFX_ENM_HEAVYB_WAIT3_las_0001a570

# .rodata:0x17D | 0x8B1D | size: 0x3
.obj gap_03_00008B1D_rodata, global
.hidden gap_03_00008B1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008B1D_rodata

# .rodata:0x180 | 0x8B20 | size: 0x8
.obj str_c_heavy_las_0001a588, local
	.string "c_heavy"
.endobj str_c_heavy_las_0001a588

# .rodata:0x188 | 0x8B28 | size: 0xB
.obj str_ヘビーボム_las_0001a590, local
	.4byte 0x83778372
	.4byte 0x815B837B
	.byte 0x83, 0x80, 0x00
.endobj str_ヘビーボム_las_0001a590

# .rodata:0x193 | 0x8B33 | size: 0x1
.obj gap_03_00008B33_rodata, global
.hidden gap_03_00008B33_rodata
	.byte 0x00
.endobj gap_03_00008B33_rodata

# .rodata:0x194 | 0x8B34 | size: 0x4
.obj str_F_1_las_0001a59c, local
	.string "F_1"
.endobj str_F_1_las_0001a59c

# .rodata:0x198 | 0x8B38 | size: 0x15
.obj str_SFX_ENM_HEAVYB_WAIT2_las_0001a5a0, local
	.string "SFX_ENM_HEAVYB_WAIT2"
.endobj str_SFX_ENM_HEAVYB_WAIT2_las_0001a5a0

# .rodata:0x1AD | 0x8B4D | size: 0x3
.obj gap_03_00008B4D_rodata, global
.hidden gap_03_00008B4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008B4D_rodata

# .rodata:0x1B0 | 0x8B50 | size: 0x17
.obj str_SFX_ENM_HEAVYB_ATTAC_las_0001a5b8, local
	.string "SFX_ENM_HEAVYB_ATTACK1"
.endobj str_SFX_ENM_HEAVYB_ATTAC_las_0001a5b8

# .rodata:0x1C7 | 0x8B67 | size: 0x1
.obj gap_03_00008B67_rodata, global
.hidden gap_03_00008B67_rodata
	.byte 0x00
.endobj gap_03_00008B67_rodata

# .rodata:0x1C8 | 0x8B68 | size: 0x4
.obj str_G_1_las_0001a5d0, local
	.string "G_1"
.endobj str_G_1_las_0001a5d0

# .rodata:0x1CC | 0x8B6C | size: 0x4
.obj str_G_2_las_0001a5d4, local
	.string "G_2"
.endobj str_G_2_las_0001a5d4

# .rodata:0x1D0 | 0x8B70 | size: 0x4
.obj str_G_3_las_0001a5d8, local
	.string "G_3"
.endobj str_G_3_las_0001a5d8

# .rodata:0x1D4 | 0x8B74 | size: 0x4
.obj str_G_4_las_0001a5dc, local
	.string "G_4"
.endobj str_G_4_las_0001a5dc

# .rodata:0x1D8 | 0x8B78 | size: 0x15
.obj str_SFX_ENM_HEAVYB_WAIT1_las_0001a5e0, local
	.string "SFX_ENM_HEAVYB_WAIT1"
.endobj str_SFX_ENM_HEAVYB_WAIT1_las_0001a5e0

# .rodata:0x1ED | 0x8B8D | size: 0x3
.obj gap_03_00008B8D_rodata, global
.hidden gap_03_00008B8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008B8D_rodata

# .rodata:0x1F0 | 0x8B90 | size: 0x17
.obj str_SFX_ENM_HEAVYB_ATTAC_las_0001a5f8, local
	.string "SFX_ENM_HEAVYB_ATTACK2"
.endobj str_SFX_ENM_HEAVYB_ATTAC_las_0001a5f8

# .rodata:0x207 | 0x8BA7 | size: 0x1
.obj gap_03_00008BA7_rodata, global
.hidden gap_03_00008BA7_rodata
	.byte 0x00
.endobj gap_03_00008BA7_rodata

# .rodata:0x208 | 0x8BA8 | size: 0x17
.obj str_SFX_ENM_HEAVYB_ATTAC_las_0001a610, local
	.string "SFX_ENM_HEAVYB_ATTACK3"
.endobj str_SFX_ENM_HEAVYB_ATTAC_las_0001a610

# .rodata:0x21F | 0x8BBF | size: 0x1
.obj gap_03_00008BBF_rodata, global
.hidden gap_03_00008BBF_rodata
	.byte 0x00
.endobj gap_03_00008BBF_rodata

# .rodata:0x220 | 0x8BC0 | size: 0x5
.obj str_bomb_las_0001a628, local
	.string "bomb"
.endobj str_bomb_las_0001a628

# .rodata:0x225 | 0x8BC5 | size: 0x3
.obj gap_03_00008BC5_rodata, global
.hidden gap_03_00008BC5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008BC5_rodata

# .rodata:0x228 | 0x8BC8 | size: 0xA
.obj str_locator11_las_0001a630, local
	.string "locator11"
.endobj str_locator11_las_0001a630

# .rodata:0x232 | 0x8BD2 | size: 0x2
.obj gap_03_00008BD2_rodata, global
.hidden gap_03_00008BD2_rodata
	.2byte 0x0000
.endobj gap_03_00008BD2_rodata

# .rodata:0x234 | 0x8BD4 | size: 0xA
.obj str_locator10_las_0001a63c, local
	.string "locator10"
.endobj str_locator10_las_0001a63c

# .rodata:0x23E | 0x8BDE | size: 0x2
.obj gap_03_00008BDE_rodata, global
.hidden gap_03_00008BDE_rodata
	.2byte 0x0000
.endobj gap_03_00008BDE_rodata

# .rodata:0x240 | 0x8BE0 | size: 0x9
.obj str_locator9_las_0001a648, local
	.string "locator9"
.endobj str_locator9_las_0001a648

# .rodata:0x249 | 0x8BE9 | size: 0x3
.obj gap_03_00008BE9_rodata, global
.hidden gap_03_00008BE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008BE9_rodata

# .rodata:0x24C | 0x8BEC | size: 0x9
.obj str_locator8_las_0001a654, local
	.string "locator8"
.endobj str_locator8_las_0001a654

# .rodata:0x255 | 0x8BF5 | size: 0x3
.obj gap_03_00008BF5_rodata, global
.hidden gap_03_00008BF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008BF5_rodata

# .rodata:0x258 | 0x8BF8 | size: 0xD
.obj str_pPlaneShape3_las_0001a660, local
	.string "pPlaneShape3"
.endobj str_pPlaneShape3_las_0001a660

# .rodata:0x265 | 0x8C05 | size: 0x3
.obj gap_03_00008C05_rodata, global
.hidden gap_03_00008C05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008C05_rodata

# 0x00055A18..0x00057140 | size: 0x1728
.data
.balign 8

# .data:0x0 | 0x55A18 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x55A20 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x55A24 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x55A28 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x55A2C | size: 0x4
.obj gap_04_00055A2C_data, global
.hidden gap_04_00055A2C_data
	.4byte 0x00000000
.endobj gap_04_00055A2C_data

# .data:0x18 | 0x55A30 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x55A38 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x55A3C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x55A40 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x55A48 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x55A4C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x55A50 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x55A54 | size: 0x4
.obj gap_04_00055A54_data, global
.hidden gap_04_00055A54_data
	.4byte 0x00000000
.endobj gap_04_00055A54_data

# .data:0x40 | 0x55A58 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x55A60 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x55A64 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x55A68 | size: 0xC4
.obj unit_heavy_bom, local
	.4byte 0x0000005C
	.4byte str_btl_un_heavy_bom_las_0001a408
	.4byte 0x00060000
	.4byte 0x01011600
	.4byte 0x04460028
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
	.4byte 0x41D80000
	.4byte 0x42360000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x42580000
	.4byte 0x428C0000
	.4byte 0x00000002
	.4byte 0x64000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_DAMAG_las_0001a41c
	.4byte str_SFX_BTL_DAMAGE_FIRE1_las_0001a434
	.4byte str_SFX_BTL_DAMAGE_ICE1_las_0001a44c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_las_0001a460
	.4byte 0x00000000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_heavy_bom

# .data:0x114 | 0x55B2C | size: 0xC0
.obj weapon_heavy_bomb_super_explosion, local
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

# .data:0x1D4 | 0x55BEC | size: 0xC0
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

# .data:0x294 | 0x55CAC | size: 0xC0
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

# .data:0x354 | 0x55D6C | size: 0xC0
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
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_heavy_bomb_guard_3

# .data:0x414 | 0x55E2C | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x419 | 0x55E31 | size: 0x3
.obj gap_04_00055E31_data, global
.hidden gap_04_00055E31_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00055E31_data

# .data:0x41C | 0x55E34 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x421 | 0x55E39 | size: 0x3
.obj gap_04_00055E39_data, global
.hidden gap_04_00055E39_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00055E39_data

# .data:0x424 | 0x55E3C | size: 0x16
.obj regist, local
	.4byte 0x5A4B4600
	.4byte 0x46966464
	.4byte 0x64506450
	.4byte 0x645F4650
	.4byte 0x14644664
	.2byte 0x645F
.endobj regist

# .data:0x43A | 0x55E52 | size: 0x2
.obj gap_04_00055E52_data, global
.hidden gap_04_00055E52_data
	.2byte 0x0000
.endobj gap_04_00055E52_data

# .data:0x43C | 0x55E54 | size: 0x80
.obj pose_table_3, local
	.4byte 0x00000001
	.4byte str_N_1_las_0001a47c
	.4byte 0x00000009
	.4byte str_Y_1_las_0001a480
	.4byte 0x00000002
	.4byte str_Y_1_las_0001a480
	.4byte 0x00000003
	.4byte str_K_1_las_0001a484
	.4byte 0x00000004
	.4byte str_X_1_las_0001a488
	.4byte 0x00000005
	.4byte str_K_1_las_0001a484
	.4byte 0x00000009
	.4byte str_Z_1_las_0001a48c
	.4byte 0x0000001C
	.4byte str_S_1_las_0001a490
	.4byte 0x0000001D
	.4byte str_D_1_las_0001a494
	.4byte 0x00000023
	.4byte str_S_1_las_0001a490
	.4byte 0x0000001F
	.4byte str_S_1_las_0001a490
	.4byte 0x00000027
	.4byte str_D_1_las_0001a494
	.4byte 0x00000038
	.4byte str_X_1_las_0001a488
	.4byte 0x00000039
	.4byte str_X_1_las_0001a488
	.4byte 0x00000041
	.4byte str_S_1_las_0001a490
	.4byte 0x00000045
	.4byte str_S_1_las_0001a490
.endobj pose_table_3

# .data:0x4BC | 0x55ED4 | size: 0x80
.obj pose_table_3_fire, local
	.4byte 0x00000001
	.4byte str_N_1_las_0001a47c
	.4byte 0x00000009
	.4byte str_Y_1_las_0001a480
	.4byte 0x00000002
	.4byte str_Y_1_las_0001a480
	.4byte 0x00000003
	.4byte str_K_1_las_0001a484
	.4byte 0x00000004
	.4byte str_X_1_las_0001a488
	.4byte 0x00000005
	.4byte str_K_1_las_0001a484
	.4byte 0x00000009
	.4byte str_Z_1_las_0001a48c
	.4byte 0x0000001C
	.4byte str_S_1_las_0001a490
	.4byte 0x0000001D
	.4byte str_D_1_las_0001a494
	.4byte 0x00000023
	.4byte str_S_1_las_0001a490
	.4byte 0x0000001F
	.4byte str_S_1_las_0001a490
	.4byte 0x00000027
	.4byte str_D_1_las_0001a494
	.4byte 0x00000038
	.4byte str_X_1_las_0001a488
	.4byte 0x00000039
	.4byte str_X_1_las_0001a488
	.4byte 0x00000041
	.4byte str_S_1_las_0001a490
	.4byte 0x00000045
	.4byte str_S_1_las_0001a490
.endobj pose_table_3_fire

# .data:0x53C | 0x55F54 | size: 0x80
.obj pose_table_2, local
	.4byte 0x00000001
	.4byte str_N_2_las_0001a498
	.4byte 0x00000009
	.4byte str_Y_2_las_0001a49c
	.4byte 0x00000002
	.4byte str_Y_2_las_0001a49c
	.4byte 0x00000003
	.4byte str_K_2_las_0001a4a0
	.4byte 0x00000004
	.4byte str_X_2_las_0001a4a4
	.4byte 0x00000005
	.4byte str_K_2_las_0001a4a0
	.4byte 0x00000009
	.4byte str_Z_2B_las_0001a4a8
	.4byte 0x0000001C
	.4byte str_S_2B_las_0001a4b0
	.4byte 0x0000001D
	.4byte str_D_2_las_0001a4b8
	.4byte 0x00000023
	.4byte str_S_2B_las_0001a4b0
	.4byte 0x0000001F
	.4byte str_S_2B_las_0001a4b0
	.4byte 0x00000027
	.4byte str_D_2_las_0001a4b8
	.4byte 0x00000038
	.4byte str_X_2_las_0001a4a4
	.4byte 0x00000039
	.4byte str_X_2_las_0001a4a4
	.4byte 0x00000041
	.4byte str_S_2B_las_0001a4b0
	.4byte 0x00000045
	.4byte str_S_2B_las_0001a4b0
.endobj pose_table_2

# .data:0x5BC | 0x55FD4 | size: 0x80
.obj pose_table_2_fire, local
	.4byte 0x00000001
	.4byte str_N_2_las_0001a498
	.4byte 0x00000009
	.4byte str_Y_2_las_0001a49c
	.4byte 0x00000002
	.4byte str_Y_2_las_0001a49c
	.4byte 0x00000003
	.4byte str_K_2_las_0001a4a0
	.4byte 0x00000004
	.4byte str_X_2_las_0001a4a4
	.4byte 0x00000005
	.4byte str_K_2_las_0001a4a0
	.4byte 0x00000009
	.4byte str_Z_2A_las_0001a4bc
	.4byte 0x0000001C
	.4byte str_S_2A_las_0001a4c4
	.4byte 0x0000001D
	.4byte str_D_2_las_0001a4b8
	.4byte 0x00000023
	.4byte str_S_2A_las_0001a4c4
	.4byte 0x0000001F
	.4byte str_S_2A_las_0001a4c4
	.4byte 0x00000027
	.4byte str_D_2_las_0001a4b8
	.4byte 0x00000038
	.4byte str_X_2_las_0001a4a4
	.4byte 0x00000039
	.4byte str_X_2_las_0001a4a4
	.4byte 0x00000041
	.4byte str_S_2A_las_0001a4c4
	.4byte 0x00000045
	.4byte str_S_2A_las_0001a4c4
.endobj pose_table_2_fire

# .data:0x63C | 0x56054 | size: 0x80
.obj pose_table_1, local
	.4byte 0x00000001
	.4byte str_N_3_las_0001a4cc
	.4byte 0x00000009
	.4byte str_Y_3_las_0001a4d0
	.4byte 0x00000002
	.4byte str_Y_3_las_0001a4d0
	.4byte 0x00000003
	.4byte str_K_3_las_0001a4d4
	.4byte 0x00000004
	.4byte str_X_3_las_0001a4d8
	.4byte 0x00000005
	.4byte str_K_3_las_0001a4d4
	.4byte 0x00000009
	.4byte str_Z_3B_las_0001a4dc
	.4byte 0x0000001C
	.4byte str_S_3B_las_0001a4e4
	.4byte 0x0000001D
	.4byte str_D_3_las_0001a4ec
	.4byte 0x00000023
	.4byte str_S_3B_las_0001a4e4
	.4byte 0x0000001F
	.4byte str_S_3B_las_0001a4e4
	.4byte 0x00000027
	.4byte str_D_3_las_0001a4ec
	.4byte 0x00000038
	.4byte str_X_3_las_0001a4d8
	.4byte 0x00000039
	.4byte str_X_3_las_0001a4d8
	.4byte 0x00000041
	.4byte str_S_3B_las_0001a4e4
	.4byte 0x00000045
	.4byte str_S_3B_las_0001a4e4
.endobj pose_table_1

# .data:0x6BC | 0x560D4 | size: 0x80
.obj pose_table_1_fire, local
	.4byte 0x00000001
	.4byte str_N_3_las_0001a4cc
	.4byte 0x00000009
	.4byte str_Y_3_las_0001a4d0
	.4byte 0x00000002
	.4byte str_Y_3_las_0001a4d0
	.4byte 0x00000003
	.4byte str_K_3_las_0001a4d4
	.4byte 0x00000004
	.4byte str_X_3_las_0001a4d8
	.4byte 0x00000005
	.4byte str_K_3_las_0001a4d4
	.4byte 0x00000009
	.4byte str_Z_3A_las_0001a4f0
	.4byte 0x0000001C
	.4byte str_S_3A_las_0001a4f8
	.4byte 0x0000001D
	.4byte str_D_3_las_0001a4ec
	.4byte 0x00000023
	.4byte str_S_3A_las_0001a4f8
	.4byte 0x0000001F
	.4byte str_S_3A_las_0001a4f8
	.4byte 0x00000027
	.4byte str_D_3_las_0001a4ec
	.4byte 0x00000038
	.4byte str_X_3_las_0001a4d8
	.4byte 0x00000039
	.4byte str_X_3_las_0001a4d8
	.4byte 0x00000041
	.4byte str_S_3A_las_0001a4f8
	.4byte 0x00000045
	.4byte str_S_3A_las_0001a4f8
.endobj pose_table_1_fire

# .data:0x73C | 0x56154 | size: 0x80
.obj pose_table_0_fire, local
	.4byte 0x00000001
	.4byte str_N_4_las_0001a500
	.4byte 0x00000009
	.4byte str_Y_4_las_0001a504
	.4byte 0x00000002
	.4byte str_Y_4_las_0001a504
	.4byte 0x00000003
	.4byte str_K_4_las_0001a508
	.4byte 0x00000004
	.4byte str_X_4_las_0001a50c
	.4byte 0x00000005
	.4byte str_K_4_las_0001a508
	.4byte 0x00000009
	.4byte str_Z_4A_las_0001a510
	.4byte 0x0000001C
	.4byte str_S_4A_las_0001a518
	.4byte 0x0000001D
	.4byte str_D_4_las_0001a520
	.4byte 0x00000023
	.4byte str_S_4A_las_0001a518
	.4byte 0x0000001F
	.4byte str_S_4A_las_0001a518
	.4byte 0x00000027
	.4byte str_D_4_las_0001a520
	.4byte 0x00000038
	.4byte str_X_4_las_0001a50c
	.4byte 0x00000039
	.4byte str_X_4_las_0001a50c
	.4byte 0x00000041
	.4byte str_S_4A_las_0001a518
	.4byte 0x00000045
	.4byte str_S_4A_las_0001a518
.endobj pose_table_0_fire

# .data:0x7BC | 0x561D4 | size: 0x80
.obj pose_table_0, local
	.4byte 0x00000001
	.4byte str_N_4_las_0001a500
	.4byte 0x00000009
	.4byte str_Y_4_las_0001a504
	.4byte 0x00000002
	.4byte str_Y_4_las_0001a504
	.4byte 0x00000003
	.4byte str_K_4_las_0001a508
	.4byte 0x00000004
	.4byte str_X_4_las_0001a50c
	.4byte 0x00000005
	.4byte str_K_4_las_0001a508
	.4byte 0x00000009
	.4byte str_Z_4B_las_0001a524
	.4byte 0x0000001C
	.4byte str_S_4B_las_0001a52c
	.4byte 0x0000001D
	.4byte str_D_4_las_0001a520
	.4byte 0x00000023
	.4byte str_S_4B_las_0001a52c
	.4byte 0x0000001F
	.4byte str_S_4B_las_0001a52c
	.4byte 0x00000027
	.4byte str_D_4_las_0001a520
	.4byte 0x00000038
	.4byte str_X_4_las_0001a50c
	.4byte 0x00000039
	.4byte str_X_4_las_0001a50c
	.4byte 0x00000041
	.4byte str_S_4B_las_0001a52c
	.4byte 0x00000045
	.4byte str_S_4B_las_0001a52c
.endobj pose_table_0

# .data:0x83C | 0x56254 | size: 0x68
.obj pose_table_3_to_2, local
	.4byte 0x00000001
	.4byte str_B_4_las_0001a534
	.4byte 0x00000009
	.4byte str_B_1_las_0001a538
	.4byte 0x00000002
	.4byte str_B_1_las_0001a538
	.4byte 0x00000003
	.4byte str_B_7_las_0001a53c
	.4byte 0x00000004
	.4byte str_B_10_las_0001a540
	.4byte 0x00000005
	.4byte str_B_7_las_0001a53c
	.4byte 0x0000001C
	.4byte str_B_1_las_0001a538
	.4byte 0x0000001F
	.4byte str_B_1_las_0001a538
	.4byte 0x00000027
	.4byte str_B_1_las_0001a538
	.4byte 0x00000038
	.4byte str_B_10_las_0001a540
	.4byte 0x00000039
	.4byte str_B_10_las_0001a540
	.4byte 0x00000041
	.4byte str_B_1_las_0001a538
	.4byte 0x00000045
	.4byte str_B_1_las_0001a538
.endobj pose_table_3_to_2

# .data:0x8A4 | 0x562BC | size: 0x68
.obj pose_table_2_to_1, local
	.4byte 0x00000001
	.4byte str_B_5_las_0001a548
	.4byte 0x00000009
	.4byte str_B_2_las_0001a54c
	.4byte 0x00000002
	.4byte str_B_2_las_0001a54c
	.4byte 0x00000003
	.4byte str_B_8_las_0001a550
	.4byte 0x00000004
	.4byte str_B_11_las_0001a554
	.4byte 0x00000005
	.4byte str_B_8_las_0001a550
	.4byte 0x0000001C
	.4byte str_B_2_las_0001a54c
	.4byte 0x0000001F
	.4byte str_B_2_las_0001a54c
	.4byte 0x00000027
	.4byte str_B_2_las_0001a54c
	.4byte 0x00000038
	.4byte str_B_11_las_0001a554
	.4byte 0x00000039
	.4byte str_B_11_las_0001a554
	.4byte 0x00000041
	.4byte str_B_2_las_0001a54c
	.4byte 0x00000045
	.4byte str_B_2_las_0001a54c
.endobj pose_table_2_to_1

# .data:0x90C | 0x56324 | size: 0x68
.obj pose_table_1_to_0, local
	.4byte 0x00000001
	.4byte str_B_6_las_0001a55c
	.4byte 0x00000009
	.4byte str_B_3_las_0001a560
	.4byte 0x00000002
	.4byte str_B_3_las_0001a560
	.4byte 0x00000003
	.4byte str_B_9_las_0001a564
	.4byte 0x00000004
	.4byte str_B_12_las_0001a568
	.4byte 0x00000005
	.4byte str_B_9_las_0001a564
	.4byte 0x0000001C
	.4byte str_B_3_las_0001a560
	.4byte 0x0000001F
	.4byte str_B_3_las_0001a560
	.4byte 0x00000027
	.4byte str_B_3_las_0001a560
	.4byte 0x00000038
	.4byte str_B_12_las_0001a568
	.4byte 0x00000039
	.4byte str_B_12_las_0001a568
	.4byte 0x00000041
	.4byte str_B_3_las_0001a560
	.4byte 0x00000045
	.4byte str_B_3_las_0001a560
.endobj pose_table_1_to_0

# .data:0x974 | 0x5638C | size: 0x18
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000034
	.4byte explosion_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x98C | 0x563A4 | size: 0xB4
.obj pose_sound_timing_table, local
	.4byte str_S_3A_las_0001a4f8
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_las_0001a570
	.4byte 0x00000001
	.4byte str_S_3A_las_0001a4f8
	.4byte 0x3E888889
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_las_0001a570
	.4byte 0x00000001
	.4byte str_S_3A_las_0001a4f8
	.4byte 0x3F088889
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_las_0001a570
	.4byte 0x00000001
	.4byte str_S_3A_las_0001a4f8
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_las_0001a570
	.4byte 0x00000001
	.4byte str_S_4A_las_0001a518
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_las_0001a570
	.4byte 0x00000001
	.4byte str_S_4A_las_0001a518
	.4byte 0x3E2AAAAB
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_las_0001a570
	.4byte 0x00000001
	.4byte str_S_4A_las_0001a518
	.4byte 0x3EAAAAAB
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_las_0001a570
	.4byte 0x00000001
	.4byte str_S_4A_las_0001a518
	.4byte 0x3F000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_las_0001a570
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
.endobj pose_sound_timing_table

# .data:0xA40 | 0x56458 | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_heavy_bom_las_0001a408
	.4byte str_c_heavy_las_0001a588
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
	.4byte str_ヘビーボム_las_0001a590
	.4byte str_c_heavy_las_0001a588
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

# .data:0xAD8 | 0x564F0 | size: 0xE4
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
	.4byte str_F_1_las_0001a59c
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

# .data:0xBBC | 0x565D4 | size: 0x1D8
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

# .data:0xD94 | 0x567AC | size: 0x1F8
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
	.4byte str_K_4_las_0001a508
	.4byte 0x0003005B
	.4byte btlevtcmd_AfterReactionEntry
	.4byte 0xFFFFFFFE
	.4byte 0x00000034
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_WAIT2_las_0001a5a0
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

# .data:0xF8C | 0x569A4 | size: 0x2BC
.obj attack_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_ATTAC_las_0001a5b8
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
	.4byte str_G_1_las_0001a5d0
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_2_las_0001a5d4
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_3_las_0001a5d8
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_4_las_0001a5dc
	.4byte 0x00000031
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_WAIT1_las_0001a5e0
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
	.4byte str_SFX_ENM_HEAVYB_ATTAC_las_0001a5f8
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
	.4byte str_G_1_las_0001a5d0
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_2_las_0001a5d4
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_3_las_0001a5d8
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_4_las_0001a5dc
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

# .data:0x1248 | 0x56C60 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1260 | 0x56C78 | size: 0xD0
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

# .data:0x1330 | 0x56D48 | size: 0x3F8
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
	.4byte str_SFX_ENM_HEAVYB_ATTAC_las_0001a610
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
	.4byte str_bomb_las_0001a628
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
	.4byte str_bomb_las_0001a628
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
	.4byte str_bomb_las_0001a628
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
	.4byte str_bomb_las_0001a628
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
	.4byte str_bomb_las_0001a628
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
	.4byte str_bomb_las_0001a628
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
	.4byte str_bomb_las_0001a628
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
