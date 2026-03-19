.include "macros.inc"
.file "unit_kurikuri.o"

# 0x00005B2C..0x00005C44 | size: 0x118
.text
.balign 4

# .text:0x0 | 0x5B2C | size: 0x118
.fn krb_get_dir, local
/* 00005B2C 00005BF0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00005B30 00005BF4  7C 08 02 A6 */	mflr r0
/* 00005B34 00005BF8  90 01 00 64 */	stw r0, 0x64(r1)
/* 00005B38 00005BFC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00005B3C 00005C00  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00005B40 00005C04  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00005B44 00005C08  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00005B48 00005C0C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00005B4C 00005C10  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00005B50 00005C14  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00005B54 00005C18  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00005B58 00005C1C  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00005B5C 00005C20  7C 7E 1B 78 */	mr r30, r3
/* 00005B60 00005C24  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005B64 00005C28  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005B68 00005C2C  4B FF F4 AD */	bl evtGetFloat
/* 00005B6C 00005C30  FF 80 08 90 */	fmr f28, f1
/* 00005B70 00005C34  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005B74 00005C38  7F C3 F3 78 */	mr r3, r30
/* 00005B78 00005C3C  4B FF F4 9D */	bl evtGetFloat
/* 00005B7C 00005C40  FF A0 08 90 */	fmr f29, f1
/* 00005B80 00005C44  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00005B84 00005C48  7F C3 F3 78 */	mr r3, r30
/* 00005B88 00005C4C  4B FF F4 8D */	bl evtGetFloat
/* 00005B8C 00005C50  FF C0 08 90 */	fmr f30, f1
/* 00005B90 00005C54  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00005B94 00005C58  7F C3 F3 78 */	mr r3, r30
/* 00005B98 00005C5C  4B FF F4 7D */	bl evtGetFloat
/* 00005B9C 00005C60  FF E0 08 90 */	fmr f31, f1
/* 00005BA0 00005C64  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005BA4 00005C68  7F C3 F3 78 */	mr r3, r30
/* 00005BA8 00005C6C  4B FF F4 6D */	bl evtGetValue
/* 00005BAC 00005C70  3C 80 00 00 */	lis r4, zero_tou2_0000e91c@ha
/* 00005BB0 00005C74  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00005BB4 00005C78  C0 04 00 00 */	lfs f0, zero_tou2_0000e91c@l(r4)
/* 00005BB8 00005C7C  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00005BBC 00005C80  7C 65 1B 78 */	mr r5, r3
/* 00005BC0 00005C84  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00005BC4 00005C88  40 82 00 20 */	bne .L_00005BE4
/* 00005BC8 00005C8C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00005BCC 00005C90  40 82 00 18 */	bne .L_00005BE4
/* 00005BD0 00005C94  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005BD4 00005C98  7F C3 F3 78 */	mr r3, r30
/* 00005BD8 00005C9C  4B FF F4 3D */	bl evtSetValue
/* 00005BDC 00005CA0  38 60 00 02 */	li r3, 0x2
/* 00005BE0 00005CA4  48 00 00 30 */	b .L_00005C10
.L_00005BE4:
/* 00005BE4 00005CA8  3C 60 00 00 */	lis r3, zero_tou2_0000e91c@ha
/* 00005BE8 00005CAC  C0 63 00 00 */	lfs f3, zero_tou2_0000e91c@l(r3)
/* 00005BEC 00005CB0  FC 80 18 90 */	fmr f4, f3
/* 00005BF0 00005CB4  4B FF F4 25 */	bl angleABf_1
/* 00005BF4 00005CB8  FC 00 08 1E */	fctiwz f0, f1
/* 00005BF8 00005CBC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005BFC 00005CC0  7F C3 F3 78 */	mr r3, r30
/* 00005C00 00005CC4  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00005C04 00005CC8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00005C08 00005CCC  4B FF F4 0D */	bl evtSetValue
/* 00005C0C 00005CD0  38 60 00 02 */	li r3, 0x2
.L_00005C10:
/* 00005C10 00005CD4  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00005C14 00005CD8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00005C18 00005CDC  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00005C1C 00005CE0  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00005C20 00005CE4  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00005C24 00005CE8  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00005C28 00005CEC  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 00005C2C 00005CF0  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00005C30 00005CF4  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00005C34 00005CF8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00005C38 00005CFC  7C 08 03 A6 */	mtlr r0
/* 00005C3C 00005D00  38 21 00 60 */	addi r1, r1, 0x60
/* 00005C40 00005D04  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00005050..0x000051E0 | size: 0x190
.rodata
.balign 8

# .rodata:0x0 | 0x5050 | size: 0xF
.obj str_btl_un_kuriboo_tou2_0000e790, local
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_tou2_0000e790

# .rodata:0xF | 0x505F | size: 0x1
.obj gap_03_0000505F_rodata, global
.hidden gap_03_0000505F_rodata
	.byte 0x00
.endobj gap_03_0000505F_rodata

# .rodata:0x10 | 0x5060 | size: 0x16
.obj str_SFX_ENM_KURI_DAMAGED_tou2_0000e7a0, local
	.string "SFX_ENM_KURI_DAMAGED1"
.endobj str_SFX_ENM_KURI_DAMAGED_tou2_0000e7a0

# .rodata:0x26 | 0x5076 | size: 0x2
.obj gap_03_00005076_rodata, global
.hidden gap_03_00005076_rodata
	.2byte 0x0000
.endobj gap_03_00005076_rodata

# .rodata:0x28 | 0x5078 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000e7b8, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000e7b8

# .rodata:0x3D | 0x508D | size: 0x3
.obj gap_03_0000508D_rodata, global
.hidden gap_03_0000508D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000508D_rodata

# .rodata:0x40 | 0x5090 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_0000e7d0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_0000e7d0

# .rodata:0x54 | 0x50A4 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000e7e4, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000e7e4

# .rodata:0x6D | 0x50BD | size: 0x3
.obj gap_03_000050BD_rodata, global
.hidden gap_03_000050BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000050BD_rodata

# .rodata:0x70 | 0x50C0 | size: 0x8
.obj str_KUR_N_1_tou2_0000e800, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_tou2_0000e800

# .rodata:0x78 | 0x50C8 | size: 0x8
.obj str_KUR_Y_1_tou2_0000e808, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_tou2_0000e808

# .rodata:0x80 | 0x50D0 | size: 0x8
.obj str_KUR_K_1_tou2_0000e810, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_tou2_0000e810

# .rodata:0x88 | 0x50D8 | size: 0x8
.obj str_KUR_I_1_tou2_0000e818, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_tou2_0000e818

# .rodata:0x90 | 0x50E0 | size: 0x8
.obj str_KUR_S_1_tou2_0000e820, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_tou2_0000e820

# .rodata:0x98 | 0x50E8 | size: 0x8
.obj str_KUR_Q_1_tou2_0000e828, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_tou2_0000e828

# .rodata:0xA0 | 0x50F0 | size: 0x8
.obj str_KUR_D_1_tou2_0000e830, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_tou2_0000e830

# .rodata:0xA8 | 0x50F8 | size: 0x8
.obj str_KUR_A_1_tou2_0000e838, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_tou2_0000e838

# .rodata:0xB0 | 0x5100 | size: 0x8
.obj str_KUR_A_2_tou2_0000e840, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_tou2_0000e840

# .rodata:0xB8 | 0x5108 | size: 0x8
.obj str_KUR_R_1_tou2_0000e848, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_tou2_0000e848

# .rodata:0xC0 | 0x5110 | size: 0x8
.obj str_KUR_R_2_tou2_0000e850, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_tou2_0000e850

# .rodata:0xC8 | 0x5118 | size: 0x8
.obj str_KUR_W_1_tou2_0000e858, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_tou2_0000e858

# .rodata:0xD0 | 0x5120 | size: 0x8
.obj str_KUR_T_1_tou2_0000e860, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_tou2_0000e860

# .rodata:0xD8 | 0x5128 | size: 0x9
.obj str_c_kuribo_tou2_0000e868, local
	.string "c_kuribo"
.endobj str_c_kuribo_tou2_0000e868

# .rodata:0xE1 | 0x5131 | size: 0x3
.obj gap_03_00005131_rodata, global
.hidden gap_03_00005131_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005131_rodata

# .rodata:0xE4 | 0x5134 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_tou2_0000e874, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_tou2_0000e874

# .rodata:0xF7 | 0x5147 | size: 0x1
.obj gap_03_00005147_rodata, global
.hidden gap_03_00005147_rodata
	.byte 0x00
.endobj gap_03_00005147_rodata

# .rodata:0xF8 | 0x5148 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_tou2_0000e888, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_tou2_0000e888

# .rodata:0x10B | 0x515B | size: 0x1
.obj gap_03_0000515B_rodata, global
.hidden gap_03_0000515B_rodata
	.byte 0x00
.endobj gap_03_0000515B_rodata

# .rodata:0x10C | 0x515C | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_tou2_0000e89c, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_tou2_0000e89c

# .rodata:0x11F | 0x516F | size: 0x1
.obj gap_03_0000516F_rodata, global
.hidden gap_03_0000516F_rodata
	.byte 0x00
.endobj gap_03_0000516F_rodata

# .rodata:0x120 | 0x5170 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_tou2_0000e8b0, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_tou2_0000e8b0

# .rodata:0x136 | 0x5186 | size: 0x2
.obj gap_03_00005186_rodata, global
.hidden gap_03_00005186_rodata
	.2byte 0x0000
.endobj gap_03_00005186_rodata

# .rodata:0x138 | 0x5188 | size: 0x10
.obj str_stg3_tou_83_kur_tou2_0000e8c8, local
	.string "stg3_tou_83_kur"
.endobj str_stg3_tou_83_kur_tou2_0000e8c8

# .rodata:0x148 | 0x5198 | size: 0x10
.obj str_stg3_tou_83_nok_tou2_0000e8d8, local
	.string "stg3_tou_83_nok"
.endobj str_stg3_tou_83_nok_tou2_0000e8d8

# .rodata:0x158 | 0x51A8 | size: 0x10
.obj str_stg3_tou_83_win_tou2_0000e8e8, local
	.string "stg3_tou_83_win"
.endobj str_stg3_tou_83_win_tou2_0000e8e8

# .rodata:0x168 | 0x51B8 | size: 0xC
.obj str_stg3_tou_84_tou2_0000e8f8, local
	.string "stg3_tou_84"
.endobj str_stg3_tou_84_tou2_0000e8f8

# .rodata:0x174 | 0x51C4 | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_tou2_0000e904, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_tou2_0000e904
	.byte 0x00, 0x00, 0x00

# .rodata:0x18C | 0x51DC | size: 0x4
.obj zero_tou2_0000e91c, local
	.float 0
.endobj zero_tou2_0000e91c

# 0x0002D910..0x0002E698 | size: 0xD88
.data
.balign 8

# .data:0x0 | 0x2D910 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2D918 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2D91C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2D920 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2D924 | size: 0x4
.obj gap_04_0002D924_data, global
.hidden gap_04_0002D924_data
	.4byte 0x00000000
.endobj gap_04_0002D924_data

# .data:0x18 | 0x2D928 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2D930 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2D934 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2D938 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2D940 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2D944 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2D948 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2D94C | size: 0x4
.obj gap_04_0002D94C_data, global
.hidden gap_04_0002D94C_data
	.4byte 0x00000000
.endobj gap_04_0002D94C_data

# .data:0x40 | 0x2D950 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2D958 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2D95C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2D960 | size: 0xC4
.obj unit_kurikuri_26_data_2D960, global
	.4byte 0x00000024
	.4byte str_btl_un_kuriboo_tou2_0000e790
	.4byte 0x00020000
	.4byte 0x01010700
	.4byte 0x00460032
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
	.4byte 0x41400000
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
	.4byte str_SFX_ENM_KURI_DAMAGED_tou2_0000e7a0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000e7b8
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000e7d0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000e7e4
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_kurikuri_26_data_2D960

# .data:0x114 | 0x2DA24 | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_tou2_0000e800
	.4byte 0x00000002
	.4byte str_KUR_Y_1_tou2_0000e808
	.4byte 0x00000009
	.4byte str_KUR_Y_1_tou2_0000e808
	.4byte 0x00000005
	.4byte str_KUR_K_1_tou2_0000e810
	.4byte 0x00000004
	.4byte str_KUR_I_1_tou2_0000e818
	.4byte 0x00000003
	.4byte str_KUR_I_1_tou2_0000e818
	.4byte 0x0000001C
	.4byte str_KUR_S_1_tou2_0000e820
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_tou2_0000e828
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_tou2_0000e828
	.4byte 0x0000001F
	.4byte str_KUR_S_1_tou2_0000e820
	.4byte 0x00000027
	.4byte str_KUR_D_1_tou2_0000e830
	.4byte 0x00000032
	.4byte str_KUR_A_1_tou2_0000e838
	.4byte 0x00000033
	.4byte str_KUR_A_2_tou2_0000e840
	.4byte 0x0000002A
	.4byte str_KUR_R_1_tou2_0000e848
	.4byte 0x00000029
	.4byte str_KUR_R_2_tou2_0000e850
	.4byte 0x00000028
	.4byte str_KUR_W_1_tou2_0000e858
	.4byte 0x00000038
	.4byte str_KUR_I_1_tou2_0000e818
	.4byte 0x00000039
	.4byte str_KUR_I_1_tou2_0000e818
	.4byte 0x00000041
	.4byte str_KUR_T_1_tou2_0000e860
	.4byte 0x00000045
	.4byte str_KUR_S_1_tou2_0000e820
.endobj pose_table

# .data:0x1B4 | 0x2DAC4 | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0x2DAD4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1C9 | 0x2DAD9 | size: 0x3
.obj gap_04_0002DAD9_data, global
.hidden gap_04_0002DAD9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002DAD9_data

# .data:0x1CC | 0x2DADC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1D1 | 0x2DAE1 | size: 0x3
.obj gap_04_0002DAE1_data, global
.hidden gap_04_0002DAE1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002DAE1_data

# .data:0x1D4 | 0x2DAE4 | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x64646464
	.2byte 0x6496
.endobj regist

# .data:0x1EA | 0x2DAFA | size: 0x2
.obj gap_04_0002DAFA_data, global
.hidden gap_04_0002DAFA_data
	.2byte 0x0000
.endobj gap_04_0002DAFA_data

# .data:0x1EC | 0x2DAFC | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_tou2_0000e790
	.4byte str_c_kuribo_tou2_0000e868
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

# .data:0x238 | 0x2DB48 | size: 0xC0
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

# .data:0x2F8 | 0x2DC08 | size: 0xB8
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
	.4byte attack_event
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_tou2_0000e874
	.4byte str_SFX_ENM_KURI_MOVE2_tou2_0000e888
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_tou2_0000e874
	.4byte str_SFX_ENM_KURI_MOVE2_tou2_0000e888
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_tou2_0000e89c
	.4byte str_SFX_ENM_KURI_LANDING_tou2_0000e8b0
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3B0 | 0x2DCC0 | size: 0x28
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

# .data:0x3D8 | 0x2DCE8 | size: 0x1E8
.obj phase_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840654D
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFFFFFFFC
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xF840654D
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFFFFFF98
	.4byte 0x0000004A
	.4byte 0x0000014E
	.4byte 0xFFFFFF9A
	.4byte 0x00000034
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000004
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x000000E0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_83_kur_tou2_0000e8c8
	.4byte 0x00000000
	.4byte 0xFFFFFFFC
	.4byte 0x00010024
	.4byte 0x000000E1
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_83_nok_tou2_0000e8d8
	.4byte 0x00000000
	.4byte 0xFFFFFFFC
	.4byte 0x00010024
	.4byte 0x000000E3
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_83_win_tou2_0000e8e8
	.4byte 0x00000000
	.4byte 0xFFFFFFFC
	.4byte 0x00000031
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x0000005B
	.4byte 0x0000004A
	.4byte 0x0000014E
	.4byte 0x0000005B
	.4byte 0x00000034
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000004
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_84_tou2_0000e8f8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFC
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x5C0 | 0x2DED0 | size: 0x7B0
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
	.4byte str_SFX_ENM_KURI_ATTACK1_tou2_0000e904
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
	.4byte str_SFX_ENM_KURI_MOVE1_tou2_0000e874
	.4byte str_SFX_ENM_KURI_MOVE2_tou2_0000e888
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

# .data:0xD70 | 0x2E680 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
