.include "macros.inc"
.file "unit_heavy_bom.o"

# 0x00001908..0x00001A68 | size: 0x160
.text
.balign 4

# .text:0x0 | 0x1908 | size: 0xE0
.fn _fire_point_callback, local
/* 00001908 000019CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000190C 000019D0  7C 08 02 A6 */	mflr r0
/* 00001910 000019D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001914 000019D8  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00001918 000019DC  83 E3 04 EC */	lwz r31, 0x4ec(r3)
/* 0000191C 000019E0  80 1F 02 18 */	lwz r0, 0x218(r31)
/* 00001920 000019E4  2C 00 00 00 */	cmpwi r0, 0x0
/* 00001924 000019E8  41 82 00 B0 */	beq .L_000019D4
/* 00001928 000019EC  80 1F 02 1C */	lwz r0, 0x21c(r31)
/* 0000192C 000019F0  80 63 01 C0 */	lwz r3, 0x1c0(r3)
/* 00001930 000019F4  2C 00 00 02 */	cmpwi r0, 0x2
/* 00001934 000019F8  41 82 00 3C */	beq .L_00001970
/* 00001938 000019FC  40 80 00 48 */	bge .L_00001980
/* 0000193C 00001A00  2C 00 00 00 */	cmpwi r0, 0x0
/* 00001940 00001A04  41 82 00 10 */	beq .L_00001950
/* 00001944 00001A08  40 80 00 1C */	bge .L_00001960
/* 00001948 00001A0C  48 00 00 38 */	b .L_00001980
/* 0000194C 00001A10  48 00 00 34 */	b .L_00001980
.L_00001950:
/* 00001950 00001A14  3C A0 00 00 */	lis r5, str_locator11_jon_0000ae78@ha
/* 00001954 00001A18  38 05 00 00 */	addi r0, r5, str_locator11_jon_0000ae78@l
/* 00001958 00001A1C  7C 1E 03 78 */	mr r30, r0
/* 0000195C 00001A20  48 00 00 30 */	b .L_0000198C
.L_00001960:
/* 00001960 00001A24  3C A0 00 00 */	lis r5, str_locator10_jon_0000ae84@ha
/* 00001964 00001A28  38 05 00 00 */	addi r0, r5, str_locator10_jon_0000ae84@l
/* 00001968 00001A2C  7C 1E 03 78 */	mr r30, r0
/* 0000196C 00001A30  48 00 00 20 */	b .L_0000198C
.L_00001970:
/* 00001970 00001A34  3C A0 00 00 */	lis r5, str_locator9_jon_0000ae90@ha
/* 00001974 00001A38  38 05 00 00 */	addi r0, r5, str_locator9_jon_0000ae90@l
/* 00001978 00001A3C  7C 1E 03 78 */	mr r30, r0
/* 0000197C 00001A40  48 00 00 10 */	b .L_0000198C
.L_00001980:
/* 00001980 00001A44  3C A0 00 00 */	lis r5, str_locator8_jon_0000ae9c@ha
/* 00001984 00001A48  38 05 00 00 */	addi r0, r5, str_locator8_jon_0000ae9c@l
/* 00001988 00001A4C  7C 1E 03 78 */	mr r30, r0
.L_0000198C:
/* 0000198C 00001A50  4B FF F0 E5 */	bl animPoseGetGroupName
/* 00001990 00001A54  7C 64 1B 78 */	mr r4, r3
/* 00001994 00001A58  7F C3 F3 78 */	mr r3, r30
/* 00001998 00001A5C  4B FF F0 D9 */	bl strcmp
/* 0000199C 00001A60  2C 03 00 00 */	cmpwi r3, 0x0
/* 000019A0 00001A64  40 82 00 34 */	bne .L_000019D4
/* 000019A4 00001A68  7F E3 FB 78 */	mr r3, r31
/* 000019A8 00001A6C  38 80 00 02 */	li r4, 0x2
/* 000019AC 00001A70  4B FF F0 C5 */	bl BtlUnit_GetPartsPtr
/* 000019B0 00001A74  83 C3 01 C0 */	lwz r30, 0x1c0(r3)
/* 000019B4 00001A78  3C 60 00 00 */	lis r3, str_pPlaneShape3_jon_0000aea8@ha
/* 000019B8 00001A7C  38 83 00 00 */	addi r4, r3, str_pPlaneShape3_jon_0000aea8@l
/* 000019BC 00001A80  7F C3 F3 78 */	mr r3, r30
/* 000019C0 00001A84  4B FF F0 B1 */	bl animPoseGetShapeIdx
/* 000019C4 00001A88  7C 60 1B 78 */	mr r0, r3
/* 000019C8 00001A8C  7F C3 F3 78 */	mr r3, r30
/* 000019CC 00001A90  7C 04 03 78 */	mr r4, r0
/* 000019D0 00001A94  4B FF F0 A1 */	bl animPoseDrawShape
.L_000019D4:
/* 000019D4 00001A98  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000019D8 00001A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000019DC 00001AA0  7C 08 03 A6 */	mtlr r0
/* 000019E0 00001AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 000019E4 00001AA8  4E 80 00 20 */	blr
.endfn _fire_point_callback

# .text:0xE0 | 0x19E8 | size: 0x80
.fn _set_draw_callback, local
/* 000019E8 00001AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000019EC 00001AB0  7C 08 02 A6 */	mflr r0
/* 000019F0 00001AB4  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 000019F4 00001AB8  38 80 FF FE */	li r4, -0x2
/* 000019F8 00001ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 000019FC 00001AC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00001A00 00001AC4  83 E5 00 00 */	lwz r31, _battleWorkPointer@l(r5)
/* 00001A04 00001AC8  4B FF F0 6D */	bl BattleTransID
/* 00001A08 00001ACC  7C 60 1B 78 */	mr r0, r3
/* 00001A0C 00001AD0  7F E3 FB 78 */	mr r3, r31
/* 00001A10 00001AD4  7C 04 03 78 */	mr r4, r0
/* 00001A14 00001AD8  4B FF F0 5D */	bl BattleGetUnitPtr
/* 00001A18 00001ADC  38 80 00 01 */	li r4, 0x1
/* 00001A1C 00001AE0  7C 7F 1B 78 */	mr r31, r3
/* 00001A20 00001AE4  4B FF F0 51 */	bl BtlUnit_GetPartsPtr
/* 00001A24 00001AE8  3C 80 00 00 */	lis r4, _fire_point_callback@ha
/* 00001A28 00001AEC  7C 65 1B 78 */	mr r5, r3
/* 00001A2C 00001AF0  80 63 01 C0 */	lwz r3, 0x1c0(r3)
/* 00001A30 00001AF4  38 84 00 00 */	addi r4, r4, _fire_point_callback@l
/* 00001A34 00001AF8  4B FF F0 3D */	bl animPoseSetDispCallBack
/* 00001A38 00001AFC  7F E3 FB 78 */	mr r3, r31
/* 00001A3C 00001B00  38 80 00 02 */	li r4, 0x2
/* 00001A40 00001B04  4B FF F0 31 */	bl BtlUnit_GetPartsPtr
/* 00001A44 00001B08  80 03 01 AC */	lwz r0, 0x1ac(r3)
/* 00001A48 00001B0C  64 00 01 00 */	oris r0, r0, 0x100
/* 00001A4C 00001B10  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 00001A50 00001B14  38 60 00 02 */	li r3, 0x2
/* 00001A54 00001B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00001A58 00001B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001A5C 00001B20  7C 08 03 A6 */	mtlr r0
/* 00001A60 00001B24  38 21 00 10 */	addi r1, r1, 0x10
/* 00001A64 00001B28  4E 80 00 20 */	blr
.endfn _set_draw_callback

# 0x00003C20..0x00003E88 | size: 0x268
.rodata
.balign 8

# .rodata:0x0 | 0x3C20 | size: 0x11
.obj str_btl_un_heavy_bom_jon_0000ac50, local
	.string "btl_un_heavy_bom"
.endobj str_btl_un_heavy_bom_jon_0000ac50

# .rodata:0x11 | 0x3C31 | size: 0x3
.obj gap_03_00003C31_rodata, global
.hidden gap_03_00003C31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003C31_rodata

# .rodata:0x14 | 0x3C34 | size: 0x18
.obj str_SFX_ENM_HEAVYB_DAMAG_jon_0000ac64, local
	.string "SFX_ENM_HEAVYB_DAMAGED1"
.endobj str_SFX_ENM_HEAVYB_DAMAG_jon_0000ac64

# .rodata:0x2C | 0x3C4C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000ac7c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000ac7c

# .rodata:0x41 | 0x3C61 | size: 0x3
.obj gap_03_00003C61_rodata, global
.hidden gap_03_00003C61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003C61_rodata

# .rodata:0x44 | 0x3C64 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000ac94, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000ac94

# .rodata:0x58 | 0x3C78 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000aca8, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000aca8

# .rodata:0x71 | 0x3C91 | size: 0x3
.obj gap_03_00003C91_rodata, global
.hidden gap_03_00003C91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003C91_rodata

# .rodata:0x74 | 0x3C94 | size: 0x4
.obj str_N_1_jon_0000acc4, local
	.string "N_1"
.endobj str_N_1_jon_0000acc4

# .rodata:0x78 | 0x3C98 | size: 0x4
.obj str_Y_1_jon_0000acc8, local
	.string "Y_1"
.endobj str_Y_1_jon_0000acc8

# .rodata:0x7C | 0x3C9C | size: 0x4
.obj str_K_1_jon_0000accc, local
	.string "K_1"
.endobj str_K_1_jon_0000accc

# .rodata:0x80 | 0x3CA0 | size: 0x4
.obj str_X_1_jon_0000acd0, local
	.string "X_1"
.endobj str_X_1_jon_0000acd0

# .rodata:0x84 | 0x3CA4 | size: 0x4
.obj str_Z_1_jon_0000acd4, local
	.string "Z_1"
.endobj str_Z_1_jon_0000acd4

# .rodata:0x88 | 0x3CA8 | size: 0x4
.obj str_S_1_jon_0000acd8, local
	.string "S_1"
.endobj str_S_1_jon_0000acd8

# .rodata:0x8C | 0x3CAC | size: 0x4
.obj str_D_1_jon_0000acdc, local
	.string "D_1"
.endobj str_D_1_jon_0000acdc

# .rodata:0x90 | 0x3CB0 | size: 0x4
.obj str_N_2_jon_0000ace0, local
	.string "N_2"
.endobj str_N_2_jon_0000ace0

# .rodata:0x94 | 0x3CB4 | size: 0x4
.obj str_Y_2_jon_0000ace4, local
	.string "Y_2"
.endobj str_Y_2_jon_0000ace4

# .rodata:0x98 | 0x3CB8 | size: 0x4
.obj str_K_2_jon_0000ace8, local
	.string "K_2"
.endobj str_K_2_jon_0000ace8

# .rodata:0x9C | 0x3CBC | size: 0x4
.obj str_X_2_jon_0000acec, local
	.string "X_2"
.endobj str_X_2_jon_0000acec

# .rodata:0xA0 | 0x3CC0 | size: 0x5
.obj str_Z_2B_jon_0000acf0, local
	.string "Z_2B"
.endobj str_Z_2B_jon_0000acf0

# .rodata:0xA5 | 0x3CC5 | size: 0x3
.obj gap_03_00003CC5_rodata, global
.hidden gap_03_00003CC5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003CC5_rodata

# .rodata:0xA8 | 0x3CC8 | size: 0x5
.obj str_S_2B_jon_0000acf8, local
	.string "S_2B"
.endobj str_S_2B_jon_0000acf8

# .rodata:0xAD | 0x3CCD | size: 0x3
.obj gap_03_00003CCD_rodata, global
.hidden gap_03_00003CCD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003CCD_rodata

# .rodata:0xB0 | 0x3CD0 | size: 0x4
.obj str_D_2_jon_0000ad00, local
	.string "D_2"
.endobj str_D_2_jon_0000ad00

# .rodata:0xB4 | 0x3CD4 | size: 0x5
.obj str_Z_2A_jon_0000ad04, local
	.string "Z_2A"
.endobj str_Z_2A_jon_0000ad04

# .rodata:0xB9 | 0x3CD9 | size: 0x3
.obj gap_03_00003CD9_rodata, global
.hidden gap_03_00003CD9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003CD9_rodata

# .rodata:0xBC | 0x3CDC | size: 0x5
.obj str_S_2A_jon_0000ad0c, local
	.string "S_2A"
.endobj str_S_2A_jon_0000ad0c

# .rodata:0xC1 | 0x3CE1 | size: 0x3
.obj gap_03_00003CE1_rodata, global
.hidden gap_03_00003CE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003CE1_rodata

# .rodata:0xC4 | 0x3CE4 | size: 0x4
.obj str_N_3_jon_0000ad14, local
	.string "N_3"
.endobj str_N_3_jon_0000ad14

# .rodata:0xC8 | 0x3CE8 | size: 0x4
.obj str_Y_3_jon_0000ad18, local
	.string "Y_3"
.endobj str_Y_3_jon_0000ad18

# .rodata:0xCC | 0x3CEC | size: 0x4
.obj str_K_3_jon_0000ad1c, local
	.string "K_3"
.endobj str_K_3_jon_0000ad1c

# .rodata:0xD0 | 0x3CF0 | size: 0x4
.obj str_X_3_jon_0000ad20, local
	.string "X_3"
.endobj str_X_3_jon_0000ad20

# .rodata:0xD4 | 0x3CF4 | size: 0x5
.obj str_Z_3B_jon_0000ad24, local
	.string "Z_3B"
.endobj str_Z_3B_jon_0000ad24

# .rodata:0xD9 | 0x3CF9 | size: 0x3
.obj gap_03_00003CF9_rodata, global
.hidden gap_03_00003CF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003CF9_rodata

# .rodata:0xDC | 0x3CFC | size: 0x5
.obj str_S_3B_jon_0000ad2c, local
	.string "S_3B"
.endobj str_S_3B_jon_0000ad2c

# .rodata:0xE1 | 0x3D01 | size: 0x3
.obj gap_03_00003D01_rodata, global
.hidden gap_03_00003D01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003D01_rodata

# .rodata:0xE4 | 0x3D04 | size: 0x4
.obj str_D_3_jon_0000ad34, local
	.string "D_3"
.endobj str_D_3_jon_0000ad34

# .rodata:0xE8 | 0x3D08 | size: 0x5
.obj str_Z_3A_jon_0000ad38, local
	.string "Z_3A"
.endobj str_Z_3A_jon_0000ad38

# .rodata:0xED | 0x3D0D | size: 0x3
.obj gap_03_00003D0D_rodata, global
.hidden gap_03_00003D0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003D0D_rodata

# .rodata:0xF0 | 0x3D10 | size: 0x5
.obj str_S_3A_jon_0000ad40, local
	.string "S_3A"
.endobj str_S_3A_jon_0000ad40

# .rodata:0xF5 | 0x3D15 | size: 0x3
.obj gap_03_00003D15_rodata, global
.hidden gap_03_00003D15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003D15_rodata

# .rodata:0xF8 | 0x3D18 | size: 0x4
.obj str_N_4_jon_0000ad48, local
	.string "N_4"
.endobj str_N_4_jon_0000ad48

# .rodata:0xFC | 0x3D1C | size: 0x4
.obj str_Y_4_jon_0000ad4c, local
	.string "Y_4"
.endobj str_Y_4_jon_0000ad4c

# .rodata:0x100 | 0x3D20 | size: 0x4
.obj str_K_4_jon_0000ad50, local
	.string "K_4"
.endobj str_K_4_jon_0000ad50

# .rodata:0x104 | 0x3D24 | size: 0x4
.obj str_X_4_jon_0000ad54, local
	.string "X_4"
.endobj str_X_4_jon_0000ad54

# .rodata:0x108 | 0x3D28 | size: 0x5
.obj str_Z_4A_jon_0000ad58, local
	.string "Z_4A"
.endobj str_Z_4A_jon_0000ad58

# .rodata:0x10D | 0x3D2D | size: 0x3
.obj gap_03_00003D2D_rodata, global
.hidden gap_03_00003D2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003D2D_rodata

# .rodata:0x110 | 0x3D30 | size: 0x5
.obj str_S_4A_jon_0000ad60, local
	.string "S_4A"
.endobj str_S_4A_jon_0000ad60

# .rodata:0x115 | 0x3D35 | size: 0x3
.obj gap_03_00003D35_rodata, global
.hidden gap_03_00003D35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003D35_rodata

# .rodata:0x118 | 0x3D38 | size: 0x4
.obj str_D_4_jon_0000ad68, local
	.string "D_4"
.endobj str_D_4_jon_0000ad68

# .rodata:0x11C | 0x3D3C | size: 0x5
.obj str_Z_4B_jon_0000ad6c, local
	.string "Z_4B"
.endobj str_Z_4B_jon_0000ad6c

# .rodata:0x121 | 0x3D41 | size: 0x3
.obj gap_03_00003D41_rodata, global
.hidden gap_03_00003D41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003D41_rodata

# .rodata:0x124 | 0x3D44 | size: 0x5
.obj str_S_4B_jon_0000ad74, local
	.string "S_4B"
.endobj str_S_4B_jon_0000ad74

# .rodata:0x129 | 0x3D49 | size: 0x3
.obj gap_03_00003D49_rodata, global
.hidden gap_03_00003D49_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003D49_rodata

# .rodata:0x12C | 0x3D4C | size: 0x4
.obj str_B_4_jon_0000ad7c, local
	.string "B_4"
.endobj str_B_4_jon_0000ad7c

# .rodata:0x130 | 0x3D50 | size: 0x4
.obj str_B_1_jon_0000ad80, local
	.string "B_1"
.endobj str_B_1_jon_0000ad80

# .rodata:0x134 | 0x3D54 | size: 0x4
.obj str_B_7_jon_0000ad84, local
	.string "B_7"
.endobj str_B_7_jon_0000ad84

# .rodata:0x138 | 0x3D58 | size: 0x5
.obj str_B_10_jon_0000ad88, local
	.string "B_10"
.endobj str_B_10_jon_0000ad88

# .rodata:0x13D | 0x3D5D | size: 0x3
.obj gap_03_00003D5D_rodata, global
.hidden gap_03_00003D5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003D5D_rodata

# .rodata:0x140 | 0x3D60 | size: 0x4
.obj str_B_5_jon_0000ad90, local
	.string "B_5"
.endobj str_B_5_jon_0000ad90

# .rodata:0x144 | 0x3D64 | size: 0x4
.obj str_B_2_jon_0000ad94, local
	.string "B_2"
.endobj str_B_2_jon_0000ad94

# .rodata:0x148 | 0x3D68 | size: 0x4
.obj str_B_8_jon_0000ad98, local
	.string "B_8"
.endobj str_B_8_jon_0000ad98

# .rodata:0x14C | 0x3D6C | size: 0x5
.obj str_B_11_jon_0000ad9c, local
	.string "B_11"
.endobj str_B_11_jon_0000ad9c

# .rodata:0x151 | 0x3D71 | size: 0x3
.obj gap_03_00003D71_rodata, global
.hidden gap_03_00003D71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003D71_rodata

# .rodata:0x154 | 0x3D74 | size: 0x4
.obj str_B_6_jon_0000ada4, local
	.string "B_6"
.endobj str_B_6_jon_0000ada4

# .rodata:0x158 | 0x3D78 | size: 0x4
.obj str_B_3_jon_0000ada8, local
	.string "B_3"
.endobj str_B_3_jon_0000ada8

# .rodata:0x15C | 0x3D7C | size: 0x4
.obj str_B_9_jon_0000adac, local
	.string "B_9"
.endobj str_B_9_jon_0000adac

# .rodata:0x160 | 0x3D80 | size: 0x5
.obj str_B_12_jon_0000adb0, local
	.string "B_12"
.endobj str_B_12_jon_0000adb0

# .rodata:0x165 | 0x3D85 | size: 0x3
.obj gap_03_00003D85_rodata, global
.hidden gap_03_00003D85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003D85_rodata

# .rodata:0x168 | 0x3D88 | size: 0x15
.obj str_SFX_ENM_HEAVYB_WAIT3_jon_0000adb8, local
	.string "SFX_ENM_HEAVYB_WAIT3"
.endobj str_SFX_ENM_HEAVYB_WAIT3_jon_0000adb8

# .rodata:0x17D | 0x3D9D | size: 0x3
.obj gap_03_00003D9D_rodata, global
.hidden gap_03_00003D9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003D9D_rodata

# .rodata:0x180 | 0x3DA0 | size: 0x8
.obj str_c_heavy_jon_0000add0, local
	.string "c_heavy"
.endobj str_c_heavy_jon_0000add0

# .rodata:0x188 | 0x3DA8 | size: 0xB
.obj str_ヘビーボム_jon_0000add8, local
	.4byte 0x83778372
	.4byte 0x815B837B
	.byte 0x83, 0x80, 0x00
.endobj str_ヘビーボム_jon_0000add8

# .rodata:0x193 | 0x3DB3 | size: 0x1
.obj gap_03_00003DB3_rodata, global
.hidden gap_03_00003DB3_rodata
	.byte 0x00
.endobj gap_03_00003DB3_rodata

# .rodata:0x194 | 0x3DB4 | size: 0x4
.obj str_F_1_jon_0000ade4, local
	.string "F_1"
.endobj str_F_1_jon_0000ade4

# .rodata:0x198 | 0x3DB8 | size: 0x15
.obj str_SFX_ENM_HEAVYB_WAIT2_jon_0000ade8, local
	.string "SFX_ENM_HEAVYB_WAIT2"
.endobj str_SFX_ENM_HEAVYB_WAIT2_jon_0000ade8

# .rodata:0x1AD | 0x3DCD | size: 0x3
.obj gap_03_00003DCD_rodata, global
.hidden gap_03_00003DCD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003DCD_rodata

# .rodata:0x1B0 | 0x3DD0 | size: 0x17
.obj str_SFX_ENM_HEAVYB_ATTAC_jon_0000ae00, local
	.string "SFX_ENM_HEAVYB_ATTACK1"
.endobj str_SFX_ENM_HEAVYB_ATTAC_jon_0000ae00

# .rodata:0x1C7 | 0x3DE7 | size: 0x1
.obj gap_03_00003DE7_rodata, global
.hidden gap_03_00003DE7_rodata
	.byte 0x00
.endobj gap_03_00003DE7_rodata

# .rodata:0x1C8 | 0x3DE8 | size: 0x4
.obj str_G_1_jon_0000ae18, local
	.string "G_1"
.endobj str_G_1_jon_0000ae18

# .rodata:0x1CC | 0x3DEC | size: 0x4
.obj str_G_2_jon_0000ae1c, local
	.string "G_2"
.endobj str_G_2_jon_0000ae1c

# .rodata:0x1D0 | 0x3DF0 | size: 0x4
.obj str_G_3_jon_0000ae20, local
	.string "G_3"
.endobj str_G_3_jon_0000ae20

# .rodata:0x1D4 | 0x3DF4 | size: 0x4
.obj str_G_4_jon_0000ae24, local
	.string "G_4"
.endobj str_G_4_jon_0000ae24

# .rodata:0x1D8 | 0x3DF8 | size: 0x15
.obj str_SFX_ENM_HEAVYB_WAIT1_jon_0000ae28, local
	.string "SFX_ENM_HEAVYB_WAIT1"
.endobj str_SFX_ENM_HEAVYB_WAIT1_jon_0000ae28

# .rodata:0x1ED | 0x3E0D | size: 0x3
.obj gap_03_00003E0D_rodata, global
.hidden gap_03_00003E0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003E0D_rodata

# .rodata:0x1F0 | 0x3E10 | size: 0x17
.obj str_SFX_ENM_HEAVYB_ATTAC_jon_0000ae40, local
	.string "SFX_ENM_HEAVYB_ATTACK2"
.endobj str_SFX_ENM_HEAVYB_ATTAC_jon_0000ae40

# .rodata:0x207 | 0x3E27 | size: 0x1
.obj gap_03_00003E27_rodata, global
.hidden gap_03_00003E27_rodata
	.byte 0x00
.endobj gap_03_00003E27_rodata

# .rodata:0x208 | 0x3E28 | size: 0x17
.obj str_SFX_ENM_HEAVYB_ATTAC_jon_0000ae58, local
	.string "SFX_ENM_HEAVYB_ATTACK3"
.endobj str_SFX_ENM_HEAVYB_ATTAC_jon_0000ae58

# .rodata:0x21F | 0x3E3F | size: 0x1
.obj gap_03_00003E3F_rodata, global
.hidden gap_03_00003E3F_rodata
	.byte 0x00
.endobj gap_03_00003E3F_rodata

# .rodata:0x220 | 0x3E40 | size: 0x5
.obj str_bomb_jon_0000ae70, local
	.string "bomb"
.endobj str_bomb_jon_0000ae70

# .rodata:0x225 | 0x3E45 | size: 0x3
.obj gap_03_00003E45_rodata, global
.hidden gap_03_00003E45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003E45_rodata

# .rodata:0x228 | 0x3E48 | size: 0xA
.obj str_locator11_jon_0000ae78, local
	.string "locator11"
.endobj str_locator11_jon_0000ae78

# .rodata:0x232 | 0x3E52 | size: 0x2
.obj gap_03_00003E52_rodata, global
.hidden gap_03_00003E52_rodata
	.2byte 0x0000
.endobj gap_03_00003E52_rodata

# .rodata:0x234 | 0x3E54 | size: 0xA
.obj str_locator10_jon_0000ae84, local
	.string "locator10"
.endobj str_locator10_jon_0000ae84

# .rodata:0x23E | 0x3E5E | size: 0x2
.obj gap_03_00003E5E_rodata, global
.hidden gap_03_00003E5E_rodata
	.2byte 0x0000
.endobj gap_03_00003E5E_rodata

# .rodata:0x240 | 0x3E60 | size: 0x9
.obj str_locator9_jon_0000ae90, local
	.string "locator9"
.endobj str_locator9_jon_0000ae90

# .rodata:0x249 | 0x3E69 | size: 0x3
.obj gap_03_00003E69_rodata, global
.hidden gap_03_00003E69_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003E69_rodata

# .rodata:0x24C | 0x3E6C | size: 0x9
.obj str_locator8_jon_0000ae9c, local
	.string "locator8"
.endobj str_locator8_jon_0000ae9c

# .rodata:0x255 | 0x3E75 | size: 0x3
.obj gap_03_00003E75_rodata, global
.hidden gap_03_00003E75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003E75_rodata

# .rodata:0x258 | 0x3E78 | size: 0xD
.obj str_pPlaneShape3_jon_0000aea8, local
	.string "pPlaneShape3"
.endobj str_pPlaneShape3_jon_0000aea8

# .rodata:0x265 | 0x3E85 | size: 0x3
.obj gap_03_00003E85_rodata, global
.hidden gap_03_00003E85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003E85_rodata

# 0x00034128..0x00035850 | size: 0x1728
.data
.balign 8

# .data:0x0 | 0x34128 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x34130 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x34134 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x34138 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3413C | size: 0x4
.obj gap_04_0003413C_data, global
.hidden gap_04_0003413C_data
	.4byte 0x00000000
.endobj gap_04_0003413C_data

# .data:0x18 | 0x34140 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x34148 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3414C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x34150 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x34158 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3415C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x34160 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x34164 | size: 0x4
.obj gap_04_00034164_data, global
.hidden gap_04_00034164_data
	.4byte 0x00000000
.endobj gap_04_00034164_data

# .data:0x40 | 0x34168 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x34170 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x34174 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x34178 | size: 0xC4
.obj unit_heavy_bom_14_data_34178, global
	.4byte 0x0000005C
	.4byte str_btl_un_heavy_bom_jon_0000ac50
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
	.4byte str_SFX_ENM_HEAVYB_DAMAG_jon_0000ac64
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000ac7c
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000ac94
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000aca8
	.4byte 0x00000000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_heavy_bom_14_data_34178

# .data:0x114 | 0x3423C | size: 0xC0
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

# .data:0x1D4 | 0x342FC | size: 0xC0
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

# .data:0x294 | 0x343BC | size: 0xC0
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

# .data:0x354 | 0x3447C | size: 0xC0
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

# .data:0x414 | 0x3453C | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x419 | 0x34541 | size: 0x3
.obj gap_04_00034541_data, global
.hidden gap_04_00034541_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00034541_data

# .data:0x41C | 0x34544 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x421 | 0x34549 | size: 0x3
.obj gap_04_00034549_data, global
.hidden gap_04_00034549_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00034549_data

# .data:0x424 | 0x3454C | size: 0x16
.obj regist, local
	.4byte 0x5A4B4600
	.4byte 0x46966464
	.4byte 0x64506450
	.4byte 0x645F4650
	.4byte 0x14644664
	.2byte 0x645F
.endobj regist

# .data:0x43A | 0x34562 | size: 0x2
.obj gap_04_00034562_data, global
.hidden gap_04_00034562_data
	.2byte 0x0000
.endobj gap_04_00034562_data

# .data:0x43C | 0x34564 | size: 0x80
.obj pose_table_3, local
	.4byte 0x00000001
	.4byte str_N_1_jon_0000acc4
	.4byte 0x00000009
	.4byte str_Y_1_jon_0000acc8
	.4byte 0x00000002
	.4byte str_Y_1_jon_0000acc8
	.4byte 0x00000003
	.4byte str_K_1_jon_0000accc
	.4byte 0x00000004
	.4byte str_X_1_jon_0000acd0
	.4byte 0x00000005
	.4byte str_K_1_jon_0000accc
	.4byte 0x00000009
	.4byte str_Z_1_jon_0000acd4
	.4byte 0x0000001C
	.4byte str_S_1_jon_0000acd8
	.4byte 0x0000001D
	.4byte str_D_1_jon_0000acdc
	.4byte 0x00000023
	.4byte str_S_1_jon_0000acd8
	.4byte 0x0000001F
	.4byte str_S_1_jon_0000acd8
	.4byte 0x00000027
	.4byte str_D_1_jon_0000acdc
	.4byte 0x00000038
	.4byte str_X_1_jon_0000acd0
	.4byte 0x00000039
	.4byte str_X_1_jon_0000acd0
	.4byte 0x00000041
	.4byte str_S_1_jon_0000acd8
	.4byte 0x00000045
	.4byte str_S_1_jon_0000acd8
.endobj pose_table_3

# .data:0x4BC | 0x345E4 | size: 0x80
.obj pose_table_3_fire, local
	.4byte 0x00000001
	.4byte str_N_1_jon_0000acc4
	.4byte 0x00000009
	.4byte str_Y_1_jon_0000acc8
	.4byte 0x00000002
	.4byte str_Y_1_jon_0000acc8
	.4byte 0x00000003
	.4byte str_K_1_jon_0000accc
	.4byte 0x00000004
	.4byte str_X_1_jon_0000acd0
	.4byte 0x00000005
	.4byte str_K_1_jon_0000accc
	.4byte 0x00000009
	.4byte str_Z_1_jon_0000acd4
	.4byte 0x0000001C
	.4byte str_S_1_jon_0000acd8
	.4byte 0x0000001D
	.4byte str_D_1_jon_0000acdc
	.4byte 0x00000023
	.4byte str_S_1_jon_0000acd8
	.4byte 0x0000001F
	.4byte str_S_1_jon_0000acd8
	.4byte 0x00000027
	.4byte str_D_1_jon_0000acdc
	.4byte 0x00000038
	.4byte str_X_1_jon_0000acd0
	.4byte 0x00000039
	.4byte str_X_1_jon_0000acd0
	.4byte 0x00000041
	.4byte str_S_1_jon_0000acd8
	.4byte 0x00000045
	.4byte str_S_1_jon_0000acd8
.endobj pose_table_3_fire

# .data:0x53C | 0x34664 | size: 0x80
.obj pose_table_2, local
	.4byte 0x00000001
	.4byte str_N_2_jon_0000ace0
	.4byte 0x00000009
	.4byte str_Y_2_jon_0000ace4
	.4byte 0x00000002
	.4byte str_Y_2_jon_0000ace4
	.4byte 0x00000003
	.4byte str_K_2_jon_0000ace8
	.4byte 0x00000004
	.4byte str_X_2_jon_0000acec
	.4byte 0x00000005
	.4byte str_K_2_jon_0000ace8
	.4byte 0x00000009
	.4byte str_Z_2B_jon_0000acf0
	.4byte 0x0000001C
	.4byte str_S_2B_jon_0000acf8
	.4byte 0x0000001D
	.4byte str_D_2_jon_0000ad00
	.4byte 0x00000023
	.4byte str_S_2B_jon_0000acf8
	.4byte 0x0000001F
	.4byte str_S_2B_jon_0000acf8
	.4byte 0x00000027
	.4byte str_D_2_jon_0000ad00
	.4byte 0x00000038
	.4byte str_X_2_jon_0000acec
	.4byte 0x00000039
	.4byte str_X_2_jon_0000acec
	.4byte 0x00000041
	.4byte str_S_2B_jon_0000acf8
	.4byte 0x00000045
	.4byte str_S_2B_jon_0000acf8
.endobj pose_table_2

# .data:0x5BC | 0x346E4 | size: 0x80
.obj pose_table_2_fire, local
	.4byte 0x00000001
	.4byte str_N_2_jon_0000ace0
	.4byte 0x00000009
	.4byte str_Y_2_jon_0000ace4
	.4byte 0x00000002
	.4byte str_Y_2_jon_0000ace4
	.4byte 0x00000003
	.4byte str_K_2_jon_0000ace8
	.4byte 0x00000004
	.4byte str_X_2_jon_0000acec
	.4byte 0x00000005
	.4byte str_K_2_jon_0000ace8
	.4byte 0x00000009
	.4byte str_Z_2A_jon_0000ad04
	.4byte 0x0000001C
	.4byte str_S_2A_jon_0000ad0c
	.4byte 0x0000001D
	.4byte str_D_2_jon_0000ad00
	.4byte 0x00000023
	.4byte str_S_2A_jon_0000ad0c
	.4byte 0x0000001F
	.4byte str_S_2A_jon_0000ad0c
	.4byte 0x00000027
	.4byte str_D_2_jon_0000ad00
	.4byte 0x00000038
	.4byte str_X_2_jon_0000acec
	.4byte 0x00000039
	.4byte str_X_2_jon_0000acec
	.4byte 0x00000041
	.4byte str_S_2A_jon_0000ad0c
	.4byte 0x00000045
	.4byte str_S_2A_jon_0000ad0c
.endobj pose_table_2_fire

# .data:0x63C | 0x34764 | size: 0x80
.obj pose_table_1, local
	.4byte 0x00000001
	.4byte str_N_3_jon_0000ad14
	.4byte 0x00000009
	.4byte str_Y_3_jon_0000ad18
	.4byte 0x00000002
	.4byte str_Y_3_jon_0000ad18
	.4byte 0x00000003
	.4byte str_K_3_jon_0000ad1c
	.4byte 0x00000004
	.4byte str_X_3_jon_0000ad20
	.4byte 0x00000005
	.4byte str_K_3_jon_0000ad1c
	.4byte 0x00000009
	.4byte str_Z_3B_jon_0000ad24
	.4byte 0x0000001C
	.4byte str_S_3B_jon_0000ad2c
	.4byte 0x0000001D
	.4byte str_D_3_jon_0000ad34
	.4byte 0x00000023
	.4byte str_S_3B_jon_0000ad2c
	.4byte 0x0000001F
	.4byte str_S_3B_jon_0000ad2c
	.4byte 0x00000027
	.4byte str_D_3_jon_0000ad34
	.4byte 0x00000038
	.4byte str_X_3_jon_0000ad20
	.4byte 0x00000039
	.4byte str_X_3_jon_0000ad20
	.4byte 0x00000041
	.4byte str_S_3B_jon_0000ad2c
	.4byte 0x00000045
	.4byte str_S_3B_jon_0000ad2c
.endobj pose_table_1

# .data:0x6BC | 0x347E4 | size: 0x80
.obj pose_table_1_fire, local
	.4byte 0x00000001
	.4byte str_N_3_jon_0000ad14
	.4byte 0x00000009
	.4byte str_Y_3_jon_0000ad18
	.4byte 0x00000002
	.4byte str_Y_3_jon_0000ad18
	.4byte 0x00000003
	.4byte str_K_3_jon_0000ad1c
	.4byte 0x00000004
	.4byte str_X_3_jon_0000ad20
	.4byte 0x00000005
	.4byte str_K_3_jon_0000ad1c
	.4byte 0x00000009
	.4byte str_Z_3A_jon_0000ad38
	.4byte 0x0000001C
	.4byte str_S_3A_jon_0000ad40
	.4byte 0x0000001D
	.4byte str_D_3_jon_0000ad34
	.4byte 0x00000023
	.4byte str_S_3A_jon_0000ad40
	.4byte 0x0000001F
	.4byte str_S_3A_jon_0000ad40
	.4byte 0x00000027
	.4byte str_D_3_jon_0000ad34
	.4byte 0x00000038
	.4byte str_X_3_jon_0000ad20
	.4byte 0x00000039
	.4byte str_X_3_jon_0000ad20
	.4byte 0x00000041
	.4byte str_S_3A_jon_0000ad40
	.4byte 0x00000045
	.4byte str_S_3A_jon_0000ad40
.endobj pose_table_1_fire

# .data:0x73C | 0x34864 | size: 0x80
.obj pose_table_0_fire, local
	.4byte 0x00000001
	.4byte str_N_4_jon_0000ad48
	.4byte 0x00000009
	.4byte str_Y_4_jon_0000ad4c
	.4byte 0x00000002
	.4byte str_Y_4_jon_0000ad4c
	.4byte 0x00000003
	.4byte str_K_4_jon_0000ad50
	.4byte 0x00000004
	.4byte str_X_4_jon_0000ad54
	.4byte 0x00000005
	.4byte str_K_4_jon_0000ad50
	.4byte 0x00000009
	.4byte str_Z_4A_jon_0000ad58
	.4byte 0x0000001C
	.4byte str_S_4A_jon_0000ad60
	.4byte 0x0000001D
	.4byte str_D_4_jon_0000ad68
	.4byte 0x00000023
	.4byte str_S_4A_jon_0000ad60
	.4byte 0x0000001F
	.4byte str_S_4A_jon_0000ad60
	.4byte 0x00000027
	.4byte str_D_4_jon_0000ad68
	.4byte 0x00000038
	.4byte str_X_4_jon_0000ad54
	.4byte 0x00000039
	.4byte str_X_4_jon_0000ad54
	.4byte 0x00000041
	.4byte str_S_4A_jon_0000ad60
	.4byte 0x00000045
	.4byte str_S_4A_jon_0000ad60
.endobj pose_table_0_fire

# .data:0x7BC | 0x348E4 | size: 0x80
.obj pose_table_0, local
	.4byte 0x00000001
	.4byte str_N_4_jon_0000ad48
	.4byte 0x00000009
	.4byte str_Y_4_jon_0000ad4c
	.4byte 0x00000002
	.4byte str_Y_4_jon_0000ad4c
	.4byte 0x00000003
	.4byte str_K_4_jon_0000ad50
	.4byte 0x00000004
	.4byte str_X_4_jon_0000ad54
	.4byte 0x00000005
	.4byte str_K_4_jon_0000ad50
	.4byte 0x00000009
	.4byte str_Z_4B_jon_0000ad6c
	.4byte 0x0000001C
	.4byte str_S_4B_jon_0000ad74
	.4byte 0x0000001D
	.4byte str_D_4_jon_0000ad68
	.4byte 0x00000023
	.4byte str_S_4B_jon_0000ad74
	.4byte 0x0000001F
	.4byte str_S_4B_jon_0000ad74
	.4byte 0x00000027
	.4byte str_D_4_jon_0000ad68
	.4byte 0x00000038
	.4byte str_X_4_jon_0000ad54
	.4byte 0x00000039
	.4byte str_X_4_jon_0000ad54
	.4byte 0x00000041
	.4byte str_S_4B_jon_0000ad74
	.4byte 0x00000045
	.4byte str_S_4B_jon_0000ad74
.endobj pose_table_0

# .data:0x83C | 0x34964 | size: 0x68
.obj pose_table_3_to_2, local
	.4byte 0x00000001
	.4byte str_B_4_jon_0000ad7c
	.4byte 0x00000009
	.4byte str_B_1_jon_0000ad80
	.4byte 0x00000002
	.4byte str_B_1_jon_0000ad80
	.4byte 0x00000003
	.4byte str_B_7_jon_0000ad84
	.4byte 0x00000004
	.4byte str_B_10_jon_0000ad88
	.4byte 0x00000005
	.4byte str_B_7_jon_0000ad84
	.4byte 0x0000001C
	.4byte str_B_1_jon_0000ad80
	.4byte 0x0000001F
	.4byte str_B_1_jon_0000ad80
	.4byte 0x00000027
	.4byte str_B_1_jon_0000ad80
	.4byte 0x00000038
	.4byte str_B_10_jon_0000ad88
	.4byte 0x00000039
	.4byte str_B_10_jon_0000ad88
	.4byte 0x00000041
	.4byte str_B_1_jon_0000ad80
	.4byte 0x00000045
	.4byte str_B_1_jon_0000ad80
.endobj pose_table_3_to_2

# .data:0x8A4 | 0x349CC | size: 0x68
.obj pose_table_2_to_1, local
	.4byte 0x00000001
	.4byte str_B_5_jon_0000ad90
	.4byte 0x00000009
	.4byte str_B_2_jon_0000ad94
	.4byte 0x00000002
	.4byte str_B_2_jon_0000ad94
	.4byte 0x00000003
	.4byte str_B_8_jon_0000ad98
	.4byte 0x00000004
	.4byte str_B_11_jon_0000ad9c
	.4byte 0x00000005
	.4byte str_B_8_jon_0000ad98
	.4byte 0x0000001C
	.4byte str_B_2_jon_0000ad94
	.4byte 0x0000001F
	.4byte str_B_2_jon_0000ad94
	.4byte 0x00000027
	.4byte str_B_2_jon_0000ad94
	.4byte 0x00000038
	.4byte str_B_11_jon_0000ad9c
	.4byte 0x00000039
	.4byte str_B_11_jon_0000ad9c
	.4byte 0x00000041
	.4byte str_B_2_jon_0000ad94
	.4byte 0x00000045
	.4byte str_B_2_jon_0000ad94
.endobj pose_table_2_to_1

# .data:0x90C | 0x34A34 | size: 0x68
.obj pose_table_1_to_0, local
	.4byte 0x00000001
	.4byte str_B_6_jon_0000ada4
	.4byte 0x00000009
	.4byte str_B_3_jon_0000ada8
	.4byte 0x00000002
	.4byte str_B_3_jon_0000ada8
	.4byte 0x00000003
	.4byte str_B_9_jon_0000adac
	.4byte 0x00000004
	.4byte str_B_12_jon_0000adb0
	.4byte 0x00000005
	.4byte str_B_9_jon_0000adac
	.4byte 0x0000001C
	.4byte str_B_3_jon_0000ada8
	.4byte 0x0000001F
	.4byte str_B_3_jon_0000ada8
	.4byte 0x00000027
	.4byte str_B_3_jon_0000ada8
	.4byte 0x00000038
	.4byte str_B_12_jon_0000adb0
	.4byte 0x00000039
	.4byte str_B_12_jon_0000adb0
	.4byte 0x00000041
	.4byte str_B_3_jon_0000ada8
	.4byte 0x00000045
	.4byte str_B_3_jon_0000ada8
.endobj pose_table_1_to_0

# .data:0x974 | 0x34A9C | size: 0x18
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000034
	.4byte explosion_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x98C | 0x34AB4 | size: 0xB4
.obj pose_sound_timing_table, local
	.4byte str_S_3A_jon_0000ad40
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000adb8
	.4byte 0x00000001
	.4byte str_S_3A_jon_0000ad40
	.4byte 0x3E888889
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000adb8
	.4byte 0x00000001
	.4byte str_S_3A_jon_0000ad40
	.4byte 0x3F088889
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000adb8
	.4byte 0x00000001
	.4byte str_S_3A_jon_0000ad40
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000adb8
	.4byte 0x00000001
	.4byte str_S_4A_jon_0000ad60
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000adb8
	.4byte 0x00000001
	.4byte str_S_4A_jon_0000ad60
	.4byte 0x3E2AAAAB
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000adb8
	.4byte 0x00000001
	.4byte str_S_4A_jon_0000ad60
	.4byte 0x3EAAAAAB
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000adb8
	.4byte 0x00000001
	.4byte str_S_4A_jon_0000ad60
	.4byte 0x3F000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_jon_0000adb8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
.endobj pose_sound_timing_table

# .data:0xA40 | 0x34B68 | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_heavy_bom_jon_0000ac50
	.4byte str_c_heavy_jon_0000add0
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
	.4byte str_ヘビーボム_jon_0000add8
	.4byte str_c_heavy_jon_0000add0
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

# .data:0xAD8 | 0x34C00 | size: 0xE4
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
	.4byte str_F_1_jon_0000ade4
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

# .data:0xBBC | 0x34CE4 | size: 0x1D8
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

# .data:0xD94 | 0x34EBC | size: 0x1F8
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
	.4byte str_K_4_jon_0000ad50
	.4byte 0x0003005B
	.4byte btlevtcmd_AfterReactionEntry
	.4byte 0xFFFFFFFE
	.4byte 0x00000034
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_WAIT2_jon_0000ade8
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

# .data:0xF8C | 0x350B4 | size: 0x2BC
.obj attack_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_ATTAC_jon_0000ae00
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
	.4byte str_G_1_jon_0000ae18
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_2_jon_0000ae1c
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_3_jon_0000ae20
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_4_jon_0000ae24
	.4byte 0x00000031
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_WAIT1_jon_0000ae28
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
	.4byte str_SFX_ENM_HEAVYB_ATTAC_jon_0000ae40
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
	.4byte str_G_1_jon_0000ae18
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_2_jon_0000ae1c
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_3_jon_0000ae20
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_4_jon_0000ae24
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

# .data:0x1248 | 0x35370 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1260 | 0x35388 | size: 0xD0
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

# .data:0x1330 | 0x35458 | size: 0x3F8
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
	.4byte str_SFX_ENM_HEAVYB_ATTAC_jon_0000ae58
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
	.4byte str_bomb_jon_0000ae70
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
	.4byte str_bomb_jon_0000ae70
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
	.4byte str_bomb_jon_0000ae70
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
	.4byte str_bomb_jon_0000ae70
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
	.4byte str_bomb_jon_0000ae70
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
	.4byte str_bomb_jon_0000ae70
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
	.4byte str_bomb_jon_0000ae70
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
