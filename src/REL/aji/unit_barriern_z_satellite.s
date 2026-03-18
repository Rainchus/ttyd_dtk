.include "macros.inc"
.file "unit_barriern_z_satellite.o"

# 0x00008AA0..0x00008BF0 | size: 0x150
.text
.balign 4

# .text:0x0 | 0x8AA0 | size: 0x150
.fn battleGetBarriernSatelliteInitPos, local
/* 00008AA0 00008B64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00008AA4 00008B68  7C 08 02 A6 */	mflr r0
/* 00008AA8 00008B6C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00008AAC 00008B70  90 01 00 44 */	stw r0, 0x44(r1)
/* 00008AB0 00008B74  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 00008AB4 00008B78  7C 7F 1B 78 */	mr r31, r3
/* 00008AB8 00008B7C  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00008ABC 00008B80  83 44 00 00 */	lwz r26, _battleWorkPointer@l(r4)
/* 00008AC0 00008B84  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00008AC4 00008B88  4B FF D7 79 */	bl evtGetValue
/* 00008AC8 00008B8C  7C 60 1B 78 */	mr r0, r3
/* 00008ACC 00008B90  7F E3 FB 78 */	mr r3, r31
/* 00008AD0 00008B94  7C 04 03 78 */	mr r4, r0
/* 00008AD4 00008B98  4B FF D7 69 */	bl BattleTransID
/* 00008AD8 00008B9C  7C 64 1B 78 */	mr r4, r3
/* 00008ADC 00008BA0  7F 43 D3 78 */	mr r3, r26
/* 00008AE0 00008BA4  4B FF D7 5D */	bl BattleGetUnitPtr
/* 00008AE4 00008BA8  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 00008AE8 00008BAC  7C 7D 1B 78 */	mr r29, r3
/* 00008AEC 00008BB0  7F E3 FB 78 */	mr r3, r31
/* 00008AF0 00008BB4  4B FF D7 4D */	bl evtGetValue
/* 00008AF4 00008BB8  80 9C 00 08 */	lwz r4, 0x8(r28)
/* 00008AF8 00008BBC  7C 7E 1B 78 */	mr r30, r3
/* 00008AFC 00008BC0  7F E3 FB 78 */	mr r3, r31
/* 00008B00 00008BC4  4B FF D7 3D */	bl evtGetValue
/* 00008B04 00008BC8  3C A0 00 00 */	lis r5, VecData$508@ha
/* 00008B08 00008BCC  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 00008B0C 00008BD0  38 05 00 00 */	addi r0, r5, VecData$508@l
/* 00008B10 00008BD4  83 7C 00 10 */	lwz r27, 0x10(r28)
/* 00008B14 00008BD8  83 9C 00 14 */	lwz r28, 0x14(r28)
/* 00008B18 00008BDC  7C 1A 03 78 */	mr r26, r0
/* 00008B1C 00008BE0  38 A0 00 00 */	li r5, 0x0
/* 00008B20 00008BE4  48 00 00 1C */	b .L_00008B3C
.L_00008B24:
/* 00008B24 00008BE8  7C A9 03 A6 */	mtctr r5
/* 00008B28 00008BEC  2C 05 00 00 */	cmpwi r5, 0x0
/* 00008B2C 00008BF0  40 81 00 0C */	ble .L_00008B38
.L_00008B30:
/* 00008B30 00008BF4  3B 5A 00 0C */	addi r26, r26, 0xc
/* 00008B34 00008BF8  42 00 FF FC */	bdnz .L_00008B30
.L_00008B38:
/* 00008B38 00008BFC  38 A5 00 01 */	addi r5, r5, 0x1
.L_00008B3C:
/* 00008B3C 00008C00  7C 05 F0 00 */	cmpw r5, r30
/* 00008B40 00008C04  41 80 FF E4 */	blt .L_00008B24
/* 00008B44 00008C08  7C 69 03 A6 */	mtctr r3
/* 00008B48 00008C0C  2C 03 00 00 */	cmpwi r3, 0x0
/* 00008B4C 00008C10  40 81 00 0C */	ble .L_00008B58
.L_00008B50:
/* 00008B50 00008C14  3B 5A 00 0C */	addi r26, r26, 0xc
/* 00008B54 00008C18  42 00 FF FC */	bdnz .L_00008B50
.L_00008B58:
/* 00008B58 00008C1C  88 BD 01 89 */	lbz r5, 0x189(r29)
/* 00008B5C 00008C20  3C 00 43 30 */	lis r0, 0x4330
/* 00008B60 00008C24  90 01 00 08 */	stw r0, 0x8(r1)
/* 00008B64 00008C28  3C 60 00 00 */	lis r3, double_to_int_aji_00017168@ha
/* 00008B68 00008C2C  7C A0 07 74 */	extsb r0, r5
/* 00008B6C 00008C30  C0 5A 00 00 */	lfs f2, 0x0(r26)
/* 00008B70 00008C34  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00008B74 00008C38  38 A3 00 00 */	addi r5, r3, double_to_int_aji_00017168@l
/* 00008B78 00008C3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 00008B7C 00008C40  7F E3 FB 78 */	mr r3, r31
/* 00008B80 00008C44  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 00008B84 00008C48  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00008B88 00008C4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 00008B8C 00008C50  EC 02 00 32 */	fmuls f0, f2, f0
/* 00008B90 00008C54  FC 00 00 1E */	fctiwz f0, f0
/* 00008B94 00008C58  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 00008B98 00008C5C  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 00008B9C 00008C60  4B FF D6 A1 */	bl evtSetValue
/* 00008BA0 00008C64  C0 1A 00 04 */	lfs f0, 0x4(r26)
/* 00008BA4 00008C68  7F E3 FB 78 */	mr r3, r31
/* 00008BA8 00008C6C  7F 64 DB 78 */	mr r4, r27
/* 00008BAC 00008C70  FC 00 00 1E */	fctiwz f0, f0
/* 00008BB0 00008C74  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 00008BB4 00008C78  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 00008BB8 00008C7C  4B FF D6 85 */	bl evtSetValue
/* 00008BBC 00008C80  C0 1A 00 08 */	lfs f0, 0x8(r26)
/* 00008BC0 00008C84  7F E3 FB 78 */	mr r3, r31
/* 00008BC4 00008C88  7F 84 E3 78 */	mr r4, r28
/* 00008BC8 00008C8C  FC 00 00 1E */	fctiwz f0, f0
/* 00008BCC 00008C90  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 00008BD0 00008C94  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 00008BD4 00008C98  4B FF D6 69 */	bl evtSetValue
/* 00008BD8 00008C9C  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 00008BDC 00008CA0  38 60 00 02 */	li r3, 0x2
/* 00008BE0 00008CA4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00008BE4 00008CA8  7C 08 03 A6 */	mtlr r0
/* 00008BE8 00008CAC  38 21 00 40 */	addi r1, r1, 0x40
/* 00008BEC 00008CB0  4E 80 00 20 */	blr
.endfn battleGetBarriernSatelliteInitPos

# 0x000061D8..0x00006308 | size: 0x130
.rodata
.balign 8

# .rodata:0x0 | 0x61D8 | size: 0x1C
.obj str_btl_un_barriern_sate_aji_00017040, local
	.string "btl_un_barriern_satellite_z"
.endobj str_btl_un_barriern_sate_aji_00017040

# .rodata:0x1C | 0x61F4 | size: 0x17
.obj str_SFX_ENM_BARRI_DAMAGE_aji_0001705c, local
	.string "SFX_ENM_BARRI_DAMAGED1"
.endobj str_SFX_ENM_BARRI_DAMAGE_aji_0001705c

# .rodata:0x33 | 0x620B | size: 0x1
.obj gap_03_0000620B_rodata, global
.hidden gap_03_0000620B_rodata
	.byte 0x00
.endobj gap_03_0000620B_rodata

# .rodata:0x34 | 0x620C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_aji_00017074, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_aji_00017074

# .rodata:0x49 | 0x6221 | size: 0x3
.obj gap_03_00006221_rodata, global
.hidden gap_03_00006221_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006221_rodata

# .rodata:0x4C | 0x6224 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_aji_0001708c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_aji_0001708c

# .rodata:0x60 | 0x6238 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_aji_000170a0, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_aji_000170a0

# .rodata:0x79 | 0x6251 | size: 0x3
.obj gap_03_00006251_rodata, global
.hidden gap_03_00006251_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006251_rodata

# .rodata:0x7C | 0x6254 | size: 0xA
.obj str_c_baria_z_aji_000170bc, local
	.string "c_baria_z"
.endobj str_c_baria_z_aji_000170bc

# .rodata:0x86 | 0x625E | size: 0x2
.obj gap_03_0000625E_rodata, global
.hidden gap_03_0000625E_rodata
	.2byte 0x0000
.endobj gap_03_0000625E_rodata

# .rodata:0x88 | 0x6260 | size: 0x4
.obj str_N_2_aji_000170c8, local
	.string "N_2"
.endobj str_N_2_aji_000170c8

# .rodata:0x8C | 0x6264 | size: 0x4
.obj str_Y_2_aji_000170cc, local
	.string "Y_2"
.endobj str_Y_2_aji_000170cc

# .rodata:0x90 | 0x6268 | size: 0x4
.obj str_K_2_aji_000170d0, local
	.string "K_2"
.endobj str_K_2_aji_000170d0

# .rodata:0x94 | 0x626C | size: 0x4
.obj str_X_2_aji_000170d4, local
	.string "X_2"
.endobj str_X_2_aji_000170d4

# .rodata:0x98 | 0x6270 | size: 0x4
.obj str_S_2_aji_000170d8, local
	.string "S_2"
.endobj str_S_2_aji_000170d8

# .rodata:0x9C | 0x6274 | size: 0x4
.obj str_Q_2_aji_000170dc, local
	.string "Q_2"
.endobj str_Q_2_aji_000170dc

# .rodata:0xA0 | 0x6278 | size: 0x4
.obj str_D_2_aji_000170e0, local
	.string "D_2"
.endobj str_D_2_aji_000170e0

# .rodata:0xA4 | 0x627C | size: 0x4
.obj str_R_2_aji_000170e4, local
	.string "R_2"
.endobj str_R_2_aji_000170e4

# .rodata:0xA8 | 0x6280 | size: 0x4
.obj str_W_2_aji_000170e8, local
	.string "W_2"
.endobj str_W_2_aji_000170e8

# .rodata:0xAC | 0x6284 | size: 0x4
.obj str_S_4_aji_000170ec, local
	.string "S_4"
.endobj str_S_4_aji_000170ec

# .rodata:0xB0 | 0x6288 | size: 0x78
.obj VecData$508, local
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
.endobj VecData$508

# .rodata:0x128 | 0x6300 | size: 0x8
.obj double_to_int_aji_00017168, local
	.double 4503601774854144
.endobj double_to_int_aji_00017168

# 0x00030008..0x00030548 | size: 0x540
.data
.balign 8

# .data:0x0 | 0x30008 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x30010 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x30014 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x30018 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3001C | size: 0x4
.obj gap_04_0003001C_data, global
.hidden gap_04_0003001C_data
	.4byte 0x00000000
.endobj gap_04_0003001C_data

# .data:0x18 | 0x30020 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x30028 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3002C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x30030 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x30038 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3003C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x30040 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x30044 | size: 0x4
.obj gap_04_00030044_data, global
.hidden gap_04_00030044_data
	.4byte 0x00000000
.endobj gap_04_00030044_data

# .data:0x40 | 0x30048 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x30050 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x30054 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x30058 | size: 0xC4
.obj unit_barriern_z_satellite_2_data_30058, global
	.4byte 0x00000074
	.4byte str_btl_un_barriern_sate_aji_00017040
	.4byte 0x00020000
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
	.4byte str_SFX_ENM_BARRI_DAMAGE_aji_0001705c
	.4byte str_SFX_BTL_DAMAGE_FIRE1_aji_00017074
	.4byte str_SFX_BTL_DAMAGE_ICE1_aji_0001708c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_aji_000170a0
	.4byte 0x00000004
	.4byte regist
	.4byte 0x06000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_barriern_z_satellite_2_data_30058

# .data:0x114 | 0x3011C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x30121 | size: 0x3
.obj gap_04_00030121_data, global
.hidden gap_04_00030121_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00030121_data

# .data:0x11C | 0x30124 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x30129 | size: 0x3
.obj gap_04_00030129_data, global
.hidden gap_04_00030129_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00030129_data

# .data:0x124 | 0x3012C | size: 0x1C8
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_barriern_sate_aji_00017040
	.4byte str_c_baria_z_aji_000170bc
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
	.4byte str_btl_un_barriern_sate_aji_00017040
	.4byte str_c_baria_z_aji_000170bc
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
	.4byte str_btl_un_barriern_sate_aji_00017040
	.4byte str_c_baria_z_aji_000170bc
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
	.4byte str_btl_un_barriern_sate_aji_00017040
	.4byte str_c_baria_z_aji_000170bc
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
	.4byte str_btl_un_barriern_sate_aji_00017040
	.4byte str_c_baria_z_aji_000170bc
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
	.4byte str_btl_un_barriern_sate_aji_00017040
	.4byte str_c_baria_z_aji_000170bc
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

# .data:0x2EC | 0x302F4 | size: 0x16
.obj regist, local
	.4byte 0x465A5F00
	.4byte 0x50646400
	.4byte 0x64556455
	.4byte 0x645A5000
	.4byte 0x5F645064
	.2byte 0x6464
.endobj regist

# .data:0x302 | 0x3030A | size: 0x2
.obj gap_04_0003030A_data, global
.hidden gap_04_0003030A_data
	.2byte 0x0000
.endobj gap_04_0003030A_data

# .data:0x304 | 0x3030C | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_2_aji_000170c8
	.4byte 0x00000002
	.4byte str_Y_2_aji_000170cc
	.4byte 0x00000009
	.4byte str_Y_2_aji_000170cc
	.4byte 0x00000005
	.4byte str_K_2_aji_000170d0
	.4byte 0x00000004
	.4byte str_X_2_aji_000170d4
	.4byte 0x00000003
	.4byte str_X_2_aji_000170d4
	.4byte 0x0000001C
	.4byte str_S_2_aji_000170d8
	.4byte 0x0000001D
	.4byte str_Q_2_aji_000170dc
	.4byte 0x0000001E
	.4byte str_Q_2_aji_000170dc
	.4byte 0x0000001F
	.4byte str_S_2_aji_000170d8
	.4byte 0x00000027
	.4byte str_D_2_aji_000170e0
	.4byte 0x0000002A
	.4byte str_R_2_aji_000170e4
	.4byte 0x00000029
	.4byte str_R_2_aji_000170e4
	.4byte 0x00000028
	.4byte str_W_2_aji_000170e8
	.4byte 0x00000038
	.4byte str_X_2_aji_000170d4
	.4byte 0x00000039
	.4byte str_X_2_aji_000170d4
	.4byte 0x00000045
	.4byte str_S_2_aji_000170d8
.endobj pose_table

# .data:0x38C | 0x30394 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x394 | 0x3039C | size: 0x74
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

# .data:0x408 | 0x30410 | size: 0x28
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

# .data:0x430 | 0x30438 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x438 | 0x30440 | size: 0x14
.obj unison_phase_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unison_phase_event

# .data:0x44C | 0x30454 | size: 0x14
.obj attack_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x460 | 0x30468 | size: 0xE0
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
	.4byte str_S_4_aji_000170ec
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
