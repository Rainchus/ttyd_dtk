.include "macros.inc"
.file "unit_kuriboo.o"

# 0x00004334..0x0000444C | size: 0x118
.text
.balign 4

# .text:0x0 | 0x4334 | size: 0x118
.fn krb_get_dir, local
/* 00004334 000043F8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00004338 000043FC  7C 08 02 A6 */	mflr r0
/* 0000433C 00004400  90 01 00 64 */	stw r0, 0x64(r1)
/* 00004340 00004404  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00004344 00004408  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00004348 0000440C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 0000434C 00004410  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00004350 00004414  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00004354 00004418  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00004358 0000441C  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 0000435C 00004420  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00004360 00004424  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00004364 00004428  7C 7E 1B 78 */	mr r30, r3
/* 00004368 0000442C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000436C 00004430  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004370 00004434  4B FF BC 91 */	bl evtGetFloat
/* 00004374 00004438  FF 80 08 90 */	fmr f28, f1
/* 00004378 0000443C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000437C 00004440  7F C3 F3 78 */	mr r3, r30
/* 00004380 00004444  4B FF BC 81 */	bl evtGetFloat
/* 00004384 00004448  FF A0 08 90 */	fmr f29, f1
/* 00004388 0000444C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000438C 00004450  7F C3 F3 78 */	mr r3, r30
/* 00004390 00004454  4B FF BC 71 */	bl evtGetFloat
/* 00004394 00004458  FF C0 08 90 */	fmr f30, f1
/* 00004398 0000445C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000439C 00004460  7F C3 F3 78 */	mr r3, r30
/* 000043A0 00004464  4B FF BC 61 */	bl evtGetFloat
/* 000043A4 00004468  FF E0 08 90 */	fmr f31, f1
/* 000043A8 0000446C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000043AC 00004470  7F C3 F3 78 */	mr r3, r30
/* 000043B0 00004474  4B FF BC 51 */	bl evtGetValue
/* 000043B4 00004478  3C 80 00 00 */	lis r4, zero_hei_00008a50@ha
/* 000043B8 0000447C  EC 3E E0 28 */	fsubs f1, f30, f28
/* 000043BC 00004480  C0 04 00 00 */	lfs f0, zero_hei_00008a50@l(r4)
/* 000043C0 00004484  EC 5F E8 28 */	fsubs f2, f31, f29
/* 000043C4 00004488  7C 65 1B 78 */	mr r5, r3
/* 000043C8 0000448C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 000043CC 00004490  40 82 00 20 */	bne .L_000043EC
/* 000043D0 00004494  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 000043D4 00004498  40 82 00 18 */	bne .L_000043EC
/* 000043D8 0000449C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000043DC 000044A0  7F C3 F3 78 */	mr r3, r30
/* 000043E0 000044A4  4B FF BC 21 */	bl evtSetValue
/* 000043E4 000044A8  38 60 00 02 */	li r3, 0x2
/* 000043E8 000044AC  48 00 00 30 */	b .L_00004418
.L_000043EC:
/* 000043EC 000044B0  3C 60 00 00 */	lis r3, zero_hei_00008a50@ha
/* 000043F0 000044B4  C0 63 00 00 */	lfs f3, zero_hei_00008a50@l(r3)
/* 000043F4 000044B8  FC 80 18 90 */	fmr f4, f3
/* 000043F8 000044BC  4B FF BC 09 */	bl angleABf_1
/* 000043FC 000044C0  FC 00 08 1E */	fctiwz f0, f1
/* 00004400 000044C4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00004404 000044C8  7F C3 F3 78 */	mr r3, r30
/* 00004408 000044CC  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000440C 000044D0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00004410 000044D4  4B FF BB F1 */	bl evtSetValue
/* 00004414 000044D8  38 60 00 02 */	li r3, 0x2
.L_00004418:
/* 00004418 000044DC  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 0000441C 000044E0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00004420 000044E4  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00004424 000044E8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00004428 000044EC  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 0000442C 000044F0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00004430 000044F4  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 00004434 000044F8  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00004438 000044FC  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0000443C 00004500  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00004440 00004504  7C 08 03 A6 */	mtlr r0
/* 00004444 00004508  38 21 00 60 */	addi r1, r1, 0x60
/* 00004448 0000450C  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00002A20..0x00002B78 | size: 0x158
.rodata
.balign 8

# .rodata:0x0 | 0x2A20 | size: 0xF
.obj str_btl_un_kuriboo_hei_00008900, local
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_hei_00008900

# .rodata:0xF | 0x2A2F | size: 0x1
.obj gap_03_00002A2F_rodata, global
.hidden gap_03_00002A2F_rodata
	.byte 0x00
.endobj gap_03_00002A2F_rodata

# .rodata:0x10 | 0x2A30 | size: 0x16
.obj str_SFX_ENM_KURI_DAMAGED_hei_00008910, local
	.string "SFX_ENM_KURI_DAMAGED1"
.endobj str_SFX_ENM_KURI_DAMAGED_hei_00008910

# .rodata:0x26 | 0x2A46 | size: 0x2
.obj gap_03_00002A46_rodata, global
.hidden gap_03_00002A46_rodata
	.2byte 0x0000
.endobj gap_03_00002A46_rodata

# .rodata:0x28 | 0x2A48 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_hei_00008928, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_hei_00008928

# .rodata:0x3D | 0x2A5D | size: 0x3
.obj gap_03_00002A5D_rodata, global
.hidden gap_03_00002A5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002A5D_rodata

# .rodata:0x40 | 0x2A60 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_hei_00008940, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_hei_00008940

# .rodata:0x54 | 0x2A74 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_hei_00008954, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_hei_00008954

# .rodata:0x6D | 0x2A8D | size: 0x3
.obj gap_03_00002A8D_rodata, global
.hidden gap_03_00002A8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002A8D_rodata

# .rodata:0x70 | 0x2A90 | size: 0x8
.obj str_KUR_N_1_hei_00008970, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_hei_00008970

# .rodata:0x78 | 0x2A98 | size: 0x8
.obj str_KUR_Y_1_hei_00008978, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_hei_00008978

# .rodata:0x80 | 0x2AA0 | size: 0x8
.obj str_KUR_K_1_hei_00008980, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_hei_00008980

# .rodata:0x88 | 0x2AA8 | size: 0x8
.obj str_KUR_I_1_hei_00008988, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_hei_00008988

# .rodata:0x90 | 0x2AB0 | size: 0x8
.obj str_KUR_S_1_hei_00008990, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_hei_00008990

# .rodata:0x98 | 0x2AB8 | size: 0x8
.obj str_KUR_Q_1_hei_00008998, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_hei_00008998

# .rodata:0xA0 | 0x2AC0 | size: 0x8
.obj str_KUR_D_1_hei_000089a0, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_hei_000089a0

# .rodata:0xA8 | 0x2AC8 | size: 0x8
.obj str_KUR_A_1_hei_000089a8, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_hei_000089a8

# .rodata:0xB0 | 0x2AD0 | size: 0x8
.obj str_KUR_A_2_hei_000089b0, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_hei_000089b0

# .rodata:0xB8 | 0x2AD8 | size: 0x8
.obj str_KUR_R_1_hei_000089b8, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_hei_000089b8

# .rodata:0xC0 | 0x2AE0 | size: 0x8
.obj str_KUR_R_2_hei_000089c0, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_hei_000089c0

# .rodata:0xC8 | 0x2AE8 | size: 0x8
.obj str_KUR_W_1_hei_000089c8, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_hei_000089c8

# .rodata:0xD0 | 0x2AF0 | size: 0x8
.obj str_KUR_T_1_hei_000089d0, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_hei_000089d0

# .rodata:0xD8 | 0x2AF8 | size: 0x9
.obj str_c_kuribo_hei_000089d8, local
	.string "c_kuribo"
.endobj str_c_kuribo_hei_000089d8

# .rodata:0xE1 | 0x2B01 | size: 0x3
.obj gap_03_00002B01_rodata, global
.hidden gap_03_00002B01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002B01_rodata

# .rodata:0xE4 | 0x2B04 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_hei_000089e4, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_hei_000089e4

# .rodata:0xF7 | 0x2B17 | size: 0x1
.obj gap_03_00002B17_rodata, global
.hidden gap_03_00002B17_rodata
	.byte 0x00
.endobj gap_03_00002B17_rodata

# .rodata:0xF8 | 0x2B18 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_hei_000089f8, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_hei_000089f8

# .rodata:0x10B | 0x2B2B | size: 0x1
.obj gap_03_00002B2B_rodata, global
.hidden gap_03_00002B2B_rodata
	.byte 0x00
.endobj gap_03_00002B2B_rodata

# .rodata:0x10C | 0x2B2C | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_hei_00008a0c, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_hei_00008a0c

# .rodata:0x11F | 0x2B3F | size: 0x1
.obj gap_03_00002B3F_rodata, global
.hidden gap_03_00002B3F_rodata
	.byte 0x00
.endobj gap_03_00002B3F_rodata

# .rodata:0x120 | 0x2B40 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_hei_00008a20, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_hei_00008a20

# .rodata:0x136 | 0x2B56 | size: 0x2
.obj gap_03_00002B56_rodata, global
.hidden gap_03_00002B56_rodata
	.2byte 0x0000
.endobj gap_03_00002B56_rodata

# .rodata:0x138 | 0x2B58 | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_hei_00008a38, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_hei_00008a38
	.byte 0x00, 0x00, 0x00

# .rodata:0x150 | 0x2B70 | size: 0x4
.obj zero_hei_00008a50, local
	.float 0
.endobj zero_hei_00008a50

# .rodata:0x154 | 0x2B74 | size: 0x4
.obj gap_03_00002B74_rodata, global
.hidden gap_03_00002B74_rodata
	.4byte 0x00000000
.endobj gap_03_00002B74_rodata

# 0x00011CF0..0x00012888 | size: 0xB98
.data
.balign 8

# .data:0x0 | 0x11CF0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x11CF8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x11CFC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x11D00 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x11D04 | size: 0x4
.obj gap_04_00011D04_data, global
.hidden gap_04_00011D04_data
	.4byte 0x00000000
.endobj gap_04_00011D04_data

# .data:0x18 | 0x11D08 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x11D10 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x11D14 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x11D18 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x11D20 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x11D24 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x11D28 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x11D2C | size: 0x4
.obj gap_04_00011D2C_data, global
.hidden gap_04_00011D2C_data
	.4byte 0x00000000
.endobj gap_04_00011D2C_data

# .data:0x40 | 0x11D30 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x11D38 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x11D3C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x11D40 | size: 0xC4
.obj unit_kuriboo_11_data_11D40, global
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_hei_00008900
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
	.4byte str_SFX_ENM_KURI_DAMAGED_hei_00008910
	.4byte str_SFX_BTL_DAMAGE_FIRE1_hei_00008928
	.4byte str_SFX_BTL_DAMAGE_ICE1_hei_00008940
	.4byte str_SFX_BTL_DAMAGE_BIRIB_hei_00008954
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_kuriboo_11_data_11D40

# .data:0x114 | 0x11E04 | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_hei_00008970
	.4byte 0x00000002
	.4byte str_KUR_Y_1_hei_00008978
	.4byte 0x00000009
	.4byte str_KUR_Y_1_hei_00008978
	.4byte 0x00000005
	.4byte str_KUR_K_1_hei_00008980
	.4byte 0x00000004
	.4byte str_KUR_I_1_hei_00008988
	.4byte 0x00000003
	.4byte str_KUR_I_1_hei_00008988
	.4byte 0x0000001C
	.4byte str_KUR_S_1_hei_00008990
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_hei_00008998
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_hei_00008998
	.4byte 0x0000001F
	.4byte str_KUR_S_1_hei_00008990
	.4byte 0x00000027
	.4byte str_KUR_D_1_hei_000089a0
	.4byte 0x00000032
	.4byte str_KUR_A_1_hei_000089a8
	.4byte 0x00000033
	.4byte str_KUR_A_2_hei_000089b0
	.4byte 0x0000002A
	.4byte str_KUR_R_1_hei_000089b8
	.4byte 0x00000029
	.4byte str_KUR_R_2_hei_000089c0
	.4byte 0x00000028
	.4byte str_KUR_W_1_hei_000089c8
	.4byte 0x00000038
	.4byte str_KUR_I_1_hei_00008988
	.4byte 0x00000039
	.4byte str_KUR_I_1_hei_00008988
	.4byte 0x00000041
	.4byte str_KUR_T_1_hei_000089d0
	.4byte 0x00000045
	.4byte str_KUR_S_1_hei_00008990
.endobj pose_table

# .data:0x1B4 | 0x11EA4 | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0x11EB4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1C9 | 0x11EB9 | size: 0x3
.obj gap_04_00011EB9_data, global
.hidden gap_04_00011EB9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00011EB9_data

# .data:0x1CC | 0x11EBC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1D1 | 0x11EC1 | size: 0x3
.obj gap_04_00011EC1_data, global
.hidden gap_04_00011EC1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00011EC1_data

# .data:0x1D4 | 0x11EC4 | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x64646464
	.2byte 0x6496
.endobj regist

# .data:0x1EA | 0x11EDA | size: 0x2
.obj gap_04_00011EDA_data, global
.hidden gap_04_00011EDA_data
	.2byte 0x0000
.endobj gap_04_00011EDA_data

# .data:0x1EC | 0x11EDC | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_hei_00008900
	.4byte str_c_kuribo_hei_000089d8
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

# .data:0x238 | 0x11F28 | size: 0xC0
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

# .data:0x2F8 | 0x11FE8 | size: 0xA8
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
	.4byte str_SFX_ENM_KURI_MOVE1_hei_000089e4
	.4byte str_SFX_ENM_KURI_MOVE2_hei_000089f8
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_hei_000089e4
	.4byte str_SFX_ENM_KURI_MOVE2_hei_000089f8
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_hei_00008a0c
	.4byte str_SFX_ENM_KURI_LANDING_hei_00008a20
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3A0 | 0x12090 | size: 0x28
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

# .data:0x3C8 | 0x120B8 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x3D0 | 0x120C0 | size: 0x7B0
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
	.4byte str_SFX_ENM_KURI_ATTACK1_hei_00008a38
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
	.4byte str_SFX_ENM_KURI_MOVE1_hei_000089e4
	.4byte str_SFX_ENM_KURI_MOVE2_hei_000089f8
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

# .data:0xB80 | 0x12870 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
