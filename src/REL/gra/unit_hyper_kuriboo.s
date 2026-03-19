.include "macros.inc"
.file "unit_hyper_kuriboo.o"

# 0x00000EA8..0x00000FC0 | size: 0x118
.text
.balign 4

# .text:0x0 | 0xEA8 | size: 0x118
.fn krb_get_dir, local
/* 00000EA8 00000F6C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00000EAC 00000F70  7C 08 02 A6 */	mflr r0
/* 00000EB0 00000F74  90 01 00 64 */	stw r0, 0x64(r1)
/* 00000EB4 00000F78  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00000EB8 00000F7C  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00000EBC 00000F80  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00000EC0 00000F84  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00000EC4 00000F88  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00000EC8 00000F8C  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00000ECC 00000F90  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00000ED0 00000F94  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00000ED4 00000F98  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00000ED8 00000F9C  7C 7E 1B 78 */	mr r30, r3
/* 00000EDC 00000FA0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000EE0 00000FA4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000EE4 00000FA8  4B FF F6 2D */	bl evtGetFloat
/* 00000EE8 00000FAC  FF 80 08 90 */	fmr f28, f1
/* 00000EEC 00000FB0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000EF0 00000FB4  7F C3 F3 78 */	mr r3, r30
/* 00000EF4 00000FB8  4B FF F6 1D */	bl evtGetFloat
/* 00000EF8 00000FBC  FF A0 08 90 */	fmr f29, f1
/* 00000EFC 00000FC0  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00000F00 00000FC4  7F C3 F3 78 */	mr r3, r30
/* 00000F04 00000FC8  4B FF F6 0D */	bl evtGetFloat
/* 00000F08 00000FCC  FF C0 08 90 */	fmr f30, f1
/* 00000F0C 00000FD0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00000F10 00000FD4  7F C3 F3 78 */	mr r3, r30
/* 00000F14 00000FD8  4B FF F5 FD */	bl evtGetFloat
/* 00000F18 00000FDC  FF E0 08 90 */	fmr f31, f1
/* 00000F1C 00000FE0  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000F20 00000FE4  7F C3 F3 78 */	mr r3, r30
/* 00000F24 00000FE8  4B FF F5 ED */	bl evtGetValue
/* 00000F28 00000FEC  3C 80 00 00 */	lis r4, zero_gra_00002680@ha
/* 00000F2C 00000FF0  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00000F30 00000FF4  C0 04 00 00 */	lfs f0, zero_gra_00002680@l(r4)
/* 00000F34 00000FF8  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00000F38 00000FFC  7C 65 1B 78 */	mr r5, r3
/* 00000F3C 00001000  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00000F40 00001004  40 82 00 20 */	bne .L_00000F60
/* 00000F44 00001008  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00000F48 0000100C  40 82 00 18 */	bne .L_00000F60
/* 00000F4C 00001010  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000F50 00001014  7F C3 F3 78 */	mr r3, r30
/* 00000F54 00001018  4B FF F5 BD */	bl evtSetValue
/* 00000F58 0000101C  38 60 00 02 */	li r3, 0x2
/* 00000F5C 00001020  48 00 00 30 */	b .L_00000F8C
.L_00000F60:
/* 00000F60 00001024  3C 60 00 00 */	lis r3, zero_gra_00002680@ha
/* 00000F64 00001028  C0 63 00 00 */	lfs f3, zero_gra_00002680@l(r3)
/* 00000F68 0000102C  FC 80 18 90 */	fmr f4, f3
/* 00000F6C 00001030  4B FF F5 A5 */	bl angleABf_1
/* 00000F70 00001034  FC 00 08 1E */	fctiwz f0, f1
/* 00000F74 00001038  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000F78 0000103C  7F C3 F3 78 */	mr r3, r30
/* 00000F7C 00001040  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00000F80 00001044  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00000F84 00001048  4B FF F5 8D */	bl evtSetValue
/* 00000F88 0000104C  38 60 00 02 */	li r3, 0x2
.L_00000F8C:
/* 00000F8C 00001050  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00000F90 00001054  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00000F94 00001058  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00000F98 0000105C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00000F9C 00001060  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00000FA0 00001064  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00000FA4 00001068  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 00000FA8 0000106C  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00000FAC 00001070  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00000FB0 00001074  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00000FB4 00001078  7C 08 03 A6 */	mtlr r0
/* 00000FB8 0000107C  38 21 00 60 */	addi r1, r1, 0x60
/* 00000FBC 00001080  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00001048..0x000011C8 | size: 0x180
.rodata
.balign 8

# .rodata:0x0 | 0x1048 | size: 0x15
.obj str_btl_un_hyper_kuriboo_gra_00002508, local
	.string "btl_un_hyper_kuriboo"
.endobj str_btl_un_hyper_kuriboo_gra_00002508

# .rodata:0x15 | 0x105D | size: 0x3
.obj gap_03_0000105D_rodata, global
.hidden gap_03_0000105D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000105D_rodata

# .rodata:0x18 | 0x1060 | size: 0x16
.obj str_SFX_ENM_KURI_DAMAGED_gra_00002520, local
	.string "SFX_ENM_KURI_DAMAGED1"
.endobj str_SFX_ENM_KURI_DAMAGED_gra_00002520

# .rodata:0x2E | 0x1076 | size: 0x2
.obj gap_03_00001076_rodata, global
.hidden gap_03_00001076_rodata
	.2byte 0x0000
.endobj gap_03_00001076_rodata

# .rodata:0x30 | 0x1078 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_gra_00002538, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_gra_00002538

# .rodata:0x45 | 0x108D | size: 0x3
.obj gap_03_0000108D_rodata, global
.hidden gap_03_0000108D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000108D_rodata

# .rodata:0x48 | 0x1090 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_gra_00002550, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_gra_00002550

# .rodata:0x5C | 0x10A4 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_gra_00002564, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_gra_00002564

# .rodata:0x75 | 0x10BD | size: 0x3
.obj gap_03_000010BD_rodata, global
.hidden gap_03_000010BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000010BD_rodata

# .rodata:0x78 | 0x10C0 | size: 0x8
.obj str_KUR_N_1_gra_00002580, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_gra_00002580

# .rodata:0x80 | 0x10C8 | size: 0x8
.obj str_KUR_Y_1_gra_00002588, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_gra_00002588

# .rodata:0x88 | 0x10D0 | size: 0x8
.obj str_KUR_K_1_gra_00002590, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_gra_00002590

# .rodata:0x90 | 0x10D8 | size: 0x8
.obj str_KUR_I_1_gra_00002598, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_gra_00002598

# .rodata:0x98 | 0x10E0 | size: 0x8
.obj str_KUR_S_1_gra_000025a0, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_gra_000025a0

# .rodata:0xA0 | 0x10E8 | size: 0x8
.obj str_KUR_Q_1_gra_000025a8, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_gra_000025a8

# .rodata:0xA8 | 0x10F0 | size: 0x8
.obj str_KUR_D_1_gra_000025b0, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_gra_000025b0

# .rodata:0xB0 | 0x10F8 | size: 0x8
.obj str_KUR_A_1_gra_000025b8, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_gra_000025b8

# .rodata:0xB8 | 0x1100 | size: 0x8
.obj str_KUR_A_2_gra_000025c0, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_gra_000025c0

# .rodata:0xC0 | 0x1108 | size: 0x8
.obj str_KUR_R_1_gra_000025c8, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_gra_000025c8

# .rodata:0xC8 | 0x1110 | size: 0x8
.obj str_KUR_R_2_gra_000025d0, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_gra_000025d0

# .rodata:0xD0 | 0x1118 | size: 0x8
.obj str_KUR_W_1_gra_000025d8, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_gra_000025d8

# .rodata:0xD8 | 0x1120 | size: 0x8
.obj str_KUR_T_1_gra_000025e0, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_gra_000025e0

# .rodata:0xE0 | 0x1128 | size: 0xB
.obj str_c_kuribo_h_gra_000025e8, local
	.string "c_kuribo_h"
.endobj str_c_kuribo_h_gra_000025e8

# .rodata:0xEB | 0x1133 | size: 0x1
.obj gap_03_00001133_rodata, global
.hidden gap_03_00001133_rodata
	.byte 0x00
.endobj gap_03_00001133_rodata

# .rodata:0xEC | 0x1134 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_gra_000025f4, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_gra_000025f4

# .rodata:0xFF | 0x1147 | size: 0x1
.obj gap_03_00001147_rodata, global
.hidden gap_03_00001147_rodata
	.byte 0x00
.endobj gap_03_00001147_rodata

# .rodata:0x100 | 0x1148 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_gra_00002608, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_gra_00002608

# .rodata:0x113 | 0x115B | size: 0x1
.obj gap_03_0000115B_rodata, global
.hidden gap_03_0000115B_rodata
	.byte 0x00
.endobj gap_03_0000115B_rodata

# .rodata:0x114 | 0x115C | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_gra_0000261c, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_gra_0000261c

# .rodata:0x127 | 0x116F | size: 0x1
.obj gap_03_0000116F_rodata, global
.hidden gap_03_0000116F_rodata
	.byte 0x00
.endobj gap_03_0000116F_rodata

# .rodata:0x128 | 0x1170 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_gra_00002630, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_gra_00002630

# .rodata:0x13E | 0x1186 | size: 0x2
.obj gap_03_00001186_rodata, global
.hidden gap_03_00001186_rodata
	.2byte 0x0000
.endobj gap_03_00001186_rodata

# .rodata:0x140 | 0x1188 | size: 0x10
.obj str_SFX_ENM_CHARGE1_gra_00002648, local
	.string "SFX_ENM_CHARGE1"
.endobj str_SFX_ENM_CHARGE1_gra_00002648

# .rodata:0x150 | 0x1198 | size: 0x1
.obj zero_gra_00002658, local
	.byte 0x00
.endobj zero_gra_00002658

# .rodata:0x151 | 0x1199 | size: 0x3
.obj gap_03_00001199_rodata, global
.hidden gap_03_00001199_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001199_rodata

# .rodata:0x154 | 0x119C | size: 0xC
.obj str_crystal_n64_gra_0000265c, local
	.string "crystal_n64"
.endobj str_crystal_n64_gra_0000265c

# .rodata:0x160 | 0x11A8 | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_gra_00002668, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_gra_00002668
	.byte 0x00, 0x00, 0x00

# .rodata:0x178 | 0x11C0 | size: 0x4
.obj zero_gra_00002680, local
	.float 0
.endobj zero_gra_00002680

# .rodata:0x17C | 0x11C4 | size: 0x4
.obj gap_03_000011C4_rodata, global
.hidden gap_03_000011C4_rodata
	.4byte 0x00000000
.endobj gap_03_000011C4_rodata

# 0x00009BA8..0x0000AA60 | size: 0xEB8
.data
.balign 8

# .data:0x0 | 0x9BA8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x9BB0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x9BB4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x9BB8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x9BBC | size: 0x4
.obj gap_04_00009BBC_data, global
.hidden gap_04_00009BBC_data
	.4byte 0x00000000
.endobj gap_04_00009BBC_data

# .data:0x18 | 0x9BC0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x9BC8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x9BCC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x9BD0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x9BD8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x9BDC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x9BE0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x9BE4 | size: 0x4
.obj gap_04_00009BE4_data, global
.hidden gap_04_00009BE4_data
	.4byte 0x00000000
.endobj gap_04_00009BE4_data

# .data:0x40 | 0x9BE8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x9BF0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x9BF4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x9BF8 | size: 0xC4
.obj unit_hyper_kuriboo_10_data_9BF8, global
	.4byte 0x00000042
	.4byte str_btl_un_hyper_kuriboo_gra_00002508
	.4byte 0x00080000
	.4byte 0x01010F00
	.4byte 0x02460146
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
	.4byte str_SFX_ENM_KURI_DAMAGED_gra_00002520
	.4byte str_SFX_BTL_DAMAGE_FIRE1_gra_00002538
	.4byte str_SFX_BTL_DAMAGE_ICE1_gra_00002550
	.4byte str_SFX_BTL_DAMAGE_BIRIB_gra_00002564
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_hyper_kuriboo_10_data_9BF8

# .data:0x114 | 0x9CBC | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_gra_00002580
	.4byte 0x00000002
	.4byte str_KUR_Y_1_gra_00002588
	.4byte 0x00000009
	.4byte str_KUR_Y_1_gra_00002588
	.4byte 0x00000005
	.4byte str_KUR_K_1_gra_00002590
	.4byte 0x00000004
	.4byte str_KUR_I_1_gra_00002598
	.4byte 0x00000003
	.4byte str_KUR_I_1_gra_00002598
	.4byte 0x0000001C
	.4byte str_KUR_S_1_gra_000025a0
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_gra_000025a8
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_gra_000025a8
	.4byte 0x0000001F
	.4byte str_KUR_S_1_gra_000025a0
	.4byte 0x00000027
	.4byte str_KUR_D_1_gra_000025b0
	.4byte 0x00000032
	.4byte str_KUR_A_1_gra_000025b8
	.4byte 0x00000033
	.4byte str_KUR_A_2_gra_000025c0
	.4byte 0x0000002A
	.4byte str_KUR_R_1_gra_000025c8
	.4byte 0x00000029
	.4byte str_KUR_R_2_gra_000025d0
	.4byte 0x00000028
	.4byte str_KUR_W_1_gra_000025d8
	.4byte 0x00000038
	.4byte str_KUR_I_1_gra_00002598
	.4byte 0x00000039
	.4byte str_KUR_I_1_gra_00002598
	.4byte 0x00000041
	.4byte str_KUR_T_1_gra_000025e0
	.4byte 0x00000045
	.4byte str_KUR_S_1_gra_000025a0
.endobj pose_table

# .data:0x1B4 | 0x9D5C | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0x9D6C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1C9 | 0x9D71 | size: 0x3
.obj gap_04_00009D71_data, global
.hidden gap_04_00009D71_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00009D71_data

# .data:0x1CC | 0x9D74 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1D1 | 0x9D79 | size: 0x3
.obj gap_04_00009D79_data, global
.hidden gap_04_00009D79_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00009D79_data

# .data:0x1D4 | 0x9D7C | size: 0x16
.obj regist, local
	.ascii "PZPdPddPd_d_d_PZPdPdd_"
.endobj regist

# .data:0x1EA | 0x9D92 | size: 0x2
.obj gap_04_00009D92_data, global
.hidden gap_04_00009D92_data
	.2byte 0x0000
.endobj gap_04_00009D92_data

# .data:0x1EC | 0x9D94 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_hyper_kuriboo_gra_00002508
	.4byte str_c_kuribo_h_gra_000025e8
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

# .data:0x238 | 0x9DE0 | size: 0xC0
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

# .data:0x2F8 | 0x9EA0 | size: 0xC0
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

# .data:0x3B8 | 0x9F60 | size: 0xBC
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
	.4byte str_SFX_ENM_KURI_MOVE1_gra_000025f4
	.4byte str_SFX_ENM_KURI_MOVE2_gra_00002608
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_gra_000025f4
	.4byte str_SFX_ENM_KURI_MOVE2_gra_00002608
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_gra_0000261c
	.4byte str_SFX_ENM_KURI_LANDING_gra_00002630
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

# .data:0x474 | 0xA01C | size: 0x28
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

# .data:0x49C | 0xA044 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x4A4 | 0xA04C | size: 0x9F8
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
	.4byte str_SFX_ENM_CHARGE1_gra_00002648
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_gra_00002658
	.4byte str_crystal_n64_gra_0000265c
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
	.4byte str_SFX_ENM_KURI_ATTACK1_gra_00002668
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
	.4byte str_SFX_ENM_KURI_MOVE1_gra_000025f4
	.4byte str_SFX_ENM_KURI_MOVE2_gra_00002608
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

# .data:0xE9C | 0xAA44 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0xEB4 | 0xAA5C | size: 0x4
.obj gap_04_0000AA5C_data, global
.hidden gap_04_0000AA5C_data
	.4byte 0x00000000
.endobj gap_04_0000AA5C_data
