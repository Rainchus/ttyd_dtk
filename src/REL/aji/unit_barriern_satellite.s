.include "macros.inc"
.file "unit_barriern_satellite.o"

# 0x00010C4C..0x00010D9C | size: 0x150
.text
.balign 4

# .text:0x0 | 0x10C4C | size: 0x150
.fn battleGetBarriernSatelliteInitPos, local
/* 00010C4C 00010D10  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00010C50 00010D14  7C 08 02 A6 */	mflr r0
/* 00010C54 00010D18  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00010C58 00010D1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 00010C5C 00010D20  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 00010C60 00010D24  7C 7F 1B 78 */	mr r31, r3
/* 00010C64 00010D28  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00010C68 00010D2C  83 44 00 00 */	lwz r26, _battleWorkPointer@l(r4)
/* 00010C6C 00010D30  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00010C70 00010D34  4B FF 55 CD */	bl evtGetValue
/* 00010C74 00010D38  7C 60 1B 78 */	mr r0, r3
/* 00010C78 00010D3C  7F E3 FB 78 */	mr r3, r31
/* 00010C7C 00010D40  7C 04 03 78 */	mr r4, r0
/* 00010C80 00010D44  4B FF 55 BD */	bl BattleTransID
/* 00010C84 00010D48  7C 64 1B 78 */	mr r4, r3
/* 00010C88 00010D4C  7F 43 D3 78 */	mr r3, r26
/* 00010C8C 00010D50  4B FF 55 B1 */	bl BattleGetUnitPtr
/* 00010C90 00010D54  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 00010C94 00010D58  7C 7D 1B 78 */	mr r29, r3
/* 00010C98 00010D5C  7F E3 FB 78 */	mr r3, r31
/* 00010C9C 00010D60  4B FF 55 A1 */	bl evtGetValue
/* 00010CA0 00010D64  80 9C 00 08 */	lwz r4, 0x8(r28)
/* 00010CA4 00010D68  7C 7E 1B 78 */	mr r30, r3
/* 00010CA8 00010D6C  7F E3 FB 78 */	mr r3, r31
/* 00010CAC 00010D70  4B FF 55 91 */	bl evtGetValue
/* 00010CB0 00010D74  3C A0 00 00 */	lis r5, VecData$508@ha
/* 00010CB4 00010D78  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 00010CB8 00010D7C  38 05 00 00 */	addi r0, r5, VecData$508@l
/* 00010CBC 00010D80  83 7C 00 10 */	lwz r27, 0x10(r28)
/* 00010CC0 00010D84  83 9C 00 14 */	lwz r28, 0x14(r28)
/* 00010CC4 00010D88  7C 1A 03 78 */	mr r26, r0
/* 00010CC8 00010D8C  38 A0 00 00 */	li r5, 0x0
/* 00010CCC 00010D90  48 00 00 1C */	b .L_00010CE8
.L_00010CD0:
/* 00010CD0 00010D94  7C A9 03 A6 */	mtctr r5
/* 00010CD4 00010D98  2C 05 00 00 */	cmpwi r5, 0x0
/* 00010CD8 00010D9C  40 81 00 0C */	ble .L_00010CE4
.L_00010CDC:
/* 00010CDC 00010DA0  3B 5A 00 0C */	addi r26, r26, 0xc
/* 00010CE0 00010DA4  42 00 FF FC */	bdnz .L_00010CDC
.L_00010CE4:
/* 00010CE4 00010DA8  38 A5 00 01 */	addi r5, r5, 0x1
.L_00010CE8:
/* 00010CE8 00010DAC  7C 05 F0 00 */	cmpw r5, r30
/* 00010CEC 00010DB0  41 80 FF E4 */	blt .L_00010CD0
/* 00010CF0 00010DB4  7C 69 03 A6 */	mtctr r3
/* 00010CF4 00010DB8  2C 03 00 00 */	cmpwi r3, 0x0
/* 00010CF8 00010DBC  40 81 00 0C */	ble .L_00010D04
.L_00010CFC:
/* 00010CFC 00010DC0  3B 5A 00 0C */	addi r26, r26, 0xc
/* 00010D00 00010DC4  42 00 FF FC */	bdnz .L_00010CFC
.L_00010D04:
/* 00010D04 00010DC8  88 BD 01 89 */	lbz r5, 0x189(r29)
/* 00010D08 00010DCC  3C 00 43 30 */	lis r0, 0x4330
/* 00010D0C 00010DD0  90 01 00 08 */	stw r0, 0x8(r1)
/* 00010D10 00010DD4  3C 60 00 00 */	lis r3, double_to_int_aji_000183a0@ha
/* 00010D14 00010DD8  7C A0 07 74 */	extsb r0, r5
/* 00010D18 00010DDC  C0 5A 00 00 */	lfs f2, 0x0(r26)
/* 00010D1C 00010DE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00010D20 00010DE4  38 A3 00 00 */	addi r5, r3, double_to_int_aji_000183a0@l
/* 00010D24 00010DE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 00010D28 00010DEC  7F E3 FB 78 */	mr r3, r31
/* 00010D2C 00010DF0  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 00010D30 00010DF4  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00010D34 00010DF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 00010D38 00010DFC  EC 02 00 32 */	fmuls f0, f2, f0
/* 00010D3C 00010E00  FC 00 00 1E */	fctiwz f0, f0
/* 00010D40 00010E04  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 00010D44 00010E08  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 00010D48 00010E0C  4B FF 54 F5 */	bl evtSetValue
/* 00010D4C 00010E10  C0 1A 00 04 */	lfs f0, 0x4(r26)
/* 00010D50 00010E14  7F E3 FB 78 */	mr r3, r31
/* 00010D54 00010E18  7F 64 DB 78 */	mr r4, r27
/* 00010D58 00010E1C  FC 00 00 1E */	fctiwz f0, f0
/* 00010D5C 00010E20  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 00010D60 00010E24  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 00010D64 00010E28  4B FF 54 D9 */	bl evtSetValue
/* 00010D68 00010E2C  C0 1A 00 08 */	lfs f0, 0x8(r26)
/* 00010D6C 00010E30  7F E3 FB 78 */	mr r3, r31
/* 00010D70 00010E34  7F 84 E3 78 */	mr r4, r28
/* 00010D74 00010E38  FC 00 00 1E */	fctiwz f0, f0
/* 00010D78 00010E3C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 00010D7C 00010E40  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 00010D80 00010E44  4B FF 54 BD */	bl evtSetValue
/* 00010D84 00010E48  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 00010D88 00010E4C  38 60 00 02 */	li r3, 0x2
/* 00010D8C 00010E50  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00010D90 00010E54  7C 08 03 A6 */	mtlr r0
/* 00010D94 00010E58  38 21 00 40 */	addi r1, r1, 0x40
/* 00010D98 00010E5C  4E 80 00 20 */	blr
.endfn battleGetBarriernSatelliteInitPos

# 0x00007410..0x00007540 | size: 0x130
.rodata
.balign 8

# .rodata:0x0 | 0x7410 | size: 0x1A
.obj str_btl_un_barriern_sate_aji_00018278, local
	.string "btl_un_barriern_satellite"
.endobj str_btl_un_barriern_sate_aji_00018278

# .rodata:0x1A | 0x742A | size: 0x2
.obj gap_03_0000742A_rodata, global
.hidden gap_03_0000742A_rodata
	.2byte 0x0000
.endobj gap_03_0000742A_rodata

# .rodata:0x1C | 0x742C | size: 0x17
.obj str_SFX_ENM_BARRI_DAMAGE_aji_00018294, local
	.string "SFX_ENM_BARRI_DAMAGED1"
.endobj str_SFX_ENM_BARRI_DAMAGE_aji_00018294

# .rodata:0x33 | 0x7443 | size: 0x1
.obj gap_03_00007443_rodata, global
.hidden gap_03_00007443_rodata
	.byte 0x00
.endobj gap_03_00007443_rodata

# .rodata:0x34 | 0x7444 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_aji_000182ac, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_aji_000182ac

# .rodata:0x49 | 0x7459 | size: 0x3
.obj gap_03_00007459_rodata, global
.hidden gap_03_00007459_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007459_rodata

# .rodata:0x4C | 0x745C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_aji_000182c4, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_aji_000182c4

# .rodata:0x60 | 0x7470 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_aji_000182d8, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_aji_000182d8

# .rodata:0x79 | 0x7489 | size: 0x3
.obj gap_03_00007489_rodata, global
.hidden gap_03_00007489_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007489_rodata

# .rodata:0x7C | 0x748C | size: 0x8
.obj str_c_baria_aji_000182f4, local
	.string "c_baria"
.endobj str_c_baria_aji_000182f4

# .rodata:0x84 | 0x7494 | size: 0x4
.obj str_N_2_aji_000182fc, local
	.string "N_2"
.endobj str_N_2_aji_000182fc

# .rodata:0x88 | 0x7498 | size: 0x4
.obj str_Y_2_aji_00018300, local
	.string "Y_2"
.endobj str_Y_2_aji_00018300

# .rodata:0x8C | 0x749C | size: 0x4
.obj str_K_2_aji_00018304, local
	.string "K_2"
.endobj str_K_2_aji_00018304

# .rodata:0x90 | 0x74A0 | size: 0x4
.obj str_X_2_aji_00018308, local
	.string "X_2"
.endobj str_X_2_aji_00018308

# .rodata:0x94 | 0x74A4 | size: 0x4
.obj str_S_2_aji_0001830c, local
	.string "S_2"
.endobj str_S_2_aji_0001830c

# .rodata:0x98 | 0x74A8 | size: 0x4
.obj str_Q_2_aji_00018310, local
	.string "Q_2"
.endobj str_Q_2_aji_00018310

# .rodata:0x9C | 0x74AC | size: 0x4
.obj str_D_2_aji_00018314, local
	.string "D_2"
.endobj str_D_2_aji_00018314

# .rodata:0xA0 | 0x74B0 | size: 0x4
.obj str_R_2_aji_00018318, local
	.string "R_2"
.endobj str_R_2_aji_00018318

# .rodata:0xA4 | 0x74B4 | size: 0x4
.obj str_W_2_aji_0001831c, local
	.string "W_2"
.endobj str_W_2_aji_0001831c

# .rodata:0xA8 | 0x74B8 | size: 0x4
.obj str_S_4_aji_00018320, local
	.string "S_4"
.endobj str_S_4_aji_00018320

# .rodata:0xAC | 0x74BC | size: 0x78
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
	.4byte 0x00000000

# .rodata:0x128 | 0x7538 | size: 0x8
.obj double_to_int_aji_000183a0, local
	.double 4503601774854144
.endobj double_to_int_aji_000183a0

# 0x0003DAD0..0x0003E010 | size: 0x540
.data
.balign 8

# .data:0x0 | 0x3DAD0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x3DAD8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3DADC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x3DAE0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3DAE4 | size: 0x4
.obj gap_04_0003DAE4_data, global
.hidden gap_04_0003DAE4_data
	.4byte 0x00000000
.endobj gap_04_0003DAE4_data

# .data:0x18 | 0x3DAE8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x3DAF0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3DAF4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x3DAF8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x3DB00 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3DB04 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x3DB08 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3DB0C | size: 0x4
.obj gap_04_0003DB0C_data, global
.hidden gap_04_0003DB0C_data
	.4byte 0x00000000
.endobj gap_04_0003DB0C_data

# .data:0x40 | 0x3DB10 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x3DB18 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x3DB1C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x3DB20 | size: 0xC4
.obj unit_barriern_satellite_2_data_3DB20, global
	.4byte 0x0000001E
	.4byte str_btl_un_barriern_sate_aji_00018278
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
	.4byte str_SFX_ENM_BARRI_DAMAGE_aji_00018294
	.4byte str_SFX_BTL_DAMAGE_FIRE1_aji_000182ac
	.4byte str_SFX_BTL_DAMAGE_ICE1_aji_000182c4
	.4byte str_SFX_BTL_DAMAGE_BIRIB_aji_000182d8
	.4byte 0x00000004
	.4byte regist
	.4byte 0x06000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_barriern_satellite_2_data_3DB20

# .data:0x114 | 0x3DBE4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x3DBE9 | size: 0x3
.obj gap_04_0003DBE9_data, global
.hidden gap_04_0003DBE9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0003DBE9_data

# .data:0x11C | 0x3DBEC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x3DBF1 | size: 0x3
.obj gap_04_0003DBF1_data, global
.hidden gap_04_0003DBF1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0003DBF1_data

# .data:0x124 | 0x3DBF4 | size: 0x1C8
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_barriern_sate_aji_00018278
	.4byte str_c_baria_aji_000182f4
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
	.4byte str_btl_un_barriern_sate_aji_00018278
	.4byte str_c_baria_aji_000182f4
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
	.4byte str_btl_un_barriern_sate_aji_00018278
	.4byte str_c_baria_aji_000182f4
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
	.4byte str_btl_un_barriern_sate_aji_00018278
	.4byte str_c_baria_aji_000182f4
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
	.4byte str_btl_un_barriern_sate_aji_00018278
	.4byte str_c_baria_aji_000182f4
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
	.4byte str_btl_un_barriern_sate_aji_00018278
	.4byte str_c_baria_aji_000182f4
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

# .data:0x2EC | 0x3DDBC | size: 0x16
.obj regist, local
	.4byte 0x50646400
	.4byte 0x5A640000
	.4byte 0x645A645A
	.4byte 0x645F5A00
	.4byte 0x64645A64
	.2byte 0x6464
.endobj regist

# .data:0x302 | 0x3DDD2 | size: 0x2
.obj gap_04_0003DDD2_data, global
.hidden gap_04_0003DDD2_data
	.2byte 0x0000
.endobj gap_04_0003DDD2_data

# .data:0x304 | 0x3DDD4 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_2_aji_000182fc
	.4byte 0x00000002
	.4byte str_Y_2_aji_00018300
	.4byte 0x00000009
	.4byte str_Y_2_aji_00018300
	.4byte 0x00000005
	.4byte str_K_2_aji_00018304
	.4byte 0x00000004
	.4byte str_X_2_aji_00018308
	.4byte 0x00000003
	.4byte str_X_2_aji_00018308
	.4byte 0x0000001C
	.4byte str_S_2_aji_0001830c
	.4byte 0x0000001D
	.4byte str_Q_2_aji_00018310
	.4byte 0x0000001E
	.4byte str_Q_2_aji_00018310
	.4byte 0x0000001F
	.4byte str_S_2_aji_0001830c
	.4byte 0x00000027
	.4byte str_D_2_aji_00018314
	.4byte 0x0000002A
	.4byte str_R_2_aji_00018318
	.4byte 0x00000029
	.4byte str_R_2_aji_00018318
	.4byte 0x00000028
	.4byte str_W_2_aji_0001831c
	.4byte 0x00000038
	.4byte str_X_2_aji_00018308
	.4byte 0x00000039
	.4byte str_X_2_aji_00018308
	.4byte 0x00000045
	.4byte str_S_2_aji_0001830c
.endobj pose_table

# .data:0x38C | 0x3DE5C | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x394 | 0x3DE64 | size: 0x74
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

# .data:0x408 | 0x3DED8 | size: 0x28
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

# .data:0x430 | 0x3DF00 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x438 | 0x3DF08 | size: 0x14
.obj unison_phase_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unison_phase_event

# .data:0x44C | 0x3DF1C | size: 0x14
.obj attack_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x460 | 0x3DF30 | size: 0xE0
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
	.4byte str_S_4_aji_00018320
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
