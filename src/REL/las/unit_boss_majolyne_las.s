.include "macros.inc"
.file "unit_boss_majolyne_las.o"

# 0x0001188C..0x00011990 | size: 0x104
.text
.balign 4

# .text:0x0 | 0x1188C | size: 0x104
.fn majo3_sort, local
/* 0001188C 00011958  38 00 00 03 */	li r0, 0x3
/* 00011890 0001195C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00011894 00011960  38 80 00 00 */	li r4, 0x0
/* 00011898 00011964  38 A0 00 00 */	li r5, 0x0
/* 0001189C 00011968  7C 09 03 A6 */	mtctr r0
.L_000118A0:
/* 000118A0 0001196C  7C E3 2A 14 */	add r7, r3, r5
/* 000118A4 00011970  39 01 00 20 */	addi r8, r1, 0x20
/* 000118A8 00011974  80 C7 00 A8 */	lwz r6, 0xa8(r7)
/* 000118AC 00011978  7D 08 22 14 */	add r8, r8, r4
/* 000118B0 0001197C  80 07 00 9C */	lwz r0, 0x9c(r7)
/* 000118B4 00011980  38 84 00 08 */	addi r4, r4, 0x8
/* 000118B8 00011984  90 C8 00 00 */	stw r6, 0x0(r8)
/* 000118BC 00011988  38 A5 00 04 */	addi r5, r5, 0x4
/* 000118C0 0001198C  90 08 00 04 */	stw r0, 0x4(r8)
/* 000118C4 00011990  42 00 FF DC */	bdnz .L_000118A0
/* 000118C8 00011994  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 000118CC 00011998  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 000118D0 0001199C  7C 06 28 00 */	cmpw r6, r5
/* 000118D4 000119A0  40 80 00 24 */	bge .L_000118F8
/* 000118D8 000119A4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 000118DC 000119A8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 000118E0 000119AC  90 81 00 18 */	stw r4, 0x18(r1)
/* 000118E4 000119B0  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 000118E8 000119B4  90 01 00 20 */	stw r0, 0x20(r1)
/* 000118EC 000119B8  90 A1 00 24 */	stw r5, 0x24(r1)
/* 000118F0 000119BC  90 81 00 28 */	stw r4, 0x28(r1)
/* 000118F4 000119C0  90 C1 00 2C */	stw r6, 0x2c(r1)
.L_000118F8:
/* 000118F8 000119C4  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 000118FC 000119C8  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 00011900 000119CC  7C 06 28 00 */	cmpw r6, r5
/* 00011904 000119D0  40 80 00 24 */	bge .L_00011928
/* 00011908 000119D4  80 81 00 28 */	lwz r4, 0x28(r1)
/* 0001190C 000119D8  80 01 00 30 */	lwz r0, 0x30(r1)
/* 00011910 000119DC  90 81 00 08 */	stw r4, 0x8(r1)
/* 00011914 000119E0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 00011918 000119E4  90 01 00 28 */	stw r0, 0x28(r1)
/* 0001191C 000119E8  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 00011920 000119EC  90 81 00 30 */	stw r4, 0x30(r1)
/* 00011924 000119F0  90 C1 00 34 */	stw r6, 0x34(r1)
.L_00011928:
/* 00011928 000119F4  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 0001192C 000119F8  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 00011930 000119FC  7C 06 28 00 */	cmpw r6, r5
/* 00011934 00011A00  40 80 00 24 */	bge .L_00011958
/* 00011938 00011A04  80 81 00 20 */	lwz r4, 0x20(r1)
/* 0001193C 00011A08  80 01 00 28 */	lwz r0, 0x28(r1)
/* 00011940 00011A0C  90 81 00 10 */	stw r4, 0x10(r1)
/* 00011944 00011A10  90 C1 00 14 */	stw r6, 0x14(r1)
/* 00011948 00011A14  90 01 00 20 */	stw r0, 0x20(r1)
/* 0001194C 00011A18  90 A1 00 24 */	stw r5, 0x24(r1)
/* 00011950 00011A1C  90 81 00 28 */	stw r4, 0x28(r1)
/* 00011954 00011A20  90 C1 00 2C */	stw r6, 0x2c(r1)
.L_00011958:
/* 00011958 00011A24  38 00 00 03 */	li r0, 0x3
/* 0001195C 00011A28  38 E1 00 20 */	addi r7, r1, 0x20
/* 00011960 00011A2C  38 80 00 00 */	li r4, 0x0
/* 00011964 00011A30  38 A0 00 00 */	li r5, 0x0
/* 00011968 00011A34  7C 09 03 A6 */	mtctr r0
.L_0001196C:
/* 0001196C 00011A38  7C C7 28 2E */	lwzx r6, r7, r5
/* 00011970 00011A3C  38 04 00 9C */	addi r0, r4, 0x9c
/* 00011974 00011A40  38 84 00 04 */	addi r4, r4, 0x4
/* 00011978 00011A44  38 A5 00 08 */	addi r5, r5, 0x8
/* 0001197C 00011A48  7C C3 01 2E */	stwx r6, r3, r0
/* 00011980 00011A4C  42 00 FF EC */	bdnz .L_0001196C
/* 00011984 00011A50  38 60 00 02 */	li r3, 0x2
/* 00011988 00011A54  38 21 00 40 */	addi r1, r1, 0x40
/* 0001198C 00011A58  4E 80 00 20 */	blr
.endfn majo3_sort

# 0x00009330..0x00009545 | size: 0x215
.rodata
.balign 8

# .rodata:0x0 | 0x9330 | size: 0x11
.obj str_btl_un_majolyne4_las_0001ad98, local
	.string "btl_un_majolyne4"
.endobj str_btl_un_majolyne4_las_0001ad98

# .rodata:0x11 | 0x9341 | size: 0x3
.obj gap_03_00009341_rodata, global
.hidden gap_03_00009341_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009341_rodata

# .rodata:0x14 | 0x9344 | size: 0x17
.obj str_SFX_BOSS_MAJO_DAMAGE_las_0001adac, local
	.string "SFX_BOSS_MAJO_DAMAGED1"
.endobj str_SFX_BOSS_MAJO_DAMAGE_las_0001adac

# .rodata:0x2B | 0x935B | size: 0x1
.obj gap_03_0000935B_rodata, global
.hidden gap_03_0000935B_rodata
	.byte 0x00
.endobj gap_03_0000935B_rodata

# .rodata:0x2C | 0x935C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_las_0001adc4, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_las_0001adc4

# .rodata:0x41 | 0x9371 | size: 0x3
.obj gap_03_00009371_rodata, global
.hidden gap_03_00009371_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009371_rodata

# .rodata:0x44 | 0x9374 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_las_0001addc, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_las_0001addc

# .rodata:0x58 | 0x9388 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_las_0001adf0, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_las_0001adf0

# .rodata:0x71 | 0x93A1 | size: 0x3
.obj gap_03_000093A1_rodata, global
.hidden gap_03_000093A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000093A1_rodata

# .rodata:0x74 | 0x93A4 | size: 0x8
.obj str_MJR_N_1_las_0001ae0c, local
	.string "MJR_N_1"
.endobj str_MJR_N_1_las_0001ae0c

# .rodata:0x7C | 0x93AC | size: 0x8
.obj str_MJR_Z_1_las_0001ae14, local
	.string "MJR_Z_1"
.endobj str_MJR_Z_1_las_0001ae14

# .rodata:0x84 | 0x93B4 | size: 0x8
.obj str_MJR_X_1_las_0001ae1c, local
	.string "MJR_X_1"
.endobj str_MJR_X_1_las_0001ae1c

# .rodata:0x8C | 0x93BC | size: 0x8
.obj str_MJR_S_1_las_0001ae24, local
	.string "MJR_S_1"
.endobj str_MJR_S_1_las_0001ae24

# .rodata:0x94 | 0x93C4 | size: 0x8
.obj str_MJR_Q_1_las_0001ae2c, local
	.string "MJR_Q_1"
.endobj str_MJR_Q_1_las_0001ae2c

# .rodata:0x9C | 0x93CC | size: 0x8
.obj str_MJR_D_1_las_0001ae34, local
	.string "MJR_D_1"
.endobj str_MJR_D_1_las_0001ae34

# .rodata:0xA4 | 0x93D4 | size: 0x8
.obj str_MJR_R_1_las_0001ae3c, local
	.string "MJR_R_1"
.endobj str_MJR_R_1_las_0001ae3c

# .rodata:0xAC | 0x93DC | size: 0x8
.obj str_MJR_W_1_las_0001ae44, local
	.string "MJR_W_1"
.endobj str_MJR_W_1_las_0001ae44

# .rodata:0xB4 | 0x93E4 | size: 0x8
.obj str_MJR_T_1_las_0001ae4c, local
	.string "MJR_T_1"
.endobj str_MJR_T_1_las_0001ae4c

# .rodata:0xBC | 0x93EC | size: 0xB
.obj str_c_majyorin_las_0001ae54, local
	.string "c_majyorin"
.endobj str_c_majyorin_las_0001ae54

# .rodata:0xC7 | 0x93F7 | size: 0x1
.obj gap_03_000093F7_rodata, global
.hidden gap_03_000093F7_rodata
	.byte 0x00
.endobj gap_03_000093F7_rodata

# .rodata:0xC8 | 0x93F8 | size: 0x16
.obj str_SFX_BOSS_MAJO_SHADOW_las_0001ae60, local
	.string "SFX_BOSS_MAJO_SHADOW1"
.endobj str_SFX_BOSS_MAJO_SHADOW_las_0001ae60

# .rodata:0xDE | 0x940E | size: 0x2
.obj gap_03_0000940E_rodata, global
.hidden gap_03_0000940E_rodata
	.2byte 0x0000
.endobj gap_03_0000940E_rodata

# .rodata:0xE0 | 0x9410 | size: 0x16
.obj str_SFX_BOSS_MAJO_SHADOW_las_0001ae78, local
	.string "SFX_BOSS_MAJO_SHADOW2"
.endobj str_SFX_BOSS_MAJO_SHADOW_las_0001ae78

# .rodata:0xF6 | 0x9426 | size: 0x2
.obj gap_03_00009426_rodata, global
.hidden gap_03_00009426_rodata
	.2byte 0x0000
.endobj gap_03_00009426_rodata

# .rodata:0xF8 | 0x9428 | size: 0xD
.obj str_btl_majo3_11_las_0001ae90, local
	.string "btl_majo3_11"
.endobj str_btl_majo3_11_las_0001ae90

# .rodata:0x105 | 0x9435 | size: 0x3
.obj gap_03_00009435_rodata, global
.hidden gap_03_00009435_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009435_rodata

# .rodata:0x108 | 0x9438 | size: 0xD
.obj str_btl_majo3_08_las_0001aea0, local
	.string "btl_majo3_08"
.endobj str_btl_majo3_08_las_0001aea0

# .rodata:0x115 | 0x9445 | size: 0x3
.obj gap_03_00009445_rodata, global
.hidden gap_03_00009445_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009445_rodata

# .rodata:0x118 | 0x9448 | size: 0x8
.obj str_MJR_D_3_las_0001aeb0, local
	.string "MJR_D_3"
.endobj str_MJR_D_3_las_0001aeb0

# .rodata:0x120 | 0x9450 | size: 0xD
.obj str_btl_majo3_03_las_0001aeb8, local
	.string "btl_majo3_03"
.endobj str_btl_majo3_03_las_0001aeb8

# .rodata:0x12D | 0x945D | size: 0x3
.obj gap_03_0000945D_rodata, global
.hidden gap_03_0000945D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000945D_rodata

# .rodata:0x130 | 0x9460 | size: 0xD
.obj str_btl_majo3_04_las_0001aec8, local
	.string "btl_majo3_04"
.endobj str_btl_majo3_04_las_0001aec8

# .rodata:0x13D | 0x946D | size: 0x3
.obj gap_03_0000946D_rodata, global
.hidden gap_03_0000946D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000946D_rodata

# .rodata:0x140 | 0x9470 | size: 0xD
.obj str_btl_majo3_05_las_0001aed8, local
	.string "btl_majo3_05"
.endobj str_btl_majo3_05_las_0001aed8

# .rodata:0x14D | 0x947D | size: 0x3
.obj gap_03_0000947D_rodata, global
.hidden gap_03_0000947D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000947D_rodata

# .rodata:0x150 | 0x9480 | size: 0xD
.obj str_btl_majo3_06_las_0001aee8, local
	.string "btl_majo3_06"
.endobj str_btl_majo3_06_las_0001aee8

# .rodata:0x15D | 0x948D | size: 0x3
.obj gap_03_0000948D_rodata, global
.hidden gap_03_0000948D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000948D_rodata

# .rodata:0x160 | 0x9490 | size: 0xD
.obj str_btl_majo3_07_las_0001aef8, local
	.string "btl_majo3_07"
.endobj str_btl_majo3_07_las_0001aef8

# .rodata:0x16D | 0x949D | size: 0x3
.obj gap_03_0000949D_rodata, global
.hidden gap_03_0000949D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000949D_rodata

# .rodata:0x170 | 0x94A0 | size: 0x9
.obj str_MJR_A1_1_las_0001af08, local
	.string "MJR_A1_1"
.endobj str_MJR_A1_1_las_0001af08

# .rodata:0x179 | 0x94A9 | size: 0x3
.obj gap_03_000094A9_rodata, global
.hidden gap_03_000094A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000094A9_rodata

# .rodata:0x17C | 0x94AC | size: 0x14
.obj str_SFX_BOSS_MAJO_PUSH1_las_0001af14, local
	.string "SFX_BOSS_MAJO_PUSH1"
.endobj str_SFX_BOSS_MAJO_PUSH1_las_0001af14

# .rodata:0x190 | 0x94C0 | size: 0x9
.obj str_MJR_A1_2_las_0001af28, local
	.string "MJR_A1_2"
.endobj str_MJR_A1_2_las_0001af28

# .rodata:0x199 | 0x94C9 | size: 0x3
.obj gap_03_000094C9_rodata, global
.hidden gap_03_000094C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000094C9_rodata

# .rodata:0x19C | 0x94CC | size: 0x9
.obj str_MJR_A1_3_las_0001af34, local
	.string "MJR_A1_3"
.endobj str_MJR_A1_3_las_0001af34

# .rodata:0x1A5 | 0x94D5 | size: 0x3
.obj gap_03_000094D5_rodata, global
.hidden gap_03_000094D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000094D5_rodata

# .rodata:0x1A8 | 0x94D8 | size: 0x9
.obj str_MJR_A1_4_las_0001af40, local
	.string "MJR_A1_4"
.endobj str_MJR_A1_4_las_0001af40

# .rodata:0x1B1 | 0x94E1 | size: 0x3
.obj gap_03_000094E1_rodata, global
.hidden gap_03_000094E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000094E1_rodata

# .rodata:0x1B4 | 0x94E4 | size: 0x19
.obj str_SFX_BOSS_MAJO_HAND_O_las_0001af4c, local
	.string "SFX_BOSS_MAJO_HAND_OPEN1"
.endobj str_SFX_BOSS_MAJO_HAND_O_las_0001af4c

# .rodata:0x1CD | 0x94FD | size: 0x3
.obj gap_03_000094FD_rodata, global
.hidden gap_03_000094FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000094FD_rodata

# .rodata:0x1D0 | 0x9500 | size: 0x1A
.obj str_SFX_BOSS_MAJO_ATTACK_las_0001af68, local
	.string "SFX_BOSS_MAJO_ATTACK_ICE1"
.endobj str_SFX_BOSS_MAJO_ATTACK_las_0001af68

# .rodata:0x1EA | 0x951A | size: 0x2
.obj gap_03_0000951A_rodata, global
.hidden gap_03_0000951A_rodata
	.2byte 0x0000
.endobj gap_03_0000951A_rodata

# .rodata:0x1EC | 0x951C | size: 0x6
.obj str_ibuki_las_0001af84, local
	.string "ibuki"
.endobj str_ibuki_las_0001af84

# .rodata:0x1F2 | 0x9522 | size: 0x2
.obj gap_03_00009522_rodata, global
.hidden gap_03_00009522_rodata
	.2byte 0x0000
.endobj gap_03_00009522_rodata

# .rodata:0x1F4 | 0x9524 | size: 0x9
.obj str_MJR_A2_1_las_0001af8c, local
	.string "MJR_A2_1"
.endobj str_MJR_A2_1_las_0001af8c

# .rodata:0x1FD | 0x952D | size: 0x3
.obj gap_03_0000952D_rodata, global
.hidden gap_03_0000952D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000952D_rodata

# .rodata:0x200 | 0x9530 | size: 0x9
.obj str_MJR_A2_2_las_0001af98, local
	.string "MJR_A2_2"
.endobj str_MJR_A2_2_las_0001af98

# .rodata:0x209 | 0x9539 | size: 0x3
.obj gap_03_00009539_rodata, global
.hidden gap_03_00009539_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00009539_rodata

# .rodata:0x20C | 0x953C | size: 0x9
.obj str_MJR_A2_3_las_0001afa4, local
	.string "MJR_A2_3"
.endobj str_MJR_A2_3_las_0001afa4

# 0x0005B968..0x0005E128 | size: 0x27C0
.data
.balign 8

# .data:0x0 | 0x5B968 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x5B970 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x5B974 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x5B978 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x5B97C | size: 0x4
.obj gap_04_0005B97C_data, global
.hidden gap_04_0005B97C_data
	.4byte 0x00000000
.endobj gap_04_0005B97C_data

# .data:0x18 | 0x5B980 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x5B988 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x5B98C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x5B990 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x5B998 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x5B99C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x5B9A0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x5B9A4 | size: 0x4
.obj gap_04_0005B9A4_data, global
.hidden gap_04_0005B9A4_data
	.4byte 0x00000000
.endobj gap_04_0005B9A4_data

# .data:0x40 | 0x5B9A8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x5B9B0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x5B9B4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x5B9B8 | size: 0xC4
.obj unit_boss_majolyne_las_16_data_5B9B8, global
	.4byte 0x00000085
	.4byte str_btl_un_majolyne4_las_0001ad98
	.4byte 0x001E0000
	.4byte 0x01013900
	.4byte 0x00640032
	.4byte 0x0007001A
	.4byte 0x00220000
	.4byte 0x00220000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40C00000
	.4byte 0x40000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41000000
	.4byte 0x41B0CCCD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x42080000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_MAJO_DAMAGE_las_0001adac
	.4byte str_SFX_BTL_DAMAGE_FIRE1_las_0001adc4
	.4byte str_SFX_BTL_DAMAGE_ICE1_las_0001addc
	.4byte str_SFX_BTL_DAMAGE_BIRIB_las_0001adf0
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_majolyne_las_16_data_5B9B8

# .data:0x114 | 0x5BA7C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x5BA81 | size: 0x3
.obj gap_04_0005BA81_data, global
.hidden gap_04_0005BA81_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0005BA81_data

# .data:0x11C | 0x5BA84 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x5BA89 | size: 0x3
.obj gap_04_0005BA89_data, global
.hidden gap_04_0005BA89_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0005BA89_data

# .data:0x124 | 0x5BA8C | size: 0x16
.obj regist, local
	.4byte 0x28322864
	.4byte 0x2864641E
	.4byte 0x643C643C
	.4byte 0x64502800
	.4byte 0x00642864
	.2byte 0x6405
.endobj regist

# .data:0x13A | 0x5BAA2 | size: 0x2
.obj gap_04_0005BAA2_data, global
.hidden gap_04_0005BAA2_data
	.2byte 0x0000
.endobj gap_04_0005BAA2_data

# .data:0x13C | 0x5BAA4 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_MJR_N_1_las_0001ae0c
	.4byte 0x00000002
	.4byte str_MJR_Z_1_las_0001ae14
	.4byte 0x00000009
	.4byte str_MJR_Z_1_las_0001ae14
	.4byte 0x00000005
	.4byte str_MJR_X_1_las_0001ae1c
	.4byte 0x00000004
	.4byte str_MJR_X_1_las_0001ae1c
	.4byte 0x00000003
	.4byte str_MJR_X_1_las_0001ae1c
	.4byte 0x0000001C
	.4byte str_MJR_S_1_las_0001ae24
	.4byte 0x0000001D
	.4byte str_MJR_Q_1_las_0001ae2c
	.4byte 0x0000001E
	.4byte str_MJR_Q_1_las_0001ae2c
	.4byte 0x0000001F
	.4byte str_MJR_D_1_las_0001ae34
	.4byte 0x00000027
	.4byte str_MJR_D_1_las_0001ae34
	.4byte 0x00000032
	.4byte str_MJR_S_1_las_0001ae24
	.4byte 0x0000002A
	.4byte str_MJR_R_1_las_0001ae3c
	.4byte 0x00000028
	.4byte str_MJR_W_1_las_0001ae44
	.4byte 0x00000038
	.4byte str_MJR_S_1_las_0001ae24
	.4byte 0x00000039
	.4byte str_MJR_S_1_las_0001ae24
	.4byte 0x00000041
	.4byte str_MJR_T_1_las_0001ae4c
	.4byte 0x00000045
	.4byte str_MJR_S_1_las_0001ae24
.endobj pose_table

# .data:0x1CC | 0x5BB34 | size: 0x10
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1DC | 0x5BB44 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_majolyne4_las_0001ad98
	.4byte str_c_majyorin_las_0001ae54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x41A00000
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

# .data:0x228 | 0x5BB90 | size: 0xC0
.obj weapon_majolyne_kagenuke_attack1, local
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
	.4byte 0x20000000
	.4byte 0x02000302
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000002
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
.endobj weapon_majolyne_kagenuke_attack1

# .data:0x2E8 | 0x5BC50 | size: 0xC0
.obj weapon_majolyne_blizzard_attack1, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
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
	.4byte 0x20000000
	.4byte 0x02000302
	.4byte 0x00000000
	.4byte 0x00000043
	.4byte 0x000007FF
	.4byte 0x80002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00280200
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
.endobj weapon_majolyne_blizzard_attack1

# .data:0x3A8 | 0x5BD10 | size: 0xC0
.obj weapon_majolyne_powder_attack1, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000003
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
	.4byte 0x01100160
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x0000008F
	.4byte 0x000007FF
	.4byte 0x80002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x03020000
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
.endobj weapon_majolyne_powder_attack1

# .data:0x468 | 0x5BDD0 | size: 0xC0
.obj weapon_majolyne_powder_attack2, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000003
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
	.4byte 0x01101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x03FE0000
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
.endobj weapon_majolyne_powder_attack2

# .data:0x528 | 0x5BE90 | size: 0xC0
.obj weapon_majolyne_powder_attack3, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000003
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
	.4byte 0x01101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80002000
	.4byte 0x00000000
	.4byte 0x0000640A
	.4byte 0x01000000
	.4byte 0x00000000
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
.endobj weapon_majolyne_powder_attack3

# .data:0x5E8 | 0x5BF50 | size: 0xC0
.obj weapon_majolyne_powder_attack4, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000003
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
	.4byte 0x01101260
	.4byte 0x20000000
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
	.4byte 0x00006403
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_majolyne_powder_attack4

# .data:0x6A8 | 0x5C010 | size: 0xC0
.obj weapon_majolyne_powder_attack5, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000003
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
	.4byte 0x01100160
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x0000008F
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
	.4byte 0x64030000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_majolyne_powder_attack5

# .data:0x768 | 0x5C0D0 | size: 0x4C
.obj majolyne_down, local
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MAJO_SHADOW_las_0001ae60
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte battle_evt_majo_disp_off
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majolyne_down

# .data:0x7B4 | 0x5C11C | size: 0x6C
.obj majolyne_up, local
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MAJO_SHADOW_las_0001ae78
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte battle_evt_majo_disp_on
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majolyne_up

# .data:0x820 | 0x5C188 | size: 0x64
.obj majo3_zoom, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majo3_zoom

# .data:0x884 | 0x5C1EC | size: 0x1C
.obj btl_vivian_zoom_16_data_5C1EC, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFD050F8A
	.4byte 0x0001005E
	.4byte majo3_zoom
	.4byte 0x00000002
	.4byte 0x00000001
.endobj btl_vivian_zoom_16_data_5C1EC

# .data:0x8A0 | 0x5C208 | size: 0x1C
.obj btl_marilyn_zoom_16_data_5C208, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFD050F89
	.4byte 0x0001005E
	.4byte majo3_zoom
	.4byte 0x00000002
	.4byte 0x00000001
.endobj btl_marilyn_zoom_16_data_5C208

# .data:0x8BC | 0x5C224 | size: 0x1C
.obj btl_majolyne_zoom_16_data_5C224, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFD050F88
	.4byte 0x0001005E
	.4byte majo3_zoom
	.4byte 0x00000002
	.4byte 0x00000001
.endobj btl_majolyne_zoom_16_data_5C224

# .data:0x8D8 | 0x5C240 | size: 0xB4
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
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte majo3_shadow_tail_event_16_data_5DFF0
	.4byte 0x0002004C
	.4byte 0x0000000A
	.4byte 0xFD050F8F
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x98C | 0x5C2F4 | size: 0x58
.obj damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000400
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8B
	.4byte 0x00000001
	.4byte 0x00000021
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

# .data:0x9E4 | 0x5C34C | size: 0x1E8
.obj dead_event, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
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
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btl_majolyne_zoom_16_data_5C224
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_MJR_D_1_las_0001ae34
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_MJR_D_1_las_0001ae34
	.4byte 0x00020019
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_11_las_0001ae90
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_08_las_0001aea0
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_D_3_las_0001aeb0
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8B
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core_nospin_norotate
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0xBCC | 0x5C534 | size: 0x3B8
.obj majo_unison_phase_event_16_data_5C534, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFF
	.4byte 0x00020018
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000005
	.4byte 0xFE363C86
	.4byte 0x00010022
	.4byte 0xFE363C86
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F8A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F8A
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F8A
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000005
	.4byte 0xFE363C86
	.4byte 0x00010022
	.4byte 0xFE363C86
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F89
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F89
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000002
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F89
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFD050F88
	.4byte 0x00000005
	.4byte 0xFE363C86
	.4byte 0x00010022
	.4byte 0xFE363C86
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F88
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000003
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F88
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000003
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F88
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000003
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte majo3_sort
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020018
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F88
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00010022
	.4byte 0xFE363C81
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020018
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F88
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00010022
	.4byte 0xFE363C82
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000005
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000005
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020018
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F88
	.4byte 0x00000005
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majo_unison_phase_event_16_data_5C534

# .data:0xF84 | 0x5C8EC | size: 0x14C
.obj unison_phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000003
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte majo_unison_phase_event_16_data_5C534
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C84
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0001005E
	.4byte majolyne_down
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010022
	.4byte 0xFE363C84
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000037
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000069
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000009B
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005E
	.4byte majolyne_up
	.4byte 0x0001005B
	.4byte btlevtcmd_SortPhaseMoveTable
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unison_phase_event

# .data:0x10D0 | 0x5CA38 | size: 0x530
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
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000042
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00010073
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btl_majolyne_zoom_16_data_5C224
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_03_las_0001aeb8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFD050F89
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F89
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btl_majolyne_zoom_16_data_5C224
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFD050F89
	.4byte 0xFFFFFFFF
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_04_las_0001aec8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFD050F89
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btl_marilyn_zoom_16_data_5C208
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_05_las_0001aed8
	.4byte 0x00000000
	.4byte 0xFD050F89
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFD050F8A
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F8A
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btl_majolyne_zoom_16_data_5C224
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFD050F8A
	.4byte 0xFFFFFFFF
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_06_las_0001aee8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFD050F8A
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btl_vivian_zoom_16_data_5C1EC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_07_las_0001aef8
	.4byte 0x00000000
	.4byte 0xFD050F8A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x1600 | 0x5CF68 | size: 0x614
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
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_blizzard_attack1
	.4byte 0x0001005E
	.4byte blizzard_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack4
	.4byte 0x0001005E
	.4byte powder_attack_check
	.4byte 0x0001005E
	.4byte powder_attack_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack5
	.4byte 0x0001005E
	.4byte powder_attack_check
	.4byte 0x0001005E
	.4byte powder_attack_event
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_blizzard_attack1
	.4byte 0x0001005E
	.4byte blizzard_attack_event
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0001004A
	.4byte 0xFD050F8F
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack1
	.4byte 0x0001005E
	.4byte powder_attack_check
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xF4ACD480
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xF4ACD481
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000005
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack2
	.4byte 0x0001005E
	.4byte powder_attack_check
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xF4ACD482
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xF4ACD483
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000005
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack3
	.4byte 0x0001005E
	.4byte powder_attack_check
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xF4ACD484
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xF4ACD485
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000005
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack4
	.4byte 0x0001005E
	.4byte powder_attack_check
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xF4ACD486
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xF4ACD487
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000005
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack5
	.4byte 0x0001005E
	.4byte powder_attack_check
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xF4ACD488
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xF4ACD489
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000005
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0xFE363C82
	.4byte 0x00020019
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x0000001E
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020036
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_kagenuke_attack1
	.4byte 0x0001005E
	.4byte kagenuke_attack_event
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000005
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack1
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xF4ACD480
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xF4ACD481
	.4byte 0x0001005E
	.4byte powder_attack_event
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000005
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack2
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xF4ACD482
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xF4ACD483
	.4byte 0x0001005E
	.4byte powder_attack_event
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack3
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xF4ACD484
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xF4ACD485
	.4byte 0x0001005E
	.4byte powder_attack_event
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack4
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xF4ACD486
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xF4ACD487
	.4byte 0x0001005E
	.4byte powder_attack_event
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000005
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack5
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xF4ACD488
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xF4ACD489
	.4byte 0x0001005E
	.4byte powder_attack_event
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_blizzard_attack1
	.4byte 0x0001005E
	.4byte blizzard_attack_event
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1C14 | 0x5D57C | size: 0x384
.obj kagenuke_attack_event, local
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A1_1_las_0001af08
	.4byte 0x0001005E
	.4byte majolyne_down
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte majolyne_up
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MAJO_PUSH1_las_0001af14
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A1_2_las_0001af28
	.4byte 0x00010009
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A1_3_las_0001af34
	.4byte 0x0001000A
	.4byte 0x0000015E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A1_4_las_0001af40
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
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
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
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
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A1_1_las_0001af08
	.4byte 0x0001005E
	.4byte majolyne_down
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005E
	.4byte majolyne_up
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kagenuke_attack_event

# .data:0x1F98 | 0x5D900 | size: 0x3CC
.obj blizzard_attack_event, local
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
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MAJO_HAND_O_las_0001af4c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A1_2_las_0001af28
	.4byte 0x00010009
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A1_3_las_0001af34
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A1_4_las_0001af40
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MAJO_ATTACK_las_0001af68
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x0002001D
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_ibuki_las_0001af84
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_ibuki_las_0001af84
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000096
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x00010003
	.4byte 0x0000000A
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
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010003
	.4byte 0x00000061
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
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj blizzard_attack_event

# .data:0x2364 | 0x5DCCC | size: 0x40
.obj powder_attack_check, local
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
	.4byte 0x00000002
	.4byte 0x00000001
.endobj powder_attack_check

# .data:0x23A4 | 0x5DD0C | size: 0x2CC
.obj powder_attack_event, local
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
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack1
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000009
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
	.4byte 0x00000021
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
	.4byte str_SFX_BOSS_MAJO_HAND_O_las_0001af4c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A2_1_las_0001af8c
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A2_2_las_0001af98
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A2_3_las_0001afa4
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
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
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x0000005B
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
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj powder_attack_event

# .data:0x2670 | 0x5DFD8 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x2688 | 0x5DFF0 | size: 0x138
.obj majo3_shadow_tail_event_16_data_5DFF0, global
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C82
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C82
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majo3_shadow_tail_event_16_data_5DFF0
