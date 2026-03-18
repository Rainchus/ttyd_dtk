.include "macros.inc"
.file "unit_barriern_custom_satellite.o"

# 0x0000E42C..0x0000E57C | size: 0x150
.text
.balign 4

# .text:0x0 | 0xE42C | size: 0x150
.fn battleGetBarriernSatelliteInitPos, local
/* 0000E42C 0000E4F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 0000E430 0000E4F4  7C 08 02 A6 */	mflr r0
/* 0000E434 0000E4F8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000E438 0000E4FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 0000E43C 0000E500  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 0000E440 0000E504  7C 7F 1B 78 */	mr r31, r3
/* 0000E444 0000E508  83 83 00 18 */	lwz r28, 0x18(r3)
/* 0000E448 0000E50C  83 44 00 00 */	lwz r26, _battleWorkPointer@l(r4)
/* 0000E44C 0000E510  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 0000E450 0000E514  4B FF 7D ED */	bl evtGetValue
/* 0000E454 0000E518  7C 60 1B 78 */	mr r0, r3
/* 0000E458 0000E51C  7F E3 FB 78 */	mr r3, r31
/* 0000E45C 0000E520  7C 04 03 78 */	mr r4, r0
/* 0000E460 0000E524  4B FF 7D DD */	bl BattleTransID
/* 0000E464 0000E528  7C 64 1B 78 */	mr r4, r3
/* 0000E468 0000E52C  7F 43 D3 78 */	mr r3, r26
/* 0000E46C 0000E530  4B FF 7D D1 */	bl BattleGetUnitPtr
/* 0000E470 0000E534  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 0000E474 0000E538  7C 7D 1B 78 */	mr r29, r3
/* 0000E478 0000E53C  7F E3 FB 78 */	mr r3, r31
/* 0000E47C 0000E540  4B FF 7D C1 */	bl evtGetValue
/* 0000E480 0000E544  80 9C 00 08 */	lwz r4, 0x8(r28)
/* 0000E484 0000E548  7C 7E 1B 78 */	mr r30, r3
/* 0000E488 0000E54C  7F E3 FB 78 */	mr r3, r31
/* 0000E48C 0000E550  4B FF 7D B1 */	bl evtGetValue
/* 0000E490 0000E554  3C A0 00 00 */	lis r5, VecData$508@ha
/* 0000E494 0000E558  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 0000E498 0000E55C  38 05 00 00 */	addi r0, r5, VecData$508@l
/* 0000E49C 0000E560  83 7C 00 10 */	lwz r27, 0x10(r28)
/* 0000E4A0 0000E564  83 9C 00 14 */	lwz r28, 0x14(r28)
/* 0000E4A4 0000E568  7C 1A 03 78 */	mr r26, r0
/* 0000E4A8 0000E56C  38 A0 00 00 */	li r5, 0x0
/* 0000E4AC 0000E570  48 00 00 1C */	b .L_0000E4C8
.L_0000E4B0:
/* 0000E4B0 0000E574  7C A9 03 A6 */	mtctr r5
/* 0000E4B4 0000E578  2C 05 00 00 */	cmpwi r5, 0x0
/* 0000E4B8 0000E57C  40 81 00 0C */	ble .L_0000E4C4
.L_0000E4BC:
/* 0000E4BC 0000E580  3B 5A 00 0C */	addi r26, r26, 0xc
/* 0000E4C0 0000E584  42 00 FF FC */	bdnz .L_0000E4BC
.L_0000E4C4:
/* 0000E4C4 0000E588  38 A5 00 01 */	addi r5, r5, 0x1
.L_0000E4C8:
/* 0000E4C8 0000E58C  7C 05 F0 00 */	cmpw r5, r30
/* 0000E4CC 0000E590  41 80 FF E4 */	blt .L_0000E4B0
/* 0000E4D0 0000E594  7C 69 03 A6 */	mtctr r3
/* 0000E4D4 0000E598  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000E4D8 0000E59C  40 81 00 0C */	ble .L_0000E4E4
.L_0000E4DC:
/* 0000E4DC 0000E5A0  3B 5A 00 0C */	addi r26, r26, 0xc
/* 0000E4E0 0000E5A4  42 00 FF FC */	bdnz .L_0000E4DC
.L_0000E4E4:
/* 0000E4E4 0000E5A8  88 BD 01 89 */	lbz r5, 0x189(r29)
/* 0000E4E8 0000E5AC  3C 00 43 30 */	lis r0, 0x4330
/* 0000E4EC 0000E5B0  90 01 00 08 */	stw r0, 0x8(r1)
/* 0000E4F0 0000E5B4  3C 60 00 00 */	lis r3, double_to_int_aji_00017f20@ha
/* 0000E4F4 0000E5B8  7C A0 07 74 */	extsb r0, r5
/* 0000E4F8 0000E5BC  C0 5A 00 00 */	lfs f2, 0x0(r26)
/* 0000E4FC 0000E5C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 0000E500 0000E5C4  38 A3 00 00 */	addi r5, r3, double_to_int_aji_00017f20@l
/* 0000E504 0000E5C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 0000E508 0000E5CC  7F E3 FB 78 */	mr r3, r31
/* 0000E50C 0000E5D0  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 0000E510 0000E5D4  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0000E514 0000E5D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 0000E518 0000E5DC  EC 02 00 32 */	fmuls f0, f2, f0
/* 0000E51C 0000E5E0  FC 00 00 1E */	fctiwz f0, f0
/* 0000E520 0000E5E4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 0000E524 0000E5E8  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 0000E528 0000E5EC  4B FF 7D 15 */	bl evtSetValue
/* 0000E52C 0000E5F0  C0 1A 00 04 */	lfs f0, 0x4(r26)
/* 0000E530 0000E5F4  7F E3 FB 78 */	mr r3, r31
/* 0000E534 0000E5F8  7F 64 DB 78 */	mr r4, r27
/* 0000E538 0000E5FC  FC 00 00 1E */	fctiwz f0, f0
/* 0000E53C 0000E600  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 0000E540 0000E604  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 0000E544 0000E608  4B FF 7C F9 */	bl evtSetValue
/* 0000E548 0000E60C  C0 1A 00 08 */	lfs f0, 0x8(r26)
/* 0000E54C 0000E610  7F E3 FB 78 */	mr r3, r31
/* 0000E550 0000E614  7F 84 E3 78 */	mr r4, r28
/* 0000E554 0000E618  FC 00 00 1E */	fctiwz f0, f0
/* 0000E558 0000E61C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 0000E55C 0000E620  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 0000E560 0000E624  4B FF 7C DD */	bl evtSetValue
/* 0000E564 0000E628  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 0000E568 0000E62C  38 60 00 02 */	li r3, 0x2
/* 0000E56C 0000E630  80 01 00 44 */	lwz r0, 0x44(r1)
/* 0000E570 0000E634  7C 08 03 A6 */	mtlr r0
/* 0000E574 0000E638  38 21 00 40 */	addi r1, r1, 0x40
/* 0000E578 0000E63C  4E 80 00 20 */	blr
.endfn battleGetBarriernSatelliteInitPos

# 0x00006F88..0x000070C0 | size: 0x138
.rodata
.balign 8

# .rodata:0x0 | 0x6F88 | size: 0x21
.obj str_btl_un_barriern_cust_aji_00017df0, local
	.string "btl_un_barriern_custom_satellite"
.endobj str_btl_un_barriern_cust_aji_00017df0

# .rodata:0x21 | 0x6FA9 | size: 0x3
.obj gap_03_00006FA9_rodata, global
.hidden gap_03_00006FA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006FA9_rodata

# .rodata:0x24 | 0x6FAC | size: 0x17
.obj str_SFX_ENM_BARRI_DAMAGE_aji_00017e14, local
	.string "SFX_ENM_BARRI_DAMAGED1"
.endobj str_SFX_ENM_BARRI_DAMAGE_aji_00017e14

# .rodata:0x3B | 0x6FC3 | size: 0x1
.obj gap_03_00006FC3_rodata, global
.hidden gap_03_00006FC3_rodata
	.byte 0x00
.endobj gap_03_00006FC3_rodata

# .rodata:0x3C | 0x6FC4 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_aji_00017e2c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_aji_00017e2c

# .rodata:0x51 | 0x6FD9 | size: 0x3
.obj gap_03_00006FD9_rodata, global
.hidden gap_03_00006FD9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006FD9_rodata

# .rodata:0x54 | 0x6FDC | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_aji_00017e44, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_aji_00017e44

# .rodata:0x68 | 0x6FF0 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_aji_00017e58, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_aji_00017e58

# .rodata:0x81 | 0x7009 | size: 0x3
.obj gap_03_00007009_rodata, global
.hidden gap_03_00007009_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007009_rodata

# .rodata:0x84 | 0x700C | size: 0xA
.obj str_c_baria_c_aji_00017e74, local
	.string "c_baria_c"
.endobj str_c_baria_c_aji_00017e74

# .rodata:0x8E | 0x7016 | size: 0x2
.obj gap_03_00007016_rodata, global
.hidden gap_03_00007016_rodata
	.2byte 0x0000
.endobj gap_03_00007016_rodata

# .rodata:0x90 | 0x7018 | size: 0x4
.obj str_N_2_aji_00017e80, local
	.string "N_2"
.endobj str_N_2_aji_00017e80

# .rodata:0x94 | 0x701C | size: 0x4
.obj str_Y_2_aji_00017e84, local
	.string "Y_2"
.endobj str_Y_2_aji_00017e84

# .rodata:0x98 | 0x7020 | size: 0x4
.obj str_K_2_aji_00017e88, local
	.string "K_2"
.endobj str_K_2_aji_00017e88

# .rodata:0x9C | 0x7024 | size: 0x4
.obj str_X_2_aji_00017e8c, local
	.string "X_2"
.endobj str_X_2_aji_00017e8c

# .rodata:0xA0 | 0x7028 | size: 0x4
.obj str_S_2_aji_00017e90, local
	.string "S_2"
.endobj str_S_2_aji_00017e90

# .rodata:0xA4 | 0x702C | size: 0x4
.obj str_Q_2_aji_00017e94, local
	.string "Q_2"
.endobj str_Q_2_aji_00017e94

# .rodata:0xA8 | 0x7030 | size: 0x4
.obj str_D_2_aji_00017e98, local
	.string "D_2"
.endobj str_D_2_aji_00017e98

# .rodata:0xAC | 0x7034 | size: 0x4
.obj str_R_2_aji_00017e9c, local
	.string "R_2"
.endobj str_R_2_aji_00017e9c

# .rodata:0xB0 | 0x7038 | size: 0x4
.obj str_W_2_aji_00017ea0, local
	.string "W_2"
.endobj str_W_2_aji_00017ea0

# .rodata:0xB4 | 0x703C | size: 0x4
.obj str_S_4_aji_00017ea4, local
	.string "S_4"
.endobj str_S_4_aji_00017ea4

# .rodata:0xB8 | 0x7040 | size: 0x78
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

# .rodata:0x130 | 0x70B8 | size: 0x8
.obj double_to_int_aji_00017f20, local
	.double 4503601774854144
.endobj double_to_int_aji_00017f20

# 0x0003A470..0x0003A9B0 | size: 0x540
.data
.balign 8

# .data:0x0 | 0x3A470 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x3A478 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3A47C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x3A480 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3A484 | size: 0x4
.obj gap_04_0003A484_data, global
.hidden gap_04_0003A484_data
	.4byte 0x00000000
.endobj gap_04_0003A484_data

# .data:0x18 | 0x3A488 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x3A490 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3A494 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x3A498 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x3A4A0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3A4A4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x3A4A8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3A4AC | size: 0x4
.obj gap_04_0003A4AC_data, global
.hidden gap_04_0003A4AC_data
	.4byte 0x00000000
.endobj gap_04_0003A4AC_data

# .data:0x40 | 0x3A4B0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x3A4B8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x3A4BC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x3A4C0 | size: 0xC4
.obj unit_barriern_custom_satellite_2_data_3A4C0, global
	.4byte 0x00000076
	.4byte str_btl_un_barriern_cust_aji_00017df0
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
	.4byte str_SFX_ENM_BARRI_DAMAGE_aji_00017e14
	.4byte str_SFX_BTL_DAMAGE_FIRE1_aji_00017e2c
	.4byte str_SFX_BTL_DAMAGE_ICE1_aji_00017e44
	.4byte str_SFX_BTL_DAMAGE_BIRIB_aji_00017e58
	.4byte 0x00000004
	.4byte regist
	.4byte 0x06000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_barriern_custom_satellite_2_data_3A4C0

# .data:0x114 | 0x3A584 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x3A589 | size: 0x3
.obj gap_04_0003A589_data, global
.hidden gap_04_0003A589_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0003A589_data

# .data:0x11C | 0x3A58C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x3A591 | size: 0x3
.obj gap_04_0003A591_data, global
.hidden gap_04_0003A591_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0003A591_data

# .data:0x124 | 0x3A594 | size: 0x1C8
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_barriern_cust_aji_00017df0
	.4byte str_c_baria_c_aji_00017e74
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
	.4byte str_btl_un_barriern_cust_aji_00017df0
	.4byte str_c_baria_c_aji_00017e74
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
	.4byte str_btl_un_barriern_cust_aji_00017df0
	.4byte str_c_baria_c_aji_00017e74
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
	.4byte str_btl_un_barriern_cust_aji_00017df0
	.4byte str_c_baria_c_aji_00017e74
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
	.4byte str_btl_un_barriern_cust_aji_00017df0
	.4byte str_c_baria_c_aji_00017e74
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
	.4byte str_btl_un_barriern_cust_aji_00017df0
	.4byte str_c_baria_c_aji_00017e74
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

# .data:0x2EC | 0x3A75C | size: 0x16
.obj regist, local
	.4byte 0x465A5A00
	.4byte 0x0A646400
	.4byte 0x64506450
	.4byte 0x64555000
	.4byte 0x5A645064
	.2byte 0x6419
.endobj regist

# .data:0x302 | 0x3A772 | size: 0x2
.obj gap_04_0003A772_data, global
.hidden gap_04_0003A772_data
	.2byte 0x0000
.endobj gap_04_0003A772_data

# .data:0x304 | 0x3A774 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_2_aji_00017e80
	.4byte 0x00000002
	.4byte str_Y_2_aji_00017e84
	.4byte 0x00000009
	.4byte str_Y_2_aji_00017e84
	.4byte 0x00000005
	.4byte str_K_2_aji_00017e88
	.4byte 0x00000004
	.4byte str_X_2_aji_00017e8c
	.4byte 0x00000003
	.4byte str_X_2_aji_00017e8c
	.4byte 0x0000001C
	.4byte str_S_2_aji_00017e90
	.4byte 0x0000001D
	.4byte str_Q_2_aji_00017e94
	.4byte 0x0000001E
	.4byte str_Q_2_aji_00017e94
	.4byte 0x0000001F
	.4byte str_S_2_aji_00017e90
	.4byte 0x00000027
	.4byte str_D_2_aji_00017e98
	.4byte 0x0000002A
	.4byte str_R_2_aji_00017e9c
	.4byte 0x00000029
	.4byte str_R_2_aji_00017e9c
	.4byte 0x00000028
	.4byte str_W_2_aji_00017ea0
	.4byte 0x00000038
	.4byte str_X_2_aji_00017e8c
	.4byte 0x00000039
	.4byte str_X_2_aji_00017e8c
	.4byte 0x00000045
	.4byte str_S_2_aji_00017e90
.endobj pose_table

# .data:0x38C | 0x3A7FC | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x394 | 0x3A804 | size: 0x74
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

# .data:0x408 | 0x3A878 | size: 0x28
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

# .data:0x430 | 0x3A8A0 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x438 | 0x3A8A8 | size: 0x14
.obj unison_phase_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unison_phase_event

# .data:0x44C | 0x3A8BC | size: 0x14
.obj attack_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x460 | 0x3A8D0 | size: 0xE0
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
	.4byte str_S_4_aji_00017ea4
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
