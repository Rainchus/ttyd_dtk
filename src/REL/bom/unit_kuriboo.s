.include "macros.inc"
.file "unit_kuriboo.o"

# 0x00005C70..0x00005D88 | size: 0x118
.text
.balign 4

# .text:0x0 | 0x5C70 | size: 0x118
.fn krb_get_dir, local
/* 00005C70 00005D34  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00005C74 00005D38  7C 08 02 A6 */	mflr r0
/* 00005C78 00005D3C  90 01 00 64 */	stw r0, 0x64(r1)
/* 00005C7C 00005D40  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00005C80 00005D44  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00005C84 00005D48  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00005C88 00005D4C  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00005C8C 00005D50  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00005C90 00005D54  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00005C94 00005D58  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00005C98 00005D5C  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00005C9C 00005D60  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00005CA0 00005D64  7C 7E 1B 78 */	mr r30, r3
/* 00005CA4 00005D68  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005CA8 00005D6C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005CAC 00005D70  4B FF A3 55 */	bl evtGetFloat
/* 00005CB0 00005D74  FF 80 08 90 */	fmr f28, f1
/* 00005CB4 00005D78  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005CB8 00005D7C  7F C3 F3 78 */	mr r3, r30
/* 00005CBC 00005D80  4B FF A3 45 */	bl evtGetFloat
/* 00005CC0 00005D84  FF A0 08 90 */	fmr f29, f1
/* 00005CC4 00005D88  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00005CC8 00005D8C  7F C3 F3 78 */	mr r3, r30
/* 00005CCC 00005D90  4B FF A3 35 */	bl evtGetFloat
/* 00005CD0 00005D94  FF C0 08 90 */	fmr f30, f1
/* 00005CD4 00005D98  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00005CD8 00005D9C  7F C3 F3 78 */	mr r3, r30
/* 00005CDC 00005DA0  4B FF A3 25 */	bl evtGetFloat
/* 00005CE0 00005DA4  FF E0 08 90 */	fmr f31, f1
/* 00005CE4 00005DA8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005CE8 00005DAC  7F C3 F3 78 */	mr r3, r30
/* 00005CEC 00005DB0  4B FF A3 15 */	bl evtGetValue
/* 00005CF0 00005DB4  3C 80 00 00 */	lis r4, zero_bom_000082b0@ha
/* 00005CF4 00005DB8  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00005CF8 00005DBC  C0 04 00 00 */	lfs f0, zero_bom_000082b0@l(r4)
/* 00005CFC 00005DC0  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00005D00 00005DC4  7C 65 1B 78 */	mr r5, r3
/* 00005D04 00005DC8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00005D08 00005DCC  40 82 00 20 */	bne .L_00005D28
/* 00005D0C 00005DD0  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00005D10 00005DD4  40 82 00 18 */	bne .L_00005D28
/* 00005D14 00005DD8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005D18 00005DDC  7F C3 F3 78 */	mr r3, r30
/* 00005D1C 00005DE0  4B FF A2 E5 */	bl evtSetValue
/* 00005D20 00005DE4  38 60 00 02 */	li r3, 0x2
/* 00005D24 00005DE8  48 00 00 30 */	b .L_00005D54
.L_00005D28:
/* 00005D28 00005DEC  3C 60 00 00 */	lis r3, zero_bom_000082b0@ha
/* 00005D2C 00005DF0  C0 63 00 00 */	lfs f3, zero_bom_000082b0@l(r3)
/* 00005D30 00005DF4  FC 80 18 90 */	fmr f4, f3
/* 00005D34 00005DF8  4B FF A2 CD */	bl angleABf_1
/* 00005D38 00005DFC  FC 00 08 1E */	fctiwz f0, f1
/* 00005D3C 00005E00  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005D40 00005E04  7F C3 F3 78 */	mr r3, r30
/* 00005D44 00005E08  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00005D48 00005E0C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00005D4C 00005E10  4B FF A2 B5 */	bl evtSetValue
/* 00005D50 00005E14  38 60 00 02 */	li r3, 0x2
.L_00005D54:
/* 00005D54 00005E18  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00005D58 00005E1C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00005D5C 00005E20  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00005D60 00005E24  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00005D64 00005E28  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00005D68 00005E2C  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00005D6C 00005E30  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 00005D70 00005E34  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00005D74 00005E38  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00005D78 00005E3C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00005D7C 00005E40  7C 08 03 A6 */	mtlr r0
/* 00005D80 00005E44  38 21 00 60 */	addi r1, r1, 0x60
/* 00005D84 00005E48  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00001F00..0x00002058 | size: 0x158
.rodata
.balign 8

# .rodata:0x0 | 0x1F00 | size: 0xF
.obj str_btl_un_kuriboo_bom_00008160, local
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_bom_00008160

# .rodata:0xF | 0x1F0F | size: 0x1
.obj gap_03_00001F0F_rodata, global
.hidden gap_03_00001F0F_rodata
	.byte 0x00
.endobj gap_03_00001F0F_rodata

# .rodata:0x10 | 0x1F10 | size: 0x16
.obj str_SFX_ENM_KURI_DAMAGED_bom_00008170, local
	.string "SFX_ENM_KURI_DAMAGED1"
.endobj str_SFX_ENM_KURI_DAMAGED_bom_00008170

# .rodata:0x26 | 0x1F26 | size: 0x2
.obj gap_03_00001F26_rodata, global
.hidden gap_03_00001F26_rodata
	.2byte 0x0000
.endobj gap_03_00001F26_rodata

# .rodata:0x28 | 0x1F28 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_bom_00008188, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_bom_00008188

# .rodata:0x3D | 0x1F3D | size: 0x3
.obj gap_03_00001F3D_rodata, global
.hidden gap_03_00001F3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F3D_rodata

# .rodata:0x40 | 0x1F40 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_bom_000081a0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_bom_000081a0

# .rodata:0x54 | 0x1F54 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_bom_000081b4, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_bom_000081b4

# .rodata:0x6D | 0x1F6D | size: 0x3
.obj gap_03_00001F6D_rodata, global
.hidden gap_03_00001F6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F6D_rodata

# .rodata:0x70 | 0x1F70 | size: 0x8
.obj str_KUR_N_1_bom_000081d0, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_bom_000081d0

# .rodata:0x78 | 0x1F78 | size: 0x8
.obj str_KUR_Y_1_bom_000081d8, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_bom_000081d8

# .rodata:0x80 | 0x1F80 | size: 0x8
.obj str_KUR_K_1_bom_000081e0, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_bom_000081e0

# .rodata:0x88 | 0x1F88 | size: 0x8
.obj str_KUR_I_1_bom_000081e8, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_bom_000081e8

# .rodata:0x90 | 0x1F90 | size: 0x8
.obj str_KUR_S_1_bom_000081f0, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_bom_000081f0

# .rodata:0x98 | 0x1F98 | size: 0x8
.obj str_KUR_Q_1_bom_000081f8, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_bom_000081f8

# .rodata:0xA0 | 0x1FA0 | size: 0x8
.obj str_KUR_D_1_bom_00008200, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_bom_00008200

# .rodata:0xA8 | 0x1FA8 | size: 0x8
.obj str_KUR_A_1_bom_00008208, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_bom_00008208

# .rodata:0xB0 | 0x1FB0 | size: 0x8
.obj str_KUR_A_2_bom_00008210, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_bom_00008210

# .rodata:0xB8 | 0x1FB8 | size: 0x8
.obj str_KUR_R_1_bom_00008218, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_bom_00008218

# .rodata:0xC0 | 0x1FC0 | size: 0x8
.obj str_KUR_R_2_bom_00008220, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_bom_00008220

# .rodata:0xC8 | 0x1FC8 | size: 0x8
.obj str_KUR_W_1_bom_00008228, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_bom_00008228

# .rodata:0xD0 | 0x1FD0 | size: 0x8
.obj str_KUR_T_1_bom_00008230, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_bom_00008230

# .rodata:0xD8 | 0x1FD8 | size: 0x9
.obj str_c_kuribo_bom_00008238, local
	.string "c_kuribo"
.endobj str_c_kuribo_bom_00008238

# .rodata:0xE1 | 0x1FE1 | size: 0x3
.obj gap_03_00001FE1_rodata, global
.hidden gap_03_00001FE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001FE1_rodata

# .rodata:0xE4 | 0x1FE4 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_bom_00008244, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_bom_00008244

# .rodata:0xF7 | 0x1FF7 | size: 0x1
.obj gap_03_00001FF7_rodata, global
.hidden gap_03_00001FF7_rodata
	.byte 0x00
.endobj gap_03_00001FF7_rodata

# .rodata:0xF8 | 0x1FF8 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_bom_00008258, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_bom_00008258

# .rodata:0x10B | 0x200B | size: 0x1
.obj gap_03_0000200B_rodata, global
.hidden gap_03_0000200B_rodata
	.byte 0x00
.endobj gap_03_0000200B_rodata

# .rodata:0x10C | 0x200C | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_bom_0000826c, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_bom_0000826c

# .rodata:0x11F | 0x201F | size: 0x1
.obj gap_03_0000201F_rodata, global
.hidden gap_03_0000201F_rodata
	.byte 0x00
.endobj gap_03_0000201F_rodata

# .rodata:0x120 | 0x2020 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_bom_00008280, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_bom_00008280

# .rodata:0x136 | 0x2036 | size: 0x2
.obj gap_03_00002036_rodata, global
.hidden gap_03_00002036_rodata
	.2byte 0x0000
.endobj gap_03_00002036_rodata

# .rodata:0x138 | 0x2038 | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_bom_00008298, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_bom_00008298
	.byte 0x00, 0x00, 0x00

# .rodata:0x150 | 0x2050 | size: 0x4
.obj zero_bom_000082b0, local
	.float 0
.endobj zero_bom_000082b0

# .rodata:0x154 | 0x2054 | size: 0x4
.obj gap_03_00002054_rodata, global
.hidden gap_03_00002054_rodata
	.4byte 0x00000000
.endobj gap_03_00002054_rodata

# 0x0000ACB8..0x0000B850 | size: 0xB98
.data
.balign 8

# .data:0x0 | 0xACB8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xACC0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xACC4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xACC8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xACCC | size: 0x4
.obj gap_04_0000ACCC_data, global
.hidden gap_04_0000ACCC_data
	.4byte 0x00000000
.endobj gap_04_0000ACCC_data

# .data:0x18 | 0xACD0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xACD8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xACDC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xACE0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xACE8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xACEC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xACF0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xACF4 | size: 0x4
.obj gap_04_0000ACF4_data, global
.hidden gap_04_0000ACF4_data
	.4byte 0x00000000
.endobj gap_04_0000ACF4_data

# .data:0x40 | 0xACF8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xAD00 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xAD04 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xAD08 | size: 0xC4
.obj unit_kuriboo_3_data_AD08, global
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_bom_00008160
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
	.4byte str_SFX_ENM_KURI_DAMAGED_bom_00008170
	.4byte str_SFX_BTL_DAMAGE_FIRE1_bom_00008188
	.4byte str_SFX_BTL_DAMAGE_ICE1_bom_000081a0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_bom_000081b4
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_kuriboo_3_data_AD08

# .data:0x114 | 0xADCC | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_bom_000081d0
	.4byte 0x00000002
	.4byte str_KUR_Y_1_bom_000081d8
	.4byte 0x00000009
	.4byte str_KUR_Y_1_bom_000081d8
	.4byte 0x00000005
	.4byte str_KUR_K_1_bom_000081e0
	.4byte 0x00000004
	.4byte str_KUR_I_1_bom_000081e8
	.4byte 0x00000003
	.4byte str_KUR_I_1_bom_000081e8
	.4byte 0x0000001C
	.4byte str_KUR_S_1_bom_000081f0
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_bom_000081f8
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_bom_000081f8
	.4byte 0x0000001F
	.4byte str_KUR_S_1_bom_000081f0
	.4byte 0x00000027
	.4byte str_KUR_D_1_bom_00008200
	.4byte 0x00000032
	.4byte str_KUR_A_1_bom_00008208
	.4byte 0x00000033
	.4byte str_KUR_A_2_bom_00008210
	.4byte 0x0000002A
	.4byte str_KUR_R_1_bom_00008218
	.4byte 0x00000029
	.4byte str_KUR_R_2_bom_00008220
	.4byte 0x00000028
	.4byte str_KUR_W_1_bom_00008228
	.4byte 0x00000038
	.4byte str_KUR_I_1_bom_000081e8
	.4byte 0x00000039
	.4byte str_KUR_I_1_bom_000081e8
	.4byte 0x00000041
	.4byte str_KUR_T_1_bom_00008230
	.4byte 0x00000045
	.4byte str_KUR_S_1_bom_000081f0
.endobj pose_table

# .data:0x1B4 | 0xAE6C | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0xAE7C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1C9 | 0xAE81 | size: 0x3
.obj gap_04_0000AE81_data, global
.hidden gap_04_0000AE81_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000AE81_data

# .data:0x1CC | 0xAE84 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1D1 | 0xAE89 | size: 0x3
.obj gap_04_0000AE89_data, global
.hidden gap_04_0000AE89_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000AE89_data

# .data:0x1D4 | 0xAE8C | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x64646464
	.2byte 0x6496
.endobj regist

# .data:0x1EA | 0xAEA2 | size: 0x2
.obj gap_04_0000AEA2_data, global
.hidden gap_04_0000AEA2_data
	.2byte 0x0000
.endobj gap_04_0000AEA2_data

# .data:0x1EC | 0xAEA4 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_bom_00008160
	.4byte str_c_kuribo_bom_00008238
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

# .data:0x238 | 0xAEF0 | size: 0xC0
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

# .data:0x2F8 | 0xAFB0 | size: 0xA8
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
	.4byte str_SFX_ENM_KURI_MOVE1_bom_00008244
	.4byte str_SFX_ENM_KURI_MOVE2_bom_00008258
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_bom_00008244
	.4byte str_SFX_ENM_KURI_MOVE2_bom_00008258
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_bom_0000826c
	.4byte str_SFX_ENM_KURI_LANDING_bom_00008280
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3A0 | 0xB058 | size: 0x28
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

# .data:0x3C8 | 0xB080 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x3D0 | 0xB088 | size: 0x7B0
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
	.4byte str_SFX_ENM_KURI_ATTACK1_bom_00008298
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
	.4byte str_SFX_ENM_KURI_MOVE1_bom_00008244
	.4byte str_SFX_ENM_KURI_MOVE2_bom_00008258
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

# .data:0xB80 | 0xB838 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
