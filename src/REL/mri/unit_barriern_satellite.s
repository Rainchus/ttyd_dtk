.include "macros.inc"
.file "unit_barriern_satellite.o"

# 0x0001E994..0x0001EAE4 | size: 0x150
.text
.balign 4

# .text:0x0 | 0x1E994 | size: 0x150
.fn battleGetBarriernSatelliteInitPos, local
/* 0001E994 0001EA58  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 0001E998 0001EA5C  7C 08 02 A6 */	mflr r0
/* 0001E99C 0001EA60  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001E9A0 0001EA64  90 01 00 44 */	stw r0, 0x44(r1)
/* 0001E9A4 0001EA68  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 0001E9A8 0001EA6C  7C 7F 1B 78 */	mr r31, r3
/* 0001E9AC 0001EA70  83 83 00 18 */	lwz r28, 0x18(r3)
/* 0001E9B0 0001EA74  83 44 00 00 */	lwz r26, _battleWorkPointer@l(r4)
/* 0001E9B4 0001EA78  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 0001E9B8 0001EA7C  4B FE 18 A1 */	bl evtGetValue
/* 0001E9BC 0001EA80  7C 60 1B 78 */	mr r0, r3
/* 0001E9C0 0001EA84  7F E3 FB 78 */	mr r3, r31
/* 0001E9C4 0001EA88  7C 04 03 78 */	mr r4, r0
/* 0001E9C8 0001EA8C  4B FE 18 91 */	bl BattleTransID
/* 0001E9CC 0001EA90  7C 64 1B 78 */	mr r4, r3
/* 0001E9D0 0001EA94  7F 43 D3 78 */	mr r3, r26
/* 0001E9D4 0001EA98  4B FE 18 85 */	bl BattleGetUnitPtr
/* 0001E9D8 0001EA9C  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 0001E9DC 0001EAA0  7C 7D 1B 78 */	mr r29, r3
/* 0001E9E0 0001EAA4  7F E3 FB 78 */	mr r3, r31
/* 0001E9E4 0001EAA8  4B FE 18 75 */	bl evtGetValue
/* 0001E9E8 0001EAAC  80 9C 00 08 */	lwz r4, 0x8(r28)
/* 0001E9EC 0001EAB0  7C 7E 1B 78 */	mr r30, r3
/* 0001E9F0 0001EAB4  7F E3 FB 78 */	mr r3, r31
/* 0001E9F4 0001EAB8  4B FE 18 65 */	bl evtGetValue
/* 0001E9F8 0001EABC  3C A0 00 00 */	lis r5, dat_mri_00027154@ha
/* 0001E9FC 0001EAC0  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 0001EA00 0001EAC4  38 05 00 00 */	addi r0, r5, dat_mri_00027154@l
/* 0001EA04 0001EAC8  83 7C 00 10 */	lwz r27, 0x10(r28)
/* 0001EA08 0001EACC  83 9C 00 14 */	lwz r28, 0x14(r28)
/* 0001EA0C 0001EAD0  7C 1A 03 78 */	mr r26, r0
/* 0001EA10 0001EAD4  38 A0 00 00 */	li r5, 0x0
/* 0001EA14 0001EAD8  48 00 00 1C */	b .L_0001EA30
.L_0001EA18:
/* 0001EA18 0001EADC  7C A9 03 A6 */	mtctr r5
/* 0001EA1C 0001EAE0  2C 05 00 00 */	cmpwi r5, 0x0
/* 0001EA20 0001EAE4  40 81 00 0C */	ble .L_0001EA2C
.L_0001EA24:
/* 0001EA24 0001EAE8  3B 5A 00 0C */	addi r26, r26, 0xc
/* 0001EA28 0001EAEC  42 00 FF FC */	bdnz .L_0001EA24
.L_0001EA2C:
/* 0001EA2C 0001EAF0  38 A5 00 01 */	addi r5, r5, 0x1
.L_0001EA30:
/* 0001EA30 0001EAF4  7C 05 F0 00 */	cmpw r5, r30
/* 0001EA34 0001EAF8  41 80 FF E4 */	blt .L_0001EA18
/* 0001EA38 0001EAFC  7C 69 03 A6 */	mtctr r3
/* 0001EA3C 0001EB00  2C 03 00 00 */	cmpwi r3, 0x0
/* 0001EA40 0001EB04  40 81 00 0C */	ble .L_0001EA4C
.L_0001EA44:
/* 0001EA44 0001EB08  3B 5A 00 0C */	addi r26, r26, 0xc
/* 0001EA48 0001EB0C  42 00 FF FC */	bdnz .L_0001EA44
.L_0001EA4C:
/* 0001EA4C 0001EB10  88 BD 01 89 */	lbz r5, 0x189(r29)
/* 0001EA50 0001EB14  3C 00 43 30 */	lis r0, 0x4330
/* 0001EA54 0001EB18  90 01 00 08 */	stw r0, 0x8(r1)
/* 0001EA58 0001EB1C  3C 60 00 00 */	lis r3, double_to_int_mri_000271d0@ha
/* 0001EA5C 0001EB20  7C A0 07 74 */	extsb r0, r5
/* 0001EA60 0001EB24  C0 5A 00 00 */	lfs f2, 0x0(r26)
/* 0001EA64 0001EB28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 0001EA68 0001EB2C  38 A3 00 00 */	addi r5, r3, double_to_int_mri_000271d0@l
/* 0001EA6C 0001EB30  90 01 00 0C */	stw r0, 0xc(r1)
/* 0001EA70 0001EB34  7F E3 FB 78 */	mr r3, r31
/* 0001EA74 0001EB38  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 0001EA78 0001EB3C  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0001EA7C 0001EB40  EC 00 08 28 */	fsubs f0, f0, f1
/* 0001EA80 0001EB44  EC 02 00 32 */	fmuls f0, f2, f0
/* 0001EA84 0001EB48  FC 00 00 1E */	fctiwz f0, f0
/* 0001EA88 0001EB4C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 0001EA8C 0001EB50  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 0001EA90 0001EB54  4B FE 17 C9 */	bl evtSetValue
/* 0001EA94 0001EB58  C0 1A 00 04 */	lfs f0, 0x4(r26)
/* 0001EA98 0001EB5C  7F E3 FB 78 */	mr r3, r31
/* 0001EA9C 0001EB60  7F 64 DB 78 */	mr r4, r27
/* 0001EAA0 0001EB64  FC 00 00 1E */	fctiwz f0, f0
/* 0001EAA4 0001EB68  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 0001EAA8 0001EB6C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 0001EAAC 0001EB70  4B FE 17 AD */	bl evtSetValue
/* 0001EAB0 0001EB74  C0 1A 00 08 */	lfs f0, 0x8(r26)
/* 0001EAB4 0001EB78  7F E3 FB 78 */	mr r3, r31
/* 0001EAB8 0001EB7C  7F 84 E3 78 */	mr r4, r28
/* 0001EABC 0001EB80  FC 00 00 1E */	fctiwz f0, f0
/* 0001EAC0 0001EB84  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 0001EAC4 0001EB88  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 0001EAC8 0001EB8C  4B FE 17 91 */	bl evtSetValue
/* 0001EACC 0001EB90  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 0001EAD0 0001EB94  38 60 00 02 */	li r3, 0x2
/* 0001EAD4 0001EB98  80 01 00 44 */	lwz r0, 0x44(r1)
/* 0001EAD8 0001EB9C  7C 08 03 A6 */	mtlr r0
/* 0001EADC 0001EBA0  38 21 00 40 */	addi r1, r1, 0x40
/* 0001EAE0 0001EBA4  4E 80 00 20 */	blr
.endfn battleGetBarriernSatelliteInitPos

# 0x00006A08..0x00006B38 | size: 0x130
.rodata
.balign 8

# .rodata:0x0 | 0x6A08 | size: 0x1A
.obj str_btl_un_barriern_sate_mri_000270a8, local
	.string "btl_un_barriern_satellite"
.endobj str_btl_un_barriern_sate_mri_000270a8

# .rodata:0x1A | 0x6A22 | size: 0x2
.obj gap_03_00006A22_rodata, global
.hidden gap_03_00006A22_rodata
	.2byte 0x0000
.endobj gap_03_00006A22_rodata

# .rodata:0x1C | 0x6A24 | size: 0x17
.obj str_SFX_ENM_BARRI_DAMAGE_mri_000270c4, local
	.string "SFX_ENM_BARRI_DAMAGED1"
.endobj str_SFX_ENM_BARRI_DAMAGE_mri_000270c4

# .rodata:0x33 | 0x6A3B | size: 0x1
.obj gap_03_00006A3B_rodata, global
.hidden gap_03_00006A3B_rodata
	.byte 0x00
.endobj gap_03_00006A3B_rodata

# .rodata:0x34 | 0x6A3C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_mri_000270dc, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_mri_000270dc

# .rodata:0x49 | 0x6A51 | size: 0x3
.obj gap_03_00006A51_rodata, global
.hidden gap_03_00006A51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A51_rodata

# .rodata:0x4C | 0x6A54 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_mri_000270f4, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_mri_000270f4

# .rodata:0x60 | 0x6A68 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_mri_00027108, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_mri_00027108

# .rodata:0x79 | 0x6A81 | size: 0x3
.obj gap_03_00006A81_rodata, global
.hidden gap_03_00006A81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A81_rodata

# .rodata:0x7C | 0x6A84 | size: 0x8
.obj str_c_baria_mri_00027124, local
	.string "c_baria"
.endobj str_c_baria_mri_00027124

# .rodata:0x84 | 0x6A8C | size: 0x4
.obj str_N_2_mri_0002712c, local
	.string "N_2"
.endobj str_N_2_mri_0002712c

# .rodata:0x88 | 0x6A90 | size: 0x4
.obj str_Y_2_mri_00027130, local
	.string "Y_2"
.endobj str_Y_2_mri_00027130

# .rodata:0x8C | 0x6A94 | size: 0x4
.obj str_K_2_mri_00027134, local
	.string "K_2"
.endobj str_K_2_mri_00027134

# .rodata:0x90 | 0x6A98 | size: 0x4
.obj str_X_2_mri_00027138, local
	.string "X_2"
.endobj str_X_2_mri_00027138

# .rodata:0x94 | 0x6A9C | size: 0x4
.obj str_S_2_mri_0002713c, local
	.string "S_2"
.endobj str_S_2_mri_0002713c

# .rodata:0x98 | 0x6AA0 | size: 0x4
.obj str_Q_2_mri_00027140, local
	.string "Q_2"
.endobj str_Q_2_mri_00027140

# .rodata:0x9C | 0x6AA4 | size: 0x4
.obj str_D_2_mri_00027144, local
	.string "D_2"
.endobj str_D_2_mri_00027144

# .rodata:0xA0 | 0x6AA8 | size: 0x4
.obj str_R_2_mri_00027148, local
	.string "R_2"
.endobj str_R_2_mri_00027148

# .rodata:0xA4 | 0x6AAC | size: 0x4
.obj str_W_2_mri_0002714c, local
	.string "W_2"
.endobj str_W_2_mri_0002714c

# .rodata:0xA8 | 0x6AB0 | size: 0x4
.obj str_S_4_mri_00027150, local
	.string "S_4"
.endobj str_S_4_mri_00027150

# .rodata:0xAC | 0x6AB4 | size: 0x78
.obj dat_mri_00027154, local
	.float 25
	.float 0
	.float 0
	.float 25
	.float 0
	.float 0
	.float -25
	.float 0
	.float 0
	.float 0
	.float 25
	.float 0
	.float 25
	.float -25
	.float 0
	.float -25
	.float -25
	.float 0
	.float 25
	.float 25
	.float 0
	.float -25
	.float 25
	.float 0
	.float 25
	.float -25
	.float 0
	.float -25
	.float -25
	.float 0
.endobj dat_mri_00027154
	.4byte 0x00000000

# .rodata:0x128 | 0x6B30 | size: 0x8
.obj double_to_int_mri_000271d0, local
	.double 4503601774854144
.endobj double_to_int_mri_000271d0

# 0x00030BF8..0x00031138 | size: 0x540
.data
.balign 8

# .data:0x0 | 0x30BF8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x30C00 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x30C04 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x30C08 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x30C0C | size: 0x4
.obj gap_04_00030C0C_data, global
.hidden gap_04_00030C0C_data
	.4byte 0x00000000
.endobj gap_04_00030C0C_data

# .data:0x18 | 0x30C10 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x30C18 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x30C1C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x30C20 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x30C28 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x30C2C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x30C30 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x30C34 | size: 0x4
.obj gap_04_00030C34_data, global
.hidden gap_04_00030C34_data
	.4byte 0x00000000
.endobj gap_04_00030C34_data

# .data:0x40 | 0x30C38 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x30C40 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x30C44 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x30C48 | size: 0xC4
.obj unit_barriern_satellite_18_data_30C48, global
	.4byte 0x0000001E
	.4byte str_btl_un_barriern_sate_mri_000270a8
	.4byte 0x00010000
	.4byte 0x01010000
	.4byte 0x00460032
	.4byte 0x270F0010
	.4byte 0x00100000
	.4byte 0x00080000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFDFFFA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41000000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x40C00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x41800000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_BARRI_DAMAGE_mri_000270c4
	.4byte str_SFX_BTL_DAMAGE_FIRE1_mri_000270dc
	.4byte str_SFX_BTL_DAMAGE_ICE1_mri_000270f4
	.4byte str_SFX_BTL_DAMAGE_BIRIB_mri_00027108
	.4byte 0x00000004
	.4byte regist
	.4byte 0x06000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_barriern_satellite_18_data_30C48

# .data:0x114 | 0x30D0C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x30D11 | size: 0x3
.obj gap_04_00030D11_data, global
.hidden gap_04_00030D11_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00030D11_data

# .data:0x11C | 0x30D14 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x30D19 | size: 0x3
.obj gap_04_00030D19_data, global
.hidden gap_04_00030D19_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00030D19_data

# .data:0x124 | 0x30D1C | size: 0x1C8
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_barriern_sate_mri_000270a8
	.4byte str_c_baria_mri_00027124
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00600009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_barriern_sate_mri_000270a8
	.4byte str_c_baria_mri_00027124
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000003
	.4byte str_btl_un_barriern_sate_mri_000270a8
	.4byte str_c_baria_mri_00027124
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000004
	.4byte str_btl_un_barriern_sate_mri_000270a8
	.4byte str_c_baria_mri_00027124
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000005
	.4byte str_btl_un_barriern_sate_mri_000270a8
	.4byte str_c_baria_mri_00027124
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000006
	.4byte str_btl_un_barriern_sate_mri_000270a8
	.4byte str_c_baria_mri_00027124
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x2EC | 0x30EE4 | size: 0x16
.obj regist, local
	.4byte 0x50646400
	.4byte 0x5A640000
	.4byte 0x645A645A
	.4byte 0x645F5A00
	.4byte 0x64645A64
	.2byte 0x6464
.endobj regist

# .data:0x302 | 0x30EFA | size: 0x2
.obj gap_04_00030EFA_data, global
.hidden gap_04_00030EFA_data
	.2byte 0x0000
.endobj gap_04_00030EFA_data

# .data:0x304 | 0x30EFC | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_2_mri_0002712c
	.4byte 0x00000002
	.4byte str_Y_2_mri_00027130
	.4byte 0x00000009
	.4byte str_Y_2_mri_00027130
	.4byte 0x00000005
	.4byte str_K_2_mri_00027134
	.4byte 0x00000004
	.4byte str_X_2_mri_00027138
	.4byte 0x00000003
	.4byte str_X_2_mri_00027138
	.4byte 0x0000001C
	.4byte str_S_2_mri_0002713c
	.4byte 0x0000001D
	.4byte str_Q_2_mri_00027140
	.4byte 0x0000001E
	.4byte str_Q_2_mri_00027140
	.4byte 0x0000001F
	.4byte str_S_2_mri_0002713c
	.4byte 0x00000027
	.4byte str_D_2_mri_00027144
	.4byte 0x0000002A
	.4byte str_R_2_mri_00027148
	.4byte 0x00000029
	.4byte str_R_2_mri_00027148
	.4byte 0x00000028
	.4byte str_W_2_mri_0002714c
	.4byte 0x00000038
	.4byte str_X_2_mri_00027138
	.4byte 0x00000039
	.4byte str_X_2_mri_00027138
	.4byte 0x00000045
	.4byte str_S_2_mri_0002713c
.endobj pose_table

# .data:0x38C | 0x30F84 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x394 | 0x30F8C | size: 0x74
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventUnisonPhase
	.4byte 0xFFFFFFFE
	.4byte unison_phase_event
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
	.4byte btldefaultevt_Confuse
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x00300000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x408 | 0x31000 | size: 0x28
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

# .data:0x430 | 0x31028 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x438 | 0x31030 | size: 0x14
.obj unison_phase_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unison_phase_event

# .data:0x44C | 0x31044 | size: 0x14
.obj attack_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x460 | 0x31058 | size: 0xE0
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000078
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_4_mri_00027150
	.4byte 0x00010009
	.4byte 0x000000B4
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
