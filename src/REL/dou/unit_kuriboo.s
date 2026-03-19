.include "macros.inc"
.file "unit_kuriboo.o"

# 0x000019B4..0x00001ACC | size: 0x118
.text
.balign 4

# .text:0x0 | 0x19B4 | size: 0x118
.fn krb_get_dir, local
/* 000019B4 00001A78  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 000019B8 00001A7C  7C 08 02 A6 */	mflr r0
/* 000019BC 00001A80  90 01 00 64 */	stw r0, 0x64(r1)
/* 000019C0 00001A84  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 000019C4 00001A88  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 000019C8 00001A8C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 000019CC 00001A90  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 000019D0 00001A94  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 000019D4 00001A98  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 000019D8 00001A9C  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 000019DC 00001AA0  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 000019E0 00001AA4  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 000019E4 00001AA8  7C 7E 1B 78 */	mr r30, r3
/* 000019E8 00001AAC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000019EC 00001AB0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000019F0 00001AB4  4B FF E6 7D */	bl evtGetFloat
/* 000019F4 00001AB8  FF 80 08 90 */	fmr f28, f1
/* 000019F8 00001ABC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000019FC 00001AC0  7F C3 F3 78 */	mr r3, r30
/* 00001A00 00001AC4  4B FF E6 6D */	bl evtGetFloat
/* 00001A04 00001AC8  FF A0 08 90 */	fmr f29, f1
/* 00001A08 00001ACC  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00001A0C 00001AD0  7F C3 F3 78 */	mr r3, r30
/* 00001A10 00001AD4  4B FF E6 5D */	bl evtGetFloat
/* 00001A14 00001AD8  FF C0 08 90 */	fmr f30, f1
/* 00001A18 00001ADC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00001A1C 00001AE0  7F C3 F3 78 */	mr r3, r30
/* 00001A20 00001AE4  4B FF E6 4D */	bl evtGetFloat
/* 00001A24 00001AE8  FF E0 08 90 */	fmr f31, f1
/* 00001A28 00001AEC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00001A2C 00001AF0  7F C3 F3 78 */	mr r3, r30
/* 00001A30 00001AF4  4B FF E6 3D */	bl evtGetValue
/* 00001A34 00001AF8  3C 80 00 00 */	lis r4, zero_dou_00005cc8@ha
/* 00001A38 00001AFC  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00001A3C 00001B00  C0 04 00 00 */	lfs f0, zero_dou_00005cc8@l(r4)
/* 00001A40 00001B04  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00001A44 00001B08  7C 65 1B 78 */	mr r5, r3
/* 00001A48 00001B0C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00001A4C 00001B10  40 82 00 20 */	bne .L_00001A6C
/* 00001A50 00001B14  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00001A54 00001B18  40 82 00 18 */	bne .L_00001A6C
/* 00001A58 00001B1C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00001A5C 00001B20  7F C3 F3 78 */	mr r3, r30
/* 00001A60 00001B24  4B FF E6 0D */	bl evtSetValue
/* 00001A64 00001B28  38 60 00 02 */	li r3, 0x2
/* 00001A68 00001B2C  48 00 00 30 */	b .L_00001A98
.L_00001A6C:
/* 00001A6C 00001B30  3C 60 00 00 */	lis r3, zero_dou_00005cc8@ha
/* 00001A70 00001B34  C0 63 00 00 */	lfs f3, zero_dou_00005cc8@l(r3)
/* 00001A74 00001B38  FC 80 18 90 */	fmr f4, f3
/* 00001A78 00001B3C  4B FF E5 F5 */	bl angleABf_1
/* 00001A7C 00001B40  FC 00 08 1E */	fctiwz f0, f1
/* 00001A80 00001B44  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00001A84 00001B48  7F C3 F3 78 */	mr r3, r30
/* 00001A88 00001B4C  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00001A8C 00001B50  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00001A90 00001B54  4B FF E5 DD */	bl evtSetValue
/* 00001A94 00001B58  38 60 00 02 */	li r3, 0x2
.L_00001A98:
/* 00001A98 00001B5C  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00001A9C 00001B60  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00001AA0 00001B64  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00001AA4 00001B68  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00001AA8 00001B6C  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00001AAC 00001B70  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00001AB0 00001B74  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 00001AB4 00001B78  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00001AB8 00001B7C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00001ABC 00001B80  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00001AC0 00001B84  7C 08 03 A6 */	mtlr r0
/* 00001AC4 00001B88  38 21 00 60 */	addi r1, r1, 0x60
/* 00001AC8 00001B8C  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00001EE8..0x00002040 | size: 0x158
.rodata
.balign 8

# .rodata:0x0 | 0x1EE8 | size: 0xF
.obj str_btl_un_kuriboo_dou_00005b78, local
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_dou_00005b78

# .rodata:0xF | 0x1EF7 | size: 0x1
.obj gap_03_00001EF7_rodata, global
.hidden gap_03_00001EF7_rodata
	.byte 0x00
.endobj gap_03_00001EF7_rodata

# .rodata:0x10 | 0x1EF8 | size: 0x16
.obj str_SFX_ENM_KURI_DAMAGED_dou_00005b88, local
	.string "SFX_ENM_KURI_DAMAGED1"
.endobj str_SFX_ENM_KURI_DAMAGED_dou_00005b88

# .rodata:0x26 | 0x1F0E | size: 0x2
.obj gap_03_00001F0E_rodata, global
.hidden gap_03_00001F0E_rodata
	.2byte 0x0000
.endobj gap_03_00001F0E_rodata

# .rodata:0x28 | 0x1F10 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_dou_00005ba0, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_dou_00005ba0

# .rodata:0x3D | 0x1F25 | size: 0x3
.obj gap_03_00001F25_rodata, global
.hidden gap_03_00001F25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F25_rodata

# .rodata:0x40 | 0x1F28 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_dou_00005bb8, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_dou_00005bb8

# .rodata:0x54 | 0x1F3C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_dou_00005bcc, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_dou_00005bcc

# .rodata:0x6D | 0x1F55 | size: 0x3
.obj gap_03_00001F55_rodata, global
.hidden gap_03_00001F55_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F55_rodata

# .rodata:0x70 | 0x1F58 | size: 0x8
.obj str_KUR_N_1_dou_00005be8, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_dou_00005be8

# .rodata:0x78 | 0x1F60 | size: 0x8
.obj str_KUR_Y_1_dou_00005bf0, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_dou_00005bf0

# .rodata:0x80 | 0x1F68 | size: 0x8
.obj str_KUR_K_1_dou_00005bf8, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_dou_00005bf8

# .rodata:0x88 | 0x1F70 | size: 0x8
.obj str_KUR_I_1_dou_00005c00, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_dou_00005c00

# .rodata:0x90 | 0x1F78 | size: 0x8
.obj str_KUR_S_1_dou_00005c08, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_dou_00005c08

# .rodata:0x98 | 0x1F80 | size: 0x8
.obj str_KUR_Q_1_dou_00005c10, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_dou_00005c10

# .rodata:0xA0 | 0x1F88 | size: 0x8
.obj str_KUR_D_1_dou_00005c18, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_dou_00005c18

# .rodata:0xA8 | 0x1F90 | size: 0x8
.obj str_KUR_A_1_dou_00005c20, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_dou_00005c20

# .rodata:0xB0 | 0x1F98 | size: 0x8
.obj str_KUR_A_2_dou_00005c28, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_dou_00005c28

# .rodata:0xB8 | 0x1FA0 | size: 0x8
.obj str_KUR_R_1_dou_00005c30, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_dou_00005c30

# .rodata:0xC0 | 0x1FA8 | size: 0x8
.obj str_KUR_R_2_dou_00005c38, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_dou_00005c38

# .rodata:0xC8 | 0x1FB0 | size: 0x8
.obj str_KUR_W_1_dou_00005c40, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_dou_00005c40

# .rodata:0xD0 | 0x1FB8 | size: 0x8
.obj str_KUR_T_1_dou_00005c48, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_dou_00005c48

# .rodata:0xD8 | 0x1FC0 | size: 0x9
.obj str_c_kuribo_dou_00005c50, local
	.string "c_kuribo"
.endobj str_c_kuribo_dou_00005c50

# .rodata:0xE1 | 0x1FC9 | size: 0x3
.obj gap_03_00001FC9_rodata, global
.hidden gap_03_00001FC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001FC9_rodata

# .rodata:0xE4 | 0x1FCC | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_dou_00005c5c, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_dou_00005c5c

# .rodata:0xF7 | 0x1FDF | size: 0x1
.obj gap_03_00001FDF_rodata, global
.hidden gap_03_00001FDF_rodata
	.byte 0x00
.endobj gap_03_00001FDF_rodata

# .rodata:0xF8 | 0x1FE0 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_dou_00005c70, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_dou_00005c70

# .rodata:0x10B | 0x1FF3 | size: 0x1
.obj gap_03_00001FF3_rodata, global
.hidden gap_03_00001FF3_rodata
	.byte 0x00
.endobj gap_03_00001FF3_rodata

# .rodata:0x10C | 0x1FF4 | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_dou_00005c84, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_dou_00005c84

# .rodata:0x11F | 0x2007 | size: 0x1
.obj gap_03_00002007_rodata, global
.hidden gap_03_00002007_rodata
	.byte 0x00
.endobj gap_03_00002007_rodata

# .rodata:0x120 | 0x2008 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_dou_00005c98, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_dou_00005c98

# .rodata:0x136 | 0x201E | size: 0x2
.obj gap_03_0000201E_rodata, global
.hidden gap_03_0000201E_rodata
	.2byte 0x0000
.endobj gap_03_0000201E_rodata

# .rodata:0x138 | 0x2020 | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_dou_00005cb0, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_dou_00005cb0
	.byte 0x00, 0x00, 0x00

# .rodata:0x150 | 0x2038 | size: 0x4
.obj zero_dou_00005cc8, local
	.float 0
.endobj zero_dou_00005cc8

# .rodata:0x154 | 0x203C | size: 0x4
.obj gap_03_0000203C_rodata, global
.hidden gap_03_0000203C_rodata
	.4byte 0x00000000
.endobj gap_03_0000203C_rodata

# 0x000110A8..0x00011C40 | size: 0xB98
.data
.balign 8

# .data:0x0 | 0x110A8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x110B0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x110B4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x110B8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x110BC | size: 0x4
.obj gap_04_000110BC_data, global
.hidden gap_04_000110BC_data
	.4byte 0x00000000
.endobj gap_04_000110BC_data

# .data:0x18 | 0x110C0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x110C8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x110CC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x110D0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x110D8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x110DC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x110E0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x110E4 | size: 0x4
.obj gap_04_000110E4_data, global
.hidden gap_04_000110E4_data
	.4byte 0x00000000
.endobj gap_04_000110E4_data

# .data:0x40 | 0x110E8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x110F0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x110F4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x110F8 | size: 0xC4
.obj unit_kuriboo_5_data_110F8, global
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_dou_00005b78
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
	.4byte str_SFX_ENM_KURI_DAMAGED_dou_00005b88
	.4byte str_SFX_BTL_DAMAGE_FIRE1_dou_00005ba0
	.4byte str_SFX_BTL_DAMAGE_ICE1_dou_00005bb8
	.4byte str_SFX_BTL_DAMAGE_BIRIB_dou_00005bcc
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_kuriboo_5_data_110F8

# .data:0x114 | 0x111BC | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_dou_00005be8
	.4byte 0x00000002
	.4byte str_KUR_Y_1_dou_00005bf0
	.4byte 0x00000009
	.4byte str_KUR_Y_1_dou_00005bf0
	.4byte 0x00000005
	.4byte str_KUR_K_1_dou_00005bf8
	.4byte 0x00000004
	.4byte str_KUR_I_1_dou_00005c00
	.4byte 0x00000003
	.4byte str_KUR_I_1_dou_00005c00
	.4byte 0x0000001C
	.4byte str_KUR_S_1_dou_00005c08
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_dou_00005c10
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_dou_00005c10
	.4byte 0x0000001F
	.4byte str_KUR_S_1_dou_00005c08
	.4byte 0x00000027
	.4byte str_KUR_D_1_dou_00005c18
	.4byte 0x00000032
	.4byte str_KUR_A_1_dou_00005c20
	.4byte 0x00000033
	.4byte str_KUR_A_2_dou_00005c28
	.4byte 0x0000002A
	.4byte str_KUR_R_1_dou_00005c30
	.4byte 0x00000029
	.4byte str_KUR_R_2_dou_00005c38
	.4byte 0x00000028
	.4byte str_KUR_W_1_dou_00005c40
	.4byte 0x00000038
	.4byte str_KUR_I_1_dou_00005c00
	.4byte 0x00000039
	.4byte str_KUR_I_1_dou_00005c00
	.4byte 0x00000041
	.4byte str_KUR_T_1_dou_00005c48
	.4byte 0x00000045
	.4byte str_KUR_S_1_dou_00005c08
.endobj pose_table

# .data:0x1B4 | 0x1125C | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0x1126C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1C9 | 0x11271 | size: 0x3
.obj gap_04_00011271_data, global
.hidden gap_04_00011271_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00011271_data

# .data:0x1CC | 0x11274 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1D1 | 0x11279 | size: 0x3
.obj gap_04_00011279_data, global
.hidden gap_04_00011279_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00011279_data

# .data:0x1D4 | 0x1127C | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x64646464
	.2byte 0x6496
.endobj regist

# .data:0x1EA | 0x11292 | size: 0x2
.obj gap_04_00011292_data, global
.hidden gap_04_00011292_data
	.2byte 0x0000
.endobj gap_04_00011292_data

# .data:0x1EC | 0x11294 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_dou_00005b78
	.4byte str_c_kuribo_dou_00005c50
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

# .data:0x238 | 0x112E0 | size: 0xC0
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

# .data:0x2F8 | 0x113A0 | size: 0xA8
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
	.4byte str_SFX_ENM_KURI_MOVE1_dou_00005c5c
	.4byte str_SFX_ENM_KURI_MOVE2_dou_00005c70
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_dou_00005c5c
	.4byte str_SFX_ENM_KURI_MOVE2_dou_00005c70
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_dou_00005c84
	.4byte str_SFX_ENM_KURI_LANDING_dou_00005c98
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3A0 | 0x11448 | size: 0x28
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

# .data:0x3C8 | 0x11470 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x3D0 | 0x11478 | size: 0x7B0
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
	.4byte str_SFX_ENM_KURI_ATTACK1_dou_00005cb0
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
	.4byte str_SFX_ENM_KURI_MOVE1_dou_00005c5c
	.4byte str_SFX_ENM_KURI_MOVE2_dou_00005c70
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

# .data:0xB80 | 0x11C28 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
