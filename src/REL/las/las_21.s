.include "macros.inc"
.file "las_21.o"

# 0x00005C5C..0x00005D18 | size: 0xBC
.text
.balign 4

# .text:0x0 | 0x5C5C | size: 0x64
.fn set_mobj_y_position, local
/* 00005C5C 00005D28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005C60 00005D2C  7C 08 02 A6 */	mflr r0
/* 00005C64 00005D30  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005C68 00005D34  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 00005C6C 00005D38  BF C1 00 10 */	stmw r30, 0x10(r1)
/* 00005C70 00005D3C  7C 7E 1B 78 */	mr r30, r3
/* 00005C74 00005D40  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005C78 00005D44  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005C7C 00005D48  4B FF A4 C1 */	bl evtGetValue
/* 00005C80 00005D4C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005C84 00005D50  7C 7F 1B 78 */	mr r31, r3
/* 00005C88 00005D54  7F C3 F3 78 */	mr r3, r30
/* 00005C8C 00005D58  4B FF A4 B1 */	bl evtGetFloat
/* 00005C90 00005D5C  FF E0 08 90 */	fmr f31, f1
/* 00005C94 00005D60  7F E3 FB 78 */	mr r3, r31
/* 00005C98 00005D64  4B FF A4 A5 */	bl mobjNameToPtr
/* 00005C9C 00005D68  D3 E3 00 3C */	stfs f31, 0x3c(r3)
/* 00005CA0 00005D6C  4B FF A4 9D */	bl mobjCalcMtx
/* 00005CA4 00005D70  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 00005CA8 00005D74  38 60 00 02 */	li r3, 0x2
/* 00005CAC 00005D78  BB C1 00 10 */	lmw r30, 0x10(r1)
/* 00005CB0 00005D7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005CB4 00005D80  7C 08 03 A6 */	mtlr r0
/* 00005CB8 00005D84  38 21 00 20 */	addi r1, r1, 0x20
/* 00005CBC 00005D88  4E 80 00 20 */	blr
.endfn set_mobj_y_position

# .text:0x64 | 0x5CC0 | size: 0x58
.fn set_party_y_pos, local
/* 00005CC0 00005D8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005CC4 00005D90  7C 08 02 A6 */	mflr r0
/* 00005CC8 00005D94  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005CCC 00005D98  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00005CD0 00005D9C  7C 7D 1B 78 */	mr r29, r3
/* 00005CD4 00005DA0  38 60 00 00 */	li r3, 0x0
/* 00005CD8 00005DA4  83 DD 00 18 */	lwz r30, 0x18(r29)
/* 00005CDC 00005DA8  4B FF A4 61 */	bl partyGetPtr
/* 00005CE0 00005DAC  7C 7F 1B 79 */	mr. r31, r3
/* 00005CE4 00005DB0  40 82 00 0C */	bne .L_00005CF0
/* 00005CE8 00005DB4  38 60 00 02 */	li r3, 0x2
/* 00005CEC 00005DB8  48 00 00 18 */	b .L_00005D04
.L_00005CF0:
/* 00005CF0 00005DBC  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00005CF4 00005DC0  7F A3 EB 78 */	mr r3, r29
/* 00005CF8 00005DC4  4B FF A4 45 */	bl evtGetFloat
/* 00005CFC 00005DC8  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 00005D00 00005DCC  38 60 00 02 */	li r3, 0x2
.L_00005D04:
/* 00005D04 00005DD0  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00005D08 00005DD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005D0C 00005DD8  7C 08 03 A6 */	mtlr r0
/* 00005D10 00005DDC  38 21 00 20 */	addi r1, r1, 0x20
/* 00005D14 00005DE0  4E 80 00 20 */	blr
.endfn set_party_y_pos

# 0x000027E0..0x00002A28 | size: 0x248
.rodata
.balign 8

# .rodata:0x0 | 0x27E0 | size: 0xB
.obj str_S_doa_l_01_las_00014248, local
	.string "S_doa_l_01"
.endobj str_S_doa_l_01_las_00014248

# .rodata:0xB | 0x27EB | size: 0x1
.obj gap_03_000027EB_rodata, global
.hidden gap_03_000027EB_rodata
	.byte 0x00
.endobj gap_03_000027EB_rodata

# .rodata:0xC | 0x27EC | size: 0xB
.obj str_S_doa_l_02_las_00014254, local
	.string "S_doa_l_02"
.endobj str_S_doa_l_02_las_00014254

# .rodata:0x17 | 0x27F7 | size: 0x1
.obj gap_03_000027F7_rodata, global
.hidden gap_03_000027F7_rodata
	.byte 0x00
.endobj gap_03_000027F7_rodata

# .rodata:0x18 | 0x27F8 | size: 0xB
.obj str_S_doa_r_01_las_00014260, local
	.string "S_doa_r_01"
.endobj str_S_doa_r_01_las_00014260

# .rodata:0x23 | 0x2803 | size: 0x1
.obj gap_03_00002803_rodata, global
.hidden gap_03_00002803_rodata
	.byte 0x00
.endobj gap_03_00002803_rodata

# .rodata:0x24 | 0x2804 | size: 0xB
.obj str_S_doa_r_02_las_0001426c, local
	.string "S_doa_r_02"
.endobj str_S_doa_r_02_las_0001426c

# .rodata:0x2F | 0x280F | size: 0x1
.obj gap_03_0000280F_rodata, global
.hidden gap_03_0000280F_rodata
	.byte 0x00
.endobj gap_03_0000280F_rodata

# .rodata:0x30 | 0x2810 | size: 0xC
.obj str_S_doa_r2_01_las_00014278, local
	.string "S_doa_r2_01"
.endobj str_S_doa_r2_01_las_00014278

# .rodata:0x3C | 0x281C | size: 0xC
.obj str_S_doa_r2_02_las_00014284, local
	.string "S_doa_r2_02"
.endobj str_S_doa_r2_02_las_00014284

# .rodata:0x48 | 0x2828 | size: 0x7
.obj str_w_bero_las_00014290, local
	.string "w_bero"
.endobj str_w_bero_las_00014290

# .rodata:0x4F | 0x282F | size: 0x1
.obj gap_03_0000282F_rodata, global
.hidden gap_03_0000282F_rodata
	.byte 0x00
.endobj gap_03_0000282F_rodata

# .rodata:0x50 | 0x2830 | size: 0x7
.obj str_las_19_las_00014298, local
	.string "las_19"
.endobj str_las_19_las_00014298

# .rodata:0x57 | 0x2837 | size: 0x1
.obj gap_03_00002837_rodata, global
.hidden gap_03_00002837_rodata
	.byte 0x00
.endobj gap_03_00002837_rodata

# .rodata:0x58 | 0x2838 | size: 0x9
.obj str_e_bero_1_las_000142a0, local
	.string "e_bero_1"
.endobj str_e_bero_1_las_000142a0

# .rodata:0x61 | 0x2841 | size: 0x3
.obj gap_03_00002841_rodata, global
.hidden gap_03_00002841_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002841_rodata

# .rodata:0x64 | 0x2844 | size: 0x7
.obj str_las_23_las_000142ac, local
	.string "las_23"
.endobj str_las_23_las_000142ac

# .rodata:0x6B | 0x284B | size: 0x1
.obj gap_03_0000284B_rodata, global
.hidden gap_03_0000284B_rodata
	.byte 0x00
.endobj gap_03_0000284B_rodata

# .rodata:0x6C | 0x284C | size: 0x9
.obj str_e_bero_2_las_000142b4, local
	.string "e_bero_2"
.endobj str_e_bero_2_las_000142b4

# .rodata:0x75 | 0x2855 | size: 0x3
.obj gap_03_00002855_rodata, global
.hidden gap_03_00002855_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002855_rodata

# .rodata:0x78 | 0x2858 | size: 0x7
.obj str_n_bero_las_000142c0, local
	.string "n_bero"
.endobj str_n_bero_las_000142c0

# .rodata:0x7F | 0x285F | size: 0x1
.obj gap_03_0000285F_rodata, global
.hidden gap_03_0000285F_rodata
	.byte 0x00
.endobj gap_03_0000285F_rodata

# .rodata:0x80 | 0x2860 | size: 0x7
.obj str_las_20_las_000142c8, local
	.string "las_20"
.endobj str_las_20_las_000142c8

# .rodata:0x87 | 0x2867 | size: 0x1
.obj gap_03_00002867_rodata, global
.hidden gap_03_00002867_rodata
	.byte 0x00
.endobj gap_03_00002867_rodata

# .rodata:0x88 | 0x2868 | size: 0x9
.obj str_s_bero_2_las_000142d0, local
	.string "s_bero_2"
.endobj str_s_bero_2_las_000142d0

# .rodata:0x91 | 0x2871 | size: 0x3
.obj gap_03_00002871_rodata, global
.hidden gap_03_00002871_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002871_rodata

# .rodata:0x94 | 0x2874 | size: 0x1B
.obj str_MOBJ_green_big02_Flo_las_000142dc, local
	.string "MOBJ_green_big02_FlowBlock"
.endobj str_MOBJ_green_big02_Flo_las_000142dc

# .rodata:0xAF | 0x288F | size: 0x1
.obj gap_03_0000288F_rodata, global
.hidden gap_03_0000288F_rodata
	.byte 0x00
.endobj gap_03_0000288F_rodata

# .rodata:0xB0 | 0x2890 | size: 0x1C
.obj str_MOBJ_purple_big02_Fl_las_000142f8, local
	.string "MOBJ_purple_big02_FlowBlock"
.endobj str_MOBJ_purple_big02_Fl_las_000142f8

# .rodata:0xCC | 0x28AC | size: 0x1C
.obj str_MOBJ_orange_big02_Fl_las_00014314, local
	.string "MOBJ_orange_big02_FlowBlock"
.endobj str_MOBJ_orange_big02_Fl_las_00014314

# .rodata:0xE8 | 0x28C8 | size: 0x1D
.obj str_SFX_MOBJ_BLOCK_B_FLO_las_00014330, local
	.string "SFX_MOBJ_BLOCK_B_FLOAT_STOP1"
.endobj str_SFX_MOBJ_BLOCK_B_FLO_las_00014330

# .rodata:0x105 | 0x28E5 | size: 0x3
.obj gap_03_000028E5_rodata, global
.hidden gap_03_000028E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000028E5_rodata

# .rodata:0x108 | 0x28E8 | size: 0x1D
.obj str_SFX_MOBJ_BLOCK_B_FLO_las_00014350, local
	.string "SFX_MOBJ_BLOCK_B_FLOAT_MOVE1"
.endobj str_SFX_MOBJ_BLOCK_B_FLO_las_00014350

# .rodata:0x125 | 0x2905 | size: 0x3
.obj gap_03_00002905_rodata, global
.hidden gap_03_00002905_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002905_rodata

# .rodata:0x128 | 0x2908 | size: 0x1D
.obj str_SFX_MOBJ_BLOCK_S_FLO_las_00014370, local
	.string "SFX_MOBJ_BLOCK_S_FLOAT_MOVE1"
.endobj str_SFX_MOBJ_BLOCK_S_FLO_las_00014370

# .rodata:0x145 | 0x2925 | size: 0x3
.obj gap_03_00002925_rodata, global
.hidden gap_03_00002925_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002925_rodata

# .rodata:0x148 | 0x2928 | size: 0x1D
.obj str_SFX_MOBJ_BLOCK_B_FLO_las_00014390, local
	.string "SFX_MOBJ_BLOCK_B_FLOAT_DOWN1"
.endobj str_SFX_MOBJ_BLOCK_B_FLO_las_00014390

# .rodata:0x165 | 0x2945 | size: 0x3
.obj gap_03_00002945_rodata, global
.hidden gap_03_00002945_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002945_rodata

# .rodata:0x168 | 0x2948 | size: 0x1D
.obj str_SFX_MOBJ_BLOCK_S_FLO_las_000143b0, local
	.string "SFX_MOBJ_BLOCK_S_FLOAT_DOWN1"
.endobj str_SFX_MOBJ_BLOCK_S_FLO_las_000143b0

# .rodata:0x185 | 0x2965 | size: 0x3
.obj gap_03_00002965_rodata, global
.hidden gap_03_00002965_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002965_rodata

# .rodata:0x188 | 0x2968 | size: 0x7
.obj str_21blk1_las_000143d0, local
	.string "21blk1"
.endobj str_21blk1_las_000143d0

# .rodata:0x18F | 0x296F | size: 0x1
.obj gap_03_0000296F_rodata, global
.hidden gap_03_0000296F_rodata
	.byte 0x00
.endobj gap_03_0000296F_rodata

# .rodata:0x190 | 0x2970 | size: 0xC
.obj str_MOBJ_21blk1_las_000143d8, local
	.string "MOBJ_21blk1"
.endobj str_MOBJ_21blk1_las_000143d8

# .rodata:0x19C | 0x297C | size: 0xA
.obj str_21switch1_las_000143e4, local
	.string "21switch1"
.endobj str_21switch1_las_000143e4

# .rodata:0x1A6 | 0x2986 | size: 0x2
.obj gap_03_00002986_rodata, global
.hidden gap_03_00002986_rodata
	.2byte 0x0000
.endobj gap_03_00002986_rodata

# .rodata:0x1A8 | 0x2988 | size: 0x7
.obj str_21blk2_las_000143f0, local
	.string "21blk2"
.endobj str_21blk2_las_000143f0

# .rodata:0x1AF | 0x298F | size: 0x1
.obj gap_03_0000298F_rodata, global
.hidden gap_03_0000298F_rodata
	.byte 0x00
.endobj gap_03_0000298F_rodata

# .rodata:0x1B0 | 0x2990 | size: 0xC
.obj str_MOBJ_21blk2_las_000143f8, local
	.string "MOBJ_21blk2"
.endobj str_MOBJ_21blk2_las_000143f8

# .rodata:0x1BC | 0x299C | size: 0xA
.obj str_21switch2_las_00014404, local
	.string "21switch2"
.endobj str_21switch2_las_00014404

# .rodata:0x1C6 | 0x29A6 | size: 0x2
.obj gap_03_000029A6_rodata, global
.hidden gap_03_000029A6_rodata
	.2byte 0x0000
.endobj gap_03_000029A6_rodata

# .rodata:0x1C8 | 0x29A8 | size: 0xE
.obj str_BGM_STG8_LST1_las_00014410, local
	.string "BGM_STG8_LST1"
.endobj str_BGM_STG8_LST1_las_00014410

# .rodata:0x1D6 | 0x29B6 | size: 0x2
.obj gap_03_000029B6_rodata, global
.hidden gap_03_000029B6_rodata
	.2byte 0x0000
.endobj gap_03_000029B6_rodata

# .rodata:0x1D8 | 0x29B8 | size: 0xE
.obj str_BGM_STG8_LST3_las_00014420, local
	.string "BGM_STG8_LST3"
.endobj str_BGM_STG8_LST3_las_00014420

# .rodata:0x1E6 | 0x29C6 | size: 0x2
.obj gap_03_000029C6_rodata, global
.hidden gap_03_000029C6_rodata
	.2byte 0x0000
.endobj gap_03_000029C6_rodata

# .rodata:0x1E8 | 0x29C8 | size: 0xE
.obj str_ENV_STG8_LAS1_las_00014430, local
	.string "ENV_STG8_LAS1"
.endobj str_ENV_STG8_LAS1_las_00014430

# .rodata:0x1F6 | 0x29D6 | size: 0x2
.obj gap_03_000029D6_rodata, global
.hidden gap_03_000029D6_rodata
	.2byte 0x0000
.endobj gap_03_000029D6_rodata

# .rodata:0x1F8 | 0x29D8 | size: 0x8
.obj str_S_under_las_00014440, local
	.string "S_under"
.endobj str_S_under_las_00014440

# .rodata:0x200 | 0x29E0 | size: 0x8
.obj str_A_under_las_00014448, local
	.string "A_under"
.endobj str_A_under_las_00014448

# .rodata:0x208 | 0x29E8 | size: 0xB
.obj str_ワンワン２_las_00014450, local
	.4byte 0x838F8393
	.4byte 0x838F8393
	.byte 0x82, 0x51, 0x00
.endobj str_ワンワン２_las_00014450

# .rodata:0x213 | 0x29F3 | size: 0x1
.obj gap_03_000029F3_rodata, global
.hidden gap_03_000029F3_rodata
	.byte 0x00
.endobj gap_03_000029F3_rodata

# .rodata:0x214 | 0x29F4 | size: 0x7
.obj str_S_yuka_las_0001445c, local
	.string "S_yuka"
.endobj str_S_yuka_las_0001445c

# .rodata:0x21B | 0x29FB | size: 0x1
.obj gap_03_000029FB_rodata, global
.hidden gap_03_000029FB_rodata
	.byte 0x00
.endobj gap_03_000029FB_rodata

# .rodata:0x21C | 0x29FC | size: 0x5
.obj str_A_be_las_00014464, local
	.string "A_be"
.endobj str_A_be_las_00014464

# .rodata:0x221 | 0x2A01 | size: 0x3
.obj gap_03_00002A01_rodata, global
.hidden gap_03_00002A01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002A01_rodata

# .rodata:0x224 | 0x2A04 | size: 0xB
.obj str_ワンワン１_las_0001446c, local
	.4byte 0x838F8393
	.4byte 0x838F8393
	.byte 0x82, 0x50, 0x00
.endobj str_ワンワン１_las_0001446c

# .rodata:0x22F | 0x2A0F | size: 0x1
.obj gap_03_00002A0F_rodata, global
.hidden gap_03_00002A0F_rodata
	.byte 0x00
.endobj gap_03_00002A0F_rodata

# .rodata:0x230 | 0x2A10 | size: 0x7
.obj str_19blk1_las_00014478, local
	.string "19blk1"
.endobj str_19blk1_las_00014478

# .rodata:0x237 | 0x2A17 | size: 0x1
.obj gap_03_00002A17_rodata, global
.hidden gap_03_00002A17_rodata
	.byte 0x00
.endobj gap_03_00002A17_rodata

# .rodata:0x238 | 0x2A18 | size: 0x7
.obj str_19blk2_las_00014480, local
	.string "19blk2"
.endobj str_19blk2_las_00014480

# .rodata:0x23F | 0x2A1F | size: 0x1
.obj gap_03_00002A1F_rodata, global
.hidden gap_03_00002A1F_rodata
	.byte 0x00
.endobj gap_03_00002A1F_rodata

# .rodata:0x240 | 0x2A20 | size: 0x5
.obj str_jump_las_00014488, local
	.string "jump"
.endobj str_jump_las_00014488

# .rodata:0x245 | 0x2A25 | size: 0x3
.obj gap_03_00002A25_rodata, global
.hidden gap_03_00002A25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002A25_rodata

# 0x0000E940..0x0000F8B0 | size: 0xF70
.data
.balign 8

# .data:0x0 | 0xE940 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xE948 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xE94C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xE950 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xE954 | size: 0x4
.obj gap_04_0000E954_data, global
.hidden gap_04_0000E954_data
	.4byte 0x00000000
.endobj gap_04_0000E954_data

# .data:0x18 | 0xE958 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xE960 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xE964 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xE968 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xE970 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xE974 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xE978 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xE97C | size: 0x4
.obj gap_04_0000E97C_data, global
.hidden gap_04_0000E97C_data
	.4byte 0x00000000
.endobj gap_04_0000E97C_data

# .data:0x40 | 0xE980 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xE988 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xE98C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xE990 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_01_las_00014248
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_02_las_00014254
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0xE9E8 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_01_las_00014248
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_02_las_00014254
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0xEA40 | size: 0x58
.obj e1_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_01_las_00014260
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_02_las_0001426c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e1_door_close

# .data:0x158 | 0xEA98 | size: 0x58
.obj e1_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_01_las_00014260
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_02_las_0001426c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e1_door_open

# .data:0x1B0 | 0xEAF0 | size: 0x58
.obj e2_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r2_01_las_00014278
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r2_02_las_00014284
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e2_door_close

# .data:0x208 | 0xEB48 | size: 0x58
.obj e2_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r2_01_las_00014278
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r2_02_las_00014284
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e2_door_open

# .data:0x260 | 0xEBA0 | size: 0x12C
.obj bero_entry_data, local
	.4byte str_w_bero_las_00014290
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_19_las_00014298
	.4byte str_e_bero_1_las_000142a0
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_e_bero_1_las_000142a0
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_23_las_000142ac
	.4byte str_w_bero_las_00014290
	.4byte 0x00050005
	.4byte e1_door_close
	.4byte e1_door_open
	.4byte str_e_bero_2_las_000142b4
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_23_las_000142ac
	.4byte str_w_bero_las_00014290
	.4byte 0x00050005
	.4byte e2_door_close
	.4byte e2_door_open
	.4byte str_n_bero_las_000142c0
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_20_las_000142c8
	.4byte str_s_bero_2_las_000142d0
	.4byte 0x00010001
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
.endobj bero_entry_data

# .data:0x38C | 0xECCC | size: 0x3C
.obj w_bero_mapchg, local
	.4byte str_w_bero_las_00014290
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_19_las_00014298
	.4byte str_e_bero_2_las_000142b4
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
.endobj w_bero_mapchg

# .data:0x3C8 | 0xED08 | size: 0xBC
.obj floatblk_stop_se, local
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_mobj_get_kindname
	.4byte 0xFE363C8F
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002000C
	.4byte 0xFE363C83
	.4byte str_MOBJ_green_big02_Flo_las_000142dc
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C83
	.4byte str_MOBJ_purple_big02_Fl_las_000142f8
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C83
	.4byte str_MOBJ_orange_big02_Fl_las_00014314
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MOBJ_BLOCK_B_FLO_las_00014330
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj floatblk_stop_se

# .data:0x484 | 0xEDC4 | size: 0x6C
.obj floatblk_shake, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000B
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj floatblk_shake

# .data:0x4F0 | 0xEE30 | size: 0x540
.obj floatblk_evt, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFE363C84
	.4byte 0x0002001A
	.4byte 0xFE363C8C
	.4byte 0xFE363C8B
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7AE6
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xF24A7AB3
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A1A
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xF24A7A4D
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte floatblk_shake
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_mobj_get_kindname
	.4byte 0xFE363C8F
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002000C
	.4byte 0xFE363C83
	.4byte str_MOBJ_green_big02_Flo_las_000142dc
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C83
	.4byte str_MOBJ_purple_big02_Fl_las_000142f8
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C83
	.4byte str_MOBJ_orange_big02_Fl_las_00014314
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MOBJ_BLOCK_B_FLO_las_00014350
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C88
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MOBJ_BLOCK_S_FLO_las_00014370
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C88
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MOBJ_BLOCK_B_FLO_las_00014390
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MOBJ_BLOCK_S_FLO_las_000143b0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_mobj_get_y_position
	.4byte 0xFE363C8F
	.4byte 0xFE363C87
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_head
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_get_name_hitobj_head
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte 0xFE363C8D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8C
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFE363C8B
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A1A
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xF24A7A4D
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7AE6
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xF24A7AE6
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_mobj_get_y_position
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte set_mobj_y_position
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFE363C8B
	.4byte 0x0003005B
	.4byte evt_mobj_set_y_position
	.4byte 0xFE363C8F
	.4byte 0xFE363C8B
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFE363C8B
	.4byte 0x0003005B
	.4byte evt_mobj_set_y_position
	.4byte 0xFE363C8F
	.4byte 0xFE363C8B
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020019
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_ride
	.4byte 0xFE363C81
	.4byte 0x0002000C
	.4byte 0xFE363C81
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte evt_mario_set_hosei_xyz
	.4byte 0xF24A7A80
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_get_name_hitobj_ride
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte evt_party_set_hosei_xyz
	.4byte 0x00000000
	.4byte 0xF24A7A80
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xFE363C89
	.4byte 0x0002001C
	.4byte 0xFE363C8A
	.4byte 0xF24A7280
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7280
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0xF24A8280
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A8280
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C88
	.4byte 0x0001005C
	.4byte floatblk_stop_se
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte floatblk_shake
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj floatblk_evt

# .data:0xA30 | 0xF370 | size: 0xF8
.obj floatblk21_1_evt, local
	.4byte 0x00010063
	.4byte 0x000000EF
	.4byte 0x00020018
	.4byte 0xF9718888
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_21blk1_las_000143d0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_MOBJ_21blk1_las_000143d8
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_21switch1_las_000143e4
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFF7E
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFFFFFDBC
	.4byte 0x00020032
	.4byte 0xF9718888
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_21blk1_las_000143d0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_MOBJ_21blk1_las_000143d8
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_21switch1_las_000143e4
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFDBC
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFFFFFF7E
	.4byte 0x00020032
	.4byte 0xF9718888
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte floatblk_evt
	.4byte 0x0003005B
	.4byte evt_mobj_get_y_position
	.4byte str_21blk1_las_000143d0
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFFFFFF7E
	.4byte 0x00020032
	.4byte 0xF9718888
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF9718888
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj floatblk21_1_evt

# .data:0xB28 | 0xF468 | size: 0xF8
.obj floatblk21_2_evt, local
	.4byte 0x00010063
	.4byte 0x000000EF
	.4byte 0x00020018
	.4byte 0xF9718889
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_21blk2_las_000143f0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_MOBJ_21blk2_las_000143f8
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_21switch2_las_00014404
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFF7E
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFFFFFDBC
	.4byte 0x00020032
	.4byte 0xF9718889
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_21blk2_las_000143f0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_MOBJ_21blk2_las_000143f8
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_21switch2_las_00014404
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFDBC
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFFFFFF7E
	.4byte 0x00020032
	.4byte 0xF9718889
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte floatblk_evt
	.4byte 0x0003005B
	.4byte evt_mobj_get_y_position
	.4byte str_21blk2_las_000143f0
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFFFFFF7E
	.4byte 0x00020032
	.4byte 0xF9718889
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF9718889
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj floatblk21_2_evt

# .data:0xC20 | 0xF560 | size: 0x34C
.obj las_21_init_evt_16_data_F560, global
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000186
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG8_LST1_las_00014410
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG8_LST3_las_00014420
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS1_las_00014430
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000186
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_under_las_00014440
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_under_las_00014448
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_ワンワン２_las_00014450
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_yuka_las_0001445c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_be_las_00014464
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_las_00014290
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_w_bero_las_00014290
	.4byte w_bero_mapchg
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_las_00014290
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_ワンワン１_las_0001446c
	.4byte 0x0001005C
	.4byte hikari_evt_16_data_52C
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000186
	.4byte 0x00020018
	.4byte 0xF8406C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFF24
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFDBC
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFF88
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFDBC
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFDBC
	.4byte 0x00020032
	.4byte 0xF9718888
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFDBC
	.4byte 0x00020032
	.4byte 0xF9718889
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_mobj_float_blk
	.4byte str_19blk1_las_00014478
	.4byte 0xFFFFFEA2
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_float_blk
	.4byte str_19blk2_las_00014480
	.4byte 0xFFFFFF06
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_float_blk
	.4byte str_21blk1_las_000143d0
	.4byte 0x00000032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_float_blk
	.4byte str_21blk2_las_000143f0
	.4byte 0x00000096
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000001
	.4byte str_19blk1_las_00014478
	.4byte 0x00000080
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000001
	.4byte str_19blk2_las_00014480
	.4byte 0x00000080
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000001
	.4byte str_21blk1_las_000143d0
	.4byte 0x00000080
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000001
	.4byte str_21blk2_las_000143f0
	.4byte 0x00000080
	.4byte 0x0009005B
	.4byte evt_mobj_switch_float_blk
	.4byte str_21switch1_las_000143e4
	.4byte 0x000000AF
	.4byte 0xFFFFFE20
	.4byte 0xFFFFFFBD
	.4byte str_21blk1_las_000143d0
	.4byte 0x00000001
	.4byte floatblk21_1_evt
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_switch_float_blk
	.4byte str_21switch2_las_00014404
	.4byte 0x0000012C
	.4byte 0xFFFFFFE2
	.4byte 0x0000000F
	.4byte str_21blk2_las_000143f0
	.4byte 0x00000003
	.4byte floatblk21_2_evt
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_mobj_jumpstand_blue
	.4byte 0x00000000
	.4byte str_jump_las_00014488
	.4byte 0x000002BC
	.4byte 0xFFFFFD76
	.4byte 0xFFFFFDBC
	.4byte 0x0000004B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_jump_las_00014488
	.4byte 0x00000040
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_21_init_evt_16_data_F560

# .data:0xF6C | 0xF8AC | size: 0x4
.obj gap_04_0000F8AC_data, global
.hidden gap_04_0000F8AC_data
	.4byte 0x00000000
.endobj gap_04_0000F8AC_data
