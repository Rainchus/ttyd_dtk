.include "macros.inc"
.file "tou_06.o"

# 0x00006B7C..0x00006DF4 | size: 0x278
.text
.balign 4

# .text:0x0 | 0x6B7C | size: 0x68
.fn iri_13_make_name, local
/* 00006B7C 00006C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006B80 00006C44  7C 08 02 A6 */	mflr r0
/* 00006B84 00006C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006B88 00006C4C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00006B8C 00006C50  7C 7E 1B 78 */	mr r30, r3
/* 00006B90 00006C54  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00006B94 00006C58  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00006B98 00006C5C  4B FF C8 85 */	bl evtGetValue
/* 00006B9C 00006C60  3C 80 00 00 */	lis r4, str_pantsPCT02d_tou_0000eda4@ha
/* 00006BA0 00006C64  3C C0 00 00 */	lis r6, name$649@ha
/* 00006BA4 00006C68  7C 65 1B 78 */	mr r5, r3
/* 00006BA8 00006C6C  38 66 00 00 */	addi r3, r6, name$649@l
/* 00006BAC 00006C70  38 84 00 00 */	addi r4, r4, str_pantsPCT02d_tou_0000eda4@l
/* 00006BB0 00006C74  4C C6 31 82 */	crclr cr1eq
/* 00006BB4 00006C78  4B FF C8 69 */	bl sprintf
/* 00006BB8 00006C7C  3C 60 00 00 */	lis r3, name$649@ha
/* 00006BBC 00006C80  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00006BC0 00006C84  38 A3 00 00 */	addi r5, r3, name$649@l
/* 00006BC4 00006C88  7F C3 F3 78 */	mr r3, r30
/* 00006BC8 00006C8C  4B FF C8 55 */	bl evtSetValue
/* 00006BCC 00006C90  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00006BD0 00006C94  38 60 00 02 */	li r3, 0x2
/* 00006BD4 00006C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006BD8 00006C9C  7C 08 03 A6 */	mtlr r0
/* 00006BDC 00006CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 00006BE0 00006CA4  4E 80 00 20 */	blr
.endfn iri_13_make_name

# .text:0x68 | 0x6BE4 | size: 0x4C
.fn free_tbl, local
/* 00006BE4 00006CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006BE8 00006CAC  7C 08 02 A6 */	mflr r0
/* 00006BEC 00006CB0  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 00006BF0 00006CB4  3C 60 00 00 */	lis r3, tbl@ha
/* 00006BF4 00006CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006BF8 00006CBC  38 A4 00 00 */	addi r5, r4, mapalloc_base_ptr@l
/* 00006BFC 00006CC0  38 83 00 00 */	addi r4, r3, tbl@l
/* 00006C00 00006CC4  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006C04 00006CC8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00006C08 00006CCC  4B FF C8 15 */	bl _mapFree
/* 00006C0C 00006CD0  3C 60 00 00 */	lis r3, tbl@ha
/* 00006C10 00006CD4  38 00 00 00 */	li r0, 0x0
/* 00006C14 00006CD8  38 83 00 00 */	addi r4, r3, tbl@l
/* 00006C18 00006CDC  38 60 00 02 */	li r3, 0x2
/* 00006C1C 00006CE0  90 04 00 00 */	stw r0, 0x0(r4)
/* 00006C20 00006CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006C24 00006CE8  7C 08 03 A6 */	mtlr r0
/* 00006C28 00006CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 00006C2C 00006CF0  4E 80 00 20 */	blr
.endfn free_tbl

# .text:0xB4 | 0x6C30 | size: 0xA0
.fn get_pos, local
/* 00006C30 00006CF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00006C34 00006CF8  7C 08 02 A6 */	mflr r0
/* 00006C38 00006CFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006C3C 00006D00  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00006C40 00006D04  7C 7D 1B 78 */	mr r29, r3
/* 00006C44 00006D08  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00006C48 00006D0C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00006C4C 00006D10  4B FF C7 D1 */	bl evtGetValue
/* 00006C50 00006D14  3C 80 00 00 */	lis r4, tbl@ha
/* 00006C54 00006D18  54 60 10 3A */	slwi r0, r3, 2
/* 00006C58 00006D1C  38 A4 00 00 */	addi r5, r4, tbl@l
/* 00006C5C 00006D20  7F A3 EB 78 */	mr r3, r29
/* 00006C60 00006D24  80 C5 00 00 */	lwz r6, 0x0(r5)
/* 00006C64 00006D28  3C 80 00 00 */	lis r4, list@ha
/* 00006C68 00006D2C  38 A4 00 00 */	addi r5, r4, list@l
/* 00006C6C 00006D30  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00006C70 00006D34  7C 06 00 2E */	lwzx r0, r6, r0
/* 00006C74 00006D38  1F E0 00 0C */	mulli r31, r0, 0xc
/* 00006C78 00006D3C  7C A5 F8 2E */	lwzx r5, r5, r31
/* 00006C7C 00006D40  4B FF C7 A1 */	bl evtSetValue
/* 00006C80 00006D44  3C 60 00 00 */	lis r3, list@ha
/* 00006C84 00006D48  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00006C88 00006D4C  38 03 00 00 */	addi r0, r3, list@l
/* 00006C8C 00006D50  7F A3 EB 78 */	mr r3, r29
/* 00006C90 00006D54  7C A0 FA 14 */	add r5, r0, r31
/* 00006C94 00006D58  80 A5 00 04 */	lwz r5, 0x4(r5)
/* 00006C98 00006D5C  4B FF C7 85 */	bl evtSetValue
/* 00006C9C 00006D60  3C 60 00 00 */	lis r3, list@ha
/* 00006CA0 00006D64  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00006CA4 00006D68  38 03 00 00 */	addi r0, r3, list@l
/* 00006CA8 00006D6C  7F A3 EB 78 */	mr r3, r29
/* 00006CAC 00006D70  7C A0 FA 14 */	add r5, r0, r31
/* 00006CB0 00006D74  80 A5 00 08 */	lwz r5, 0x8(r5)
/* 00006CB4 00006D78  4B FF C7 69 */	bl evtSetValue
/* 00006CB8 00006D7C  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00006CBC 00006D80  38 60 00 02 */	li r3, 0x2
/* 00006CC0 00006D84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00006CC4 00006D88  7C 08 03 A6 */	mtlr r0
/* 00006CC8 00006D8C  38 21 00 20 */	addi r1, r1, 0x20
/* 00006CCC 00006D90  4E 80 00 20 */	blr
.endfn get_pos

# .text:0x154 | 0x6CD0 | size: 0x124
.fn make_tbl, local
/* 00006CD0 00006D94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00006CD4 00006D98  7C 08 02 A6 */	mflr r0
/* 00006CD8 00006D9C  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 00006CDC 00006DA0  38 80 00 64 */	li r4, 0x64
/* 00006CE0 00006DA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006CE4 00006DA8  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 00006CE8 00006DAC  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 00006CEC 00006DB0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00006CF0 00006DB4  4B FF C7 2D */	bl _mapAlloc
/* 00006CF4 00006DB8  3C 80 00 00 */	lis r4, tbl@ha
/* 00006CF8 00006DBC  38 00 00 19 */	li r0, 0x19
/* 00006CFC 00006DC0  38 A4 00 00 */	addi r5, r4, tbl@l
/* 00006D00 00006DC4  38 C0 00 00 */	li r6, 0x0
/* 00006D04 00006DC8  90 65 00 00 */	stw r3, 0x0(r5)
/* 00006D08 00006DCC  38 60 00 00 */	li r3, 0x0
/* 00006D0C 00006DD0  7C 09 03 A6 */	mtctr r0
.L_00006D10:
/* 00006D10 00006DD4  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00006D14 00006DD8  7C C4 19 2E */	stwx r6, r4, r3
/* 00006D18 00006DDC  38 C6 00 01 */	addi r6, r6, 0x1
/* 00006D1C 00006DE0  38 63 00 04 */	addi r3, r3, 0x4
/* 00006D20 00006DE4  42 00 FF F0 */	bdnz .L_00006D10
/* 00006D24 00006DE8  3C 60 00 00 */	lis r3, tbl@ha
/* 00006D28 00006DEC  3B A0 00 00 */	li r29, 0x0
/* 00006D2C 00006DF0  3B E3 00 00 */	addi r31, r3, tbl@l
/* 00006D30 00006DF4  3B C0 00 19 */	li r30, 0x19
.L_00006D34:
/* 00006D34 00006DF8  4B FF C6 E9 */	bl rand
/* 00006D38 00006DFC  7C 03 F3 D6 */	divw r0, r3, r30
/* 00006D3C 00006E00  7C 00 F1 D6 */	mullw r0, r0, r30
/* 00006D40 00006E04  7F 80 18 50 */	subf r28, r0, r3
/* 00006D44 00006E08  4B FF C6 D9 */	bl rand
/* 00006D48 00006E0C  7C 03 F3 D6 */	divw r0, r3, r30
/* 00006D4C 00006E10  3B BD 00 01 */	addi r29, r29, 0x1
/* 00006D50 00006E14  80 BF 00 00 */	lwz r5, 0x0(r31)
/* 00006D54 00006E18  57 84 10 3A */	slwi r4, r28, 2
/* 00006D58 00006E1C  2C 1D 00 32 */	cmpwi r29, 0x32
/* 00006D5C 00006E20  7C E5 20 2E */	lwzx r7, r5, r4
/* 00006D60 00006E24  7C 00 F1 D6 */	mullw r0, r0, r30
/* 00006D64 00006E28  7C 00 18 50 */	subf r0, r0, r3
/* 00006D68 00006E2C  54 06 10 3A */	slwi r6, r0, 2
/* 00006D6C 00006E30  7C 05 30 2E */	lwzx r0, r5, r6
/* 00006D70 00006E34  7C 05 21 2E */	stwx r0, r5, r4
/* 00006D74 00006E38  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 00006D78 00006E3C  7C E3 31 2E */	stwx r7, r3, r6
/* 00006D7C 00006E40  41 80 FF B8 */	blt .L_00006D34
/* 00006D80 00006E44  3C 80 F8 40 */	lis r4, 0xf840
/* 00006D84 00006E48  38 60 00 00 */	li r3, 0x0
/* 00006D88 00006E4C  38 84 70 A0 */	addi r4, r4, 0x70a0
/* 00006D8C 00006E50  4B FF C6 91 */	bl evtGetValue
/* 00006D90 00006E54  2C 03 00 00 */	cmpwi r3, 0x0
/* 00006D94 00006E58  40 82 00 48 */	bne .L_00006DDC
/* 00006D98 00006E5C  3C 60 00 00 */	lis r3, tbl@ha
/* 00006D9C 00006E60  38 00 00 19 */	li r0, 0x19
/* 00006DA0 00006E64  80 A3 00 00 */	lwz r5, tbl@l(r3)
/* 00006DA4 00006E68  38 60 00 00 */	li r3, 0x0
/* 00006DA8 00006E6C  7C 09 03 A6 */	mtctr r0
.L_00006DAC:
/* 00006DAC 00006E70  7C 05 18 2E */	lwzx r0, r5, r3
/* 00006DB0 00006E74  2C 00 00 00 */	cmpwi r0, 0x0
/* 00006DB4 00006E78  40 82 00 20 */	bne .L_00006DD4
/* 00006DB8 00006E7C  80 C5 00 00 */	lwz r6, 0x0(r5)
/* 00006DBC 00006E80  3C 80 00 00 */	lis r4, tbl@ha
/* 00006DC0 00006E84  38 84 00 00 */	addi r4, r4, tbl@l
/* 00006DC4 00006E88  90 05 00 00 */	stw r0, 0x0(r5)
/* 00006DC8 00006E8C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00006DCC 00006E90  7C C4 19 2E */	stwx r6, r4, r3
/* 00006DD0 00006E94  48 00 00 0C */	b .L_00006DDC
.L_00006DD4:
/* 00006DD4 00006E98  38 63 00 04 */	addi r3, r3, 0x4
/* 00006DD8 00006E9C  42 00 FF D4 */	bdnz .L_00006DAC
.L_00006DDC:
/* 00006DDC 00006EA0  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00006DE0 00006EA4  38 60 00 02 */	li r3, 0x2
/* 00006DE4 00006EA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00006DE8 00006EAC  7C 08 03 A6 */	mtlr r0
/* 00006DEC 00006EB0  38 21 00 20 */	addi r1, r1, 0x20
/* 00006DF0 00006EB4  4E 80 00 20 */	blr
.endfn make_tbl

# 0x00005D38..0x000060F8 | size: 0x3C0
.rodata
.balign 8

# .rodata:0x0 | 0x5D38 | size: 0x7
.obj str_door_1_tou_0000e9f0, local
	.string "door_1"
.endobj str_door_1_tou_0000e9f0

# .rodata:0x7 | 0x5D3F | size: 0x1
.obj gap_03_00005D3F_rodata, global
.hidden gap_03_00005D3F_rodata
	.byte 0x00
.endobj gap_03_00005D3F_rodata

# .rodata:0x8 | 0x5D40 | size: 0x7
.obj str_door_2_tou_0000e9f8, local
	.string "door_2"
.endobj str_door_2_tou_0000e9f8

# .rodata:0xF | 0x5D47 | size: 0x1
.obj gap_03_00005D47_rodata, global
.hidden gap_03_00005D47_rodata
	.byte 0x00
.endobj gap_03_00005D47_rodata

# .rodata:0x10 | 0x5D48 | size: 0x7
.obj str_n_bero_tou_0000ea00, local
	.string "n_bero"
.endobj str_n_bero_tou_0000ea00

# .rodata:0x17 | 0x5D4F | size: 0x1
.obj gap_03_00005D4F_rodata, global
.hidden gap_03_00005D4F_rodata
	.byte 0x00
.endobj gap_03_00005D4F_rodata

# .rodata:0x18 | 0x5D50 | size: 0x7
.obj str_tou_04_tou_0000ea08, local
	.string "tou_04"
.endobj str_tou_04_tou_0000ea08

# .rodata:0x1F | 0x5D57 | size: 0x1
.obj gap_03_00005D57_rodata, global
.hidden gap_03_00005D57_rodata
	.byte 0x00
.endobj gap_03_00005D57_rodata

# .rodata:0x20 | 0x5D58 | size: 0x9
.obj str_s_bero_4_tou_0000ea10, local
	.string "s_bero_4"
.endobj str_s_bero_4_tou_0000ea10

# .rodata:0x29 | 0x5D61 | size: 0x3
.obj gap_03_00005D61_rodata, global
.hidden gap_03_00005D61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D61_rodata

# .rodata:0x2C | 0x5D64 | size: 0x7
.obj str_w_bero_tou_0000ea1c, local
	.string "w_bero"
.endobj str_w_bero_tou_0000ea1c

# .rodata:0x33 | 0x5D6B | size: 0x1
.obj gap_03_00005D6B_rodata, global
.hidden gap_03_00005D6B_rodata
	.byte 0x00
.endobj gap_03_00005D6B_rodata

# .rodata:0x34 | 0x5D6C | size: 0x7
.obj str_tou_12_tou_0000ea24, local
	.string "tou_12"
.endobj str_tou_12_tou_0000ea24

# .rodata:0x3B | 0x5D73 | size: 0x1
.obj gap_03_00005D73_rodata, global
.hidden gap_03_00005D73_rodata
	.byte 0x00
.endobj gap_03_00005D73_rodata

# .rodata:0x3C | 0x5D74 | size: 0x7
.obj str_tou_05_tou_0000ea2c, local
	.string "tou_05"
.endobj str_tou_05_tou_0000ea2c

# .rodata:0x43 | 0x5D7B | size: 0x1
.obj gap_03_00005D7B_rodata, global
.hidden gap_03_00005D7B_rodata
	.byte 0x00
.endobj gap_03_00005D7B_rodata

# .rodata:0x44 | 0x5D7C | size: 0x5
.obj str_fall_tou_0000ea34, local
	.string "fall"
.endobj str_fall_tou_0000ea34

# .rodata:0x49 | 0x5D81 | size: 0x3
.obj gap_03_00005D81_rodata, global
.hidden gap_03_00005D81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D81_rodata

# .rodata:0x4C | 0x5D84 | size: 0x14
.obj str_BGM_FF_ENV_SUCCESS1_tou_0000ea3c, local
	.string "BGM_FF_ENV_SUCCESS1"
.endobj str_BGM_FF_ENV_SUCCESS1_tou_0000ea3c

# .rodata:0x60 | 0x5D98 | size: 0x4
.obj str_img_tou_0000ea50, local
	.string "img"
.endobj str_img_tou_0000ea50

# .rodata:0x64 | 0x5D9C | size: 0x4
.obj str_A_1_tou_0000ea54, local
	.string "A_1"
.endobj str_A_1_tou_0000ea54

# .rodata:0x68 | 0x5DA0 | size: 0x1D
.obj str_SFX_OFF3_PERA_KAIDAN_tou_0000ea58, local
	.string "SFX_OFF3_PERA_KAIDAN_APPEAR1"
.endobj str_SFX_OFF3_PERA_KAIDAN_tou_0000ea58

# .rodata:0x85 | 0x5DBD | size: 0x3
.obj gap_03_00005DBD_rodata, global
.hidden gap_03_00005DBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005DBD_rodata

# .rodata:0x88 | 0x5DC0 | size: 0x7
.obj str_kaidan_tou_0000ea78, local
	.string "kaidan"
.endobj str_kaidan_tou_0000ea78

# .rodata:0x8F | 0x5DC7 | size: 0x1
.obj gap_03_00005DC7_rodata, global
.hidden gap_03_00005DC7_rodata
	.byte 0x00
.endobj gap_03_00005DC7_rodata

# .rodata:0x90 | 0x5DC8 | size: 0x9
.obj str_a_kaidan_tou_0000ea80, local
	.string "a_kaidan"
.endobj str_a_kaidan_tou_0000ea80

# .rodata:0x99 | 0x5DD1 | size: 0x3
.obj gap_03_00005DD1_rodata, global
.hidden gap_03_00005DD1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005DD1_rodata

# .rodata:0x9C | 0x5DD4 | size: 0xA
.obj str_kontena_2_tou_0000ea8c, local
	.string "kontena_2"
.endobj str_kontena_2_tou_0000ea8c

# .rodata:0xA6 | 0x5DDE | size: 0x2
.obj gap_03_00005DDE_rodata, global
.hidden gap_03_00005DDE_rodata
	.2byte 0x0000
.endobj gap_03_00005DDE_rodata

# .rodata:0xA8 | 0x5DE0 | size: 0x7
.obj str_fuda_1_tou_0000ea98, local
	.string "fuda_1"
.endobj str_fuda_1_tou_0000ea98

# .rodata:0xAF | 0x5DE7 | size: 0x1
.obj gap_03_00005DE7_rodata, global
.hidden gap_03_00005DE7_rodata
	.byte 0x00
.endobj gap_03_00005DE7_rodata

# .rodata:0xB0 | 0x5DE8 | size: 0x7
.obj str_fuda_2_tou_0000eaa0, local
	.string "fuda_2"
.endobj str_fuda_2_tou_0000eaa0

# .rodata:0xB7 | 0x5DEF | size: 0x1
.obj gap_03_00005DEF_rodata, global
.hidden gap_03_00005DEF_rodata
	.byte 0x00
.endobj gap_03_00005DEF_rodata

# .rodata:0xB8 | 0x5DF0 | size: 0x7
.obj str_fuda_3_tou_0000eaa8, local
	.string "fuda_3"
.endobj str_fuda_3_tou_0000eaa8

# .rodata:0xBF | 0x5DF7 | size: 0x1
.obj gap_03_00005DF7_rodata, global
.hidden gap_03_00005DF7_rodata
	.byte 0x00
.endobj gap_03_00005DF7_rodata

# .rodata:0xC0 | 0x5DF8 | size: 0x3
.obj str_me_tou_0000eab0, local
	.string "me"
.endobj str_me_tou_0000eab0

# .rodata:0xC3 | 0x5DFB | size: 0x1
.obj gap_03_00005DFB_rodata, global
.hidden gap_03_00005DFB_rodata
	.byte 0x00
.endobj gap_03_00005DFB_rodata

# .rodata:0xC4 | 0x5DFC | size: 0x14
.obj str_BGM_EVT_CYUCYURINA1_tou_0000eab4, local
	.string "BGM_EVT_CYUCYURINA1"
.endobj str_BGM_EVT_CYUCYURINA1_tou_0000eab4

# .rodata:0xD8 | 0x5E10 | size: 0xF
.obj str_チュチュリーナ_tou_0000eac8, local
	.4byte 0x83608385
	.4byte 0x83608385
	.4byte 0x838A815B
	.byte 0x83, 0x69, 0x00
.endobj str_チュチュリーナ_tou_0000eac8

# .rodata:0xE7 | 0x5E1F | size: 0x1
.obj gap_03_00005E1F_rodata, global
.hidden gap_03_00005E1F_rodata
	.byte 0x00
.endobj gap_03_00005E1F_rodata

# .rodata:0xE8 | 0x5E20 | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_tou_0000ead8, local
	.string "SFX_VOICE_MARIO_FIND1_2"
.endobj str_SFX_VOICE_MARIO_FIND_tou_0000ead8

# .rodata:0x100 | 0x5E38 | size: 0x2
.obj str_m_tou_0000eaf0, local
	.string "m"
.endobj str_m_tou_0000eaf0

# .rodata:0x102 | 0x5E3A | size: 0x2
.obj gap_03_00005E3A_rodata, global
.hidden gap_03_00005E3A_rodata
	.2byte 0x0000
.endobj gap_03_00005E3A_rodata

# .rodata:0x104 | 0x5E3C | size: 0x2
.obj str_p_tou_0000eaf4, local
	.string "p"
.endobj str_p_tou_0000eaf4

# .rodata:0x106 | 0x5E3E | size: 0x2
.obj gap_03_00005E3E_rodata, global
.hidden gap_03_00005E3E_rodata
	.2byte 0x0000
.endobj gap_03_00005E3E_rodata

# .rodata:0x108 | 0x5E40 | size: 0x6
.obj str_mario_tou_0000eaf8, local
	.string "mario"
.endobj str_mario_tou_0000eaf8

# .rodata:0x10E | 0x5E46 | size: 0x2
.obj gap_03_00005E46_rodata, global
.hidden gap_03_00005E46_rodata
	.2byte 0x0000
.endobj gap_03_00005E46_rodata

# .rodata:0x110 | 0x5E48 | size: 0xD
.obj str_stg3_tou_308_tou_0000eb00, local
	.string "stg3_tou_308"
.endobj str_stg3_tou_308_tou_0000eb00

# .rodata:0x11D | 0x5E55 | size: 0x3
.obj gap_03_00005E55_rodata, global
.hidden gap_03_00005E55_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E55_rodata

# .rodata:0x120 | 0x5E58 | size: 0xD
.obj str_stg3_tou_309_tou_0000eb10, local
	.string "stg3_tou_309"
.endobj str_stg3_tou_309_tou_0000eb10

# .rodata:0x12D | 0x5E65 | size: 0x3
.obj gap_03_00005E65_rodata, global
.hidden gap_03_00005E65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E65_rodata

# .rodata:0x130 | 0x5E68 | size: 0xD
.obj str_stg3_tou_310_tou_0000eb20, local
	.string "stg3_tou_310"
.endobj str_stg3_tou_310_tou_0000eb20

# .rodata:0x13D | 0x5E75 | size: 0x3
.obj gap_03_00005E75_rodata, global
.hidden gap_03_00005E75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E75_rodata

# .rodata:0x140 | 0x5E78 | size: 0xD
.obj str_stg3_tou_311_tou_0000eb30, local
	.string "stg3_tou_311"
.endobj str_stg3_tou_311_tou_0000eb30

# .rodata:0x14D | 0x5E85 | size: 0x3
.obj gap_03_00005E85_rodata, global
.hidden gap_03_00005E85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E85_rodata

# .rodata:0x150 | 0x5E88 | size: 0xD
.obj str_stg3_tou_312_tou_0000eb40, local
	.string "stg3_tou_312"
.endobj str_stg3_tou_312_tou_0000eb40

# .rodata:0x15D | 0x5E95 | size: 0x3
.obj gap_03_00005E95_rodata, global
.hidden gap_03_00005E95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E95_rodata

# .rodata:0x160 | 0x5E98 | size: 0xD
.obj str_stg3_tou_313_tou_0000eb50, local
	.string "stg3_tou_313"
.endobj str_stg3_tou_313_tou_0000eb50

# .rodata:0x16D | 0x5EA5 | size: 0x3
.obj gap_03_00005EA5_rodata, global
.hidden gap_03_00005EA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005EA5_rodata

# .rodata:0x170 | 0x5EA8 | size: 0x17
.obj str_SFX_STG3_CHURINA_KIS_tou_0000eb60, local
	.string "SFX_STG3_CHURINA_KISS1"
.endobj str_SFX_STG3_CHURINA_KIS_tou_0000eb60

# .rodata:0x187 | 0x5EBF | size: 0x1
.obj gap_03_00005EBF_rodata, global
.hidden gap_03_00005EBF_rodata
	.byte 0x00
.endobj gap_03_00005EBF_rodata

# .rodata:0x188 | 0x5EC0 | size: 0x17
.obj str_SFX_STG3_CHURINA_KIS_tou_0000eb78, local
	.string "SFX_STG3_CHURINA_KISS2"
.endobj str_SFX_STG3_CHURINA_KIS_tou_0000eb78

# .rodata:0x19F | 0x5ED7 | size: 0x1
.obj gap_03_00005ED7_rodata, global
.hidden gap_03_00005ED7_rodata
	.byte 0x00
.endobj gap_03_00005ED7_rodata

# .rodata:0x1A0 | 0x5ED8 | size: 0x7
.obj str_M_N_5B_tou_0000eb90, local
	.string "M_N_5B"
.endobj str_M_N_5B_tou_0000eb90

# .rodata:0x1A7 | 0x5EDF | size: 0x1
.obj gap_03_00005EDF_rodata, global
.hidden gap_03_00005EDF_rodata
	.byte 0x00
.endobj gap_03_00005EDF_rodata

# .rodata:0x1A8 | 0x5EE0 | size: 0x8
.obj str_PCH_K_1_tou_0000eb98, local
	.string "PCH_K_1"
.endobj str_PCH_K_1_tou_0000eb98

# .rodata:0x1B0 | 0x5EE8 | size: 0x5
.obj str_kiss_tou_0000eba0, local
	.string "kiss"
.endobj str_kiss_tou_0000eba0

# .rodata:0x1B5 | 0x5EED | size: 0x3
.obj gap_03_00005EED_rodata, global
.hidden gap_03_00005EED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005EED_rodata

# .rodata:0x1B8 | 0x5EF0 | size: 0x8
.obj str_PCH_S_1_tou_0000eba8, local
	.string "PCH_S_1"
.endobj str_PCH_S_1_tou_0000eba8

# .rodata:0x1C0 | 0x5EF8 | size: 0x6
.obj str_M_S_1_tou_0000ebb0, local
	.string "M_S_1"
.endobj str_M_S_1_tou_0000ebb0

# .rodata:0x1C6 | 0x5EFE | size: 0x2
.obj gap_03_00005EFE_rodata, global
.hidden gap_03_00005EFE_rodata
	.2byte 0x0000
.endobj gap_03_00005EFE_rodata

# .rodata:0x1C8 | 0x5F00 | size: 0xD
.obj str_stg3_tou_314_tou_0000ebb8, local
	.string "stg3_tou_314"
.endobj str_stg3_tou_314_tou_0000ebb8

# .rodata:0x1D5 | 0x5F0D | size: 0x3
.obj gap_03_00005F0D_rodata, global
.hidden gap_03_00005F0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005F0D_rodata

# .rodata:0x1D8 | 0x5F10 | size: 0xD
.obj str_stg3_tou_315_tou_0000ebc8, local
	.string "stg3_tou_315"
.endobj str_stg3_tou_315_tou_0000ebc8

# .rodata:0x1E5 | 0x5F1D | size: 0x3
.obj gap_03_00005F1D_rodata, global
.hidden gap_03_00005F1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005F1D_rodata

# .rodata:0x1E8 | 0x5F20 | size: 0xE
.obj str_BGM_STG3_TOU1_tou_0000ebd8, local
	.string "BGM_STG3_TOU1"
.endobj str_BGM_STG3_TOU1_tou_0000ebd8

# .rodata:0x1F6 | 0x5F2E | size: 0x2
.obj gap_03_00005F2E_rodata, global
.hidden gap_03_00005F2E_rodata
	.2byte 0x0000
.endobj gap_03_00005F2E_rodata

# .rodata:0x1F8 | 0x5F30 | size: 0xE
.obj str_ENV_STG3_TOU6_tou_0000ebe8, local
	.string "ENV_STG3_TOU6"
.endobj str_ENV_STG3_TOU6_tou_0000ebe8

# .rodata:0x206 | 0x5F3E | size: 0x2
.obj gap_03_00005F3E_rodata, global
.hidden gap_03_00005F3E_rodata
	.2byte 0x0000
.endobj gap_03_00005F3E_rodata

# .rodata:0x208 | 0x5F40 | size: 0xD
.obj str_stg3_tou_316_tou_0000ebf8, local
	.string "stg3_tou_316"
.endobj str_stg3_tou_316_tou_0000ebf8

# .rodata:0x215 | 0x5F4D | size: 0x3
.obj gap_03_00005F4D_rodata, global
.hidden gap_03_00005F4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005F4D_rodata

# .rodata:0x218 | 0x5F50 | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_tou_0000ec08, local
	.string "SFX_VOICE_MARIO_FIND1_3"
.endobj str_SFX_VOICE_MARIO_FIND_tou_0000ec08

# .rodata:0x230 | 0x5F68 | size: 0x17
.obj str_BGM_FF_MAIL_RECEPTIO_tou_0000ec20, local
	.string "BGM_FF_MAIL_RECEPTION2"
.endobj str_BGM_FF_MAIL_RECEPTIO_tou_0000ec20

# .rodata:0x247 | 0x5F7F | size: 0x1
.obj gap_03_00005F7F_rodata, global
.hidden gap_03_00005F7F_rodata
	.byte 0x00
.endobj gap_03_00005F7F_rodata

# .rodata:0x248 | 0x5F80 | size: 0x14
.obj str_SFX_MAIL_RECEPTION1_tou_0000ec38, local
	.string "SFX_MAIL_RECEPTION1"
.endobj str_SFX_MAIL_RECEPTION1_tou_0000ec38

# .rodata:0x25C | 0x5F94 | size: 0x6
.obj str_M_N_9_tou_0000ec4c, local
	.string "M_N_9"
.endobj str_M_N_9_tou_0000ec4c

# .rodata:0x262 | 0x5F9A | size: 0x2
.obj gap_03_00005F9A_rodata, global
.hidden gap_03_00005F9A_rodata
	.2byte 0x0000
.endobj gap_03_00005F9A_rodata

# .rodata:0x264 | 0x5F9C | size: 0x14
.obj str_SFX_MAIL_RECEPTION2_tou_0000ec54, local
	.string "SFX_MAIL_RECEPTION2"
.endobj str_SFX_MAIL_RECEPTION2_tou_0000ec54

# .rodata:0x278 | 0x5FB0 | size: 0x7
.obj str_M_N_10_tou_0000ec68, local
	.string "M_N_10"
.endobj str_M_N_10_tou_0000ec68

# .rodata:0x27F | 0x5FB7 | size: 0x1
.obj gap_03_00005FB7_rodata, global
.hidden gap_03_00005FB7_rodata
	.byte 0x00
.endobj gap_03_00005FB7_rodata

# .rodata:0x280 | 0x5FB8 | size: 0x10
.obj str_stg3_tou_316_01_tou_0000ec70, local
	.string "stg3_tou_316_01"
.endobj str_stg3_tou_316_01_tou_0000ec70

# .rodata:0x290 | 0x5FC8 | size: 0x10
.obj str_stg3_tou_316_02_tou_0000ec80, local
	.string "stg3_tou_316_02"
.endobj str_stg3_tou_316_02_tou_0000ec80

# .rodata:0x2A0 | 0x5FD8 | size: 0x6
.obj str_M_I_Z_tou_0000ec90, local
	.string "M_I_Z"
.endobj str_M_I_Z_tou_0000ec90

# .rodata:0x2A6 | 0x5FDE | size: 0x2
.obj gap_03_00005FDE_rodata, global
.hidden gap_03_00005FDE_rodata
	.2byte 0x0000
.endobj gap_03_00005FDE_rodata

# .rodata:0x2A8 | 0x5FE0 | size: 0x8
.obj str_gor_hae_tou_0000ec98, local
	.string "gor_hae"
.endobj str_gor_hae_tou_0000ec98

# .rodata:0x2B0 | 0x5FE8 | size: 0xE
.obj str_SFX_STG3_FLY1_tou_0000eca0, local
	.string "SFX_STG3_FLY1"
.endobj str_SFX_STG3_FLY1_tou_0000eca0

# .rodata:0x2BE | 0x5FF6 | size: 0x2
.obj gap_03_00005FF6_rodata, global
.hidden gap_03_00005FF6_rodata
	.2byte 0x0000
.endobj gap_03_00005FF6_rodata

# .rodata:0x2C0 | 0x5FF8 | size: 0xB
.obj str_mobj_box00_tou_0000ecb0, local
	.string "mobj_box00"
.endobj str_mobj_box00_tou_0000ecb0

# .rodata:0x2CB | 0x6003 | size: 0x1
.obj gap_03_00006003_rodata, global
.hidden gap_03_00006003_rodata
	.byte 0x00
.endobj gap_03_00006003_rodata

# .rodata:0x2CC | 0x6004 | size: 0x7
.obj str_item00_tou_0000ecbc, local
	.string "item00"
.endobj str_item00_tou_0000ecbc

# .rodata:0x2D3 | 0x600B | size: 0x1
.obj gap_03_0000600B_rodata, global
.hidden gap_03_0000600B_rodata
	.byte 0x00
.endobj gap_03_0000600B_rodata

# .rodata:0x2D4 | 0x600C | size: 0x4
.obj str_ana_tou_0000ecc4, local
	.string "ana"
.endobj str_ana_tou_0000ecc4

# .rodata:0x2D8 | 0x6010 | size: 0x8
.obj str_kontena_tou_0000ecc8, local
	.string "kontena"
.endobj str_kontena_tou_0000ecc8

# .rodata:0x2E0 | 0x6018 | size: 0x8
.obj str_a_kon_H_tou_0000ecd0, local
	.string "a_kon_H"
.endobj str_a_kon_H_tou_0000ecd0

# .rodata:0x2E8 | 0x6020 | size: 0x8
.obj str_a_kon_N_tou_0000ecd8, local
	.string "a_kon_N"
.endobj str_a_kon_N_tou_0000ecd8

# .rodata:0x2F0 | 0x6028 | size: 0x2
.obj str_i_tou_0000ece0, local
	.string "i"
.endobj str_i_tou_0000ece0

# .rodata:0x2F2 | 0x602A | size: 0x2
.obj gap_03_0000602A_rodata, global
.hidden gap_03_0000602A_rodata
	.2byte 0x0000
.endobj gap_03_0000602A_rodata

# .rodata:0x2F4 | 0x602C | size: 0x11
.obj str_MOBJ_Lv1BigBlock_tou_0000ece4, local
	.string "MOBJ_Lv1BigBlock"
.endobj str_MOBJ_Lv1BigBlock_tou_0000ece4

# .rodata:0x305 | 0x603D | size: 0x3
.obj gap_03_0000603D_rodata, global
.hidden gap_03_0000603D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000603D_rodata

# .rodata:0x308 | 0x6040 | size: 0x2
.obj str_j_tou_0000ecf8, local
	.string "j"
.endobj str_j_tou_0000ecf8

# .rodata:0x30A | 0x6042 | size: 0x2
.obj gap_03_00006042_rodata, global
.hidden gap_03_00006042_rodata
	.2byte 0x0000
.endobj gap_03_00006042_rodata

# .rodata:0x30C | 0x6044 | size: 0x2
.obj str_a_tou_0000ecfc, local
	.string "a"
.endobj str_a_tou_0000ecfc

# .rodata:0x30E | 0x6046 | size: 0x2
.obj gap_03_00006046_rodata, global
.hidden gap_03_00006046_rodata
	.2byte 0x0000
.endobj gap_03_00006046_rodata

# .rodata:0x310 | 0x6048 | size: 0x2
.obj str_b_tou_0000ed00, local
	.string "b"
.endobj str_b_tou_0000ed00

# .rodata:0x312 | 0x604A | size: 0x2
.obj gap_03_0000604A_rodata, global
.hidden gap_03_0000604A_rodata
	.2byte 0x0000
.endobj gap_03_0000604A_rodata

# .rodata:0x314 | 0x604C | size: 0x2
.obj str_c_tou_0000ed04, local
	.string "c"
.endobj str_c_tou_0000ed04

# .rodata:0x316 | 0x604E | size: 0x2
.obj gap_03_0000604E_rodata, global
.hidden gap_03_0000604E_rodata
	.2byte 0x0000
.endobj gap_03_0000604E_rodata

# .rodata:0x318 | 0x6050 | size: 0x2
.obj str_d_tou_0000ed08, local
	.string "d"
.endobj str_d_tou_0000ed08

# .rodata:0x31A | 0x6052 | size: 0x2
.obj gap_03_00006052_rodata, global
.hidden gap_03_00006052_rodata
	.2byte 0x0000
.endobj gap_03_00006052_rodata

# .rodata:0x31C | 0x6054 | size: 0x2
.obj str_e_tou_0000ed0c, local
	.string "e"
.endobj str_e_tou_0000ed0c

# .rodata:0x31E | 0x6056 | size: 0x2
.obj gap_03_00006056_rodata, global
.hidden gap_03_00006056_rodata
	.2byte 0x0000
.endobj gap_03_00006056_rodata

# .rodata:0x320 | 0x6058 | size: 0x2
.obj str_f_tou_0000ed10, local
	.string "f"
.endobj str_f_tou_0000ed10

# .rodata:0x322 | 0x605A | size: 0x2
.obj gap_03_0000605A_rodata, global
.hidden gap_03_0000605A_rodata
	.2byte 0x0000
.endobj gap_03_0000605A_rodata

# .rodata:0x324 | 0x605C | size: 0x2
.obj str_g_tou_0000ed14, local
	.string "g"
.endobj str_g_tou_0000ed14

# .rodata:0x326 | 0x605E | size: 0x2
.obj gap_03_0000605E_rodata, global
.hidden gap_03_0000605E_rodata
	.2byte 0x0000
.endobj gap_03_0000605E_rodata

# .rodata:0x328 | 0x6060 | size: 0x2
.obj str_h_tou_0000ed18, local
	.string "h"
.endobj str_h_tou_0000ed18

# .rodata:0x32A | 0x6062 | size: 0x2
.obj gap_03_00006062_rodata, global
.hidden gap_03_00006062_rodata
	.2byte 0x0000
.endobj gap_03_00006062_rodata

# .rodata:0x32C | 0x6064 | size: 0x3
.obj str_sw_tou_0000ed1c, local
	.string "sw"
.endobj str_sw_tou_0000ed1c

# .rodata:0x32F | 0x6067 | size: 0x1
.obj gap_03_00006067_rodata, global
.hidden gap_03_00006067_rodata
	.byte 0x00
.endobj gap_03_00006067_rodata

# .rodata:0x330 | 0x6068 | size: 0xA
.obj str_OFF_d_ori_tou_0000ed20, local
	.string "OFF_d_ori"
.endobj str_OFF_d_ori_tou_0000ed20

# .rodata:0x33A | 0x6072 | size: 0x2
.obj gap_03_00006072_rodata, global
.hidden gap_03_00006072_rodata
	.2byte 0x0000
.endobj gap_03_00006072_rodata

# .rodata:0x33C | 0x6074 | size: 0x3
.obj str_aa_tou_0000ed2c, local
	.string "aa"
.endobj str_aa_tou_0000ed2c

# .rodata:0x33F | 0x6077 | size: 0x1
.obj gap_03_00006077_rodata, global
.hidden gap_03_00006077_rodata
	.byte 0x00
.endobj gap_03_00006077_rodata

# .rodata:0x340 | 0x6078 | size: 0x14
.obj str_MOBJ_Lv1BigBigBlock_tou_0000ed30, local
	.string "MOBJ_Lv1BigBigBlock"
.endobj str_MOBJ_Lv1BigBigBlock_tou_0000ed30

# .rodata:0x354 | 0x608C | size: 0x5
.obj str_lock_tou_0000ed44, local
	.string "lock"
.endobj str_lock_tou_0000ed44

# .rodata:0x359 | 0x6091 | size: 0x3
.obj gap_03_00006091_rodata, global
.hidden gap_03_00006091_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006091_rodata

# .rodata:0x35C | 0x6094 | size: 0x7
.obj str_pblk00_tou_0000ed4c, local
	.string "pblk00"
.endobj str_pblk00_tou_0000ed4c

# .rodata:0x363 | 0x609B | size: 0x1
.obj gap_03_0000609B_rodata, global
.hidden gap_03_0000609B_rodata
	.byte 0x00
.endobj gap_03_0000609B_rodata

# .rodata:0x364 | 0x609C | size: 0x9
.obj str_kururin1_tou_0000ed54, local
	.string "kururin1"
.endobj str_kururin1_tou_0000ed54

# .rodata:0x36D | 0x60A5 | size: 0x3
.obj gap_03_000060A5_rodata, global
.hidden gap_03_000060A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000060A5_rodata

# .rodata:0x370 | 0x60A8 | size: 0xB
.obj str_tou_6_sita_tou_0000ed60, local
	.string "tou_6_sita"
.endobj str_tou_6_sita_tou_0000ed60

# .rodata:0x37B | 0x60B3 | size: 0x1
.obj gap_03_000060B3_rodata, global
.hidden gap_03_000060B3_rodata
	.byte 0x00
.endobj gap_03_000060B3_rodata

# .rodata:0x37C | 0x60B4 | size: 0xE
.obj str_MOBJ_kururin1_tou_0000ed6c, local
	.string "MOBJ_kururin1"
.endobj str_MOBJ_kururin1_tou_0000ed6c

# .rodata:0x38A | 0x60C2 | size: 0x2
.obj gap_03_000060C2_rodata, global
.hidden gap_03_000060C2_rodata
	.2byte 0x0000
.endobj gap_03_000060C2_rodata

# .rodata:0x38C | 0x60C4 | size: 0x8
.obj str_item_01_tou_0000ed7c, local
	.string "item_01"
.endobj str_item_01_tou_0000ed7c

# .rodata:0x394 | 0x60CC | size: 0x8
.obj str_item_02_tou_0000ed84, local
	.string "item_02"
.endobj str_item_02_tou_0000ed84

# .rodata:0x39C | 0x60D4 | size: 0x8
.obj str_anm_hae_tou_0000ed8c, local
	.string "anm_hae"
.endobj str_anm_hae_tou_0000ed8c

# .rodata:0x3A4 | 0x60DC | size: 0xE
.obj str_BGM_STG3_TOU2_tou_0000ed94, local
	.string "BGM_STG3_TOU2"
.endobj str_BGM_STG3_TOU2_tou_0000ed94

# .rodata:0x3B2 | 0x60EA | size: 0x2
.obj gap_03_000060EA_rodata, global
.hidden gap_03_000060EA_rodata
	.2byte 0x0000
.endobj gap_03_000060EA_rodata

# .rodata:0x3B4 | 0x60EC | size: 0xA
.obj str_pantsPCT02d_tou_0000eda4, local
	.string "pants%02d"
.endobj str_pantsPCT02d_tou_0000eda4

# .rodata:0x3BE | 0x60F6 | size: 0x2
.obj gap_03_000060F6_rodata, global
.hidden gap_03_000060F6_rodata
	.2byte 0x0000
.endobj gap_03_000060F6_rodata

# 0x00020800..0x00022380 | size: 0x1B80
.data
.balign 8

# .data:0x0 | 0x20800 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x20808 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2080C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x20810 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x20814 | size: 0x4
.obj gap_04_00020814_data, global
.hidden gap_04_00020814_data
	.4byte 0x00000000
.endobj gap_04_00020814_data

# .data:0x18 | 0x20818 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x20820 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x20824 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x20828 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x20830 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x20834 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x20838 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2083C | size: 0x4
.obj gap_04_0002083C_data, global
.hidden gap_04_0002083C_data
	.4byte 0x00000000
.endobj gap_04_0002083C_data

# .data:0x40 | 0x20840 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x20848 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2084C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x20850 | size: 0x30
.obj n_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000e9f0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_door_open

# .data:0x80 | 0x20880 | size: 0x30
.obj n_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000e9f0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_door_close

# .data:0xB0 | 0x208B0 | size: 0x30
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_2_tou_0000e9f8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0xE0 | 0x208E0 | size: 0x30
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_2_tou_0000e9f8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0x110 | 0x20910 | size: 0xB4
.obj bero_data, local
	.4byte str_n_bero_tou_0000ea00
	.4byte 0x00010004
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_04_tou_0000ea08
	.4byte str_s_bero_4_tou_0000ea10
	.4byte 0x00050005
	.4byte n_door_close
	.4byte n_door_open
	.4byte str_w_bero_tou_0000ea1c
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_12_tou_0000ea24
	.4byte str_w_bero_tou_0000ea1c
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_data

# .data:0x1C4 | 0x209C4 | size: 0x24
.obj evt_ana, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_05_tou_0000ea2c
	.4byte str_fall_tou_0000ea34
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ana

# .data:0x1E8 | 0x209E8 | size: 0x54
.obj evt_kontena, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_tou_0000ea3c
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000095
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kontena

# .data:0x23C | 0x20A3C | size: 0x16C
.obj evt_kaidan, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFA6
	.4byte 0x000000D0
	.4byte 0x000002A8
	.4byte 0xFFFFFFA6
	.4byte 0x00000050
	.4byte 0xFFFFFFF8
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_tou_0000ea50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000260
	.4byte 0x000001E0
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_tou_0000ea50
	.4byte str_A_1_tou_0000ea54
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_tou_0000ea50
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_tou_0000ea50
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000008
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF3_PERA_KAIDAN_tou_0000ea58
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000015E
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_kaidan_tou_0000ea78
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kaidan_tou_0000ea80
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_tou_0000ea50
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_tou_0000ea50
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_tou_0000ea50
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000096
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kaidan

# .data:0x3A8 | 0x20BA8 | size: 0x14
.obj cloud_kontena2_list, local
	.4byte str_kontena_2_tou_0000ea8c
	.4byte str_fuda_1_tou_0000ea98
	.4byte str_fuda_2_tou_0000eaa0
	.4byte str_fuda_3_tou_0000eaa8
	.4byte 0x00000000
.endobj cloud_kontena2_list

# .data:0x3BC | 0x20BBC | size: 0x5C
.obj evt_kontena2, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_fuda_1_tou_0000ea98
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_fuda_2_tou_0000eaa0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_fuda_3_tou_0000eaa8
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406503
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kontena2

# .data:0x418 | 0x20C18 | size: 0x14
.obj evt_block_broken, local
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000097
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_block_broken

# .data:0x42C | 0x20C2C | size: 0x8
.obj key_tbl, local
	.4byte 0x00000013
	.4byte 0xFFFFFFFF
.endobj key_tbl

# .data:0x434 | 0x20C34 | size: 0x5C
.obj evt_chk, local
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000013
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte key_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_me_tou_0000eab0
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_chk

# .data:0x490 | 0x20C90 | size: 0x38
.obj evt_lock, local
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000009B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000013
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_lock

# .data:0x4C8 | 0x20CC8 | size: 0x9C8
.obj evt_chuchu, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_CYUCYURINA1_tou_0000eab4
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0xFFFFFF9C
	.4byte 0x00000032
	.4byte 0xFFFFFFC4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0x0000010E
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_tou_0000ead8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte str_m_tou_0000eaf0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte str_p_tou_0000eaf4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte str_mario_tou_0000eaf8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000075
	.4byte 0x000000E0
	.4byte 0xFFFFFFB5
	.4byte 0x00000058
	.4byte 0xFFFFFFF8
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_308_tou_0000eb00
	.4byte 0x00000000
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xFFFFFFBF
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000004
	.4byte 0x00000043
	.4byte 0x000000E0
	.4byte 0x00000004
	.4byte 0x00000026
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_309_tou_0000eb10
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000075
	.4byte 0x000000E0
	.4byte 0xFFFFFFB5
	.4byte 0x00000058
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_310_tou_0000eb20
	.4byte 0x00000000
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000004
	.4byte 0x00000043
	.4byte 0x000000E0
	.4byte 0x00000004
	.4byte 0x00000026
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_311_tou_0000eb30
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000075
	.4byte 0x000000E0
	.4byte 0xFFFFFFB5
	.4byte 0x00000058
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_312_tou_0000eb40
	.4byte 0x00000000
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000004
	.4byte 0x00000043
	.4byte 0x000000E0
	.4byte 0x00000004
	.4byte 0x00000026
	.4byte 0xFFFFFFF8
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0xFFFFFFBF
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x0000012C
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_313_tou_0000eb50
	.4byte 0x00000000
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_CHURINA_KIS_tou_0000eb60
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_CHURINA_KIS_tou_0000eb78
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_tou_0000eb90
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte str_PCH_K_1_tou_0000eb98
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kiss_tou_0000eba0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFFFFFFD3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte str_PCH_S_1_tou_0000eba8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000ebb0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000019
	.4byte 0x00000043
	.4byte 0x000000E0
	.4byte 0x00000019
	.4byte 0x00000026
	.4byte 0xFFFFFFF8
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_314_tou_0000ebb8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000004
	.4byte 0x00000043
	.4byte 0x000000E0
	.4byte 0x00000004
	.4byte 0x00000026
	.4byte 0xFFFFFFF8
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_315_tou_0000ebc8
	.4byte 0x00000000
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0x00000000
	.4byte 0xFFFFFF74
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000e9f0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000e9f0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU1_tou_0000ebd8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000ebe8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_316_tou_0000ebf8
	.4byte 0x0001006C
	.4byte 0xFE363C8B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_tou_0000ec08
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_MAIL_RECEPTIO_tou_0000ec20
	.4byte 0x0002005D
	.4byte evt_sub_mail_vibration
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002006A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_mario_balloon_bikkuri
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_key_get_buttontrg
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000100
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_mario_balloon_off
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MAIL_RECEPTION1_tou_0000ec38
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_rumble_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_9_tou_0000ec4c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MAIL_RECEPTION2_tou_0000ec54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_10_tou_0000ec68
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_01_tou_0000ec70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_316_02_tou_0000ec80
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Z_tou_0000ec90
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000ebb0
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_pouch_receive_mail
	.4byte 0x0000000C
	.4byte 0x0002005B
	.4byte evt_pouch_open_mail
	.4byte 0x0000000C
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000094
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_chuchu

# .data:0xE90 | 0x21690 | size: 0x12C
.obj list, local
	.4byte 0xFFFFFECF
	.4byte 0x000000FA
	.4byte 0x00000082
	.4byte 0xFFFFFF23
	.4byte 0x000000C8
	.4byte 0x00000005
	.4byte 0xFFFFFF15
	.4byte 0x000000C8
	.4byte 0x00000055
	.4byte 0xFFFFFF61
	.4byte 0x000000FA
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFF7F
	.4byte 0x000000C8
	.4byte 0x0000002D
	.4byte 0x00000050
	.4byte 0x000000C8
	.4byte 0x00000027
	.4byte 0x00000043
	.4byte 0x00000104
	.4byte 0xFFFFFFE7
	.4byte 0x0000001A
	.4byte 0x000000C8
	.4byte 0x00000059
	.4byte 0xFFFFFFAB
	.4byte 0x00000082
	.4byte 0x0000007E
	.4byte 0xFFFFFF4C
	.4byte 0x0000003C
	.4byte 0x0000004F
	.4byte 0xFFFFFFB8
	.4byte 0x00000000
	.4byte 0xFFFFFFB8
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0xFFFFFFEB
	.4byte 0x0000003D
	.4byte 0x00000000
	.4byte 0xFFFFFFB6
	.4byte 0x00000077
	.4byte 0x00000000
	.4byte 0xFFFFFFDD
	.4byte 0x000000A2
	.4byte 0x00000000
	.4byte 0x0000001F
	.4byte 0x0000006F
	.4byte 0x00000000
	.4byte 0x0000002B
	.4byte 0x0000002F
	.4byte 0x00000000
	.4byte 0x00000025
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFC8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x00000061
	.4byte 0x0000003A
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000074
	.4byte 0x00000000
	.4byte 0x00000069
	.4byte 0x0000009E
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0xFFFFFFB2
	.4byte 0x00000000
	.4byte 0x00000083
	.4byte 0xFFFFFF8C
	.4byte 0x00000000
	.4byte 0xFFFFFF91
.endobj list

# .data:0xFBC | 0x217BC | size: 0x14
.obj iri_13_pants_00_evt, local
	.4byte 0x00020032
	.4byte 0xF84070A0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj iri_13_pants_00_evt

# .data:0xFD0 | 0x217D0 | size: 0x1F0
.obj iri_13_init, local
	.4byte 0x00020018
	.4byte 0xF840709E
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x0000006B
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0001005B
	.4byte make_tbl
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte get_pos
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte iri_13_make_name
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84070A0
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte 0xFE363C86
	.4byte 0x0000006B
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte iri_13_pants_00_evt
	.4byte 0x00000020
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte 0xFE363C86
	.4byte 0x0000006B
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_gor_hae_tou_0000ec98
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte free_tbl
	.4byte 0x00020019
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000003E8
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000BB8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_gor_hae_tou_0000ec98
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_FLY1_tou_0000eca0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj iri_13_init

# .data:0x11C0 | 0x219C0 | size: 0xB8
.obj npcEnt, local
	.4byte str_チュチュリーナ_tou_0000eac8
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npcEnt

# .data:0x1278 | 0x21A78 | size: 0x88
.obj mobj_box00, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box00_tou_0000ecb0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_tou_0000ecbc
	.4byte 0x00000101
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_tou_0000ecbc
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box00_tou_0000ecb0
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item00_tou_0000ecbc
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mobj_box00

# .data:0x1300 | 0x21B00 | size: 0x880
.obj tou_06_init_evt_25_data_21B00, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_ana_tou_0000ecc4
	.4byte 0x00000000
	.4byte evt_ana
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000095
	.4byte 0x0001005B
	.4byte evt_cloud_init
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kontena_tou_0000ecc8
	.4byte str_a_kon_H_tou_0000ecd0
	.4byte evt_kontena
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kontena_tou_0000ecc8
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kon_H_tou_0000ecd0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406503
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000095
	.4byte 0x0001005B
	.4byte evt_cloud_init
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000001
	.4byte cloud_kontena2_list
	.4byte str_a_kon_N_tou_0000ecd8
	.4byte evt_kontena2
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kontena_2_tou_0000ea8c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_fuda_1_tou_0000ea98
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_fuda_2_tou_0000eaa0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_fuda_3_tou_0000eaa8
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kon_N_tou_0000ecd8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0008005B
	.4byte evt_mobj_lv_blk
	.4byte str_i_tou_0000ece0
	.4byte 0x0000007E
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFF82
	.4byte 0x00000000
	.4byte 0xF8406501
	.4byte str_MOBJ_Lv1BigBlock_tou_0000ece4
	.4byte 0x0008005B
	.4byte evt_mobj_lv_blk
	.4byte str_j_tou_0000ecf8
	.4byte 0x000000B0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFB4
	.4byte 0x00000000
	.4byte 0xF8406502
	.4byte str_MOBJ_Lv1BigBlock_tou_0000ece4
	.4byte 0x00020018
	.4byte 0xF8406501
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_i_tou_0000ece0
	.4byte 0x00000040
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406502
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_j_tou_0000ecf8
	.4byte 0x00000040
	.4byte 0x00000021
	.4byte 0x0008005B
	.4byte evt_mobj_lv_blk
	.4byte str_a_tou_0000ecfc
	.4byte 0xFFFFFF82
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFF82
	.4byte 0x00000000
	.4byte 0xF84064F9
	.4byte str_MOBJ_Lv1BigBlock_tou_0000ece4
	.4byte 0x0008005B
	.4byte evt_mobj_lv_blk
	.4byte str_b_tou_0000ed00
	.4byte 0xFFFFFFB4
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFF82
	.4byte 0x00000000
	.4byte 0xF84064FA
	.4byte str_MOBJ_Lv1BigBlock_tou_0000ece4
	.4byte 0x0008005B
	.4byte evt_mobj_lv_blk
	.4byte str_c_tou_0000ed04
	.4byte 0xFFFFFF50
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFB4
	.4byte 0x00000000
	.4byte 0xF84064FB
	.4byte str_MOBJ_Lv1BigBlock_tou_0000ece4
	.4byte 0x0008005B
	.4byte evt_mobj_lv_blk
	.4byte str_d_tou_0000ed08
	.4byte 0xFFFFFF82
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFB4
	.4byte 0x00000000
	.4byte 0xF84064FC
	.4byte str_MOBJ_Lv1BigBlock_tou_0000ece4
	.4byte 0x0008005B
	.4byte evt_mobj_lv_blk
	.4byte str_e_tou_0000ed0c
	.4byte 0xFFFFFFB4
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFB4
	.4byte 0x00000000
	.4byte 0xF84064FD
	.4byte str_MOBJ_Lv1BigBlock_tou_0000ece4
	.4byte 0x0008005B
	.4byte evt_mobj_lv_blk
	.4byte str_f_tou_0000ed10
	.4byte 0xFFFFFF50
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFE6
	.4byte 0x00000000
	.4byte 0xF84064FE
	.4byte str_MOBJ_Lv1BigBlock_tou_0000ece4
	.4byte 0x0008005B
	.4byte evt_mobj_lv_blk
	.4byte str_g_tou_0000ed14
	.4byte 0xFFFFFF82
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFE6
	.4byte 0x00000000
	.4byte 0xF84064FF
	.4byte str_MOBJ_Lv1BigBlock_tou_0000ece4
	.4byte 0x0008005B
	.4byte evt_mobj_lv_blk
	.4byte str_h_tou_0000ed18
	.4byte 0xFFFFFFB4
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFE6
	.4byte 0x00000000
	.4byte 0xF8406500
	.4byte str_MOBJ_Lv1BigBlock_tou_0000ece4
	.4byte 0x00020018
	.4byte 0xF84064F9
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_a_tou_0000ecfc
	.4byte 0x00000040
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064FA
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_b_tou_0000ed00
	.4byte 0x00000040
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064FB
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_c_tou_0000ed04
	.4byte 0x00000040
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064FC
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_d_tou_0000ed08
	.4byte 0x00000040
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064FD
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_e_tou_0000ed0c
	.4byte 0x00000040
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064FE
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_f_tou_0000ed10
	.4byte 0x00000040
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064FF
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_g_tou_0000ed14
	.4byte 0x00000040
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406500
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_h_tou_0000ed18
	.4byte 0x00000040
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000096
	.4byte 0x0008005B
	.4byte evt_mobj_switch_blue
	.4byte 0x00000000
	.4byte str_sw_tou_0000ed1c
	.4byte 0xFFFFFF5B
	.4byte 0x00000000
	.4byte 0xFFFFFF8D
	.4byte evt_kaidan
	.4byte 0xF8406506
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_sw_tou_0000ed1c
	.4byte 0x00000040
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kaidan_tou_0000ea78
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kaidan_tou_0000ea80
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_ori_tou_0000ed20
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_tou_0000ea50
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_tou_0000ea50
	.4byte str_OFF_d_ori_tou_0000ed20
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_tou_0000ea50
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000097
	.4byte 0x0008005B
	.4byte evt_mobj_lv_blk
	.4byte str_aa_tou_0000ed2c
	.4byte 0xFFFFFE3E
	.4byte 0x000000C8
	.4byte 0x00000037
	.4byte evt_block_broken
	.4byte 0xF8406507
	.4byte str_MOBJ_Lv1BigBigBlock_tou_0000ed30
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_aa_tou_0000ed2c
	.4byte 0x00000040
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000009B
	.4byte 0x000A005B
	.4byte evt_mobj_lock
	.4byte str_lock_tou_0000ed44
	.4byte 0x00000013
	.4byte 0x0000005F
	.4byte 0x000000D2
	.4byte 0x00000032
	.4byte 0xFFFFFFB0
	.4byte evt_chk
	.4byte evt_lock
	.4byte 0xF8406505
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000021
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_pblk00_tou_0000ed4c
	.4byte 0xFFFFFFE2
	.4byte 0x00000104
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0xF840712B
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_kururing_floor
	.4byte str_kururin1_tou_0000ed54
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_tou_6_sita_tou_0000ed60
	.4byte 0x0000007D
	.4byte 0xF840717A
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_MOBJ_kururin1_tou_0000ed6c
	.4byte 0x00400000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_tou_0000ed7c
	.4byte 0x00000117
	.4byte 0xFFFFFE3E
	.4byte 0x000000FA
	.4byte 0xFFFFFFE7
	.4byte 0x00000010
	.4byte 0xF8406559
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_02_tou_0000ed84
	.4byte 0x00000101
	.4byte 0x000000AF
	.4byte 0x00000000
	.4byte 0xFFFFFF83
	.4byte 0x00000010
	.4byte 0xF840655B
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_fall_tou_0000ea34
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0001005B
	.4byte evt_mario_cam_off
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x0000007D
	.4byte 0x00000064
	.4byte 0xFFFFFFE2
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x0000007D
	.4byte 0x00000064
	.4byte 0xFFFFFFE2
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_cam_on
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_hae_tou_0000ed8c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_gor_hae_tou_0000ec98
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000000D
	.4byte 0x0001005E
	.4byte iri_13_init
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_kaidan_tou_0000ea78
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_sub_get_system_flag
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000094
	.4byte 0x0001005C
	.4byte evt_chuchu
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A3
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00000020
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000007F
	.4byte 0x00000089
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU2_tou_0000ed94
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000ebe8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x00010029
	.4byte 0x000000A5
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU2_tou_0000ed94
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000ebe8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU1_tou_0000ebd8
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000ebe8
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tou_06_init_evt_25_data_21B00

# 0x00000030..0x00000040 | size: 0x10
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x30 | size: 0x8
.obj name$649, local
	.skip 0x8
.endobj name$649

# .bss:0x8 | 0x38 | size: 0x4
.obj tbl, local
	.skip 0x4
.endobj tbl

# .bss:0xC | 0x3C | size: 0x4
.obj gap_05_0000003C_bss, global
.hidden gap_05_0000003C_bss
	.skip 0x4
.endobj gap_05_0000003C_bss
