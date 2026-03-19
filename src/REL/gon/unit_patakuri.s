.include "macros.inc"
.file "unit_patakuri.o"

# 0x0000266C..0x00002784 | size: 0x118
.text
.balign 4

# .text:0x0 | 0x266C | size: 0x118
.fn krb_get_dir, local
/* 0000266C 00002750  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00002670 00002754  7C 08 02 A6 */	mflr r0
/* 00002674 00002758  90 01 00 64 */	stw r0, 0x64(r1)
/* 00002678 0000275C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 0000267C 00002760  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00002680 00002764  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00002684 00002768  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00002688 0000276C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 0000268C 00002770  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00002690 00002774  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00002694 00002778  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00002698 0000277C  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000269C 00002780  7C 7E 1B 78 */	mr r30, r3
/* 000026A0 00002784  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000026A4 00002788  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000026A8 0000278C  4B FF DB 39 */	bl evtGetFloat
/* 000026AC 00002790  FF 80 08 90 */	fmr f28, f1
/* 000026B0 00002794  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000026B4 00002798  7F C3 F3 78 */	mr r3, r30
/* 000026B8 0000279C  4B FF DB 29 */	bl evtGetFloat
/* 000026BC 000027A0  FF A0 08 90 */	fmr f29, f1
/* 000026C0 000027A4  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000026C4 000027A8  7F C3 F3 78 */	mr r3, r30
/* 000026C8 000027AC  4B FF DB 19 */	bl evtGetFloat
/* 000026CC 000027B0  FF C0 08 90 */	fmr f30, f1
/* 000026D0 000027B4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000026D4 000027B8  7F C3 F3 78 */	mr r3, r30
/* 000026D8 000027BC  4B FF DB 09 */	bl evtGetFloat
/* 000026DC 000027C0  FF E0 08 90 */	fmr f31, f1
/* 000026E0 000027C4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000026E4 000027C8  7F C3 F3 78 */	mr r3, r30
/* 000026E8 000027CC  4B FF DA F9 */	bl evtGetValue
/* 000026EC 000027D0  3C 80 00 00 */	lis r4, zero_gon_00007124@ha
/* 000026F0 000027D4  EC 3E E0 28 */	fsubs f1, f30, f28
/* 000026F4 000027D8  C0 04 00 00 */	lfs f0, zero_gon_00007124@l(r4)
/* 000026F8 000027DC  EC 5F E8 28 */	fsubs f2, f31, f29
/* 000026FC 000027E0  7C 65 1B 78 */	mr r5, r3
/* 00002700 000027E4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00002704 000027E8  40 82 00 20 */	bne .L_00002724
/* 00002708 000027EC  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 0000270C 000027F0  40 82 00 18 */	bne .L_00002724
/* 00002710 000027F4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00002714 000027F8  7F C3 F3 78 */	mr r3, r30
/* 00002718 000027FC  4B FF DA C9 */	bl evtSetValue
/* 0000271C 00002800  38 60 00 02 */	li r3, 0x2
/* 00002720 00002804  48 00 00 30 */	b .L_00002750
.L_00002724:
/* 00002724 00002808  3C 60 00 00 */	lis r3, zero_gon_00007124@ha
/* 00002728 0000280C  C0 63 00 00 */	lfs f3, zero_gon_00007124@l(r3)
/* 0000272C 00002810  FC 80 18 90 */	fmr f4, f3
/* 00002730 00002814  4B FF DA B1 */	bl angleABf_1
/* 00002734 00002818  FC 00 08 1E */	fctiwz f0, f1
/* 00002738 0000281C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000273C 00002820  7F C3 F3 78 */	mr r3, r30
/* 00002740 00002824  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00002744 00002828  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00002748 0000282C  4B FF DA 99 */	bl evtSetValue
/* 0000274C 00002830  38 60 00 02 */	li r3, 0x2
.L_00002750:
/* 00002750 00002834  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00002754 00002838  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00002758 0000283C  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 0000275C 00002840  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00002760 00002844  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00002764 00002848  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00002768 0000284C  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 0000276C 00002850  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00002770 00002854  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00002774 00002858  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00002778 0000285C  7C 08 03 A6 */	mtlr r0
/* 0000277C 00002860  38 21 00 60 */	addi r1, r1, 0x60
/* 00002780 00002864  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00003138..0x00003370 | size: 0x238
.rodata
.balign 8

# .rodata:0x0 | 0x3138 | size: 0x10
.obj str_btl_un_patakuri_gon_00006f08, local
	.string "btl_un_patakuri"
.endobj str_btl_un_patakuri_gon_00006f08

# .rodata:0x10 | 0x3148 | size: 0x1A
.obj str_SFX_ENM_PATAKURI_DAM_gon_00006f18, local
	.string "SFX_ENM_PATAKURI_DAMAGED1"
.endobj str_SFX_ENM_PATAKURI_DAM_gon_00006f18

# .rodata:0x2A | 0x3162 | size: 0x2
.obj gap_03_00003162_rodata, global
.hidden gap_03_00003162_rodata
	.2byte 0x0000
.endobj gap_03_00003162_rodata

# .rodata:0x2C | 0x3164 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_gon_00006f34, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_gon_00006f34

# .rodata:0x41 | 0x3179 | size: 0x3
.obj gap_03_00003179_rodata, global
.hidden gap_03_00003179_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003179_rodata

# .rodata:0x44 | 0x317C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_gon_00006f4c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_gon_00006f4c

# .rodata:0x58 | 0x3190 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_gon_00006f60, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_gon_00006f60

# .rodata:0x71 | 0x31A9 | size: 0x3
.obj gap_03_000031A9_rodata, global
.hidden gap_03_000031A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000031A9_rodata

# .rodata:0x74 | 0x31AC | size: 0x9
.obj str_c_kuribo_gon_00006f7c, local
	.string "c_kuribo"
.endobj str_c_kuribo_gon_00006f7c

# .rodata:0x7D | 0x31B5 | size: 0x3
.obj gap_03_000031B5_rodata, global
.hidden gap_03_000031B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000031B5_rodata

# .rodata:0x80 | 0x31B8 | size: 0x8
.obj str_PTK_N_1_gon_00006f88, local
	.string "PTK_N_1"
.endobj str_PTK_N_1_gon_00006f88

# .rodata:0x88 | 0x31C0 | size: 0x8
.obj str_PTK_Y_1_gon_00006f90, local
	.string "PTK_Y_1"
.endobj str_PTK_Y_1_gon_00006f90

# .rodata:0x90 | 0x31C8 | size: 0x8
.obj str_PTK_K_1_gon_00006f98, local
	.string "PTK_K_1"
.endobj str_PTK_K_1_gon_00006f98

# .rodata:0x98 | 0x31D0 | size: 0x8
.obj str_PTK_I_1_gon_00006fa0, local
	.string "PTK_I_1"
.endobj str_PTK_I_1_gon_00006fa0

# .rodata:0xA0 | 0x31D8 | size: 0x8
.obj str_PTK_S_1_gon_00006fa8, local
	.string "PTK_S_1"
.endobj str_PTK_S_1_gon_00006fa8

# .rodata:0xA8 | 0x31E0 | size: 0x8
.obj str_PTK_Q_1_gon_00006fb0, local
	.string "PTK_Q_1"
.endobj str_PTK_Q_1_gon_00006fb0

# .rodata:0xB0 | 0x31E8 | size: 0x8
.obj str_PTK_D_1_gon_00006fb8, local
	.string "PTK_D_1"
.endobj str_PTK_D_1_gon_00006fb8

# .rodata:0xB8 | 0x31F0 | size: 0x8
.obj str_PTK_A_1_gon_00006fc0, local
	.string "PTK_A_1"
.endobj str_PTK_A_1_gon_00006fc0

# .rodata:0xC0 | 0x31F8 | size: 0x8
.obj str_PTK_R_1_gon_00006fc8, local
	.string "PTK_R_1"
.endobj str_PTK_R_1_gon_00006fc8

# .rodata:0xC8 | 0x3200 | size: 0x8
.obj str_PTK_R_2_gon_00006fd0, local
	.string "PTK_R_2"
.endobj str_PTK_R_2_gon_00006fd0

# .rodata:0xD0 | 0x3208 | size: 0x8
.obj str_PTK_W_1_gon_00006fd8, local
	.string "PTK_W_1"
.endobj str_PTK_W_1_gon_00006fd8

# .rodata:0xD8 | 0x3210 | size: 0x8
.obj str_PTK_T_1_gon_00006fe0, local
	.string "PTK_T_1"
.endobj str_PTK_T_1_gon_00006fe0

# .rodata:0xE0 | 0x3218 | size: 0x17
.obj str_SFX_ENM_PATAKURI_WAI_gon_00006fe8, local
	.string "SFX_ENM_PATAKURI_WAIT1"
.endobj str_SFX_ENM_PATAKURI_WAI_gon_00006fe8

# .rodata:0xF7 | 0x322F | size: 0x1
.obj gap_03_0000322F_rodata, global
.hidden gap_03_0000322F_rodata
	.byte 0x00
.endobj gap_03_0000322F_rodata

# .rodata:0xF8 | 0x3230 | size: 0x17
.obj str_SFX_ENM_PATAKURI_MOV_gon_00007000, local
	.string "SFX_ENM_PATAKURI_MOVE1"
.endobj str_SFX_ENM_PATAKURI_MOV_gon_00007000

# .rodata:0x10F | 0x3247 | size: 0x1
.obj gap_03_00003247_rodata, global
.hidden gap_03_00003247_rodata
	.byte 0x00
.endobj gap_03_00003247_rodata

# .rodata:0x110 | 0x3248 | size: 0xE
.obj str_SFX_ENM_FALL1_gon_00007018, local
	.string "SFX_ENM_FALL1"
.endobj str_SFX_ENM_FALL1_gon_00007018

# .rodata:0x11E | 0x3256 | size: 0x2
.obj gap_03_00003256_rodata, global
.hidden gap_03_00003256_rodata
	.2byte 0x0000
.endobj gap_03_00003256_rodata

# .rodata:0x120 | 0x3258 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_gon_00007028, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_gon_00007028

# .rodata:0x133 | 0x326B | size: 0x1
.obj gap_03_0000326B_rodata, global
.hidden gap_03_0000326B_rodata
	.byte 0x00
.endobj gap_03_0000326B_rodata

# .rodata:0x134 | 0x326C | size: 0x17
.obj str_SFX_ENM_PATAKURI_MOV_gon_0000703c, local
	.string "SFX_ENM_PATAKURI_MOVE2"
.endobj str_SFX_ENM_PATAKURI_MOV_gon_0000703c

# .rodata:0x14B | 0x3283 | size: 0x1
.obj gap_03_00003283_rodata, global
.hidden gap_03_00003283_rodata
	.byte 0x00
.endobj gap_03_00003283_rodata

# .rodata:0x14C | 0x3284 | size: 0x17
.obj str_SFX_ENM_PATAKURI_MOV_gon_00007054, local
	.string "SFX_ENM_PATAKURI_MOVE3"
.endobj str_SFX_ENM_PATAKURI_MOV_gon_00007054

# .rodata:0x163 | 0x329B | size: 0x1
.obj gap_03_0000329B_rodata, global
.hidden gap_03_0000329B_rodata
	.byte 0x00
.endobj gap_03_0000329B_rodata

# .rodata:0x164 | 0x329C | size: 0x8
.obj str_KUR_N_1_gon_0000706c, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_gon_0000706c

# .rodata:0x16C | 0x32A4 | size: 0x8
.obj str_KUR_Y_1_gon_00007074, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_gon_00007074

# .rodata:0x174 | 0x32AC | size: 0x8
.obj str_KUR_K_1_gon_0000707c, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_gon_0000707c

# .rodata:0x17C | 0x32B4 | size: 0x8
.obj str_KUR_I_1_gon_00007084, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_gon_00007084

# .rodata:0x184 | 0x32BC | size: 0x8
.obj str_KUR_S_1_gon_0000708c, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_gon_0000708c

# .rodata:0x18C | 0x32C4 | size: 0x8
.obj str_KUR_Q_1_gon_00007094, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_gon_00007094

# .rodata:0x194 | 0x32CC | size: 0x8
.obj str_KUR_D_1_gon_0000709c, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_gon_0000709c

# .rodata:0x19C | 0x32D4 | size: 0x8
.obj str_KUR_A_1_gon_000070a4, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_gon_000070a4

# .rodata:0x1A4 | 0x32DC | size: 0x8
.obj str_KUR_A_2_gon_000070ac, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_gon_000070ac

# .rodata:0x1AC | 0x32E4 | size: 0x8
.obj str_KUR_R_1_gon_000070b4, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_gon_000070b4

# .rodata:0x1B4 | 0x32EC | size: 0x8
.obj str_KUR_R_2_gon_000070bc, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_gon_000070bc

# .rodata:0x1BC | 0x32F4 | size: 0x8
.obj str_KUR_W_1_gon_000070c4, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_gon_000070c4

# .rodata:0x1C4 | 0x32FC | size: 0x8
.obj str_KUR_T_1_gon_000070cc, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_gon_000070cc

# .rodata:0x1CC | 0x3304 | size: 0xF
.obj str_btl_un_kuriboo_gon_000070d4, local
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_gon_000070d4

# .rodata:0x1DB | 0x3313 | size: 0x1
.obj gap_03_00003313_rodata, global
.hidden gap_03_00003313_rodata
	.byte 0x00
.endobj gap_03_00003313_rodata

# .rodata:0x1DC | 0x3314 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_gon_000070e4, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_gon_000070e4

# .rodata:0x1EF | 0x3327 | size: 0x1
.obj gap_03_00003327_rodata, global
.hidden gap_03_00003327_rodata
	.byte 0x00
.endobj gap_03_00003327_rodata

# .rodata:0x1F0 | 0x3328 | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_gon_000070f8, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_gon_000070f8

# .rodata:0x203 | 0x333B | size: 0x1
.obj gap_03_0000333B_rodata, global
.hidden gap_03_0000333B_rodata
	.byte 0x00
.endobj gap_03_0000333B_rodata

# .rodata:0x204 | 0x333C | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_gon_0000710c, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_gon_0000710c
	.2byte 0x0000

# .rodata:0x21C | 0x3354 | size: 0x4
.obj zero_gon_00007124, local
	.float 0
.endobj zero_gon_00007124

# .rodata:0x220 | 0x3358 | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_gon_00007128, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_gon_00007128

# .rodata:0x235 | 0x336D | size: 0x3
.obj gap_03_0000336D_rodata, global
.hidden gap_03_0000336D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000336D_rodata

# 0x00019F48..0x0001B600 | size: 0x16B8
.data
.balign 8

# .data:0x0 | 0x19F48 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x19F50 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x19F54 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x19F58 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x19F5C | size: 0x4
.obj gap_04_00019F5C_data, global
.hidden gap_04_00019F5C_data
	.4byte 0x00000000
.endobj gap_04_00019F5C_data

# .data:0x18 | 0x19F60 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x19F68 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x19F6C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x19F70 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x19F78 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x19F7C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x19F80 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x19F84 | size: 0x4
.obj gap_04_00019F84_data, global
.hidden gap_04_00019F84_data
	.4byte 0x00000000
.endobj gap_04_00019F84_data

# .data:0x40 | 0x19F88 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x19F90 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x19F94 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x19F98 | size: 0xC4
.obj unit_patakuri_8_data_19F98, global
	.4byte 0x00000002
	.4byte str_btl_un_patakuri_gon_00006f08
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
	.4byte str_SFX_ENM_PATAKURI_DAM_gon_00006f18
	.4byte str_SFX_BTL_DAMAGE_FIRE1_gon_00006f34
	.4byte str_SFX_BTL_DAMAGE_ICE1_gon_00006f4c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_gon_00006f60
	.4byte 0x00040004
	.4byte regist_patakuri
	.4byte 0x01000000
	.4byte parts_patakuri
	.4byte init_event_patakuri
	.4byte data_table_patakuri
.endobj unit_patakuri_8_data_19F98

# .data:0x114 | 0x1A05C | size: 0x5
.obj defence_patakuri, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_patakuri

# .data:0x119 | 0x1A061 | size: 0x3
.obj gap_04_0001A061_data, global
.hidden gap_04_0001A061_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001A061_data

# .data:0x11C | 0x1A064 | size: 0x5
.obj defence_patakuri_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_patakuri_attr

# .data:0x121 | 0x1A069 | size: 0x3
.obj gap_04_0001A069_data, global
.hidden gap_04_0001A069_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001A069_data

# .data:0x124 | 0x1A06C | size: 0x16
.obj regist_patakuri, local
	.4byte 0x646E7864
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x6E646464
	.2byte 0x6496
.endobj regist_patakuri

# .data:0x13A | 0x1A082 | size: 0x2
.obj gap_04_0001A082_data, global
.hidden gap_04_0001A082_data
	.2byte 0x0000
.endobj gap_04_0001A082_data

# .data:0x13C | 0x1A084 | size: 0xC0
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

# .data:0x1FC | 0x1A144 | size: 0x4C
.obj parts_patakuri, local
	.4byte 0x00000001
	.4byte str_btl_un_patakuri_gon_00006f08
	.4byte str_c_kuribo_gon_00006f7c
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

# .data:0x248 | 0x1A190 | size: 0x98
.obj pose_table_patakuri, local
	.4byte 0x00000001
	.4byte str_PTK_N_1_gon_00006f88
	.4byte 0x00000002
	.4byte str_PTK_Y_1_gon_00006f90
	.4byte 0x00000009
	.4byte str_PTK_Y_1_gon_00006f90
	.4byte 0x00000005
	.4byte str_PTK_K_1_gon_00006f98
	.4byte 0x00000004
	.4byte str_PTK_I_1_gon_00006fa0
	.4byte 0x00000003
	.4byte str_PTK_I_1_gon_00006fa0
	.4byte 0x0000001C
	.4byte str_PTK_S_1_gon_00006fa8
	.4byte 0x0000001D
	.4byte str_PTK_Q_1_gon_00006fb0
	.4byte 0x0000001E
	.4byte str_PTK_Q_1_gon_00006fb0
	.4byte 0x0000001F
	.4byte str_PTK_S_1_gon_00006fa8
	.4byte 0x00000027
	.4byte str_PTK_D_1_gon_00006fb8
	.4byte 0x00000032
	.4byte str_PTK_A_1_gon_00006fc0
	.4byte 0x0000002A
	.4byte str_PTK_R_1_gon_00006fc8
	.4byte 0x00000029
	.4byte str_PTK_R_2_gon_00006fd0
	.4byte 0x00000028
	.4byte str_PTK_W_1_gon_00006fd8
	.4byte 0x00000038
	.4byte str_PTK_I_1_gon_00006fa0
	.4byte 0x00000039
	.4byte str_PTK_I_1_gon_00006fa0
	.4byte 0x00000041
	.4byte str_PTK_T_1_gon_00006fe0
	.4byte 0x00000045
	.4byte str_PTK_S_1_gon_00006fa8
.endobj pose_table_patakuri

# .data:0x2E0 | 0x1A228 | size: 0x18
.obj data_table_patakuri, local
	.4byte 0x0000000E
	.4byte dmg_fall_event
	.4byte 0x00000030
	.4byte patakuri_dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_patakuri

# .data:0x2F8 | 0x1A240 | size: 0x8C
.obj pose_sound_timing_table, local
	.4byte str_PTK_S_1_gon_00006fa8
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_gon_00006fe8
	.4byte 0x00000001
	.4byte str_PTK_W_1_gon_00006fd8
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_MOV_gon_00007000
	.4byte 0x00000001
	.4byte str_PTK_R_1_gon_00006fc8
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_MOV_gon_00007000
	.4byte 0x00000001
	.4byte str_PTK_K_1_gon_00006f98
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_gon_00006fe8
	.4byte 0x00000001
	.4byte str_PTK_N_1_gon_00006f88
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_gon_00006fe8
	.4byte 0x00000001
	.4byte str_PTK_I_1_gon_00006fa0
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_gon_00006fe8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
.endobj pose_sound_timing_table

# .data:0x384 | 0x1A2CC | size: 0x68
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

# .data:0x3EC | 0x1A334 | size: 0x1AC
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
	.4byte str_SFX_ENM_FALL1_gon_00007018
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
	.4byte str_SFX_ENM_KURI_MOVE1_gon_00007028
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

# .data:0x598 | 0x1A4E0 | size: 0x4C
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

# .data:0x5E4 | 0x1A52C | size: 0x61C
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
	.4byte str_SFX_ENM_PATAKURI_MOV_gon_0000703c
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
	.4byte str_SFX_ENM_PATAKURI_MOV_gon_00007054
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
	.4byte str_SFX_ENM_PATAKURI_MOV_gon_00007054
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
	.4byte str_SFX_ENM_PATAKURI_MOV_gon_00007000
	.4byte str_SFX_ENM_PATAKURI_MOV_gon_00007000
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

# .data:0xC00 | 0x1AB48 | size: 0x30
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

# .data:0xC30 | 0x1AB78 | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_gon_0000706c
	.4byte 0x00000002
	.4byte str_KUR_Y_1_gon_00007074
	.4byte 0x00000009
	.4byte str_KUR_Y_1_gon_00007074
	.4byte 0x00000005
	.4byte str_KUR_K_1_gon_0000707c
	.4byte 0x00000004
	.4byte str_KUR_I_1_gon_00007084
	.4byte 0x00000003
	.4byte str_KUR_I_1_gon_00007084
	.4byte 0x0000001C
	.4byte str_KUR_S_1_gon_0000708c
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_gon_00007094
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_gon_00007094
	.4byte 0x0000001F
	.4byte str_KUR_S_1_gon_0000708c
	.4byte 0x00000027
	.4byte str_KUR_D_1_gon_0000709c
	.4byte 0x00000032
	.4byte str_KUR_A_1_gon_000070a4
	.4byte 0x00000033
	.4byte str_KUR_A_2_gon_000070ac
	.4byte 0x0000002A
	.4byte str_KUR_R_1_gon_000070b4
	.4byte 0x00000029
	.4byte str_KUR_R_2_gon_000070bc
	.4byte 0x00000028
	.4byte str_KUR_W_1_gon_000070c4
	.4byte 0x00000038
	.4byte str_KUR_I_1_gon_00007084
	.4byte 0x00000039
	.4byte str_KUR_I_1_gon_00007084
	.4byte 0x00000041
	.4byte str_KUR_T_1_gon_000070cc
	.4byte 0x00000045
	.4byte str_KUR_S_1_gon_0000708c
.endobj pose_table

# .data:0xCD0 | 0x1AC18 | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0xCE0 | 0x1AC28 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0xCE5 | 0x1AC2D | size: 0x3
.obj gap_04_0001AC2D_data, global
.hidden gap_04_0001AC2D_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001AC2D_data

# .data:0xCE8 | 0x1AC30 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0xCED | 0x1AC35 | size: 0x3
.obj gap_04_0001AC35_data, global
.hidden gap_04_0001AC35_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001AC35_data

# .data:0xCF0 | 0x1AC38 | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x64646464
	.2byte 0x6496
.endobj regist

# .data:0xD06 | 0x1AC4E | size: 0x2
.obj gap_04_0001AC4E_data, global
.hidden gap_04_0001AC4E_data
	.2byte 0x0000
.endobj gap_04_0001AC4E_data

# .data:0xD08 | 0x1AC50 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_gon_000070d4
	.4byte str_c_kuribo_gon_00006f7c
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

# .data:0xD54 | 0x1AC9C | size: 0xC0
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

# .data:0xE14 | 0x1AD5C | size: 0xA8
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
	.4byte str_SFX_ENM_KURI_MOVE1_gon_00007028
	.4byte str_SFX_ENM_KURI_MOVE2_gon_000070e4
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_gon_00007028
	.4byte str_SFX_ENM_KURI_MOVE2_gon_000070e4
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_gon_000070f8
	.4byte str_SFX_ENM_KURI_LANDING_gon_0000710c
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xEBC | 0x1AE04 | size: 0x28
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

# .data:0xEE4 | 0x1AE2C | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0xEEC | 0x1AE34 | size: 0x7B0
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
	.4byte str_SFX_ENM_KURI_ATTACK1_gon_00007128
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
	.4byte str_SFX_ENM_KURI_MOVE1_gon_00007028
	.4byte str_SFX_ENM_KURI_MOVE2_gon_000070e4
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

# .data:0x169C | 0x1B5E4 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x16B4 | 0x1B5FC | size: 0x4
.obj gap_04_0001B5FC_data, global
.hidden gap_04_0001B5FC_data
	.4byte 0x00000000
.endobj gap_04_0001B5FC_data
