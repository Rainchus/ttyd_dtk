.include "macros.inc"
.file "unit_kuriboo.o"

# 0x0000A344..0x0000A45C | size: 0x118
.text
.balign 4

# .text:0x0 | 0xA344 | size: 0x118
.fn krb_get_dir, local
/* 0000A344 0000A410  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 0000A348 0000A414  7C 08 02 A6 */	mflr r0
/* 0000A34C 0000A418  90 01 00 64 */	stw r0, 0x64(r1)
/* 0000A350 0000A41C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 0000A354 0000A420  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 0000A358 0000A424  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 0000A35C 0000A428  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 0000A360 0000A42C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 0000A364 0000A430  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 0000A368 0000A434  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 0000A36C 0000A438  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 0000A370 0000A43C  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000A374 0000A440  7C 7E 1B 78 */	mr r30, r3
/* 0000A378 0000A444  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000A37C 0000A448  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000A380 0000A44C  4B FF 61 25 */	bl evtGetFloat
/* 0000A384 0000A450  FF 80 08 90 */	fmr f28, f1
/* 0000A388 0000A454  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000A38C 0000A458  7F C3 F3 78 */	mr r3, r30
/* 0000A390 0000A45C  4B FF 61 15 */	bl evtGetFloat
/* 0000A394 0000A460  FF A0 08 90 */	fmr f29, f1
/* 0000A398 0000A464  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000A39C 0000A468  7F C3 F3 78 */	mr r3, r30
/* 0000A3A0 0000A46C  4B FF 61 05 */	bl evtGetFloat
/* 0000A3A4 0000A470  FF C0 08 90 */	fmr f30, f1
/* 0000A3A8 0000A474  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000A3AC 0000A478  7F C3 F3 78 */	mr r3, r30
/* 0000A3B0 0000A47C  4B FF 60 F5 */	bl evtGetFloat
/* 0000A3B4 0000A480  FF E0 08 90 */	fmr f31, f1
/* 0000A3B8 0000A484  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000A3BC 0000A488  7F C3 F3 78 */	mr r3, r30
/* 0000A3C0 0000A48C  4B FF 60 E5 */	bl evtGetValue
/* 0000A3C4 0000A490  3C 80 00 00 */	lis r4, zero_gor_0001de38@ha
/* 0000A3C8 0000A494  EC 3E E0 28 */	fsubs f1, f30, f28
/* 0000A3CC 0000A498  C0 04 00 00 */	lfs f0, zero_gor_0001de38@l(r4)
/* 0000A3D0 0000A49C  EC 5F E8 28 */	fsubs f2, f31, f29
/* 0000A3D4 0000A4A0  7C 65 1B 78 */	mr r5, r3
/* 0000A3D8 0000A4A4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 0000A3DC 0000A4A8  40 82 00 20 */	bne .L_0000A3FC
/* 0000A3E0 0000A4AC  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 0000A3E4 0000A4B0  40 82 00 18 */	bne .L_0000A3FC
/* 0000A3E8 0000A4B4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000A3EC 0000A4B8  7F C3 F3 78 */	mr r3, r30
/* 0000A3F0 0000A4BC  4B FF 60 B5 */	bl evtSetValue
/* 0000A3F4 0000A4C0  38 60 00 02 */	li r3, 0x2
/* 0000A3F8 0000A4C4  48 00 00 30 */	b .L_0000A428
.L_0000A3FC:
/* 0000A3FC 0000A4C8  3C 60 00 00 */	lis r3, zero_gor_0001de38@ha
/* 0000A400 0000A4CC  C0 63 00 00 */	lfs f3, zero_gor_0001de38@l(r3)
/* 0000A404 0000A4D0  FC 80 18 90 */	fmr f4, f3
/* 0000A408 0000A4D4  4B FF 60 9D */	bl angleABf_1
/* 0000A40C 0000A4D8  FC 00 08 1E */	fctiwz f0, f1
/* 0000A410 0000A4DC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000A414 0000A4E0  7F C3 F3 78 */	mr r3, r30
/* 0000A418 0000A4E4  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000A41C 0000A4E8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 0000A420 0000A4EC  4B FF 60 85 */	bl evtSetValue
/* 0000A424 0000A4F0  38 60 00 02 */	li r3, 0x2
.L_0000A428:
/* 0000A428 0000A4F4  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 0000A42C 0000A4F8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 0000A430 0000A4FC  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 0000A434 0000A500  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 0000A438 0000A504  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 0000A43C 0000A508  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 0000A440 0000A50C  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 0000A444 0000A510  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 0000A448 0000A514  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0000A44C 0000A518  80 01 00 64 */	lwz r0, 0x64(r1)
/* 0000A450 0000A51C  7C 08 03 A6 */	mtlr r0
/* 0000A454 0000A520  38 21 00 60 */	addi r1, r1, 0x60
/* 0000A458 0000A524  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x0000A1E8..0x0000A340 | size: 0x158
.rodata
.balign 8

# .rodata:0x0 | 0xA1E8 | size: 0xF
.obj str_btl_un_kuriboo_gor_0001dce8, local
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_gor_0001dce8

# .rodata:0xF | 0xA1F7 | size: 0x1
.obj gap_03_0000A1F7_rodata, global
.hidden gap_03_0000A1F7_rodata
	.byte 0x00
.endobj gap_03_0000A1F7_rodata

# .rodata:0x10 | 0xA1F8 | size: 0x16
.obj str_SFX_ENM_KURI_DAMAGED_gor_0001dcf8, local
	.string "SFX_ENM_KURI_DAMAGED1"
.endobj str_SFX_ENM_KURI_DAMAGED_gor_0001dcf8

# .rodata:0x26 | 0xA20E | size: 0x2
.obj gap_03_0000A20E_rodata, global
.hidden gap_03_0000A20E_rodata
	.2byte 0x0000
.endobj gap_03_0000A20E_rodata

# .rodata:0x28 | 0xA210 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_gor_0001dd10, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_gor_0001dd10

# .rodata:0x3D | 0xA225 | size: 0x3
.obj gap_03_0000A225_rodata, global
.hidden gap_03_0000A225_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000A225_rodata

# .rodata:0x40 | 0xA228 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_gor_0001dd28, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_gor_0001dd28

# .rodata:0x54 | 0xA23C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_gor_0001dd3c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_gor_0001dd3c

# .rodata:0x6D | 0xA255 | size: 0x3
.obj gap_03_0000A255_rodata, global
.hidden gap_03_0000A255_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000A255_rodata

# .rodata:0x70 | 0xA258 | size: 0x8
.obj str_KUR_N_1_gor_0001dd58, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_gor_0001dd58

# .rodata:0x78 | 0xA260 | size: 0x8
.obj str_KUR_Y_1_gor_0001dd60, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_gor_0001dd60

# .rodata:0x80 | 0xA268 | size: 0x8
.obj str_KUR_K_1_gor_0001dd68, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_gor_0001dd68

# .rodata:0x88 | 0xA270 | size: 0x8
.obj str_KUR_I_1_gor_0001dd70, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_gor_0001dd70

# .rodata:0x90 | 0xA278 | size: 0x8
.obj str_KUR_S_1_gor_0001dd78, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_gor_0001dd78

# .rodata:0x98 | 0xA280 | size: 0x8
.obj str_KUR_Q_1_gor_0001dd80, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_gor_0001dd80

# .rodata:0xA0 | 0xA288 | size: 0x8
.obj str_KUR_D_1_gor_0001dd88, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_gor_0001dd88

# .rodata:0xA8 | 0xA290 | size: 0x8
.obj str_KUR_A_1_gor_0001dd90, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_gor_0001dd90

# .rodata:0xB0 | 0xA298 | size: 0x8
.obj str_KUR_A_2_gor_0001dd98, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_gor_0001dd98

# .rodata:0xB8 | 0xA2A0 | size: 0x8
.obj str_KUR_R_1_gor_0001dda0, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_gor_0001dda0

# .rodata:0xC0 | 0xA2A8 | size: 0x8
.obj str_KUR_R_2_gor_0001dda8, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_gor_0001dda8

# .rodata:0xC8 | 0xA2B0 | size: 0x8
.obj str_KUR_W_1_gor_0001ddb0, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_gor_0001ddb0

# .rodata:0xD0 | 0xA2B8 | size: 0x8
.obj str_KUR_T_1_gor_0001ddb8, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_gor_0001ddb8

# .rodata:0xD8 | 0xA2C0 | size: 0x9
.obj str_c_kuribo_gor_0001ddc0, local
	.string "c_kuribo"
.endobj str_c_kuribo_gor_0001ddc0

# .rodata:0xE1 | 0xA2C9 | size: 0x3
.obj gap_03_0000A2C9_rodata, global
.hidden gap_03_0000A2C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000A2C9_rodata

# .rodata:0xE4 | 0xA2CC | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_gor_0001ddcc, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_gor_0001ddcc

# .rodata:0xF7 | 0xA2DF | size: 0x1
.obj gap_03_0000A2DF_rodata, global
.hidden gap_03_0000A2DF_rodata
	.byte 0x00
.endobj gap_03_0000A2DF_rodata

# .rodata:0xF8 | 0xA2E0 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_gor_0001dde0, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_gor_0001dde0

# .rodata:0x10B | 0xA2F3 | size: 0x1
.obj gap_03_0000A2F3_rodata, global
.hidden gap_03_0000A2F3_rodata
	.byte 0x00
.endobj gap_03_0000A2F3_rodata

# .rodata:0x10C | 0xA2F4 | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_gor_0001ddf4, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_gor_0001ddf4

# .rodata:0x11F | 0xA307 | size: 0x1
.obj gap_03_0000A307_rodata, global
.hidden gap_03_0000A307_rodata
	.byte 0x00
.endobj gap_03_0000A307_rodata

# .rodata:0x120 | 0xA308 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_gor_0001de08, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_gor_0001de08

# .rodata:0x136 | 0xA31E | size: 0x2
.obj gap_03_0000A31E_rodata, global
.hidden gap_03_0000A31E_rodata
	.2byte 0x0000
.endobj gap_03_0000A31E_rodata

# .rodata:0x138 | 0xA320 | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_gor_0001de20, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_gor_0001de20
	.byte 0x00, 0x00, 0x00

# .rodata:0x150 | 0xA338 | size: 0x4
.obj zero_gor_0001de38, local
	.float 0
.endobj zero_gor_0001de38

# .rodata:0x154 | 0xA33C | size: 0x4
.obj gap_03_0000A33C_rodata, global
.hidden gap_03_0000A33C_rodata
	.4byte 0x00000000
.endobj gap_03_0000A33C_rodata

# 0x00040FC0..0x00041B58 | size: 0xB98
.data
.balign 8

# .data:0x0 | 0x40FC0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x40FC8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x40FCC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x40FD0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x40FD4 | size: 0x4
.obj gap_04_00040FD4_data, global
.hidden gap_04_00040FD4_data
	.4byte 0x00000000
.endobj gap_04_00040FD4_data

# .data:0x18 | 0x40FD8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x40FE0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x40FE4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x40FE8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x40FF0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x40FF4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x40FF8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x40FFC | size: 0x4
.obj gap_04_00040FFC_data, global
.hidden gap_04_00040FFC_data
	.4byte 0x00000000
.endobj gap_04_00040FFC_data

# .data:0x40 | 0x41000 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x41008 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4100C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x41010 | size: 0xC4
.obj unit_kuriboo, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_gor_0001dce8
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
	.4byte str_SFX_ENM_KURI_DAMAGED_gor_0001dcf8
	.4byte str_SFX_BTL_DAMAGE_FIRE1_gor_0001dd10
	.4byte str_SFX_BTL_DAMAGE_ICE1_gor_0001dd28
	.4byte str_SFX_BTL_DAMAGE_BIRIB_gor_0001dd3c
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_kuriboo

# .data:0x114 | 0x410D4 | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_gor_0001dd58
	.4byte 0x00000002
	.4byte str_KUR_Y_1_gor_0001dd60
	.4byte 0x00000009
	.4byte str_KUR_Y_1_gor_0001dd60
	.4byte 0x00000005
	.4byte str_KUR_K_1_gor_0001dd68
	.4byte 0x00000004
	.4byte str_KUR_I_1_gor_0001dd70
	.4byte 0x00000003
	.4byte str_KUR_I_1_gor_0001dd70
	.4byte 0x0000001C
	.4byte str_KUR_S_1_gor_0001dd78
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_gor_0001dd80
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_gor_0001dd80
	.4byte 0x0000001F
	.4byte str_KUR_S_1_gor_0001dd78
	.4byte 0x00000027
	.4byte str_KUR_D_1_gor_0001dd88
	.4byte 0x00000032
	.4byte str_KUR_A_1_gor_0001dd90
	.4byte 0x00000033
	.4byte str_KUR_A_2_gor_0001dd98
	.4byte 0x0000002A
	.4byte str_KUR_R_1_gor_0001dda0
	.4byte 0x00000029
	.4byte str_KUR_R_2_gor_0001dda8
	.4byte 0x00000028
	.4byte str_KUR_W_1_gor_0001ddb0
	.4byte 0x00000038
	.4byte str_KUR_I_1_gor_0001dd70
	.4byte 0x00000039
	.4byte str_KUR_I_1_gor_0001dd70
	.4byte 0x00000041
	.4byte str_KUR_T_1_gor_0001ddb8
	.4byte 0x00000045
	.4byte str_KUR_S_1_gor_0001dd78
.endobj pose_table

# .data:0x1B4 | 0x41174 | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0x41184 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1C9 | 0x41189 | size: 0x3
.obj gap_04_00041189_data, global
.hidden gap_04_00041189_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00041189_data

# .data:0x1CC | 0x4118C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1D1 | 0x41191 | size: 0x3
.obj gap_04_00041191_data, global
.hidden gap_04_00041191_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00041191_data

# .data:0x1D4 | 0x41194 | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x64646464
	.2byte 0x6496
.endobj regist

# .data:0x1EA | 0x411AA | size: 0x2
.obj gap_04_000411AA_data, global
.hidden gap_04_000411AA_data
	.2byte 0x0000
.endobj gap_04_000411AA_data

# .data:0x1EC | 0x411AC | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kuriboo_gor_0001dce8
	.4byte str_c_kuribo_gor_0001ddc0
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

# .data:0x238 | 0x411F8 | size: 0xC0
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

# .data:0x2F8 | 0x412B8 | size: 0xA8
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
	.4byte str_SFX_ENM_KURI_MOVE1_gor_0001ddcc
	.4byte str_SFX_ENM_KURI_MOVE2_gor_0001dde0
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_gor_0001ddcc
	.4byte str_SFX_ENM_KURI_MOVE2_gor_0001dde0
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_gor_0001ddf4
	.4byte str_SFX_ENM_KURI_LANDING_gor_0001de08
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3A0 | 0x41360 | size: 0x28
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

# .data:0x3C8 | 0x41388 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x3D0 | 0x41390 | size: 0x7B0
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
	.4byte str_SFX_ENM_KURI_ATTACK1_gor_0001de20
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
	.4byte str_SFX_ENM_KURI_MOVE1_gor_0001ddcc
	.4byte str_SFX_ENM_KURI_MOVE2_gor_0001dde0
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

# .data:0xB80 | 0x41B40 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
