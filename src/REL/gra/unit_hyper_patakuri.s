.include "macros.inc"
.file "unit_hyper_patakuri.o"

# 0x00000FC0..0x000010D8 | size: 0x118
.text
.balign 4

# .text:0x0 | 0xFC0 | size: 0x118
.fn krb_get_dir, local
/* 00000FC0 00001084  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00000FC4 00001088  7C 08 02 A6 */	mflr r0
/* 00000FC8 0000108C  90 01 00 64 */	stw r0, 0x64(r1)
/* 00000FCC 00001090  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00000FD0 00001094  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00000FD4 00001098  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00000FD8 0000109C  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00000FDC 000010A0  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00000FE0 000010A4  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00000FE4 000010A8  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00000FE8 000010AC  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00000FEC 000010B0  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00000FF0 000010B4  7C 7E 1B 78 */	mr r30, r3
/* 00000FF4 000010B8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000FF8 000010BC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000FFC 000010C0  4B FF F5 15 */	bl evtGetFloat
/* 00001000 000010C4  FF 80 08 90 */	fmr f28, f1
/* 00001004 000010C8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001008 000010CC  7F C3 F3 78 */	mr r3, r30
/* 0000100C 000010D0  4B FF F5 05 */	bl evtGetFloat
/* 00001010 000010D4  FF A0 08 90 */	fmr f29, f1
/* 00001014 000010D8  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00001018 000010DC  7F C3 F3 78 */	mr r3, r30
/* 0000101C 000010E0  4B FF F4 F5 */	bl evtGetFloat
/* 00001020 000010E4  FF C0 08 90 */	fmr f30, f1
/* 00001024 000010E8  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00001028 000010EC  7F C3 F3 78 */	mr r3, r30
/* 0000102C 000010F0  4B FF F4 E5 */	bl evtGetFloat
/* 00001030 000010F4  FF E0 08 90 */	fmr f31, f1
/* 00001034 000010F8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00001038 000010FC  7F C3 F3 78 */	mr r3, r30
/* 0000103C 00001100  4B FF F4 D5 */	bl evtGetValue
/* 00001040 00001104  3C 80 00 00 */	lis r4, zero_gra_000028ec@ha
/* 00001044 00001108  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00001048 0000110C  C0 04 00 00 */	lfs f0, zero_gra_000028ec@l(r4)
/* 0000104C 00001110  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00001050 00001114  7C 65 1B 78 */	mr r5, r3
/* 00001054 00001118  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00001058 0000111C  40 82 00 20 */	bne .L_00001078
/* 0000105C 00001120  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00001060 00001124  40 82 00 18 */	bne .L_00001078
/* 00001064 00001128  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00001068 0000112C  7F C3 F3 78 */	mr r3, r30
/* 0000106C 00001130  4B FF F4 A5 */	bl evtSetValue
/* 00001070 00001134  38 60 00 02 */	li r3, 0x2
/* 00001074 00001138  48 00 00 30 */	b .L_000010A4
.L_00001078:
/* 00001078 0000113C  3C 60 00 00 */	lis r3, zero_gra_000028ec@ha
/* 0000107C 00001140  C0 63 00 00 */	lfs f3, zero_gra_000028ec@l(r3)
/* 00001080 00001144  FC 80 18 90 */	fmr f4, f3
/* 00001084 00001148  4B FF F4 8D */	bl angleABf_1
/* 00001088 0000114C  FC 00 08 1E */	fctiwz f0, f1
/* 0000108C 00001150  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00001090 00001154  7F C3 F3 78 */	mr r3, r30
/* 00001094 00001158  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00001098 0000115C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 0000109C 00001160  4B FF F4 75 */	bl evtSetValue
/* 000010A0 00001164  38 60 00 02 */	li r3, 0x2
.L_000010A4:
/* 000010A4 00001168  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 000010A8 0000116C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 000010AC 00001170  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 000010B0 00001174  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 000010B4 00001178  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 000010B8 0000117C  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 000010BC 00001180  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 000010C0 00001184  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 000010C4 00001188  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000010C8 0000118C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000010CC 00001190  7C 08 03 A6 */	mtlr r0
/* 000010D0 00001194  38 21 00 60 */	addi r1, r1, 0x60
/* 000010D4 00001198  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x000011C8..0x00001430 | size: 0x268
.rodata
.balign 8

# .rodata:0x0 | 0x11C8 | size: 0x16
.obj str_btl_un_hyper_patakur_gra_00002688, local
	.string "btl_un_hyper_patakuri"
.endobj str_btl_un_hyper_patakur_gra_00002688

# .rodata:0x16 | 0x11DE | size: 0x2
.obj gap_03_000011DE_rodata, global
.hidden gap_03_000011DE_rodata
	.2byte 0x0000
.endobj gap_03_000011DE_rodata

# .rodata:0x18 | 0x11E0 | size: 0x1A
.obj str_SFX_ENM_PATAKURI_DAM_gra_000026a0, local
	.string "SFX_ENM_PATAKURI_DAMAGED1"
.endobj str_SFX_ENM_PATAKURI_DAM_gra_000026a0

# .rodata:0x32 | 0x11FA | size: 0x2
.obj gap_03_000011FA_rodata, global
.hidden gap_03_000011FA_rodata
	.2byte 0x0000
.endobj gap_03_000011FA_rodata

# .rodata:0x34 | 0x11FC | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_gra_000026bc, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_gra_000026bc

# .rodata:0x49 | 0x1211 | size: 0x3
.obj gap_03_00001211_rodata, global
.hidden gap_03_00001211_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001211_rodata

# .rodata:0x4C | 0x1214 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_gra_000026d4, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_gra_000026d4

# .rodata:0x60 | 0x1228 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_gra_000026e8, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_gra_000026e8

# .rodata:0x79 | 0x1241 | size: 0x3
.obj gap_03_00001241_rodata, global
.hidden gap_03_00001241_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001241_rodata

# .rodata:0x7C | 0x1244 | size: 0xB
.obj str_c_kuribo_h_gra_00002704, local
	.string "c_kuribo_h"
.endobj str_c_kuribo_h_gra_00002704

# .rodata:0x87 | 0x124F | size: 0x1
.obj gap_03_0000124F_rodata, global
.hidden gap_03_0000124F_rodata
	.byte 0x00
.endobj gap_03_0000124F_rodata

# .rodata:0x88 | 0x1250 | size: 0x8
.obj str_PTK_N_1_gra_00002710, local
	.string "PTK_N_1"
.endobj str_PTK_N_1_gra_00002710

# .rodata:0x90 | 0x1258 | size: 0x8
.obj str_PTK_Y_1_gra_00002718, local
	.string "PTK_Y_1"
.endobj str_PTK_Y_1_gra_00002718

# .rodata:0x98 | 0x1260 | size: 0x8
.obj str_PTK_K_1_gra_00002720, local
	.string "PTK_K_1"
.endobj str_PTK_K_1_gra_00002720

# .rodata:0xA0 | 0x1268 | size: 0x8
.obj str_PTK_I_1_gra_00002728, local
	.string "PTK_I_1"
.endobj str_PTK_I_1_gra_00002728

# .rodata:0xA8 | 0x1270 | size: 0x8
.obj str_PTK_S_1_gra_00002730, local
	.string "PTK_S_1"
.endobj str_PTK_S_1_gra_00002730

# .rodata:0xB0 | 0x1278 | size: 0x8
.obj str_PTK_Q_1_gra_00002738, local
	.string "PTK_Q_1"
.endobj str_PTK_Q_1_gra_00002738

# .rodata:0xB8 | 0x1280 | size: 0x8
.obj str_PTK_D_1_gra_00002740, local
	.string "PTK_D_1"
.endobj str_PTK_D_1_gra_00002740

# .rodata:0xC0 | 0x1288 | size: 0x8
.obj str_PTK_A_1_gra_00002748, local
	.string "PTK_A_1"
.endobj str_PTK_A_1_gra_00002748

# .rodata:0xC8 | 0x1290 | size: 0x8
.obj str_PTK_R_1_gra_00002750, local
	.string "PTK_R_1"
.endobj str_PTK_R_1_gra_00002750

# .rodata:0xD0 | 0x1298 | size: 0x8
.obj str_PTK_R_2_gra_00002758, local
	.string "PTK_R_2"
.endobj str_PTK_R_2_gra_00002758

# .rodata:0xD8 | 0x12A0 | size: 0x8
.obj str_PTK_W_1_gra_00002760, local
	.string "PTK_W_1"
.endobj str_PTK_W_1_gra_00002760

# .rodata:0xE0 | 0x12A8 | size: 0x8
.obj str_PTK_T_1_gra_00002768, local
	.string "PTK_T_1"
.endobj str_PTK_T_1_gra_00002768

# .rodata:0xE8 | 0x12B0 | size: 0x17
.obj str_SFX_ENM_PATAKURI_WAI_gra_00002770, local
	.string "SFX_ENM_PATAKURI_WAIT1"
.endobj str_SFX_ENM_PATAKURI_WAI_gra_00002770

# .rodata:0xFF | 0x12C7 | size: 0x1
.obj gap_03_000012C7_rodata, global
.hidden gap_03_000012C7_rodata
	.byte 0x00
.endobj gap_03_000012C7_rodata

# .rodata:0x100 | 0x12C8 | size: 0x17
.obj str_SFX_ENM_PATAKURI_MOV_gra_00002788, local
	.string "SFX_ENM_PATAKURI_MOVE1"
.endobj str_SFX_ENM_PATAKURI_MOV_gra_00002788

# .rodata:0x117 | 0x12DF | size: 0x1
.obj gap_03_000012DF_rodata, global
.hidden gap_03_000012DF_rodata
	.byte 0x00
.endobj gap_03_000012DF_rodata

# .rodata:0x118 | 0x12E0 | size: 0xE
.obj str_SFX_ENM_FALL1_gra_000027a0, local
	.string "SFX_ENM_FALL1"
.endobj str_SFX_ENM_FALL1_gra_000027a0

# .rodata:0x126 | 0x12EE | size: 0x2
.obj gap_03_000012EE_rodata, global
.hidden gap_03_000012EE_rodata
	.2byte 0x0000
.endobj gap_03_000012EE_rodata

# .rodata:0x128 | 0x12F0 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_gra_000027b0, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_gra_000027b0

# .rodata:0x13B | 0x1303 | size: 0x1
.obj gap_03_00001303_rodata, global
.hidden gap_03_00001303_rodata
	.byte 0x00
.endobj gap_03_00001303_rodata

# .rodata:0x13C | 0x1304 | size: 0x10
.obj str_SFX_ENM_CHARGE1_gra_000027c4, local
	.string "SFX_ENM_CHARGE1"
.endobj str_SFX_ENM_CHARGE1_gra_000027c4

# .rodata:0x14C | 0x1314 | size: 0x1
.obj zero_gra_000027d4, local
	.byte 0x00
.endobj zero_gra_000027d4

# .rodata:0x14D | 0x1315 | size: 0x3
.obj gap_03_00001315_rodata, global
.hidden gap_03_00001315_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001315_rodata

# .rodata:0x150 | 0x1318 | size: 0xC
.obj str_crystal_n64_gra_000027d8, local
	.string "crystal_n64"
.endobj str_crystal_n64_gra_000027d8

# .rodata:0x15C | 0x1324 | size: 0x17
.obj str_SFX_ENM_PATAKURI_MOV_gra_000027e4, local
	.string "SFX_ENM_PATAKURI_MOVE2"
.endobj str_SFX_ENM_PATAKURI_MOV_gra_000027e4

# .rodata:0x173 | 0x133B | size: 0x1
.obj gap_03_0000133B_rodata, global
.hidden gap_03_0000133B_rodata
	.byte 0x00
.endobj gap_03_0000133B_rodata

# .rodata:0x174 | 0x133C | size: 0x17
.obj str_SFX_ENM_PATAKURI_MOV_gra_000027fc, local
	.string "SFX_ENM_PATAKURI_MOVE3"
.endobj str_SFX_ENM_PATAKURI_MOV_gra_000027fc

# .rodata:0x18B | 0x1353 | size: 0x1
.obj gap_03_00001353_rodata, global
.hidden gap_03_00001353_rodata
	.byte 0x00
.endobj gap_03_00001353_rodata

# .rodata:0x18C | 0x1354 | size: 0x8
.obj str_KUR_N_1_gra_00002814, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_gra_00002814

# .rodata:0x194 | 0x135C | size: 0x8
.obj str_KUR_Y_1_gra_0000281c, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_gra_0000281c

# .rodata:0x19C | 0x1364 | size: 0x8
.obj str_KUR_K_1_gra_00002824, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_gra_00002824

# .rodata:0x1A4 | 0x136C | size: 0x8
.obj str_KUR_I_1_gra_0000282c, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_gra_0000282c

# .rodata:0x1AC | 0x1374 | size: 0x8
.obj str_KUR_S_1_gra_00002834, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_gra_00002834

# .rodata:0x1B4 | 0x137C | size: 0x8
.obj str_KUR_Q_1_gra_0000283c, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_gra_0000283c

# .rodata:0x1BC | 0x1384 | size: 0x8
.obj str_KUR_D_1_gra_00002844, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_gra_00002844

# .rodata:0x1C4 | 0x138C | size: 0x8
.obj str_KUR_A_1_gra_0000284c, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_gra_0000284c

# .rodata:0x1CC | 0x1394 | size: 0x8
.obj str_KUR_A_2_gra_00002854, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_gra_00002854

# .rodata:0x1D4 | 0x139C | size: 0x8
.obj str_KUR_R_1_gra_0000285c, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_gra_0000285c

# .rodata:0x1DC | 0x13A4 | size: 0x8
.obj str_KUR_R_2_gra_00002864, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_gra_00002864

# .rodata:0x1E4 | 0x13AC | size: 0x8
.obj str_KUR_W_1_gra_0000286c, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_gra_0000286c

# .rodata:0x1EC | 0x13B4 | size: 0x8
.obj str_KUR_T_1_gra_00002874, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_gra_00002874

# .rodata:0x1F4 | 0x13BC | size: 0x15
.obj str_btl_un_hyper_kuriboo_gra_0000287c, local
	.string "btl_un_hyper_kuriboo"
.endobj str_btl_un_hyper_kuriboo_gra_0000287c

# .rodata:0x209 | 0x13D1 | size: 0x3
.obj gap_03_000013D1_rodata, global
.hidden gap_03_000013D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013D1_rodata

# .rodata:0x20C | 0x13D4 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_gra_00002894, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_gra_00002894

# .rodata:0x21F | 0x13E7 | size: 0x1
.obj gap_03_000013E7_rodata, global
.hidden gap_03_000013E7_rodata
	.byte 0x00
.endobj gap_03_000013E7_rodata

# .rodata:0x220 | 0x13E8 | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_gra_000028a8, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_gra_000028a8

# .rodata:0x233 | 0x13FB | size: 0x1
.obj gap_03_000013FB_rodata, global
.hidden gap_03_000013FB_rodata
	.byte 0x00
.endobj gap_03_000013FB_rodata

# .rodata:0x234 | 0x13FC | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_gra_000028bc, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_gra_000028bc

# .rodata:0x24A | 0x1412 | size: 0x2
.obj gap_03_00001412_rodata, global
.hidden gap_03_00001412_rodata
	.2byte 0x0000
.endobj gap_03_00001412_rodata

# .rodata:0x24C | 0x1414 | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_gra_000028d4, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_gra_000028d4
	.byte 0x00, 0x00, 0x00

# .rodata:0x264 | 0x142C | size: 0x4
.obj zero_gra_000028ec, local
	.float 0
.endobj zero_gra_000028ec

# 0x0000AA60..0x0000C728 | size: 0x1CC8
.data
.balign 8

# .data:0x0 | 0xAA60 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xAA68 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xAA6C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xAA70 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xAA74 | size: 0x4
.obj gap_04_0000AA74_data, global
.hidden gap_04_0000AA74_data
	.4byte 0x00000000
.endobj gap_04_0000AA74_data

# .data:0x18 | 0xAA78 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xAA80 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xAA84 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xAA88 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xAA90 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xAA94 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xAA98 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xAA9C | size: 0x4
.obj gap_04_0000AA9C_data, global
.hidden gap_04_0000AA9C_data
	.4byte 0x00000000
.endobj gap_04_0000AA9C_data

# .data:0x40 | 0xAAA0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xAAA8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xAAAC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xAAB0 | size: 0xC4
.obj unit_hyper_patakuri_10_data_AAB0, global
	.4byte 0x00000043
	.4byte str_btl_un_hyper_patakur_gra_00002688
	.4byte 0x00080000
	.4byte 0x01010F00
	.4byte 0x0246013C
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
	.4byte 0x41800000
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
	.4byte str_SFX_ENM_PATAKURI_DAM_gra_000026a0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_gra_000026bc
	.4byte str_SFX_BTL_DAMAGE_ICE1_gra_000026d4
	.4byte str_SFX_BTL_DAMAGE_BIRIB_gra_000026e8
	.4byte 0x00040004
	.4byte regist_patakuri
	.4byte 0x01000000
	.4byte parts_patakuri
	.4byte init_event_patakuri
	.4byte data_table_patakuri
.endobj unit_hyper_patakuri_10_data_AAB0

# .data:0x114 | 0xAB74 | size: 0x5
.obj defence_patakuri, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_patakuri

# .data:0x119 | 0xAB79 | size: 0x3
.obj gap_04_0000AB79_data, global
.hidden gap_04_0000AB79_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000AB79_data

# .data:0x11C | 0xAB7C | size: 0x5
.obj defence_patakuri_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_patakuri_attr

# .data:0x121 | 0xAB81 | size: 0x3
.obj gap_04_0000AB81_data, global
.hidden gap_04_0000AB81_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000AB81_data

# .data:0x124 | 0xAB84 | size: 0x16
.obj regist_patakuri, local
	.ascii "PZddPddPdZdZd_PZZdPdd_"
.endobj regist_patakuri

# .data:0x13A | 0xAB9A | size: 0x2
.obj gap_04_0000AB9A_data, global
.hidden gap_04_0000AB9A_data
	.2byte 0x0000
.endobj gap_04_0000AB9A_data

# .data:0x13C | 0xAB9C | size: 0xC0
.obj weapon_patakuri_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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

# .data:0x1FC | 0xAC5C | size: 0xC0
.obj weapon_patakuri_charge, local
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
	.4byte 0x01004020
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_patakuri_charge

# .data:0x2BC | 0xAD1C | size: 0x4C
.obj parts_patakuri, local
	.4byte 0x00000001
	.4byte str_btl_un_hyper_patakur_gra_00002688
	.4byte str_c_kuribo_h_gra_00002704
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

# .data:0x308 | 0xAD68 | size: 0x98
.obj pose_table_patakuri, local
	.4byte 0x00000001
	.4byte str_PTK_N_1_gra_00002710
	.4byte 0x00000002
	.4byte str_PTK_Y_1_gra_00002718
	.4byte 0x00000009
	.4byte str_PTK_Y_1_gra_00002718
	.4byte 0x00000005
	.4byte str_PTK_K_1_gra_00002720
	.4byte 0x00000004
	.4byte str_PTK_I_1_gra_00002728
	.4byte 0x00000003
	.4byte str_PTK_I_1_gra_00002728
	.4byte 0x0000001C
	.4byte str_PTK_S_1_gra_00002730
	.4byte 0x0000001D
	.4byte str_PTK_Q_1_gra_00002738
	.4byte 0x0000001E
	.4byte str_PTK_Q_1_gra_00002738
	.4byte 0x0000001F
	.4byte str_PTK_S_1_gra_00002730
	.4byte 0x00000027
	.4byte str_PTK_D_1_gra_00002740
	.4byte 0x00000032
	.4byte str_PTK_A_1_gra_00002748
	.4byte 0x0000002A
	.4byte str_PTK_R_1_gra_00002750
	.4byte 0x00000029
	.4byte str_PTK_R_2_gra_00002758
	.4byte 0x00000028
	.4byte str_PTK_W_1_gra_00002760
	.4byte 0x00000038
	.4byte str_PTK_I_1_gra_00002728
	.4byte 0x00000039
	.4byte str_PTK_I_1_gra_00002728
	.4byte 0x00000041
	.4byte str_PTK_T_1_gra_00002768
	.4byte 0x00000045
	.4byte str_PTK_S_1_gra_00002730
.endobj pose_table_patakuri

# .data:0x3A0 | 0xAE00 | size: 0x18
.obj data_table_patakuri, local
	.4byte 0x0000000E
	.4byte dmg_fall_event
	.4byte 0x00000030
	.4byte patakuri_dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_patakuri

# .data:0x3B8 | 0xAE18 | size: 0x8C
.obj pose_sound_timing_table, local
	.4byte str_PTK_S_1_gra_00002730
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_gra_00002770
	.4byte 0x00000001
	.4byte str_PTK_W_1_gra_00002760
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_MOV_gra_00002788
	.4byte 0x00000001
	.4byte str_PTK_R_1_gra_00002750
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_MOV_gra_00002788
	.4byte 0x00000001
	.4byte str_PTK_K_1_gra_00002720
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_gra_00002770
	.4byte 0x00000001
	.4byte str_PTK_N_1_gra_00002710
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_gra_00002770
	.4byte 0x00000001
	.4byte str_PTK_I_1_gra_00002728
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_gra_00002770
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
.endobj pose_sound_timing_table

# .data:0x444 | 0xAEA4 | size: 0x68
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

# .data:0x4AC | 0xAF0C | size: 0x1AC
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
	.4byte str_SFX_ENM_FALL1_gra_000027a0
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
	.4byte str_SFX_ENM_KURI_MOVE1_gra_000027b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeKind
	.4byte 0xFE363C8A
	.4byte 0x00000042
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

# .data:0x658 | 0xB0B8 | size: 0x4C
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

# .data:0x6A4 | 0xB104 | size: 0x850
.obj attack_event_patakuri, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
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
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000019
	.4byte 0x0000004B
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_patakuri_charge
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_CHARGE1_gra_000027c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_gra_000027d4
	.4byte str_crystal_n64_gra_000027d8
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8080
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000000A
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
	.4byte str_SFX_ENM_PATAKURI_MOV_gra_000027e4
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
	.4byte str_SFX_ENM_PATAKURI_MOV_gra_000027fc
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
	.4byte str_SFX_ENM_PATAKURI_MOV_gra_000027fc
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
	.4byte str_SFX_ENM_PATAKURI_MOV_gra_00002788
	.4byte str_SFX_ENM_PATAKURI_MOV_gra_00002788
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

# .data:0xEF4 | 0xB954 | size: 0x30
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

# .data:0xF24 | 0xB984 | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_gra_00002814
	.4byte 0x00000002
	.4byte str_KUR_Y_1_gra_0000281c
	.4byte 0x00000009
	.4byte str_KUR_Y_1_gra_0000281c
	.4byte 0x00000005
	.4byte str_KUR_K_1_gra_00002824
	.4byte 0x00000004
	.4byte str_KUR_I_1_gra_0000282c
	.4byte 0x00000003
	.4byte str_KUR_I_1_gra_0000282c
	.4byte 0x0000001C
	.4byte str_KUR_S_1_gra_00002834
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_gra_0000283c
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_gra_0000283c
	.4byte 0x0000001F
	.4byte str_KUR_S_1_gra_00002834
	.4byte 0x00000027
	.4byte str_KUR_D_1_gra_00002844
	.4byte 0x00000032
	.4byte str_KUR_A_1_gra_0000284c
	.4byte 0x00000033
	.4byte str_KUR_A_2_gra_00002854
	.4byte 0x0000002A
	.4byte str_KUR_R_1_gra_0000285c
	.4byte 0x00000029
	.4byte str_KUR_R_2_gra_00002864
	.4byte 0x00000028
	.4byte str_KUR_W_1_gra_0000286c
	.4byte 0x00000038
	.4byte str_KUR_I_1_gra_0000282c
	.4byte 0x00000039
	.4byte str_KUR_I_1_gra_0000282c
	.4byte 0x00000041
	.4byte str_KUR_T_1_gra_00002874
	.4byte 0x00000045
	.4byte str_KUR_S_1_gra_00002834
.endobj pose_table

# .data:0xFC4 | 0xBA24 | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0xFD4 | 0xBA34 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0xFD9 | 0xBA39 | size: 0x3
.obj gap_04_0000BA39_data, global
.hidden gap_04_0000BA39_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000BA39_data

# .data:0xFDC | 0xBA3C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0xFE1 | 0xBA41 | size: 0x3
.obj gap_04_0000BA41_data, global
.hidden gap_04_0000BA41_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000BA41_data

# .data:0xFE4 | 0xBA44 | size: 0x16
.obj regist, local
	.ascii "PZPdPddPd_d_d_PZPdPdd_"
.endobj regist

# .data:0xFFA | 0xBA5A | size: 0x2
.obj gap_04_0000BA5A_data, global
.hidden gap_04_0000BA5A_data
	.2byte 0x0000
.endobj gap_04_0000BA5A_data

# .data:0xFFC | 0xBA5C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_hyper_kuriboo_gra_0000287c
	.4byte str_c_kuribo_h_gra_00002704
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

# .data:0x1048 | 0xBAA8 | size: 0xC0
.obj weapon_kuriboo_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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

# .data:0x1108 | 0xBB68 | size: 0xC0
.obj weapon_kuriboo_charge, local
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
	.4byte 0x01004020
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_kuriboo_charge

# .data:0x11C8 | 0xBC28 | size: 0xBC
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
	.4byte str_SFX_ENM_KURI_MOVE1_gra_000027b0
	.4byte str_SFX_ENM_KURI_MOVE2_gra_00002894
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_gra_000027b0
	.4byte str_SFX_ENM_KURI_MOVE2_gra_00002894
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_gra_000028a8
	.4byte str_SFX_ENM_KURI_LANDING_gra_000028bc
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x1284 | 0xBCE4 | size: 0x28
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

# .data:0x12AC | 0xBD0C | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x12B4 | 0xBD14 | size: 0x9F8
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
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
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
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000019
	.4byte 0x0000004B
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kuriboo_charge
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_CHARGE1_gra_000027c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_gra_000027d4
	.4byte str_crystal_n64_gra_000027d8
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8080
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000000A
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
	.4byte str_SFX_ENM_KURI_ATTACK1_gra_000028d4
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
	.4byte str_SFX_ENM_KURI_MOVE1_gra_000027b0
	.4byte str_SFX_ENM_KURI_MOVE2_gra_00002894
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

# .data:0x1CAC | 0xC70C | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1CC4 | 0xC724 | size: 0x4
.obj gap_04_0000C724_data, global
.hidden gap_04_0000C724_data
	.4byte 0x00000000
.endobj gap_04_0000C724_data
