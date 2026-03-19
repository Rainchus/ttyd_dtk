.include "macros.inc"
.file "tou_04.o"

# 0x000069B0..0x00006B1C | size: 0x16C
.text
.balign 4

# .text:0x0 | 0x69B0 | size: 0x8
.fn kemuri_stop, local
/* 000069B0 00006A74  38 60 00 02 */	li r3, 0x2
/* 000069B4 00006A78  4E 80 00 20 */	blr
.endfn kemuri_stop

# .text:0x8 | 0x69B8 | size: 0x130
.fn make_list, local
/* 000069B8 00006A7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000069BC 00006A80  7C 08 02 A6 */	mflr r0
/* 000069C0 00006A84  3C 80 00 00 */	lis r4, tmp$642@ha
/* 000069C4 00006A88  90 01 00 34 */	stw r0, 0x34(r1)
/* 000069C8 00006A8C  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 000069CC 00006A90  7C 7E 1B 78 */	mr r30, r3
/* 000069D0 00006A94  80 04 00 00 */	lwz r0, tmp$642@l(r4)
/* 000069D4 00006A98  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000069D8 00006A9C  28 00 00 00 */	cmplwi r0, 0x0
/* 000069DC 00006AA0  40 82 00 20 */	bne .L_000069FC
/* 000069E0 00006AA4  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 000069E4 00006AA8  38 80 10 00 */	li r4, 0x1000
/* 000069E8 00006AAC  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 000069EC 00006AB0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000069F0 00006AB4  4B FF CA 2D */	bl _mapAlloc
/* 000069F4 00006AB8  3C 80 00 00 */	lis r4, tmp$642@ha
/* 000069F8 00006ABC  90 64 00 00 */	stw r3, tmp$642@l(r4)
.L_000069FC:
/* 000069FC 00006AC0  3C 60 00 00 */	lis r3, list$643@ha
/* 00006A00 00006AC4  3B 60 00 00 */	li r27, 0x0
/* 00006A04 00006AC8  3B 43 00 00 */	addi r26, r3, list$643@l
/* 00006A08 00006ACC  3B 20 00 00 */	li r25, 0x0
/* 00006A0C 00006AD0  3B A0 00 00 */	li r29, 0x0
.L_00006A10:
/* 00006A10 00006AD4  7C 7A E8 2E */	lwzx r3, r26, r29
/* 00006A14 00006AD8  4B FF CA 09 */	bl msgSearch
/* 00006A18 00006ADC  4B FF CA 05 */	bl FontGetMessageWidth
/* 00006A1C 00006AE0  54 60 04 3E */	clrlwi r0, r3, 16
/* 00006A20 00006AE4  7C 1B 00 00 */	cmpw r27, r0
/* 00006A24 00006AE8  40 80 00 08 */	bge .L_00006A2C
/* 00006A28 00006AEC  7C 1B 03 78 */	mr r27, r0
.L_00006A2C:
/* 00006A2C 00006AF0  3B 39 00 01 */	addi r25, r25, 0x1
/* 00006A30 00006AF4  3B BD 00 04 */	addi r29, r29, 0x4
/* 00006A34 00006AF8  2C 19 00 07 */	cmpwi r25, 0x7
/* 00006A38 00006AFC  41 80 FF D8 */	blt .L_00006A10
/* 00006A3C 00006B00  3C 80 00 00 */	lis r4, tmp$642@ha
/* 00006A40 00006B04  3C 60 00 00 */	lis r3, str_select_PCTd_PCTd_PCT_tou_0000e194@ha
/* 00006A44 00006B08  38 A4 00 00 */	addi r5, r4, tmp$642@l
/* 00006A48 00006B0C  38 FB 00 50 */	addi r7, r27, 0x50
/* 00006A4C 00006B10  38 83 00 00 */	addi r4, r3, str_select_PCTd_PCTd_PCT_tou_0000e194@l
/* 00006A50 00006B14  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006A54 00006B18  38 A0 00 00 */	li r5, 0x0
/* 00006A58 00006B1C  38 C0 00 07 */	li r6, 0x7
/* 00006A5C 00006B20  39 00 00 8C */	li r8, 0x8c
/* 00006A60 00006B24  4C C6 31 82 */	crclr cr1eq
/* 00006A64 00006B28  4B FF C9 B9 */	bl sprintf
/* 00006A68 00006B2C  3C A0 00 00 */	lis r5, tmp$642@ha
/* 00006A6C 00006B30  3C 80 00 00 */	lis r4, str__tou_0000e1ac@ha
/* 00006A70 00006B34  3C 60 00 00 */	lis r3, list$643@ha
/* 00006A74 00006B38  3B 20 00 00 */	li r25, 0x0
/* 00006A78 00006B3C  3B 45 00 00 */	addi r26, r5, tmp$642@l
/* 00006A7C 00006B40  3B 64 00 00 */	addi r27, r4, str__tou_0000e1ac@l
/* 00006A80 00006B44  3B 83 00 00 */	addi r28, r3, list$643@l
/* 00006A84 00006B48  3B A0 00 00 */	li r29, 0x0
.L_00006A88:
/* 00006A88 00006B4C  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 00006A8C 00006B50  7F 64 DB 78 */	mr r4, r27
/* 00006A90 00006B54  4B FF C9 8D */	bl strcat
/* 00006A94 00006B58  7C 7C E8 2E */	lwzx r3, r28, r29
/* 00006A98 00006B5C  4B FF C9 85 */	bl msgSearch
/* 00006A9C 00006B60  7C 64 1B 78 */	mr r4, r3
/* 00006AA0 00006B64  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 00006AA4 00006B68  4B FF C9 79 */	bl strcat
/* 00006AA8 00006B6C  3B 39 00 01 */	addi r25, r25, 0x1
/* 00006AAC 00006B70  3B BD 00 04 */	addi r29, r29, 0x4
/* 00006AB0 00006B74  2C 19 00 07 */	cmpwi r25, 0x7
/* 00006AB4 00006B78  41 80 FF D4 */	blt .L_00006A88
/* 00006AB8 00006B7C  3C 60 00 00 */	lis r3, tmp$642@ha
/* 00006ABC 00006B80  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00006AC0 00006B84  38 A3 00 00 */	addi r5, r3, tmp$642@l
/* 00006AC4 00006B88  7F C3 F3 78 */	mr r3, r30
/* 00006AC8 00006B8C  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 00006ACC 00006B90  4B FF C9 51 */	bl evtSetValue
/* 00006AD0 00006B94  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 00006AD4 00006B98  38 60 00 02 */	li r3, 0x2
/* 00006AD8 00006B9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00006ADC 00006BA0  7C 08 03 A6 */	mtlr r0
/* 00006AE0 00006BA4  38 21 00 30 */	addi r1, r1, 0x30
/* 00006AE4 00006BA8  4E 80 00 20 */	blr
.endfn make_list

# .text:0x138 | 0x6AE8 | size: 0x34
.fn memoryRY, local
/* 00006AE8 00006BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006AEC 00006BB0  7C 08 02 A6 */	mflr r0
/* 00006AF0 00006BB4  3C 80 00 00 */	lis r4, str_me_tou_0000db1c@ha
/* 00006AF4 00006BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006AF8 00006BBC  38 84 00 00 */	addi r4, r4, str_me_tou_0000db1c@l
/* 00006AFC 00006BC0  4B FF C9 21 */	bl evtNpcNameToPtr
/* 00006B00 00006BC4  C0 03 01 44 */	lfs f0, 0x144(r3)
/* 00006B04 00006BC8  D0 03 01 48 */	stfs f0, 0x148(r3)
/* 00006B08 00006BCC  38 60 00 02 */	li r3, 0x2
/* 00006B0C 00006BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006B10 00006BD4  7C 08 03 A6 */	mtlr r0
/* 00006B14 00006BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 00006B18 00006BDC  4E 80 00 20 */	blr
.endfn memoryRY

# 0x00004D18..0x000054F8 | size: 0x7E0
.rodata
.balign 8

# .rodata:0x0 | 0x4D18 | size: 0x7
.obj str_door_w_tou_0000d9d0, local
	.string "door_w"
.endobj str_door_w_tou_0000d9d0

# .rodata:0x7 | 0x4D1F | size: 0x1
.obj gap_03_00004D1F_rodata, global
.hidden gap_03_00004D1F_rodata
	.byte 0x00
.endobj gap_03_00004D1F_rodata

# .rodata:0x8 | 0x4D20 | size: 0x7
.obj str_door_1_tou_0000d9d8, local
	.string "door_1"
.endobj str_door_1_tou_0000d9d8

# .rodata:0xF | 0x4D27 | size: 0x1
.obj gap_03_00004D27_rodata, global
.hidden gap_03_00004D27_rodata
	.byte 0x00
.endobj gap_03_00004D27_rodata

# .rodata:0x10 | 0x4D28 | size: 0x7
.obj str_door_2_tou_0000d9e0, local
	.string "door_2"
.endobj str_door_2_tou_0000d9e0

# .rodata:0x17 | 0x4D2F | size: 0x1
.obj gap_03_00004D2F_rodata, global
.hidden gap_03_00004D2F_rodata
	.byte 0x00
.endobj gap_03_00004D2F_rodata

# .rodata:0x18 | 0x4D30 | size: 0x7
.obj str_door_3_tou_0000d9e8, local
	.string "door_3"
.endobj str_door_3_tou_0000d9e8

# .rodata:0x1F | 0x4D37 | size: 0x1
.obj gap_03_00004D37_rodata, global
.hidden gap_03_00004D37_rodata
	.byte 0x00
.endobj gap_03_00004D37_rodata

# .rodata:0x20 | 0x4D38 | size: 0x7
.obj str_door_4_tou_0000d9f0, local
	.string "door_4"
.endobj str_door_4_tou_0000d9f0

# .rodata:0x27 | 0x4D3F | size: 0x1
.obj gap_03_00004D3F_rodata, global
.hidden gap_03_00004D3F_rodata
	.byte 0x00
.endobj gap_03_00004D3F_rodata

# .rodata:0x28 | 0x4D40 | size: 0x7
.obj str_door_5_tou_0000d9f8, local
	.string "door_5"
.endobj str_door_5_tou_0000d9f8

# .rodata:0x2F | 0x4D47 | size: 0x1
.obj gap_03_00004D47_rodata, global
.hidden gap_03_00004D47_rodata
	.byte 0x00
.endobj gap_03_00004D47_rodata

# .rodata:0x30 | 0x4D48 | size: 0x7
.obj str_door_6_tou_0000da00, local
	.string "door_6"
.endobj str_door_6_tou_0000da00

# .rodata:0x37 | 0x4D4F | size: 0x1
.obj gap_03_00004D4F_rodata, global
.hidden gap_03_00004D4F_rodata
	.byte 0x00
.endobj gap_03_00004D4F_rodata

# .rodata:0x38 | 0x4D50 | size: 0x7
.obj str_door_7_tou_0000da08, local
	.string "door_7"
.endobj str_door_7_tou_0000da08

# .rodata:0x3F | 0x4D57 | size: 0x1
.obj gap_03_00004D57_rodata, global
.hidden gap_03_00004D57_rodata
	.byte 0x00
.endobj gap_03_00004D57_rodata

# .rodata:0x40 | 0x4D58 | size: 0x7
.obj str_door_e_tou_0000da10, local
	.string "door_e"
.endobj str_door_e_tou_0000da10

# .rodata:0x47 | 0x4D5F | size: 0x1
.obj gap_03_00004D5F_rodata, global
.hidden gap_03_00004D5F_rodata
	.byte 0x00
.endobj gap_03_00004D5F_rodata

# .rodata:0x48 | 0x4D60 | size: 0x5
.obj str_ao_a_tou_0000da18, local
	.string "ao_a"
.endobj str_ao_a_tou_0000da18

# .rodata:0x4D | 0x4D65 | size: 0x3
.obj gap_03_00004D65_rodata, global
.hidden gap_03_00004D65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004D65_rodata

# .rodata:0x50 | 0x4D68 | size: 0x5
.obj str_ao_b_tou_0000da20, local
	.string "ao_b"
.endobj str_ao_b_tou_0000da20

# .rodata:0x55 | 0x4D6D | size: 0x3
.obj gap_03_00004D6D_rodata, global
.hidden gap_03_00004D6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004D6D_rodata

# .rodata:0x58 | 0x4D70 | size: 0x6
.obj str_aka_a_tou_0000da28, local
	.string "aka_a"
.endobj str_aka_a_tou_0000da28

# .rodata:0x5E | 0x4D76 | size: 0x2
.obj gap_03_00004D76_rodata, global
.hidden gap_03_00004D76_rodata
	.2byte 0x0000
.endobj gap_03_00004D76_rodata

# .rodata:0x60 | 0x4D78 | size: 0x6
.obj str_aka_b_tou_0000da30, local
	.string "aka_b"
.endobj str_aka_b_tou_0000da30

# .rodata:0x66 | 0x4D7E | size: 0x2
.obj gap_03_00004D7E_rodata, global
.hidden gap_03_00004D7E_rodata
	.2byte 0x0000
.endobj gap_03_00004D7E_rodata

# .rodata:0x68 | 0x4D80 | size: 0x7
.obj str_w_bero_tou_0000da38, local
	.string "w_bero"
.endobj str_w_bero_tou_0000da38

# .rodata:0x6F | 0x4D87 | size: 0x1
.obj gap_03_00004D87_rodata, global
.hidden gap_03_00004D87_rodata
	.byte 0x00
.endobj gap_03_00004D87_rodata

# .rodata:0x70 | 0x4D88 | size: 0x7
.obj str_tou_02_tou_0000da40, local
	.string "tou_02"
.endobj str_tou_02_tou_0000da40

# .rodata:0x77 | 0x4D8F | size: 0x1
.obj gap_03_00004D8F_rodata, global
.hidden gap_03_00004D8F_rodata
	.byte 0x00
.endobj gap_03_00004D8F_rodata

# .rodata:0x78 | 0x4D90 | size: 0x9
.obj str_n_bero_4_tou_0000da48, local
	.string "n_bero_4"
.endobj str_n_bero_4_tou_0000da48

# .rodata:0x81 | 0x4D99 | size: 0x3
.obj gap_03_00004D99_rodata, global
.hidden gap_03_00004D99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004D99_rodata

# .rodata:0x84 | 0x4D9C | size: 0x9
.obj str_s_bero_1_tou_0000da54, local
	.string "s_bero_1"
.endobj str_s_bero_1_tou_0000da54

# .rodata:0x8D | 0x4DA5 | size: 0x3
.obj gap_03_00004DA5_rodata, global
.hidden gap_03_00004DA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DA5_rodata

# .rodata:0x90 | 0x4DA8 | size: 0x7
.obj str_tou_11_tou_0000da60, local
	.string "tou_11"
.endobj str_tou_11_tou_0000da60

# .rodata:0x97 | 0x4DAF | size: 0x1
.obj gap_03_00004DAF_rodata, global
.hidden gap_03_00004DAF_rodata
	.byte 0x00
.endobj gap_03_00004DAF_rodata

# .rodata:0x98 | 0x4DB0 | size: 0x7
.obj str_n_bero_tou_0000da68, local
	.string "n_bero"
.endobj str_n_bero_tou_0000da68

# .rodata:0x9F | 0x4DB7 | size: 0x1
.obj gap_03_00004DB7_rodata, global
.hidden gap_03_00004DB7_rodata
	.byte 0x00
.endobj gap_03_00004DB7_rodata

# .rodata:0xA0 | 0x4DB8 | size: 0x9
.obj str_s_bero_2_tou_0000da70, local
	.string "s_bero_2"
.endobj str_s_bero_2_tou_0000da70

# .rodata:0xA9 | 0x4DC1 | size: 0x3
.obj gap_03_00004DC1_rodata, global
.hidden gap_03_00004DC1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DC1_rodata

# .rodata:0xAC | 0x4DC4 | size: 0x7
.obj str_tou_09_tou_0000da7c, local
	.string "tou_09"
.endobj str_tou_09_tou_0000da7c

# .rodata:0xB3 | 0x4DCB | size: 0x1
.obj gap_03_00004DCB_rodata, global
.hidden gap_03_00004DCB_rodata
	.byte 0x00
.endobj gap_03_00004DCB_rodata

# .rodata:0xB4 | 0x4DCC | size: 0x9
.obj str_s_bero_3_tou_0000da84, local
	.string "s_bero_3"
.endobj str_s_bero_3_tou_0000da84

# .rodata:0xBD | 0x4DD5 | size: 0x3
.obj gap_03_00004DD5_rodata, global
.hidden gap_03_00004DD5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DD5_rodata

# .rodata:0xC0 | 0x4DD8 | size: 0x7
.obj str_tou_07_tou_0000da90, local
	.string "tou_07"
.endobj str_tou_07_tou_0000da90

# .rodata:0xC7 | 0x4DDF | size: 0x1
.obj gap_03_00004DDF_rodata, global
.hidden gap_03_00004DDF_rodata
	.byte 0x00
.endobj gap_03_00004DDF_rodata

# .rodata:0xC8 | 0x4DE0 | size: 0x9
.obj str_s_bero_4_tou_0000da98, local
	.string "s_bero_4"
.endobj str_s_bero_4_tou_0000da98

# .rodata:0xD1 | 0x4DE9 | size: 0x3
.obj gap_03_00004DE9_rodata, global
.hidden gap_03_00004DE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DE9_rodata

# .rodata:0xD4 | 0x4DEC | size: 0x7
.obj str_tou_06_tou_0000daa4, local
	.string "tou_06"
.endobj str_tou_06_tou_0000daa4

# .rodata:0xDB | 0x4DF3 | size: 0x1
.obj gap_03_00004DF3_rodata, global
.hidden gap_03_00004DF3_rodata
	.byte 0x00
.endobj gap_03_00004DF3_rodata

# .rodata:0xDC | 0x4DF4 | size: 0x9
.obj str_s_bero_5_tou_0000daac, local
	.string "s_bero_5"
.endobj str_s_bero_5_tou_0000daac

# .rodata:0xE5 | 0x4DFD | size: 0x3
.obj gap_03_00004DFD_rodata, global
.hidden gap_03_00004DFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DFD_rodata

# .rodata:0xE8 | 0x4E00 | size: 0x7
.obj str_tou_05_tou_0000dab8, local
	.string "tou_05"
.endobj str_tou_05_tou_0000dab8

# .rodata:0xEF | 0x4E07 | size: 0x1
.obj gap_03_00004E07_rodata, global
.hidden gap_03_00004E07_rodata
	.byte 0x00
.endobj gap_03_00004E07_rodata

# .rodata:0xF0 | 0x4E08 | size: 0x9
.obj str_s_bero_6_tou_0000dac0, local
	.string "s_bero_6"
.endobj str_s_bero_6_tou_0000dac0

# .rodata:0xF9 | 0x4E11 | size: 0x3
.obj gap_03_00004E11_rodata, global
.hidden gap_03_00004E11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E11_rodata

# .rodata:0xFC | 0x4E14 | size: 0x7
.obj str_tou_08_tou_0000dacc, local
	.string "tou_08"
.endobj str_tou_08_tou_0000dacc

# .rodata:0x103 | 0x4E1B | size: 0x1
.obj gap_03_00004E1B_rodata, global
.hidden gap_03_00004E1B_rodata
	.byte 0x00
.endobj gap_03_00004E1B_rodata

# .rodata:0x104 | 0x4E1C | size: 0x9
.obj str_s_bero_7_tou_0000dad4, local
	.string "s_bero_7"
.endobj str_s_bero_7_tou_0000dad4

# .rodata:0x10D | 0x4E25 | size: 0x3
.obj gap_03_00004E25_rodata, global
.hidden gap_03_00004E25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E25_rodata

# .rodata:0x110 | 0x4E28 | size: 0x7
.obj str_tou_10_tou_0000dae0, local
	.string "tou_10"
.endobj str_tou_10_tou_0000dae0

# .rodata:0x117 | 0x4E2F | size: 0x1
.obj gap_03_00004E2F_rodata, global
.hidden gap_03_00004E2F_rodata
	.byte 0x00
.endobj gap_03_00004E2F_rodata

# .rodata:0x118 | 0x4E30 | size: 0x7
.obj str_e_bero_tou_0000dae8, local
	.string "e_bero"
.endobj str_e_bero_tou_0000dae8

# .rodata:0x11F | 0x4E37 | size: 0x1
.obj gap_03_00004E37_rodata, global
.hidden gap_03_00004E37_rodata
	.byte 0x00
.endobj gap_03_00004E37_rodata

# .rodata:0x120 | 0x4E38 | size: 0x9
.obj str_n_bero_3_tou_0000daf0, local
	.string "n_bero_3"
.endobj str_n_bero_3_tou_0000daf0

# .rodata:0x129 | 0x4E41 | size: 0x3
.obj gap_03_00004E41_rodata, global
.hidden gap_03_00004E41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E41_rodata

# .rodata:0x12C | 0x4E44 | size: 0x9
.obj str_n_bero_1_tou_0000dafc, local
	.string "n_bero_1"
.endobj str_n_bero_1_tou_0000dafc

# .rodata:0x135 | 0x4E4D | size: 0x3
.obj gap_03_00004E4D_rodata, global
.hidden gap_03_00004E4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E4D_rodata

# .rodata:0x138 | 0x4E50 | size: 0x7
.obj str_tou_03_tou_0000db08, local
	.string "tou_03"
.endobj str_tou_03_tou_0000db08

# .rodata:0x13F | 0x4E57 | size: 0x1
.obj gap_03_00004E57_rodata, global
.hidden gap_03_00004E57_rodata
	.byte 0x00
.endobj gap_03_00004E57_rodata

# .rodata:0x140 | 0x4E58 | size: 0x9
.obj str_n_bero_2_tou_0000db10, local
	.string "n_bero_2"
.endobj str_n_bero_2_tou_0000db10

# .rodata:0x149 | 0x4E61 | size: 0x3
.obj gap_03_00004E61_rodata, global
.hidden gap_03_00004E61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E61_rodata

# .rodata:0x14C | 0x4E64 | size: 0x3
.obj str_me_tou_0000db1c, local
	.string "me"
.endobj str_me_tou_0000db1c

# .rodata:0x14F | 0x4E67 | size: 0x1
.obj gap_03_00004E67_rodata, global
.hidden gap_03_00004E67_rodata
	.byte 0x00
.endobj gap_03_00004E67_rodata

# .rodata:0x150 | 0x4E68 | size: 0x6
.obj str_mario_tou_0000db20, local
	.string "mario"
.endobj str_mario_tou_0000db20

# .rodata:0x156 | 0x4E6E | size: 0x2
.obj gap_03_00004E6E_rodata, global
.hidden gap_03_00004E6E_rodata
	.2byte 0x0000
.endobj gap_03_00004E6E_rodata

# .rodata:0x158 | 0x4E70 | size: 0xC
.obj str_stg3_tou_39_tou_0000db28, local
	.string "stg3_tou_39"
.endobj str_stg3_tou_39_tou_0000db28

# .rodata:0x164 | 0x4E7C | size: 0x10
.obj str_stg3_tou_297_13_tou_0000db34, local
	.string "stg3_tou_297_13"
.endobj str_stg3_tou_297_13_tou_0000db34

# .rodata:0x174 | 0x4E8C | size: 0xF
.obj str_stg3_tou_96_01_tou_0000db44, local
	.string "stg3_tou_96_01"
.endobj str_stg3_tou_96_01_tou_0000db44

# .rodata:0x183 | 0x4E9B | size: 0x1
.obj gap_03_00004E9B_rodata, global
.hidden gap_03_00004E9B_rodata
	.byte 0x00
.endobj gap_03_00004E9B_rodata

# .rodata:0x184 | 0x4E9C | size: 0xC
.obj str_stg3_tou_96_tou_0000db54, local
	.string "stg3_tou_96"
.endobj str_stg3_tou_96_tou_0000db54

# .rodata:0x190 | 0x4EA8 | size: 0xC
.obj str_stg3_tou_95_tou_0000db60, local
	.string "stg3_tou_95"
.endobj str_stg3_tou_95_tou_0000db60

# .rodata:0x19C | 0x4EB4 | size: 0xC
.obj str_stg3_tou_38_tou_0000db6c, local
	.string "stg3_tou_38"
.endobj str_stg3_tou_38_tou_0000db6c

# .rodata:0x1A8 | 0x4EC0 | size: 0xF
.obj str_stg3_tou_94_01_tou_0000db78, local
	.string "stg3_tou_94_01"
.endobj str_stg3_tou_94_01_tou_0000db78

# .rodata:0x1B7 | 0x4ECF | size: 0x1
.obj gap_03_00004ECF_rodata, global
.hidden gap_03_00004ECF_rodata
	.byte 0x00
.endobj gap_03_00004ECF_rodata

# .rodata:0x1B8 | 0x4ED0 | size: 0x10
.obj str_stg3_tou_423_01_tou_0000db88, local
	.string "stg3_tou_423_01"
.endobj str_stg3_tou_423_01_tou_0000db88

# .rodata:0x1C8 | 0x4EE0 | size: 0x6
.obj str_M_I_Y_tou_0000db98, local
	.string "M_I_Y"
.endobj str_M_I_Y_tou_0000db98

# .rodata:0x1CE | 0x4EE6 | size: 0x2
.obj gap_03_00004EE6_rodata, global
.hidden gap_03_00004EE6_rodata
	.2byte 0x0000
.endobj gap_03_00004EE6_rodata

# .rodata:0x1D0 | 0x4EE8 | size: 0x10
.obj str_stg3_tou_423_02_tou_0000dba0, local
	.string "stg3_tou_423_02"
.endobj str_stg3_tou_423_02_tou_0000dba0

# .rodata:0x1E0 | 0x4EF8 | size: 0x6
.obj str_M_S_1_tou_0000dbb0, local
	.string "M_S_1"
.endobj str_M_S_1_tou_0000dbb0

# .rodata:0x1E6 | 0x4EFE | size: 0x2
.obj gap_03_00004EFE_rodata, global
.hidden gap_03_00004EFE_rodata
	.2byte 0x0000
.endobj gap_03_00004EFE_rodata

# .rodata:0x1E8 | 0x4F00 | size: 0xC
.obj str_stg3_tou_94_tou_0000dbb8, local
	.string "stg3_tou_94"
.endobj str_stg3_tou_94_tou_0000dbb8

# .rodata:0x1F4 | 0x4F0C | size: 0xC
.obj str_stg3_tou_99_tou_0000dbc4, local
	.string "stg3_tou_99"
.endobj str_stg3_tou_99_tou_0000dbc4

# .rodata:0x200 | 0x4F18 | size: 0xC
.obj str_stg3_tou_98_tou_0000dbd0, local
	.string "stg3_tou_98"
.endobj str_stg3_tou_98_tou_0000dbd0

# .rodata:0x20C | 0x4F24 | size: 0xF
.obj str_stg3_tou_99_01_tou_0000dbdc, local
	.string "stg3_tou_99_01"
.endobj str_stg3_tou_99_01_tou_0000dbdc

# .rodata:0x21B | 0x4F33 | size: 0x1
.obj gap_03_00004F33_rodata, global
.hidden gap_03_00004F33_rodata
	.byte 0x00
.endobj gap_03_00004F33_rodata

# .rodata:0x21C | 0x4F34 | size: 0xC
.obj str_stg3_tou_40_tou_0000dbec, local
	.string "stg3_tou_40"
.endobj str_stg3_tou_40_tou_0000dbec

# .rodata:0x228 | 0x4F40 | size: 0xC
.obj str_stg3_tou_42_tou_0000dbf8, local
	.string "stg3_tou_42"
.endobj str_stg3_tou_42_tou_0000dbf8

# .rodata:0x234 | 0x4F4C | size: 0xF
.obj str_stg3_tou_42_01_tou_0000dc04, local
	.string "stg3_tou_42_01"
.endobj str_stg3_tou_42_01_tou_0000dc04

# .rodata:0x243 | 0x4F5B | size: 0x1
.obj gap_03_00004F5B_rodata, global
.hidden gap_03_00004F5B_rodata
	.byte 0x00
.endobj gap_03_00004F5B_rodata

# .rodata:0x244 | 0x4F5C | size: 0x10
.obj str_stg3_tou_102_02_tou_0000dc14, local
	.string "stg3_tou_102_02"
.endobj str_stg3_tou_102_02_tou_0000dc14

# .rodata:0x254 | 0x4F6C | size: 0x10
.obj str_stg3_tou_102_01_tou_0000dc24, local
	.string "stg3_tou_102_01"
.endobj str_stg3_tou_102_01_tou_0000dc24

# .rodata:0x264 | 0x4F7C | size: 0x10
.obj str_stg3_tou_re_311_tou_0000dc34, local
	.string "stg3_tou_re_311"
.endobj str_stg3_tou_re_311_tou_0000dc34

# .rodata:0x274 | 0x4F8C | size: 0x10
.obj str_stg3_tou_re_310_tou_0000dc44, local
	.string "stg3_tou_re_310"
.endobj str_stg3_tou_re_310_tou_0000dc44

# .rodata:0x284 | 0x4F9C | size: 0x10
.obj str_stg3_tou_re_314_tou_0000dc54, local
	.string "stg3_tou_re_314"
.endobj str_stg3_tou_re_314_tou_0000dc54

# .rodata:0x294 | 0x4FAC | size: 0x10
.obj str_stg3_tou_re_313_tou_0000dc64, local
	.string "stg3_tou_re_313"
.endobj str_stg3_tou_re_313_tou_0000dc64

# .rodata:0x2A4 | 0x4FBC | size: 0x10
.obj str_stg3_tou_re_312_tou_0000dc74, local
	.string "stg3_tou_re_312"
.endobj str_stg3_tou_re_312_tou_0000dc74

# .rodata:0x2B4 | 0x4FCC | size: 0xD
.obj str_stg3_tou_101_tou_0000dc84, local
	.string "stg3_tou_101"
.endobj str_stg3_tou_101_tou_0000dc84

# .rodata:0x2C1 | 0x4FD9 | size: 0x3
.obj gap_03_00004FD9_rodata, global
.hidden gap_03_00004FD9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004FD9_rodata

# .rodata:0x2C4 | 0x4FDC | size: 0x10
.obj str_stg3_tou_102_00_tou_0000dc94, local
	.string "stg3_tou_102_00"
.endobj str_stg3_tou_102_00_tou_0000dc94

# .rodata:0x2D4 | 0x4FEC | size: 0xD
.obj str_stg3_tou_102_tou_0000dca4, local
	.string "stg3_tou_102"
.endobj str_stg3_tou_102_tou_0000dca4

# .rodata:0x2E1 | 0x4FF9 | size: 0x3
.obj gap_03_00004FF9_rodata, global
.hidden gap_03_00004FF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004FF9_rodata

# .rodata:0x2E4 | 0x4FFC | size: 0x10
.obj str_stg3_tou_100_01_tou_0000dcb4, local
	.string "stg3_tou_100_01"
.endobj str_stg3_tou_100_01_tou_0000dcb4

# .rodata:0x2F4 | 0x500C | size: 0xD
.obj str_stg3_tou_100_tou_0000dcc4, local
	.string "stg3_tou_100"
.endobj str_stg3_tou_100_tou_0000dcc4

# .rodata:0x301 | 0x5019 | size: 0x3
.obj gap_03_00005019_rodata, global
.hidden gap_03_00005019_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005019_rodata

# .rodata:0x304 | 0x501C | size: 0x10
.obj str_stg3_tou_423_03_tou_0000dcd4, local
	.string "stg3_tou_423_03"
.endobj str_stg3_tou_423_03_tou_0000dcd4

# .rodata:0x314 | 0x502C | size: 0xF
.obj str_stg3_tou_97_01_tou_0000dce4, local
	.string "stg3_tou_97_01"
.endobj str_stg3_tou_97_01_tou_0000dce4

# .rodata:0x323 | 0x503B | size: 0x1
.obj gap_03_0000503B_rodata, global
.hidden gap_03_0000503B_rodata
	.byte 0x00
.endobj gap_03_0000503B_rodata

# .rodata:0x324 | 0x503C | size: 0xC
.obj str_stg3_tou_97_tou_0000dcf4, local
	.string "stg3_tou_97"
.endobj str_stg3_tou_97_tou_0000dcf4

# .rodata:0x330 | 0x5048 | size: 0x10
.obj str_stg3_tou_102_03_tou_0000dd00, local
	.string "stg3_tou_102_03"
.endobj str_stg3_tou_102_03_tou_0000dd00

# .rodata:0x340 | 0x5058 | size: 0x10
.obj str_stg3_tou_102_04_tou_0000dd10, local
	.string "stg3_tou_102_04"
.endobj str_stg3_tou_102_04_tou_0000dd10

# .rodata:0x350 | 0x5068 | size: 0x18
.obj str_stg3_tou_hushigi_lis_tou_0000dd20, local
	.string "stg3_tou_hushigi_list_1"
.endobj str_stg3_tou_hushigi_lis_tou_0000dd20

# .rodata:0x368 | 0x5080 | size: 0x18
.obj str_stg3_tou_hushigi_lis_tou_0000dd38, local
	.string "stg3_tou_hushigi_list_2"
.endobj str_stg3_tou_hushigi_lis_tou_0000dd38

# .rodata:0x380 | 0x5098 | size: 0x18
.obj str_stg3_tou_hushigi_lis_tou_0000dd50, local
	.string "stg3_tou_hushigi_list_3"
.endobj str_stg3_tou_hushigi_lis_tou_0000dd50

# .rodata:0x398 | 0x50B0 | size: 0x18
.obj str_stg3_tou_hushigi_lis_tou_0000dd68, local
	.string "stg3_tou_hushigi_list_4"
.endobj str_stg3_tou_hushigi_lis_tou_0000dd68

# .rodata:0x3B0 | 0x50C8 | size: 0x18
.obj str_stg3_tou_hushigi_lis_tou_0000dd80, local
	.string "stg3_tou_hushigi_list_5"
.endobj str_stg3_tou_hushigi_lis_tou_0000dd80

# .rodata:0x3C8 | 0x50E0 | size: 0x18
.obj str_stg3_tou_hushigi_lis_tou_0000dd98, local
	.string "stg3_tou_hushigi_list_6"
.endobj str_stg3_tou_hushigi_lis_tou_0000dd98

# .rodata:0x3E0 | 0x50F8 | size: 0x18
.obj str_stg3_tou_hushigi_lis_tou_0000ddb0, local
	.string "stg3_tou_hushigi_list_7"
.endobj str_stg3_tou_hushigi_lis_tou_0000ddb0

# .rodata:0x3F8 | 0x5110 | size: 0x14
.obj str_stg3_tou_hushigi_00_tou_0000ddc8, local
	.string "stg3_tou_hushigi_00"
.endobj str_stg3_tou_hushigi_00_tou_0000ddc8

# .rodata:0x40C | 0x5124 | size: 0x6
.obj str_M_I_2_tou_0000dddc, local
	.string "M_I_2"
.endobj str_M_I_2_tou_0000dddc

# .rodata:0x412 | 0x512A | size: 0x2
.obj gap_03_0000512A_rodata, global
.hidden gap_03_0000512A_rodata
	.2byte 0x0000
.endobj gap_03_0000512A_rodata

# .rodata:0x414 | 0x512C | size: 0x14
.obj str_stg3_tou_hushigi_01_tou_0000dde4, local
	.string "stg3_tou_hushigi_01"
.endobj str_stg3_tou_hushigi_01_tou_0000dde4

# .rodata:0x428 | 0x5140 | size: 0x6
.obj str_M_N_B_tou_0000ddf8, local
	.string "M_N_B"
.endobj str_M_N_B_tou_0000ddf8

# .rodata:0x42E | 0x5146 | size: 0x2
.obj gap_03_00005146_rodata, global
.hidden gap_03_00005146_rodata
	.2byte 0x0000
.endobj gap_03_00005146_rodata

# .rodata:0x430 | 0x5148 | size: 0x14
.obj str_stg3_tou_hushigi_02_tou_0000de00, local
	.string "stg3_tou_hushigi_02"
.endobj str_stg3_tou_hushigi_02_tou_0000de00

# .rodata:0x444 | 0x515C | size: 0x14
.obj str_stg3_tou_hushigi_03_tou_0000de14, local
	.string "stg3_tou_hushigi_03"
.endobj str_stg3_tou_hushigi_03_tou_0000de14

# .rodata:0x458 | 0x5170 | size: 0x17
.obj str_stg3_tou_hushigi_02__tou_0000de28, local
	.string "stg3_tou_hushigi_02_yn"
.endobj str_stg3_tou_hushigi_02__tou_0000de28

# .rodata:0x46F | 0x5187 | size: 0x1
.obj gap_03_00005187_rodata, global
.hidden gap_03_00005187_rodata
	.byte 0x00
.endobj gap_03_00005187_rodata

# .rodata:0x470 | 0x5188 | size: 0x14
.obj str_stg3_tou_hushigi_06_tou_0000de40, local
	.string "stg3_tou_hushigi_06"
.endobj str_stg3_tou_hushigi_06_tou_0000de40

# .rodata:0x484 | 0x519C | size: 0x14
.obj str_stg3_tou_hushigi_07_tou_0000de54, local
	.string "stg3_tou_hushigi_07"
.endobj str_stg3_tou_hushigi_07_tou_0000de54

# .rodata:0x498 | 0x51B0 | size: 0x14
.obj str_stg3_tou_hushigi_05_tou_0000de68, local
	.string "stg3_tou_hushigi_05"
.endobj str_stg3_tou_hushigi_05_tou_0000de68

# .rodata:0x4AC | 0x51C4 | size: 0x14
.obj str_stg3_tou_hushigi_11_tou_0000de7c, local
	.string "stg3_tou_hushigi_11"
.endobj str_stg3_tou_hushigi_11_tou_0000de7c

# .rodata:0x4C0 | 0x51D8 | size: 0x14
.obj str_stg3_tou_hushigi_12_tou_0000de90, local
	.string "stg3_tou_hushigi_12"
.endobj str_stg3_tou_hushigi_12_tou_0000de90

# .rodata:0x4D4 | 0x51EC | size: 0x14
.obj str_stg3_tou_hushigi_13_tou_0000dea4, local
	.string "stg3_tou_hushigi_13"
.endobj str_stg3_tou_hushigi_13_tou_0000dea4

# .rodata:0x4E8 | 0x5200 | size: 0x14
.obj str_stg3_tou_hushigi_14_tou_0000deb8, local
	.string "stg3_tou_hushigi_14"
.endobj str_stg3_tou_hushigi_14_tou_0000deb8

# .rodata:0x4FC | 0x5214 | size: 0x14
.obj str_stg3_tou_hushigi_15_tou_0000decc, local
	.string "stg3_tou_hushigi_15"
.endobj str_stg3_tou_hushigi_15_tou_0000decc

# .rodata:0x510 | 0x5228 | size: 0x14
.obj str_stg3_tou_hushigi_16_tou_0000dee0, local
	.string "stg3_tou_hushigi_16"
.endobj str_stg3_tou_hushigi_16_tou_0000dee0

# .rodata:0x524 | 0x523C | size: 0x14
.obj str_stg3_tou_hushigi_17_tou_0000def4, local
	.string "stg3_tou_hushigi_17"
.endobj str_stg3_tou_hushigi_17_tou_0000def4

# .rodata:0x538 | 0x5250 | size: 0x14
.obj str_stg3_tou_hushigi_08_tou_0000df08, local
	.string "stg3_tou_hushigi_08"
.endobj str_stg3_tou_hushigi_08_tou_0000df08

# .rodata:0x54C | 0x5264 | size: 0xB
.obj str_キノシコワ_tou_0000df1c, local
	.4byte 0x834C836D
	.4byte 0x83568352
	.byte 0x83, 0x8F, 0x00
.endobj str_キノシコワ_tou_0000df1c

# .rodata:0x557 | 0x526F | size: 0x1
.obj gap_03_0000526F_rodata, global
.hidden gap_03_0000526F_rodata
	.byte 0x00
.endobj gap_03_0000526F_rodata

# .rodata:0x558 | 0x5270 | size: 0x7
.obj str_ガンス_tou_0000df28, local
	.4byte 0x834B8393
	.byte 0x83, 0x58, 0x00
.endobj str_ガンス_tou_0000df28

# .rodata:0x55F | 0x5277 | size: 0x1
.obj gap_03_00005277_rodata, global
.hidden gap_03_00005277_rodata
	.byte 0x00
.endobj gap_03_00005277_rodata

# .rodata:0x560 | 0x5278 | size: 0xD
.obj str_チャンピョン_tou_0000df30, local
	.4byte 0x83608383
	.4byte 0x83938373
	.4byte 0x83878393
	.byte 0x00
.endobj str_チャンピョン_tou_0000df30

# .rodata:0x56D | 0x5285 | size: 0x3
.obj gap_03_00005285_rodata, global
.hidden gap_03_00005285_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005285_rodata

# .rodata:0x570 | 0x5288 | size: 0x9
.obj str_ブロッツ_tou_0000df40, local
	.4byte 0x8375838D
	.4byte 0x83628363
	.byte 0x00
.endobj str_ブロッツ_tou_0000df40

# .rodata:0x579 | 0x5291 | size: 0x3
.obj gap_03_00005291_rodata, global
.hidden gap_03_00005291_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005291_rodata

# .rodata:0x57C | 0x5294 | size: 0xD
.obj str_ガードマン１_tou_0000df4c, local
	.4byte 0x834B815B
	.4byte 0x8368837D
	.4byte 0x83938250
	.byte 0x00
.endobj str_ガードマン１_tou_0000df4c

# .rodata:0x589 | 0x52A1 | size: 0x3
.obj gap_03_000052A1_rodata, global
.hidden gap_03_000052A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000052A1_rodata

# .rodata:0x58C | 0x52A4 | size: 0xD
.obj str_ガードマン２_tou_0000df5c, local
	.4byte 0x834B815B
	.4byte 0x8368837D
	.4byte 0x83938251
	.byte 0x00
.endobj str_ガードマン２_tou_0000df5c

# .rodata:0x599 | 0x52B1 | size: 0x3
.obj gap_03_000052B1_rodata, global
.hidden gap_03_000052B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000052B1_rodata

# .rodata:0x59C | 0x52B4 | size: 0xD
.obj str_ガードマン３_tou_0000df6c, local
	.4byte 0x834B815B
	.4byte 0x8368837D
	.4byte 0x83938252
	.byte 0x00
.endobj str_ガードマン３_tou_0000df6c

# .rodata:0x5A9 | 0x52C1 | size: 0x3
.obj gap_03_000052C1_rodata, global
.hidden gap_03_000052C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000052C1_rodata

# .rodata:0x5AC | 0x52C4 | size: 0xD
.obj str_ガードマン４_tou_0000df7c, local
	.4byte 0x834B815B
	.4byte 0x8368837D
	.4byte 0x83938253
	.byte 0x00
.endobj str_ガードマン４_tou_0000df7c

# .rodata:0x5B9 | 0x52D1 | size: 0x3
.obj gap_03_000052D1_rodata, global
.hidden gap_03_000052D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000052D1_rodata

# .rodata:0x5BC | 0x52D4 | size: 0xD
.obj str_ガードマン５_tou_0000df8c, local
	.4byte 0x834B815B
	.4byte 0x8368837D
	.4byte 0x83938254
	.byte 0x00
.endobj str_ガードマン５_tou_0000df8c

# .rodata:0x5C9 | 0x52E1 | size: 0x3
.obj gap_03_000052E1_rodata, global
.hidden gap_03_000052E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000052E1_rodata

# .rodata:0x5CC | 0x52E4 | size: 0xD
.obj str_ガードマン６_tou_0000df9c, local
	.4byte 0x834B815B
	.4byte 0x8368837D
	.4byte 0x83938255
	.byte 0x00
.endobj str_ガードマン６_tou_0000df9c

# .rodata:0x5D9 | 0x52F1 | size: 0x3
.obj gap_03_000052F1_rodata, global
.hidden gap_03_000052F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000052F1_rodata

# .rodata:0x5DC | 0x52F4 | size: 0xD
.obj str_ガードマン７_tou_0000dfac, local
	.4byte 0x834B815B
	.4byte 0x8368837D
	.4byte 0x83938256
	.byte 0x00
.endobj str_ガードマン７_tou_0000dfac

# .rodata:0x5E9 | 0x5301 | size: 0x3
.obj gap_03_00005301_rodata, global
.hidden gap_03_00005301_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005301_rodata

# .rodata:0x5EC | 0x5304 | size: 0xD
.obj str_ガードマン８_tou_0000dfbc, local
	.4byte 0x834B815B
	.4byte 0x8368837D
	.4byte 0x83938257
	.byte 0x00
.endobj str_ガードマン８_tou_0000dfbc

# .rodata:0x5F9 | 0x5311 | size: 0x3
.obj gap_03_00005311_rodata, global
.hidden gap_03_00005311_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005311_rodata

# .rodata:0x5FC | 0x5314 | size: 0xD
.obj str_ガードマン９_tou_0000dfcc, local
	.4byte 0x834B815B
	.4byte 0x8368837D
	.4byte 0x83938258
	.byte 0x00
.endobj str_ガードマン９_tou_0000dfcc

# .rodata:0x609 | 0x5321 | size: 0x3
.obj gap_03_00005321_rodata, global
.hidden gap_03_00005321_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005321_rodata

# .rodata:0x60C | 0x5324 | size: 0xF
.obj str_ガードマン１０_tou_0000dfdc, local
	.4byte 0x834B815B
	.4byte 0x8368837D
	.4byte 0x83938250
	.byte 0x82, 0x4F, 0x00
.endobj str_ガードマン１０_tou_0000dfdc

# .rodata:0x61B | 0x5333 | size: 0x1
.obj gap_03_00005333_rodata, global
.hidden gap_03_00005333_rodata
	.byte 0x00
.endobj gap_03_00005333_rodata

# .rodata:0x61C | 0x5334 | size: 0xF
.obj str_ガードマン１１_tou_0000dfec, local
	.4byte 0x834B815B
	.4byte 0x8368837D
	.4byte 0x83938250
	.byte 0x82, 0x50, 0x00
.endobj str_ガードマン１１_tou_0000dfec

# .rodata:0x62B | 0x5343 | size: 0x1
.obj gap_03_00005343_rodata, global
.hidden gap_03_00005343_rodata
	.byte 0x00
.endobj gap_03_00005343_rodata

# .rodata:0x62C | 0x5344 | size: 0x9
.obj str_anm_mizu_tou_0000dffc, local
	.string "anm_mizu"
.endobj str_anm_mizu_tou_0000dffc

# .rodata:0x635 | 0x534D | size: 0x3
.obj gap_03_0000534D_rodata, global
.hidden gap_03_0000534D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000534D_rodata

# .rodata:0x638 | 0x5350 | size: 0x18
.obj str_SFX_STG3_AMB_WATERDR_tou_0000e008, local
	.string "SFX_STG3_AMB_WATERDROP1"
.endobj str_SFX_STG3_AMB_WATERDR_tou_0000e008

# .rodata:0x650 | 0x5368 | size: 0xC
.obj str_stg3_tou_62_tou_0000e020, local
	.string "stg3_tou_62"
.endobj str_stg3_tou_62_tou_0000e020

# .rodata:0x65C | 0x5374 | size: 0x4
.obj str_M_1_tou_0000e02c, local
	.string "M_1"
.endobj str_M_1_tou_0000e02c

# .rodata:0x660 | 0x5378 | size: 0xC
.obj str_stg3_tou_76_tou_0000e030, local
	.string "stg3_tou_76"
.endobj str_stg3_tou_76_tou_0000e030

# .rodata:0x66C | 0x5384 | size: 0xD
.obj str_stg3_tou_328_tou_0000e03c, local
	.string "stg3_tou_328"
.endobj str_stg3_tou_328_tou_0000e03c

# .rodata:0x679 | 0x5391 | size: 0x3
.obj gap_03_00005391_rodata, global
.hidden gap_03_00005391_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005391_rodata

# .rodata:0x67C | 0x5394 | size: 0xD
.obj str_stg3_tou_407_tou_0000e04c, local
	.string "stg3_tou_407"
.endobj str_stg3_tou_407_tou_0000e04c

# .rodata:0x689 | 0x53A1 | size: 0x3
.obj gap_03_000053A1_rodata, global
.hidden gap_03_000053A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000053A1_rodata

# .rodata:0x68C | 0x53A4 | size: 0xD
.obj str_stg3_tou_408_tou_0000e05c, local
	.string "stg3_tou_408"
.endobj str_stg3_tou_408_tou_0000e05c

# .rodata:0x699 | 0x53B1 | size: 0x3
.obj gap_03_000053B1_rodata, global
.hidden gap_03_000053B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000053B1_rodata

# .rodata:0x69C | 0x53B4 | size: 0x10
.obj str_stg3_tou_408_01_tou_0000e06c, local
	.string "stg3_tou_408_01"
.endobj str_stg3_tou_408_01_tou_0000e06c

# .rodata:0x6AC | 0x53C4 | size: 0xD
.obj str_stg3_tou_454_tou_0000e07c, local
	.string "stg3_tou_454"
.endobj str_stg3_tou_454_tou_0000e07c

# .rodata:0x6B9 | 0x53D1 | size: 0x3
.obj gap_03_000053D1_rodata, global
.hidden gap_03_000053D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000053D1_rodata

# .rodata:0x6BC | 0x53D4 | size: 0x13
.obj str_SFX_STG3_DRAINING1_tou_0000e08c, local
	.string "SFX_STG3_DRAINING1"
.endobj str_SFX_STG3_DRAINING1_tou_0000e08c

# .rodata:0x6CF | 0x53E7 | size: 0x1
.obj gap_03_000053E7_rodata, global
.hidden gap_03_000053E7_rodata
	.byte 0x00
.endobj gap_03_000053E7_rodata

# .rodata:0x6D0 | 0x53E8 | size: 0x2
.obj str_a_tou_0000e0a0, local
	.string "a"
.endobj str_a_tou_0000e0a0

# .rodata:0x6D2 | 0x53EA | size: 0x2
.obj gap_03_000053EA_rodata, global
.hidden gap_03_000053EA_rodata
	.2byte 0x0000
.endobj gap_03_000053EA_rodata

# .rodata:0x6D4 | 0x53EC | size: 0x2
.obj str_b_tou_0000e0a4, local
	.string "b"
.endobj str_b_tou_0000e0a4

# .rodata:0x6D6 | 0x53EE | size: 0x2
.obj gap_03_000053EE_rodata, global
.hidden gap_03_000053EE_rodata
	.2byte 0x0000
.endobj gap_03_000053EE_rodata

# .rodata:0x6D8 | 0x53F0 | size: 0x6
.obj str_dokan_tou_0000e0a8, local
	.string "dokan"
.endobj str_dokan_tou_0000e0a8

# .rodata:0x6DE | 0x53F6 | size: 0x2
.obj gap_03_000053F6_rodata, global
.hidden gap_03_000053F6_rodata
	.2byte 0x0000
.endobj gap_03_000053F6_rodata

# .rodata:0x6E0 | 0x53F8 | size: 0x10
.obj str_stg3_tou_240_02_tou_0000e0b0, local
	.string "stg3_tou_240_02"
.endobj str_stg3_tou_240_02_tou_0000e0b0

# .rodata:0x6F0 | 0x5408 | size: 0x10
.obj str_stg3_tou_240_03_tou_0000e0c0, local
	.string "stg3_tou_240_03"
.endobj str_stg3_tou_240_03_tou_0000e0c0

# .rodata:0x700 | 0x5418 | size: 0x10
.obj str_stg3_tou_240_04_tou_0000e0d0, local
	.string "stg3_tou_240_04"
.endobj str_stg3_tou_240_04_tou_0000e0d0

# .rodata:0x710 | 0x5428 | size: 0x10
.obj str_stg3_tou_240_05_tou_0000e0e0, local
	.string "stg3_tou_240_05"
.endobj str_stg3_tou_240_05_tou_0000e0e0

# .rodata:0x720 | 0x5438 | size: 0x13
.obj str_stg3_tou_297_27_00_tou_0000e0f0, local
	.string "stg3_tou_297_27_00"
.endobj str_stg3_tou_297_27_00_tou_0000e0f0

# .rodata:0x733 | 0x544B | size: 0x1
.obj gap_03_0000544B_rodata, global
.hidden gap_03_0000544B_rodata
	.byte 0x00
.endobj gap_03_0000544B_rodata

# .rodata:0x734 | 0x544C | size: 0x13
.obj str_stg3_tou_297_27_01_tou_0000e104, local
	.string "stg3_tou_297_27_01"
.endobj str_stg3_tou_297_27_01_tou_0000e104

# .rodata:0x747 | 0x545F | size: 0x1
.obj gap_03_0000545F_rodata, global
.hidden gap_03_0000545F_rodata
	.byte 0x00
.endobj gap_03_0000545F_rodata

# .rodata:0x748 | 0x5460 | size: 0xE
.obj str_BGM_STG3_TOU1_tou_0000e118, local
	.string "BGM_STG3_TOU1"
.endobj str_BGM_STG3_TOU1_tou_0000e118

# .rodata:0x756 | 0x546E | size: 0x2
.obj gap_03_0000546E_rodata, global
.hidden gap_03_0000546E_rodata
	.2byte 0x0000
.endobj gap_03_0000546E_rodata

# .rodata:0x758 | 0x5470 | size: 0x10
.obj str_stg3_tou_462_01_tou_0000e128, local
	.string "stg3_tou_462_01"
.endobj str_stg3_tou_462_01_tou_0000e128

# .rodata:0x768 | 0x5480 | size: 0x8
.obj str_item_01_tou_0000e138, local
	.string "item_01"
.endobj str_item_01_tou_0000e138

# .rodata:0x770 | 0x5488 | size: 0xB
.obj str_mobj_save1_tou_0000e140, local
	.string "mobj_save1"
.endobj str_mobj_save1_tou_0000e140

# .rodata:0x77B | 0x5493 | size: 0x1
.obj gap_03_00005493_rodata, global
.hidden gap_03_00005493_rodata
	.byte 0x00
.endobj gap_03_00005493_rodata

# .rodata:0x77C | 0x5494 | size: 0xB
.obj str_mobj_save3_tou_0000e14c, local
	.string "mobj_save3"
.endobj str_mobj_save3_tou_0000e14c

# .rodata:0x787 | 0x549F | size: 0x1
.obj gap_03_0000549F_rodata, global
.hidden gap_03_0000549F_rodata
	.byte 0x00
.endobj gap_03_0000549F_rodata

# .rodata:0x788 | 0x54A0 | size: 0xE
.obj str_BGM_STG3_TOU2_tou_0000e158, local
	.string "BGM_STG3_TOU2"
.endobj str_BGM_STG3_TOU2_tou_0000e158

# .rodata:0x796 | 0x54AE | size: 0x2
.obj gap_03_000054AE_rodata, global
.hidden gap_03_000054AE_rodata
	.2byte 0x0000
.endobj gap_03_000054AE_rodata

# .rodata:0x798 | 0x54B0 | size: 0xE
.obj str_ENV_STG3_TOU4_tou_0000e168, local
	.string "ENV_STG3_TOU4"
.endobj str_ENV_STG3_TOU4_tou_0000e168

# .rodata:0x7A6 | 0x54BE | size: 0x2
.obj gap_03_000054BE_rodata, global
.hidden gap_03_000054BE_rodata
	.2byte 0x0000
.endobj gap_03_000054BE_rodata

# .rodata:0x7A8 | 0x54C0 | size: 0x14
.obj str_BGM_EVT_STG3_GANCE1_tou_0000e178, local
	.string "BGM_EVT_STG3_GANCE1"
.endobj str_BGM_EVT_STG3_GANCE1_tou_0000e178

# .rodata:0x7BC | 0x54D4 | size: 0x5
.obj str_lock_tou_0000e18c, local
	.string "lock"
.endobj str_lock_tou_0000e18c

# .rodata:0x7C1 | 0x54D9 | size: 0x3
.obj gap_03_000054D9_rodata, global
.hidden gap_03_000054D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000054D9_rodata

# .rodata:0x7C4 | 0x54DC | size: 0x15
.obj str_select_PCTd_PCTd_PCT_tou_0000e194, local
	.string "<select %d %d %d %d>"
.endobj str_select_PCTd_PCTd_PCT_tou_0000e194

# .rodata:0x7D9 | 0x54F1 | size: 0x3
.obj gap_03_000054F1_rodata, global
.hidden gap_03_000054F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000054F1_rodata

# .rodata:0x7DC | 0x54F4 | size: 0x2
.obj str__tou_0000e1ac, local
	.string "\n"
.endobj str__tou_0000e1ac

# .rodata:0x7DE | 0x54F6 | size: 0x2
.obj gap_03_000054F6_rodata, global
.hidden gap_03_000054F6_rodata
	.2byte 0x0000
.endobj gap_03_000054F6_rodata

# 0x00016D60..0x0001C3A0 | size: 0x5640
.data
.balign 8

# .data:0x0 | 0x16D60 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x16D68 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x16D6C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x16D70 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x16D74 | size: 0x4
.obj gap_04_00016D74_data, global
.hidden gap_04_00016D74_data
	.4byte 0x00000000
.endobj gap_04_00016D74_data

# .data:0x18 | 0x16D78 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x16D80 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x16D84 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x16D88 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x16D90 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x16D94 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x16D98 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x16D9C | size: 0x4
.obj gap_04_00016D9C_data, global
.hidden gap_04_00016D9C_data
	.4byte 0x00000000
.endobj gap_04_00016D9C_data

# .data:0x40 | 0x16DA0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x16DA8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x16DAC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x16DB0 | size: 0x30
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_w_tou_0000d9d0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x80 | 0x16DE0 | size: 0x30
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_w_tou_0000d9d0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xB0 | 0x16E10 | size: 0x30
.obj _1_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000d9d8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _1_door_open

# .data:0xE0 | 0x16E40 | size: 0x30
.obj _1_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000d9d8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _1_door_close

# .data:0x110 | 0x16E70 | size: 0x30
.obj _2_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_2_tou_0000d9e0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _2_door_open

# .data:0x140 | 0x16EA0 | size: 0x30
.obj _2_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_2_tou_0000d9e0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _2_door_close

# .data:0x170 | 0x16ED0 | size: 0x30
.obj _3_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_3_tou_0000d9e8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _3_door_open

# .data:0x1A0 | 0x16F00 | size: 0x30
.obj _3_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_3_tou_0000d9e8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _3_door_close

# .data:0x1D0 | 0x16F30 | size: 0x30
.obj _4_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_4_tou_0000d9f0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _4_door_open

# .data:0x200 | 0x16F60 | size: 0x30
.obj _4_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_4_tou_0000d9f0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _4_door_close

# .data:0x230 | 0x16F90 | size: 0x30
.obj _5_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_5_tou_0000d9f8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _5_door_open

# .data:0x260 | 0x16FC0 | size: 0x30
.obj _5_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_5_tou_0000d9f8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _5_door_close

# .data:0x290 | 0x16FF0 | size: 0x30
.obj _6_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_6_tou_0000da00
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _6_door_open

# .data:0x2C0 | 0x17020 | size: 0x30
.obj _6_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_6_tou_0000da00
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _6_door_close

# .data:0x2F0 | 0x17050 | size: 0x30
.obj _7_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_7_tou_0000da08
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _7_door_open

# .data:0x320 | 0x17080 | size: 0x30
.obj _7_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_7_tou_0000da08
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _7_door_close

# .data:0x350 | 0x170B0 | size: 0x30
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_e_tou_0000da10
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x380 | 0x170E0 | size: 0x30
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_e_tou_0000da10
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0x3B0 | 0x17110 | size: 0x58
.obj n1_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ao_a_tou_0000da18
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ao_b_tou_0000da20
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n1_door_open

# .data:0x408 | 0x17168 | size: 0x58
.obj n1_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ao_a_tou_0000da18
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ao_b_tou_0000da20
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n1_door_close

# .data:0x460 | 0x171C0 | size: 0x58
.obj n2_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_aka_a_tou_0000da28
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_aka_b_tou_0000da30
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n2_door_open

# .data:0x4B8 | 0x17218 | size: 0x58
.obj n2_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_aka_a_tou_0000da28
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_aka_b_tou_0000da30
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n2_door_close

# .data:0x510 | 0x17270 | size: 0x2D0
.obj bero_data, local
	.4byte str_w_bero_tou_0000da38
	.4byte 0x00010004
	.4byte 0x00000004
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_02_tou_0000da40
	.4byte str_n_bero_4_tou_0000da48
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_s_bero_1_tou_0000da54
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_11_tou_0000da60
	.4byte str_n_bero_tou_0000da68
	.4byte 0x00050005
	.4byte _1_door_close
	.4byte _1_door_open
	.4byte str_s_bero_2_tou_0000da70
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_09_tou_0000da7c
	.4byte str_n_bero_tou_0000da68
	.4byte 0x00050005
	.4byte _2_door_close
	.4byte _2_door_open
	.4byte str_s_bero_3_tou_0000da84
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_07_tou_0000da90
	.4byte str_n_bero_tou_0000da68
	.4byte 0x00050005
	.4byte _3_door_close
	.4byte _3_door_open
	.4byte str_s_bero_4_tou_0000da98
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_06_tou_0000daa4
	.4byte str_n_bero_tou_0000da68
	.4byte 0x00050005
	.4byte _4_door_close
	.4byte _4_door_open
	.4byte str_s_bero_5_tou_0000daac
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_05_tou_0000dab8
	.4byte str_n_bero_tou_0000da68
	.4byte 0x00050005
	.4byte _5_door_close
	.4byte _5_door_open
	.4byte str_s_bero_6_tou_0000dac0
	.4byte 0x00010004
	.4byte 0x00000006
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_08_tou_0000dacc
	.4byte str_n_bero_tou_0000da68
	.4byte 0x00050005
	.4byte _6_door_close
	.4byte _6_door_open
	.4byte str_s_bero_7_tou_0000dad4
	.4byte 0x00010004
	.4byte 0x00000006
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_10_tou_0000dae0
	.4byte str_n_bero_tou_0000da68
	.4byte 0x00050005
	.4byte _7_door_close
	.4byte _7_door_open
	.4byte str_e_bero_tou_0000dae8
	.4byte 0x00010004
	.4byte 0x00000004
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_02_tou_0000da40
	.4byte str_n_bero_3_tou_0000daf0
	.4byte 0x00050005
	.4byte e_door_close
	.4byte e_door_open
	.4byte str_n_bero_1_tou_0000dafc
	.4byte 0x00010006
	.4byte 0x00000006
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_03_tou_0000db08
	.4byte str_e_bero_tou_0000dae8
	.4byte 0x00050005
	.4byte n1_door_close
	.4byte n1_door_open
	.4byte str_n_bero_2_tou_0000db10
	.4byte 0x00010006
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_03_tou_0000db08
	.4byte str_w_bero_tou_0000da38
	.4byte 0x00050005
	.4byte n2_door_close
	.4byte n2_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x7E0 | 0x17540 | size: 0x3A4
.obj move_g, local
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000031
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFDF8
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_sub_get_dist
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0xFE363C86
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_tou_0000db1c
	.4byte str_mario_tou_0000db20
	.4byte 0x0002001B
	.4byte 0xFE363C86
	.4byte 0x00000064
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0xFFFFFFCE
	.4byte 0x0006005B
	.4byte evt_sub_get_dist
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte evt_sub_get_dist
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C87
	.4byte 0xFE363C89
	.4byte 0x0002001A
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C83
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C83
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0xFFFFFFCE
	.4byte 0x0006005B
	.4byte evt_sub_get_dist
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte evt_sub_get_dist
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0xFE363C85
	.4byte 0xFE363C89
	.4byte 0x0002001A
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C87
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_sub_get_dist
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0xFE363C86
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_tou_0000db1c
	.4byte str_mario_tou_0000db20
	.4byte 0x0002001A
	.4byte 0xFE363C86
	.4byte 0x00000064
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_g

# .data:0xB84 | 0x178E4 | size: 0x64
.obj move_g_1_dokimasen, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFDBC
	.4byte 0x00000000
	.4byte 0x0000015E
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFDBC
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_g_1_dokimasen

# .data:0xBE8 | 0x17948 | size: 0xEC
.obj init_g_1, local
	.4byte 0x00020018
	.4byte 0xF84064CB
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFDBC
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFD94
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000008D
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFDBC
	.4byte 0x00000000
	.4byte 0x0000015E
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000008E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFDBC
	.4byte 0x00000000
	.4byte 0x0000015E
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406555
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000008F
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_s_bero_7_tou_0000dad4
	.4byte 0x00020032
	.4byte 0xF8406555
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte move_g_1_dokimasen
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_g_1

# .data:0xCD4 | 0x17A34 | size: 0xCC
.obj move_g_1_dokimasu, local
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002001A
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000032
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFCE
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000db1c
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_tou_0000db1c
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_s_bero_7_tou_0000dad4
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000008D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_g_1_dokimasu

# .data:0xDA0 | 0x17B00 | size: 0x168
.obj talk_g_1, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000085
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_39_tou_0000db28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002002F
	.4byte 0x0000008C
	.4byte 0x0000008E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_297_13_tou_0000db34
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000008D
	.4byte 0x0001005E
	.4byte move_g_1_dokimasu
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x000000A3
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_96_01_tou_0000db44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x000000AC
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_96_tou_0000db54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_95_tou_0000db60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x00020018
	.4byte 0xF8406544
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_39_tou_0000db28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_96_tou_0000db54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_95_tou_0000db60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_g_1

# .data:0xF08 | 0x17C68 | size: 0xD0
.obj move_g_1, local
	.4byte 0x00020018
	.4byte 0xF84064CB
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000083
	.4byte 0x00020018
	.4byte 0xF84064C8
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x000000AC
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x00020018
	.4byte 0xF8406544
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_g_1

# .data:0xFD8 | 0x17D38 | size: 0x68
.obj init_g_2, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A3
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_n_bero_2_tou_0000db10
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFDF8
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFDF8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_g_2

# .data:0x1040 | 0x17DA0 | size: 0xEC
.obj talk_g_2, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000085
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_38_tou_0000db6c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x000000A3
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_94_01_tou_0000db78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000009D
	.4byte 0x00020018
	.4byte 0xF84064DF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_423_01_tou_0000db88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Y_tou_0000db98
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_423_02_tou_0000dba0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000dbb0
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_94_tou_0000dbb8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_94_tou_0000dbb8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_g_2

# .data:0x112C | 0x17E8C | size: 0xE0
.obj move_g_2, local
	.4byte 0x00020018
	.4byte 0xF84064CB
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064CC
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064CE
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000009D
	.4byte 0x00020018
	.4byte 0xF84064DF
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A3
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_g_2

# .data:0x120C | 0x17F6C | size: 0x78
.obj init_g_3, local
	.4byte 0x00020018
	.4byte 0xF84064CC
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFD94
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064CD
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFD94
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFDBC
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_g_3

# .data:0x1284 | 0x17FE4 | size: 0x9C
.obj talk_g_3, local
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010026
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_99_tou_0000dbc4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_98_tou_0000dbd0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x000000A3
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_99_01_tou_0000dbdc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_40_tou_0000dbec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_g_3

# .data:0x1320 | 0x18080 | size: 0x94
.obj move_g_3, local
	.4byte 0x00020018
	.4byte 0xF84064CC
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064CD
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010026
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF84064CA
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x0000002A
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_g_3

# .data:0x13B4 | 0x18114 | size: 0x90
.obj move_g_4_dokimasen, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0xFFFFFDEE
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFEA2
	.4byte 0xFFFFFDEE
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xFFFFFDEE
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_g_4_dokimasen

# .data:0x1444 | 0x181A4 | size: 0x16C
.obj init_g_4, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xFFFFFDEE
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E282
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE070C
	.4byte 0x00010024
	.4byte 0x0000000D
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000017
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0xF8406543
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406544
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0xF8406542
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_s_bero_5_tou_0000daac
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFBD3E282
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xFFFFFDEE
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0xFFFFFDEE
	.4byte 0x00020018
	.4byte 0xFBD3E282
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte move_g_4_dokimasen
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_g_4

# .data:0x15B0 | 0x18310 | size: 0x43C
.obj talk_g_4, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000082
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFEA2
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_42_tou_0000dbf8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000db1c
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000db1c
	.4byte 0x00000002
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000032
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000db1c
	.4byte 0x0000010E
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0xFFFFFFCE
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000db1c
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte memoryRY
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_tou_0000db1c
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_42_01_tou_0000dc04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x00000083
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_42_01_tou_0000dc04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x000000A3
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_102_02_tou_0000dc14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x000000AC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_102_01_tou_0000dc24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFEA2
	.4byte 0x00010022
	.4byte 0xF5DE070C
	.4byte 0x00010024
	.4byte 0x0000000D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_311_tou_0000dc34
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406543
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000017
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_311_tou_0000dc34
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406543
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x00020018
	.4byte 0xF8406544
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_310_tou_0000dc44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406542
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_314_tou_0000dc54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000db1c
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000db1c
	.4byte 0x00000002
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000032
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000db1c
	.4byte 0x0000010E
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0xFFFFFFCE
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000db1c
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte memoryRY
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_tou_0000db1c
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000020
	.4byte 0x00010022
	.4byte 0xF5DE070C
	.4byte 0x00010024
	.4byte 0x0000000D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_313_tou_0000dc64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000017
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_313_tou_0000dc64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_312_tou_0000dc74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_g_4

# .data:0x19EC | 0x1874C | size: 0x144
.obj move_g_4, local
	.4byte 0x00020018
	.4byte 0xF84064C7
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064C8
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064C9
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000082
	.4byte 0x00010026
	.4byte 0x00000085
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00010024
	.4byte 0x000000A2
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_s_bero_5_tou_0000daac
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFE70
	.4byte 0x00000000
	.4byte 0xFFFFFDEE
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFEA2
	.4byte 0xFFFFFDEE
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002002F
	.4byte 0x000000A3
	.4byte 0x000000AB
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_g_4

# .data:0x1B30 | 0x18890 | size: 0x8
.obj init_g_5, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_g_5

# .data:0x1B38 | 0x18898 | size: 0x8
.obj talk_g_5, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_g_5

# .data:0x1B40 | 0x188A0 | size: 0x8
.obj move_g_5, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_g_5

# .data:0x1B48 | 0x188A8 | size: 0x4C
.obj init_g_6, local
	.4byte 0x00020018
	.4byte 0xF84064CE
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0x0000015E
	.4byte 0x00000000
	.4byte 0xFFFFFDD0
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0x0000015E
	.4byte 0x00000000
	.4byte 0xFFFFFDEE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_g_6

# .data:0x1B94 | 0x188F4 | size: 0x7C
.obj talk_g_6, local
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010026
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_101_tou_0000dc84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x000000A3
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_102_00_tou_0000dc94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_102_tou_0000dca4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_g_6

# .data:0x1C10 | 0x18970 | size: 0x78
.obj move_g_6, local
	.4byte 0x00020018
	.4byte 0xF84064CE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010026
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x0000002A
	.4byte 0x00020018
	.4byte 0xF84064C7
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_g_6

# .data:0x1C88 | 0x189E8 | size: 0x20
.obj init_g_7, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0x00000244
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_g_7

# .data:0x1CA8 | 0x18A08 | size: 0x70
.obj talk_g_7, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000085
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_40_tou_0000dbec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x000000A3
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_100_01_tou_0000dcb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_100_tou_0000dcc4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_g_7

# .data:0x1D18 | 0x18A78 | size: 0x8
.obj move_g_7, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_g_7

# .data:0x1D20 | 0x18A80 | size: 0x20
.obj init_g_8, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0x00000208
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_g_8

# .data:0x1D40 | 0x18AA0 | size: 0x9C
.obj talk_g_8, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000085
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_38_tou_0000db6c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000009D
	.4byte 0x00020018
	.4byte 0xF84064DF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_423_03_tou_0000dcd4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_94_tou_0000dbb8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_94_tou_0000dbb8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_g_8

# .data:0x1DDC | 0x18B3C | size: 0x8
.obj move_g_8, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_g_8

# .data:0x1DE4 | 0x18B44 | size: 0x20
.obj init_g_9, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0x00000244
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_g_9

# .data:0x1E04 | 0x18B64 | size: 0xBC
.obj talk_g_9, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000085
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_39_tou_0000db28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x000000A3
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_97_01_tou_0000dce4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x000000AC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_97_tou_0000dcf4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x00020018
	.4byte 0xF8406544
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_39_tou_0000db28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_97_tou_0000dcf4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_g_9

# .data:0x1EC0 | 0x18C20 | size: 0x2C
.obj move_g_9, local
	.4byte 0x00020018
	.4byte 0xF84064CD
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000008
	.4byte 0x0001005E
	.4byte move_g
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_g_9

# .data:0x1EEC | 0x18C4C | size: 0x64
.obj init_g_10, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x0000009D
	.4byte 0x00020018
	.4byte 0xF84064DF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFDDA
	.4byte 0x00000000
	.4byte 0x00000212
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x000000A3
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFDDA
	.4byte 0x00000000
	.4byte 0x00000212
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_g_10

# .data:0x1F50 | 0x18CB0 | size: 0x64
.obj talk_g_10, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x0000009D
	.4byte 0x00020018
	.4byte 0xF84064DF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_102_03_tou_0000dd00
	.4byte 0x00000000
	.4byte str_me_tou_0000db1c
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x000000A3
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_102_04_tou_0000dd10
	.4byte 0x00000000
	.4byte str_me_tou_0000db1c
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_g_10

# .data:0x1FB4 | 0x18D14 | size: 0x74
.obj init_g_11, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x0000009D
	.4byte 0x00020018
	.4byte 0xF84064DF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0x00000226
	.4byte 0x00000000
	.4byte 0x00000212
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x000000A3
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0x00000226
	.4byte 0x00000000
	.4byte 0x00000212
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000db1c
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_g_11

# .data:0x2028 | 0x18D88 | size: 0x64
.obj talk_g_11, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x0000009D
	.4byte 0x00020018
	.4byte 0xF84064DF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_102_03_tou_0000dd00
	.4byte 0x00000000
	.4byte str_me_tou_0000db1c
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x000000A3
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_102_04_tou_0000dd10
	.4byte 0x00000000
	.4byte str_me_tou_0000db1c
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_g_11

# .data:0x208C | 0x18DEC | size: 0x8
.obj init_champ, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_champ

# .data:0x2094 | 0x18DF4 | size: 0xE8
.obj init_brots, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x00020018
	.4byte 0xF84064F5
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010026
	.4byte 0x00000005
	.4byte 0x00010026
	.4byte 0x00000013
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000004
	.4byte 0xFE363C81
	.4byte 0x00010022
	.4byte 0xFE363C81
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFDF3
	.4byte 0x00000000
	.4byte 0x000000E1
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0xFFFFFF51
	.4byte 0x00000000
	.4byte 0xFFFFFE25
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0x0000020D
	.4byte 0x00000000
	.4byte 0xFFFFFF51
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000db1c
	.4byte 0x0000020D
	.4byte 0x00000000
	.4byte 0x000001A9
	.4byte 0x00000031
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_brots

# .data:0x217C | 0x18EDC | size: 0x1C
.obj list$643, local
	.4byte str_stg3_tou_hushigi_lis_tou_0000dd20
	.4byte str_stg3_tou_hushigi_lis_tou_0000dd38
	.4byte str_stg3_tou_hushigi_lis_tou_0000dd50
	.4byte str_stg3_tou_hushigi_lis_tou_0000dd68
	.4byte str_stg3_tou_hushigi_lis_tou_0000dd80
	.4byte str_stg3_tou_hushigi_lis_tou_0000dd98
	.4byte str_stg3_tou_hushigi_lis_tou_0000ddb0
.endobj list$643

# .data:0x2198 | 0x18EF8 | size: 0x254
.obj talk_brots, local
	.4byte 0x00020018
	.4byte 0xF840650C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_00_tou_0000ddc8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_tou_0000dddc
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000dbb0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_01_tou_0000dde4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_B_tou_0000ddf8
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000dbb0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_02_tou_0000de00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_03_tou_0000de14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_02__tou_0000de28
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF840650C
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_06_tou_0000de40
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_07_tou_0000de54
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_05_tou_0000de68
	.4byte 0x0002005B
	.4byte make_list
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_11_tou_0000de7c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_12_tou_0000de90
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_13_tou_0000dea4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_14_tou_0000deb8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_15_tou_0000decc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_16_tou_0000dee0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_17_tou_0000def4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_hushigi_08_tou_0000df08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF840650C
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_brots

# .data:0x23EC | 0x1914C | size: 0x5C0
.obj npcEnt, local
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x40400620
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000df28
	.4byte 0x40400620
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_チャンピョン_tou_0000df30
	.4byte 0x40400620
	.4byte 0x00000000
	.4byte init_champ
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ブロッツ_tou_0000df40
	.4byte 0x40400600
	.4byte 0x00000000
	.4byte init_brots
	.4byte 0x00000000
	.4byte talk_brots
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガードマン１_tou_0000df4c
	.4byte 0x40400600
	.4byte 0x00000000
	.4byte init_g_1
	.4byte move_g_1
	.4byte talk_g_1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガードマン２_tou_0000df5c
	.4byte 0x40400600
	.4byte 0x00000000
	.4byte init_g_2
	.4byte move_g_2
	.4byte talk_g_2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガードマン３_tou_0000df6c
	.4byte 0x40400600
	.4byte 0x00000000
	.4byte init_g_3
	.4byte move_g_3
	.4byte talk_g_3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガードマン４_tou_0000df7c
	.4byte 0x40400600
	.4byte 0x00000000
	.4byte init_g_4
	.4byte move_g_4
	.4byte talk_g_4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガードマン５_tou_0000df8c
	.4byte 0x40400600
	.4byte 0x00000000
	.4byte init_g_5
	.4byte move_g_5
	.4byte talk_g_5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガードマン６_tou_0000df9c
	.4byte 0x40400600
	.4byte 0x00000000
	.4byte init_g_6
	.4byte move_g_6
	.4byte talk_g_6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガードマン７_tou_0000dfac
	.4byte 0x40400600
	.4byte 0x00000000
	.4byte init_g_7
	.4byte move_g_7
	.4byte talk_g_7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガードマン８_tou_0000dfbc
	.4byte 0x40400600
	.4byte 0x00000000
	.4byte init_g_8
	.4byte move_g_8
	.4byte talk_g_8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガードマン９_tou_0000dfcc
	.4byte 0x40400600
	.4byte 0x00000000
	.4byte init_g_9
	.4byte move_g_9
	.4byte talk_g_9
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガードマン１０_tou_0000dfdc
	.4byte 0x40400600
	.4byte 0x00000000
	.4byte init_g_10
	.4byte 0x00000000
	.4byte talk_g_10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガードマン１１_tou_0000dfec
	.4byte 0x40400600
	.4byte 0x00000000
	.4byte init_g_11
	.4byte 0x00000000
	.4byte talk_g_11
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x29AC | 0x1970C | size: 0x84
.obj evt_drop, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00001388
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_mizu_tou_0000dffc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_anm_mizu_tou_0000dffc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_AMB_WATERDR_tou_0000e008
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0xFFFFFE6B
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_drop

# .data:0x2A30 | 0x19790 | size: 0x244
.obj evt_gans, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガンス_tou_0000df28
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xFFFFFDC6
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xFFFFFDBC
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xFFFFFDA8
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000005
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _5_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000005
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _5_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFEA2
	.4byte 0xFFFFFE0C
	.4byte 0xF24BE280
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000136
	.4byte 0xFFFFFE0C
	.4byte 0xF24BE280
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ガンス_tou_0000df28
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000df28
	.4byte 0xFFFFFEA2
	.4byte 0xFFFFFE0C
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000df28
	.4byte 0x00000140
	.4byte 0xFFFFFE0C
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000df28
	.4byte 0x0000015E
	.4byte 0xFFFFFDEE
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000003
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
	.4byte 0x0001005E
	.4byte _3_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_07_tou_0000da90
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_gans

# .data:0x2C74 | 0x199D4 | size: 0x304
.obj evt_kinoshikowa, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xFFFFFDC6
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xFFFFFDBC
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xFFFFFDB2
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000005
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _5_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000005
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _5_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFEA2
	.4byte 0xFFFFFE07
	.4byte 0xF24BA680
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFE07
	.4byte 0xF24BA680
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDDA
	.4byte 0x000000FA
	.4byte 0xF24BA680
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_62_tou_0000e020
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0xFFFFFEA2
	.4byte 0xFFFFFE2A
	.4byte 0x00000000
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFE2A
	.4byte 0x00000000
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0xFFFFFDDA
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0xFFFFFDB7
	.4byte 0x00000122
	.4byte 0x00000000
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000df1c
	.4byte str_M_1_tou_0000e02c
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000007
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
	.4byte 0x0001005E
	.4byte _7_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xF84064C8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_10_tou_0000dae0
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kinoshikowa

# .data:0x2F78 | 0x19CD8 | size: 0x284
.obj evt_kinoshikowa2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xFFFFFDC6
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xFFFFFDBC
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xFFFFFDB2
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000005
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _5_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000005
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _5_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFEA2
	.4byte 0xFFFFFE07
	.4byte 0xF24BA680
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFE07
	.4byte 0xF24BA680
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFEA2
	.4byte 0xF24BA680
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0xFFFFFEA2
	.4byte 0xFFFFFE2A
	.4byte 0x00000000
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFE2A
	.4byte 0x00000000
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFEB3
	.4byte 0x00000000
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0xFFFFFDB7
	.4byte 0xFFFFFEDE
	.4byte 0x00000000
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000006
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
	.4byte 0x0001005E
	.4byte _6_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xF84064C9
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_08_tou_0000dacc
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kinoshikowa2

# .data:0x31FC | 0x19F5C | size: 0x2CC
.obj evt_kinoshikowa3, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFD8F
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0xFFFFFD94
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _6_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _6_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFED3
	.4byte 0xF24BA680
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFE0C
	.4byte 0xF24BA680
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x0000012C
	.4byte 0xFFFFFE0C
	.4byte 0xF24BA680
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFED3
	.4byte 0xF24BA680
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFED3
	.4byte 0x00000000
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFE0C
	.4byte 0x00000000
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x00000154
	.4byte 0xFFFFFE0C
	.4byte 0x00000000
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x00000154
	.4byte 0xFFFFFDEE
	.4byte 0x00000000
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000003
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
	.4byte 0x0001005E
	.4byte _3_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xF84064CA
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_07_tou_0000da90
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kinoshikowa3

# .data:0x34C8 | 0x1A228 | size: 0x2B4
.obj evt_gardman, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000007
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _7_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ガードマン１_tou_0000df4c
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン１_tou_0000df4c
	.4byte 0xFFFFFDDA
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン１_tou_0000df4c
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFFDD
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガードマン１_tou_0000df4c
	.4byte str_mario_tou_0000db20
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDDA
	.4byte 0x0000012C
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDDA
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFDDA
	.4byte 0x0000012C
	.4byte 0xF24B6A80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000007
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _7_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_76_tou_0000e030
	.4byte 0x00000000
	.4byte str_ガードマン１_tou_0000df4c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
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
	.4byte 0x0001005E
	.4byte n2_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE70
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xF84064CB
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000084
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000084
	.4byte 0x0000002A
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_03_tou_0000db08
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_gardman

# .data:0x377C | 0x1A4DC | size: 0x290
.obj evt_gardman2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _6_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ガードマン３_tou_0000df6c
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン３_tou_0000df6c
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン３_tou_0000df6c
	.4byte 0xFFFFFDDA
	.4byte 0x00000023
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガードマン３_tou_0000df6c
	.4byte str_mario_tou_0000db20
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFED4
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDDA
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFED4
	.4byte 0xF24B6A80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _6_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_328_tou_0000e03c
	.4byte 0x00000000
	.4byte str_ガードマン３_tou_0000df6c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
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
	.4byte 0x0001005E
	.4byte n2_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE70
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xF84064CC
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_03_tou_0000db08
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_gardman2

# .data:0x3A0C | 0x1A76C | size: 0x4A8
.obj evt_gardman3, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _6_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ガードマン３_tou_0000df6c
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン３_tou_0000df6c
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン３_tou_0000df6c
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFE70
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFED4
	.4byte 0xF24B6A80
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ガードマン３_tou_0000df6c
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFED4
	.4byte 0xF24B6A80
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFEF2
	.4byte 0xF24B6A80
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_ガードマン３_tou_0000df6c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _6_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_407_tou_0000e04c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガードマン３_tou_0000df6c
	.4byte str_mario_tou_0000db20
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_408_tou_0000e05c
	.4byte 0x00000000
	.4byte str_ガードマン３_tou_0000df6c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガードマン４_tou_0000df7c
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガードマン５_tou_0000df8c
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガードマン６_tou_0000df9c
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガードマン７_tou_0000dfac
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガードマン８_tou_0000dfbc
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガードマン９_tou_0000dfcc
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_sub_get_dist
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFE0C
	.4byte 0xFE363C8A
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0x00000064
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_408_01_tou_0000e06c
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン３_tou_0000df6c
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFDF8
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン３_tou_0000df6c
	.4byte 0x00000226
	.4byte 0xFFFFFDF8
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン３_tou_0000df6c
	.4byte 0x0000023A
	.4byte 0x00000118
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFDFD
	.4byte 0xF24BE280
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000226
	.4byte 0xFFFFFDFD
	.4byte 0xF24BE280
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x0000023A
	.4byte 0x000000FA
	.4byte 0xF24BE280
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000001
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
	.4byte 0x0001005E
	.4byte _1_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン３_tou_0000df6c
	.4byte 0x0000024E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x0000024E
	.4byte 0x0000012C
	.4byte 0xF24BE280
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xF84064CD
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_11_tou_0000da60
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_gardman3

# .data:0x3EB4 | 0x1AC14 | size: 0x2C4
.obj evt_gardman4, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000003
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _3_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ガードマン６_tou_0000df9c
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン６_tou_0000df9c
	.4byte 0x0000015E
	.4byte 0xFFFFFE02
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン６_tou_0000df9c
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFE02
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン６_tou_0000df9c
	.4byte 0xFFFFFDDA
	.4byte 0x00000023
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガードマン６_tou_0000df9c
	.4byte str_mario_tou_0000db20
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x0000015E
	.4byte 0xFFFFFE02
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFE02
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDDA
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x0000015E
	.4byte 0xFFFFFE02
	.4byte 0xF24B6A80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000003
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte _3_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_454_tou_0000e07c
	.4byte 0x00000000
	.4byte str_ガードマン６_tou_0000df9c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
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
	.4byte 0x0001005E
	.4byte n2_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE70
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xF84064CE
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_03_tou_0000db08
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_gardman4

# .data:0x4178 | 0x1AED8 | size: 0x1AC
.obj evt_toile, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000001C2
	.4byte 0x00000085
	.4byte 0xFFFFFBF7
	.4byte 0x000001C2
	.4byte 0x00000025
	.4byte 0xFFFFFE14
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_DRAINING1_tou_0000e08c
	.4byte 0x000001C2
	.4byte 0x00000000
	.4byte 0xFFFFFE0C
	.4byte 0xFE363C83
	.4byte 0x0001006C
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x000001C2
	.4byte 0x000001C2
	.4byte 0x00001388
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFFFFFE0C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE3E
	.4byte 0x00000085
	.4byte 0xFFFFFBF7
	.4byte 0xFFFFFE3E
	.4byte 0x00000025
	.4byte 0xFFFFFE14
	.4byte 0x00001388
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000014D
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte str_a_tou_0000e0a0
	.4byte str_ガードマン６_tou_0000df9c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte str_b_tou_0000e0a4
	.4byte str_ガードマン４_tou_0000df7c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00001388
	.4byte 0x0001005F
	.4byte 0xFE363C84
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_08_tou_0000dacc
	.4byte str_dokan_tou_0000e0a8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_toile

# .data:0x4324 | 0x1B084 | size: 0x1AC
.obj evt_toile2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE3E
	.4byte 0x00000085
	.4byte 0xFFFFFBF7
	.4byte 0xFFFFFE3E
	.4byte 0x00000025
	.4byte 0xFFFFFE14
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_DRAINING1_tou_0000e08c
	.4byte 0xFFFFFE3E
	.4byte 0x00000000
	.4byte 0xFFFFFE0C
	.4byte 0xFE363C83
	.4byte 0x0001006C
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0xFFFFFE3E
	.4byte 0x000001C2
	.4byte 0x00001388
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFFFFFE0C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000001C2
	.4byte 0x00000085
	.4byte 0xFFFFFBF7
	.4byte 0x000001C2
	.4byte 0x00000025
	.4byte 0xFFFFFE14
	.4byte 0x00001388
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000014D
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte str_a_tou_0000e0a0
	.4byte str_ガードマン４_tou_0000df7c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte str_b_tou_0000e0a4
	.4byte str_ガードマン６_tou_0000df9c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00001388
	.4byte 0x0001005F
	.4byte 0xFE363C84
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_09_tou_0000da7c
	.4byte str_dokan_tou_0000e0a8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_toile2

# .data:0x44D0 | 0x1B230 | size: 0x8
.obj key_tbl, local
	.4byte 0x00000012
	.4byte 0xFFFFFFFF
.endobj key_tbl

# .data:0x44D8 | 0x1B238 | size: 0x5C
.obj evt_chk, local
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000012
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
	.4byte str_me_tou_0000db1c
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_chk

# .data:0x4534 | 0x1B294 | size: 0x38
.obj evt_lock, local
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000093
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_s_bero_4_tou_0000da98
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000012
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_lock

# .data:0x456C | 0x1B2CC | size: 0x440
.obj evt_souko_talk, local
	.4byte 0x00020018
	.4byte 0xF840650D
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xFFFFFE0C
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガードマン５_tou_0000df8c
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0xFFFFFE0C
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_0000df1c
	.4byte str_ガードマン５_tou_0000df8c
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガードマン５_tou_0000df8c
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ガードマン５_tou_0000df8c
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0xFFFFFF74
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x0000008C
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0003005B
	.4byte evt_party_yoshi_ride
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000085
	.4byte 0xFFFFFBF7
	.4byte 0x00000000
	.4byte 0x0000002F
	.4byte 0xFFFFFE16
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_240_02_tou_0000e0b0
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_240_03_tou_0000e0c0
	.4byte 0x00000000
	.4byte str_ガードマン５_tou_0000df8c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_240_04_tou_0000e0d0
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン５_tou_0000df8c
	.4byte 0x000000C8
	.4byte 0xFFFFFE16
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン５_tou_0000df8c
	.4byte 0xFFFFFF38
	.4byte 0xFFFFFE16
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガードマン５_tou_0000df8c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_0000df1c
	.4byte str_mario_tou_0000db20
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFD8
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0x00000085
	.4byte 0xFFFFFBF7
	.4byte 0xFE363C80
	.4byte 0x0000002F
	.4byte 0xFFFFFE16
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00000020
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0xFE363C80
	.4byte 0xFFFFFE0C
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_240_05_tou_0000e0e0
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x000000C8
	.4byte 0xFFFFFE0C
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0xFFFFFF38
	.4byte 0xFFFFFE0C
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000df1c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840650D
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_souko_talk

# .data:0x49AC | 0x1B70C | size: 0x1D0
.obj evt_bred_nigeru, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_チャンピョン_tou_0000df30
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_チャンピョン_tou_0000df30
	.4byte 0xFFFFFDDA
	.4byte 0x00000000
	.4byte 0xFFFFFE70
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_チャンピョン_tou_0000df30
	.4byte str_mario_tou_0000db20
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_チャンピョン_tou_0000df30
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
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_297_27_00_tou_0000e0f0
	.4byte 0x00000000
	.4byte str_チャンピョン_tou_0000df30
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_sound_data_set
	.4byte str_チャンピョン_tou_0000df30
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x00004E20
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チャンピョン_tou_0000df30
	.4byte 0xFFFFFDDA
	.4byte 0xFFFFFE0C
	.4byte 0x00000000
	.4byte 0xF24D9A80
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チャンピョン_tou_0000df30
	.4byte 0x00000000
	.4byte 0xFFFFFE0C
	.4byte 0x00000000
	.4byte 0xF24D9A80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_チャンピョン_tou_0000df30
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_297_27_01_tou_0000e104
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000300
	.4byte str_BGM_STG3_TOU1_tou_0000e118
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000091
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_bred_nigeru

# .data:0x4B7C | 0x1B8DC | size: 0x38
.obj boss_msg, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_462_01_tou_0000e128
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj boss_msg

# .data:0x4BB4 | 0x1B914 | size: 0x58
.obj out_from_tou_10_re, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガードマン１_tou_0000df4c
	.4byte 0xFFFFFDB2
	.4byte 0x00000000
	.4byte 0x0000015E
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン１_tou_0000df4c
	.4byte 0xFFFFFDB2
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj out_from_tou_10_re

# .data:0x4C0C | 0x1B96C | size: 0xA30
.obj tou_04_init_evt_25_data_1B96C, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0001005C
	.4byte evt_drop
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_tou_0000e138
	.4byte 0x00000110
	.4byte 0x00000203
	.4byte 0x0000000F
	.4byte 0x0000007D
	.4byte 0x00000010
	.4byte 0xF8406558
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save1_tou_0000e140
	.4byte 0xFFFFFDF8
	.4byte 0x0000003C
	.4byte 0xFFFFFF92
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save3_tou_0000e14c
	.4byte 0x000001C2
	.4byte 0x0000003C
	.4byte 0xFFFFFE2F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84064C7
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte kemuri_stop
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xFFFFFDBC
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xFFFFFDA8
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_gans
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064C8
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte kemuri_stop
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFE7A
	.4byte 0x00000000
	.4byte 0xFFFFFE02
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFE7A
	.4byte 0x00000000
	.4byte 0xFFFFFE02
	.4byte 0x0001005C
	.4byte evt_kinoshikowa
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064C9
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte kemuri_stop
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFE7A
	.4byte 0x00000000
	.4byte 0xFFFFFE02
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFE7A
	.4byte 0x00000000
	.4byte 0xFFFFFE02
	.4byte 0x0001005C
	.4byte evt_kinoshikowa2
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064CA
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte kemuri_stop
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFD8F
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFD8A
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x0001005C
	.4byte evt_kinoshikowa3
	.4byte 0x00000021
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
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000007F
	.4byte 0x00000089
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU2_tou_0000e158
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU4_tou_0000e168
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x00010029
	.4byte 0x000000A5
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU2_tou_0000e158
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU4_tou_0000e168
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU1_tou_0000e118
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU4_tou_0000e168
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG3_GANCE1_tou_0000e178
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU4_tou_0000e168
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064CF
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF84064CB
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84064CC
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84064CD
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF84064CE
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064D0
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF84064CB
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84064CC
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84064CD
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84064CE
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064D1
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF84064CB
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84064CC
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84064CD
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84064CE
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064CB
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFD8F
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFD80
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x0001005C
	.4byte evt_gardman
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064CC
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFD8F
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFD80
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_gardman2
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064CD
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFD8F
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFD80
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_gardman3
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064CE
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x0000015E
	.4byte 0x00000000
	.4byte 0xFFFFFDBC
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x0000015E
	.4byte 0x00000000
	.4byte 0xFFFFFDA8
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_gardman4
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064D0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000212
	.4byte 0x00000000
	.4byte 0x00000212
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000212
	.4byte 0x00000000
	.4byte 0x00000212
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0001005C
	.4byte evt_toile
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064D1
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000212
	.4byte 0x00000000
	.4byte 0x00000212
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000212
	.4byte 0x00000000
	.4byte 0x00000212
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0001005C
	.4byte evt_toile2
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000082
	.4byte 0x00010026
	.4byte 0x00000083
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0000002A
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010026
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00010026
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000031
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000008
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000008D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_s_bero_7_tou_0000dad4
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000008E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_s_bero_7_tou_0000dad4
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000009D
	.4byte 0x00020018
	.4byte 0xF84064DF
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000008
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_w_bero_tou_0000da38
	.4byte 0x00000000
	.4byte boss_msg
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_e_bero_tou_0000dae8
	.4byte 0x00000000
	.4byte boss_msg
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A3
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000008
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000A3
	.4byte 0x00020018
	.4byte 0xF8406540
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406543
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406542
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406544
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x00020018
	.4byte 0xF8406512
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406513
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064D4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_clear_party
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000093
	.4byte 0x000A005B
	.4byte evt_mobj_lock
	.4byte str_lock_tou_0000e18c
	.4byte 0x00000012
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0xFFFFFDDA
	.4byte 0x00000000
	.4byte evt_chk
	.4byte evt_lock
	.4byte 0xF8406504
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_s_bero_4_tou_0000da98
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_s_bero_4_tou_0000da98
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xF84064C9
	.4byte 0x00000001
	.4byte 0x00020019
	.4byte 0xF84064CA
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x0000000B
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000093
	.4byte 0x0001005C
	.4byte evt_souko_talk
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000090
	.4byte 0x0001005C
	.4byte evt_bred_nigeru
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_s_bero_7_tou_0000dad4
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0001005C
	.4byte out_from_tou_10_re
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tou_04_init_evt_25_data_1B96C

# .data:0x563C | 0x1C39C | size: 0x4
.obj gap_04_0001C39C_data, global
.hidden gap_04_0001C39C_data
	.4byte 0x00000000
.endobj gap_04_0001C39C_data

# 0x00000028..0x00000030 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x28 | size: 0x4
.obj tmp$642, local
	.skip 0x4
.endobj tmp$642

# .bss:0x4 | 0x2C | size: 0x4
.obj gap_05_0000002C_bss, global
.hidden gap_05_0000002C_bss
	.skip 0x4
.endobj gap_05_0000002C_bss
