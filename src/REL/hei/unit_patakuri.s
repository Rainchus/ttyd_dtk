.include "macros.inc"
.file "unit_patakuri.o"

# 0x0000444C..0x00004564 | size: 0x118
.text
.balign 4

# .text:0x0 | 0x444C | size: 0x118
.fn krb_get_dir, local
/* 0000444C 00004510  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00004450 00004514  7C 08 02 A6 */	mflr r0
/* 00004454 00004518  90 01 00 64 */	stw r0, 0x64(r1)
/* 00004458 0000451C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 0000445C 00004520  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00004460 00004524  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00004464 00004528  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00004468 0000452C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 0000446C 00004530  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00004470 00004534  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00004474 00004538  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00004478 0000453C  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000447C 00004540  7C 7E 1B 78 */	mr r30, r3
/* 00004480 00004544  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00004484 00004548  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004488 0000454C  4B FF BB 79 */	bl evtGetFloat
/* 0000448C 00004550  FF 80 08 90 */	fmr f28, f1
/* 00004490 00004554  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00004494 00004558  7F C3 F3 78 */	mr r3, r30
/* 00004498 0000455C  4B FF BB 69 */	bl evtGetFloat
/* 0000449C 00004560  FF A0 08 90 */	fmr f29, f1
/* 000044A0 00004564  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000044A4 00004568  7F C3 F3 78 */	mr r3, r30
/* 000044A8 0000456C  4B FF BB 59 */	bl evtGetFloat
/* 000044AC 00004570  FF C0 08 90 */	fmr f30, f1
/* 000044B0 00004574  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000044B4 00004578  7F C3 F3 78 */	mr r3, r30
/* 000044B8 0000457C  4B FF BB 49 */	bl evtGetFloat
/* 000044BC 00004580  FF E0 08 90 */	fmr f31, f1
/* 000044C0 00004584  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000044C4 00004588  7F C3 F3 78 */	mr r3, r30
/* 000044C8 0000458C  4B FF BB 39 */	bl evtGetValue
/* 000044CC 00004590  3C 80 00 00 */	lis r4, zero_hei_00008e34@ha
/* 000044D0 00004594  EC 3E E0 28 */	fsubs f1, f30, f28
/* 000044D4 00004598  C0 04 00 00 */	lfs f0, zero_hei_00008e34@l(r4)
/* 000044D8 0000459C  EC 5F E8 28 */	fsubs f2, f31, f29
/* 000044DC 000045A0  7C 65 1B 78 */	mr r5, r3
/* 000044E0 000045A4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 000044E4 000045A8  40 82 00 20 */	bne .L_00004504
/* 000044E8 000045AC  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 000044EC 000045B0  40 82 00 18 */	bne .L_00004504
/* 000044F0 000045B4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000044F4 000045B8  7F C3 F3 78 */	mr r3, r30
/* 000044F8 000045BC  4B FF BB 09 */	bl evtSetValue
/* 000044FC 000045C0  38 60 00 02 */	li r3, 0x2
/* 00004500 000045C4  48 00 00 30 */	b .L_00004530
.L_00004504:
/* 00004504 000045C8  3C 60 00 00 */	lis r3, zero_hei_00008e34@ha
/* 00004508 000045CC  C0 63 00 00 */	lfs f3, zero_hei_00008e34@l(r3)
/* 0000450C 000045D0  FC 80 18 90 */	fmr f4, f3
/* 00004510 000045D4  4B FF BA F1 */	bl angleABf_1
/* 00004514 000045D8  FC 00 08 1E */	fctiwz f0, f1
/* 00004518 000045DC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000451C 000045E0  7F C3 F3 78 */	mr r3, r30
/* 00004520 000045E4  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00004524 000045E8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00004528 000045EC  4B FF BA D9 */	bl evtSetValue
/* 0000452C 000045F0  38 60 00 02 */	li r3, 0x2
.L_00004530:
/* 00004530 000045F4  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00004534 000045F8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00004538 000045FC  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 0000453C 00004600  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00004540 00004604  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00004544 00004608  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00004548 0000460C  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 0000454C 00004610  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00004550 00004614  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00004554 00004618  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00004558 0000461C  7C 08 03 A6 */	mtlr r0
/* 0000455C 00004620  38 21 00 60 */	addi r1, r1, 0x60
/* 00004560 00004624  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00002D20..0x00002F58 | size: 0x238
.rodata
.balign 8

# .rodata:0x0 | 0x2D20 | size: 0x10
.obj str_btl_un_patakuri_hei_00008c00, local
	.string "btl_un_patakuri"
.endobj str_btl_un_patakuri_hei_00008c00

# .rodata:0x10 | 0x2D30 | size: 0x1A
.obj str_SFX_ENM_PATAKURI_DAM_hei_00008c10, local
	.string "SFX_ENM_PATAKURI_DAMAGED1"
.endobj str_SFX_ENM_PATAKURI_DAM_hei_00008c10

# .rodata:0x2A | 0x2D4A | size: 0x2
.obj gap_03_00002D4A_rodata, global
.hidden gap_03_00002D4A_rodata
	.2byte 0x0000
.endobj gap_03_00002D4A_rodata

# .rodata:0x2C | 0x2D4C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_hei_00008c2c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_hei_00008c2c

# .rodata:0x41 | 0x2D61 | size: 0x3
.obj gap_03_00002D61_rodata, global
.hidden gap_03_00002D61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D61_rodata

# .rodata:0x44 | 0x2D64 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_hei_00008c44, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_hei_00008c44

# .rodata:0x58 | 0x2D78 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_hei_00008c58, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_hei_00008c58

# .rodata:0x71 | 0x2D91 | size: 0x3
.obj gap_03_00002D91_rodata, global
.hidden gap_03_00002D91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D91_rodata

# .rodata:0x74 | 0x2D94 | size: 0x9
.obj str_c_kuribo_hei_00008c74, local
	.string "c_kuribo"
.endobj str_c_kuribo_hei_00008c74

# .rodata:0x7D | 0x2D9D | size: 0x3
.obj gap_03_00002D9D_rodata, global
.hidden gap_03_00002D9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D9D_rodata

# .rodata:0x80 | 0x2DA0 | size: 0x8
.obj str_PTK_N_1_hei_00008c80, local
	.string "PTK_N_1"
.endobj str_PTK_N_1_hei_00008c80

# .rodata:0x88 | 0x2DA8 | size: 0x8
.obj str_PTK_Y_1_hei_00008c88, local
	.string "PTK_Y_1"
.endobj str_PTK_Y_1_hei_00008c88

# .rodata:0x90 | 0x2DB0 | size: 0x8
.obj str_PTK_K_1_hei_00008c90, local
	.string "PTK_K_1"
.endobj str_PTK_K_1_hei_00008c90

# .rodata:0x98 | 0x2DB8 | size: 0x8
.obj str_PTK_I_1_hei_00008c98, local
	.string "PTK_I_1"
.endobj str_PTK_I_1_hei_00008c98

# .rodata:0xA0 | 0x2DC0 | size: 0x8
.obj str_PTK_S_1_hei_00008ca0, local
	.string "PTK_S_1"
.endobj str_PTK_S_1_hei_00008ca0

# .rodata:0xA8 | 0x2DC8 | size: 0x8
.obj str_PTK_Q_1_hei_00008ca8, local
	.string "PTK_Q_1"
.endobj str_PTK_Q_1_hei_00008ca8

# .rodata:0xB0 | 0x2DD0 | size: 0x8
.obj str_PTK_D_1_hei_00008cb0, local
	.string "PTK_D_1"
.endobj str_PTK_D_1_hei_00008cb0

# .rodata:0xB8 | 0x2DD8 | size: 0x8
.obj str_PTK_A_1_hei_00008cb8, local
	.string "PTK_A_1"
.endobj str_PTK_A_1_hei_00008cb8

# .rodata:0xC0 | 0x2DE0 | size: 0x8
.obj str_PTK_R_1_hei_00008cc0, local
	.string "PTK_R_1"
.endobj str_PTK_R_1_hei_00008cc0

# .rodata:0xC8 | 0x2DE8 | size: 0x8
.obj str_PTK_R_2_hei_00008cc8, local
	.string "PTK_R_2"
.endobj str_PTK_R_2_hei_00008cc8

# .rodata:0xD0 | 0x2DF0 | size: 0x8
.obj str_PTK_W_1_hei_00008cd0, local
	.string "PTK_W_1"
.endobj str_PTK_W_1_hei_00008cd0

# .rodata:0xD8 | 0x2DF8 | size: 0x8
.obj str_PTK_T_1_hei_00008cd8, local
	.string "PTK_T_1"
.endobj str_PTK_T_1_hei_00008cd8

# .rodata:0xE0 | 0x2E00 | size: 0x17
.obj str_SFX_ENM_PATAKURI_WAI_hei_00008ce0, local
	.string "SFX_ENM_PATAKURI_WAIT1"
.endobj str_SFX_ENM_PATAKURI_WAI_hei_00008ce0

# .rodata:0xF7 | 0x2E17 | size: 0x1
.obj gap_03_00002E17_rodata, global
.hidden gap_03_00002E17_rodata
	.byte 0x00
.endobj gap_03_00002E17_rodata

# .rodata:0xF8 | 0x2E18 | size: 0x17
.obj str_SFX_ENM_PATAKURI_MOV_hei_00008cf8, local
	.string "SFX_ENM_PATAKURI_MOVE1"
.endobj str_SFX_ENM_PATAKURI_MOV_hei_00008cf8

# .rodata:0x10F | 0x2E2F | size: 0x1
.obj gap_03_00002E2F_rodata, global
.hidden gap_03_00002E2F_rodata
	.byte 0x00
.endobj gap_03_00002E2F_rodata

# .rodata:0x110 | 0x2E30 | size: 0xE
.obj str_SFX_ENM_FALL1_hei_00008d10, local
	.string "SFX_ENM_FALL1"
.endobj str_SFX_ENM_FALL1_hei_00008d10

# .rodata:0x11E | 0x2E3E | size: 0x2
.obj gap_03_00002E3E_rodata, global
.hidden gap_03_00002E3E_rodata
	.2byte 0x0000
.endobj gap_03_00002E3E_rodata

# .rodata:0x120 | 0x2E40 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_hei_00008d20, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_hei_00008d20

# .rodata:0x133 | 0x2E53 | size: 0x1
.obj gap_03_00002E53_rodata, global
.hidden gap_03_00002E53_rodata
	.byte 0x00
.endobj gap_03_00002E53_rodata

# .rodata:0x134 | 0x2E54 | size: 0x17
.obj str_SFX_ENM_PATAKURI_MOV_hei_00008d34, local
	.string "SFX_ENM_PATAKURI_MOVE2"
.endobj str_SFX_ENM_PATAKURI_MOV_hei_00008d34

# .rodata:0x14B | 0x2E6B | size: 0x1
.obj gap_03_00002E6B_rodata, global
.hidden gap_03_00002E6B_rodata
	.byte 0x00
.endobj gap_03_00002E6B_rodata

# .rodata:0x14C | 0x2E6C | size: 0x17
.obj str_SFX_ENM_PATAKURI_MOV_hei_00008d4c, local
	.string "SFX_ENM_PATAKURI_MOVE3"
.endobj str_SFX_ENM_PATAKURI_MOV_hei_00008d4c

# .rodata:0x163 | 0x2E83 | size: 0x1
.obj gap_03_00002E83_rodata, global
.hidden gap_03_00002E83_rodata
	.byte 0x00
.endobj gap_03_00002E83_rodata

# .rodata:0x164 | 0x2E84 | size: 0x8
.obj str_KUR_N_1_hei_00008d64, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_hei_00008d64

# .rodata:0x16C | 0x2E8C | size: 0x8
.obj str_KUR_Y_1_hei_00008d6c, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_hei_00008d6c

# .rodata:0x174 | 0x2E94 | size: 0x8
.obj str_KUR_K_1_hei_00008d74, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_hei_00008d74

# .rodata:0x17C | 0x2E9C | size: 0x8
.obj str_KUR_I_1_hei_00008d7c, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_hei_00008d7c

# .rodata:0x184 | 0x2EA4 | size: 0x8
.obj str_KUR_S_1_hei_00008d84, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_hei_00008d84

# .rodata:0x18C | 0x2EAC | size: 0x8
.obj str_KUR_Q_1_hei_00008d8c, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_hei_00008d8c

# .rodata:0x194 | 0x2EB4 | size: 0x8
.obj str_KUR_D_1_hei_00008d94, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_hei_00008d94

# .rodata:0x19C | 0x2EBC | size: 0x8
.obj str_KUR_A_1_hei_00008d9c, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_hei_00008d9c

# .rodata:0x1A4 | 0x2EC4 | size: 0x8
.obj str_KUR_A_2_hei_00008da4, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_hei_00008da4

# .rodata:0x1AC | 0x2ECC | size: 0x8
.obj str_KUR_R_1_hei_00008dac, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_hei_00008dac

# .rodata:0x1B4 | 0x2ED4 | size: 0x8
.obj str_KUR_R_2_hei_00008db4, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_hei_00008db4

# .rodata:0x1BC | 0x2EDC | size: 0x8
.obj str_KUR_W_1_hei_00008dbc, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_hei_00008dbc

# .rodata:0x1C4 | 0x2EE4 | size: 0x8
.obj str_KUR_T_1_hei_00008dc4, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_hei_00008dc4

# .rodata:0x1CC | 0x2EEC | size: 0xF
.obj str_btl_un_kuriboo_hei_00008dcc, local
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_hei_00008dcc

# .rodata:0x1DB | 0x2EFB | size: 0x1
.obj gap_03_00002EFB_rodata, global
.hidden gap_03_00002EFB_rodata
	.byte 0x00
.endobj gap_03_00002EFB_rodata

# .rodata:0x1DC | 0x2EFC | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_hei_00008ddc, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_hei_00008ddc

# .rodata:0x1EF | 0x2F0F | size: 0x1
.obj gap_03_00002F0F_rodata, global
.hidden gap_03_00002F0F_rodata
	.byte 0x00
.endobj gap_03_00002F0F_rodata

# .rodata:0x1F0 | 0x2F10 | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_hei_00008df0, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_hei_00008df0

# .rodata:0x203 | 0x2F23 | size: 0x1
.obj gap_03_00002F23_rodata, global
.hidden gap_03_00002F23_rodata
	.byte 0x00
.endobj gap_03_00002F23_rodata

# .rodata:0x204 | 0x2F24 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_hei_00008e04, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_hei_00008e04

# .rodata:0x21A | 0x2F3A | size: 0x2
.obj gap_03_00002F3A_rodata, global
.hidden gap_03_00002F3A_rodata
	.2byte 0x0000
.endobj gap_03_00002F3A_rodata

# .rodata:0x21C | 0x2F3C | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_hei_00008e1c, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_hei_00008e1c
	.byte 0x00, 0x00, 0x00

# .rodata:0x234 | 0x2F54 | size: 0x4
.obj zero_hei_00008e34, local
	.float 0
.endobj zero_hei_00008e34

# 0x00013CD0..0x00015388 | size: 0x16B8
.data
.balign 8

# .data:0x0 | 0x13CD0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x13CD8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x13CDC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x13CE0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x13CE4 | size: 0x4
.obj gap_04_00013CE4_data, global
.hidden gap_04_00013CE4_data
	.4byte 0x00000000
.endobj gap_04_00013CE4_data

# .data:0x18 | 0x13CE8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x13CF0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x13CF4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x13CF8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x13D00 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x13D04 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x13D08 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x13D0C | size: 0x4
.obj gap_04_00013D0C_data, global
.hidden gap_04_00013D0C_data
	.4byte 0x00000000
.endobj gap_04_00013D0C_data

# .data:0x40 | 0x13D10 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x13D18 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x13D1C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x13D20 | size: 0xC4
.obj unit_patakuri_11_data_13D20, global
	.4byte 0x00000002
	.4byte str_btl_un_patakuri_hei_00008c00
	.4byte 0x00020000
	.4byte 0x01010700
	.4byte 0x013C003C
	.4byte 0x270F0017
	.4byte 0x00190005
	.4byte 0x00190000
	.4byte 0x00000000
	.4byte 0x41400000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41400000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41380000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41380000
	.4byte 0x41820000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41400000
	.4byte 0x00000000
	.4byte 0x41B80000
	.4byte 0x41C80000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_DAM_hei_00008c10
	.4byte str_SFX_BTL_DAMAGE_FIRE1_hei_00008c2c
	.4byte str_SFX_BTL_DAMAGE_ICE1_hei_00008c44
	.4byte str_SFX_BTL_DAMAGE_BIRIB_hei_00008c58
	.4byte 0x00040004
	.4byte regist_patakuri
	.4byte 0x01000000
	.4byte parts_patakuri
	.4byte init_event_patakuri
	.4byte data_table_patakuri
.endobj unit_patakuri_11_data_13D20

# .data:0x114 | 0x13DE4 | size: 0x5
.obj defence_patakuri, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_patakuri

# .data:0x119 | 0x13DE9 | size: 0x3
.obj gap_04_00013DE9_data, global
.hidden gap_04_00013DE9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00013DE9_data

# .data:0x11C | 0x13DEC | size: 0x5
.obj defence_patakuri_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_patakuri_attr

# .data:0x121 | 0x13DF1 | size: 0x3
.obj gap_04_00013DF1_data, global
.hidden gap_04_00013DF1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00013DF1_data

# .data:0x124 | 0x13DF4 | size: 0x16
.obj regist_patakuri, local
	.4byte 0x646E7864
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x6E646464
	.2byte 0x6496
.endobj regist_patakuri

# .data:0x13A | 0x13E0A | size: 0x2
.obj gap_04_00013E0A_data, global
.hidden gap_04_00013E0A_data
	.2byte 0x0000
.endobj gap_04_00013E0A_data

# .data:0x13C | 0x13E0C | size: 0xC0
.obj weapon_patakuri_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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
	.4byte 0x01101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00005087
	.4byte 0x00000000
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
.endobj weapon_patakuri_attack

# .data:0x1FC | 0x13ECC | size: 0x4C
.obj parts_patakuri, local
	.4byte 0x00000001
	.4byte str_btl_un_patakuri_hei_00008c00
	.4byte str_c_kuribo_hei_00008c74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41B00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence_patakuri
	.4byte defence_patakuri_attr
	.4byte 0x00600809
	.4byte 0x00000000
	.4byte pose_table_patakuri
.endobj parts_patakuri

# .data:0x248 | 0x13F18 | size: 0x98
.obj pose_table_patakuri, local
	.4byte 0x00000001
	.4byte str_PTK_N_1_hei_00008c80
	.4byte 0x00000002
	.4byte str_PTK_Y_1_hei_00008c88
	.4byte 0x00000009
	.4byte str_PTK_Y_1_hei_00008c88
	.4byte 0x00000005
	.4byte str_PTK_K_1_hei_00008c90
	.4byte 0x00000004
	.4byte str_PTK_I_1_hei_00008c98
	.4byte 0x00000003
	.4byte str_PTK_I_1_hei_00008c98
	.4byte 0x0000001C
	.4byte str_PTK_S_1_hei_00008ca0
	.4byte 0x0000001D
	.4byte str_PTK_Q_1_hei_00008ca8
	.4byte 0x0000001E
	.4byte str_PTK_Q_1_hei_00008ca8
	.4byte 0x0000001F
	.4byte str_PTK_S_1_hei_00008ca0
	.4byte 0x00000027
	.4byte str_PTK_D_1_hei_00008cb0
	.4byte 0x00000032
	.4byte str_PTK_A_1_hei_00008cb8
	.4byte 0x0000002A
	.4byte str_PTK_R_1_hei_00008cc0
	.4byte 0x00000029
	.4byte str_PTK_R_2_hei_00008cc8
	.4byte 0x00000028
	.4byte str_PTK_W_1_hei_00008cd0
	.4byte 0x00000038
	.4byte str_PTK_I_1_hei_00008c98
	.4byte 0x00000039
	.4byte str_PTK_I_1_hei_00008c98
	.4byte 0x00000041
	.4byte str_PTK_T_1_hei_00008cd8
	.4byte 0x00000045
	.4byte str_PTK_S_1_hei_00008ca0
.endobj pose_table_patakuri

# .data:0x2E0 | 0x13FB0 | size: 0x18
.obj data_table_patakuri, local
	.4byte 0x0000000E
	.4byte dmg_fall_event
	.4byte 0x00000030
	.4byte patakuri_dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_patakuri

# .data:0x2F8 | 0x13FC8 | size: 0x8C
.obj pose_sound_timing_table, local
	.4byte str_PTK_S_1_hei_00008ca0
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_hei_00008ce0
	.4byte 0x00000001
	.4byte str_PTK_W_1_hei_00008cd0
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_MOV_hei_00008cf8
	.4byte 0x00000001
	.4byte str_PTK_R_1_hei_00008cc0
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_MOV_hei_00008cf8
	.4byte 0x00000001
	.4byte str_PTK_K_1_hei_00008c90
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_hei_00008ce0
	.4byte 0x00000001
	.4byte str_PTK_N_1_hei_00008c80
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_hei_00008ce0
	.4byte 0x00000001
	.4byte str_PTK_I_1_hei_00008c98
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_hei_00008ce0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
.endobj pose_sound_timing_table

# .data:0x384 | 0x14054 | size: 0x68
.obj init_event_patakuri, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event_patakuri
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_patakuri
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte attack_event_patakuri
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseSoundTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_sound_timing_table
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_patakuri

# .data:0x3EC | 0x140BC | size: 0x1AC
.obj dmg_fall_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8E
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFE363C8A
	.4byte data_table
	.4byte 0x0005005B
	.4byte btlevtcmd_ReplaceParts
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte parts
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000027
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FALL1_hei_00008d10
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C8A
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_hei_00008d20
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeKind
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte init_event
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000027
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_fall_event

# .data:0x598 | 0x14268 | size: 0x4C
.obj patakuri_dmg_first_attack_pos, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00000002
	.4byte 0x00000001
.endobj patakuri_dmg_first_attack_pos

# .data:0x5E4 | 0x142B4 | size: 0x61C
.obj attack_event_patakuri, local
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
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_patakuri_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_patakuri_attack
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
	.4byte 0x000000FA
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_patakuri_attack
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
	.4byte weapon_patakuri_attack
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
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x00000064
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
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_btl_camera_nomove_y_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PATAKURI_MOV_hei_00008d34
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_patakuri_attack
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PATAKURI_MOV_hei_00008d4c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
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
	.4byte 0x00000032
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PATAKURI_MOV_hei_00008d4c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFF0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte weapon_patakuri_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_patakuri_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte btlevtcmd_SetMoveSoundDataWork
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PATAKURI_MOV_hei_00008cf8
	.4byte str_SFX_ENM_PATAKURI_MOV_hei_00008cf8
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9680
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
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_patakuri

# .data:0xC00 | 0x148D0 | size: 0x30
.obj wait_event_patakuri, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event_patakuri

# .data:0xC30 | 0x14900 | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_hei_00008d64
	.4byte 0x00000002
	.4byte str_KUR_Y_1_hei_00008d6c
	.4byte 0x00000009
	.4byte str_KUR_Y_1_hei_00008d6c
	.4byte 0x00000005
	.4byte str_KUR_K_1_hei_00008d74
	.4byte 0x00000004
	.4byte str_KUR_I_1_hei_00008d7c
	.4byte 0x00000003
	.4byte str_KUR_I_1_hei_00008d7c
	.4byte 0x0000001C
	.4byte str_KUR_S_1_hei_00008d84
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_hei_00008d8c
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_hei_00008d8c
	.4byte 0x0000001F
	.4byte str_KUR_S_1_hei_00008d84
	.4byte 0x00000027
	.4byte str_KUR_D_1_hei_00008d94
	.4byte 0x00000032
	.4byte str_KUR_A_1_hei_00008d9c
	.4byte 0x00000033
	.4byte str_KUR_A_2_hei_00008da4
	.4byte 0x0000002A
	.4byte str_KUR_R_1_hei_00008dac
	.4byte 0x00000029
	.4byte str_KUR_R_2_hei_00008db4
	.4byte 0x00000028
	.4byte str_KUR_W_1_hei_00008dbc
	.4byte 0x00000038
	.4byte str_KUR_I_1_hei_00008d7c
	.4byte 0x00000039
	.4byte str_KUR_I_1_hei_00008d7c
	.4byte 0x00000041
	.4byte str_KUR_T_1_hei_00008dc4
	.4byte 0x00000045
	.4byte str_KUR_S_1_hei_00008d84
.endobj pose_table

# .data:0xCD0 | 0x149A0 | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0xCE0 | 0x149B0 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0xCE5 | 0x149B5 | size: 0x3
.obj gap_04_000149B5_data, global
.hidden gap_04_000149B5_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000149B5_data

# .data:0xCE8 | 0x149B8 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0xCED | 0x149BD | size: 0x3
.obj gap_04_000149BD_data, global
.hidden gap_04_000149BD_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000149BD_data

# .data:0xCF0 | 0x149C0 | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x64646464
	.2byte 0x6496
.endobj regist

# .data:0xD06 | 0x149D6 | size: 0x2
.obj gap_04_000149D6_data, global
.hidden gap_04_000149D6_data
	.2byte 0x0000
.endobj gap_04_000149D6_data

# .data:0xD08 | 0x149D8 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_hei_00008dcc
	.4byte str_c_kuribo_hei_00008c74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41B00000
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

# .data:0xD54 | 0x14A24 | size: 0xC0
.obj weapon_kuriboo_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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
	.4byte 0x01101260
	.4byte 0x20001000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00005087
	.4byte 0x00000000
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
.endobj weapon_kuriboo_attack

# .data:0xE14 | 0x14AE4 | size: 0xA8
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
	.4byte str_SFX_ENM_KURI_MOVE1_hei_00008d20
	.4byte str_SFX_ENM_KURI_MOVE2_hei_00008ddc
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_hei_00008d20
	.4byte str_SFX_ENM_KURI_MOVE2_hei_00008ddc
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_hei_00008df0
	.4byte str_SFX_ENM_KURI_LANDING_hei_00008e04
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xEBC | 0x14B8C | size: 0x28
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

# .data:0xEE4 | 0x14BB4 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0xEEC | 0x14BBC | size: 0x7B0
.obj attack_event, local
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
	.4byte weapon_kuriboo_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_kuriboo_attack
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
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7CE6
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
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_kuriboo_attack
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
	.4byte weapon_kuriboo_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
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
	.4byte 0x000000AA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_btl_camera_nomove_y_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte krb_get_dir
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C88
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xFE363C89
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000020
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_kuriboo_attack
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
	.4byte 0x0000005B
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000045
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_MoveDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_MoveDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x0000005F
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_ATTACK1_hei_00008e1c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_kuriboo_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_kuriboo_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000045
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x0000005F
	.4byte 0x00010003
	.4byte 0x0000005F
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte btlevtcmd_SetMoveSoundDataWork
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_hei_00008d20
	.4byte str_SFX_ENM_KURI_MOVE2_hei_00008ddc
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000029
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
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
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x169C | 0x1536C | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x16B4 | 0x15384 | size: 0x4
.obj gap_04_00015384_data, global
.hidden gap_04_00015384_data
	.4byte 0x00000000
.endobj gap_04_00015384_data
