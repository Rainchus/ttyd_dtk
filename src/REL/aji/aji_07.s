.include "macros.inc"
.file "aji_07.o"

# 0x00002304..0x000023E4 | size: 0xE0
.text
.balign 4

# .text:0x0 | 0x2304 | size: 0xE0
.fn scale_func, local
/* 00002304 000023C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00002308 000023CC  7C 08 02 A6 */	mflr r0
/* 0000230C 000023D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 00002310 000023D4  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 00002314 000023D8  93 E1 00 24 */	stw r31, 0x24(r1)
/* 00002318 000023DC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000231C 000023E0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00002320 000023E4  48 00 3F 1D */	bl evtGetFloat
/* 00002324 000023E8  FF E0 08 90 */	fmr f31, f1
/* 00002328 000023EC  48 00 3F 15 */	bl marioGetPtr
/* 0000232C 000023F0  7C 7F 1B 78 */	mr r31, r3
/* 00002330 000023F4  38 60 00 00 */	li r3, 0x0
/* 00002334 000023F8  48 00 3F 09 */	bl partyGetPtr
/* 00002338 000023FC  3C 80 00 00 */	lis r4, vec3_aji_00012c5c@ha
/* 0000233C 00002400  28 03 00 00 */	cmplwi r3, 0x0
/* 00002340 00002404  38 A4 00 00 */	addi r5, r4, vec3_aji_00012c5c@l
/* 00002344 00002408  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00002348 0000240C  80 85 00 04 */	lwz r4, 0x4(r5)
/* 0000234C 00002410  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002350 00002414  80 05 00 08 */	lwz r0, 0x8(r5)
/* 00002354 00002418  90 81 00 18 */	stw r4, 0x18(r1)
/* 00002358 0000241C  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 0000235C 00002420  90 01 00 1C */	stw r0, 0x1c(r1)
/* 00002360 00002424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002364 00002428  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 00002368 0000242C  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 0000236C 00002430  80 81 00 18 */	lwz r4, 0x18(r1)
/* 00002370 00002434  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 00002374 00002438  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 00002378 0000243C  90 9F 00 CC */	stw r4, 0xcc(r31)
/* 0000237C 00002440  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 00002380 00002444  41 82 00 48 */	beq .L_000023C8
/* 00002384 00002448  3C 80 00 00 */	lis r4, vec3_aji_00012c68@ha
/* 00002388 0000244C  38 A4 00 00 */	addi r5, r4, vec3_aji_00012c68@l
/* 0000238C 00002450  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00002390 00002454  80 85 00 04 */	lwz r4, 0x4(r5)
/* 00002394 00002458  90 01 00 08 */	stw r0, 0x8(r1)
/* 00002398 0000245C  80 05 00 08 */	lwz r0, 0x8(r5)
/* 0000239C 00002460  90 81 00 0C */	stw r4, 0xc(r1)
/* 000023A0 00002464  D3 E1 00 08 */	stfs f31, 0x8(r1)
/* 000023A4 00002468  90 01 00 10 */	stw r0, 0x10(r1)
/* 000023A8 0000246C  80 01 00 08 */	lwz r0, 0x8(r1)
/* 000023AC 00002470  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 000023B0 00002474  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 000023B4 00002478  80 81 00 0C */	lwz r4, 0xc(r1)
/* 000023B8 0000247C  90 03 00 70 */	stw r0, 0x70(r3)
/* 000023BC 00002480  80 01 00 10 */	lwz r0, 0x10(r1)
/* 000023C0 00002484  90 83 00 74 */	stw r4, 0x74(r3)
/* 000023C4 00002488  90 03 00 78 */	stw r0, 0x78(r3)
.L_000023C8:
/* 000023C8 0000248C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000023CC 00002490  38 60 00 02 */	li r3, 0x2
/* 000023D0 00002494  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 000023D4 00002498  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 000023D8 0000249C  7C 08 03 A6 */	mtlr r0
/* 000023DC 000024A0  38 21 00 30 */	addi r1, r1, 0x30
/* 000023E0 000024A4  4E 80 00 20 */	blr
.endfn scale_func

# 0x00001DC0..0x00001F20 | size: 0x160
.rodata
.balign 8

# .rodata:0x0 | 0x1DC0 | size: 0xA
.obj str_S_door1_2_aji_00012c28, local
	.string "S_door1_2"
.endobj str_S_door1_2_aji_00012c28

# .rodata:0xA | 0x1DCA | size: 0x2
.obj gap_03_00001DCA_rodata, global
.hidden gap_03_00001DCA_rodata
	.2byte 0x0000
.endobj gap_03_00001DCA_rodata

# .rodata:0xC | 0x1DCC | size: 0xA
.obj str_S_door1_1_aji_00012c34, local
	.string "S_door1_1"
.endobj str_S_door1_1_aji_00012c34

# .rodata:0x16 | 0x1DD6 | size: 0x2
.obj gap_03_00001DD6_rodata, global
.hidden gap_03_00001DD6_rodata
	.2byte 0x0000
.endobj gap_03_00001DD6_rodata

# .rodata:0x18 | 0x1DD8 | size: 0x7
.obj str_s_bero_aji_00012c40, local
	.string "s_bero"
.endobj str_s_bero_aji_00012c40

# .rodata:0x1F | 0x1DDF | size: 0x1
.obj gap_03_00001DDF_rodata, global
.hidden gap_03_00001DDF_rodata
	.byte 0x00
.endobj gap_03_00001DDF_rodata

# .rodata:0x20 | 0x1DE0 | size: 0x7
.obj str_aji_01_aji_00012c48, local
	.string "aji_01"
.endobj str_aji_01_aji_00012c48

# .rodata:0x27 | 0x1DE7 | size: 0x1
.obj gap_03_00001DE7_rodata, global
.hidden gap_03_00001DE7_rodata
	.byte 0x00
.endobj gap_03_00001DE7_rodata

# .rodata:0x28 | 0x1DE8 | size: 0x9
.obj str_n_bero_2_aji_00012c50, local
	.string "n_bero_2"
.endobj str_n_bero_2_aji_00012c50

# .rodata:0x31 | 0x1DF1 | size: 0x3
.obj gap_03_00001DF1_rodata, global
.hidden gap_03_00001DF1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001DF1_rodata

# .rodata:0x34 | 0x1DF4 | size: 0xC
.obj vec3_aji_00012c5c, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_aji_00012c5c

# .rodata:0x40 | 0x1E00 | size: 0xC
.obj vec3_aji_00012c68, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_aji_00012c68

# .rodata:0x4C | 0x1E0C | size: 0x9
.obj str_A_tensou_aji_00012c74, local
	.string "A_tensou"
.endobj str_A_tensou_aji_00012c74

# .rodata:0x55 | 0x1E15 | size: 0x3
.obj gap_03_00001E15_rodata, global
.hidden gap_03_00001E15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E15_rodata

# .rodata:0x58 | 0x1E18 | size: 0x15
.obj str_SFX_STG7_WARP_LIGHT1_aji_00012c80, local
	.string "SFX_STG7_WARP_LIGHT1"
.endobj str_SFX_STG7_WARP_LIGHT1_aji_00012c80

# .rodata:0x6D | 0x1E2D | size: 0x3
.obj gap_03_00001E2D_rodata, global
.hidden gap_03_00001E2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E2D_rodata

# .rodata:0x70 | 0x1E30 | size: 0xF
.obj str_SFX_STG7_WARP1_aji_00012c98, local
	.string "SFX_STG7_WARP1"
.endobj str_SFX_STG7_WARP1_aji_00012c98

# .rodata:0x7F | 0x1E3F | size: 0x1
.obj gap_03_00001E3F_rodata, global
.hidden gap_03_00001E3F_rodata
	.byte 0x00
.endobj gap_03_00001E3F_rodata

# .rodata:0x80 | 0x1E40 | size: 0xF
.obj str_SFX_STG7_WARP2_aji_00012ca8, local
	.string "SFX_STG7_WARP2"
.endobj str_SFX_STG7_WARP2_aji_00012ca8

# .rodata:0x8F | 0x1E4F | size: 0x1
.obj gap_03_00001E4F_rodata, global
.hidden gap_03_00001E4F_rodata
	.byte 0x00
.endobj gap_03_00001E4F_rodata

# .rodata:0x90 | 0x1E50 | size: 0x7
.obj str_tik_00_aji_00012cb8, local
	.string "tik_00"
.endobj str_tik_00_aji_00012cb8

# .rodata:0x97 | 0x1E57 | size: 0x1
.obj gap_03_00001E57_rodata, global
.hidden gap_03_00001E57_rodata
	.byte 0x00
.endobj gap_03_00001E57_rodata

# .rodata:0x98 | 0x1E58 | size: 0x7
.obj str_moo_04_aji_00012cc0, local
	.string "moo_04"
.endobj str_moo_04_aji_00012cc0

# .rodata:0x9F | 0x1E5F | size: 0x1
.obj gap_03_00001E5F_rodata, global
.hidden gap_03_00001E5F_rodata
	.byte 0x00
.endobj gap_03_00001E5F_rodata

# .rodata:0xA0 | 0x1E60 | size: 0x7
.obj str_sui_1_aji_00012cc8, local
	.string "sui__1"
.endobj str_sui_1_aji_00012cc8

# .rodata:0xA7 | 0x1E67 | size: 0x1
.obj gap_03_00001E67_rodata, global
.hidden gap_03_00001E67_rodata
	.byte 0x00
.endobj gap_03_00001E67_rodata

# .rodata:0xA8 | 0x1E68 | size: 0x7
.obj str_sui_2_aji_00012cd0, local
	.string "sui__2"
.endobj str_sui_2_aji_00012cd0

# .rodata:0xAF | 0x1E6F | size: 0x1
.obj gap_03_00001E6F_rodata, global
.hidden gap_03_00001E6F_rodata
	.byte 0x00
.endobj gap_03_00001E6F_rodata

# .rodata:0xB0 | 0x1E70 | size: 0x16
.obj str_SFX_STG7_SWITCH_WARP_aji_00012cd8, local
	.string "SFX_STG7_SWITCH_WARP1"
.endobj str_SFX_STG7_SWITCH_WARP_aji_00012cd8

# .rodata:0xC6 | 0x1E86 | size: 0x2
.obj gap_03_00001E86_rodata, global
.hidden gap_03_00001E86_rodata
	.2byte 0x0000
.endobj gap_03_00001E86_rodata

# .rodata:0xC8 | 0x1E88 | size: 0xB
.obj str_anm_saisho_aji_00012cf0, local
	.string "anm_saisho"
.endobj str_anm_saisho_aji_00012cf0

# .rodata:0xD3 | 0x1E93 | size: 0x1
.obj gap_03_00001E93_rodata, global
.hidden gap_03_00001E93_rodata
	.byte 0x00
.endobj gap_03_00001E93_rodata

# .rodata:0xD4 | 0x1E94 | size: 0x7
.obj str_hikari_aji_00012cfc, local
	.string "hikari"
.endobj str_hikari_aji_00012cfc

# .rodata:0xDB | 0x1E9B | size: 0x1
.obj gap_03_00001E9B_rodata, global
.hidden gap_03_00001E9B_rodata
	.byte 0x00
.endobj gap_03_00001E9B_rodata

# .rodata:0xDC | 0x1E9C | size: 0x9
.obj str_anm_wa_p_aji_00012d04, local
	.string "anm_wa-p"
.endobj str_anm_wa_p_aji_00012d04

# .rodata:0xE5 | 0x1EA5 | size: 0x3
.obj gap_03_00001EA5_rodata, global
.hidden gap_03_00001EA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001EA5_rodata

# .rodata:0xE8 | 0x1EA8 | size: 0x6
.obj str_wa_pu_aji_00012d10, local
	.string "wa_pu"
.endobj str_wa_pu_aji_00012d10

# .rodata:0xEE | 0x1EAE | size: 0x2
.obj gap_03_00001EAE_rodata, global
.hidden gap_03_00001EAE_rodata
	.2byte 0x0000
.endobj gap_03_00001EAE_rodata

# .rodata:0xF0 | 0x1EB0 | size: 0x11
.obj str_SFX_STG7_WARP1_2_aji_00012d18, local
	.string "SFX_STG7_WARP1_2"
.endobj str_SFX_STG7_WARP1_2_aji_00012d18

# .rodata:0x101 | 0x1EC1 | size: 0x3
.obj gap_03_00001EC1_rodata, global
.hidden gap_03_00001EC1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001EC1_rodata

# .rodata:0x104 | 0x1EC4 | size: 0x7
.obj str_A_sui_aji_00012d2c, local
	.string "A__sui"
.endobj str_A_sui_aji_00012d2c

# .rodata:0x10B | 0x1ECB | size: 0x1
.obj gap_03_00001ECB_rodata, global
.hidden gap_03_00001ECB_rodata
	.byte 0x00
.endobj gap_03_00001ECB_rodata

# .rodata:0x10C | 0x1ECC | size: 0xE
.obj str_BGM_STG7_DUN2_aji_00012d34, local
	.string "BGM_STG7_DUN2"
.endobj str_BGM_STG7_DUN2_aji_00012d34

# .rodata:0x11A | 0x1EDA | size: 0x2
.obj gap_03_00001EDA_rodata, global
.hidden gap_03_00001EDA_rodata
	.2byte 0x0000
.endobj gap_03_00001EDA_rodata

# .rodata:0x11C | 0x1EDC | size: 0xE
.obj str_ENV_STG7_AJI4_aji_00012d44, local
	.string "ENV_STG7_AJI4"
.endobj str_ENV_STG7_AJI4_aji_00012d44

# .rodata:0x12A | 0x1EEA | size: 0x2
.obj gap_03_00001EEA_rodata, global
.hidden gap_03_00001EEA_rodata
	.2byte 0x0000
.endobj gap_03_00001EEA_rodata

# .rodata:0x12C | 0x1EEC | size: 0x7
.obj str_anm_PC_aji_00012d54, local
	.string "anm_PC"
.endobj str_anm_PC_aji_00012d54

# .rodata:0x133 | 0x1EF3 | size: 0x1
.obj gap_03_00001EF3_rodata, global
.hidden gap_03_00001EF3_rodata
	.byte 0x00
.endobj gap_03_00001EF3_rodata

# .rodata:0x134 | 0x1EF4 | size: 0xA
.obj str_anm_terop_aji_00012d5c, local
	.string "anm_terop"
.endobj str_anm_terop_aji_00012d5c

# .rodata:0x13E | 0x1EFE | size: 0x2
.obj gap_03_00001EFE_rodata, global
.hidden gap_03_00001EFE_rodata
	.2byte 0x0000
.endobj gap_03_00001EFE_rodata

# .rodata:0x140 | 0x1F00 | size: 0xB
.obj str_anm_tiktik_aji_00012d68, local
	.string "anm_tiktik"
.endobj str_anm_tiktik_aji_00012d68

# .rodata:0x14B | 0x1F0B | size: 0x1
.obj gap_03_00001F0B_rodata, global
.hidden gap_03_00001F0B_rodata
	.byte 0x00
.endobj gap_03_00001F0B_rodata

# .rodata:0x14C | 0x1F0C | size: 0x9
.obj str_haguruma_aji_00012d74, local
	.string "haguruma"
.endobj str_haguruma_aji_00012d74

# .rodata:0x155 | 0x1F15 | size: 0x3
.obj gap_03_00001F15_rodata, global
.hidden gap_03_00001F15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F15_rodata

# .rodata:0x158 | 0x1F18 | size: 0x6
.obj str_tenjo_aji_00012d80, local
	.string "tenjo"
.endobj str_tenjo_aji_00012d80

# .rodata:0x15E | 0x1F1E | size: 0x2
.obj gap_03_00001F1E_rodata, global
.hidden gap_03_00001F1E_rodata
	.2byte 0x0000
.endobj gap_03_00001F1E_rodata

# 0x00010AB8..0x00011760 | size: 0xCA8
.data
.balign 8

# .data:0x0 | 0x10AB8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x10AC0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x10AC4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x10AC8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x10ACC | size: 0x4
.obj gap_04_00010ACC_data, global
.hidden gap_04_00010ACC_data
	.4byte 0x00000000
.endobj gap_04_00010ACC_data

# .data:0x18 | 0x10AD0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x10AD8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x10ADC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x10AE0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x10AE8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x10AEC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x10AF0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x10AF4 | size: 0x4
.obj gap_04_00010AF4_data, global
.hidden gap_04_00010AF4_data
	.4byte 0x00000000
.endobj gap_04_00010AF4_data

# .data:0x40 | 0x10AF8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x10B00 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x10B04 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x10B08 | size: 0x58
.obj s_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B2A
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_2_aji_00012c28
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_1_aji_00012c34
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_door_open

# .data:0xA8 | 0x10B60 | size: 0x58
.obj s_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B2A
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_2_aji_00012c28
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_1_aji_00012c34
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_door_close

# .data:0x100 | 0x10BB8 | size: 0x78
.obj bero_entry_data, local
	.4byte str_s_bero_aji_00012c40
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_01_aji_00012c48
	.4byte str_n_bero_2_aji_00012c50
	.4byte 0x00050005
	.4byte s_door_close
	.4byte s_door_open
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

# .data:0x178 | 0x10C30 | size: 0x3D4
.obj tensou_ride, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF8D
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_hit_get_position
	.4byte str_A_tensou_aji_00012c74
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_WARP_LIGHT1_aji_00012c80
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_dispdir
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_party_get_dispdir
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFD050F80
	.4byte 0x0002005B
	.4byte evt_mario_set_dispdir
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_party_set_dispdir
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_WARP1_aji_00012c98
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000BB8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_mario_cam_off
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000C
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0002005B
	.4byte scale_func
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_WARP2_aji_00012ca8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C88
	.4byte 0xFE363C86
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0xFE363C88
	.4byte 0xFE363C87
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000178
	.4byte 0x00020032
	.4byte 0xF8406BCF
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tik_00_aji_00012cb8
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000178
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_moo_04_aji_00012cc0
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xF8406BCF
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tik_00_aji_00012cb8
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tensou_ride

# .data:0x54C | 0x11004 | size: 0xF8
.obj tensou_switch, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_sui_1_aji_00012cc8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_sui_2_aji_00012cd0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_sui_1_aji_00012cc8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_SWITCH_WARP_aji_00012cd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_saisho_aji_00012cf0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_hikari_aji_00012cfc
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_anm_saisho_aji_00012cf0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_wa_p_aji_00012d04
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_tensou_aji_00012c74
	.4byte 0x00000000
	.4byte tensou_ride
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tensou_switch

# .data:0x644 | 0x110FC | size: 0x360
.obj evt_tensou2, local
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_wa_p_aji_00012d04
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_wa_pu_aji_00012d10
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_hit_get_position
	.4byte str_A_tensou_aji_00012c74
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_WARP_LIGHT1_aji_00012c80
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C89
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00001680
	.4byte 0x00000FA0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020039
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x0003005B
	.4byte evt_party_set_dispdir
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000B4
	.4byte 0x00020039
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x0002005B
	.4byte evt_mario_set_dispdir
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000320
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0002005B
	.4byte scale_func
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_WARP1_2_aji_00012d18
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000C
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C88
	.4byte 0xFE363C86
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0xFE363C88
	.4byte 0xFE363C87
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_wa_pu_aji_00012d10
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_wa_pu_aji_00012d10
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_wa_pu_aji_00012d10
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_tensou2

# .data:0x9A4 | 0x1145C | size: 0x114
.obj tensou_init, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_sui_1_aji_00012cc8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_sui_2_aji_00012cd0
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_sui_aji_00012d2c
	.4byte 0x00000000
	.4byte tensou_switch
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84060AE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF84060AE
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF8D
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFA6
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0xFFFFFF9C
	.4byte 0x00000009
	.4byte 0xFFFFFFF6
	.4byte 0x0001005C
	.4byte evt_tensou2
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tensou_init

# .data:0xAB8 | 0x11570 | size: 0x14
.obj evt_haguruma, local
	.4byte 0x00020032
	.4byte 0xF8406BE2
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_haguruma

# .data:0xACC | 0x11584 | size: 0x1D8
.obj aji_07_init_evt_2_data_11584, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN2_aji_00012d34
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI4_aji_00012d44
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005E
	.4byte tensou_init
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_PC_aji_00012d54
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_terop_aji_00012d5c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_tiktik_aji_00012d68
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406BE2
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_haguruma_aji_00012d74
	.4byte 0x00000055
	.4byte 0xFFFFFFBF
	.4byte 0x00000064
	.4byte 0xFFFFFF88
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte evt_haguruma
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_tenjo_aji_00012d80
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x000000B4
	.4byte 0x000000C8
	.4byte 0xFFFFFF83
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x000000BE
	.4byte 0x000000C8
	.4byte 0xFFFFFF8D
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x000000C8
	.4byte 0x000000C8
	.4byte 0xFFFFFF97
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_emergency_2_data_1E408
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_07_init_evt_2_data_11584

# .data:0xCA4 | 0x1175C | size: 0x4
.obj gap_04_0001175C_data, global
.hidden gap_04_0001175C_data
	.4byte 0x00000000
.endobj gap_04_0001175C_data
