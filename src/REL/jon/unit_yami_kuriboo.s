.include "macros.inc"
.file "unit_yami_kuriboo.o"

# 0x00000D04..0x00000E1C | size: 0x118
.text
.balign 4

# .text:0x0 | 0xD04 | size: 0x118
.fn krb_get_dir, local
/* 00000D04 00000DC8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00000D08 00000DCC  7C 08 02 A6 */	mflr r0
/* 00000D0C 00000DD0  90 01 00 64 */	stw r0, 0x64(r1)
/* 00000D10 00000DD4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00000D14 00000DD8  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00000D18 00000DDC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00000D1C 00000DE0  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00000D20 00000DE4  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00000D24 00000DE8  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00000D28 00000DEC  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00000D2C 00000DF0  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00000D30 00000DF4  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00000D34 00000DF8  7C 7E 1B 78 */	mr r30, r3
/* 00000D38 00000DFC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000D3C 00000E00  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000D40 00000E04  4B FF FD 31 */	bl evtGetFloat
/* 00000D44 00000E08  FF 80 08 90 */	fmr f28, f1
/* 00000D48 00000E0C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000D4C 00000E10  7F C3 F3 78 */	mr r3, r30
/* 00000D50 00000E14  4B FF FD 21 */	bl evtGetFloat
/* 00000D54 00000E18  FF A0 08 90 */	fmr f29, f1
/* 00000D58 00000E1C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00000D5C 00000E20  7F C3 F3 78 */	mr r3, r30
/* 00000D60 00000E24  4B FF FD 11 */	bl evtGetFloat
/* 00000D64 00000E28  FF C0 08 90 */	fmr f30, f1
/* 00000D68 00000E2C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00000D6C 00000E30  7F C3 F3 78 */	mr r3, r30
/* 00000D70 00000E34  4B FF FD 01 */	bl evtGetFloat
/* 00000D74 00000E38  FF E0 08 90 */	fmr f31, f1
/* 00000D78 00000E3C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000D7C 00000E40  7F C3 F3 78 */	mr r3, r30
/* 00000D80 00000E44  4B FF FC F1 */	bl evtGetValue
/* 00000D84 00000E48  3C 80 00 00 */	lis r4, zero_jon_00008b54@ha
/* 00000D88 00000E4C  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00000D8C 00000E50  C0 04 00 00 */	lfs f0, zero_jon_00008b54@l(r4)
/* 00000D90 00000E54  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00000D94 00000E58  7C 65 1B 78 */	mr r5, r3
/* 00000D98 00000E5C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00000D9C 00000E60  40 82 00 20 */	bne .L_00000DBC
/* 00000DA0 00000E64  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00000DA4 00000E68  40 82 00 18 */	bne .L_00000DBC
/* 00000DA8 00000E6C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000DAC 00000E70  7F C3 F3 78 */	mr r3, r30
/* 00000DB0 00000E74  4B FF FC C1 */	bl evtSetValue
/* 00000DB4 00000E78  38 60 00 02 */	li r3, 0x2
/* 00000DB8 00000E7C  48 00 00 30 */	b .L_00000DE8
.L_00000DBC:
/* 00000DBC 00000E80  3C 60 00 00 */	lis r3, zero_jon_00008b54@ha
/* 00000DC0 00000E84  C0 63 00 00 */	lfs f3, zero_jon_00008b54@l(r3)
/* 00000DC4 00000E88  FC 80 18 90 */	fmr f4, f3
/* 00000DC8 00000E8C  4B FF FC A9 */	bl angleABf_1
/* 00000DCC 00000E90  FC 00 08 1E */	fctiwz f0, f1
/* 00000DD0 00000E94  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000DD4 00000E98  7F C3 F3 78 */	mr r3, r30
/* 00000DD8 00000E9C  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00000DDC 00000EA0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00000DE0 00000EA4  4B FF FC 91 */	bl evtSetValue
/* 00000DE4 00000EA8  38 60 00 02 */	li r3, 0x2
.L_00000DE8:
/* 00000DE8 00000EAC  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00000DEC 00000EB0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00000DF0 00000EB4  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00000DF4 00000EB8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00000DF8 00000EBC  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00000DFC 00000EC0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00000E00 00000EC4  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 00000E04 00000EC8  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00000E08 00000ECC  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00000E0C 00000ED0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00000E10 00000ED4  7C 08 03 A6 */	mtlr r0
/* 00000E14 00000ED8  38 21 00 60 */	addi r1, r1, 0x60
/* 00000E18 00000EDC  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x000019D0..0x00001B28 | size: 0x158
.rodata
.balign 8

# .rodata:0x0 | 0x19D0 | size: 0x14
.obj str_btl_un_yami_kuriboo_jon_00008a00, local
	.string "btl_un_yami_kuriboo"
.endobj str_btl_un_yami_kuriboo_jon_00008a00

# .rodata:0x14 | 0x19E4 | size: 0x16
.obj str_SFX_ENM_KURI_DAMAGED_jon_00008a14, local
	.string "SFX_ENM_KURI_DAMAGED1"
.endobj str_SFX_ENM_KURI_DAMAGED_jon_00008a14

# .rodata:0x2A | 0x19FA | size: 0x2
.obj gap_03_000019FA_rodata, global
.hidden gap_03_000019FA_rodata
	.2byte 0x0000
.endobj gap_03_000019FA_rodata

# .rodata:0x2C | 0x19FC | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_00008a2c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_00008a2c

# .rodata:0x41 | 0x1A11 | size: 0x3
.obj gap_03_00001A11_rodata, global
.hidden gap_03_00001A11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A11_rodata

# .rodata:0x44 | 0x1A14 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_00008a44, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_00008a44

# .rodata:0x58 | 0x1A28 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_00008a58, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_00008a58

# .rodata:0x71 | 0x1A41 | size: 0x3
.obj gap_03_00001A41_rodata, global
.hidden gap_03_00001A41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A41_rodata

# .rodata:0x74 | 0x1A44 | size: 0x8
.obj str_KUR_N_1_jon_00008a74, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_jon_00008a74

# .rodata:0x7C | 0x1A4C | size: 0x8
.obj str_KUR_Y_1_jon_00008a7c, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_jon_00008a7c

# .rodata:0x84 | 0x1A54 | size: 0x8
.obj str_KUR_K_1_jon_00008a84, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_jon_00008a84

# .rodata:0x8C | 0x1A5C | size: 0x8
.obj str_KUR_I_1_jon_00008a8c, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_jon_00008a8c

# .rodata:0x94 | 0x1A64 | size: 0x8
.obj str_KUR_S_1_jon_00008a94, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_jon_00008a94

# .rodata:0x9C | 0x1A6C | size: 0x8
.obj str_KUR_Q_1_jon_00008a9c, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_jon_00008a9c

# .rodata:0xA4 | 0x1A74 | size: 0x8
.obj str_KUR_D_1_jon_00008aa4, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_jon_00008aa4

# .rodata:0xAC | 0x1A7C | size: 0x8
.obj str_KUR_A_1_jon_00008aac, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_jon_00008aac

# .rodata:0xB4 | 0x1A84 | size: 0x8
.obj str_KUR_A_2_jon_00008ab4, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_jon_00008ab4

# .rodata:0xBC | 0x1A8C | size: 0x8
.obj str_KUR_R_1_jon_00008abc, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_jon_00008abc

# .rodata:0xC4 | 0x1A94 | size: 0x8
.obj str_KUR_R_2_jon_00008ac4, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_jon_00008ac4

# .rodata:0xCC | 0x1A9C | size: 0x8
.obj str_KUR_W_1_jon_00008acc, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_jon_00008acc

# .rodata:0xD4 | 0x1AA4 | size: 0x8
.obj str_KUR_T_1_jon_00008ad4, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_jon_00008ad4

# .rodata:0xDC | 0x1AAC | size: 0xB
.obj str_c_kuribo_y_jon_00008adc, local
	.string "c_kuribo_y"
.endobj str_c_kuribo_y_jon_00008adc

# .rodata:0xE7 | 0x1AB7 | size: 0x1
.obj gap_03_00001AB7_rodata, global
.hidden gap_03_00001AB7_rodata
	.byte 0x00
.endobj gap_03_00001AB7_rodata

# .rodata:0xE8 | 0x1AB8 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_jon_00008ae8, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_jon_00008ae8

# .rodata:0xFB | 0x1ACB | size: 0x1
.obj gap_03_00001ACB_rodata, global
.hidden gap_03_00001ACB_rodata
	.byte 0x00
.endobj gap_03_00001ACB_rodata

# .rodata:0xFC | 0x1ACC | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_jon_00008afc, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_jon_00008afc

# .rodata:0x10F | 0x1ADF | size: 0x1
.obj gap_03_00001ADF_rodata, global
.hidden gap_03_00001ADF_rodata
	.byte 0x00
.endobj gap_03_00001ADF_rodata

# .rodata:0x110 | 0x1AE0 | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_jon_00008b10, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_jon_00008b10

# .rodata:0x123 | 0x1AF3 | size: 0x1
.obj gap_03_00001AF3_rodata, global
.hidden gap_03_00001AF3_rodata
	.byte 0x00
.endobj gap_03_00001AF3_rodata

# .rodata:0x124 | 0x1AF4 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_jon_00008b24, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_jon_00008b24

# .rodata:0x13A | 0x1B0A | size: 0x2
.obj gap_03_00001B0A_rodata, global
.hidden gap_03_00001B0A_rodata
	.2byte 0x0000
.endobj gap_03_00001B0A_rodata

# .rodata:0x13C | 0x1B0C | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_jon_00008b3c, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_jon_00008b3c
	.byte 0x00, 0x00, 0x00

# .rodata:0x154 | 0x1B24 | size: 0x4
.obj zero_jon_00008b54, local
	.float 0
.endobj zero_jon_00008b54

# 0x00016FB0..0x00017B48 | size: 0xB98
.data
.balign 8

# .data:0x0 | 0x16FB0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x16FB8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x16FBC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x16FC0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x16FC4 | size: 0x4
.obj gap_04_00016FC4_data, global
.hidden gap_04_00016FC4_data
	.4byte 0x00000000
.endobj gap_04_00016FC4_data

# .data:0x18 | 0x16FC8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x16FD0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x16FD4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x16FD8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x16FE0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x16FE4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x16FE8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x16FEC | size: 0x4
.obj gap_04_00016FEC_data, global
.hidden gap_04_00016FEC_data
	.4byte 0x00000000
.endobj gap_04_00016FEC_data

# .data:0x40 | 0x16FF0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x16FF8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x16FFC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x17000 | size: 0xC4
.obj unit_yami_kuriboo_14_data_17000, global
	.4byte 0x00000099
	.4byte str_btl_un_yami_kuriboo_jon_00008a00
	.4byte 0x00070000
	.4byte 0x01010B00
	.4byte 0x02460032
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
	.4byte str_SFX_ENM_KURI_DAMAGED_jon_00008a14
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_00008a2c
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_00008a44
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_00008a58
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_yami_kuriboo_14_data_17000

# .data:0x114 | 0x170C4 | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_jon_00008a74
	.4byte 0x00000002
	.4byte str_KUR_Y_1_jon_00008a7c
	.4byte 0x00000009
	.4byte str_KUR_Y_1_jon_00008a7c
	.4byte 0x00000005
	.4byte str_KUR_K_1_jon_00008a84
	.4byte 0x00000004
	.4byte str_KUR_I_1_jon_00008a8c
	.4byte 0x00000003
	.4byte str_KUR_I_1_jon_00008a8c
	.4byte 0x0000001C
	.4byte str_KUR_S_1_jon_00008a94
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_jon_00008a9c
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_jon_00008a9c
	.4byte 0x0000001F
	.4byte str_KUR_S_1_jon_00008a94
	.4byte 0x00000027
	.4byte str_KUR_D_1_jon_00008aa4
	.4byte 0x00000032
	.4byte str_KUR_A_1_jon_00008aac
	.4byte 0x00000033
	.4byte str_KUR_A_2_jon_00008ab4
	.4byte 0x0000002A
	.4byte str_KUR_R_1_jon_00008abc
	.4byte 0x00000029
	.4byte str_KUR_R_2_jon_00008ac4
	.4byte 0x00000028
	.4byte str_KUR_W_1_jon_00008acc
	.4byte 0x00000038
	.4byte str_KUR_I_1_jon_00008a8c
	.4byte 0x00000039
	.4byte str_KUR_I_1_jon_00008a8c
	.4byte 0x00000041
	.4byte str_KUR_T_1_jon_00008ad4
	.4byte 0x00000045
	.4byte str_KUR_S_1_jon_00008a94
.endobj pose_table

# .data:0x1B4 | 0x17164 | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0x17174 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1C9 | 0x17179 | size: 0x3
.obj gap_04_00017179_data, global
.hidden gap_04_00017179_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00017179_data

# .data:0x1CC | 0x1717C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1D1 | 0x17181 | size: 0x3
.obj gap_04_00017181_data, global
.hidden gap_04_00017181_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00017181_data

# .data:0x1D4 | 0x17184 | size: 0x16
.obj regist, local
	.ascii "PZPdPddPdZdZdZPZPdPddP"
.endobj regist

# .data:0x1EA | 0x1719A | size: 0x2
.obj gap_04_0001719A_data, global
.hidden gap_04_0001719A_data
	.2byte 0x0000
.endobj gap_04_0001719A_data

# .data:0x1EC | 0x1719C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_yami_kuriboo_jon_00008a00
	.4byte str_c_kuribo_y_jon_00008adc
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

# .data:0x238 | 0x171E8 | size: 0xC0
.obj weapon_kuriboo_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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

# .data:0x2F8 | 0x172A8 | size: 0xA8
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
	.4byte str_SFX_ENM_KURI_MOVE1_jon_00008ae8
	.4byte str_SFX_ENM_KURI_MOVE2_jon_00008afc
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_jon_00008ae8
	.4byte str_SFX_ENM_KURI_MOVE2_jon_00008afc
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_jon_00008b10
	.4byte str_SFX_ENM_KURI_LANDING_jon_00008b24
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3A0 | 0x17350 | size: 0x28
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

# .data:0x3C8 | 0x17378 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x3D0 | 0x17380 | size: 0x7B0
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
	.4byte str_SFX_ENM_KURI_ATTACK1_jon_00008b3c
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
	.4byte str_SFX_ENM_KURI_MOVE1_jon_00008ae8
	.4byte str_SFX_ENM_KURI_MOVE2_jon_00008afc
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

# .data:0xB80 | 0x17B30 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
