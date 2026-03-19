.include "macros.inc"
.file "unit_kuriboo.o"

# 0x0001B42C..0x0001B544 | size: 0x118
.text
.balign 4

# .text:0x0 | 0x1B42C | size: 0x118
.fn krb_get_dir, local
/* 0001B42C 0001B4F0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 0001B430 0001B4F4  7C 08 02 A6 */	mflr r0
/* 0001B434 0001B4F8  90 01 00 64 */	stw r0, 0x64(r1)
/* 0001B438 0001B4FC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 0001B43C 0001B500  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 0001B440 0001B504  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 0001B444 0001B508  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 0001B448 0001B50C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 0001B44C 0001B510  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 0001B450 0001B514  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 0001B454 0001B518  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 0001B458 0001B51C  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0001B45C 0001B520  7C 7E 1B 78 */	mr r30, r3
/* 0001B460 0001B524  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0001B464 0001B528  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0001B468 0001B52C  4B FE 4D F1 */	bl evtGetFloat
/* 0001B46C 0001B530  FF 80 08 90 */	fmr f28, f1
/* 0001B470 0001B534  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0001B474 0001B538  7F C3 F3 78 */	mr r3, r30
/* 0001B478 0001B53C  4B FE 4D E1 */	bl evtGetFloat
/* 0001B47C 0001B540  FF A0 08 90 */	fmr f29, f1
/* 0001B480 0001B544  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0001B484 0001B548  7F C3 F3 78 */	mr r3, r30
/* 0001B488 0001B54C  4B FE 4D D1 */	bl evtGetFloat
/* 0001B48C 0001B550  FF C0 08 90 */	fmr f30, f1
/* 0001B490 0001B554  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0001B494 0001B558  7F C3 F3 78 */	mr r3, r30
/* 0001B498 0001B55C  4B FE 4D C1 */	bl evtGetFloat
/* 0001B49C 0001B560  FF E0 08 90 */	fmr f31, f1
/* 0001B4A0 0001B564  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0001B4A4 0001B568  7F C3 F3 78 */	mr r3, r30
/* 0001B4A8 0001B56C  4B FE 4D B1 */	bl evtGetValue
/* 0001B4AC 0001B570  3C 80 00 00 */	lis r4, zero_mri_000265c0@ha
/* 0001B4B0 0001B574  EC 3E E0 28 */	fsubs f1, f30, f28
/* 0001B4B4 0001B578  C0 04 00 00 */	lfs f0, zero_mri_000265c0@l(r4)
/* 0001B4B8 0001B57C  EC 5F E8 28 */	fsubs f2, f31, f29
/* 0001B4BC 0001B580  7C 65 1B 78 */	mr r5, r3
/* 0001B4C0 0001B584  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 0001B4C4 0001B588  40 82 00 20 */	bne .L_0001B4E4
/* 0001B4C8 0001B58C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 0001B4CC 0001B590  40 82 00 18 */	bne .L_0001B4E4
/* 0001B4D0 0001B594  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0001B4D4 0001B598  7F C3 F3 78 */	mr r3, r30
/* 0001B4D8 0001B59C  4B FE 4D 81 */	bl evtSetValue
/* 0001B4DC 0001B5A0  38 60 00 02 */	li r3, 0x2
/* 0001B4E0 0001B5A4  48 00 00 30 */	b .L_0001B510
.L_0001B4E4:
/* 0001B4E4 0001B5A8  3C 60 00 00 */	lis r3, zero_mri_000265c0@ha
/* 0001B4E8 0001B5AC  C0 63 00 00 */	lfs f3, zero_mri_000265c0@l(r3)
/* 0001B4EC 0001B5B0  FC 80 18 90 */	fmr f4, f3
/* 0001B4F0 0001B5B4  4B FE 4D 69 */	bl angleABf_1
/* 0001B4F4 0001B5B8  FC 00 08 1E */	fctiwz f0, f1
/* 0001B4F8 0001B5BC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0001B4FC 0001B5C0  7F C3 F3 78 */	mr r3, r30
/* 0001B500 0001B5C4  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0001B504 0001B5C8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 0001B508 0001B5CC  4B FE 4D 51 */	bl evtSetValue
/* 0001B50C 0001B5D0  38 60 00 02 */	li r3, 0x2
.L_0001B510:
/* 0001B510 0001B5D4  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 0001B514 0001B5D8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 0001B518 0001B5DC  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 0001B51C 0001B5E0  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 0001B520 0001B5E4  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 0001B524 0001B5E8  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 0001B528 0001B5EC  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 0001B52C 0001B5F0  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 0001B530 0001B5F4  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0001B534 0001B5F8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 0001B538 0001B5FC  7C 08 03 A6 */	mtlr r0
/* 0001B53C 0001B600  38 21 00 60 */	addi r1, r1, 0x60
/* 0001B540 0001B604  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00005DE8..0x00005F40 | size: 0x158
.rodata
.balign 8

# .rodata:0x0 | 0x5DE8 | size: 0xF
.obj str_btl_un_kuriboo_mri_00026488, local
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_mri_00026488

# .rodata:0xF | 0x5DF7 | size: 0x1
.obj gap_03_00005DF7_rodata, global
.hidden gap_03_00005DF7_rodata
	.byte 0x00
.endobj gap_03_00005DF7_rodata

# .rodata:0x10 | 0x5DF8 | size: 0x16
.obj str_SFX_ENM_KURI_DAMAGED_mri_00026498, local
	.string "SFX_ENM_KURI_DAMAGED1"
.endobj str_SFX_ENM_KURI_DAMAGED_mri_00026498

# .rodata:0x26 | 0x5E0E | size: 0x2
.obj gap_03_00005E0E_rodata, global
.hidden gap_03_00005E0E_rodata
	.2byte 0x0000
.endobj gap_03_00005E0E_rodata

# .rodata:0x28 | 0x5E10 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_mri_000264b0, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_mri_000264b0

# .rodata:0x3D | 0x5E25 | size: 0x3
.obj gap_03_00005E25_rodata, global
.hidden gap_03_00005E25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E25_rodata

# .rodata:0x40 | 0x5E28 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_mri_000264c8, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_mri_000264c8

# .rodata:0x54 | 0x5E3C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_mri_000264dc, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_mri_000264dc

# .rodata:0x6D | 0x5E55 | size: 0x3
.obj gap_03_00005E55_rodata, global
.hidden gap_03_00005E55_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E55_rodata

# .rodata:0x70 | 0x5E58 | size: 0x8
.obj str_KUR_N_1_mri_000264f8, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_mri_000264f8

# .rodata:0x78 | 0x5E60 | size: 0x8
.obj str_KUR_Y_1_mri_00026500, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_mri_00026500

# .rodata:0x80 | 0x5E68 | size: 0x8
.obj str_KUR_K_1_mri_00026508, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_mri_00026508

# .rodata:0x88 | 0x5E70 | size: 0x8
.obj str_KUR_I_1_mri_00026510, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_mri_00026510

# .rodata:0x90 | 0x5E78 | size: 0x8
.obj str_KUR_S_1_mri_00026518, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_mri_00026518

# .rodata:0x98 | 0x5E80 | size: 0x8
.obj str_KUR_Q_1_mri_00026520, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_mri_00026520

# .rodata:0xA0 | 0x5E88 | size: 0x8
.obj str_KUR_D_1_mri_00026528, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_mri_00026528

# .rodata:0xA8 | 0x5E90 | size: 0x8
.obj str_KUR_A_1_mri_00026530, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_mri_00026530

# .rodata:0xB0 | 0x5E98 | size: 0x8
.obj str_KUR_A_2_mri_00026538, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_mri_00026538

# .rodata:0xB8 | 0x5EA0 | size: 0x8
.obj str_KUR_R_1_mri_00026540, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_mri_00026540

# .rodata:0xC0 | 0x5EA8 | size: 0x8
.obj str_KUR_R_2_mri_00026548, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_mri_00026548

# .rodata:0xC8 | 0x5EB0 | size: 0x8
.obj str_KUR_W_1_mri_00026550, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_mri_00026550

# .rodata:0xD0 | 0x5EB8 | size: 0x8
.obj str_KUR_T_1_mri_00026558, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_mri_00026558

# .rodata:0xD8 | 0x5EC0 | size: 0x9
.obj str_c_kuribo_mri_00026560, local
	.string "c_kuribo"
.endobj str_c_kuribo_mri_00026560

# .rodata:0xE1 | 0x5EC9 | size: 0x3
.obj gap_03_00005EC9_rodata, global
.hidden gap_03_00005EC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005EC9_rodata

# .rodata:0xE4 | 0x5ECC | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_mri_0002656c, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_mri_0002656c

# .rodata:0xF7 | 0x5EDF | size: 0x1
.obj gap_03_00005EDF_rodata, global
.hidden gap_03_00005EDF_rodata
	.byte 0x00
.endobj gap_03_00005EDF_rodata

# .rodata:0xF8 | 0x5EE0 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_mri_00026580, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_mri_00026580

# .rodata:0x10B | 0x5EF3 | size: 0x1
.obj gap_03_00005EF3_rodata, global
.hidden gap_03_00005EF3_rodata
	.byte 0x00
.endobj gap_03_00005EF3_rodata

# .rodata:0x10C | 0x5EF4 | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_mri_00026594, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_mri_00026594

# .rodata:0x11F | 0x5F07 | size: 0x1
.obj gap_03_00005F07_rodata, global
.hidden gap_03_00005F07_rodata
	.byte 0x00
.endobj gap_03_00005F07_rodata

# .rodata:0x120 | 0x5F08 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_mri_000265a8, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_mri_000265a8
	.2byte 0x0000

# .rodata:0x138 | 0x5F20 | size: 0x4
.obj zero_mri_000265c0, local
	.float 0
.endobj zero_mri_000265c0

# .rodata:0x13C | 0x5F24 | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_mri_000265c4, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_mri_000265c4

# .rodata:0x151 | 0x5F39 | size: 0x7
.obj gap_03_00005F39_rodata, global
.hidden gap_03_00005F39_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005F39_rodata

# 0x00026AE0..0x00027678 | size: 0xB98
.data
.balign 8

# .data:0x0 | 0x26AE0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x26AE8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x26AEC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x26AF0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x26AF4 | size: 0x4
.obj gap_04_00026AF4_data, global
.hidden gap_04_00026AF4_data
	.4byte 0x00000000
.endobj gap_04_00026AF4_data

# .data:0x18 | 0x26AF8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x26B00 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x26B04 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x26B08 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x26B10 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x26B14 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x26B18 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x26B1C | size: 0x4
.obj gap_04_00026B1C_data, global
.hidden gap_04_00026B1C_data
	.4byte 0x00000000
.endobj gap_04_00026B1C_data

# .data:0x40 | 0x26B20 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x26B28 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x26B2C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x26B30 | size: 0xC4
.obj unit_kuriboo, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_mri_00026488
	.4byte 0x00020000
	.4byte 0x01010700
	.4byte 0x013C0046
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
	.4byte 0x41900000
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
	.4byte str_SFX_ENM_KURI_DAMAGED_mri_00026498
	.4byte str_SFX_BTL_DAMAGE_FIRE1_mri_000264b0
	.4byte str_SFX_BTL_DAMAGE_ICE1_mri_000264c8
	.4byte str_SFX_BTL_DAMAGE_BIRIB_mri_000264dc
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_kuriboo

# .data:0x114 | 0x26BF4 | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_mri_000264f8
	.4byte 0x00000002
	.4byte str_KUR_Y_1_mri_00026500
	.4byte 0x00000009
	.4byte str_KUR_Y_1_mri_00026500
	.4byte 0x00000005
	.4byte str_KUR_K_1_mri_00026508
	.4byte 0x00000004
	.4byte str_KUR_I_1_mri_00026510
	.4byte 0x00000003
	.4byte str_KUR_I_1_mri_00026510
	.4byte 0x0000001C
	.4byte str_KUR_S_1_mri_00026518
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_mri_00026520
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_mri_00026520
	.4byte 0x0000001F
	.4byte str_KUR_S_1_mri_00026518
	.4byte 0x00000027
	.4byte str_KUR_D_1_mri_00026528
	.4byte 0x00000032
	.4byte str_KUR_A_1_mri_00026530
	.4byte 0x00000033
	.4byte str_KUR_A_2_mri_00026538
	.4byte 0x0000002A
	.4byte str_KUR_R_1_mri_00026540
	.4byte 0x00000029
	.4byte str_KUR_R_2_mri_00026548
	.4byte 0x00000028
	.4byte str_KUR_W_1_mri_00026550
	.4byte 0x00000038
	.4byte str_KUR_I_1_mri_00026510
	.4byte 0x00000039
	.4byte str_KUR_I_1_mri_00026510
	.4byte 0x00000041
	.4byte str_KUR_T_1_mri_00026558
	.4byte 0x00000045
	.4byte str_KUR_S_1_mri_00026518
.endobj pose_table

# .data:0x1B4 | 0x26C94 | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0x26CA4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1C9 | 0x26CA9 | size: 0x3
.obj gap_04_00026CA9_data, global
.hidden gap_04_00026CA9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00026CA9_data

# .data:0x1CC | 0x26CAC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1D1 | 0x26CB1 | size: 0x3
.obj gap_04_00026CB1_data, global
.hidden gap_04_00026CB1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00026CB1_data

# .data:0x1D4 | 0x26CB4 | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x64646464
	.2byte 0x6496
.endobj regist

# .data:0x1EA | 0x26CCA | size: 0x2
.obj gap_04_00026CCA_data, global
.hidden gap_04_00026CCA_data
	.2byte 0x0000
.endobj gap_04_00026CCA_data

# .data:0x1EC | 0x26CCC | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_mri_00026488
	.4byte str_c_kuribo_mri_00026560
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

# .data:0x238 | 0x26D18 | size: 0xC0
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

# .data:0x2F8 | 0x26DD8 | size: 0xA8
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
	.4byte str_SFX_ENM_KURI_MOVE1_mri_0002656c
	.4byte str_SFX_ENM_KURI_MOVE2_mri_00026580
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_mri_0002656c
	.4byte str_SFX_ENM_KURI_MOVE2_mri_00026580
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_mri_00026594
	.4byte str_SFX_ENM_KURI_LANDING_mri_000265a8
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3A0 | 0x26E80 | size: 0x28
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

# .data:0x3C8 | 0x26EA8 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x3D0 | 0x26EB0 | size: 0x7B0
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
	.4byte str_SFX_ENM_KURI_ATTACK1_mri_000265c4
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
	.4byte str_SFX_ENM_KURI_MOVE1_mri_0002656c
	.4byte str_SFX_ENM_KURI_MOVE2_mri_00026580
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

# .data:0xB80 | 0x27660 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
