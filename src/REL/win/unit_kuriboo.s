.include "macros.inc"
.file "unit_kuriboo.o"

# 0x00000ECC..0x00000FE4 | size: 0x118
.text
.balign 4

# .text:0x0 | 0xECC | size: 0x118
.fn krb_get_dir, local
/* 00000ECC 00000F90  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00000ED0 00000F94  7C 08 02 A6 */	mflr r0
/* 00000ED4 00000F98  90 01 00 64 */	stw r0, 0x64(r1)
/* 00000ED8 00000F9C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00000EDC 00000FA0  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00000EE0 00000FA4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00000EE4 00000FA8  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00000EE8 00000FAC  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00000EEC 00000FB0  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00000EF0 00000FB4  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00000EF4 00000FB8  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00000EF8 00000FBC  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00000EFC 00000FC0  7C 7E 1B 78 */	mr r30, r3
/* 00000F00 00000FC4  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000F04 00000FC8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000F08 00000FCC  4B FF FE 81 */	bl evtGetFloat
/* 00000F0C 00000FD0  FF 80 08 90 */	fmr f28, f1
/* 00000F10 00000FD4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000F14 00000FD8  7F C3 F3 78 */	mr r3, r30
/* 00000F18 00000FDC  4B FF FE 71 */	bl evtGetFloat
/* 00000F1C 00000FE0  FF A0 08 90 */	fmr f29, f1
/* 00000F20 00000FE4  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00000F24 00000FE8  7F C3 F3 78 */	mr r3, r30
/* 00000F28 00000FEC  4B FF FE 61 */	bl evtGetFloat
/* 00000F2C 00000FF0  FF C0 08 90 */	fmr f30, f1
/* 00000F30 00000FF4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00000F34 00000FF8  7F C3 F3 78 */	mr r3, r30
/* 00000F38 00000FFC  4B FF FE 51 */	bl evtGetFloat
/* 00000F3C 00001000  FF E0 08 90 */	fmr f31, f1
/* 00000F40 00001004  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000F44 00001008  7F C3 F3 78 */	mr r3, r30
/* 00000F48 0000100C  4B FF FE 41 */	bl evtGetValue
/* 00000F4C 00001010  3C 80 00 00 */	lis r4, zero_win_00004f20@ha
/* 00000F50 00001014  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00000F54 00001018  C0 04 00 00 */	lfs f0, zero_win_00004f20@l(r4)
/* 00000F58 0000101C  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00000F5C 00001020  7C 65 1B 78 */	mr r5, r3
/* 00000F60 00001024  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00000F64 00001028  40 82 00 20 */	bne .L_00000F84
/* 00000F68 0000102C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00000F6C 00001030  40 82 00 18 */	bne .L_00000F84
/* 00000F70 00001034  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000F74 00001038  7F C3 F3 78 */	mr r3, r30
/* 00000F78 0000103C  4B FF FE 11 */	bl evtSetValue
/* 00000F7C 00001040  38 60 00 02 */	li r3, 0x2
/* 00000F80 00001044  48 00 00 30 */	b .L_00000FB0
.L_00000F84:
/* 00000F84 00001048  3C 60 00 00 */	lis r3, zero_win_00004f20@ha
/* 00000F88 0000104C  C0 63 00 00 */	lfs f3, zero_win_00004f20@l(r3)
/* 00000F8C 00001050  FC 80 18 90 */	fmr f4, f3
/* 00000F90 00001054  4B FF FD F9 */	bl angleABf_1
/* 00000F94 00001058  FC 00 08 1E */	fctiwz f0, f1
/* 00000F98 0000105C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000F9C 00001060  7F C3 F3 78 */	mr r3, r30
/* 00000FA0 00001064  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00000FA4 00001068  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00000FA8 0000106C  4B FF FD E1 */	bl evtSetValue
/* 00000FAC 00001070  38 60 00 02 */	li r3, 0x2
.L_00000FB0:
/* 00000FB0 00001074  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00000FB4 00001078  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00000FB8 0000107C  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00000FBC 00001080  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00000FC0 00001084  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00000FC4 00001088  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00000FC8 0000108C  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 00000FCC 00001090  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00000FD0 00001094  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00000FD4 00001098  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00000FD8 0000109C  7C 08 03 A6 */	mtlr r0
/* 00000FDC 000010A0  38 21 00 60 */	addi r1, r1, 0x60
/* 00000FE0 000010A4  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00001688..0x000017E0 | size: 0x158
.rodata
.balign 8

# .rodata:0x0 | 0x1688 | size: 0xF
.obj str_btl_un_kuriboo_win_00004dd0, local
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_win_00004dd0

# .rodata:0xF | 0x1697 | size: 0x1
.obj gap_03_00001697_rodata, global
.hidden gap_03_00001697_rodata
	.byte 0x00
.endobj gap_03_00001697_rodata

# .rodata:0x10 | 0x1698 | size: 0x16
.obj str_SFX_ENM_KURI_DAMAGED_win_00004de0, local
	.string "SFX_ENM_KURI_DAMAGED1"
.endobj str_SFX_ENM_KURI_DAMAGED_win_00004de0

# .rodata:0x26 | 0x16AE | size: 0x2
.obj gap_03_000016AE_rodata, global
.hidden gap_03_000016AE_rodata
	.2byte 0x0000
.endobj gap_03_000016AE_rodata

# .rodata:0x28 | 0x16B0 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_win_00004df8, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_win_00004df8

# .rodata:0x3D | 0x16C5 | size: 0x3
.obj gap_03_000016C5_rodata, global
.hidden gap_03_000016C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016C5_rodata

# .rodata:0x40 | 0x16C8 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_win_00004e10, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_win_00004e10

# .rodata:0x54 | 0x16DC | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_win_00004e24, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_win_00004e24

# .rodata:0x6D | 0x16F5 | size: 0x3
.obj gap_03_000016F5_rodata, global
.hidden gap_03_000016F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016F5_rodata

# .rodata:0x70 | 0x16F8 | size: 0x8
.obj str_KUR_N_1_win_00004e40, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_win_00004e40

# .rodata:0x78 | 0x1700 | size: 0x8
.obj str_KUR_Y_1_win_00004e48, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_win_00004e48

# .rodata:0x80 | 0x1708 | size: 0x8
.obj str_KUR_K_1_win_00004e50, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_win_00004e50

# .rodata:0x88 | 0x1710 | size: 0x8
.obj str_KUR_I_1_win_00004e58, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_win_00004e58

# .rodata:0x90 | 0x1718 | size: 0x8
.obj str_KUR_S_1_win_00004e60, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_win_00004e60

# .rodata:0x98 | 0x1720 | size: 0x8
.obj str_KUR_Q_1_win_00004e68, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_win_00004e68

# .rodata:0xA0 | 0x1728 | size: 0x8
.obj str_KUR_D_1_win_00004e70, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_win_00004e70

# .rodata:0xA8 | 0x1730 | size: 0x8
.obj str_KUR_A_1_win_00004e78, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_win_00004e78

# .rodata:0xB0 | 0x1738 | size: 0x8
.obj str_KUR_A_2_win_00004e80, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_win_00004e80

# .rodata:0xB8 | 0x1740 | size: 0x8
.obj str_KUR_R_1_win_00004e88, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_win_00004e88

# .rodata:0xC0 | 0x1748 | size: 0x8
.obj str_KUR_R_2_win_00004e90, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_win_00004e90

# .rodata:0xC8 | 0x1750 | size: 0x8
.obj str_KUR_W_1_win_00004e98, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_win_00004e98

# .rodata:0xD0 | 0x1758 | size: 0x8
.obj str_KUR_T_1_win_00004ea0, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_win_00004ea0

# .rodata:0xD8 | 0x1760 | size: 0x9
.obj str_c_kuribo_win_00004ea8, local
	.string "c_kuribo"
.endobj str_c_kuribo_win_00004ea8

# .rodata:0xE1 | 0x1769 | size: 0x3
.obj gap_03_00001769_rodata, global
.hidden gap_03_00001769_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001769_rodata

# .rodata:0xE4 | 0x176C | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_win_00004eb4, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_win_00004eb4

# .rodata:0xF7 | 0x177F | size: 0x1
.obj gap_03_0000177F_rodata, global
.hidden gap_03_0000177F_rodata
	.byte 0x00
.endobj gap_03_0000177F_rodata

# .rodata:0xF8 | 0x1780 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_win_00004ec8, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_win_00004ec8

# .rodata:0x10B | 0x1793 | size: 0x1
.obj gap_03_00001793_rodata, global
.hidden gap_03_00001793_rodata
	.byte 0x00
.endobj gap_03_00001793_rodata

# .rodata:0x10C | 0x1794 | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_win_00004edc, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_win_00004edc

# .rodata:0x11F | 0x17A7 | size: 0x1
.obj gap_03_000017A7_rodata, global
.hidden gap_03_000017A7_rodata
	.byte 0x00
.endobj gap_03_000017A7_rodata

# .rodata:0x120 | 0x17A8 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_win_00004ef0, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_win_00004ef0

# .rodata:0x136 | 0x17BE | size: 0x2
.obj gap_03_000017BE_rodata, global
.hidden gap_03_000017BE_rodata
	.2byte 0x0000
.endobj gap_03_000017BE_rodata

# .rodata:0x138 | 0x17C0 | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_win_00004f08, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_win_00004f08
	.byte 0x00, 0x00, 0x00

# .rodata:0x150 | 0x17D8 | size: 0x4
.obj zero_win_00004f20, local
	.float 0
.endobj zero_win_00004f20

# .rodata:0x154 | 0x17DC | size: 0x4
.obj gap_03_000017DC_rodata, global
.hidden gap_03_000017DC_rodata
	.4byte 0x00000000
.endobj gap_03_000017DC_rodata

# 0x0000BA78..0x0000C610 | size: 0xB98
.data
.balign 8

# .data:0x0 | 0xBA78 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xBA80 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xBA84 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xBA88 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xBA8C | size: 0x4
.obj gap_04_0000BA8C_data, global
.hidden gap_04_0000BA8C_data
	.4byte 0x00000000
.endobj gap_04_0000BA8C_data

# .data:0x18 | 0xBA90 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xBA98 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xBA9C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xBAA0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xBAA8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xBAAC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xBAB0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xBAB4 | size: 0x4
.obj gap_04_0000BAB4_data, global
.hidden gap_04_0000BAB4_data
	.4byte 0x00000000
.endobj gap_04_0000BAB4_data

# .data:0x40 | 0xBAB8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xBAC0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xBAC4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xBAC8 | size: 0xC4
.obj unit_kuriboo, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_win_00004dd0
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
	.4byte str_SFX_ENM_KURI_DAMAGED_win_00004de0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_win_00004df8
	.4byte str_SFX_BTL_DAMAGE_ICE1_win_00004e10
	.4byte str_SFX_BTL_DAMAGE_BIRIB_win_00004e24
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_kuriboo

# .data:0x114 | 0xBB8C | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_win_00004e40
	.4byte 0x00000002
	.4byte str_KUR_Y_1_win_00004e48
	.4byte 0x00000009
	.4byte str_KUR_Y_1_win_00004e48
	.4byte 0x00000005
	.4byte str_KUR_K_1_win_00004e50
	.4byte 0x00000004
	.4byte str_KUR_I_1_win_00004e58
	.4byte 0x00000003
	.4byte str_KUR_I_1_win_00004e58
	.4byte 0x0000001C
	.4byte str_KUR_S_1_win_00004e60
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_win_00004e68
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_win_00004e68
	.4byte 0x0000001F
	.4byte str_KUR_S_1_win_00004e60
	.4byte 0x00000027
	.4byte str_KUR_D_1_win_00004e70
	.4byte 0x00000032
	.4byte str_KUR_A_1_win_00004e78
	.4byte 0x00000033
	.4byte str_KUR_A_2_win_00004e80
	.4byte 0x0000002A
	.4byte str_KUR_R_1_win_00004e88
	.4byte 0x00000029
	.4byte str_KUR_R_2_win_00004e90
	.4byte 0x00000028
	.4byte str_KUR_W_1_win_00004e98
	.4byte 0x00000038
	.4byte str_KUR_I_1_win_00004e58
	.4byte 0x00000039
	.4byte str_KUR_I_1_win_00004e58
	.4byte 0x00000041
	.4byte str_KUR_T_1_win_00004ea0
	.4byte 0x00000045
	.4byte str_KUR_S_1_win_00004e60
.endobj pose_table

# .data:0x1B4 | 0xBC2C | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0xBC3C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1C9 | 0xBC41 | size: 0x3
.obj gap_04_0000BC41_data, global
.hidden gap_04_0000BC41_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000BC41_data

# .data:0x1CC | 0xBC44 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1D1 | 0xBC49 | size: 0x3
.obj gap_04_0000BC49_data, global
.hidden gap_04_0000BC49_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000BC49_data

# .data:0x1D4 | 0xBC4C | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x64646464
	.2byte 0x6496
.endobj regist

# .data:0x1EA | 0xBC62 | size: 0x2
.obj gap_04_0000BC62_data, global
.hidden gap_04_0000BC62_data
	.2byte 0x0000
.endobj gap_04_0000BC62_data

# .data:0x1EC | 0xBC64 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_win_00004dd0
	.4byte str_c_kuribo_win_00004ea8
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

# .data:0x238 | 0xBCB0 | size: 0xC0
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

# .data:0x2F8 | 0xBD70 | size: 0xA8
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
	.4byte str_SFX_ENM_KURI_MOVE1_win_00004eb4
	.4byte str_SFX_ENM_KURI_MOVE2_win_00004ec8
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_win_00004eb4
	.4byte str_SFX_ENM_KURI_MOVE2_win_00004ec8
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_win_00004edc
	.4byte str_SFX_ENM_KURI_LANDING_win_00004ef0
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3A0 | 0xBE18 | size: 0x28
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

# .data:0x3C8 | 0xBE40 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x3D0 | 0xBE48 | size: 0x7B0
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
	.4byte str_SFX_ENM_KURI_ATTACK1_win_00004f08
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
	.4byte str_SFX_ENM_KURI_MOVE1_win_00004eb4
	.4byte str_SFX_ENM_KURI_MOVE2_win_00004ec8
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

# .data:0xB80 | 0xC5F8 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
