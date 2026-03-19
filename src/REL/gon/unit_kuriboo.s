.include "macros.inc"
.file "unit_kuriboo.o"

# 0x000024B4..0x000025CC | size: 0x118
.text
.balign 4

# .text:0x0 | 0x24B4 | size: 0x118
.fn krb_get_dir, local
/* 000024B4 00002598  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 000024B8 0000259C  7C 08 02 A6 */	mflr r0
/* 000024BC 000025A0  90 01 00 64 */	stw r0, 0x64(r1)
/* 000024C0 000025A4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 000024C4 000025A8  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 000024C8 000025AC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 000024CC 000025B0  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 000024D0 000025B4  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 000024D4 000025B8  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 000024D8 000025BC  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 000024DC 000025C0  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 000024E0 000025C4  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 000024E4 000025C8  7C 7E 1B 78 */	mr r30, r3
/* 000024E8 000025CC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000024EC 000025D0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000024F0 000025D4  4B FF DC F1 */	bl evtGetFloat
/* 000024F4 000025D8  FF 80 08 90 */	fmr f28, f1
/* 000024F8 000025DC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000024FC 000025E0  7F C3 F3 78 */	mr r3, r30
/* 00002500 000025E4  4B FF DC E1 */	bl evtGetFloat
/* 00002504 000025E8  FF A0 08 90 */	fmr f29, f1
/* 00002508 000025EC  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000250C 000025F0  7F C3 F3 78 */	mr r3, r30
/* 00002510 000025F4  4B FF DC D1 */	bl evtGetFloat
/* 00002514 000025F8  FF C0 08 90 */	fmr f30, f1
/* 00002518 000025FC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000251C 00002600  7F C3 F3 78 */	mr r3, r30
/* 00002520 00002604  4B FF DC C1 */	bl evtGetFloat
/* 00002524 00002608  FF E0 08 90 */	fmr f31, f1
/* 00002528 0000260C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000252C 00002610  7F C3 F3 78 */	mr r3, r30
/* 00002530 00002614  4B FF DC B1 */	bl evtGetValue
/* 00002534 00002618  3C 80 00 00 */	lis r4, zero_gon_00006aa8@ha
/* 00002538 0000261C  EC 3E E0 28 */	fsubs f1, f30, f28
/* 0000253C 00002620  C0 04 00 00 */	lfs f0, zero_gon_00006aa8@l(r4)
/* 00002540 00002624  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00002544 00002628  7C 65 1B 78 */	mr r5, r3
/* 00002548 0000262C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 0000254C 00002630  40 82 00 20 */	bne .L_0000256C
/* 00002550 00002634  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00002554 00002638  40 82 00 18 */	bne .L_0000256C
/* 00002558 0000263C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000255C 00002640  7F C3 F3 78 */	mr r3, r30
/* 00002560 00002644  4B FF DC 81 */	bl evtSetValue
/* 00002564 00002648  38 60 00 02 */	li r3, 0x2
/* 00002568 0000264C  48 00 00 30 */	b .L_00002598
.L_0000256C:
/* 0000256C 00002650  3C 60 00 00 */	lis r3, zero_gon_00006aa8@ha
/* 00002570 00002654  C0 63 00 00 */	lfs f3, zero_gon_00006aa8@l(r3)
/* 00002574 00002658  FC 80 18 90 */	fmr f4, f3
/* 00002578 0000265C  4B FF DC 69 */	bl angleABf_1
/* 0000257C 00002660  FC 00 08 1E */	fctiwz f0, f1
/* 00002580 00002664  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00002584 00002668  7F C3 F3 78 */	mr r3, r30
/* 00002588 0000266C  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000258C 00002670  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00002590 00002674  4B FF DC 51 */	bl evtSetValue
/* 00002594 00002678  38 60 00 02 */	li r3, 0x2
.L_00002598:
/* 00002598 0000267C  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 0000259C 00002680  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 000025A0 00002684  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 000025A4 00002688  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 000025A8 0000268C  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 000025AC 00002690  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 000025B0 00002694  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 000025B4 00002698  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 000025B8 0000269C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000025BC 000026A0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000025C0 000026A4  7C 08 03 A6 */	mtlr r0
/* 000025C4 000026A8  38 21 00 60 */	addi r1, r1, 0x60
/* 000025C8 000026AC  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00002BA0..0x00002CF8 | size: 0x158
.rodata
.balign 8

# .rodata:0x0 | 0x2BA0 | size: 0xF
.obj str_btl_un_kuriboo_gon_00006970, local
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_gon_00006970

# .rodata:0xF | 0x2BAF | size: 0x1
.obj gap_03_00002BAF_rodata, global
.hidden gap_03_00002BAF_rodata
	.byte 0x00
.endobj gap_03_00002BAF_rodata

# .rodata:0x10 | 0x2BB0 | size: 0x16
.obj str_SFX_ENM_KURI_DAMAGED_gon_00006980, local
	.string "SFX_ENM_KURI_DAMAGED1"
.endobj str_SFX_ENM_KURI_DAMAGED_gon_00006980

# .rodata:0x26 | 0x2BC6 | size: 0x2
.obj gap_03_00002BC6_rodata, global
.hidden gap_03_00002BC6_rodata
	.2byte 0x0000
.endobj gap_03_00002BC6_rodata

# .rodata:0x28 | 0x2BC8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_gon_00006998, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_gon_00006998

# .rodata:0x3D | 0x2BDD | size: 0x3
.obj gap_03_00002BDD_rodata, global
.hidden gap_03_00002BDD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002BDD_rodata

# .rodata:0x40 | 0x2BE0 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_gon_000069b0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_gon_000069b0

# .rodata:0x54 | 0x2BF4 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_gon_000069c4, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_gon_000069c4

# .rodata:0x6D | 0x2C0D | size: 0x3
.obj gap_03_00002C0D_rodata, global
.hidden gap_03_00002C0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002C0D_rodata

# .rodata:0x70 | 0x2C10 | size: 0x8
.obj str_KUR_N_1_gon_000069e0, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_gon_000069e0

# .rodata:0x78 | 0x2C18 | size: 0x8
.obj str_KUR_Y_1_gon_000069e8, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_gon_000069e8

# .rodata:0x80 | 0x2C20 | size: 0x8
.obj str_KUR_K_1_gon_000069f0, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_gon_000069f0

# .rodata:0x88 | 0x2C28 | size: 0x8
.obj str_KUR_I_1_gon_000069f8, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_gon_000069f8

# .rodata:0x90 | 0x2C30 | size: 0x8
.obj str_KUR_S_1_gon_00006a00, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_gon_00006a00

# .rodata:0x98 | 0x2C38 | size: 0x8
.obj str_KUR_Q_1_gon_00006a08, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_gon_00006a08

# .rodata:0xA0 | 0x2C40 | size: 0x8
.obj str_KUR_D_1_gon_00006a10, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_gon_00006a10

# .rodata:0xA8 | 0x2C48 | size: 0x8
.obj str_KUR_A_1_gon_00006a18, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_gon_00006a18

# .rodata:0xB0 | 0x2C50 | size: 0x8
.obj str_KUR_A_2_gon_00006a20, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_gon_00006a20

# .rodata:0xB8 | 0x2C58 | size: 0x8
.obj str_KUR_R_1_gon_00006a28, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_gon_00006a28

# .rodata:0xC0 | 0x2C60 | size: 0x8
.obj str_KUR_R_2_gon_00006a30, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_gon_00006a30

# .rodata:0xC8 | 0x2C68 | size: 0x8
.obj str_KUR_W_1_gon_00006a38, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_gon_00006a38

# .rodata:0xD0 | 0x2C70 | size: 0x8
.obj str_KUR_T_1_gon_00006a40, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_gon_00006a40

# .rodata:0xD8 | 0x2C78 | size: 0x9
.obj str_c_kuribo_gon_00006a48, local
	.string "c_kuribo"
.endobj str_c_kuribo_gon_00006a48

# .rodata:0xE1 | 0x2C81 | size: 0x3
.obj gap_03_00002C81_rodata, global
.hidden gap_03_00002C81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002C81_rodata

# .rodata:0xE4 | 0x2C84 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_gon_00006a54, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_gon_00006a54

# .rodata:0xF7 | 0x2C97 | size: 0x1
.obj gap_03_00002C97_rodata, global
.hidden gap_03_00002C97_rodata
	.byte 0x00
.endobj gap_03_00002C97_rodata

# .rodata:0xF8 | 0x2C98 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_gon_00006a68, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_gon_00006a68

# .rodata:0x10B | 0x2CAB | size: 0x1
.obj gap_03_00002CAB_rodata, global
.hidden gap_03_00002CAB_rodata
	.byte 0x00
.endobj gap_03_00002CAB_rodata

# .rodata:0x10C | 0x2CAC | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_gon_00006a7c, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_gon_00006a7c

# .rodata:0x11F | 0x2CBF | size: 0x1
.obj gap_03_00002CBF_rodata, global
.hidden gap_03_00002CBF_rodata
	.byte 0x00
.endobj gap_03_00002CBF_rodata

# .rodata:0x120 | 0x2CC0 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_gon_00006a90, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_gon_00006a90
	.2byte 0x0000

# .rodata:0x138 | 0x2CD8 | size: 0x4
.obj zero_gon_00006aa8, local
	.float 0
.endobj zero_gon_00006aa8

# .rodata:0x13C | 0x2CDC | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_gon_00006aac, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_gon_00006aac

# .rodata:0x151 | 0x2CF1 | size: 0x7
.obj gap_03_00002CF1_rodata, global
.hidden gap_03_00002CF1_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002CF1_rodata

# 0x00016528..0x000170C0 | size: 0xB98
.data
.balign 8

# .data:0x0 | 0x16528 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x16530 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x16534 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x16538 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1653C | size: 0x4
.obj gap_04_0001653C_data, global
.hidden gap_04_0001653C_data
	.4byte 0x00000000
.endobj gap_04_0001653C_data

# .data:0x18 | 0x16540 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x16548 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1654C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x16550 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x16558 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1655C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x16560 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x16564 | size: 0x4
.obj gap_04_00016564_data, global
.hidden gap_04_00016564_data
	.4byte 0x00000000
.endobj gap_04_00016564_data

# .data:0x40 | 0x16568 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x16570 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x16574 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x16578 | size: 0xC4
.obj unit_kuriboo, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_gon_00006970
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
	.4byte str_SFX_ENM_KURI_DAMAGED_gon_00006980
	.4byte str_SFX_BTL_DAMAGE_FIRE1_gon_00006998
	.4byte str_SFX_BTL_DAMAGE_ICE1_gon_000069b0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_gon_000069c4
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_kuriboo

# .data:0x114 | 0x1663C | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_gon_000069e0
	.4byte 0x00000002
	.4byte str_KUR_Y_1_gon_000069e8
	.4byte 0x00000009
	.4byte str_KUR_Y_1_gon_000069e8
	.4byte 0x00000005
	.4byte str_KUR_K_1_gon_000069f0
	.4byte 0x00000004
	.4byte str_KUR_I_1_gon_000069f8
	.4byte 0x00000003
	.4byte str_KUR_I_1_gon_000069f8
	.4byte 0x0000001C
	.4byte str_KUR_S_1_gon_00006a00
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_gon_00006a08
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_gon_00006a08
	.4byte 0x0000001F
	.4byte str_KUR_S_1_gon_00006a00
	.4byte 0x00000027
	.4byte str_KUR_D_1_gon_00006a10
	.4byte 0x00000032
	.4byte str_KUR_A_1_gon_00006a18
	.4byte 0x00000033
	.4byte str_KUR_A_2_gon_00006a20
	.4byte 0x0000002A
	.4byte str_KUR_R_1_gon_00006a28
	.4byte 0x00000029
	.4byte str_KUR_R_2_gon_00006a30
	.4byte 0x00000028
	.4byte str_KUR_W_1_gon_00006a38
	.4byte 0x00000038
	.4byte str_KUR_I_1_gon_000069f8
	.4byte 0x00000039
	.4byte str_KUR_I_1_gon_000069f8
	.4byte 0x00000041
	.4byte str_KUR_T_1_gon_00006a40
	.4byte 0x00000045
	.4byte str_KUR_S_1_gon_00006a00
.endobj pose_table

# .data:0x1B4 | 0x166DC | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0x166EC | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1C9 | 0x166F1 | size: 0x3
.obj gap_04_000166F1_data, global
.hidden gap_04_000166F1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000166F1_data

# .data:0x1CC | 0x166F4 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1D1 | 0x166F9 | size: 0x3
.obj gap_04_000166F9_data, global
.hidden gap_04_000166F9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000166F9_data

# .data:0x1D4 | 0x166FC | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x64646464
	.2byte 0x6496
.endobj regist

# .data:0x1EA | 0x16712 | size: 0x2
.obj gap_04_00016712_data, global
.hidden gap_04_00016712_data
	.2byte 0x0000
.endobj gap_04_00016712_data

# .data:0x1EC | 0x16714 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_gon_00006970
	.4byte str_c_kuribo_gon_00006a48
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

# .data:0x238 | 0x16760 | size: 0xC0
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

# .data:0x2F8 | 0x16820 | size: 0xA8
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
	.4byte str_SFX_ENM_KURI_MOVE1_gon_00006a54
	.4byte str_SFX_ENM_KURI_MOVE2_gon_00006a68
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_gon_00006a54
	.4byte str_SFX_ENM_KURI_MOVE2_gon_00006a68
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_gon_00006a7c
	.4byte str_SFX_ENM_KURI_LANDING_gon_00006a90
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3A0 | 0x168C8 | size: 0x28
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

# .data:0x3C8 | 0x168F0 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x3D0 | 0x168F8 | size: 0x7B0
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
	.4byte str_SFX_ENM_KURI_ATTACK1_gon_00006aac
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
	.4byte str_SFX_ENM_KURI_MOVE1_gon_00006a54
	.4byte str_SFX_ENM_KURI_MOVE2_gon_00006a68
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

# .data:0xB80 | 0x170A8 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
