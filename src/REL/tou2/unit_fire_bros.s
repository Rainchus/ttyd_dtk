.include "macros.inc"
.file "unit_fire_bros.o"

# 0x000053F0..0x00005578 | size: 0x188
.text
.balign 4

# .text:0x0 | 0x53F0 | size: 0x74
.fn fire_bros_get_next_target, local
/* 000053F0 000054B4  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 000053F4 000054B8  38 A5 00 00 */	addi r5, r5, _battleWorkPointer@l
/* 000053F8 000054BC  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 000053FC 000054C0  38 C5 04 28 */	addi r6, r5, 0x428
/* 00005400 000054C4  88 A5 0E DF */	lbz r5, 0xedf(r5)
/* 00005404 000054C8  38 05 00 01 */	addi r0, r5, 0x1
/* 00005408 000054CC  98 06 0A B7 */	stb r0, 0xab7(r6)
/* 0000540C 000054D0  88 A6 0A B7 */	lbz r5, 0xab7(r6)
/* 00005410 000054D4  88 06 0A 6C */	lbz r0, 0xa6c(r6)
/* 00005414 000054D8  7C A5 07 74 */	extsb r5, r5
/* 00005418 000054DC  7C 00 07 74 */	extsb r0, r0
/* 0000541C 000054E0  7C 05 00 00 */	cmpw r5, r0
/* 00005420 000054E4  40 80 00 30 */	bge .L_00005450
/* 00005424 000054E8  7C A6 2A 14 */	add r5, r6, r5
/* 00005428 000054EC  88 05 0A 6D */	lbz r0, 0xa6d(r5)
/* 0000542C 000054F0  7C 00 07 74 */	extsb r0, r0
/* 00005430 000054F4  1C A0 00 24 */	mulli r5, r0, 0x24
/* 00005434 000054F8  38 A5 00 04 */	addi r5, r5, 0x4
/* 00005438 000054FC  7C A6 2A 14 */	add r5, r6, r5
/* 0000543C 00005500  A8 05 00 00 */	lha r0, 0x0(r5)
/* 00005440 00005504  90 03 00 00 */	stw r0, 0x0(r3)
/* 00005444 00005508  A8 05 00 02 */	lha r0, 0x2(r5)
/* 00005448 0000550C  90 04 00 00 */	stw r0, 0x0(r4)
/* 0000544C 00005510  4E 80 00 20 */	blr
.L_00005450:
/* 00005450 00005514  38 A0 FF FF */	li r5, -0x1
/* 00005454 00005518  38 00 00 00 */	li r0, 0x0
/* 00005458 0000551C  90 A3 00 00 */	stw r5, 0x0(r3)
/* 0000545C 00005520  90 04 00 00 */	stw r0, 0x0(r4)
/* 00005460 00005524  4E 80 00 20 */	blr
.endfn fire_bros_get_next_target

# .text:0x74 | 0x5464 | size: 0x44
.fn fire_bros_get_target, local
/* 00005464 00005528  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 00005468 0000552C  38 A5 00 00 */	addi r5, r5, _battleWorkPointer@l
/* 0000546C 00005530  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 00005470 00005534  38 C5 04 28 */	addi r6, r5, 0x428
/* 00005474 00005538  88 05 0E DF */	lbz r0, 0xedf(r5)
/* 00005478 0000553C  7C 00 07 74 */	extsb r0, r0
/* 0000547C 00005540  7C A6 02 14 */	add r5, r6, r0
/* 00005480 00005544  88 05 0A 6D */	lbz r0, 0xa6d(r5)
/* 00005484 00005548  7C 00 07 74 */	extsb r0, r0
/* 00005488 0000554C  1C A0 00 24 */	mulli r5, r0, 0x24
/* 0000548C 00005550  38 A5 00 04 */	addi r5, r5, 0x4
/* 00005490 00005554  7C A6 2A 14 */	add r5, r6, r5
/* 00005494 00005558  A8 05 00 00 */	lha r0, 0x0(r5)
/* 00005498 0000555C  90 03 00 00 */	stw r0, 0x0(r3)
/* 0000549C 00005560  A8 05 00 02 */	lha r0, 0x2(r5)
/* 000054A0 00005564  90 04 00 00 */	stw r0, 0x0(r4)
/* 000054A4 00005568  4E 80 00 20 */	blr
.endfn fire_bros_get_target

# .text:0xB8 | 0x54A8 | size: 0xD0
.fn fire_bros_nagemakuri_set_target, local
/* 000054A8 0000556C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 000054AC 00005570  7C 08 02 A6 */	mflr r0
/* 000054B0 00005574  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000054B4 00005578  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 000054B8 0000557C  BF 21 00 B4 */	stmw r25, 0xb4(r1)
/* 000054BC 00005580  3B E0 00 00 */	li r31, 0x0
/* 000054C0 00005584  7C 79 1B 78 */	mr r25, r3
/* 000054C4 00005588  3B 80 00 00 */	li r28, 0x0
/* 000054C8 0000558C  83 63 00 18 */	lwz r27, 0x18(r3)
/* 000054CC 00005590  38 61 00 58 */	addi r3, r1, 0x58
/* 000054D0 00005594  80 A4 00 00 */	lwz r5, _battleWorkPointer@l(r4)
/* 000054D4 00005598  38 81 00 08 */	addi r4, r1, 0x8
/* 000054D8 0000559C  9B E5 0E DF */	stb r31, 0xedf(r5)
/* 000054DC 000055A0  4B FF FF 89 */	bl fire_bros_get_target
/* 000054E0 000055A4  3B C1 00 58 */	addi r30, r1, 0x58
.L_000054E4:
/* 000054E4 000055A8  7C 1E F8 2E */	lwzx r0, r30, r31
/* 000054E8 000055AC  2C 00 FF FF */	cmpwi r0, -0x1
/* 000054EC 000055B0  40 82 00 0C */	bne .L_000054F8
/* 000054F0 000055B4  7F 9A E3 78 */	mr r26, r28
/* 000054F4 000055B8  48 00 00 24 */	b .L_00005518
.L_000054F8:
/* 000054F8 000055BC  7F C3 F3 78 */	mr r3, r30
/* 000054FC 000055C0  3B FF 00 04 */	addi r31, r31, 0x4
/* 00005500 000055C4  38 81 00 08 */	addi r4, r1, 0x8
/* 00005504 000055C8  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00005508 000055CC  7C 63 FA 14 */	add r3, r3, r31
/* 0000550C 000055D0  7C 84 FA 14 */	add r4, r4, r31
/* 00005510 000055D4  4B FF FE E1 */	bl fire_bros_get_next_target
/* 00005514 000055D8  4B FF FF D0 */	b .L_000054E4
.L_00005518:
/* 00005518 000055DC  3B C1 00 58 */	addi r30, r1, 0x58
/* 0000551C 000055E0  3B E1 00 08 */	addi r31, r1, 0x8
/* 00005520 000055E4  3B 80 00 00 */	li r28, 0x0
.L_00005524:
/* 00005524 000055E8  7F 43 D3 78 */	mr r3, r26
/* 00005528 000055EC  4B FF FA ED */	bl irand
/* 0000552C 000055F0  54 7D 10 3A */	slwi r29, r3, 2
/* 00005530 000055F4  80 9B 00 00 */	lwz r4, 0x0(r27)
/* 00005534 000055F8  7C BE E8 2E */	lwzx r5, r30, r29
/* 00005538 000055FC  7F 23 CB 78 */	mr r3, r25
/* 0000553C 00005600  4B FF FA D9 */	bl evtSetValue
/* 00005540 00005604  80 9B 00 04 */	lwz r4, 0x4(r27)
/* 00005544 00005608  7F 23 CB 78 */	mr r3, r25
/* 00005548 0000560C  7C BF E8 2E */	lwzx r5, r31, r29
/* 0000554C 00005610  3B 7B 00 08 */	addi r27, r27, 0x8
/* 00005550 00005614  4B FF FA C5 */	bl evtSetValue
/* 00005554 00005618  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00005558 0000561C  2C 1C 00 05 */	cmpwi r28, 0x5
/* 0000555C 00005620  41 80 FF C8 */	blt .L_00005524
/* 00005560 00005624  BB 21 00 B4 */	lmw r25, 0xb4(r1)
/* 00005564 00005628  38 60 00 02 */	li r3, 0x2
/* 00005568 0000562C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 0000556C 00005630  7C 08 03 A6 */	mtlr r0
/* 00005570 00005634  38 21 00 D0 */	addi r1, r1, 0xd0
/* 00005574 00005638  4E 80 00 20 */	blr
.endfn fire_bros_nagemakuri_set_target

# 0x00003FE0..0x00004108 | size: 0x128
.rodata
.balign 8

# .rodata:0x0 | 0x3FE0 | size: 0x11
.obj str_btl_un_fire_bros_tou2_0000d720, local
	.string "btl_un_fire_bros"
.endobj str_btl_un_fire_bros_tou2_0000d720

# .rodata:0x11 | 0x3FF1 | size: 0x3
.obj gap_03_00003FF1_rodata, global
.hidden gap_03_00003FF1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003FF1_rodata

# .rodata:0x14 | 0x3FF4 | size: 0x17
.obj str_SFX_ENM_FIREB_DAMAGE_tou2_0000d734, local
	.string "SFX_ENM_FIREB_DAMAGED1"
.endobj str_SFX_ENM_FIREB_DAMAGE_tou2_0000d734

# .rodata:0x2B | 0x400B | size: 0x1
.obj gap_03_0000400B_rodata, global
.hidden gap_03_0000400B_rodata
	.byte 0x00
.endobj gap_03_0000400B_rodata

# .rodata:0x2C | 0x400C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000d74c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000d74c

# .rodata:0x41 | 0x4021 | size: 0x3
.obj gap_03_00004021_rodata, global
.hidden gap_03_00004021_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004021_rodata

# .rodata:0x44 | 0x4024 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_0000d764, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_0000d764

# .rodata:0x58 | 0x4038 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000d778, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000d778

# .rodata:0x71 | 0x4051 | size: 0x3
.obj gap_03_00004051_rodata, global
.hidden gap_03_00004051_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004051_rodata

# .rodata:0x74 | 0x4054 | size: 0x8
.obj str_BRO_N_1_tou2_0000d794, local
	.string "BRO_N_1"
.endobj str_BRO_N_1_tou2_0000d794

# .rodata:0x7C | 0x405C | size: 0x8
.obj str_BRO_Y_1_tou2_0000d79c, local
	.string "BRO_Y_1"
.endobj str_BRO_Y_1_tou2_0000d79c

# .rodata:0x84 | 0x4064 | size: 0x8
.obj str_BRO_K_1_tou2_0000d7a4, local
	.string "BRO_K_1"
.endobj str_BRO_K_1_tou2_0000d7a4

# .rodata:0x8C | 0x406C | size: 0x8
.obj str_BRO_X_1_tou2_0000d7ac, local
	.string "BRO_X_1"
.endobj str_BRO_X_1_tou2_0000d7ac

# .rodata:0x94 | 0x4074 | size: 0x8
.obj str_BRO_D_1_tou2_0000d7b4, local
	.string "BRO_D_1"
.endobj str_BRO_D_1_tou2_0000d7b4

# .rodata:0x9C | 0x407C | size: 0x8
.obj str_BRO_S_1_tou2_0000d7bc, local
	.string "BRO_S_1"
.endobj str_BRO_S_1_tou2_0000d7bc

# .rodata:0xA4 | 0x4084 | size: 0x8
.obj str_BRO_Q_1_tou2_0000d7c4, local
	.string "BRO_Q_1"
.endobj str_BRO_Q_1_tou2_0000d7c4

# .rodata:0xAC | 0x408C | size: 0x8
.obj str_BRO_R_1_tou2_0000d7cc, local
	.string "BRO_R_1"
.endobj str_BRO_R_1_tou2_0000d7cc

# .rodata:0xB4 | 0x4094 | size: 0x8
.obj str_BRO_W_1_tou2_0000d7d4, local
	.string "BRO_W_1"
.endobj str_BRO_W_1_tou2_0000d7d4

# .rodata:0xBC | 0x409C | size: 0x8
.obj str_BRO_T_1_tou2_0000d7dc, local
	.string "BRO_T_1"
.endobj str_BRO_T_1_tou2_0000d7dc

# .rodata:0xC4 | 0x40A4 | size: 0xB
.obj str_c_burosu_f_tou2_0000d7e4, local
	.string "c_burosu_f"
.endobj str_c_burosu_f_tou2_0000d7e4

# .rodata:0xCF | 0x40AF | size: 0x1
.obj gap_03_000040AF_rodata, global
.hidden gap_03_000040AF_rodata
	.byte 0x00
.endobj gap_03_000040AF_rodata

# .rodata:0xD0 | 0x40B0 | size: 0x16
.obj str_SFX_ENM_FIREB_ATTACK_tou2_0000d7f0, local
	.string "SFX_ENM_FIREB_ATTACK1"
.endobj str_SFX_ENM_FIREB_ATTACK_tou2_0000d7f0

# .rodata:0xE6 | 0x40C6 | size: 0x2
.obj gap_03_000040C6_rodata, global
.hidden gap_03_000040C6_rodata
	.2byte 0x0000
.endobj gap_03_000040C6_rodata

# .rodata:0xE8 | 0x40C8 | size: 0x9
.obj str_BRO_A_1B_tou2_0000d808, local
	.string "BRO_A_1B"
.endobj str_BRO_A_1B_tou2_0000d808

# .rodata:0xF1 | 0x40D1 | size: 0x3
.obj gap_03_000040D1_rodata, global
.hidden gap_03_000040D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000040D1_rodata

# .rodata:0xF4 | 0x40D4 | size: 0x16
.obj str_SFX_ENM_FIREB_ATTACK_tou2_0000d814, local
	.string "SFX_ENM_FIREB_ATTACK2"
.endobj str_SFX_ENM_FIREB_ATTACK_tou2_0000d814

# .rodata:0x10A | 0x40EA | size: 0x2
.obj gap_03_000040EA_rodata, global
.hidden gap_03_000040EA_rodata
	.2byte 0x0000
.endobj gap_03_000040EA_rodata

# .rodata:0x10C | 0x40EC | size: 0x9
.obj str_BRO_A_1A_tou2_0000d82c, local
	.string "BRO_A_1A"
.endobj str_BRO_A_1A_tou2_0000d82c

# .rodata:0x115 | 0x40F5 | size: 0x3
.obj gap_03_000040F5_rodata, global
.hidden gap_03_000040F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000040F5_rodata

# .rodata:0x118 | 0x40F8 | size: 0x9
.obj str_BRO_A_2A_tou2_0000d838, local
	.string "BRO_A_2A"
.endobj str_BRO_A_2A_tou2_0000d838

# .rodata:0x121 | 0x4101 | size: 0x7
.obj gap_03_00004101_rodata, global
.hidden gap_03_00004101_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004101_rodata

# 0x0001F638..0x00021690 | size: 0x2058
.data
.balign 8

# .data:0x0 | 0x1F638 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1F640 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1F644 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1F648 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1F64C | size: 0x4
.obj gap_04_0001F64C_data, global
.hidden gap_04_0001F64C_data
	.4byte 0x00000000
.endobj gap_04_0001F64C_data

# .data:0x18 | 0x1F650 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1F658 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1F65C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1F660 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1F668 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1F66C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1F670 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1F674 | size: 0x4
.obj gap_04_0001F674_data, global
.hidden gap_04_0001F674_data
	.4byte 0x00000000
.endobj gap_04_0001F674_data

# .data:0x40 | 0x1F678 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1F680 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1F684 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1F688 | size: 0xC4
.obj unit_fire_bros_26_data_1F688, global
	.4byte 0x0000003A
	.4byte str_btl_un_fire_bros_tou2_0000d720
	.4byte 0x00070000
	.4byte 0x01011400
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
	.4byte str_SFX_ENM_FIREB_DAMAGE_tou2_0000d734
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000d74c
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000d764
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000d778
	.4byte 0x00000000
	.4byte regist
	.4byte 0x07000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_fire_bros_26_data_1F688

# .data:0x114 | 0x1F74C | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x119 | 0x1F751 | size: 0x3
.obj gap_04_0001F751_data, global
.hidden gap_04_0001F751_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001F751_data

# .data:0x11C | 0x1F754 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x1F759 | size: 0x3
.obj gap_04_0001F759_data, global
.hidden gap_04_0001F759_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001F759_data

# .data:0x124 | 0x1F75C | size: 0x16
.obj regist, local
	.ascii "PPFdPddFdPdPd_PF<dPdd_"
.endobj regist

# .data:0x13A | 0x1F772 | size: 0x2
.obj gap_04_0001F772_data, global
.hidden gap_04_0001F772_data
	.2byte 0x0000
.endobj gap_04_0001F772_data

# .data:0x13C | 0x1F774 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_BRO_N_1_tou2_0000d794
	.4byte 0x00000002
	.4byte str_BRO_Y_1_tou2_0000d79c
	.4byte 0x00000009
	.4byte str_BRO_Y_1_tou2_0000d79c
	.4byte 0x00000005
	.4byte str_BRO_K_1_tou2_0000d7a4
	.4byte 0x00000004
	.4byte str_BRO_X_1_tou2_0000d7ac
	.4byte 0x00000003
	.4byte str_BRO_X_1_tou2_0000d7ac
	.4byte 0x0000001B
	.4byte str_BRO_D_1_tou2_0000d7b4
	.4byte 0x0000001C
	.4byte str_BRO_S_1_tou2_0000d7bc
	.4byte 0x0000001D
	.4byte str_BRO_Q_1_tou2_0000d7c4
	.4byte 0x0000001E
	.4byte str_BRO_Q_1_tou2_0000d7c4
	.4byte 0x0000001F
	.4byte str_BRO_S_1_tou2_0000d7bc
	.4byte 0x00000027
	.4byte str_BRO_D_1_tou2_0000d7b4
	.4byte 0x0000002A
	.4byte str_BRO_R_1_tou2_0000d7cc
	.4byte 0x00000028
	.4byte str_BRO_W_1_tou2_0000d7d4
	.4byte 0x00000038
	.4byte str_BRO_X_1_tou2_0000d7ac
	.4byte 0x00000039
	.4byte str_BRO_X_1_tou2_0000d7ac
	.4byte 0x00000041
	.4byte str_BRO_T_1_tou2_0000d7dc
	.4byte 0x00000045
	.4byte str_BRO_S_1_tou2_0000d7bc
.endobj pose_table

# .data:0x1CC | 0x1F804 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1D4 | 0x1F80C | size: 0x214
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_fire_bros_tou2_0000d720
	.4byte str_c_burosu_f_tou2_0000d7e4
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
	.4byte str_btl_un_fire_bros_tou2_0000d720
	.4byte str_c_burosu_f_tou2_0000d7e4
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
	.4byte str_btl_un_fire_bros_tou2_0000d720
	.4byte str_c_burosu_f_tou2_0000d7e4
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
	.4byte str_btl_un_fire_bros_tou2_0000d720
	.4byte str_c_burosu_f_tou2_0000d7e4
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
	.4byte str_btl_un_fire_bros_tou2_0000d720
	.4byte str_c_burosu_f_tou2_0000d7e4
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
	.4byte str_btl_un_fire_bros_tou2_0000d720
	.4byte str_c_burosu_f_tou2_0000d7e4
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
	.4byte 0x00000007
	.4byte str_btl_un_fire_bros_tou2_0000d720
	.4byte str_c_burosu_f_tou2_0000d7e4
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

# .data:0x3E8 | 0x1FA20 | size: 0xC0
.obj weapon_fire_bros_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
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
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x000007FF
	.4byte 0x80002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x03000000
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
.endobj weapon_fire_bros_attack

# .data:0x4A8 | 0x1FAE0 | size: 0xC0
.obj weapon_fire_bros_renzoku_attack, local
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
	.4byte 0x20000000
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x000007FF
	.4byte 0x80002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x03000000
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
.endobj weapon_fire_bros_renzoku_attack

# .data:0x568 | 0x1FBA0 | size: 0xC0
.obj weapon_fire_bros_nagemakuri_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x03000000
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
.endobj weapon_fire_bros_nagemakuri_attack

# .data:0x628 | 0x1FC60 | size: 0x54
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

# .data:0x67C | 0x1FCB4 | size: 0x28
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

# .data:0x6A4 | 0x1FCDC | size: 0x170
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
	.4byte 0x0000001E
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
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000046
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000046
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte renzoku_attack_event
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

# .data:0x814 | 0x1FE4C | size: 0x29C
.obj damage_check_sub, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
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
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte weapon_fire_bros_renzoku_attack
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8E
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C8C
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x00020018
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_check_sub

# .data:0xAB0 | 0x200E8 | size: 0x1C
.obj damage_check_no_last, local
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte damage_check_sub
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_check_no_last

# .data:0xACC | 0x20104 | size: 0x1C4
.obj damage_check_last, local
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte weapon_fire_bros_renzoku_attack
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8E
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C8C
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte damage_check_sub
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_check_last

# .data:0xC90 | 0x202C8 | size: 0x974
.obj fire_move_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FIREB_ATTACK_tou2_0000d7f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte str_BRO_A_1B_tou2_0000d808
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00020036
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x00010022
	.4byte 0xFE363C8A
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x0002001D
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFE363C8B
	.4byte 0x00000030
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFE363C8B
	.4byte 0x00000030
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte damage_check_no_last
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte damage_check_last
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
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
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x0002001D
	.4byte 0xFE363C8B
	.4byte 0x000000FA
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
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xFE363C8B
	.4byte 0xFFFFFF06
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
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x0000002E
	.4byte 0x00000031
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
	.4byte 0x00000010
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000001
	.4byte 0xFE363C8B
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0xF24A7CE6
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FIREB_ATTACK_tou2_0000d814
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FIREB_ATTACK_tou2_0000d814
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FIREB_ATTACK_tou2_0000d814
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FIREB_ATTACK_tou2_0000d814
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FIREB_ATTACK_tou2_0000d814
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0xF24A7CE6
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FIREB_ATTACK_tou2_0000d814
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FIREB_ATTACK_tou2_0000d814
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FIREB_ATTACK_tou2_0000d814
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FIREB_ATTACK_tou2_0000d814
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FIREB_ATTACK_tou2_0000d814
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00010009
	.4byte 0x00000006
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AddUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fire_move_event

# .data:0x1604 | 0x20C3C | size: 0x1F4
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
	.4byte weapon_fire_bros_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_fire_bros_attack
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
	.4byte weapon_fire_bros_attack
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
	.4byte weapon_fire_bros_attack
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
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_BRO_A_1A_tou2_0000d82c
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte weapon_fire_bros_attack
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte fire_move_event
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x17F8 | 0x20E30 | size: 0x234
.obj renzoku_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_fire_bros_renzoku_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_fire_bros_renzoku_attack
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
	.4byte weapon_fire_bros_renzoku_attack
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
	.4byte weapon_fire_bros_renzoku_attack
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
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_BRO_A_2A_tou2_0000d838
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte weapon_fire_bros_renzoku_attack
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte fire_move_event
	.4byte 0x00010009
	.4byte 0x0000000C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_BRO_A_2A_tou2_0000d838
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte weapon_fire_bros_renzoku_attack
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte fire_move_event
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event

# .data:0x1A2C | 0x21064 | size: 0x4F0
.obj nagemakuri_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_fire_bros_nagemakuri_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_fire_bros_nagemakuri_attack
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
	.4byte weapon_fire_bros_nagemakuri_attack
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_fire_bros_nagemakuri_attack
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x000B005B
	.4byte fire_bros_nagemakuri_set_target
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
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x00000003
	.4byte 0xFE363C86
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x00000005
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x00000006
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x00000008
	.4byte 0xFE363C87
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x00000009
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x0000000E
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x0000000C
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x0002001B
	.4byte 0xFE363C82
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_BRO_A_2A_tou2_0000d838
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C8B
	.4byte 0xFE363C84
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0x0001005E
	.4byte nagemakuri_judge_last_attack_event
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte weapon_fire_bros_nagemakuri_attack
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte fire_move_event
	.4byte 0x0004005B
	.4byte btlevtcmd_AddUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C8F
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nagemakuri_attack_event

# .data:0x1F1C | 0x21554 | size: 0x124
.obj nagemakuri_judge_last_attack_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C8B
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFE363C8F
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001B
	.4byte 0xFE363C8D
	.4byte 0x00000007
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nagemakuri_judge_last_attack_event

# .data:0x2040 | 0x21678 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
