.include "macros.inc"
.file "unit_barriern_z_satellite.o"

# 0x000007E8..0x00000938 | size: 0x150
.text
.balign 4

# .text:0x0 | 0x7E8 | size: 0x150
.fn battleGetBarriernSatelliteInitPos, local
/* 000007E8 000008AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 000007EC 000008B0  7C 08 02 A6 */	mflr r0
/* 000007F0 000008B4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000007F4 000008B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 000007F8 000008BC  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 000007FC 000008C0  7C 7F 1B 78 */	mr r31, r3
/* 00000800 000008C4  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00000804 000008C8  83 44 00 00 */	lwz r26, _battleWorkPointer@l(r4)
/* 00000808 000008CC  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 0000080C 000008D0  4B FF FC A1 */	bl evtGetValue
/* 00000810 000008D4  7C 60 1B 78 */	mr r0, r3
/* 00000814 000008D8  7F E3 FB 78 */	mr r3, r31
/* 00000818 000008DC  7C 04 03 78 */	mr r4, r0
/* 0000081C 000008E0  4B FF FC 91 */	bl BattleTransID
/* 00000820 000008E4  7C 64 1B 78 */	mr r4, r3
/* 00000824 000008E8  7F 43 D3 78 */	mr r3, r26
/* 00000828 000008EC  4B FF FC 85 */	bl BattleGetUnitPtr
/* 0000082C 000008F0  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 00000830 000008F4  7C 7D 1B 78 */	mr r29, r3
/* 00000834 000008F8  7F E3 FB 78 */	mr r3, r31
/* 00000838 000008FC  4B FF FC 75 */	bl evtGetValue
/* 0000083C 00000900  80 9C 00 08 */	lwz r4, 0x8(r28)
/* 00000840 00000904  7C 7E 1B 78 */	mr r30, r3
/* 00000844 00000908  7F E3 FB 78 */	mr r3, r31
/* 00000848 0000090C  4B FF FC 65 */	bl evtGetValue
/* 0000084C 00000910  3C A0 00 00 */	lis r5, VecData$508@ha
/* 00000850 00000914  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 00000854 00000918  38 05 00 00 */	addi r0, r5, VecData$508@l
/* 00000858 0000091C  83 7C 00 10 */	lwz r27, 0x10(r28)
/* 0000085C 00000920  83 9C 00 14 */	lwz r28, 0x14(r28)
/* 00000860 00000924  7C 1A 03 78 */	mr r26, r0
/* 00000864 00000928  38 A0 00 00 */	li r5, 0x0
/* 00000868 0000092C  48 00 00 1C */	b .L_00000884
.L_0000086C:
/* 0000086C 00000930  7C A9 03 A6 */	mtctr r5
/* 00000870 00000934  2C 05 00 00 */	cmpwi r5, 0x0
/* 00000874 00000938  40 81 00 0C */	ble .L_00000880
.L_00000878:
/* 00000878 0000093C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 0000087C 00000940  42 00 FF FC */	bdnz .L_00000878
.L_00000880:
/* 00000880 00000944  38 A5 00 01 */	addi r5, r5, 0x1
.L_00000884:
/* 00000884 00000948  7C 05 F0 00 */	cmpw r5, r30
/* 00000888 0000094C  41 80 FF E4 */	blt .L_0000086C
/* 0000088C 00000950  7C 69 03 A6 */	mtctr r3
/* 00000890 00000954  2C 03 00 00 */	cmpwi r3, 0x0
/* 00000894 00000958  40 81 00 0C */	ble .L_000008A0
.L_00000898:
/* 00000898 0000095C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 0000089C 00000960  42 00 FF FC */	bdnz .L_00000898
.L_000008A0:
/* 000008A0 00000964  88 BD 01 89 */	lbz r5, 0x189(r29)
/* 000008A4 00000968  3C 00 43 30 */	lis r0, 0x4330
/* 000008A8 0000096C  90 01 00 08 */	stw r0, 0x8(r1)
/* 000008AC 00000970  3C 60 00 00 */	lis r3, double_to_int_moo_00003e80@ha
/* 000008B0 00000974  7C A0 07 74 */	extsb r0, r5
/* 000008B4 00000978  C0 5A 00 00 */	lfs f2, 0x0(r26)
/* 000008B8 0000097C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 000008BC 00000980  38 A3 00 00 */	addi r5, r3, double_to_int_moo_00003e80@l
/* 000008C0 00000984  90 01 00 0C */	stw r0, 0xc(r1)
/* 000008C4 00000988  7F E3 FB 78 */	mr r3, r31
/* 000008C8 0000098C  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 000008CC 00000990  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 000008D0 00000994  EC 00 08 28 */	fsubs f0, f0, f1
/* 000008D4 00000998  EC 02 00 32 */	fmuls f0, f2, f0
/* 000008D8 0000099C  FC 00 00 1E */	fctiwz f0, f0
/* 000008DC 000009A0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 000008E0 000009A4  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 000008E4 000009A8  4B FF FB C9 */	bl evtSetValue
/* 000008E8 000009AC  C0 1A 00 04 */	lfs f0, 0x4(r26)
/* 000008EC 000009B0  7F E3 FB 78 */	mr r3, r31
/* 000008F0 000009B4  7F 64 DB 78 */	mr r4, r27
/* 000008F4 000009B8  FC 00 00 1E */	fctiwz f0, f0
/* 000008F8 000009BC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 000008FC 000009C0  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 00000900 000009C4  4B FF FB AD */	bl evtSetValue
/* 00000904 000009C8  C0 1A 00 08 */	lfs f0, 0x8(r26)
/* 00000908 000009CC  7F E3 FB 78 */	mr r3, r31
/* 0000090C 000009D0  7F 84 E3 78 */	mr r4, r28
/* 00000910 000009D4  FC 00 00 1E */	fctiwz f0, f0
/* 00000914 000009D8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 00000918 000009DC  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 0000091C 000009E0  4B FF FB 91 */	bl evtSetValue
/* 00000920 000009E4  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 00000924 000009E8  38 60 00 02 */	li r3, 0x2
/* 00000928 000009EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 0000092C 000009F0  7C 08 03 A6 */	mtlr r0
/* 00000930 000009F4  38 21 00 40 */	addi r1, r1, 0x40
/* 00000934 000009F8  4E 80 00 20 */	blr
.endfn battleGetBarriernSatelliteInitPos

# 0x00000CC8..0x00000DF8 | size: 0x130
.rodata
.balign 8

# .rodata:0x0 | 0xCC8 | size: 0x1C
.obj str_btl_un_barriern_sate_moo_00003d58, local
	.string "btl_un_barriern_satellite_z"
.endobj str_btl_un_barriern_sate_moo_00003d58

# .rodata:0x1C | 0xCE4 | size: 0x17
.obj str_SFX_ENM_BARRI_DAMAGE_moo_00003d74, local
	.string "SFX_ENM_BARRI_DAMAGED1"
.endobj str_SFX_ENM_BARRI_DAMAGE_moo_00003d74

# .rodata:0x33 | 0xCFB | size: 0x1
.obj gap_03_00000CFB_rodata, global
.hidden gap_03_00000CFB_rodata
	.byte 0x00
.endobj gap_03_00000CFB_rodata

# .rodata:0x34 | 0xCFC | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_moo_00003d8c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_moo_00003d8c

# .rodata:0x49 | 0xD11 | size: 0x3
.obj gap_03_00000D11_rodata, global
.hidden gap_03_00000D11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D11_rodata

# .rodata:0x4C | 0xD14 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_moo_00003da4, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_moo_00003da4

# .rodata:0x60 | 0xD28 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_moo_00003db8, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_moo_00003db8

# .rodata:0x79 | 0xD41 | size: 0x3
.obj gap_03_00000D41_rodata, global
.hidden gap_03_00000D41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D41_rodata

# .rodata:0x7C | 0xD44 | size: 0xA
.obj str_c_baria_z_moo_00003dd4, local
	.string "c_baria_z"
.endobj str_c_baria_z_moo_00003dd4

# .rodata:0x86 | 0xD4E | size: 0x2
.obj gap_03_00000D4E_rodata, global
.hidden gap_03_00000D4E_rodata
	.2byte 0x0000
.endobj gap_03_00000D4E_rodata

# .rodata:0x88 | 0xD50 | size: 0x4
.obj str_N_2_moo_00003de0, local
	.string "N_2"
.endobj str_N_2_moo_00003de0

# .rodata:0x8C | 0xD54 | size: 0x4
.obj str_Y_2_moo_00003de4, local
	.string "Y_2"
.endobj str_Y_2_moo_00003de4

# .rodata:0x90 | 0xD58 | size: 0x4
.obj str_K_2_moo_00003de8, local
	.string "K_2"
.endobj str_K_2_moo_00003de8

# .rodata:0x94 | 0xD5C | size: 0x4
.obj str_X_2_moo_00003dec, local
	.string "X_2"
.endobj str_X_2_moo_00003dec

# .rodata:0x98 | 0xD60 | size: 0x4
.obj str_S_2_moo_00003df0, local
	.string "S_2"
.endobj str_S_2_moo_00003df0

# .rodata:0x9C | 0xD64 | size: 0x4
.obj str_Q_2_moo_00003df4, local
	.string "Q_2"
.endobj str_Q_2_moo_00003df4

# .rodata:0xA0 | 0xD68 | size: 0x4
.obj str_D_2_moo_00003df8, local
	.string "D_2"
.endobj str_D_2_moo_00003df8

# .rodata:0xA4 | 0xD6C | size: 0x4
.obj str_R_2_moo_00003dfc, local
	.string "R_2"
.endobj str_R_2_moo_00003dfc

# .rodata:0xA8 | 0xD70 | size: 0x4
.obj str_W_2_moo_00003e00, local
	.string "W_2"
.endobj str_W_2_moo_00003e00

# .rodata:0xAC | 0xD74 | size: 0x4
.obj str_S_4_moo_00003e04, local
	.string "S_4"
.endobj str_S_4_moo_00003e04

# .rodata:0xB0 | 0xD78 | size: 0x78
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

# .rodata:0x128 | 0xDF0 | size: 0x8
.obj double_to_int_moo_00003e80, local
	.double 4503601774854144
.endobj double_to_int_moo_00003e80

# 0x00006700..0x00006C40 | size: 0x540
.data
.balign 8

# .data:0x0 | 0x6700 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x6708 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x670C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x6710 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x6714 | size: 0x4
.obj gap_04_00006714_data, global
.hidden gap_04_00006714_data
	.4byte 0x00000000
.endobj gap_04_00006714_data

# .data:0x18 | 0x6718 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x6720 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x6724 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x6728 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x6730 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x6734 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x6738 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x673C | size: 0x4
.obj gap_04_0000673C_data, global
.hidden gap_04_0000673C_data
	.4byte 0x00000000
.endobj gap_04_0000673C_data

# .data:0x40 | 0x6740 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x6748 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x674C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x6750 | size: 0xC4
.obj unit_barriern_z_satellite_17_data_6750, global
	.4byte 0x00000074
	.4byte str_btl_un_barriern_sate_moo_00003d58
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
	.4byte str_SFX_ENM_BARRI_DAMAGE_moo_00003d74
	.4byte str_SFX_BTL_DAMAGE_FIRE1_moo_00003d8c
	.4byte str_SFX_BTL_DAMAGE_ICE1_moo_00003da4
	.4byte str_SFX_BTL_DAMAGE_BIRIB_moo_00003db8
	.4byte 0x00000004
	.4byte regist
	.4byte 0x06000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_barriern_z_satellite_17_data_6750

# .data:0x114 | 0x6814 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x6819 | size: 0x3
.obj gap_04_00006819_data, global
.hidden gap_04_00006819_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00006819_data

# .data:0x11C | 0x681C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x6821 | size: 0x3
.obj gap_04_00006821_data, global
.hidden gap_04_00006821_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00006821_data

# .data:0x124 | 0x6824 | size: 0x1C8
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_barriern_sate_moo_00003d58
	.4byte str_c_baria_z_moo_00003dd4
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
	.4byte str_btl_un_barriern_sate_moo_00003d58
	.4byte str_c_baria_z_moo_00003dd4
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
	.4byte str_btl_un_barriern_sate_moo_00003d58
	.4byte str_c_baria_z_moo_00003dd4
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
	.4byte str_btl_un_barriern_sate_moo_00003d58
	.4byte str_c_baria_z_moo_00003dd4
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
	.4byte str_btl_un_barriern_sate_moo_00003d58
	.4byte str_c_baria_z_moo_00003dd4
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
	.4byte str_btl_un_barriern_sate_moo_00003d58
	.4byte str_c_baria_z_moo_00003dd4
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

# .data:0x2EC | 0x69EC | size: 0x16
.obj regist, local
	.4byte 0x465A5F00
	.4byte 0x50646400
	.4byte 0x64556455
	.4byte 0x645A5000
	.4byte 0x5F645064
	.2byte 0x6464
.endobj regist

# .data:0x302 | 0x6A02 | size: 0x2
.obj gap_04_00006A02_data, global
.hidden gap_04_00006A02_data
	.2byte 0x0000
.endobj gap_04_00006A02_data

# .data:0x304 | 0x6A04 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_2_moo_00003de0
	.4byte 0x00000002
	.4byte str_Y_2_moo_00003de4
	.4byte 0x00000009
	.4byte str_Y_2_moo_00003de4
	.4byte 0x00000005
	.4byte str_K_2_moo_00003de8
	.4byte 0x00000004
	.4byte str_X_2_moo_00003dec
	.4byte 0x00000003
	.4byte str_X_2_moo_00003dec
	.4byte 0x0000001C
	.4byte str_S_2_moo_00003df0
	.4byte 0x0000001D
	.4byte str_Q_2_moo_00003df4
	.4byte 0x0000001E
	.4byte str_Q_2_moo_00003df4
	.4byte 0x0000001F
	.4byte str_S_2_moo_00003df0
	.4byte 0x00000027
	.4byte str_D_2_moo_00003df8
	.4byte 0x0000002A
	.4byte str_R_2_moo_00003dfc
	.4byte 0x00000029
	.4byte str_R_2_moo_00003dfc
	.4byte 0x00000028
	.4byte str_W_2_moo_00003e00
	.4byte 0x00000038
	.4byte str_X_2_moo_00003dec
	.4byte 0x00000039
	.4byte str_X_2_moo_00003dec
	.4byte 0x00000045
	.4byte str_S_2_moo_00003df0
.endobj pose_table

# .data:0x38C | 0x6A8C | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x394 | 0x6A94 | size: 0x74
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

# .data:0x408 | 0x6B08 | size: 0x28
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

# .data:0x430 | 0x6B30 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x438 | 0x6B38 | size: 0x14
.obj unison_phase_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unison_phase_event

# .data:0x44C | 0x6B4C | size: 0x14
.obj attack_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x460 | 0x6B60 | size: 0xE0
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
	.4byte str_S_4_moo_00003e04
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
