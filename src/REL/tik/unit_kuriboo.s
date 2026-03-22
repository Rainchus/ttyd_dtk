.include "macros.inc"
.file "unit_kuriboo.o"

# 0x00005818..0x00005930 | size: 0x118
.text
.balign 4

# .text:0x0 | 0x5818 | size: 0x118
.fn krb_get_dir, local
/* 00005818 000058DC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 0000581C 000058E0  7C 08 02 A6 */	mflr r0
/* 00005820 000058E4  90 01 00 64 */	stw r0, 0x64(r1)
/* 00005824 000058E8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00005828 000058EC  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 0000582C 000058F0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00005830 000058F4  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00005834 000058F8  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00005838 000058FC  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 0000583C 00005900  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00005840 00005904  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00005844 00005908  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00005848 0000590C  7C 7E 1B 78 */	mr r30, r3
/* 0000584C 00005910  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005850 00005914  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005854 00005918  4B FF A8 F5 */	bl evtGetFloat
/* 00005858 0000591C  FF 80 08 90 */	fmr f28, f1
/* 0000585C 00005920  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005860 00005924  7F C3 F3 78 */	mr r3, r30
/* 00005864 00005928  4B FF A8 E5 */	bl evtGetFloat
/* 00005868 0000592C  FF A0 08 90 */	fmr f29, f1
/* 0000586C 00005930  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00005870 00005934  7F C3 F3 78 */	mr r3, r30
/* 00005874 00005938  4B FF A8 D5 */	bl evtGetFloat
/* 00005878 0000593C  FF C0 08 90 */	fmr f30, f1
/* 0000587C 00005940  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00005880 00005944  7F C3 F3 78 */	mr r3, r30
/* 00005884 00005948  4B FF A8 C5 */	bl evtGetFloat
/* 00005888 0000594C  FF E0 08 90 */	fmr f31, f1
/* 0000588C 00005950  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005890 00005954  7F C3 F3 78 */	mr r3, r30
/* 00005894 00005958  4B FF A8 B5 */	bl evtGetValue
/* 00005898 0000595C  3C 80 00 00 */	lis r4, zero_tik_0000bbe8@ha
/* 0000589C 00005960  EC 3E E0 28 */	fsubs f1, f30, f28
/* 000058A0 00005964  C0 04 00 00 */	lfs f0, zero_tik_0000bbe8@l(r4)
/* 000058A4 00005968  EC 5F E8 28 */	fsubs f2, f31, f29
/* 000058A8 0000596C  7C 65 1B 78 */	mr r5, r3
/* 000058AC 00005970  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 000058B0 00005974  40 82 00 20 */	bne .L_000058D0
/* 000058B4 00005978  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 000058B8 0000597C  40 82 00 18 */	bne .L_000058D0
/* 000058BC 00005980  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000058C0 00005984  7F C3 F3 78 */	mr r3, r30
/* 000058C4 00005988  4B FF A8 85 */	bl evtSetValue
/* 000058C8 0000598C  38 60 00 02 */	li r3, 0x2
/* 000058CC 00005990  48 00 00 30 */	b .L_000058FC
.L_000058D0:
/* 000058D0 00005994  3C 60 00 00 */	lis r3, zero_tik_0000bbe8@ha
/* 000058D4 00005998  C0 63 00 00 */	lfs f3, zero_tik_0000bbe8@l(r3)
/* 000058D8 0000599C  FC 80 18 90 */	fmr f4, f3
/* 000058DC 000059A0  4B FF A8 6D */	bl angleABf_1
/* 000058E0 000059A4  FC 00 08 1E */	fctiwz f0, f1
/* 000058E4 000059A8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000058E8 000059AC  7F C3 F3 78 */	mr r3, r30
/* 000058EC 000059B0  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 000058F0 000059B4  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 000058F4 000059B8  4B FF A8 55 */	bl evtSetValue
/* 000058F8 000059BC  38 60 00 02 */	li r3, 0x2
.L_000058FC:
/* 000058FC 000059C0  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00005900 000059C4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00005904 000059C8  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00005908 000059CC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 0000590C 000059D0  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00005910 000059D4  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00005914 000059D8  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 00005918 000059DC  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 0000591C 000059E0  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00005920 000059E4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00005924 000059E8  7C 08 03 A6 */	mtlr r0
/* 00005928 000059EC  38 21 00 60 */	addi r1, r1, 0x60
/* 0000592C 000059F0  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00003C30..0x00003D88 | size: 0x158
.rodata
.balign 8

# .rodata:0x0 | 0x3C30 | size: 0xF
.obj str_btl_un_kuriboo_tik_0000ba98, local
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_tik_0000ba98

# .rodata:0xF | 0x3C3F | size: 0x1
.obj gap_03_00003C3F_rodata, global
.hidden gap_03_00003C3F_rodata
	.byte 0x00
.endobj gap_03_00003C3F_rodata

# .rodata:0x10 | 0x3C40 | size: 0x16
.obj str_SFX_ENM_KURI_DAMAGED_tik_0000baa8, local
	.string "SFX_ENM_KURI_DAMAGED1"
.endobj str_SFX_ENM_KURI_DAMAGED_tik_0000baa8

# .rodata:0x26 | 0x3C56 | size: 0x2
.obj gap_03_00003C56_rodata, global
.hidden gap_03_00003C56_rodata
	.2byte 0x0000
.endobj gap_03_00003C56_rodata

# .rodata:0x28 | 0x3C58 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tik_0000bac0, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tik_0000bac0

# .rodata:0x3D | 0x3C6D | size: 0x3
.obj gap_03_00003C6D_rodata, global
.hidden gap_03_00003C6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003C6D_rodata

# .rodata:0x40 | 0x3C70 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tik_0000bad8, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tik_0000bad8

# .rodata:0x54 | 0x3C84 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tik_0000baec, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tik_0000baec

# .rodata:0x6D | 0x3C9D | size: 0x3
.obj gap_03_00003C9D_rodata, global
.hidden gap_03_00003C9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003C9D_rodata

# .rodata:0x70 | 0x3CA0 | size: 0x8
.obj str_KUR_N_1_tik_0000bb08, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_tik_0000bb08

# .rodata:0x78 | 0x3CA8 | size: 0x8
.obj str_KUR_Y_1_tik_0000bb10, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_tik_0000bb10

# .rodata:0x80 | 0x3CB0 | size: 0x8
.obj str_KUR_K_1_tik_0000bb18, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_tik_0000bb18

# .rodata:0x88 | 0x3CB8 | size: 0x8
.obj str_KUR_I_1_tik_0000bb20, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_tik_0000bb20

# .rodata:0x90 | 0x3CC0 | size: 0x8
.obj str_KUR_S_1_tik_0000bb28, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_tik_0000bb28

# .rodata:0x98 | 0x3CC8 | size: 0x8
.obj str_KUR_Q_1_tik_0000bb30, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_tik_0000bb30

# .rodata:0xA0 | 0x3CD0 | size: 0x8
.obj str_KUR_D_1_tik_0000bb38, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_tik_0000bb38

# .rodata:0xA8 | 0x3CD8 | size: 0x8
.obj str_KUR_A_1_tik_0000bb40, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_tik_0000bb40

# .rodata:0xB0 | 0x3CE0 | size: 0x8
.obj str_KUR_A_2_tik_0000bb48, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_tik_0000bb48

# .rodata:0xB8 | 0x3CE8 | size: 0x8
.obj str_KUR_R_1_tik_0000bb50, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_tik_0000bb50

# .rodata:0xC0 | 0x3CF0 | size: 0x8
.obj str_KUR_R_2_tik_0000bb58, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_tik_0000bb58

# .rodata:0xC8 | 0x3CF8 | size: 0x8
.obj str_KUR_W_1_tik_0000bb60, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_tik_0000bb60

# .rodata:0xD0 | 0x3D00 | size: 0x8
.obj str_KUR_T_1_tik_0000bb68, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_tik_0000bb68

# .rodata:0xD8 | 0x3D08 | size: 0x9
.obj str_c_kuribo_tik_0000bb70, local
	.string "c_kuribo"
.endobj str_c_kuribo_tik_0000bb70

# .rodata:0xE1 | 0x3D11 | size: 0x3
.obj gap_03_00003D11_rodata, global
.hidden gap_03_00003D11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003D11_rodata

# .rodata:0xF7 | 0x3D27 | size: 0x1
.obj gap_03_00003D27_rodata, global
.hidden gap_03_00003D27_rodata
	.byte 0x00
.endobj gap_03_00003D27_rodata

# .rodata:0x10B | 0x3D3B | size: 0x1
.obj gap_03_00003D3B_rodata, global
.hidden gap_03_00003D3B_rodata
	.byte 0x00
.endobj gap_03_00003D3B_rodata

# .rodata:0x11F | 0x3D4F | size: 0x1
.obj gap_03_00003D4F_rodata, global
.hidden gap_03_00003D4F_rodata
	.byte 0x00
.endobj gap_03_00003D4F_rodata

# .rodata:0x120 | 0x3D50 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_tik_0000bbb8, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_tik_0000bbb8

# .rodata:0x136 | 0x3D66 | size: 0x2
.obj gap_03_00003D66_rodata, global
.hidden gap_03_00003D66_rodata
	.2byte 0x0000
.endobj gap_03_00003D66_rodata

# .rodata:0x150 | 0x3D80 | size: 0x4
.obj zero_tik_0000bbe8, local
	.float 0
.endobj zero_tik_0000bbe8

# .rodata:0x154 | 0x3D84 | size: 0x4
.obj gap_03_00003D84_rodata, global
.hidden gap_03_00003D84_rodata
	.4byte 0x00000000
.endobj gap_03_00003D84_rodata

# 0x0001CD58..0x0001D8F0 | size: 0xB98
.data
.balign 8

# .data:0x0 | 0x1CD58 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1CD60 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1CD64 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1CD68 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1CD6C | size: 0x4
.obj gap_04_0001CD6C_data, global
.hidden gap_04_0001CD6C_data
	.4byte 0x00000000
.endobj gap_04_0001CD6C_data

# .data:0x18 | 0x1CD70 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1CD78 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1CD7C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1CD80 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1CD88 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1CD8C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1CD90 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1CD94 | size: 0x4
.obj gap_04_0001CD94_data, global
.hidden gap_04_0001CD94_data
	.4byte 0x00000000
.endobj gap_04_0001CD94_data

# .data:0x40 | 0x1CD98 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1CDA0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1CDA4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1CDA8 | size: 0xC4
.obj unit_kuriboo_24_data_1CDA8, global
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_tik_0000ba98
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
	.4byte str_SFX_ENM_KURI_DAMAGED_tik_0000baa8
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tik_0000bac0
	.4byte str_SFX_BTL_DAMAGE_ICE1_tik_0000bad8
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tik_0000baec
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event_kuribo_new #MOD: init_event
	.4byte data_table
.endobj unit_kuriboo_24_data_1CDA8

# .data:0x114 | 0x1CE6C | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_tik_0000bb08
	.4byte 0x00000002
	.4byte str_KUR_Y_1_tik_0000bb10
	.4byte 0x00000009
	.4byte str_KUR_Y_1_tik_0000bb10
	.4byte 0x00000005
	.4byte str_KUR_K_1_tik_0000bb18
	.4byte 0x00000004
	.4byte str_KUR_I_1_tik_0000bb20
	.4byte 0x00000003
	.4byte str_KUR_I_1_tik_0000bb20
	.4byte 0x0000001C
	.4byte str_KUR_S_1_tik_0000bb28
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_tik_0000bb30
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_tik_0000bb30
	.4byte 0x0000001F
	.4byte str_KUR_S_1_tik_0000bb28
	.4byte 0x00000027
	.4byte str_KUR_D_1_tik_0000bb38
	.4byte 0x00000032
	.4byte str_KUR_A_1_tik_0000bb40
	.4byte 0x00000033
	.4byte str_KUR_A_2_tik_0000bb48
	.4byte 0x0000002A
	.4byte str_KUR_R_1_tik_0000bb50
	.4byte 0x00000029
	.4byte str_KUR_R_2_tik_0000bb58
	.4byte 0x00000028
	.4byte str_KUR_W_1_tik_0000bb60
	.4byte 0x00000038
	.4byte str_KUR_I_1_tik_0000bb20
	.4byte 0x00000039
	.4byte str_KUR_I_1_tik_0000bb20
	.4byte 0x00000041
	.4byte str_KUR_T_1_tik_0000bb68
	.4byte 0x00000045
	.4byte str_KUR_S_1_tik_0000bb28
.endobj pose_table

# .data:0x1B4 | 0x1CF0C | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0x1CF1C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1C9 | 0x1CF21 | size: 0x3
.obj gap_04_0001CF21_data, global
.hidden gap_04_0001CF21_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001CF21_data

# .data:0x1CC | 0x1CF24 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1D1 | 0x1CF29 | size: 0x3
.obj gap_04_0001CF29_data, global
.hidden gap_04_0001CF29_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001CF29_data

# .data:0x1D4 | 0x1CF2C | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x64646464
	.2byte 0x6496
.endobj regist

# .data:0x1EA | 0x1CF42 | size: 0x2
.obj gap_04_0001CF42_data, global
.hidden gap_04_0001CF42_data
	.2byte 0x0000
.endobj gap_04_0001CF42_data

# .data:0x1EC | 0x1CF44 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_tik_0000ba98
	.4byte str_c_kuribo_tik_0000bb70
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

# .data:0x238 | 0x1CF90 | size: 0xC0
.obj weapon_tik_kuriboo_attack, global
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
.endobj weapon_tik_kuriboo_attack
