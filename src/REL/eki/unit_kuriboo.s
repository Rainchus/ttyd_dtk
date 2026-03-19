.include "macros.inc"
.file "unit_kuriboo.o"

# 0x000073B8..0x000074D0 | size: 0x118
.text
.balign 4

# .text:0x0 | 0x73B8 | size: 0x118
.fn krb_get_dir, local
/* 000073B8 0000747C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 000073BC 00007480  7C 08 02 A6 */	mflr r0
/* 000073C0 00007484  90 01 00 64 */	stw r0, 0x64(r1)
/* 000073C4 00007488  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 000073C8 0000748C  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 000073CC 00007490  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 000073D0 00007494  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 000073D4 00007498  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 000073D8 0000749C  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 000073DC 000074A0  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 000073E0 000074A4  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 000073E4 000074A8  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 000073E8 000074AC  7C 7E 1B 78 */	mr r30, r3
/* 000073EC 000074B0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000073F0 000074B4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000073F4 000074B8  4B FF 8C 0D */	bl evtGetFloat
/* 000073F8 000074BC  FF 80 08 90 */	fmr f28, f1
/* 000073FC 000074C0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00007400 000074C4  7F C3 F3 78 */	mr r3, r30
/* 00007404 000074C8  4B FF 8B FD */	bl evtGetFloat
/* 00007408 000074CC  FF A0 08 90 */	fmr f29, f1
/* 0000740C 000074D0  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00007410 000074D4  7F C3 F3 78 */	mr r3, r30
/* 00007414 000074D8  4B FF 8B ED */	bl evtGetFloat
/* 00007418 000074DC  FF C0 08 90 */	fmr f30, f1
/* 0000741C 000074E0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00007420 000074E4  7F C3 F3 78 */	mr r3, r30
/* 00007424 000074E8  4B FF 8B DD */	bl evtGetFloat
/* 00007428 000074EC  FF E0 08 90 */	fmr f31, f1
/* 0000742C 000074F0  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00007430 000074F4  7F C3 F3 78 */	mr r3, r30
/* 00007434 000074F8  4B FF 8B CD */	bl evtGetValue
/* 00007438 000074FC  3C 80 00 00 */	lis r4, zero_eki_000099a0@ha
/* 0000743C 00007500  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00007440 00007504  C0 04 00 00 */	lfs f0, zero_eki_000099a0@l(r4)
/* 00007444 00007508  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00007448 0000750C  7C 65 1B 78 */	mr r5, r3
/* 0000744C 00007510  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00007450 00007514  40 82 00 20 */	bne .L_00007470
/* 00007454 00007518  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00007458 0000751C  40 82 00 18 */	bne .L_00007470
/* 0000745C 00007520  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00007460 00007524  7F C3 F3 78 */	mr r3, r30
/* 00007464 00007528  4B FF 8B 9D */	bl evtSetValue
/* 00007468 0000752C  38 60 00 02 */	li r3, 0x2
/* 0000746C 00007530  48 00 00 30 */	b .L_0000749C
.L_00007470:
/* 00007470 00007534  3C 60 00 00 */	lis r3, zero_eki_000099a0@ha
/* 00007474 00007538  C0 63 00 00 */	lfs f3, zero_eki_000099a0@l(r3)
/* 00007478 0000753C  FC 80 18 90 */	fmr f4, f3
/* 0000747C 00007540  4B FF 8B 85 */	bl angleABf_1
/* 00007480 00007544  FC 00 08 1E */	fctiwz f0, f1
/* 00007484 00007548  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00007488 0000754C  7F C3 F3 78 */	mr r3, r30
/* 0000748C 00007550  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00007490 00007554  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00007494 00007558  4B FF 8B 6D */	bl evtSetValue
/* 00007498 0000755C  38 60 00 02 */	li r3, 0x2
.L_0000749C:
/* 0000749C 00007560  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 000074A0 00007564  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 000074A4 00007568  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 000074A8 0000756C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 000074AC 00007570  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 000074B0 00007574  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 000074B4 00007578  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 000074B8 0000757C  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 000074BC 00007580  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000074C0 00007584  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000074C4 00007588  7C 08 03 A6 */	mtlr r0
/* 000074C8 0000758C  38 21 00 60 */	addi r1, r1, 0x60
/* 000074CC 00007590  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00001070..0x000011C8 | size: 0x158
.rodata
.balign 8

# .rodata:0x0 | 0x1070 | size: 0xF
.obj str_btl_un_kuriboo_eki_00009850, local
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_eki_00009850

# .rodata:0xF | 0x107F | size: 0x1
.obj gap_03_0000107F_rodata, global
.hidden gap_03_0000107F_rodata
	.byte 0x00
.endobj gap_03_0000107F_rodata

# .rodata:0x10 | 0x1080 | size: 0x16
.obj str_SFX_ENM_KURI_DAMAGED_eki_00009860, local
	.string "SFX_ENM_KURI_DAMAGED1"
.endobj str_SFX_ENM_KURI_DAMAGED_eki_00009860

# .rodata:0x26 | 0x1096 | size: 0x2
.obj gap_03_00001096_rodata, global
.hidden gap_03_00001096_rodata
	.2byte 0x0000
.endobj gap_03_00001096_rodata

# .rodata:0x28 | 0x1098 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_eki_00009878, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_eki_00009878

# .rodata:0x3D | 0x10AD | size: 0x3
.obj gap_03_000010AD_rodata, global
.hidden gap_03_000010AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000010AD_rodata

# .rodata:0x40 | 0x10B0 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_eki_00009890, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_eki_00009890

# .rodata:0x54 | 0x10C4 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_eki_000098a4, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_eki_000098a4

# .rodata:0x6D | 0x10DD | size: 0x3
.obj gap_03_000010DD_rodata, global
.hidden gap_03_000010DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000010DD_rodata

# .rodata:0x70 | 0x10E0 | size: 0x8
.obj str_KUR_N_1_eki_000098c0, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_eki_000098c0

# .rodata:0x78 | 0x10E8 | size: 0x8
.obj str_KUR_Y_1_eki_000098c8, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_eki_000098c8

# .rodata:0x80 | 0x10F0 | size: 0x8
.obj str_KUR_K_1_eki_000098d0, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_eki_000098d0

# .rodata:0x88 | 0x10F8 | size: 0x8
.obj str_KUR_I_1_eki_000098d8, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_eki_000098d8

# .rodata:0x90 | 0x1100 | size: 0x8
.obj str_KUR_S_1_eki_000098e0, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_eki_000098e0

# .rodata:0x98 | 0x1108 | size: 0x8
.obj str_KUR_Q_1_eki_000098e8, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_eki_000098e8

# .rodata:0xA0 | 0x1110 | size: 0x8
.obj str_KUR_D_1_eki_000098f0, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_eki_000098f0

# .rodata:0xA8 | 0x1118 | size: 0x8
.obj str_KUR_A_1_eki_000098f8, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_eki_000098f8

# .rodata:0xB0 | 0x1120 | size: 0x8
.obj str_KUR_A_2_eki_00009900, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_eki_00009900

# .rodata:0xB8 | 0x1128 | size: 0x8
.obj str_KUR_R_1_eki_00009908, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_eki_00009908

# .rodata:0xC0 | 0x1130 | size: 0x8
.obj str_KUR_R_2_eki_00009910, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_eki_00009910

# .rodata:0xC8 | 0x1138 | size: 0x8
.obj str_KUR_W_1_eki_00009918, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_eki_00009918

# .rodata:0xD0 | 0x1140 | size: 0x8
.obj str_KUR_T_1_eki_00009920, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_eki_00009920

# .rodata:0xD8 | 0x1148 | size: 0x9
.obj str_c_kuribo_eki_00009928, local
	.string "c_kuribo"
.endobj str_c_kuribo_eki_00009928

# .rodata:0xE1 | 0x1151 | size: 0x3
.obj gap_03_00001151_rodata, global
.hidden gap_03_00001151_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001151_rodata

# .rodata:0xE4 | 0x1154 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_eki_00009934, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_eki_00009934

# .rodata:0xF7 | 0x1167 | size: 0x1
.obj gap_03_00001167_rodata, global
.hidden gap_03_00001167_rodata
	.byte 0x00
.endobj gap_03_00001167_rodata

# .rodata:0xF8 | 0x1168 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_eki_00009948, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_eki_00009948

# .rodata:0x10B | 0x117B | size: 0x1
.obj gap_03_0000117B_rodata, global
.hidden gap_03_0000117B_rodata
	.byte 0x00
.endobj gap_03_0000117B_rodata

# .rodata:0x10C | 0x117C | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_eki_0000995c, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_eki_0000995c

# .rodata:0x11F | 0x118F | size: 0x1
.obj gap_03_0000118F_rodata, global
.hidden gap_03_0000118F_rodata
	.byte 0x00
.endobj gap_03_0000118F_rodata

# .rodata:0x120 | 0x1190 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_eki_00009970, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_eki_00009970

# .rodata:0x136 | 0x11A6 | size: 0x2
.obj gap_03_000011A6_rodata, global
.hidden gap_03_000011A6_rodata
	.2byte 0x0000
.endobj gap_03_000011A6_rodata

# .rodata:0x138 | 0x11A8 | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_eki_00009988, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_eki_00009988
	.byte 0x00, 0x00, 0x00

# .rodata:0x150 | 0x11C0 | size: 0x4
.obj zero_eki_000099a0, local
	.float 0
.endobj zero_eki_000099a0

# .rodata:0x154 | 0x11C4 | size: 0x4
.obj gap_03_000011C4_rodata, global
.hidden gap_03_000011C4_rodata
	.4byte 0x00000000
.endobj gap_03_000011C4_rodata

# 0x00006978..0x00007510 | size: 0xB98
.data
.balign 8

# .data:0x0 | 0x6978 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x6980 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x6984 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x6988 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x698C | size: 0x4
.obj gap_04_0000698C_data, global
.hidden gap_04_0000698C_data
	.4byte 0x00000000
.endobj gap_04_0000698C_data

# .data:0x18 | 0x6990 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x6998 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x699C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x69A0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x69A8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x69AC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x69B0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x69B4 | size: 0x4
.obj gap_04_000069B4_data, global
.hidden gap_04_000069B4_data
	.4byte 0x00000000
.endobj gap_04_000069B4_data

# .data:0x40 | 0x69B8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x69C0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x69C4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x69C8 | size: 0xC4
.obj unit_kuriboo_6_data_69C8, global
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_eki_00009850
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
	.4byte str_SFX_ENM_KURI_DAMAGED_eki_00009860
	.4byte str_SFX_BTL_DAMAGE_FIRE1_eki_00009878
	.4byte str_SFX_BTL_DAMAGE_ICE1_eki_00009890
	.4byte str_SFX_BTL_DAMAGE_BIRIB_eki_000098a4
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_kuriboo_6_data_69C8

# .data:0x114 | 0x6A8C | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_eki_000098c0
	.4byte 0x00000002
	.4byte str_KUR_Y_1_eki_000098c8
	.4byte 0x00000009
	.4byte str_KUR_Y_1_eki_000098c8
	.4byte 0x00000005
	.4byte str_KUR_K_1_eki_000098d0
	.4byte 0x00000004
	.4byte str_KUR_I_1_eki_000098d8
	.4byte 0x00000003
	.4byte str_KUR_I_1_eki_000098d8
	.4byte 0x0000001C
	.4byte str_KUR_S_1_eki_000098e0
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_eki_000098e8
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_eki_000098e8
	.4byte 0x0000001F
	.4byte str_KUR_S_1_eki_000098e0
	.4byte 0x00000027
	.4byte str_KUR_D_1_eki_000098f0
	.4byte 0x00000032
	.4byte str_KUR_A_1_eki_000098f8
	.4byte 0x00000033
	.4byte str_KUR_A_2_eki_00009900
	.4byte 0x0000002A
	.4byte str_KUR_R_1_eki_00009908
	.4byte 0x00000029
	.4byte str_KUR_R_2_eki_00009910
	.4byte 0x00000028
	.4byte str_KUR_W_1_eki_00009918
	.4byte 0x00000038
	.4byte str_KUR_I_1_eki_000098d8
	.4byte 0x00000039
	.4byte str_KUR_I_1_eki_000098d8
	.4byte 0x00000041
	.4byte str_KUR_T_1_eki_00009920
	.4byte 0x00000045
	.4byte str_KUR_S_1_eki_000098e0
.endobj pose_table

# .data:0x1B4 | 0x6B2C | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0x6B3C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1C9 | 0x6B41 | size: 0x3
.obj gap_04_00006B41_data, global
.hidden gap_04_00006B41_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00006B41_data

# .data:0x1CC | 0x6B44 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1D1 | 0x6B49 | size: 0x3
.obj gap_04_00006B49_data, global
.hidden gap_04_00006B49_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00006B49_data

# .data:0x1D4 | 0x6B4C | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x64646464
	.2byte 0x6496
.endobj regist

# .data:0x1EA | 0x6B62 | size: 0x2
.obj gap_04_00006B62_data, global
.hidden gap_04_00006B62_data
	.2byte 0x0000
.endobj gap_04_00006B62_data

# .data:0x1EC | 0x6B64 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_eki_00009850
	.4byte str_c_kuribo_eki_00009928
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

# .data:0x238 | 0x6BB0 | size: 0xC0
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

# .data:0x2F8 | 0x6C70 | size: 0xA8
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
	.4byte str_SFX_ENM_KURI_MOVE1_eki_00009934
	.4byte str_SFX_ENM_KURI_MOVE2_eki_00009948
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_eki_00009934
	.4byte str_SFX_ENM_KURI_MOVE2_eki_00009948
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_eki_0000995c
	.4byte str_SFX_ENM_KURI_LANDING_eki_00009970
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3A0 | 0x6D18 | size: 0x28
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

# .data:0x3C8 | 0x6D40 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x3D0 | 0x6D48 | size: 0x7B0
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
	.4byte str_SFX_ENM_KURI_ATTACK1_eki_00009988
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
	.4byte str_SFX_ENM_KURI_MOVE1_eki_00009934
	.4byte str_SFX_ENM_KURI_MOVE2_eki_00009948
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

# .data:0xB80 | 0x74F8 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
