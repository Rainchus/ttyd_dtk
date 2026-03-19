.include "macros.inc"
.file "unit_gullible_christine.o"

# 0x000050F0..0x00005208 | size: 0x118
.text
.balign 4

# .text:0x0 | 0x50F0 | size: 0x118
.fn _krb_get_dir, local
/* 000050F0 000051B4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 000050F4 000051B8  7C 08 02 A6 */	mflr r0
/* 000050F8 000051BC  90 01 00 64 */	stw r0, 0x64(r1)
/* 000050FC 000051C0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00005100 000051C4  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00005104 000051C8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00005108 000051CC  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 0000510C 000051D0  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00005110 000051D4  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00005114 000051D8  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00005118 000051DC  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 0000511C 000051E0  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00005120 000051E4  7C 7E 1B 78 */	mr r30, r3
/* 00005124 000051E8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005128 000051EC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000512C 000051F0  4B FF AE D5 */	bl evtGetFloat
/* 00005130 000051F4  FF 80 08 90 */	fmr f28, f1
/* 00005134 000051F8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005138 000051FC  7F C3 F3 78 */	mr r3, r30
/* 0000513C 00005200  4B FF AE C5 */	bl evtGetFloat
/* 00005140 00005204  FF A0 08 90 */	fmr f29, f1
/* 00005144 00005208  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00005148 0000520C  7F C3 F3 78 */	mr r3, r30
/* 0000514C 00005210  4B FF AE B5 */	bl evtGetFloat
/* 00005150 00005214  FF C0 08 90 */	fmr f30, f1
/* 00005154 00005218  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00005158 0000521C  7F C3 F3 78 */	mr r3, r30
/* 0000515C 00005220  4B FF AE A5 */	bl evtGetFloat
/* 00005160 00005224  FF E0 08 90 */	fmr f31, f1
/* 00005164 00005228  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005168 0000522C  7F C3 F3 78 */	mr r3, r30
/* 0000516C 00005230  4B FF AE 95 */	bl evtGetValue
/* 00005170 00005234  3C 80 00 00 */	lis r4, zero_jin_00008744@ha
/* 00005174 00005238  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00005178 0000523C  C0 04 00 00 */	lfs f0, zero_jin_00008744@l(r4)
/* 0000517C 00005240  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00005180 00005244  7C 65 1B 78 */	mr r5, r3
/* 00005184 00005248  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00005188 0000524C  40 82 00 20 */	bne .L_000051A8
/* 0000518C 00005250  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00005190 00005254  40 82 00 18 */	bne .L_000051A8
/* 00005194 00005258  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005198 0000525C  7F C3 F3 78 */	mr r3, r30
/* 0000519C 00005260  4B FF AE 65 */	bl evtSetValue
/* 000051A0 00005264  38 60 00 02 */	li r3, 0x2
/* 000051A4 00005268  48 00 00 30 */	b .L_000051D4
.L_000051A8:
/* 000051A8 0000526C  3C 60 00 00 */	lis r3, zero_jin_00008744@ha
/* 000051AC 00005270  C0 63 00 00 */	lfs f3, zero_jin_00008744@l(r3)
/* 000051B0 00005274  FC 80 18 90 */	fmr f4, f3
/* 000051B4 00005278  4B FF AE 4D */	bl angleABf_1
/* 000051B8 0000527C  FC 00 08 1E */	fctiwz f0, f1
/* 000051BC 00005280  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000051C0 00005284  7F C3 F3 78 */	mr r3, r30
/* 000051C4 00005288  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 000051C8 0000528C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 000051CC 00005290  4B FF AE 35 */	bl evtSetValue
/* 000051D0 00005294  38 60 00 02 */	li r3, 0x2
.L_000051D4:
/* 000051D4 00005298  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 000051D8 0000529C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 000051DC 000052A0  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 000051E0 000052A4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 000051E4 000052A8  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 000051E8 000052AC  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 000051EC 000052B0  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 000051F0 000052B4  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 000051F4 000052B8  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000051F8 000052BC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000051FC 000052C0  7C 08 03 A6 */	mtlr r0
/* 00005200 000052C4  38 21 00 60 */	addi r1, r1, 0x60
/* 00005204 000052C8  4E 80 00 20 */	blr
.endfn _krb_get_dir

# 0x000013B0..0x00001528 | size: 0x178
.rodata
.balign 8

# .rodata:0x0 | 0x13B0 | size: 0x1A
.obj str_btl_un_gullible_chri_jin_000085d0, local
	.string "btl_un_gullible_christine"
.endobj str_btl_un_gullible_chri_jin_000085d0

# .rodata:0x1A | 0x13CA | size: 0x2
.obj gap_03_000013CA_rodata, global
.hidden gap_03_000013CA_rodata
	.2byte 0x0000
.endobj gap_03_000013CA_rodata

# .rodata:0x1C | 0x13CC | size: 0x12
.obj str_SFX_PARTY_DAMAGE1_jin_000085ec, local
	.string "SFX_PARTY_DAMAGE1"
.endobj str_SFX_PARTY_DAMAGE1_jin_000085ec

# .rodata:0x2E | 0x13DE | size: 0x2
.obj gap_03_000013DE_rodata, global
.hidden gap_03_000013DE_rodata
	.2byte 0x0000
.endobj gap_03_000013DE_rodata

# .rodata:0x30 | 0x13E0 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jin_00008600, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jin_00008600

# .rodata:0x45 | 0x13F5 | size: 0x3
.obj gap_03_000013F5_rodata, global
.hidden gap_03_000013F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013F5_rodata

# .rodata:0x48 | 0x13F8 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jin_00008618, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jin_00008618

# .rodata:0x5C | 0x140C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jin_0000862c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jin_0000862c

# .rodata:0x75 | 0x1425 | size: 0x3
.obj gap_03_00001425_rodata, global
.hidden gap_03_00001425_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001425_rodata

# .rodata:0x78 | 0x1428 | size: 0x11
.obj str_btl_un_christine_jin_00008648, local
	.string "btl_un_christine"
.endobj str_btl_un_christine_jin_00008648

# .rodata:0x89 | 0x1439 | size: 0x3
.obj gap_03_00001439_rodata, global
.hidden gap_03_00001439_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001439_rodata

# .rodata:0x8C | 0x143C | size: 0x6
.obj str_c_pkr_jin_0000865c, local
	.string "c_pkr"
.endobj str_c_pkr_jin_0000865c

# .rodata:0x92 | 0x1442 | size: 0x2
.obj gap_03_00001442_rodata, global
.hidden gap_03_00001442_rodata
	.2byte 0x0000
.endobj gap_03_00001442_rodata

# .rodata:0x94 | 0x1444 | size: 0x18
.obj str_SFX_PARTY_BATTLE_MOV_jin_00008664, local
	.string "SFX_PARTY_BATTLE_MOVE1L"
.endobj str_SFX_PARTY_BATTLE_MOV_jin_00008664

# .rodata:0xAC | 0x145C | size: 0x18
.obj str_SFX_PARTY_BATTLE_MOV_jin_0000867c, local
	.string "SFX_PARTY_BATTLE_MOVE1R"
.endobj str_SFX_PARTY_BATTLE_MOV_jin_0000867c

# .rodata:0xC4 | 0x1474 | size: 0x17
.obj str_SFX_PARTY_BATTLE_JUM_jin_00008694, local
	.string "SFX_PARTY_BATTLE_JUMP1"
.endobj str_SFX_PARTY_BATTLE_JUM_jin_00008694

# .rodata:0xDB | 0x148B | size: 0x1
.obj gap_03_0000148B_rodata, global
.hidden gap_03_0000148B_rodata
	.byte 0x00
.endobj gap_03_0000148B_rodata

# .rodata:0xDC | 0x148C | size: 0x1A
.obj str_SFX_PARTY_BATTLE_LAN_jin_000086ac, local
	.string "SFX_PARTY_BATTLE_LANDING1"
.endobj str_SFX_PARTY_BATTLE_LAN_jin_000086ac

# .rodata:0xF6 | 0x14A6 | size: 0x2
.obj gap_03_000014A6_rodata, global
.hidden gap_03_000014A6_rodata
	.2byte 0x0000
.endobj gap_03_000014A6_rodata

# .rodata:0xF8 | 0x14A8 | size: 0x13
.obj str_stg4_jin_26_03_kur_jin_000086c8, local
	.string "stg4_jin_26_03_kur"
.endobj str_stg4_jin_26_03_kur_jin_000086c8

# .rodata:0x10B | 0x14BB | size: 0x1
.obj gap_03_000014BB_rodata, global
.hidden gap_03_000014BB_rodata
	.byte 0x00
.endobj gap_03_000014BB_rodata

# .rodata:0x10C | 0x14BC | size: 0x8
.obj str_PKR_D_3_jin_000086dc, local
	.string "PKR_D_3"
.endobj str_PKR_D_3_jin_000086dc

# .rodata:0x114 | 0x14C4 | size: 0x16
.obj str_SFX_PARTY_BATTLE_DIE_jin_000086e4, local
	.string "SFX_PARTY_BATTLE_DIE1"
.endobj str_SFX_PARTY_BATTLE_DIE_jin_000086e4

# .rodata:0x12A | 0x14DA | size: 0x2
.obj gap_03_000014DA_rodata, global
.hidden gap_03_000014DA_rodata
	.2byte 0x0000
.endobj gap_03_000014DA_rodata

# .rodata:0x12C | 0x14DC | size: 0xF
.obj str_stg4_jin_26_04_jin_000086fc, local
	.string "stg4_jin_26_04"
.endobj str_stg4_jin_26_04_jin_000086fc

# .rodata:0x13B | 0x14EB | size: 0x1
.obj gap_03_000014EB_rodata, global
.hidden gap_03_000014EB_rodata
	.byte 0x00
.endobj gap_03_000014EB_rodata

# .rodata:0x13C | 0x14EC | size: 0x9
.obj str_PKR_A_2B_jin_0000870c, local
	.string "PKR_A_2B"
.endobj str_PKR_A_2B_jin_0000870c

# .rodata:0x145 | 0x14F5 | size: 0x3
.obj gap_03_000014F5_rodata, global
.hidden gap_03_000014F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000014F5_rodata

# .rodata:0x148 | 0x14F8 | size: 0x9
.obj str_PKR_J_1A_jin_00008718, local
	.string "PKR_J_1A"
.endobj str_PKR_J_1A_jin_00008718

# .rodata:0x151 | 0x1501 | size: 0x3
.obj gap_03_00001501_rodata, global
.hidden gap_03_00001501_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001501_rodata

# .rodata:0x154 | 0x1504 | size: 0x15
.obj str_SFX_BTL_KURI_ATTACK1_jin_00008724, local
	.string "SFX_BTL_KURI_ATTACK1"
.endobj str_SFX_BTL_KURI_ATTACK1_jin_00008724

# .rodata:0x169 | 0x1519 | size: 0x3
.obj gap_03_00001519_rodata, global
.hidden gap_03_00001519_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001519_rodata

# .rodata:0x16C | 0x151C | size: 0x8
.obj str_PKR_S_1_jin_0000873c, local
	.string "PKR_S_1"
.endobj str_PKR_S_1_jin_0000873c

# .rodata:0x174 | 0x1524 | size: 0x4
.obj zero_jin_00008744, local
	.float 0
.endobj zero_jin_00008744

# 0x0000AFA8..0x0000C0C8 | size: 0x1120
.data
.balign 8

# .data:0x0 | 0xAFA8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xAFB0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xAFB4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xAFB8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xAFBC | size: 0x4
.obj gap_04_0000AFBC_data, global
.hidden gap_04_0000AFBC_data
	.4byte 0x00000000
.endobj gap_04_0000AFBC_data

# .data:0x18 | 0xAFC0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xAFC8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xAFCC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xAFD0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xAFD8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xAFDC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xAFE0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xAFE4 | size: 0x4
.obj gap_04_0000AFE4_data, global
.hidden gap_04_0000AFE4_data
	.4byte 0x00000000
.endobj gap_04_0000AFE4_data

# .data:0x40 | 0xAFE8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xAFF0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xAFF4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xAFF8 | size: 0xC4
.obj unit_gullible_christine_13_data_AFF8, global
	.4byte 0x00000050
	.4byte str_btl_un_gullible_chri_jin_000085d0
	.4byte 0x000A0000
	.4byte 0x01010000
	.4byte 0x00640032
	.4byte 0x0009001C
	.4byte 0x00180008
	.4byte 0x00180000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x4179999A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x41E00000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_PARTY_DAMAGE1_jin_000085ec
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jin_00008600
	.4byte str_SFX_BTL_DAMAGE_ICE1_jin_00008618
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jin_0000862c
	.4byte 0x10000000
	.4byte regist_christine
	.4byte 0x01000000
	.4byte parts_christine
	.4byte init_event_christine
	.4byte data_table_christine
.endobj unit_gullible_christine_13_data_AFF8

# .data:0x114 | 0xB0BC | size: 0xC0
.obj enemyWeapon_ChristineNormalAttack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerFromGulliblePartyAttackLv
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
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
	.4byte 0x01001260
	.4byte 0x20001004
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00015007
	.4byte 0x0000000C
	.4byte 0x80002000
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
.endobj enemyWeapon_ChristineNormalAttack

# .data:0x1D4 | 0xB17C | size: 0x5
.obj defence_christine, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_christine

# .data:0x1D9 | 0xB181 | size: 0x3
.obj gap_04_0000B181_data, global
.hidden gap_04_0000B181_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000B181_data

# .data:0x1DC | 0xB184 | size: 0x5
.obj defence_attr_christine, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_christine

# .data:0x1E1 | 0xB189 | size: 0x3
.obj gap_04_0000B189_data, global
.hidden gap_04_0000B189_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000B189_data

# .data:0x1E4 | 0xB18C | size: 0x16
.obj regist_christine, local
	.4byte 0x3C504664
	.4byte 0x46646446
	.4byte 0x64466446
	.4byte 0x645A4600
	.4byte 0x00644664
	.2byte 0x6400
.endobj regist_christine

# .data:0x1FA | 0xB1A2 | size: 0x2
.obj gap_04_0000B1A2_data, global
.hidden gap_04_0000B1A2_data
	.2byte 0x0000
.endobj gap_04_0000B1A2_data

# .data:0x1FC | 0xB1A4 | size: 0x10
.obj data_table_christine, local
	.4byte 0x00000031
	.4byte dead_event_christine
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_christine

# .data:0x20C | 0xB1B4 | size: 0x4C
.obj parts_christine, local
	.4byte 0x00000001
	.4byte str_btl_un_christine_jin_00008648
	.4byte str_c_pkr_jin_0000865c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence_christine
	.4byte defence_attr_christine
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table_christine_stay
.endobj parts_christine

# .data:0x258 | 0xB200 | size: 0x4C
.obj fmario_zoom_christine, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000003A
	.4byte 0x000000E4
	.4byte 0x0000005A
	.4byte 0x00000026
	.4byte 0xFFFFFFEC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fmario_zoom_christine

# .data:0x2A4 | 0xB24C | size: 0x4C
.obj gparty_zoom_christine, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000082
	.4byte 0x0000003A
	.4byte 0x000000E4
	.4byte 0x00000082
	.4byte 0x00000026
	.4byte 0xFFFFFFEC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gparty_zoom_christine

# .data:0x2F0 | 0xB298 | size: 0xA8
.obj init_event_christine, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event_christine
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_christine
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event_christine
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_jin_00008664
	.4byte str_SFX_PARTY_BATTLE_MOV_jin_0000867c
	.4byte 0x00000006
	.4byte 0x0000000C
	.4byte 0x00000010
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_jin_00008664
	.4byte str_SFX_PARTY_BATTLE_MOV_jin_0000867c
	.4byte 0x00000000
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_JUM_jin_00008694
	.4byte str_SFX_PARTY_BATTLE_LAN_jin_000086ac
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_christine

# .data:0x398 | 0xB340 | size: 0x58
.obj damage_event_christine, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000400
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F94
	.4byte 0x00000001
	.4byte 0x00000021
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
.endobj damage_event_christine

# .data:0x3F0 | 0xB398 | size: 0x24C
.obj dead_event_christine, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00010022
	.4byte 0xFD050F93
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte gparty_zoom_christine
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_26_03_kur_jin_000086c8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKR_D_3_jin_000086dc
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_DIE_jin_000086e4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte fmario_zoom_christine
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_26_04_jin_000086fc
	.4byte 0x00000000
	.4byte 0xFD050F90
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKR_D_3_jin_000086dc
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_DIE_jin_000086e4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F93
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKR_D_3_jin_000086dc
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_DIE_jin_000086e4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFD050F94
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event_christine

# .data:0x63C | 0xB5E4 | size: 0xAC8
.obj attack_event_christine, local
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
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte enemyWeapon_ChristineNormalAttack
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C8C
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C8C
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
	.4byte 0xFE363C8C
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x0007005B
	.4byte btlevtcmd_GetTakeoffPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
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
	.4byte 0x0007005B
	.4byte btlevtcmd_GetMoveFrame
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte 0x0005005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000050
	.4byte 0x00000014
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000004
	.4byte 0xFE363C8B
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00100100
	.4byte 0xFE363C85
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x0001002B
	.4byte 0x00000002
	.4byte 0x0001002B
	.4byte 0x00000003
	.4byte 0x0001002B
	.4byte 0x00000006
	.4byte 0x0001002B
	.4byte 0x00000004
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000031
	.4byte 0x0002001C
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKR_A_2B_jin_0000870c
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKR_J_1A_jin_00008718
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BTL_KURI_ATTACK1_jin_00008724
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE2
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0008005B
	.4byte btlevtcmd_MarioJumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000E
	.4byte 0x00000000
	.4byte 0x0000006E
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
	.4byte 0x00000024
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0006005B
	.4byte _krb_get_dir
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte btlevtcmd_GetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C88
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xFE363C8C
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xFE363C8D
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0008005B
	.4byte btlevtcmd_MarioJumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKR_S_1_jin_0000873c
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
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
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7AD1
	.4byte 0xF24A7A06
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0xF24D0480
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_GetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xFE363C86
	.4byte 0x0002001A
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C86
	.4byte 0x0000000F
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x0000000F
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C86
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7CE6
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
	.4byte 0x00000008
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0x00010003
	.4byte 0x0000005F
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
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
	.4byte 0xFFFFFFFF
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
.endobj attack_event_christine

# .data:0x1104 | 0xC0AC | size: 0x1C
.obj wait_event_christine, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
.endobj wait_event_christine
