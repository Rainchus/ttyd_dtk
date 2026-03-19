.include "macros.inc"
.file "unit_patakuri.o"

# 0x00005A14..0x00005B2C | size: 0x118
.text
.balign 4

# .text:0x0 | 0x5A14 | size: 0x118
.fn krb_get_dir, local
/* 00005A14 00005AD8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00005A18 00005ADC  7C 08 02 A6 */	mflr r0
/* 00005A1C 00005AE0  90 01 00 64 */	stw r0, 0x64(r1)
/* 00005A20 00005AE4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00005A24 00005AE8  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00005A28 00005AEC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00005A2C 00005AF0  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00005A30 00005AF4  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00005A34 00005AF8  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00005A38 00005AFC  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00005A3C 00005B00  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00005A40 00005B04  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00005A44 00005B08  7C 7E 1B 78 */	mr r30, r3
/* 00005A48 00005B0C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005A4C 00005B10  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005A50 00005B14  4B FF A6 F9 */	bl evtGetFloat
/* 00005A54 00005B18  FF 80 08 90 */	fmr f28, f1
/* 00005A58 00005B1C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005A5C 00005B20  7F C3 F3 78 */	mr r3, r30
/* 00005A60 00005B24  4B FF A6 E9 */	bl evtGetFloat
/* 00005A64 00005B28  FF A0 08 90 */	fmr f29, f1
/* 00005A68 00005B2C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00005A6C 00005B30  7F C3 F3 78 */	mr r3, r30
/* 00005A70 00005B34  4B FF A6 D9 */	bl evtGetFloat
/* 00005A74 00005B38  FF C0 08 90 */	fmr f30, f1
/* 00005A78 00005B3C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00005A7C 00005B40  7F C3 F3 78 */	mr r3, r30
/* 00005A80 00005B44  4B FF A6 C9 */	bl evtGetFloat
/* 00005A84 00005B48  FF E0 08 90 */	fmr f31, f1
/* 00005A88 00005B4C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005A8C 00005B50  7F C3 F3 78 */	mr r3, r30
/* 00005A90 00005B54  4B FF A6 B9 */	bl evtGetValue
/* 00005A94 00005B58  3C 80 00 00 */	lis r4, zero_tik_0000ca2c@ha
/* 00005A98 00005B5C  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00005A9C 00005B60  C0 04 00 00 */	lfs f0, zero_tik_0000ca2c@l(r4)
/* 00005AA0 00005B64  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00005AA4 00005B68  7C 65 1B 78 */	mr r5, r3
/* 00005AA8 00005B6C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00005AAC 00005B70  40 82 00 20 */	bne .L_00005ACC
/* 00005AB0 00005B74  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00005AB4 00005B78  40 82 00 18 */	bne .L_00005ACC
/* 00005AB8 00005B7C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005ABC 00005B80  7F C3 F3 78 */	mr r3, r30
/* 00005AC0 00005B84  4B FF A6 89 */	bl evtSetValue
/* 00005AC4 00005B88  38 60 00 02 */	li r3, 0x2
/* 00005AC8 00005B8C  48 00 00 30 */	b .L_00005AF8
.L_00005ACC:
/* 00005ACC 00005B90  3C 60 00 00 */	lis r3, zero_tik_0000ca2c@ha
/* 00005AD0 00005B94  C0 63 00 00 */	lfs f3, zero_tik_0000ca2c@l(r3)
/* 00005AD4 00005B98  FC 80 18 90 */	fmr f4, f3
/* 00005AD8 00005B9C  4B FF A6 71 */	bl angleABf_1
/* 00005ADC 00005BA0  FC 00 08 1E */	fctiwz f0, f1
/* 00005AE0 00005BA4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005AE4 00005BA8  7F C3 F3 78 */	mr r3, r30
/* 00005AE8 00005BAC  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00005AEC 00005BB0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00005AF0 00005BB4  4B FF A6 59 */	bl evtSetValue
/* 00005AF4 00005BB8  38 60 00 02 */	li r3, 0x2
.L_00005AF8:
/* 00005AF8 00005BBC  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00005AFC 00005BC0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00005B00 00005BC4  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00005B04 00005BC8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00005B08 00005BCC  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00005B0C 00005BD0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00005B10 00005BD4  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 00005B14 00005BD8  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00005B18 00005BDC  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00005B1C 00005BE0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00005B20 00005BE4  7C 08 03 A6 */	mtlr r0
/* 00005B24 00005BE8  38 21 00 60 */	addi r1, r1, 0x60
/* 00005B28 00005BEC  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00004990..0x00004BC8 | size: 0x238
.rodata
.balign 8

# .rodata:0x0 | 0x4990 | size: 0x10
.obj str_btl_un_patakuri_tik_0000c7f8, local
	.string "btl_un_patakuri"
.endobj str_btl_un_patakuri_tik_0000c7f8

# .rodata:0x10 | 0x49A0 | size: 0x1A
.obj str_SFX_ENM_PATAKURI_DAM_tik_0000c808, local
	.string "SFX_ENM_PATAKURI_DAMAGED1"
.endobj str_SFX_ENM_PATAKURI_DAM_tik_0000c808

# .rodata:0x2A | 0x49BA | size: 0x2
.obj gap_03_000049BA_rodata, global
.hidden gap_03_000049BA_rodata
	.2byte 0x0000
.endobj gap_03_000049BA_rodata

# .rodata:0x2C | 0x49BC | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tik_0000c824, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tik_0000c824

# .rodata:0x41 | 0x49D1 | size: 0x3
.obj gap_03_000049D1_rodata, global
.hidden gap_03_000049D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049D1_rodata

# .rodata:0x44 | 0x49D4 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tik_0000c83c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tik_0000c83c

# .rodata:0x58 | 0x49E8 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tik_0000c850, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tik_0000c850

# .rodata:0x71 | 0x4A01 | size: 0x3
.obj gap_03_00004A01_rodata, global
.hidden gap_03_00004A01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A01_rodata

# .rodata:0x74 | 0x4A04 | size: 0x9
.obj str_c_kuribo_tik_0000c86c, local
	.string "c_kuribo"
.endobj str_c_kuribo_tik_0000c86c

# .rodata:0x7D | 0x4A0D | size: 0x3
.obj gap_03_00004A0D_rodata, global
.hidden gap_03_00004A0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A0D_rodata

# .rodata:0x80 | 0x4A10 | size: 0x8
.obj str_PTK_N_1_tik_0000c878, local
	.string "PTK_N_1"
.endobj str_PTK_N_1_tik_0000c878

# .rodata:0x88 | 0x4A18 | size: 0x8
.obj str_PTK_Y_1_tik_0000c880, local
	.string "PTK_Y_1"
.endobj str_PTK_Y_1_tik_0000c880

# .rodata:0x90 | 0x4A20 | size: 0x8
.obj str_PTK_K_1_tik_0000c888, local
	.string "PTK_K_1"
.endobj str_PTK_K_1_tik_0000c888

# .rodata:0x98 | 0x4A28 | size: 0x8
.obj str_PTK_I_1_tik_0000c890, local
	.string "PTK_I_1"
.endobj str_PTK_I_1_tik_0000c890

# .rodata:0xA0 | 0x4A30 | size: 0x8
.obj str_PTK_S_1_tik_0000c898, local
	.string "PTK_S_1"
.endobj str_PTK_S_1_tik_0000c898

# .rodata:0xA8 | 0x4A38 | size: 0x8
.obj str_PTK_Q_1_tik_0000c8a0, local
	.string "PTK_Q_1"
.endobj str_PTK_Q_1_tik_0000c8a0

# .rodata:0xB0 | 0x4A40 | size: 0x8
.obj str_PTK_D_1_tik_0000c8a8, local
	.string "PTK_D_1"
.endobj str_PTK_D_1_tik_0000c8a8

# .rodata:0xB8 | 0x4A48 | size: 0x8
.obj str_PTK_A_1_tik_0000c8b0, local
	.string "PTK_A_1"
.endobj str_PTK_A_1_tik_0000c8b0

# .rodata:0xC0 | 0x4A50 | size: 0x8
.obj str_PTK_R_1_tik_0000c8b8, local
	.string "PTK_R_1"
.endobj str_PTK_R_1_tik_0000c8b8

# .rodata:0xC8 | 0x4A58 | size: 0x8
.obj str_PTK_R_2_tik_0000c8c0, local
	.string "PTK_R_2"
.endobj str_PTK_R_2_tik_0000c8c0

# .rodata:0xD0 | 0x4A60 | size: 0x8
.obj str_PTK_W_1_tik_0000c8c8, local
	.string "PTK_W_1"
.endobj str_PTK_W_1_tik_0000c8c8

# .rodata:0xD8 | 0x4A68 | size: 0x8
.obj str_PTK_T_1_tik_0000c8d0, local
	.string "PTK_T_1"
.endobj str_PTK_T_1_tik_0000c8d0

# .rodata:0xE0 | 0x4A70 | size: 0x17
.obj str_SFX_ENM_PATAKURI_WAI_tik_0000c8d8, local
	.string "SFX_ENM_PATAKURI_WAIT1"
.endobj str_SFX_ENM_PATAKURI_WAI_tik_0000c8d8

# .rodata:0xF7 | 0x4A87 | size: 0x1
.obj gap_03_00004A87_rodata, global
.hidden gap_03_00004A87_rodata
	.byte 0x00
.endobj gap_03_00004A87_rodata

# .rodata:0xF8 | 0x4A88 | size: 0x17
.obj str_SFX_ENM_PATAKURI_MOV_tik_0000c8f0, local
	.string "SFX_ENM_PATAKURI_MOVE1"
.endobj str_SFX_ENM_PATAKURI_MOV_tik_0000c8f0

# .rodata:0x10F | 0x4A9F | size: 0x1
.obj gap_03_00004A9F_rodata, global
.hidden gap_03_00004A9F_rodata
	.byte 0x00
.endobj gap_03_00004A9F_rodata

# .rodata:0x110 | 0x4AA0 | size: 0xE
.obj str_SFX_ENM_FALL1_tik_0000c908, local
	.string "SFX_ENM_FALL1"
.endobj str_SFX_ENM_FALL1_tik_0000c908

# .rodata:0x11E | 0x4AAE | size: 0x2
.obj gap_03_00004AAE_rodata, global
.hidden gap_03_00004AAE_rodata
	.2byte 0x0000
.endobj gap_03_00004AAE_rodata

# .rodata:0x120 | 0x4AB0 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_tik_0000c918, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_tik_0000c918

# .rodata:0x133 | 0x4AC3 | size: 0x1
.obj gap_03_00004AC3_rodata, global
.hidden gap_03_00004AC3_rodata
	.byte 0x00
.endobj gap_03_00004AC3_rodata

# .rodata:0x134 | 0x4AC4 | size: 0x17
.obj str_SFX_ENM_PATAKURI_MOV_tik_0000c92c, local
	.string "SFX_ENM_PATAKURI_MOVE2"
.endobj str_SFX_ENM_PATAKURI_MOV_tik_0000c92c

# .rodata:0x14B | 0x4ADB | size: 0x1
.obj gap_03_00004ADB_rodata, global
.hidden gap_03_00004ADB_rodata
	.byte 0x00
.endobj gap_03_00004ADB_rodata

# .rodata:0x14C | 0x4ADC | size: 0x17
.obj str_SFX_ENM_PATAKURI_MOV_tik_0000c944, local
	.string "SFX_ENM_PATAKURI_MOVE3"
.endobj str_SFX_ENM_PATAKURI_MOV_tik_0000c944

# .rodata:0x163 | 0x4AF3 | size: 0x1
.obj gap_03_00004AF3_rodata, global
.hidden gap_03_00004AF3_rodata
	.byte 0x00
.endobj gap_03_00004AF3_rodata

# .rodata:0x164 | 0x4AF4 | size: 0x8
.obj str_KUR_N_1_tik_0000c95c, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_tik_0000c95c

# .rodata:0x16C | 0x4AFC | size: 0x8
.obj str_KUR_Y_1_tik_0000c964, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_tik_0000c964

# .rodata:0x174 | 0x4B04 | size: 0x8
.obj str_KUR_K_1_tik_0000c96c, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_tik_0000c96c

# .rodata:0x17C | 0x4B0C | size: 0x8
.obj str_KUR_I_1_tik_0000c974, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_tik_0000c974

# .rodata:0x184 | 0x4B14 | size: 0x8
.obj str_KUR_S_1_tik_0000c97c, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_tik_0000c97c

# .rodata:0x18C | 0x4B1C | size: 0x8
.obj str_KUR_Q_1_tik_0000c984, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_tik_0000c984

# .rodata:0x194 | 0x4B24 | size: 0x8
.obj str_KUR_D_1_tik_0000c98c, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_tik_0000c98c

# .rodata:0x19C | 0x4B2C | size: 0x8
.obj str_KUR_A_1_tik_0000c994, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_tik_0000c994

# .rodata:0x1A4 | 0x4B34 | size: 0x8
.obj str_KUR_A_2_tik_0000c99c, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_tik_0000c99c

# .rodata:0x1AC | 0x4B3C | size: 0x8
.obj str_KUR_R_1_tik_0000c9a4, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_tik_0000c9a4

# .rodata:0x1B4 | 0x4B44 | size: 0x8
.obj str_KUR_R_2_tik_0000c9ac, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_tik_0000c9ac

# .rodata:0x1BC | 0x4B4C | size: 0x8
.obj str_KUR_W_1_tik_0000c9b4, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_tik_0000c9b4

# .rodata:0x1C4 | 0x4B54 | size: 0x8
.obj str_KUR_T_1_tik_0000c9bc, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_tik_0000c9bc

# .rodata:0x1CC | 0x4B5C | size: 0xF
.obj str_btl_un_kuriboo_tik_0000c9c4, local
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_tik_0000c9c4

# .rodata:0x1DB | 0x4B6B | size: 0x1
.obj gap_03_00004B6B_rodata, global
.hidden gap_03_00004B6B_rodata
	.byte 0x00
.endobj gap_03_00004B6B_rodata

# .rodata:0x1DC | 0x4B6C | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_tik_0000c9d4, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_tik_0000c9d4

# .rodata:0x1EF | 0x4B7F | size: 0x1
.obj gap_03_00004B7F_rodata, global
.hidden gap_03_00004B7F_rodata
	.byte 0x00
.endobj gap_03_00004B7F_rodata

# .rodata:0x1F0 | 0x4B80 | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_tik_0000c9e8, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_tik_0000c9e8

# .rodata:0x203 | 0x4B93 | size: 0x1
.obj gap_03_00004B93_rodata, global
.hidden gap_03_00004B93_rodata
	.byte 0x00
.endobj gap_03_00004B93_rodata

# .rodata:0x204 | 0x4B94 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_tik_0000c9fc, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_tik_0000c9fc

# .rodata:0x21A | 0x4BAA | size: 0x2
.obj gap_03_00004BAA_rodata, global
.hidden gap_03_00004BAA_rodata
	.2byte 0x0000
.endobj gap_03_00004BAA_rodata

# .rodata:0x21C | 0x4BAC | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_tik_0000ca14, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_tik_0000ca14
	.byte 0x00, 0x00, 0x00

# .rodata:0x234 | 0x4BC4 | size: 0x4
.obj zero_tik_0000ca2c, local
	.float 0
.endobj zero_tik_0000ca2c

# 0x00021AF8..0x000231B0 | size: 0x16B8
.data
.balign 8

# .data:0x0 | 0x21AF8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x21B00 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x21B04 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x21B08 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x21B0C | size: 0x4
.obj gap_04_00021B0C_data, global
.hidden gap_04_00021B0C_data
	.4byte 0x00000000
.endobj gap_04_00021B0C_data

# .data:0x18 | 0x21B10 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x21B18 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x21B1C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x21B20 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x21B28 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x21B2C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x21B30 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x21B34 | size: 0x4
.obj gap_04_00021B34_data, global
.hidden gap_04_00021B34_data
	.4byte 0x00000000
.endobj gap_04_00021B34_data

# .data:0x40 | 0x21B38 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x21B40 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x21B44 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x21B48 | size: 0xC4
.obj unit_patakuri_24_data_21B48, global
	.4byte 0x00000002
	.4byte str_btl_un_patakuri_tik_0000c7f8
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
	.4byte str_SFX_ENM_PATAKURI_DAM_tik_0000c808
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tik_0000c824
	.4byte str_SFX_BTL_DAMAGE_ICE1_tik_0000c83c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tik_0000c850
	.4byte 0x00040004
	.4byte regist_patakuri
	.4byte 0x01000000
	.4byte parts_patakuri
	.4byte init_event_patakuri
	.4byte data_table_patakuri
.endobj unit_patakuri_24_data_21B48

# .data:0x114 | 0x21C0C | size: 0x5
.obj defence_patakuri, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_patakuri

# .data:0x119 | 0x21C11 | size: 0x3
.obj gap_04_00021C11_data, global
.hidden gap_04_00021C11_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00021C11_data

# .data:0x11C | 0x21C14 | size: 0x5
.obj defence_patakuri_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_patakuri_attr

# .data:0x121 | 0x21C19 | size: 0x3
.obj gap_04_00021C19_data, global
.hidden gap_04_00021C19_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00021C19_data

# .data:0x124 | 0x21C1C | size: 0x16
.obj regist_patakuri, local
	.4byte 0x646E7864
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x6E646464
	.2byte 0x6496
.endobj regist_patakuri

# .data:0x13A | 0x21C32 | size: 0x2
.obj gap_04_00021C32_data, global
.hidden gap_04_00021C32_data
	.2byte 0x0000
.endobj gap_04_00021C32_data

# .data:0x13C | 0x21C34 | size: 0xC0
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

# .data:0x1FC | 0x21CF4 | size: 0x4C
.obj parts_patakuri, local
	.4byte 0x00000001
	.4byte str_btl_un_patakuri_tik_0000c7f8
	.4byte str_c_kuribo_tik_0000c86c
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

# .data:0x248 | 0x21D40 | size: 0x98
.obj pose_table_patakuri, local
	.4byte 0x00000001
	.4byte str_PTK_N_1_tik_0000c878
	.4byte 0x00000002
	.4byte str_PTK_Y_1_tik_0000c880
	.4byte 0x00000009
	.4byte str_PTK_Y_1_tik_0000c880
	.4byte 0x00000005
	.4byte str_PTK_K_1_tik_0000c888
	.4byte 0x00000004
	.4byte str_PTK_I_1_tik_0000c890
	.4byte 0x00000003
	.4byte str_PTK_I_1_tik_0000c890
	.4byte 0x0000001C
	.4byte str_PTK_S_1_tik_0000c898
	.4byte 0x0000001D
	.4byte str_PTK_Q_1_tik_0000c8a0
	.4byte 0x0000001E
	.4byte str_PTK_Q_1_tik_0000c8a0
	.4byte 0x0000001F
	.4byte str_PTK_S_1_tik_0000c898
	.4byte 0x00000027
	.4byte str_PTK_D_1_tik_0000c8a8
	.4byte 0x00000032
	.4byte str_PTK_A_1_tik_0000c8b0
	.4byte 0x0000002A
	.4byte str_PTK_R_1_tik_0000c8b8
	.4byte 0x00000029
	.4byte str_PTK_R_2_tik_0000c8c0
	.4byte 0x00000028
	.4byte str_PTK_W_1_tik_0000c8c8
	.4byte 0x00000038
	.4byte str_PTK_I_1_tik_0000c890
	.4byte 0x00000039
	.4byte str_PTK_I_1_tik_0000c890
	.4byte 0x00000041
	.4byte str_PTK_T_1_tik_0000c8d0
	.4byte 0x00000045
	.4byte str_PTK_S_1_tik_0000c898
.endobj pose_table_patakuri

# .data:0x2E0 | 0x21DD8 | size: 0x18
.obj data_table_patakuri, local
	.4byte 0x0000000E
	.4byte dmg_fall_event
	.4byte 0x00000030
	.4byte patakuri_dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_patakuri

# .data:0x2F8 | 0x21DF0 | size: 0x8C
.obj pose_sound_timing_table, local
	.4byte str_PTK_S_1_tik_0000c898
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_tik_0000c8d8
	.4byte 0x00000001
	.4byte str_PTK_W_1_tik_0000c8c8
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_MOV_tik_0000c8f0
	.4byte 0x00000001
	.4byte str_PTK_R_1_tik_0000c8b8
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_MOV_tik_0000c8f0
	.4byte 0x00000001
	.4byte str_PTK_K_1_tik_0000c888
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_tik_0000c8d8
	.4byte 0x00000001
	.4byte str_PTK_N_1_tik_0000c878
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_tik_0000c8d8
	.4byte 0x00000001
	.4byte str_PTK_I_1_tik_0000c890
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_tik_0000c8d8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
.endobj pose_sound_timing_table

# .data:0x384 | 0x21E7C | size: 0x68
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

# .data:0x3EC | 0x21EE4 | size: 0x1AC
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
	.4byte str_SFX_ENM_FALL1_tik_0000c908
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
	.4byte str_SFX_ENM_KURI_MOVE1_tik_0000c918
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

# .data:0x598 | 0x22090 | size: 0x4C
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

# .data:0x5E4 | 0x220DC | size: 0x61C
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
	.4byte str_SFX_ENM_PATAKURI_MOV_tik_0000c92c
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
	.4byte str_SFX_ENM_PATAKURI_MOV_tik_0000c944
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
	.4byte str_SFX_ENM_PATAKURI_MOV_tik_0000c944
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
	.4byte str_SFX_ENM_PATAKURI_MOV_tik_0000c8f0
	.4byte str_SFX_ENM_PATAKURI_MOV_tik_0000c8f0
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

# .data:0xC00 | 0x226F8 | size: 0x30
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

# .data:0xC30 | 0x22728 | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_tik_0000c95c
	.4byte 0x00000002
	.4byte str_KUR_Y_1_tik_0000c964
	.4byte 0x00000009
	.4byte str_KUR_Y_1_tik_0000c964
	.4byte 0x00000005
	.4byte str_KUR_K_1_tik_0000c96c
	.4byte 0x00000004
	.4byte str_KUR_I_1_tik_0000c974
	.4byte 0x00000003
	.4byte str_KUR_I_1_tik_0000c974
	.4byte 0x0000001C
	.4byte str_KUR_S_1_tik_0000c97c
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_tik_0000c984
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_tik_0000c984
	.4byte 0x0000001F
	.4byte str_KUR_S_1_tik_0000c97c
	.4byte 0x00000027
	.4byte str_KUR_D_1_tik_0000c98c
	.4byte 0x00000032
	.4byte str_KUR_A_1_tik_0000c994
	.4byte 0x00000033
	.4byte str_KUR_A_2_tik_0000c99c
	.4byte 0x0000002A
	.4byte str_KUR_R_1_tik_0000c9a4
	.4byte 0x00000029
	.4byte str_KUR_R_2_tik_0000c9ac
	.4byte 0x00000028
	.4byte str_KUR_W_1_tik_0000c9b4
	.4byte 0x00000038
	.4byte str_KUR_I_1_tik_0000c974
	.4byte 0x00000039
	.4byte str_KUR_I_1_tik_0000c974
	.4byte 0x00000041
	.4byte str_KUR_T_1_tik_0000c9bc
	.4byte 0x00000045
	.4byte str_KUR_S_1_tik_0000c97c
.endobj pose_table

# .data:0xCD0 | 0x227C8 | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0xCE0 | 0x227D8 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0xCE5 | 0x227DD | size: 0x3
.obj gap_04_000227DD_data, global
.hidden gap_04_000227DD_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000227DD_data

# .data:0xCE8 | 0x227E0 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0xCED | 0x227E5 | size: 0x3
.obj gap_04_000227E5_data, global
.hidden gap_04_000227E5_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000227E5_data

# .data:0xCF0 | 0x227E8 | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x64646464
	.2byte 0x6496
.endobj regist

# .data:0xD06 | 0x227FE | size: 0x2
.obj gap_04_000227FE_data, global
.hidden gap_04_000227FE_data
	.2byte 0x0000
.endobj gap_04_000227FE_data

# .data:0xD08 | 0x22800 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_tik_0000c9c4
	.4byte str_c_kuribo_tik_0000c86c
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

# .data:0xD54 | 0x2284C | size: 0xC0
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

# .data:0xE14 | 0x2290C | size: 0xA8
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
	.4byte str_SFX_ENM_KURI_MOVE1_tik_0000c918
	.4byte str_SFX_ENM_KURI_MOVE2_tik_0000c9d4
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_tik_0000c918
	.4byte str_SFX_ENM_KURI_MOVE2_tik_0000c9d4
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_tik_0000c9e8
	.4byte str_SFX_ENM_KURI_LANDING_tik_0000c9fc
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xEBC | 0x229B4 | size: 0x28
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

# .data:0xEE4 | 0x229DC | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0xEEC | 0x229E4 | size: 0x7B0
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
	.4byte str_SFX_ENM_KURI_ATTACK1_tik_0000ca14
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
	.4byte str_SFX_ENM_KURI_MOVE1_tik_0000c918
	.4byte str_SFX_ENM_KURI_MOVE2_tik_0000c9d4
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

# .data:0x169C | 0x23194 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x16B4 | 0x231AC | size: 0x4
.obj gap_04_000231AC_data, global
.hidden gap_04_000231AC_data
	.4byte 0x00000000
.endobj gap_04_000231AC_data
