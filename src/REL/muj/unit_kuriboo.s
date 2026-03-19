.include "macros.inc"
.file "unit_kuriboo.o"

# 0x000067BC..0x000068D4 | size: 0x118
.text
.balign 4

# .text:0x0 | 0x67BC | size: 0x118
.fn krb_get_dir, local
/* 000067BC 00006880  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 000067C0 00006884  7C 08 02 A6 */	mflr r0
/* 000067C4 00006888  90 01 00 64 */	stw r0, 0x64(r1)
/* 000067C8 0000688C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 000067CC 00006890  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 000067D0 00006894  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 000067D4 00006898  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 000067D8 0000689C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 000067DC 000068A0  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 000067E0 000068A4  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 000067E4 000068A8  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 000067E8 000068AC  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 000067EC 000068B0  7C 7E 1B 78 */	mr r30, r3
/* 000067F0 000068B4  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000067F4 000068B8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000067F8 000068BC  4B FF A1 B1 */	bl evtGetFloat
/* 000067FC 000068C0  FF 80 08 90 */	fmr f28, f1
/* 00006800 000068C4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00006804 000068C8  7F C3 F3 78 */	mr r3, r30
/* 00006808 000068CC  4B FF A1 A1 */	bl evtGetFloat
/* 0000680C 000068D0  FF A0 08 90 */	fmr f29, f1
/* 00006810 000068D4  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00006814 000068D8  7F C3 F3 78 */	mr r3, r30
/* 00006818 000068DC  4B FF A1 91 */	bl evtGetFloat
/* 0000681C 000068E0  FF C0 08 90 */	fmr f30, f1
/* 00006820 000068E4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00006824 000068E8  7F C3 F3 78 */	mr r3, r30
/* 00006828 000068EC  4B FF A1 81 */	bl evtGetFloat
/* 0000682C 000068F0  FF E0 08 90 */	fmr f31, f1
/* 00006830 000068F4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00006834 000068F8  7F C3 F3 78 */	mr r3, r30
/* 00006838 000068FC  4B FF A1 71 */	bl evtGetValue
/* 0000683C 00006900  3C 80 00 00 */	lis r4, zero_muj_00012ff8@ha
/* 00006840 00006904  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00006844 00006908  C0 04 00 00 */	lfs f0, zero_muj_00012ff8@l(r4)
/* 00006848 0000690C  EC 5F E8 28 */	fsubs f2, f31, f29
/* 0000684C 00006910  7C 65 1B 78 */	mr r5, r3
/* 00006850 00006914  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00006854 00006918  40 82 00 20 */	bne .L_00006874
/* 00006858 0000691C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 0000685C 00006920  40 82 00 18 */	bne .L_00006874
/* 00006860 00006924  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00006864 00006928  7F C3 F3 78 */	mr r3, r30
/* 00006868 0000692C  4B FF A1 41 */	bl evtSetValue
/* 0000686C 00006930  38 60 00 02 */	li r3, 0x2
/* 00006870 00006934  48 00 00 30 */	b .L_000068A0
.L_00006874:
/* 00006874 00006938  3C 60 00 00 */	lis r3, zero_muj_00012ff8@ha
/* 00006878 0000693C  C0 63 00 00 */	lfs f3, zero_muj_00012ff8@l(r3)
/* 0000687C 00006940  FC 80 18 90 */	fmr f4, f3
/* 00006880 00006944  4B FF A1 29 */	bl angleABf_1
/* 00006884 00006948  FC 00 08 1E */	fctiwz f0, f1
/* 00006888 0000694C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000688C 00006950  7F C3 F3 78 */	mr r3, r30
/* 00006890 00006954  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00006894 00006958  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00006898 0000695C  4B FF A1 11 */	bl evtSetValue
/* 0000689C 00006960  38 60 00 02 */	li r3, 0x2
.L_000068A0:
/* 000068A0 00006964  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 000068A4 00006968  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 000068A8 0000696C  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 000068AC 00006970  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 000068B0 00006974  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 000068B4 00006978  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 000068B8 0000697C  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 000068BC 00006980  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 000068C0 00006984  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000068C4 00006988  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000068C8 0000698C  7C 08 03 A6 */	mtlr r0
/* 000068CC 00006990  38 21 00 60 */	addi r1, r1, 0x60
/* 000068D0 00006994  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x000051F8..0x00005350 | size: 0x158
.rodata
.balign 8

# .rodata:0x0 | 0x51F8 | size: 0xF
.obj str_btl_un_kuriboo_muj_00012ea8, local
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_muj_00012ea8

# .rodata:0xF | 0x5207 | size: 0x1
.obj gap_03_00005207_rodata, global
.hidden gap_03_00005207_rodata
	.byte 0x00
.endobj gap_03_00005207_rodata

# .rodata:0x10 | 0x5208 | size: 0x16
.obj str_SFX_ENM_KURI_DAMAGED_muj_00012eb8, local
	.string "SFX_ENM_KURI_DAMAGED1"
.endobj str_SFX_ENM_KURI_DAMAGED_muj_00012eb8

# .rodata:0x26 | 0x521E | size: 0x2
.obj gap_03_0000521E_rodata, global
.hidden gap_03_0000521E_rodata
	.2byte 0x0000
.endobj gap_03_0000521E_rodata

# .rodata:0x28 | 0x5220 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_muj_00012ed0, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_muj_00012ed0

# .rodata:0x3D | 0x5235 | size: 0x3
.obj gap_03_00005235_rodata, global
.hidden gap_03_00005235_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005235_rodata

# .rodata:0x40 | 0x5238 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_muj_00012ee8, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_muj_00012ee8

# .rodata:0x54 | 0x524C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_muj_00012efc, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_muj_00012efc

# .rodata:0x6D | 0x5265 | size: 0x3
.obj gap_03_00005265_rodata, global
.hidden gap_03_00005265_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005265_rodata

# .rodata:0x70 | 0x5268 | size: 0x8
.obj str_KUR_N_1_muj_00012f18, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_muj_00012f18

# .rodata:0x78 | 0x5270 | size: 0x8
.obj str_KUR_Y_1_muj_00012f20, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_muj_00012f20

# .rodata:0x80 | 0x5278 | size: 0x8
.obj str_KUR_K_1_muj_00012f28, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_muj_00012f28

# .rodata:0x88 | 0x5280 | size: 0x8
.obj str_KUR_I_1_muj_00012f30, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_muj_00012f30

# .rodata:0x90 | 0x5288 | size: 0x8
.obj str_KUR_S_1_muj_00012f38, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_muj_00012f38

# .rodata:0x98 | 0x5290 | size: 0x8
.obj str_KUR_Q_1_muj_00012f40, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_muj_00012f40

# .rodata:0xA0 | 0x5298 | size: 0x8
.obj str_KUR_D_1_muj_00012f48, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_muj_00012f48

# .rodata:0xA8 | 0x52A0 | size: 0x8
.obj str_KUR_A_1_muj_00012f50, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_muj_00012f50

# .rodata:0xB0 | 0x52A8 | size: 0x8
.obj str_KUR_A_2_muj_00012f58, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_muj_00012f58

# .rodata:0xB8 | 0x52B0 | size: 0x8
.obj str_KUR_R_1_muj_00012f60, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_muj_00012f60

# .rodata:0xC0 | 0x52B8 | size: 0x8
.obj str_KUR_R_2_muj_00012f68, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_muj_00012f68

# .rodata:0xC8 | 0x52C0 | size: 0x8
.obj str_KUR_W_1_muj_00012f70, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_muj_00012f70

# .rodata:0xD0 | 0x52C8 | size: 0x8
.obj str_KUR_T_1_muj_00012f78, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_muj_00012f78

# .rodata:0xD8 | 0x52D0 | size: 0x9
.obj str_c_kuribo_muj_00012f80, local
	.string "c_kuribo"
.endobj str_c_kuribo_muj_00012f80

# .rodata:0xE1 | 0x52D9 | size: 0x3
.obj gap_03_000052D9_rodata, global
.hidden gap_03_000052D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000052D9_rodata

# .rodata:0xE4 | 0x52DC | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_muj_00012f8c, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_muj_00012f8c

# .rodata:0xF7 | 0x52EF | size: 0x1
.obj gap_03_000052EF_rodata, global
.hidden gap_03_000052EF_rodata
	.byte 0x00
.endobj gap_03_000052EF_rodata

# .rodata:0xF8 | 0x52F0 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_muj_00012fa0, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_muj_00012fa0

# .rodata:0x10B | 0x5303 | size: 0x1
.obj gap_03_00005303_rodata, global
.hidden gap_03_00005303_rodata
	.byte 0x00
.endobj gap_03_00005303_rodata

# .rodata:0x10C | 0x5304 | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_muj_00012fb4, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_muj_00012fb4

# .rodata:0x11F | 0x5317 | size: 0x1
.obj gap_03_00005317_rodata, global
.hidden gap_03_00005317_rodata
	.byte 0x00
.endobj gap_03_00005317_rodata

# .rodata:0x120 | 0x5318 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_muj_00012fc8, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_muj_00012fc8

# .rodata:0x136 | 0x532E | size: 0x2
.obj gap_03_0000532E_rodata, global
.hidden gap_03_0000532E_rodata
	.2byte 0x0000
.endobj gap_03_0000532E_rodata

# .rodata:0x138 | 0x5330 | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_muj_00012fe0, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_muj_00012fe0
	.byte 0x00, 0x00, 0x00

# .rodata:0x150 | 0x5348 | size: 0x4
.obj zero_muj_00012ff8, local
	.float 0
.endobj zero_muj_00012ff8

# .rodata:0x154 | 0x534C | size: 0x4
.obj gap_03_0000534C_rodata, global
.hidden gap_03_0000534C_rodata
	.4byte 0x00000000
.endobj gap_03_0000534C_rodata

# 0x0002C6C8..0x0002D260 | size: 0xB98
.data
.balign 8

# .data:0x0 | 0x2C6C8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2C6D0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2C6D4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2C6D8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2C6DC | size: 0x4
.obj gap_04_0002C6DC_data, global
.hidden gap_04_0002C6DC_data
	.4byte 0x00000000
.endobj gap_04_0002C6DC_data

# .data:0x18 | 0x2C6E0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2C6E8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2C6EC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2C6F0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2C6F8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2C6FC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2C700 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2C704 | size: 0x4
.obj gap_04_0002C704_data, global
.hidden gap_04_0002C704_data
	.4byte 0x00000000
.endobj gap_04_0002C704_data

# .data:0x40 | 0x2C708 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2C710 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2C714 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2C718 | size: 0xC4
.obj unit_kuriboo_19_data_2C718, global
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_muj_00012ea8
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
	.4byte str_SFX_ENM_KURI_DAMAGED_muj_00012eb8
	.4byte str_SFX_BTL_DAMAGE_FIRE1_muj_00012ed0
	.4byte str_SFX_BTL_DAMAGE_ICE1_muj_00012ee8
	.4byte str_SFX_BTL_DAMAGE_BIRIB_muj_00012efc
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_kuriboo_19_data_2C718

# .data:0x114 | 0x2C7DC | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_muj_00012f18
	.4byte 0x00000002
	.4byte str_KUR_Y_1_muj_00012f20
	.4byte 0x00000009
	.4byte str_KUR_Y_1_muj_00012f20
	.4byte 0x00000005
	.4byte str_KUR_K_1_muj_00012f28
	.4byte 0x00000004
	.4byte str_KUR_I_1_muj_00012f30
	.4byte 0x00000003
	.4byte str_KUR_I_1_muj_00012f30
	.4byte 0x0000001C
	.4byte str_KUR_S_1_muj_00012f38
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_muj_00012f40
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_muj_00012f40
	.4byte 0x0000001F
	.4byte str_KUR_S_1_muj_00012f38
	.4byte 0x00000027
	.4byte str_KUR_D_1_muj_00012f48
	.4byte 0x00000032
	.4byte str_KUR_A_1_muj_00012f50
	.4byte 0x00000033
	.4byte str_KUR_A_2_muj_00012f58
	.4byte 0x0000002A
	.4byte str_KUR_R_1_muj_00012f60
	.4byte 0x00000029
	.4byte str_KUR_R_2_muj_00012f68
	.4byte 0x00000028
	.4byte str_KUR_W_1_muj_00012f70
	.4byte 0x00000038
	.4byte str_KUR_I_1_muj_00012f30
	.4byte 0x00000039
	.4byte str_KUR_I_1_muj_00012f30
	.4byte 0x00000041
	.4byte str_KUR_T_1_muj_00012f78
	.4byte 0x00000045
	.4byte str_KUR_S_1_muj_00012f38
.endobj pose_table

# .data:0x1B4 | 0x2C87C | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0x2C88C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1C9 | 0x2C891 | size: 0x3
.obj gap_04_0002C891_data, global
.hidden gap_04_0002C891_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002C891_data

# .data:0x1CC | 0x2C894 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1D1 | 0x2C899 | size: 0x3
.obj gap_04_0002C899_data, global
.hidden gap_04_0002C899_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002C899_data

# .data:0x1D4 | 0x2C89C | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x64646464
	.2byte 0x6496
.endobj regist

# .data:0x1EA | 0x2C8B2 | size: 0x2
.obj gap_04_0002C8B2_data, global
.hidden gap_04_0002C8B2_data
	.2byte 0x0000
.endobj gap_04_0002C8B2_data

# .data:0x1EC | 0x2C8B4 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_muj_00012ea8
	.4byte str_c_kuribo_muj_00012f80
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

# .data:0x238 | 0x2C900 | size: 0xC0
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

# .data:0x2F8 | 0x2C9C0 | size: 0xA8
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
	.4byte str_SFX_ENM_KURI_MOVE1_muj_00012f8c
	.4byte str_SFX_ENM_KURI_MOVE2_muj_00012fa0
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_muj_00012f8c
	.4byte str_SFX_ENM_KURI_MOVE2_muj_00012fa0
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_muj_00012fb4
	.4byte str_SFX_ENM_KURI_LANDING_muj_00012fc8
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3A0 | 0x2CA68 | size: 0x28
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

# .data:0x3C8 | 0x2CA90 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x3D0 | 0x2CA98 | size: 0x7B0
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
	.4byte str_SFX_ENM_KURI_ATTACK1_muj_00012fe0
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
	.4byte str_SFX_ENM_KURI_MOVE1_muj_00012f8c
	.4byte str_SFX_ENM_KURI_MOVE2_muj_00012fa0
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

# .data:0xB80 | 0x2D248 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
