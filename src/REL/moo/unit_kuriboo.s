.include "macros.inc"
.file "unit_kuriboo.o"

# 0x000006D0..0x000007E8 | size: 0x118
.text
.balign 4

# .text:0x0 | 0x6D0 | size: 0x118
.fn krb_get_dir, local
/* 000006D0 00000794  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 000006D4 00000798  7C 08 02 A6 */	mflr r0
/* 000006D8 0000079C  90 01 00 64 */	stw r0, 0x64(r1)
/* 000006DC 000007A0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 000006E0 000007A4  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 000006E4 000007A8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 000006E8 000007AC  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 000006EC 000007B0  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 000006F0 000007B4  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 000006F4 000007B8  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 000006F8 000007BC  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 000006FC 000007C0  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00000700 000007C4  7C 7E 1B 78 */	mr r30, r3
/* 00000704 000007C8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000708 000007CC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000070C 000007D0  4B FF FD A1 */	bl evtGetFloat
/* 00000710 000007D4  FF 80 08 90 */	fmr f28, f1
/* 00000714 000007D8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000718 000007DC  7F C3 F3 78 */	mr r3, r30
/* 0000071C 000007E0  4B FF FD 91 */	bl evtGetFloat
/* 00000720 000007E4  FF A0 08 90 */	fmr f29, f1
/* 00000724 000007E8  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00000728 000007EC  7F C3 F3 78 */	mr r3, r30
/* 0000072C 000007F0  4B FF FD 81 */	bl evtGetFloat
/* 00000730 000007F4  FF C0 08 90 */	fmr f30, f1
/* 00000734 000007F8  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00000738 000007FC  7F C3 F3 78 */	mr r3, r30
/* 0000073C 00000800  4B FF FD 71 */	bl evtGetFloat
/* 00000740 00000804  FF E0 08 90 */	fmr f31, f1
/* 00000744 00000808  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000748 0000080C  7F C3 F3 78 */	mr r3, r30
/* 0000074C 00000810  4B FF FD 61 */	bl evtGetValue
/* 00000750 00000814  3C 80 00 00 */	lis r4, zero_moo_00003a00@ha
/* 00000754 00000818  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00000758 0000081C  C0 04 00 00 */	lfs f0, zero_moo_00003a00@l(r4)
/* 0000075C 00000820  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00000760 00000824  7C 65 1B 78 */	mr r5, r3
/* 00000764 00000828  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00000768 0000082C  40 82 00 20 */	bne .L_00000788
/* 0000076C 00000830  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00000770 00000834  40 82 00 18 */	bne .L_00000788
/* 00000774 00000838  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000778 0000083C  7F C3 F3 78 */	mr r3, r30
/* 0000077C 00000840  4B FF FD 31 */	bl evtSetValue
/* 00000780 00000844  38 60 00 02 */	li r3, 0x2
/* 00000784 00000848  48 00 00 30 */	b .L_000007B4
.L_00000788:
/* 00000788 0000084C  3C 60 00 00 */	lis r3, zero_moo_00003a00@ha
/* 0000078C 00000850  C0 63 00 00 */	lfs f3, zero_moo_00003a00@l(r3)
/* 00000790 00000854  FC 80 18 90 */	fmr f4, f3
/* 00000794 00000858  4B FF FD 19 */	bl angleABf_1
/* 00000798 0000085C  FC 00 08 1E */	fctiwz f0, f1
/* 0000079C 00000860  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000007A0 00000864  7F C3 F3 78 */	mr r3, r30
/* 000007A4 00000868  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 000007A8 0000086C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 000007AC 00000870  4B FF FD 01 */	bl evtSetValue
/* 000007B0 00000874  38 60 00 02 */	li r3, 0x2
.L_000007B4:
/* 000007B4 00000878  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 000007B8 0000087C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 000007BC 00000880  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 000007C0 00000884  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 000007C4 00000888  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 000007C8 0000088C  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 000007CC 00000890  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 000007D0 00000894  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 000007D4 00000898  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000007D8 0000089C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000007DC 000008A0  7C 08 03 A6 */	mtlr r0
/* 000007E0 000008A4  38 21 00 60 */	addi r1, r1, 0x60
/* 000007E4 000008A8  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00000820..0x00000978 | size: 0x158
.rodata
.balign 8

# .rodata:0x0 | 0x820 | size: 0xF
.obj str_btl_un_kuriboo_moo_000038b0, local
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_moo_000038b0

# .rodata:0xF | 0x82F | size: 0x1
.obj gap_03_0000082F_rodata, global
.hidden gap_03_0000082F_rodata
	.byte 0x00
.endobj gap_03_0000082F_rodata

# .rodata:0x10 | 0x830 | size: 0x16
.obj str_SFX_ENM_KURI_DAMAGED_moo_000038c0, local
	.string "SFX_ENM_KURI_DAMAGED1"
.endobj str_SFX_ENM_KURI_DAMAGED_moo_000038c0

# .rodata:0x26 | 0x846 | size: 0x2
.obj gap_03_00000846_rodata, global
.hidden gap_03_00000846_rodata
	.2byte 0x0000
.endobj gap_03_00000846_rodata

# .rodata:0x28 | 0x848 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_moo_000038d8, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_moo_000038d8

# .rodata:0x3D | 0x85D | size: 0x3
.obj gap_03_0000085D_rodata, global
.hidden gap_03_0000085D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000085D_rodata

# .rodata:0x40 | 0x860 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_moo_000038f0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_moo_000038f0

# .rodata:0x54 | 0x874 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_moo_00003904, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_moo_00003904

# .rodata:0x6D | 0x88D | size: 0x3
.obj gap_03_0000088D_rodata, global
.hidden gap_03_0000088D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000088D_rodata

# .rodata:0x70 | 0x890 | size: 0x8
.obj str_KUR_N_1_moo_00003920, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_moo_00003920

# .rodata:0x78 | 0x898 | size: 0x8
.obj str_KUR_Y_1_moo_00003928, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_moo_00003928

# .rodata:0x80 | 0x8A0 | size: 0x8
.obj str_KUR_K_1_moo_00003930, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_moo_00003930

# .rodata:0x88 | 0x8A8 | size: 0x8
.obj str_KUR_I_1_moo_00003938, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_moo_00003938

# .rodata:0x90 | 0x8B0 | size: 0x8
.obj str_KUR_S_1_moo_00003940, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_moo_00003940

# .rodata:0x98 | 0x8B8 | size: 0x8
.obj str_KUR_Q_1_moo_00003948, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_moo_00003948

# .rodata:0xA0 | 0x8C0 | size: 0x8
.obj str_KUR_D_1_moo_00003950, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_moo_00003950

# .rodata:0xA8 | 0x8C8 | size: 0x8
.obj str_KUR_A_1_moo_00003958, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_moo_00003958

# .rodata:0xB0 | 0x8D0 | size: 0x8
.obj str_KUR_A_2_moo_00003960, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_moo_00003960

# .rodata:0xB8 | 0x8D8 | size: 0x8
.obj str_KUR_R_1_moo_00003968, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_moo_00003968

# .rodata:0xC0 | 0x8E0 | size: 0x8
.obj str_KUR_R_2_moo_00003970, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_moo_00003970

# .rodata:0xC8 | 0x8E8 | size: 0x8
.obj str_KUR_W_1_moo_00003978, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_moo_00003978

# .rodata:0xD0 | 0x8F0 | size: 0x8
.obj str_KUR_T_1_moo_00003980, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_moo_00003980

# .rodata:0xD8 | 0x8F8 | size: 0x9
.obj str_c_kuribo_moo_00003988, local
	.string "c_kuribo"
.endobj str_c_kuribo_moo_00003988

# .rodata:0xE1 | 0x901 | size: 0x3
.obj gap_03_00000901_rodata, global
.hidden gap_03_00000901_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000901_rodata

# .rodata:0xE4 | 0x904 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_moo_00003994, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_moo_00003994

# .rodata:0xF7 | 0x917 | size: 0x1
.obj gap_03_00000917_rodata, global
.hidden gap_03_00000917_rodata
	.byte 0x00
.endobj gap_03_00000917_rodata

# .rodata:0xF8 | 0x918 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_moo_000039a8, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_moo_000039a8

# .rodata:0x10B | 0x92B | size: 0x1
.obj gap_03_0000092B_rodata, global
.hidden gap_03_0000092B_rodata
	.byte 0x00
.endobj gap_03_0000092B_rodata

# .rodata:0x10C | 0x92C | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_moo_000039bc, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_moo_000039bc

# .rodata:0x11F | 0x93F | size: 0x1
.obj gap_03_0000093F_rodata, global
.hidden gap_03_0000093F_rodata
	.byte 0x00
.endobj gap_03_0000093F_rodata

# .rodata:0x120 | 0x940 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_moo_000039d0, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_moo_000039d0

# .rodata:0x136 | 0x956 | size: 0x2
.obj gap_03_00000956_rodata, global
.hidden gap_03_00000956_rodata
	.2byte 0x0000
.endobj gap_03_00000956_rodata

# .rodata:0x138 | 0x958 | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_moo_000039e8, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_moo_000039e8
	.byte 0x00, 0x00, 0x00

# .rodata:0x150 | 0x970 | size: 0x4
.obj zero_moo_00003a00, local
	.float 0
.endobj zero_moo_00003a00

# .rodata:0x154 | 0x974 | size: 0x4
.obj gap_03_00000974_rodata, global
.hidden gap_03_00000974_rodata
	.4byte 0x00000000
.endobj gap_03_00000974_rodata

# 0x00004368..0x00004F00 | size: 0xB98
.data
.balign 8

# .data:0x0 | 0x4368 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4370 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4374 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4378 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x437C | size: 0x4
.obj gap_04_0000437C_data, global
.hidden gap_04_0000437C_data
	.4byte 0x00000000
.endobj gap_04_0000437C_data

# .data:0x18 | 0x4380 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4388 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x438C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4390 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4398 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x439C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x43A0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x43A4 | size: 0x4
.obj gap_04_000043A4_data, global
.hidden gap_04_000043A4_data
	.4byte 0x00000000
.endobj gap_04_000043A4_data

# .data:0x40 | 0x43A8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x43B0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x43B4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x43B8 | size: 0xC4
.obj unit_kuriboo_17_data_43B8, global
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_moo_000038b0
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
	.4byte str_SFX_ENM_KURI_DAMAGED_moo_000038c0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_moo_000038d8
	.4byte str_SFX_BTL_DAMAGE_ICE1_moo_000038f0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_moo_00003904
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_kuriboo_17_data_43B8

# .data:0x114 | 0x447C | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_moo_00003920
	.4byte 0x00000002
	.4byte str_KUR_Y_1_moo_00003928
	.4byte 0x00000009
	.4byte str_KUR_Y_1_moo_00003928
	.4byte 0x00000005
	.4byte str_KUR_K_1_moo_00003930
	.4byte 0x00000004
	.4byte str_KUR_I_1_moo_00003938
	.4byte 0x00000003
	.4byte str_KUR_I_1_moo_00003938
	.4byte 0x0000001C
	.4byte str_KUR_S_1_moo_00003940
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_moo_00003948
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_moo_00003948
	.4byte 0x0000001F
	.4byte str_KUR_S_1_moo_00003940
	.4byte 0x00000027
	.4byte str_KUR_D_1_moo_00003950
	.4byte 0x00000032
	.4byte str_KUR_A_1_moo_00003958
	.4byte 0x00000033
	.4byte str_KUR_A_2_moo_00003960
	.4byte 0x0000002A
	.4byte str_KUR_R_1_moo_00003968
	.4byte 0x00000029
	.4byte str_KUR_R_2_moo_00003970
	.4byte 0x00000028
	.4byte str_KUR_W_1_moo_00003978
	.4byte 0x00000038
	.4byte str_KUR_I_1_moo_00003938
	.4byte 0x00000039
	.4byte str_KUR_I_1_moo_00003938
	.4byte 0x00000041
	.4byte str_KUR_T_1_moo_00003980
	.4byte 0x00000045
	.4byte str_KUR_S_1_moo_00003940
.endobj pose_table

# .data:0x1B4 | 0x451C | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0x452C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1C9 | 0x4531 | size: 0x3
.obj gap_04_00004531_data, global
.hidden gap_04_00004531_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00004531_data

# .data:0x1CC | 0x4534 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1D1 | 0x4539 | size: 0x3
.obj gap_04_00004539_data, global
.hidden gap_04_00004539_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00004539_data

# .data:0x1D4 | 0x453C | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x64646464
	.2byte 0x6496
.endobj regist

# .data:0x1EA | 0x4552 | size: 0x2
.obj gap_04_00004552_data, global
.hidden gap_04_00004552_data
	.2byte 0x0000
.endobj gap_04_00004552_data

# .data:0x1EC | 0x4554 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_moo_000038b0
	.4byte str_c_kuribo_moo_00003988
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

# .data:0x238 | 0x45A0 | size: 0xC0
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

# .data:0x2F8 | 0x4660 | size: 0xA8
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
	.4byte str_SFX_ENM_KURI_MOVE1_moo_00003994
	.4byte str_SFX_ENM_KURI_MOVE2_moo_000039a8
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_moo_00003994
	.4byte str_SFX_ENM_KURI_MOVE2_moo_000039a8
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_moo_000039bc
	.4byte str_SFX_ENM_KURI_LANDING_moo_000039d0
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3A0 | 0x4708 | size: 0x28
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

# .data:0x3C8 | 0x4730 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x3D0 | 0x4738 | size: 0x7B0
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
	.4byte str_SFX_ENM_KURI_ATTACK1_moo_000039e8
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
	.4byte str_SFX_ENM_KURI_MOVE1_moo_00003994
	.4byte str_SFX_ENM_KURI_MOVE2_moo_000039a8
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

# .data:0xB80 | 0x4EE8 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
